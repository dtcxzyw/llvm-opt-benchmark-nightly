Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/debug?download=true
inline.NumInlined: 93
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@memtest_test_linux_anonymous_maps:bb.a

.preheader:                                       ; preds = %bb.k
  %i.q = icmp sgt i32 %.1, 0
  br i1 %i.q, label %.lr.ph63.preheader, label %._crit_edge

.lr.ph63.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.1 to i64
  br label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader58, %bb.k
  %.04360 = phi i32 [ %.1, %bb.k ], [ 0, %.preheader58 ] ; 9 uses
  %i.r = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 45) #25 ; 3 uses
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %bb.k, label %bb.d, !llvm.loop !211

bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !13
  %i.t = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.s, i32 noundef 32) #25 ; 3 uses
  %.not51 = icmp eq ptr %i.t, null
  br i1 %.not51, label %bb.k, label %bb.e, !llvm.loop !211

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 5 uses
  store i8 0, ptr %i.t, align 1, !tbaa !13
  %i.v = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.323) #25
  %.not52 = icmp eq ptr %i.v, null
  br i1 %.not52, label %bb.f, label %bb.k, !llvm.loop !211

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.324) #25
  %.not53 = icmp eq ptr %i.w, null
  br i1 %.not53, label %bb.g, label %bb.k, !llvm.loop !211

bb.g:                                             ; preds = %bb.f
  %i.x = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.325) #25
  %.not54 = icmp eq ptr %i.x, null
  br i1 %.not54, label %bb.h, label %bb.k, !llvm.loop !211

bb.h:                                             ; preds = %bb.g
  %i.y = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.326) #25
  %.not55 = icmp eq ptr %i.y, null
  br i1 %.not55, label %bb.k, label %bb.i, !llvm.loop !211

bb.i:                                             ; preds = %bb.h
  %i.z = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.327) #25
  %.not56 = icmp eq ptr %i.z, null
  br i1 %.not56, label %bb.k, label %bb.j, !llvm.loop !211

bb.j:                                             ; preds = %bb.i
  %i.aa = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 16) #24 ; 3 uses
  %i.ab = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.s, ptr noundef null, i32 noundef 16) #24
  %i.ac = sub i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = sext i32 %.04360 to i64                 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ad
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !19
  %i.af = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ad
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !19
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.328, i64 noundef %i.aa, i64 noundef %i.ac) #24 ; 0 uses
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.ai = call i64 @write(i32 noundef %i.j, ptr noundef nonnull %i.b, i64 noundef %i.ah) #24 ; 0 uses
  %i.aj = add nsw i32 %.04360, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.f, %bb.g, %bb.d, %.lr.ph, %bb.j
  %.1 = phi i32 [ %.04360, %bb.d ], [ %i.aj, %bb.j ], [ %.04360, %bb.h ], [ %.04360, %bb.e ], [ %.04360, %.lr.ph ], [ %.04360, %bb.g ], [ %.04360, %bb.f ], [ %.04360, %bb.i ] ; 3 uses
  %i.ak = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.k)
  %.not48 = icmp eq ptr %i.ak, null
  br i1 %.not48, label %.preheader, label %.lr.ph

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.lr.ph63
  %indvars.iv = phi i64 [ 0, %.lr.ph63.preheader ], [ %indvars.iv.next, %.lr.ph63 ] ; 3 uses
  %.062 = phi i32 [ 0, %.lr.ph63.preheader ], [ %i.as, %.lr.ph63 ]
  %i.al = call i64 @write(i32 noundef %i.j, ptr noundef nonnull @.str.329, i64 noundef 1) #24 ; 0 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.an = load i64, ptr %i.am, align 8, !tbaa !19
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.ar = call i32 @memtest_preserving_test(ptr noundef %i.ao, i64 noundef %i.aq, i32 noundef 1) #24
  %i.as = add nsw i32 %i.ar, %.062                ; 3 uses
  %.not49 = icmp eq i32 %i.as, 0
  %i.at = select i1 %.not49, ptr @.str.331, ptr @.str.330
  %i.au = call i64 @write(i32 noundef %i.j, ptr noundef nonnull %i.at, i64 noundef 1) #24 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph63, !llvm.loop !212

._crit_edge:                                      ; preds = %.lr.ph63, %.preheader58, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader58 ], [ %i.as, %.lr.ph63 ] ; 2 uses
  %i.av = call i64 @write(i32 noundef %i.j, ptr noundef nonnull @.str.332, i64 noundef 1) #24 ; 0 uses
  %i.aw = call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7096), align 8, !tbaa !180
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %closeDirectLogFiledes.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ba = call i32 @close(i32 noundef %i.j) #24   ; 0 uses
  br label %closeDirectLogFiledes.exit

closeDirectLogFiledes.exit:                       ; preds = %bb.l, %._crit_edge, %bb.c, %bb.b, %openDirectLogFiledes.exit
  %.044 = phi i32 [ 0, %openDirectLogFiledes.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.044
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @memtest_preserving_test(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @killThreads() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @pthread_self() #28
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !213 ; 2 uses
  %.not.i = icmp eq i64 %i.a, %i.b
  br i1 %.not.i, label %killMainThread.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_cancel(i64 noundef %i.b) #24
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %killMainThread.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !213
  %i.f = tail call i32 @pthread_join(i64 noundef %i.e, ptr noundef null) #24 ; 2 uses
  %.not2.i = icmp eq i32 %i.f, 0
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.h = icmp sgt i32 %i.g, 3                     ; 2 uses
  br i1 %.not2.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %killMainThread.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @strerror(i32 noundef %i.f) #24
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.366, ptr noundef %i.i) #24
  br label %killMainThread.exit

bb.f:                                             ; preds = %bb.c
  br i1 %i.h, label %killMainThread.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.367) #24
  br label %killMainThread.exit

killMainThread.exit:                              ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  tail call void @bioKillThreads() #24
  tail call void @killIOThreads() #24
  ret void
}

declare void @bioKillThreads() local_unnamed_addr #2

declare void @killIOThreads() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @doFastMemoryTest() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7128), align 8, !tbaa !183
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.333) #24
  tail call void @killThreads()
  %i.b = tail call i32 @memtest_test_linux_anonymous_maps()
  %.not1 = icmp eq i32 %i.b, 0
  %.str.335..str.334 = select i1 %.not1, ptr @.str.335, ptr @.str.334
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull %.str.335..str.334) #24
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dumpX86Calls(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Dl_info, align 8            ; 4 uses
  %i.a = alloca [256 x i64], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.b = icmp ult i64 %1, 5
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = add i64 %1, -4
  %i.d = ptrtoint ptr %0 to i64
  %i.e = add i64 %i.d, 5
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.g ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.025 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %.not = icmp eq i8 %i.h, -24
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.0.copyload = load i32, ptr %i.i, align 1
  %i.j = zext i32 %.0.copyload to i64
  %i.k = add i64 %i.e, %.025
  %i.l = add i64 %i.k, %i.j                       ; 5 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = call i32 @dladdr(ptr noundef %i.m, ptr noundef nonnull %2) #24
  %i.o = icmp ne i32 %i.n, 0
  %i.p = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.q = icmp ne ptr %i.p, null
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %3 = shl i64 %i.l, 3
  %i.r = and i64 %3, 2040                         ; 2 uses
  %.0..0..0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.s = load i64, ptr %.0..0..0..0..sroa_idx, align 8, !tbaa !19
  %.not24 = icmp eq i64 %i.s, %i.l
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.336, i64 noundef %i.l, ptr noundef nonnull %i.p) ; 0 uses
  %.0..0..0..0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i64 %i.l, ptr %.0..0..0..0..sroa_idx43, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = add nuw i64 %.025, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b
  %.2 = phi i64 [ %.025, %bb.b ], [ %i.u, %bb.f ], [ %.025, %bb.c ]
  %i.v = add i64 %.2, 1                           ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.c
  br i1 %i.w, label %bb.b, label %.loopexit, !llvm.loop !214

.loopexit:                                        ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind
declare i32 @dladdr(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @dumpCodeAroundEIP(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Dl_info, align 8            ; 4 uses
  %i.a = alloca [256 x i64], align 16             ; 5 uses
  %i.b = alloca [65 x i8], align 16               ; 6 uses
  %2 = alloca %struct.Dl_info, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.c = call i32 @dladdr(ptr noundef %0, ptr noundef nonnull %2) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.e = icmp sgt i32 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !217  ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !218
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !219
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1027, ptr noundef nonnull @.str.337, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.i) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !217
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub nsw i64 %i.m, %i.p
  %i.r = call i64 @sysconf(i32 noundef 30) #24    ; 2 uses
  %i.s = icmp ult i64 %i.q, 8192
  br i1 %i.s, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !217  ; 3 uses
  %i.u = add i64 %i.r, %i.m
  %i.v = sub i64 0, %i.r
  %i.w = and i64 %i.u, %i.v
  %i.x = add i64 %i.m, 128
  %spec.select = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.w)
  %i.y = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.z = sub i64 %spec.select, %i.y               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.338, i64 noundef %i.z) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not20.i = icmp eq i64 %i.z, 0
  br i1 %.not20.i, label %serverLogHexDump.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.b to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.023.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.aq, %bb.j ] ; 3 uses
  %.01822.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 3 uses
  %.01921.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.ap, %bb.j ]
  %i.ad = load i8, ptr %.023.i, align 1, !tbaa !13
  %i.ae = lshr i8 %i.ad, 4
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @__const.serverLogHexDump.charset, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  store i8 %i.ah, ptr %.01822.i, align 1, !tbaa !13
  %i.ai = load i8, ptr %.023.i, align 1, !tbaa !13
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const.serverLogHexDump.charset, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.01822.i, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.01822.i, i64 2 ; 3 uses
  store i8 0, ptr %i.ao, align 1, !tbaa !13
  %i.ap = add i64 %.01921.i, -1                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.ar, %i.ac
  %i.at = icmp eq i64 %i.as, 64
  %i.au = icmp eq i64 %i.ap, 0                    ; 2 uses
  %or.cond.i = or i1 %i.au, %i.at
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull %i.b) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i = phi ptr [ %i.b, %bb.i ], [ %i.ao, %bb.h ]
  br i1 %i.au, label %serverLogHexDump.exit, label %bb.h, !llvm.loop !220

serverLogHexDump.exit:                            ; preds = %bb.j, %bb.g
  call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.332) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.av = icmp ult i64 %i.z, 5
  br i1 %i.av, label %dumpX86Calls.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %serverLogHexDump.exit
  %i.aw = add i64 %i.z, -4
  %i.ax = add i64 %i.y, 5
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i17
  %.025.i = phi i64 [ 0, %.lr.ph.i17 ], [ %i.bo, %bb.p ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 %.025.i ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.ba, -24
  br i1 %.not.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %.0.copyload.i = load i32, ptr %i.bb, align 1
  %i.bc = zext i32 %.0.copyload.i to i64
  %i.bd = add i64 %i.ax, %.025.i
  %i.be = add i64 %i.bd, %i.bc                    ; 5 uses
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = call i32 @dladdr(ptr noundef %i.bf, ptr noundef nonnull %1) #24
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.bj = icmp ne ptr %i.bi, null
  %or.cond.i18 = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond.i18, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %3 = shl i64 %i.be, 3
  %i.bk = and i64 %3, 2040                        ; 2 uses
  %.0..0..0..0..0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bl = load i64, ptr %.0..0..0..0..0..0..sroa_idx, align 8, !tbaa !19
  %.not24.i = icmp eq i64 %i.bl, %i.be
  br i1 %.not24.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.336, i64 noundef %i.be, ptr noundef nonnull %i.bi) ; 0 uses
  %.0..0..0..0..0..0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  store i64 %i.be, ptr %.0..0..0..0..0..0..sroa_idx31, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = add nuw i64 %.025.i, 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.k
  %.2.i = phi i64 [ %.025.i, %bb.k ], [ %i.bn, %bb.o ], [ %.025.i, %bb.l ]
  %i.bo = add i64 %.2.i, 1                        ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.aw
  br i1 %i.bp, label %bb.k, label %dumpX86Calls.exit, !llvm.loop !214

dumpX86Calls.exit:                                ; preds = %bb.p, %serverLogHexDump.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %dumpX86Calls.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @serverLogHexDump(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = and i32 %0, 255
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef %0, ptr noundef nonnull @.str.342, ptr noundef %1, i64 noundef %3) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not20 = icmp eq i64 %3, 0
  br i1 %.not20, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.c
  %.pre = or i32 %0, 1024
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = or i32 %0, 1024                          ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.023 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.f ] ; 3 uses
  %.01822 = phi ptr [ %i.a, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %.01921 = phi i64 [ %3, %.lr.ph ], [ %i.s, %bb.f ]
  %i.g = load i8, ptr %.023, align 1, !tbaa !13
  %i.h = lshr i8 %i.g, 4
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @__const.serverLogHexDump.charset, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  store i8 %i.k, ptr %.01822, align 1, !tbaa !13
  %i.l = load i8, ptr %.023, align 1, !tbaa !13
  %i.m = and i8 %i.l, 15
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @__const.serverLogHexDump.charset, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.01822, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.01822, i64 2 ; 3 uses
  store i8 0, ptr %i.r, align 1, !tbaa !13
  %i.s = add i64 %.01921, -1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.u, %i.e
  %i.w = icmp eq i64 %i.v, 64
  %i.x = icmp eq i64 %i.s, 0                      ; 2 uses
  %or.cond = or i1 %i.x, %i.w
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @serverLogRaw(i32 noundef %i.f, ptr noundef nonnull %i.a) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi ptr [ %i.a, %bb.e ], [ %i.r, %bb.d ]
  br i1 %i.x, label %._crit_edge, label %bb.d, !llvm.loop !220

._crit_edge:                                      ; preds = %bb.f, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.f, %bb.f ]
  call void @serverLogRaw(i32 noundef %.pre-phi, ptr noundef nonnull @.str.332) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @invalidFunctionWasCalled() #18 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setupDebugSigHandlers() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = tail call i32 @anetPipe(ptr noundef nonnull @stacktrace_pipe, i32 noundef 526336, i32 noundef 526336) #24
  %i.b = icmp ne i32 %i.a, -1
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.d = icmp sgt i32 %i.c, 3
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond.i, label %setupStacktracePipe.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = tail call ptr @strerror(i32 noundef %i.f) #24
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.368, ptr noundef %i.g) #24
  br label %setupStacktracePipe.exit

setupStacktracePipe.exit:                         ; preds = %bb.a, %bb.b
  tail call void @setupSigSegvHandler()
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = call i32 @sigemptyset(ptr noundef nonnull %i.h) #24 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 4, ptr %i.j, align 8, !tbaa !91
  store ptr @sigalrmSignalHandler, ptr %0, align 8, !tbaa !13
  %i.k = call i32 @sigaction(i32 noundef 14, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setupSigSegvHandler() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 10 uses
  %i.a = load volatile i32, ptr @signal_handler_lock_initialized, align 4, !tbaa !9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutexattr_init(ptr noundef nonnull @signal_handler_lock_attr) #24 ; 0 uses
  %i.c = tail call i32 @pthread_mutexattr_settype(ptr noundef nonnull @signal_handler_lock_attr, i32 noundef 2) #24 ; 0 uses
  %i.d = tail call i32 @pthread_mutex_init(ptr noundef nonnull @signal_handler_lock, ptr noundef nonnull @signal_handler_lock_attr) #24 ; 0 uses
  %i.e = tail call i32 @pthread_mutexattr_init(ptr noundef nonnull @bug_report_start_attr) #24 ; 0 uses
  %i.f = tail call i32 @pthread_mutexattr_settype(ptr noundef nonnull @bug_report_start_attr, i32 noundef 1) #24 ; 0 uses
  %i.g = tail call i32 @pthread_mutex_init(ptr noundef nonnull @bug_report_start_mutex, ptr noundef nonnull @bug_report_start_attr) #24 ; 0 uses
  store volatile i32 1, ptr @signal_handler_lock_initialized, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = call i32 @sigemptyset(ptr noundef nonnull %i.h) #24 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1073741828, ptr %i.j, align 8, !tbaa !91
  store ptr @sigsegvHandler, ptr %0, align 8, !tbaa !13
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7124), align 4, !tbaa !90
  %.not1 = icmp eq i32 %i.k, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  %i.m = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  %i.n = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  %i.o = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  %i.p = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @sigalrmSignalHandler(i32 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #28    ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp eq i32 %i.d, 0
  %.str.343..str.344 = select i1 %i.e, ptr @.str.343, ptr @.str.344
  tail call void @serverLogRawFromHandler(i32 noundef 3, ptr noundef nonnull %.str.343..str.344) #24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = inttoptr i64 %i.g to ptr
  tail call void @logStackTrace(ptr noundef %i.h, i32 noundef 1, i32 noundef 0)
  tail call void @serverLogRawFromHandler(i32 noundef 3, ptr noundef nonnull @.str.345) #24
  store i32 %i.b, ptr %i.a, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal void @sigsegvHandler(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #14 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @signal_handler_lock) #24
  %i.b = icmp eq i32 %i.a, 35                     ; 3 uses
end_hunk_0
