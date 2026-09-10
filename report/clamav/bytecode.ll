Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode?download=true
inline.NumInlined: 105
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@cli_bytecode_context_setparam_int:bb.a
  store i32 %i.al, ptr %i.at, align 4, !tbaa !95
  br label %bb.j

bb.i:                                             ; preds = %.split
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.g
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !95
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  store i64 %2, ptr %i.bb, align 8, !tbaa !102
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
  %i.b = load i32, ptr @g_sigid, align 4, !tbaa !95
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
  %i.f = load ptr, ptr @g_sigevents, align 8, !tbaa !103
  %i.g = shl nuw nsw i32 %.03647, 1               ; 3 uses
  %i.h = call ptr @cli_event_get_name(ptr noundef %i.f, i32 noundef %i.g) #24 ; 4 uses
  %i.i = load ptr, ptr @g_sigevents, align 8, !tbaa !103
  call void @cli_event_get(ptr noundef %i.i, i32 noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #24
  %i.j = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
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
  store ptr %i.m, ptr %.03746, align 8, !tbaa !200
  %i.n = load i64, ptr %1, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %.03746, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !105
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.03746, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !106
  %i.r = load ptr, ptr @g_sigevents, align 8, !tbaa !103
  %i.s = or disjoint i32 %i.g, 1
  call void @cli_event_get(ptr noundef %i.r, i32 noundef %i.s, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #24
  %i.t = load i32, ptr %i.a, align 4, !tbaa !95
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.03746, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !201
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
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !106 ; 2 uses
  %.not50 = icmp eq i64 %i.ab, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.ac = phi i64 [ %i.an, %.lr.ph ], [ %i.ab, %bb.k ] ; 2 uses
  %.23951 = phi ptr [ %i.al, %.lr.ph ], [ %0, %bb.k ] ; 5 uses
  %i.ad = load ptr, ptr %.23951, align 8, !tbaa !200
  %i.ae = getelementptr inbounds nuw i8, ptr %.23951, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %.23951, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !105 ; 2 uses
  %i.ai = uitofp i64 %i.ah to double
  %i.aj = uitofp i64 %i.ac to double
  %i.ak = fdiv double %i.ai, %i.aj
  call void (ptr, ptr, ...) @cli_infomsg(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef %spec.store.select, ptr noundef %i.ad, i32 noundef 8, i64 noundef %i.ac, i32 noundef 8, i64 noundef %i.af, i32 noundef 12, i64 noundef %i.ah, i32 noundef 9, double noundef %i.ak) #24
  %i.al = getelementptr inbounds nuw i8, ptr %.23951, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.23951, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !106 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !106
  %i.e = udiv i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !106
  %i.j = udiv i64 %i.g, %i.i
  %i.k = sub i64 %i.e, %i.j
  %i.l = trunc i64 %i.k to i32
  ret i32 %i.l
}

declare void @cli_infomsg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @cli_sigperf_events_destroy() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @g_sigevents, align 8, !tbaa !103
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
  %i.c = alloca i8, align 1                       ; 11 uses
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
  store i32 %3, ptr %i.t, align 8, !tbaa !107
  %i.u = icmp ne ptr %1, null
  %i.v = icmp ne ptr %2, null
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.25) #24
  br label %bb.pz

bb.c:                                             ; preds = %bb.a
  %i.w = call ptr @cli_dbgets(ptr noundef nonnull %i.r, i32 noundef 8192, ptr noundef %1, ptr noundef %2) #24
  %.not121 = icmp eq ptr %i.w, null
  br i1 %.not121, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.26) #24
  br label %bb.pz

bb.e:                                             ; preds = %bb.c
  %i.x = call i32 @cli_chomp(ptr noundef nonnull %i.r) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  store i8 1, ptr %i.o, align 1, !tbaa !108
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
  br label %bb.ce

bb.g:                                             ; preds = %bb.e
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #26
  %i.ai = trunc i64 %i.ah to i32                  ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !101
  %.fr4222 = freeze i8 %i.ak                      ; 3 uses
  %i.al = zext i8 %.fr4222 to i32                 ; 3 uses
  %i.am = add i8 %.fr4222, -113
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
  %i.aq = icmp eq i8 %.fr4222, 96
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
  store i32 0, ptr %i.au, align 8, !tbaa !109
  br label %bb.o

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.preheader.i.new
  %indvars.iv254.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next255.i.1, %bb.l ] ; 3 uses
  %indvars.iv.i = phi i64 [ 7, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.03545.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %i.bk, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter.next.1, %bb.l ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !101 ; 2 uses
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = and i64 %i.ax, 240
  %.not.i.i = icmp eq i64 %i.ay, 96
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %.thread.i.i, !prof !110

.thread.i.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.epil.preheader
  %.lcssa3961 = phi i8 [ %i.bn, %.lr.ph.i.i.epil.preheader ], [ %i.aw, %.lr.ph.i.i ], [ %i.bc, %.lr.ph.i.i.1 ]
  %i.az = sext i8 %.lcssa3961 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.az) #24
  br label %bb.m

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !101 ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = and i64 %i.bd, 240
  %.not.i.i.1 = icmp eq i64 %i.be, 96
  br i1 %.not.i.i.1, label %bb.l, label %.thread.i.i, !prof !110

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
  store i32 0, ptr %i.bl, align 8, !tbaa !109
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.271) #24
  br label %bb.ce

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.n, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.unr-lcssa, %.lr.ph.i.preheader.i
  %indvars.iv254.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %indvars.iv.next255.i.1, %.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 7, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ]
  %.03545.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.bk, %.unr-lcssa ]
  %lcmp.mod3965 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod3965)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !101 ; 2 uses
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = and i64 %i.bo, 240
  %.not.i.i.epil = icmp eq i64 %i.bp, 96
  br i1 %.not.i.i.epil, label %.epilog-lcssa, label %.thread.i.i, !prof !110

.epilog-lcssa:                                    ; preds = %.lr.ph.i.i.epil.preheader
  %i.bq = and i64 %i.bo, 15
  %i.br = shl i64 %i.bq, %indvars.iv254.i.epil.init
  %i.bs = or i64 %i.br, %.03545.i.i.epil.init
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %.lcssa3963 = phi i64 [ %i.bk, %.unr-lcssa ], [ %i.bs, %.epilog-lcssa ]
  %i.bt = trunc i64 %.lcssa3963 to i32            ; 3 uses
  store i32 %i.ao, ptr %i.p, align 4, !tbaa !95
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !109
  %i.bv = and i32 %i.bt, -2
  %switch.i = icmp eq i32 %i.bv, 6
  br i1 %switch.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.2.i347.i = phi i32 [ 0, %.thread.i ], [ %i.bt, %bb.n ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.272, i32 noundef %.2.i347.i, i32 noundef 7) #24
  br label %bb.cb

bb.p:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !101 ; 2 uses
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = add nsw i32 %i.by, -96                  ; 3 uses
  %i.ca = icmp ugt i32 %i.bz, 16
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.by) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readNumber.exit105.i

bb.r:                                             ; preds = %bb.p
  %i.cb = add nsw i32 %i.al, -88                  ; 2 uses
  %i.cc = add nuw nsw i32 %i.bz, %i.cb            ; 4 uses
  %i.cd = icmp ugt i32 %i.cc, %i.ai
  br i1 %i.cd, label %bb.s, label %5

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readNumber.exit105.i

5:                                                ; preds = %bb.r
  %6 = icmp eq i8 %i.bx, 96
  br i1 %6, label %bb.t, label %.preheader.i93.i.a

.preheader.i93.i.a:                               ; preds = %5
  %.not377.i = icmp eq i32 %i.bz, 0
  br i1 %.not377.i, label %._crit_edge.i94.i, label %.lr.ph.i97.preheader.i

.lr.ph.i97.preheader.i:                           ; preds = %.preheader.i93.i.a
  %i.ce = zext i32 %i.cb to i64                   ; 3 uses
  %i.cf = zext i32 %i.cc to i64
  %i.cg = sub nsw i64 %i.cf, %i.ce
  %i.ch = freeze i64 %i.cg                        ; 4 uses
  %xtraiter3966 = and i64 %i.ch, 1
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %.lr.ph.i97.i.epil.preheader, label %.lr.ph.i97.preheader.i.new

.lr.ph.i97.preheader.i.new:                       ; preds = %.lr.ph.i97.preheader.i
  %unroll_iter3970 = and i64 %i.ch, -2
  br label %.lr.ph.i97.i

bb.t:                                             ; preds = %5
  store i32 %i.cc, ptr %i.p, align 4, !tbaa !95
  br label %readNumber.exit105.i

.lr.ph.i97.i:                                     ; preds = %bb.u, %.lr.ph.i97.preheader.i.new
  %indvars.iv261.i = phi i64 [ 0, %.lr.ph.i97.preheader.i.new ], [ %indvars.iv.next262.i.1, %bb.u ] ; 3 uses
  %indvars.iv259.i = phi i64 [ %i.ce, %.lr.ph.i97.preheader.i.new ], [ %indvars.iv.next260.i.1, %bb.u ] ; 3 uses
  %.03545.i100.i = phi i64 [ 0, %.lr.ph.i97.preheader.i.new ], [ %i.cy, %bb.u ]
  %niter3971 = phi i64 [ 0, %.lr.ph.i97.preheader.i.new ], [ %niter3971.next.1, %bb.u ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv259.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !101 ; 2 uses
  %i.cl = zext i8 %i.ck to i64                    ; 2 uses
  %i.cm = and i64 %i.cl, 240
  %.not.i101.i = icmp eq i64 %i.cm, 96
  br i1 %.not.i101.i, label %.lr.ph.i97.i.1, label %.thread.i102.i, !prof !110

.thread.i102.i:                                   ; preds = %.lr.ph.i97.i, %.lr.ph.i97.i.1, %.lr.ph.i97.i.epil.preheader
  %.lcssa3958 = phi i8 [ %i.da, %.lr.ph.i97.i.epil.preheader ], [ %i.ck, %.lr.ph.i97.i ], [ %i.cq, %.lr.ph.i97.i.1 ]
  %i.cn = sext i8 %.lcssa3958 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.cn) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readNumber.exit105.i

.lr.ph.i97.i.1:                                   ; preds = %.lr.ph.i97.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv259.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !101 ; 2 uses
  %i.cr = zext i8 %i.cq to i64                    ; 2 uses
  %i.cs = and i64 %i.cr, 240
  %.not.i101.i.1 = icmp eq i64 %i.cs, 96
  br i1 %.not.i101.i.1, label %bb.u, label %.thread.i102.i, !prof !110

bb.u:                                             ; preds = %.lr.ph.i97.i.1
  %indvars.iv.next262.i = or disjoint i64 %indvars.iv261.i, 4
  %i.ct = and i64 %i.cl, 15
  %i.cu = shl i64 %i.ct, %indvars.iv261.i
  %i.cv = or i64 %i.cu, %.03545.i100.i
  %i.cw = and i64 %i.cr, 15
  %i.cx = shl i64 %i.cw, %indvars.iv.next262.i
  %i.cy = or i64 %i.cx, %i.cv                     ; 3 uses
  %indvars.iv.next262.i.1 = add nuw nsw i64 %indvars.iv261.i, 8 ; 2 uses
  %indvars.iv.next260.i.1 = add nuw nsw i64 %indvars.iv259.i, 2 ; 2 uses
  %niter3971.next.1 = add i64 %niter3971, 2       ; 2 uses
  %niter3971.ncmp.1 = icmp eq i64 %niter3971.next.1, %unroll_iter3970
  br i1 %niter3971.ncmp.1, label %._crit_edge.i94.i.loopexit.unr-lcssa, label %.lr.ph.i97.i

._crit_edge.i94.i.loopexit.unr-lcssa:             ; preds = %bb.u
  %lcmp.mod3967.not = icmp eq i64 %xtraiter3966, 0
  br i1 %lcmp.mod3967.not, label %._crit_edge.i94.i, label %.lr.ph.i97.i.epil.preheader

.lr.ph.i97.i.epil.preheader:                      ; preds = %._crit_edge.i94.i.loopexit.unr-lcssa, %.lr.ph.i97.preheader.i
  %indvars.iv261.i.epil.init = phi i64 [ 0, %.lr.ph.i97.preheader.i ], [ %indvars.iv.next262.i.1, %._crit_edge.i94.i.loopexit.unr-lcssa ]
  %indvars.iv259.i.epil.init = phi i64 [ %i.ce, %.lr.ph.i97.preheader.i ], [ %indvars.iv.next260.i.1, %._crit_edge.i94.i.loopexit.unr-lcssa ]
  %.03545.i100.i.epil.init = phi i64 [ 0, %.lr.ph.i97.preheader.i ], [ %i.cy, %._crit_edge.i94.i.loopexit.unr-lcssa ]
  %lcmp.mod3969 = trunc i64 %i.ch to i1
  call void @llvm.assume(i1 %lcmp.mod3969)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv259.i.epil.init
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !101 ; 2 uses
  %i.db = zext i8 %i.da to i64                    ; 2 uses
  %i.dc = and i64 %i.db, 240
  %.not.i101.i.epil = icmp eq i64 %i.dc, 96
  br i1 %.not.i101.i.epil, label %._crit_edge.i94.i.loopexit.epilog-lcssa, label %.thread.i102.i, !prof !110

._crit_edge.i94.i.loopexit.epilog-lcssa:          ; preds = %.lr.ph.i97.i.epil.preheader
  %i.dd = and i64 %i.db, 15
  %i.de = shl i64 %i.dd, %indvars.iv261.i.epil.init
  %i.df = or i64 %i.de, %.03545.i100.i.epil.init
  br label %._crit_edge.i94.i

._crit_edge.i94.i:                                ; preds = %._crit_edge.i94.i.loopexit.epilog-lcssa, %._crit_edge.i94.i.loopexit.unr-lcssa, %.preheader.i93.i.a
  %.035.lcssa.i95.i = phi i64 [ 0, %.preheader.i93.i.a ], [ %i.cy, %._crit_edge.i94.i.loopexit.unr-lcssa ], [ %i.df, %._crit_edge.i94.i.loopexit.epilog-lcssa ]
  store i32 %i.cc, ptr %i.p, align 4, !tbaa !95
  br label %readNumber.exit105.i

readNumber.exit105.i:                             ; preds = %._crit_edge.i94.i, %.thread.i102.i, %bb.t, %bb.s, %bb.q
  %.2.i96.i = phi i64 [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %.thread.i102.i ], [ %.035.lcssa.i95.i, %._crit_edge.i94.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.2.i96.i, ptr %i.dg, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  store i32 0, ptr %i.n, align 4, !tbaa !95
  %i.dh = call fastcc ptr @readData(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.p, i32 noundef %i.ai, ptr noundef nonnull %i.o, ptr noundef %i.n) ; 5 uses
  %i.di = load i8, ptr %i.o, align 1, !tbaa !108, !range !112, !noundef !113
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = load i32, ptr %i.n, align 4             ; 2 uses
  %i.dl = icmp ne i32 %i.dk, 0
  %or.cond.i.i = select i1 %i.dj, i1 %i.dl, i1 false
  br i1 %or.cond.i.i, label %bb.v, label %readString.exit.i

bb.v:                                             ; preds = %readNumber.exit105.i
  %i.dm = add i32 %i.dk, -1
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !101
  %.not.i106.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i106.i, label %readString.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.do, align 1, !tbaa !101
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.283, ptr noundef nonnull %i.dh) #24
  call void @free(ptr noundef nonnull %i.dh) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readString.exit.i

readString.exit.i:                                ; preds = %bb.w, %bb.v, %readNumber.exit105.i
  %.0.i.i = phi ptr [ null, %bb.w ], [ %i.dh, %bb.v ], [ %i.dh, %readNumber.exit105.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i, ptr %i.dq, align 8, !tbaa !114
  %i.dr = load i32, ptr %i.p, align 4, !tbaa !95  ; 5 uses
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !101
  %.fr = freeze i8 %i.du                          ; 3 uses
  %i.dv = zext i8 %.fr to i32                     ; 2 uses
  %i.dw = add nsw i32 %i.dv, -96                  ; 4 uses
  %i.dx = icmp ugt i32 %i.dw, 16
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %readString.exit.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.dv) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readNumber.exit119.i

bb.y:                                             ; preds = %readString.exit.i
  %i.dy = add nuw i32 %i.dr, 1                    ; 3 uses
  %i.dz = add i32 %i.dw, %i.dy                    ; 6 uses
  %i.ea = icmp ugt i32 %i.dz, %i.ai
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readNumber.exit119.i

bb.aa:                                            ; preds = %bb.y
  %i.eb = icmp eq i8 %.fr, 96
  br i1 %i.eb, label %bb.ab, label %.preheader.i107.i

.preheader.i107.i:                                ; preds = %bb.aa
  %i.ec = icmp ult i32 %i.dy, %i.dz
  br i1 %i.ec, label %.lr.ph.i111.preheader.i, label %._crit_edge.i108.i

.lr.ph.i111.preheader.i:                          ; preds = %.preheader.i107.i
  %i.ed = zext i32 %i.dy to i64                   ; 2 uses
  %i.ee = zext nneg i32 %i.dw to i64              ; 2 uses
  %xtraiter3972 = and i64 %i.ee, 1
  %i.ef = icmp eq i32 %i.dw, 1
  br i1 %i.ef, label %.lr.ph.i111.i.epil.preheader, label %.lr.ph.i111.preheader.i.new

.lr.ph.i111.preheader.i.new:                      ; preds = %.lr.ph.i111.preheader.i
  %unroll_iter3976 = and i64 %i.ee, 30
  br label %.lr.ph.i111.i

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.dz, ptr %i.p, align 4, !tbaa !95
  br label %readNumber.exit119.i

.lr.ph.i111.i:                                    ; preds = %bb.ac, %.lr.ph.i111.preheader.i.new
  %indvars.iv268.i = phi i64 [ 0, %.lr.ph.i111.preheader.i.new ], [ %indvars.iv.next269.i.1, %bb.ac ] ; 3 uses
  %indvars.iv266.i = phi i64 [ %i.ed, %.lr.ph.i111.preheader.i.new ], [ %indvars.iv.next267.i.1, %bb.ac ] ; 3 uses
  %.03545.i114.i = phi i64 [ 0, %.lr.ph.i111.preheader.i.new ], [ %i.ev, %bb.ac ]
  %niter3977 = phi i64 [ 0, %.lr.ph.i111.preheader.i.new ], [ %niter3977.next.1, %bb.ac ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv266.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !101 ; 2 uses
  %i.ei = zext i8 %i.eh to i64                    ; 2 uses
  %i.ej = and i64 %i.ei, 240
  %.not.i115.i = icmp eq i64 %i.ej, 96
  br i1 %.not.i115.i, label %.lr.ph.i111.i.1, label %.thread.i116.i, !prof !110

.thread.i116.i:                                   ; preds = %.lr.ph.i111.i, %.lr.ph.i111.i.1, %.lr.ph.i111.i.epil.preheader
  %.lcssa3955 = phi i8 [ %i.ex, %.lr.ph.i111.i.epil.preheader ], [ %i.eh, %.lr.ph.i111.i ], [ %i.en, %.lr.ph.i111.i.1 ]
  %i.ek = sext i8 %.lcssa3955 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.ek) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readNumber.exit119.i

.lr.ph.i111.i.1:                                  ; preds = %.lr.ph.i111.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv266.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !101 ; 2 uses
  %i.eo = zext i8 %i.en to i64                    ; 2 uses
  %i.ep = and i64 %i.eo, 240
  %.not.i115.i.1 = icmp eq i64 %i.ep, 96
  br i1 %.not.i115.i.1, label %bb.ac, label %.thread.i116.i, !prof !110

bb.ac:                                            ; preds = %.lr.ph.i111.i.1
  %indvars.iv.next269.i = or disjoint i64 %indvars.iv268.i, 4
  %i.eq = and i64 %i.ei, 15
  %i.er = shl i64 %i.eq, %indvars.iv268.i
  %i.es = or i64 %i.er, %.03545.i114.i
  %i.et = and i64 %i.eo, 15
  %i.eu = shl i64 %i.et, %indvars.iv.next269.i
  %i.ev = or i64 %i.eu, %i.es                     ; 3 uses
  %indvars.iv.next269.i.1 = add nuw nsw i64 %indvars.iv268.i, 8 ; 2 uses
  %indvars.iv.next267.i.1 = add nuw nsw i64 %indvars.iv266.i, 2 ; 2 uses
  %niter3977.next.1 = add i64 %niter3977, 2       ; 2 uses
  %niter3977.ncmp.1 = icmp eq i64 %niter3977.next.1, %unroll_iter3976
  br i1 %niter3977.ncmp.1, label %._crit_edge.i108.loopexit.i.unr-lcssa, label %.lr.ph.i111.i

._crit_edge.i108.loopexit.i.unr-lcssa:            ; preds = %bb.ac
  %lcmp.mod3973.not = icmp eq i64 %xtraiter3972, 0
  br i1 %lcmp.mod3973.not, label %._crit_edge.i108.loopexit.i, label %.lr.ph.i111.i.epil.preheader

.lr.ph.i111.i.epil.preheader:                     ; preds = %._crit_edge.i108.loopexit.i.unr-lcssa, %.lr.ph.i111.preheader.i
  %indvars.iv268.i.epil.init = phi i64 [ 0, %.lr.ph.i111.preheader.i ], [ %indvars.iv.next269.i.1, %._crit_edge.i108.loopexit.i.unr-lcssa ]
  %indvars.iv266.i.epil.init = phi i64 [ %i.ed, %.lr.ph.i111.preheader.i ], [ %indvars.iv.next267.i.1, %._crit_edge.i108.loopexit.i.unr-lcssa ]
  %.03545.i114.i.epil.init = phi i64 [ 0, %.lr.ph.i111.preheader.i ], [ %i.ev, %._crit_edge.i108.loopexit.i.unr-lcssa ]
  %lcmp.mod3975 = trunc i8 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod3975)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv266.i.epil.init
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !101 ; 2 uses
  %i.ey = zext i8 %i.ex to i64                    ; 2 uses
  %i.ez = and i64 %i.ey, 240
  %.not.i115.i.epil = icmp eq i64 %i.ez, 96
  br i1 %.not.i115.i.epil, label %._crit_edge.i108.loopexit.i.epilog-lcssa, label %.thread.i116.i, !prof !110

._crit_edge.i108.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i111.i.epil.preheader
  %i.fa = and i64 %i.ey, 15
  %i.fb = shl i64 %i.fa, %indvars.iv268.i.epil.init
  %i.fc = or i64 %i.fb, %.03545.i114.i.epil.init
  br label %._crit_edge.i108.loopexit.i

._crit_edge.i108.loopexit.i:                      ; preds = %._crit_edge.i108.loopexit.i.unr-lcssa, %._crit_edge.i108.loopexit.i.epilog-lcssa
  %.lcssa3957 = phi i64 [ %i.ev, %._crit_edge.i108.loopexit.i.unr-lcssa ], [ %i.fc, %._crit_edge.i108.loopexit.i.epilog-lcssa ]
  %i.fd = trunc i64 %.lcssa3957 to i32
  br label %._crit_edge.i108.i

._crit_edge.i108.i:                               ; preds = %._crit_edge.i108.loopexit.i, %.preheader.i107.i
  %.035.lcssa.i109.i = phi i32 [ 0, %.preheader.i107.i ], [ %i.fd, %._crit_edge.i108.loopexit.i ]
  store i32 %i.dz, ptr %i.p, align 4, !tbaa !95
  br label %readNumber.exit119.i

readNumber.exit119.i:                             ; preds = %._crit_edge.i108.i, %.thread.i116.i, %bb.ab, %bb.z, %bb.x
  %i.fe = phi i32 [ %i.dr, %bb.x ], [ %i.dr, %bb.z ], [ %i.dz, %bb.ab ], [ %i.dr, %.thread.i116.i ], [ %i.dz, %._crit_edge.i108.i ] ; 5 uses
  %.2.i110.i = phi i32 [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %.thread.i116.i ], [ %.035.lcssa.i109.i, %._crit_edge.i108.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.2.i110.i, ptr %i.ff, align 8, !tbaa !115
  %i.fg = zext i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !101
  %.fr4226 = freeze i8 %i.fi                      ; 3 uses
  %i.fj = zext i8 %.fr4226 to i32                 ; 2 uses
  %i.fk = add nsw i32 %i.fj, -96                  ; 4 uses
  %i.fl = icmp ugt i32 %i.fk, 16
  br i1 %i.fl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %readNumber.exit119.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.fj) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readNumber.exit132.i

bb.ae:                                            ; preds = %readNumber.exit119.i
  %i.fm = add nuw i32 %i.fe, 1                    ; 3 uses
  %i.fn = add i32 %i.fk, %i.fm                    ; 6 uses
  %i.fo = icmp ugt i32 %i.fn, %i.ai
  br i1 %i.fo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !108
  br label %readNumber.exit132.i

bb.ag:                                            ; preds = %bb.ae
  %i.fp = icmp eq i8 %.fr4226, 96
  br i1 %i.fp, label %bb.ah, label %.preheader.i120.i

.preheader.i120.i:                                ; preds = %bb.ag
  %i.fq = icmp ult i32 %i.fm, %i.fn
  br i1 %i.fq, label %.lr.ph.i124.preheader.i, label %._crit_edge.i121.i

.lr.ph.i124.preheader.i:                          ; preds = %.preheader.i120.i
  %i.fr = zext i32 %i.fm to i64                   ; 2 uses
  %i.fs = zext nneg i32 %i.fk to i64              ; 2 uses
  %xtraiter3978 = and i64 %i.fs, 1
  %i.ft = icmp eq i32 %i.fk, 1
  br i1 %i.ft, label %.lr.ph.i124.i.epil.preheader, label %.lr.ph.i124.preheader.i.new
end_hunk_0
begin_hunk_1_@cli_bytecode_load:bb.a
  %i.awp = icmp ne i8 %.fr4272, 96
  %i.awq = icmp ult i32 %i.awm, %i.awn
  %or.cond361 = and i1 %i.awp, %i.awq
  br i1 %or.cond361, label %.lr.ph.i101.preheader.i, label %readNumber.exit109.i

.lr.ph.i101.preheader.i:                          ; preds = %bb.ii
  %i.awr = zext i32 %i.awm to i64                 ; 2 uses
  %i.aws = zext nneg i32 %i.awk to i64            ; 2 uses
  %xtraiter4121 = and i64 %i.aws, 1
  %i.awt = icmp eq i32 %i.awk, 1
  br i1 %i.awt, label %.lr.ph.i101.i.epil.preheader, label %.lr.ph.i101.preheader.i.new

.lr.ph.i101.preheader.i.new:                      ; preds = %.lr.ph.i101.preheader.i
  %unroll_iter4125 = and i64 %i.aws, 30
  br label %.lr.ph.i101.i

.lr.ph.i101.i:                                    ; preds = %bb.ij, %.lr.ph.i101.preheader.i.new
  %indvars.iv177.i = phi i64 [ 0, %.lr.ph.i101.preheader.i.new ], [ %indvars.iv.next178.i.1, %bb.ij ] ; 3 uses
  %indvars.iv175.i = phi i64 [ %i.awr, %.lr.ph.i101.preheader.i.new ], [ %indvars.iv.next176.i.1, %bb.ij ] ; 3 uses
  %.03545.i104.i = phi i64 [ 0, %.lr.ph.i101.preheader.i.new ], [ %i.axj, %bb.ij ]
  %niter4126 = phi i64 [ 0, %.lr.ph.i101.preheader.i.new ], [ %niter4126.next.1, %bb.ij ]
  %i.awu = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv175.i
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !101 ; 2 uses
  %i.aww = zext i8 %i.awv to i64                  ; 2 uses
  %i.awx = and i64 %i.aww, 240
  %.not.i105.i233 = icmp eq i64 %i.awx, 96
  br i1 %.not.i105.i233, label %.lr.ph.i101.i.1, label %.thread.i106.i, !prof !110

.thread.i106.i:                                   ; preds = %.lr.ph.i101.i.epil.preheader, %.lr.ph.i101.i, %.lr.ph.i101.i.1
  %.lcssa3700 = phi i8 [ %i.axb, %.lr.ph.i101.i.1 ], [ %i.awv, %.lr.ph.i101.i ], [ %i.axl, %.lr.ph.i101.i.epil.preheader ]
  %i.awy = sext i8 %.lcssa3700 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.awy) #24
  br label %readNumber.exit109.i.thread

.lr.ph.i101.i.1:                                  ; preds = %.lr.ph.i101.i
  %i.awz = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv175.i
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 1
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !101 ; 2 uses
  %i.axc = zext i8 %i.axb to i64                  ; 2 uses
  %i.axd = and i64 %i.axc, 240
  %.not.i105.i233.1 = icmp eq i64 %i.axd, 96
  br i1 %.not.i105.i233.1, label %bb.ij, label %.thread.i106.i, !prof !110

bb.ij:                                            ; preds = %.lr.ph.i101.i.1
  %indvars.iv.next178.i = or disjoint i64 %indvars.iv177.i, 4
  %i.axe = and i64 %i.aww, 15
  %i.axf = shl i64 %i.axe, %indvars.iv177.i
  %i.axg = or i64 %i.axf, %.03545.i104.i
  %i.axh = and i64 %i.axc, 15
  %i.axi = shl i64 %i.axh, %indvars.iv.next178.i
  %i.axj = or i64 %i.axi, %i.axg                  ; 3 uses
  %indvars.iv.next178.i.1 = add nuw nsw i64 %indvars.iv177.i, 8 ; 2 uses
  %indvars.iv.next176.i.1 = add nuw nsw i64 %indvars.iv175.i, 2 ; 2 uses
  %niter4126.next.1 = add i64 %niter4126, 2       ; 2 uses
  %niter4126.ncmp.1 = icmp eq i64 %niter4126.next.1, %unroll_iter4125
  br i1 %niter4126.ncmp.1, label %._crit_edge.i98.loopexit.i.unr-lcssa, label %.lr.ph.i101.i

._crit_edge.i98.loopexit.i.unr-lcssa:             ; preds = %bb.ij
  %lcmp.mod4122.not = icmp eq i64 %xtraiter4121, 0
  br i1 %lcmp.mod4122.not, label %._crit_edge.i98.loopexit.i, label %.lr.ph.i101.i.epil.preheader

.lr.ph.i101.i.epil.preheader:                     ; preds = %._crit_edge.i98.loopexit.i.unr-lcssa, %.lr.ph.i101.preheader.i
  %indvars.iv177.i.epil.init = phi i64 [ 0, %.lr.ph.i101.preheader.i ], [ %indvars.iv.next178.i.1, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %indvars.iv175.i.epil.init = phi i64 [ %i.awr, %.lr.ph.i101.preheader.i ], [ %indvars.iv.next176.i.1, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %.03545.i104.i.epil.init = phi i64 [ 0, %.lr.ph.i101.preheader.i ], [ %i.axj, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %lcmp.mod4124 = trunc i8 %.fr4272 to i1
  call void @llvm.assume(i1 %lcmp.mod4124)
  %i.axk = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv175.i.epil.init
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !101 ; 2 uses
  %i.axm = zext i8 %i.axl to i64                  ; 2 uses
  %i.axn = and i64 %i.axm, 240
  %.not.i105.i233.epil = icmp eq i64 %i.axn, 96
  br i1 %.not.i105.i233.epil, label %._crit_edge.i98.loopexit.i.epilog-lcssa, label %.thread.i106.i, !prof !110

._crit_edge.i98.loopexit.i.epilog-lcssa:          ; preds = %.lr.ph.i101.i.epil.preheader
  %i.axo = and i64 %i.axm, 15
  %i.axp = shl i64 %i.axo, %indvars.iv177.i.epil.init
  %i.axq = or i64 %i.axp, %.03545.i104.i.epil.init
  br label %._crit_edge.i98.loopexit.i

._crit_edge.i98.loopexit.i:                       ; preds = %._crit_edge.i98.loopexit.i.unr-lcssa, %._crit_edge.i98.loopexit.i.epilog-lcssa
  %.lcssa3702 = phi i64 [ %i.axj, %._crit_edge.i98.loopexit.i.unr-lcssa ], [ %i.axq, %._crit_edge.i98.loopexit.i.epilog-lcssa ]
  %i.axr = trunc i64 %.lcssa3702 to i32
  br label %readNumber.exit109.i

readNumber.exit109.i.thread:                      ; preds = %bb.if, %bb.ih, %.thread.i106.i
  store i32 0, ptr %i.awf, align 8, !tbaa !206
  br label %.loopexit

readNumber.exit109.i:                             ; preds = %._crit_edge.i98.loopexit.i, %bb.ii
  %.2.i100.i = phi i32 [ 0, %bb.ii ], [ %i.axr, %._crit_edge.i98.loopexit.i ]
  store i32 %i.awn, ptr %i.e, align 4, !tbaa !95
  store i32 %.2.i100.i, ptr %i.awf, align 8, !tbaa !206
  br label %bb.ik

.thread347:                                       ; preds = %bb.ia, %bb.ic, %.thread.i93.i
  %i.axs = getelementptr inbounds nuw i8, ptr %i.auy, i64 16
  store i64 0, ptr %i.axs, align 8, !tbaa !207
  br label %.loopexit

._crit_edge.i85.i.loopexit.unr-lcssa:             ; preds = %bb.ie
  %lcmp.mod4112.not = icmp eq i64 %xtraiter4111, 0
  br i1 %lcmp.mod4112.not, label %._crit_edge.i85.i, label %.lr.ph.i88.i.epil.preheader

.lr.ph.i88.i.epil.preheader:                      ; preds = %._crit_edge.i85.i.loopexit.unr-lcssa, %.lr.ph.i88.preheader.i
  %indvars.iv170.i.epil.init = phi i64 [ 0, %.lr.ph.i88.preheader.i ], [ %indvars.iv.next171.i.1, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %indvars.iv168.i.epil.init = phi i64 [ %i.avk, %.lr.ph.i88.preheader.i ], [ %indvars.iv.next169.i.1, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %.03545.i91.i.epil.init = phi i64 [ 0, %.lr.ph.i88.preheader.i ], [ %i.awc, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %lcmp.mod4114 = trunc i8 %.fr4269 to i1
  call void @llvm.assume(i1 %lcmp.mod4114)
  %i.axt = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv168.i.epil.init
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !101 ; 2 uses
  %i.axv = zext i8 %i.axu to i64                  ; 2 uses
  %i.axw = and i64 %i.axv, 240
  %.not.i92.i.epil = icmp eq i64 %i.axw, 96
  br i1 %.not.i92.i.epil, label %._crit_edge.i85.i.loopexit.epilog-lcssa, label %.thread.i93.i, !prof !110

._crit_edge.i85.i.loopexit.epilog-lcssa:          ; preds = %.lr.ph.i88.i.epil.preheader
  %i.axx = and i64 %i.axv, 15
  %i.axy = shl i64 %i.axx, %indvars.iv170.i.epil.init
  %i.axz = or i64 %i.axy, %.03545.i91.i.epil.init
  br label %._crit_edge.i85.i

._crit_edge.i85.i:                                ; preds = %._crit_edge.i85.i.loopexit.epilog-lcssa, %._crit_edge.i85.i.loopexit.unr-lcssa, %bb.id
  %.2.i87.i = phi i64 [ 0, %bb.id ], [ %i.awc, %._crit_edge.i85.i.loopexit.unr-lcssa ], [ %i.axz, %._crit_edge.i85.i.loopexit.epilog-lcssa ]
  store i32 %i.avg, ptr %i.e, align 4, !tbaa !95
  %i.aya = getelementptr inbounds nuw i8, ptr %i.auy, i64 16
  store i64 %.2.i87.i, ptr %i.aya, align 8, !tbaa !207
  br label %bb.ik

bb.ik:                                            ; preds = %readNumber.exit109.i, %._crit_edge.i85.i, %bb.hs
  %i.ayb = phi i32 [ %.pre.i234, %bb.hs ], [ %i.avg, %._crit_edge.i85.i ], [ %i.awn, %readNumber.exit109.i ] ; 2 uses
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 1 ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %indvars.iv.next183.i, %i.asx
  br i1 %exitcond.not.i231, label %._crit_edge.i232, label %.lr.ph.i230

._crit_edge.i232:                                 ; preds = %bb.ik, %.preheader.i228
  %i.ayc = phi i32 [ %i.arn, %.preheader.i228 ], [ %i.ayb, %bb.ik ]
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1 ; 2 uses
  %exitcond189.not.i = icmp eq i64 %indvars.iv.next186.i, %wide.trip.count188.i
  br i1 %exitcond189.not.i, label %parseMD.exit, label %.lr.ph130.i

parseMD.exit:                                     ; preds = %._crit_edge.i232, %.preheader112.i
  %i.ayd = load i32, ptr %i.re, align 8, !tbaa !124
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.320, i32 noundef %i.ayd) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.aye = call ptr @cli_dbgets(ptr noundef nonnull %i.qu, i32 noundef %.2311319, ptr noundef %1, ptr noundef %2) #24
  %.not1261106.jt4.not = icmp eq ptr %i.aye, null
  br i1 %.not1261106.jt4.not, label %.critedge, label %.lr.ph3170

.loopexit:                                        ; preds = %readNumber.exit.i226, %._crit_edge.i59.i, %bb.hs, %readNumber.exit109.i.thread, %bb.hl, %bb.hr, %readNumber.exit83.thread.i, %.thread347
  %.2.i217.ph = phi i32 [ 4, %readNumber.exit109.i.thread ], [ 4, %bb.hl ], [ 4, %.thread347 ], [ 4, %readNumber.exit83.thread.i ], [ 4, %bb.hr ], [ 20, %._crit_edge.i59.i ], [ 4, %bb.hs ], [ 20, %readNumber.exit.i226 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef %i.sa) #24
  call void @free(ptr noundef nonnull %i.qu) #24
  br label %bb.pz

.lr.ph3172:                                       ; preds = %.lr.ph3170, %thread-pre-split
  %i.ayf = phi i8 [ %.pr, %thread-pre-split ], [ %i.sb, %.lr.ph3170 ] ; 2 uses
  %.0103.ph112221063171 = phi i32 [ %i.cdk, %thread-pre-split ], [ 0, %.lr.ph3170 ] ; 6 uses
  %i.ayg = phi i32 [ %i.rw, %thread-pre-split ], [ %i.sa, %.lr.ph3170 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.ayh = load i32, ptr %i.rb, align 4, !tbaa !82 ; 2 uses
  %.not.i235 = icmp ult i32 %.0103.ph112221063171, %i.ayh
  br i1 %.not.i235, label %bb.im, label %bb.il

bb.il:                                            ; preds = %.lr.ph3172
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.321, i32 noundef %.0103.ph112221063171, i32 noundef %i.ayh) #24
  br label %bb.ka

bb.im:                                            ; preds = %.lr.ph3172
  %i.ayi = load ptr, ptr %i.ra, align 8, !tbaa !83
  %i.ayj = zext i32 %.0103.ph112221063171 to i64
  %i.ayk = getelementptr inbounds nuw [72 x i8], ptr %i.ayi, i64 %i.ayj ; 16 uses
  %i.ayl = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.qu) #26
  %i.aym = trunc i64 %i.ayl to i32                ; 7 uses
  %.not65.i = icmp eq i8 %i.ayf, 65
  br i1 %.not65.i, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ayn = zext i8 %i.ayf to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.322, i32 noundef %i.ayn) #24
  br label %bb.ka

bb.io:                                            ; preds = %bb.im
  %i.ayo = icmp ult i32 %i.aym, 2
  br i1 %i.ayo, label %bb.ip, label %.lr.ph.i.preheader.i236

.lr.ph.i.preheader.i236:                          ; preds = %bb.io
  %i.ayp = load i8, ptr %i.qw, align 1, !tbaa !101 ; 2 uses
  %i.ayq = zext i8 %i.ayp to i32                  ; 2 uses
  %i.ayr = and i32 %i.ayq, 240
  %.not.i.i237 = icmp eq i32 %i.ayr, 96
  br i1 %.not.i.i237, label %._crit_edge.i.i269, label %bb.iq, !prof !110

bb.ip:                                            ; preds = %bb.io
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  store i8 0, ptr %i.c, align 1, !tbaa !108
  br label %readFixedNumber.exit.i238

bb.iq:                                            ; preds = %.lr.ph.i.preheader.i236
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.ayq) #24
  store i8 0, ptr %i.c, align 1, !tbaa !108
  br label %readFixedNumber.exit.i238

._crit_edge.i.i269:                               ; preds = %.lr.ph.i.preheader.i236
  %i.ays = and i8 %i.ayp, 15
  store i32 2, ptr %i.d, align 4, !tbaa !95
  br label %readFixedNumber.exit.i238

readFixedNumber.exit.i238:                        ; preds = %._crit_edge.i.i269, %bb.iq, %bb.ip
  %i.ayt = phi i1 [ false, %bb.ip ], [ false, %bb.iq ], [ true, %._crit_edge.i.i269 ] ; 3 uses
  %i.ayu = phi i32 [ 1, %bb.ip ], [ 1, %bb.iq ], [ 2, %._crit_edge.i.i269 ] ; 5 uses
  %.2.i.i239 = phi i8 [ 0, %bb.ip ], [ 0, %bb.iq ], [ %i.ays, %._crit_edge.i.i269 ]
  store i8 %.2.i.i239, ptr %i.ayk, align 8, !tbaa !89
  %i.ayv = zext nneg i32 %i.ayu to i64            ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.ayv
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !101
  %i.ayy = zext i8 %i.ayx to i32                  ; 2 uses
  %i.ayz = add nsw i32 %i.ayy, -96                ; 3 uses
  %i.aza = icmp ugt i32 %i.ayz, 16
  br i1 %i.aza, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %readFixedNumber.exit.i238
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.ayy) #24
  br label %readNumber.exit.i.i246

bb.is:                                            ; preds = %readFixedNumber.exit.i238
  %i.azb = add nuw nsw i32 %i.ayu, 1              ; 2 uses
  %i.azc = add nuw nsw i32 %i.ayz, %i.azb         ; 5 uses
  %i.azd = icmp ugt i32 %i.azc, %i.aym
  br i1 %i.azd, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit.i.i246

bb.iu:                                            ; preds = %bb.is
  %.not183.i = icmp eq i32 %i.ayz, 0
  br i1 %.not183.i, label %readNumber.exit.i.i246, label %.lr.ph.i.preheader.i.i240

.lr.ph.i.preheader.i.i240:                        ; preds = %bb.iu
  %i.aze = zext nneg i32 %i.azb to i64            ; 2 uses
  %i.azf = zext nneg i32 %i.azc to i64
  %i.azg = xor i64 %i.ayv, -1
  %i.azh = add nsw i64 %i.azg, %i.azf
  %i.azi = freeze i64 %i.azh                      ; 4 uses
  %xtraiter4131 = and i64 %i.azi, 1
  %i.azj = icmp eq i64 %i.azi, 1
  br i1 %i.azj, label %.lr.ph.i.i.i241.epil.preheader, label %.lr.ph.i.preheader.i.i240.new

.lr.ph.i.preheader.i.i240.new:                    ; preds = %.lr.ph.i.preheader.i.i240
  %unroll_iter4135 = and i64 %i.azi, -2
  br label %.lr.ph.i.i.i241

.lr.ph.i.i.i241:                                  ; preds = %bb.iv, %.lr.ph.i.preheader.i.i240.new
  %indvars.iv17.i.i242 = phi i64 [ 0, %.lr.ph.i.preheader.i.i240.new ], [ %indvars.iv.next18.i.i267.1, %bb.iv ] ; 3 uses
  %indvars.iv.i74.i = phi i64 [ %i.aze, %.lr.ph.i.preheader.i.i240.new ], [ %indvars.iv.next.i75.i.1, %bb.iv ] ; 3 uses
  %.03545.i.i.i243 = phi i64 [ 0, %.lr.ph.i.preheader.i.i240.new ], [ %i.azz, %bb.iv ]
  %niter4136 = phi i64 [ 0, %.lr.ph.i.preheader.i.i240.new ], [ %niter4136.next.1, %bb.iv ]
  %i.azk = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.i74.i
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !101 ; 2 uses
  %i.azm = zext i8 %i.azl to i64                  ; 2 uses
  %i.azn = and i64 %i.azm, 240
  %.not.i.i.i244 = icmp eq i64 %i.azn, 96
  br i1 %.not.i.i.i244, label %.lr.ph.i.i.i241.1, label %.thread.i.i.i245, !prof !110

.thread.i.i.i245:                                 ; preds = %.lr.ph.i.i.i241, %.lr.ph.i.i.i241.1, %.lr.ph.i.i.i241.epil.preheader
  %.lcssa = phi i8 [ %i.bab, %.lr.ph.i.i.i241.epil.preheader ], [ %i.azl, %.lr.ph.i.i.i241 ], [ %i.azr, %.lr.ph.i.i.i241.1 ]
  %i.azo = sext i8 %.lcssa to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.azo) #24
  br label %readNumber.exit.i.i246

.lr.ph.i.i.i241.1:                                ; preds = %.lr.ph.i.i.i241
  %i.azp = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.i74.i
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 1
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !101 ; 2 uses
  %i.azs = zext i8 %i.azr to i64                  ; 2 uses
  %i.azt = and i64 %i.azs, 240
  %.not.i.i.i244.1 = icmp eq i64 %i.azt, 96
  br i1 %.not.i.i.i244.1, label %bb.iv, label %.thread.i.i.i245, !prof !110

bb.iv:                                            ; preds = %.lr.ph.i.i.i241.1
  %indvars.iv.next18.i.i267 = or disjoint i64 %indvars.iv17.i.i242, 4
  %i.azu = and i64 %i.azm, 15
  %i.azv = shl i64 %i.azu, %indvars.iv17.i.i242
  %i.azw = or i64 %i.azv, %.03545.i.i.i243
  %i.azx = and i64 %i.azs, 15
  %i.azy = shl i64 %i.azx, %indvars.iv.next18.i.i267
  %i.azz = or i64 %i.azy, %i.azw                  ; 3 uses
  %indvars.iv.next18.i.i267.1 = add nuw nsw i64 %indvars.iv17.i.i242, 8 ; 2 uses
  %indvars.iv.next.i75.i.1 = add nuw nsw i64 %indvars.iv.i74.i, 2 ; 2 uses
  %niter4136.next.1 = add i64 %niter4136, 2       ; 2 uses
  %niter4136.ncmp.1 = icmp eq i64 %niter4136.next.1, %unroll_iter4135
  br i1 %niter4136.ncmp.1, label %readNumber.exit.i.i246.loopexit.unr-lcssa, label %.lr.ph.i.i.i241

readNumber.exit.i.i246.loopexit.unr-lcssa:        ; preds = %bb.iv
  %lcmp.mod4132.not = icmp eq i64 %xtraiter4131, 0
  br i1 %lcmp.mod4132.not, label %readNumber.exit.i.i246, label %.lr.ph.i.i.i241.epil.preheader

.lr.ph.i.i.i241.epil.preheader:                   ; preds = %readNumber.exit.i.i246.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i240
  %indvars.iv17.i.i242.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i240 ], [ %indvars.iv.next18.i.i267.1, %readNumber.exit.i.i246.loopexit.unr-lcssa ]
  %indvars.iv.i74.i.epil.init = phi i64 [ %i.aze, %.lr.ph.i.preheader.i.i240 ], [ %indvars.iv.next.i75.i.1, %readNumber.exit.i.i246.loopexit.unr-lcssa ]
  %.03545.i.i.i243.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i240 ], [ %i.azz, %readNumber.exit.i.i246.loopexit.unr-lcssa ]
  %lcmp.mod4134 = trunc i64 %i.azi to i1
  call void @llvm.assume(i1 %lcmp.mod4134)
  %i.baa = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.i74.i.epil.init
  %i.bab = load i8, ptr %i.baa, align 1, !tbaa !101 ; 2 uses
  %i.bac = zext i8 %i.bab to i64                  ; 2 uses
  %i.bad = and i64 %i.bac, 240
  %.not.i.i.i244.epil = icmp eq i64 %i.bad, 96
  br i1 %.not.i.i.i244.epil, label %readNumber.exit.i.i246.loopexit.epilog-lcssa, label %.thread.i.i.i245, !prof !110

readNumber.exit.i.i246.loopexit.epilog-lcssa:     ; preds = %.lr.ph.i.i.i241.epil.preheader
  %i.bae = and i64 %i.bac, 15
  %i.baf = shl i64 %i.bae, %indvars.iv17.i.i242.epil.init
  %i.bag = or i64 %i.baf, %.03545.i.i.i243.epil.init
  br label %readNumber.exit.i.i246

readNumber.exit.i.i246:                           ; preds = %readNumber.exit.i.i246.loopexit.epilog-lcssa, %readNumber.exit.i.i246.loopexit.unr-lcssa, %.thread.i.i.i245, %bb.iu, %bb.it, %bb.ir
  %i.bah = phi i1 [ false, %bb.ir ], [ false, %bb.it ], [ %i.ayt, %bb.iu ], [ false, %.thread.i.i.i245 ], [ %i.ayt, %readNumber.exit.i.i246.loopexit.unr-lcssa ], [ %i.ayt, %readNumber.exit.i.i246.loopexit.epilog-lcssa ]
  %i.bai = phi i32 [ %i.ayu, %bb.ir ], [ %i.ayu, %bb.it ], [ %i.azc, %bb.iu ], [ %i.ayu, %.thread.i.i.i245 ], [ %i.azc, %readNumber.exit.i.i246.loopexit.unr-lcssa ], [ %i.azc, %readNumber.exit.i.i246.loopexit.epilog-lcssa ] ; 3 uses
  %.2.i.i.i247 = phi i64 [ 0, %bb.ir ], [ 0, %bb.it ], [ 0, %bb.iu ], [ 0, %.thread.i.i.i245 ], [ %i.azz, %readNumber.exit.i.i246.loopexit.unr-lcssa ], [ %i.bag, %readNumber.exit.i.i246.loopexit.epilog-lcssa ] ; 3 uses
  %i.baj = load i32, ptr %i.rc, align 8, !tbaa !120
  %i.bak = load i16, ptr %i.rd, align 4, !tbaa !128
  %i.bal = zext i16 %i.bak to i32
  %i.bam = add i32 %i.baj, %i.bal
  %i.ban = zext i32 %i.bam to i64
  %.not.i73.i248 = icmp ult i64 %.2.i.i.i247, %i.ban
  br i1 %.not.i73.i248, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %readNumber.exit.i.i246
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.297, i64 noundef %.2.i.i.i247) #24
  br label %readTypeID.exit.i249

bb.ix:                                            ; preds = %readNumber.exit.i.i246
  %i.bao = trunc i64 %.2.i.i.i247 to i16
  br label %readTypeID.exit.i249

readTypeID.exit.i249:                             ; preds = %bb.ix, %bb.iw
  %i.bap = phi i1 [ false, %bb.iw ], [ %i.bah, %bb.ix ] ; 2 uses
  %.0.i.i250 = phi i16 [ -1, %bb.iw ], [ %i.bao, %bb.ix ]
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ayk, i64 22
  store i16 %.0.i.i250, ptr %i.baq, align 2, !tbaa !141
  %i.bar = zext nneg i32 %i.bai to i64
  %i.bas = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.bar
  %i.bat = load i8, ptr %i.bas, align 1, !tbaa !101 ; 2 uses
  %.not66.i = icmp eq i8 %i.bat, 76
  br i1 %.not66.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %readTypeID.exit.i249
  %i.bau = zext i8 %i.bat to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.323, i32 noundef %i.bau) #24
  br label %bb.ka

bb.iz:                                            ; preds = %readTypeID.exit.i249
  %i.bav = sext i32 %i.bai to i64
  %i.baw = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.bav
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 1
  %i.bay = load i8, ptr %i.bax, align 1, !tbaa !101 ; 2 uses
  %i.baz = zext i8 %i.bay to i32                  ; 2 uses
  %i.bba = add nsw i32 %i.baz, -96                ; 3 uses
  %i.bbb = icmp ugt i32 %i.bba, 16
  br i1 %i.bbb, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.baz) #24
  br label %readNumber.exit.thread.i254

bb.jb:                                            ; preds = %bb.iz
  %i.bbc = add nuw nsw i32 %i.bai, 2              ; 2 uses
  %i.bbd = add nuw nsw i32 %i.bba, %i.bbc         ; 4 uses
  %i.bbe = icmp ugt i32 %i.bbd, %i.aym
  br i1 %i.bbe, label %bb.jc, label %7

bb.jc:                                            ; preds = %bb.jb
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit.thread.i254

7:                                                ; preds = %bb.jb
  %8 = icmp eq i8 %i.bay, 96
  br i1 %8, label %.split.i, label %.preheader.i76.i

.preheader.i76.i:                                 ; preds = %7
  %.not184.i = icmp eq i32 %i.bba, 0
  br i1 %.not184.i, label %readNumber.exit.i256, label %.lr.ph.i79.preheader.i

.lr.ph.i79.preheader.i:                           ; preds = %.preheader.i76.i
  %i.bbf = zext i32 %i.bbc to i64                 ; 3 uses
  %i.bbg = zext i32 %i.bbd to i64
  %i.bbh = sub nsw i64 %i.bbg, %i.bbf
  %i.bbi = freeze i64 %i.bbh                      ; 4 uses
  %xtraiter4137 = and i64 %i.bbi, 1
  %i.bbj = icmp eq i64 %i.bbi, 1
  br i1 %i.bbj, label %.lr.ph.i79.i.epil.preheader, label %.lr.ph.i79.preheader.i.new

.lr.ph.i79.preheader.i.new:                       ; preds = %.lr.ph.i79.preheader.i
  %unroll_iter4141 = and i64 %i.bbi, -2
  br label %.lr.ph.i79.i

.split.i:                                         ; preds = %7
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.ayk, i64 2 ; 2 uses
  store i16 0, ptr %i.bbk, align 2, !tbaa !142
  br i1 %i.bap, label %bb.je, label %.loopexit365

.lr.ph.i79.i:                                     ; preds = %bb.jd, %.lr.ph.i79.preheader.i.new
  %indvars.iv151.i = phi i64 [ 0, %.lr.ph.i79.preheader.i.new ], [ %indvars.iv.next152.i.1, %bb.jd ] ; 3 uses
  %indvars.iv.i251 = phi i64 [ %i.bbf, %.lr.ph.i79.preheader.i.new ], [ %indvars.iv.next.i255.1, %bb.jd ] ; 3 uses
  %.03545.i.i252 = phi i64 [ 0, %.lr.ph.i79.preheader.i.new ], [ %i.bca, %bb.jd ]
  %niter4142 = phi i64 [ 0, %.lr.ph.i79.preheader.i.new ], [ %niter4142.next.1, %bb.jd ]
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.i251
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !101 ; 2 uses
  %i.bbn = zext i8 %i.bbm to i64                  ; 2 uses
  %i.bbo = and i64 %i.bbn, 240
  %.not.i80.i = icmp eq i64 %i.bbo, 96
  br i1 %.not.i80.i, label %.lr.ph.i79.i.1, label %.thread.i.i253, !prof !110

.thread.i.i253:                                   ; preds = %.lr.ph.i79.i.epil.preheader, %.lr.ph.i79.i, %.lr.ph.i79.i.1
  %.lcssa3178 = phi i8 [ %i.bbs, %.lr.ph.i79.i.1 ], [ %i.bbm, %.lr.ph.i79.i ], [ %i.bcd, %.lr.ph.i79.i.epil.preheader ]
  %i.bbp = sext i8 %.lcssa3178 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bbp) #24
  br label %readNumber.exit.thread.i254

.lr.ph.i79.i.1:                                   ; preds = %.lr.ph.i79.i
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.i251
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 1
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !101 ; 2 uses
  %i.bbt = zext i8 %i.bbs to i64                  ; 2 uses
  %i.bbu = and i64 %i.bbt, 240
  %.not.i80.i.1 = icmp eq i64 %i.bbu, 96
  br i1 %.not.i80.i.1, label %bb.jd, label %.thread.i.i253, !prof !110

bb.jd:                                            ; preds = %.lr.ph.i79.i.1
  %indvars.iv.next152.i = or disjoint i64 %indvars.iv151.i, 4
  %i.bbv = and i64 %i.bbn, 15
  %i.bbw = shl i64 %i.bbv, %indvars.iv151.i
  %i.bbx = or i64 %i.bbw, %.03545.i.i252
  %i.bby = and i64 %i.bbt, 15
  %i.bbz = shl i64 %i.bby, %indvars.iv.next152.i
  %i.bca = or i64 %i.bbz, %i.bbx                  ; 3 uses
  %indvars.iv.next152.i.1 = add nuw nsw i64 %indvars.iv151.i, 8 ; 2 uses
  %indvars.iv.next.i255.1 = add nuw nsw i64 %indvars.iv.i251, 2 ; 2 uses
  %niter4142.next.1 = add i64 %niter4142, 2       ; 2 uses
  %niter4142.ncmp.1 = icmp eq i64 %niter4142.next.1, %unroll_iter4141
  br i1 %niter4142.ncmp.1, label %readNumber.exit.i256.loopexit.unr-lcssa, label %.lr.ph.i79.i

readNumber.exit.thread.i254:                      ; preds = %.thread.i.i253, %bb.jc, %bb.ja
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.ayk, i64 2
  store i16 0, ptr %i.bcb, align 2, !tbaa !142
  br label %.loopexit365

readNumber.exit.i256.loopexit.unr-lcssa:          ; preds = %bb.jd
  %lcmp.mod4138.not = icmp eq i64 %xtraiter4137, 0
  br i1 %lcmp.mod4138.not, label %readNumber.exit.i256, label %.lr.ph.i79.i.epil.preheader

.lr.ph.i79.i.epil.preheader:                      ; preds = %readNumber.exit.i256.loopexit.unr-lcssa, %.lr.ph.i79.preheader.i
  %indvars.iv151.i.epil.init = phi i64 [ 0, %.lr.ph.i79.preheader.i ], [ %indvars.iv.next152.i.1, %readNumber.exit.i256.loopexit.unr-lcssa ]
  %indvars.iv.i251.epil.init = phi i64 [ %i.bbf, %.lr.ph.i79.preheader.i ], [ %indvars.iv.next.i255.1, %readNumber.exit.i256.loopexit.unr-lcssa ]
  %.03545.i.i252.epil.init = phi i64 [ 0, %.lr.ph.i79.preheader.i ], [ %i.bca, %readNumber.exit.i256.loopexit.unr-lcssa ]
  %lcmp.mod4140 = trunc i64 %i.bbi to i1
  call void @llvm.assume(i1 %lcmp.mod4140)
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.i251.epil.init
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !101 ; 2 uses
  %i.bce = zext i8 %i.bcd to i64                  ; 2 uses
  %i.bcf = and i64 %i.bce, 240
  %.not.i80.i.epil = icmp eq i64 %i.bcf, 96
  br i1 %.not.i80.i.epil, label %readNumber.exit.i256.loopexit.epilog-lcssa, label %.thread.i.i253, !prof !110

readNumber.exit.i256.loopexit.epilog-lcssa:       ; preds = %.lr.ph.i79.i.epil.preheader
  %i.bcg = and i64 %i.bce, 15
  %i.bch = shl i64 %i.bcg, %indvars.iv151.i.epil.init
  %i.bci = or i64 %i.bch, %.03545.i.i252.epil.init
  br label %readNumber.exit.i256

readNumber.exit.i256:                             ; preds = %readNumber.exit.i256.loopexit.epilog-lcssa, %readNumber.exit.i256.loopexit.unr-lcssa, %.preheader.i76.i
  %.035.lcssa.i.i = phi i64 [ 0, %.preheader.i76.i ], [ %i.bca, %readNumber.exit.i256.loopexit.unr-lcssa ], [ %i.bci, %readNumber.exit.i256.loopexit.epilog-lcssa ] ; 2 uses
  %i.bcj = trunc i64 %.035.lcssa.i.i to i16
  %i.bck = getelementptr inbounds nuw i8, ptr %i.ayk, i64 2 ; 2 uses
  store i16 %i.bcj, ptr %i.bck, align 2, !tbaa !142
  br i1 %i.bap, label %bb.je, label %.loopexit365

.loopexit365:                                     ; preds = %readNumber.exit.i256, %.split.i, %readNumber.exit.thread.i254
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.324) #24
  br label %bb.ka

bb.je:                                            ; preds = %readNumber.exit.i256, %.split.i
  %i.bcl = phi ptr [ %i.bbk, %.split.i ], [ %i.bck, %readNumber.exit.i256 ]
  %.2.i78189.i = phi i64 [ 0, %.split.i ], [ %.035.lcssa.i.i, %readNumber.exit.i256 ]
  %i.bcm = load i8, ptr %i.ayk, align 8, !tbaa !89
  %i.bcn = zext i8 %i.bcm to i32
  %i.bco = trunc i64 %.2.i78189.i to i32
  %i.bcp = and i32 %i.bco, 65535
  %i.bcq = add nuw nsw i32 %i.bcp, %i.bcn         ; 2 uses
  %.not67.i = icmp eq i32 %i.bcq, 0
  br i1 %.not67.i, label %._crit_edge.thread.i266, label %bb.jf

._crit_edge.thread.i266:                          ; preds = %bb.je
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.ayk, i64 24
  store ptr null, ptr %i.bcr, align 8, !tbaa !90
  store i8 1, ptr %i.c, align 1
  br label %bb.jq

bb.jf:                                            ; preds = %bb.je
  %i.bcs = zext nneg i32 %i.bcq to i64            ; 2 uses
  %i.bct = call noalias ptr @calloc(i64 noundef %i.bcs, i64 noundef 2) #23 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.ayk, i64 24 ; 2 uses
  store ptr %i.bct, ptr %i.bcu, align 8, !tbaa !90
  %.not68.i = icmp eq ptr %i.bct, null
  br i1 %.not68.i, label %bb.jg, label %.lr.ph.i257

bb.jg:                                            ; preds = %bb.jf
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.325) #24
  br label %bb.ka

.lr.ph.i257:                                      ; preds = %bb.jf, %readFixedNumber.exit108.thread.i
  %indvars.iv163.i259 = phi i64 [ %indvars.iv.next164.i261, %readFixedNumber.exit108.thread.i ], [ 0, %bb.jf ] ; 2 uses
  %i.bcv = phi i32 [ %i.bey, %readFixedNumber.exit108.thread.i ], [ %i.bbd, %bb.jf ] ; 5 uses
  %i.bcw = phi i8 [ %i.bex, %readFixedNumber.exit108.thread.i ], [ 1, %bb.jf ] ; 2 uses
  %i.bcx = zext i32 %i.bcv to i64
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.bcx
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !101
  %.fr4275 = freeze i8 %i.bcz                     ; 3 uses
  %i.bda = zext i8 %.fr4275 to i32                ; 2 uses
  %i.bdb = add nsw i32 %i.bda, -96                ; 4 uses
  %i.bdc = icmp ugt i32 %i.bdb, 16
  br i1 %i.bdc, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %.lr.ph.i257
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bda) #24
  br label %readNumber.exit94.i

bb.ji:                                            ; preds = %.lr.ph.i257
  %i.bdd = add i32 %i.bcv, 1                      ; 3 uses
  %i.bde = add i32 %i.bdb, %i.bdd                 ; 4 uses
  %i.bdf = icmp ugt i32 %i.bde, %i.aym
  br i1 %i.bdf, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit94.i

bb.jk:                                            ; preds = %bb.ji
  %i.bdg = icmp ne i8 %.fr4275, 96
  %i.bdh = icmp ult i32 %i.bdd, %i.bde
  %or.cond.i260 = and i1 %i.bdg, %i.bdh
  br i1 %or.cond.i260, label %.lr.ph.i86.preheader.i, label %readNumber.exit94.i

.lr.ph.i86.preheader.i:                           ; preds = %bb.jk
  %i.bdi = zext i32 %i.bdd to i64                 ; 2 uses
  %i.bdj = zext nneg i32 %i.bdb to i64            ; 2 uses
  %xtraiter4147 = and i64 %i.bdj, 1
  %i.bdk = icmp eq i32 %i.bdb, 1
  br i1 %i.bdk, label %.lr.ph.i86.i.epil.preheader, label %.lr.ph.i86.preheader.i.new

.lr.ph.i86.preheader.i.new:                       ; preds = %.lr.ph.i86.preheader.i
  %unroll_iter4151 = and i64 %i.bdj, 30
  br label %.lr.ph.i86.i

.lr.ph.i86.i:                                     ; preds = %bb.jl, %.lr.ph.i86.preheader.i.new
  %indvars.iv158.i = phi i64 [ 0, %.lr.ph.i86.preheader.i.new ], [ %indvars.iv.next159.i.1, %bb.jl ] ; 3 uses
  %indvars.iv156.i264 = phi i64 [ %i.bdi, %.lr.ph.i86.preheader.i.new ], [ %indvars.iv.next157.i265.1, %bb.jl ] ; 3 uses
  %.03545.i89.i = phi i64 [ 0, %.lr.ph.i86.preheader.i.new ], [ %i.bea, %bb.jl ]
  %niter4152 = phi i64 [ 0, %.lr.ph.i86.preheader.i.new ], [ %niter4152.next.1, %bb.jl ]
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv156.i264
  %i.bdm = load i8, ptr %i.bdl, align 1, !tbaa !101 ; 2 uses
  %i.bdn = zext i8 %i.bdm to i64                  ; 2 uses
  %i.bdo = and i64 %i.bdn, 240
  %.not.i90.i = icmp eq i64 %i.bdo, 96
  br i1 %.not.i90.i, label %.lr.ph.i86.i.1, label %.thread.i91.i, !prof !110

.thread.i91.i:                                    ; preds = %.lr.ph.i86.i, %.lr.ph.i86.i.1, %.lr.ph.i86.i.epil.preheader
  %.lcssa3181 = phi i8 [ %i.bec, %.lr.ph.i86.i.epil.preheader ], [ %i.bdm, %.lr.ph.i86.i ], [ %i.bds, %.lr.ph.i86.i.1 ]
  %i.bdp = sext i8 %.lcssa3181 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bdp) #24
  br label %readNumber.exit94.i

.lr.ph.i86.i.1:                                   ; preds = %.lr.ph.i86.i
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv156.i264
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 1
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !101 ; 2 uses
  %i.bdt = zext i8 %i.bds to i64                  ; 2 uses
  %i.bdu = and i64 %i.bdt, 240
  %.not.i90.i.1 = icmp eq i64 %i.bdu, 96
  br i1 %.not.i90.i.1, label %bb.jl, label %.thread.i91.i, !prof !110

bb.jl:                                            ; preds = %.lr.ph.i86.i.1
  %indvars.iv.next159.i = or disjoint i64 %indvars.iv158.i, 4
  %i.bdv = and i64 %i.bdn, 15
  %i.bdw = shl i64 %i.bdv, %indvars.iv158.i
  %i.bdx = or i64 %i.bdw, %.03545.i89.i
  %i.bdy = and i64 %i.bdt, 15
  %i.bdz = shl i64 %i.bdy, %indvars.iv.next159.i
  %i.bea = or i64 %i.bdz, %i.bdx                  ; 3 uses
  %indvars.iv.next159.i.1 = add nuw nsw i64 %indvars.iv158.i, 8 ; 2 uses
  %indvars.iv.next157.i265.1 = add nuw nsw i64 %indvars.iv156.i264, 2 ; 2 uses
  %niter4152.next.1 = add i64 %niter4152, 2       ; 2 uses
  %niter4152.ncmp.1 = icmp eq i64 %niter4152.next.1, %unroll_iter4151
  br i1 %niter4152.ncmp.1, label %._crit_edge.i83.loopexit.i.unr-lcssa, label %.lr.ph.i86.i

._crit_edge.i83.loopexit.i.unr-lcssa:             ; preds = %bb.jl
  %lcmp.mod4148.not = icmp eq i64 %xtraiter4147, 0
  br i1 %lcmp.mod4148.not, label %._crit_edge.i83.loopexit.i, label %.lr.ph.i86.i.epil.preheader

.lr.ph.i86.i.epil.preheader:                      ; preds = %._crit_edge.i83.loopexit.i.unr-lcssa, %.lr.ph.i86.preheader.i
  %indvars.iv158.i.epil.init = phi i64 [ 0, %.lr.ph.i86.preheader.i ], [ %indvars.iv.next159.i.1, %._crit_edge.i83.loopexit.i.unr-lcssa ]
  %indvars.iv156.i264.epil.init = phi i64 [ %i.bdi, %.lr.ph.i86.preheader.i ], [ %indvars.iv.next157.i265.1, %._crit_edge.i83.loopexit.i.unr-lcssa ]
  %.03545.i89.i.epil.init = phi i64 [ 0, %.lr.ph.i86.preheader.i ], [ %i.bea, %._crit_edge.i83.loopexit.i.unr-lcssa ]
  %lcmp.mod4150 = trunc i8 %.fr4275 to i1
  call void @llvm.assume(i1 %lcmp.mod4150)
  %i.beb = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv156.i264.epil.init
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !101 ; 2 uses
  %i.bed = zext i8 %i.bec to i64                  ; 2 uses
  %i.bee = and i64 %i.bed, 240
  %.not.i90.i.epil = icmp eq i64 %i.bee, 96
  br i1 %.not.i90.i.epil, label %._crit_edge.i83.loopexit.i.epilog-lcssa, label %.thread.i91.i, !prof !110

._crit_edge.i83.loopexit.i.epilog-lcssa:          ; preds = %.lr.ph.i86.i.epil.preheader
  %i.bef = and i64 %i.bed, 15
  %i.beg = shl i64 %i.bef, %indvars.iv158.i.epil.init
  %i.beh = or i64 %i.beg, %.03545.i89.i.epil.init
  br label %._crit_edge.i83.loopexit.i

._crit_edge.i83.loopexit.i:                       ; preds = %._crit_edge.i83.loopexit.i.unr-lcssa, %._crit_edge.i83.loopexit.i.epilog-lcssa
  %.lcssa3183 = phi i64 [ %i.bea, %._crit_edge.i83.loopexit.i.unr-lcssa ], [ %i.beh, %._crit_edge.i83.loopexit.i.epilog-lcssa ]
  %i.bei = trunc i64 %.lcssa3183 to i16
  br label %readNumber.exit94.i

readNumber.exit94.i:                              ; preds = %._crit_edge.i83.loopexit.i, %.thread.i91.i, %bb.jk, %bb.jj, %bb.jh
  %i.bej = phi i8 [ 0, %bb.jh ], [ 0, %bb.jj ], [ %i.bcw, %bb.jk ], [ 0, %.thread.i91.i ], [ %i.bcw, %._crit_edge.i83.loopexit.i ] ; 3 uses
  %i.bek = phi i32 [ %i.bcv, %bb.jh ], [ %i.bcv, %bb.jj ], [ %i.bde, %bb.jk ], [ %i.bcv, %.thread.i91.i ], [ %i.bde, %._crit_edge.i83.loopexit.i ] ; 5 uses
  %i.bel = phi i16 [ 0, %bb.jh ], [ 0, %bb.jj ], [ 0, %bb.jk ], [ 0, %.thread.i91.i ], [ %i.bei, %._crit_edge.i83.loopexit.i ] ; 2 uses
  %i.bem = load ptr, ptr %i.bcu, align 8, !tbaa !90
  %i.ben = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %indvars.iv163.i259 ; 2 uses
  store i16 %i.bel, ptr %i.ben, align 2, !tbaa !91
  %i.beo = add i32 %i.bek, 1                      ; 3 uses
  %i.bep = icmp ugt i32 %i.beo, %i.aym
  br i1 %i.bep, label %bb.jm, label %.preheader.i95.i

.preheader.i95.i:                                 ; preds = %readNumber.exit94.i
  %.not114.i = icmp eq i32 %i.bek, -1
  br i1 %.not114.i, label %readFixedNumber.exit108.thread.i, label %.lr.ph.preheader.i99.i

.lr.ph.preheader.i99.i:                           ; preds = %.preheader.i95.i
  %i.beq = zext i32 %i.bek to i64
  %i.ber = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.beq
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !101
  %i.bet = zext i8 %i.bes to i32                  ; 3 uses
  %i.beu = and i32 %i.bet, 240
  %.not.i104.i = icmp eq i32 %i.beu, 96
  br i1 %.not.i104.i, label %readFixedNumber.exit108.i, label %bb.jn, !prof !110

bb.jm:                                            ; preds = %readNumber.exit94.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  br label %readFixedNumber.exit108.thread.i

bb.jn:                                            ; preds = %.lr.ph.preheader.i99.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bet) #24
  br label %readFixedNumber.exit108.thread.i

readFixedNumber.exit108.i:                        ; preds = %.lr.ph.preheader.i99.i
  %i.bev = and i32 %i.bet, 15
  %.not72.i = icmp eq i32 %i.bev, 0
  br i1 %.not72.i, label %readFixedNumber.exit108.thread.i, label %bb.jo

bb.jo:                                            ; preds = %readFixedNumber.exit108.i
  %i.bew = or i16 %i.bel, -32768
  store i16 %i.bew, ptr %i.ben, align 2, !tbaa !91
  br label %readFixedNumber.exit108.thread.i

readFixedNumber.exit108.thread.i:                 ; preds = %bb.jo, %readFixedNumber.exit108.i, %bb.jn, %bb.jm, %.preheader.i95.i
  %i.bex = phi i8 [ 0, %bb.jn ], [ 0, %bb.jm ], [ %i.bej, %bb.jo ], [ %i.bej, %readFixedNumber.exit108.i ], [ %i.bej, %.preheader.i95.i ] ; 3 uses
  %i.bey = phi i32 [ %i.bek, %bb.jn ], [ %i.bek, %bb.jm ], [ %i.beo, %bb.jo ], [ %i.beo, %readFixedNumber.exit108.i ], [ 0, %.preheader.i95.i ] ; 2 uses
  %indvars.iv.next164.i261 = add nuw nsw i64 %indvars.iv163.i259, 1 ; 2 uses
  %exitcond.not.i262 = icmp eq i64 %indvars.iv.next164.i261, %i.bcs
  br i1 %exitcond.not.i262, label %._crit_edge.i263, label %.lr.ph.i257

._crit_edge.i263:                                 ; preds = %readFixedNumber.exit108.thread.i
  store i8 %i.bex, ptr %i.c, align 1
  %i.bez = trunc nuw i8 %i.bex to i1
  br i1 %i.bez, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %._crit_edge.i263
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.326) #24
  br label %bb.ka

bb.jq:                                            ; preds = %._crit_edge.i263, %._crit_edge.thread.i266
  %i.bfa = phi i32 [ %i.bbd, %._crit_edge.thread.i266 ], [ %i.bey, %._crit_edge.i263 ] ; 2 uses
  %i.bfb = zext i32 %i.bfa to i64
end_hunk_1
