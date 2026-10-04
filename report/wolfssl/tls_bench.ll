Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls_bench?download=true
inline.NumInlined: 42
inline.NumDeleted: 17
begin_hunk_0_@bench_tls_server:bb.a
  %.not144 = icmp eq ptr %.199175, null
  br i1 %.not144, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %CloseAndCleanupSocket.exit154
  call void @wolfSSL_free(ptr noundef nonnull %.199175) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %CloseAndCleanupSocket.exit154
  br i1 %i.h, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @wolfSSL_CTX_free(ptr noundef nonnull %i.g) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.not146 = icmp eq ptr %.0103171, null
  br i1 %.not146, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @wolfSSL_Free(ptr noundef nonnull %.0103171) #16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.7173, ptr %i.gj, align 8, !tbaa !61
  ret i32 %.7173
}

declare i32 @wolfSSL_CondInit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @err_sys(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.147, ptr noundef %0) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @wolfSSL_NewThreadNoJoin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @server_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %i.f = tail call fastcc i32 @SetupSocketAndListen(ptr noundef nonnull %i.c, i32 noundef %i.e)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %CloseAndCleanupListenSocket.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.h = tail call fastcc i32 @bench_tls_server(ptr noundef nonnull %0) ; 3 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !40
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %bb.c, label %CloseAndCleanupListenSocket.exit

bb.c:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 2 uses
  %.not.i = icmp eq i32 %i.k, -1
  br i1 %.not.i, label %CloseAndCleanupListenSocket.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @close(i32 noundef %i.k) #16 ; 0 uses
  store i32 -1, ptr %i.j, align 4, !tbaa !9
  br label %CloseAndCleanupListenSocket.exit

CloseAndCleanupListenSocket.exit:                 ; preds = %bb.d, %bb.c, %bb.b, %.critedge
  %.1 = phi i32 [ %i.h, %.critedge ], [ -1, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33184 ; 3 uses
  %i.n = tail call i32 @wolfSSL_CondStart(ptr noundef nonnull %i.m) #16 ; 3 uses
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %CloseAndCleanupListenSocket.exit
  %i.o = tail call ptr @__errno_location() #20
  store i32 %i.n, ptr %i.o, align 4, !tbaa !9
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1719, i32 noundef %i.n, ptr noundef nonnull @.str.106) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.f:                                             ; preds = %CloseAndCleanupListenSocket.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16672
  store i32 1, ptr %i.r, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.1, ptr %i.s, align 8, !tbaa !61
  %i.t = tail call i32 @wolfSSL_CondSignal(ptr noundef nonnull %i.m) #16 ; 3 uses
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__errno_location() #20
  store i32 %i.t, ptr %i.u, align 4, !tbaa !9
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1722, i32 noundef %i.t, ptr noundef nonnull @.str.143) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = tail call i32 @wolfSSL_CondEnd(ptr noundef nonnull %i.m) #16 ; 3 uses
  %.not28 = icmp eq i32 %i.x, 0
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @__errno_location() #20
  store i32 %i.x, ptr %i.y, align 4, !tbaa !9
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1723, i32 noundef %i.x, ptr noundef nonnull @.str.108) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.j:                                             ; preds = %bb.h
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @client_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @bench_tls_client(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16584 ; 3 uses
  %i.c = tail call i32 @wolfSSL_CondStart(ptr noundef nonnull %i.b) #16 ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !9
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1255, i32 noundef %i.c, ptr noundef nonnull @.str.102) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 33272
  store i32 1, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.a, ptr %i.h, align 4, !tbaa !60
  %i.i = tail call i32 @wolfSSL_CondSignal(ptr noundef nonnull %i.b) #16 ; 3 uses
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__errno_location() #20
  store i32 %i.i, ptr %i.j, align 4, !tbaa !9
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1258, i32 noundef %i.i, ptr noundef nonnull @.str.105) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = tail call i32 @wolfSSL_CondEnd(ptr noundef nonnull %i.b) #16 ; 3 uses
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__errno_location() #20
  store i32 %i.m, ptr %i.n, align 4, !tbaa !9
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1259, i32 noundef %i.m, ptr noundef nonnull @.str.104) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_stats(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %4, 0
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x i32>, ptr %i.b, align 4, !tbaa !9 ; 2 uses
  %i.g = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.f)
  %i.h = load <2 x double>, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %i.i = fmul <2 x double> %i.h, splat (double 1.000000e+03) ; 2 uses
  %i.j = sitofp <2 x i32> %i.f to <2 x double>
  %i.k = fdiv <2 x double> %i.j, %i.h
  %i.l = fmul <2 x double> %i.k, splat (double f0x3F50000000000000) ; 2 uses
  %5 = extractelement <2 x double> %i.l, i64 0
  %6 = fmul double %5, f0x3F50000000000000
  %7 = extractelement <2 x double> %i.l, i64 1
  %8 = fmul double %7, f0x3F50000000000000
  %i.m = load double, ptr %0, align 8, !tbaa !94
  %i.n = fmul double %i.m, 1.000000e+03           ; 2 uses
  %i.o = sitofp i32 %i.d to double
  %i.p = fdiv double %i.n, %i.o
  %.str.149..str.148 = select i1 %.not, ptr @.str.149, ptr @.str.148
  %i.q = extractelement <2 x double> %i.i, i64 0
  %i.r = extractelement <2 x double> %i.i, i64 1
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull %.str.149..str.148, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.g, i32 noundef %i.d, double noundef %i.q, double noundef %i.r, double noundef %6, double noundef %8, double noundef %i.n, double noundef %i.p) #17 ; 0 uses
  ret void
}

declare i32 @wolfSSL_Cleanup() local_unnamed_addr #2

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.func_args, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 %0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !18
  %i.c = call i32 @bench_tls(ptr noundef nonnull %2) ; 0 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %i.d
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

declare ptr @wolfSSL_CTX_new(ptr noundef) local_unnamed_addr #2

declare ptr @wolfTLSv1_3_client_method() local_unnamed_addr #2

declare ptr @wolfSSL_new(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_UseKeyShare(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @wolfSSL_free(ptr noundef) local_unnamed_addr #2

declare void @wolfSSL_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @wolfTLSv1_2_client_method() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @wolfSSL_CTX_load_verify_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @wolfSSL_CTX_SetIOSend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @ClientSend(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16584 ; 4 uses
  %i.e = tail call i32 @wolfSSL_CondStart(ptr noundef nonnull %i.d) #16 ; 3 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #20
  store i32 %i.e, ptr %i.f, align 4, !tbaa !9
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 528, i32 noundef %i.e, ptr noundef nonnull @.str.102) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16572
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62   ; 3 uses
  %i.k = add nsw i32 %i.j, %2
  %i.l = icmp sgt i32 %i.k, 16486
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.103, i32 noundef %i.j, i32 noundef %2, i32 noundef 16486) #17 ; 0 uses
  %i.o = tail call i32 @wolfSSL_CondEnd(ptr noundef nonnull %i.d) #16 ; 3 uses
  %.not35.i = icmp eq i32 %i.o, 0
  br i1 %.not35.i, label %ClientMemSend.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__errno_location() #20
  store i32 %i.o, ptr %i.p, align 4, !tbaa !9
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 535, i32 noundef %i.o, ptr noundef nonnull @.str.104) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.s = sext i32 %i.j to i64
  %i.t = getelementptr inbounds i8, ptr %i.c, i64 %i.s
  %i.u = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr readonly align 1 %1, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16568 ; 2 uses
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !9
  %i.x = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.y = shufflevector <2 x i32> %i.x, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.z = add nsw <2 x i32> %i.w, %i.y
  store <2 x i32> %i.z, ptr %i.v, align 8, !tbaa !9
  %i.aa = tail call i32 @wolfSSL_CondSignal(ptr noundef nonnull %i.d) #16 ; 3 uses
  %.not33.i = icmp eq i32 %i.aa, 0
  br i1 %.not33.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @__errno_location() #20
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !9
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 548, i32 noundef %i.aa, ptr noundef nonnull @.str.105) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call i32 @wolfSSL_CondEnd(ptr noundef nonnull %i.d) #16 ; 3 uses
  %.not34.i = icmp eq i32 %i.ae, 0
  br i1 %.not34.i, label %ClientMemSend.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @__errno_location() #20
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !9
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 549, i32 noundef %i.ae, ptr noundef nonnull @.str.104) #17 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.ak = sext i32 %2 to i64
  %i.al = tail call i64 @send(i32 noundef %i.aj, ptr noundef %1, i64 noundef %i.ak, i32 noundef 0) #16
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %cond = icmp eq i32 %i.am, -1
  br i1 %cond, label %bb.l, label %ClientMemSend.exit

bb.l:                                             ; preds = %bb.k
  %i.an = tail call ptr @__errno_location() #20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9
  switch i32 %i.ao, label %bb.p [
    i32 11, label %ClientMemSend.exit
    i32 104, label %bb.m
    i32 4, label %bb.n
    i32 32, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  br label %ClientMemSend.exit

bb.n:                                             ; preds = %bb.l
  br label %ClientMemSend.exit

bb.o:                                             ; preds = %bb.l
  br label %ClientMemSend.exit

bb.p:                                             ; preds = %bb.l
  br label %ClientMemSend.exit

ClientMemSend.exit:                               ; preds = %bb.k, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.e
  %.0 = phi i32 [ %2, %bb.i ], [ -1, %bb.e ], [ -1, %bb.p ], [ %i.am, %bb.k ], [ -3, %bb.m ], [ -4, %bb.n ], [ -5, %bb.o ], [ -2, %bb.l ]
  ret i32 %.0
}

declare void @wolfSSL_CTX_SetIORecv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @ClientRecv(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16680
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 33184 ; 3 uses
  %i.e = tail call i32 @wolfSSL_CondStart(ptr noundef nonnull %i.d) #16 ; 3 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33172
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 33180 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16672 ; 2 uses
end_hunk_0
