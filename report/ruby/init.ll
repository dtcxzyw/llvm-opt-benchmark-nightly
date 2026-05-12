inline.NumInlined: 48
inline.NumDeleted: 22
begin_hunk_0_@rsock_s_recvfrom_nonblock:bb.a
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %union.union_sockaddr, align 8      ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 2048, ptr %i.d, align 4, !tbaa !6
end_hunk_0
begin_hunk_1_@rsock_s_recvfrom_nonblock:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !12
  call void @rb_io_check_closed(ptr noundef %i.y) #9
  %7 = load i32, ptr %i.d, align 4, !tbaa !6      ; 2 uses
  %i.ae = inttoptr i64 %.0.i46 to ptr             ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = and i64 %i.af, 8192
end_hunk_1
begin_hunk_2_@rsock_s_recvfrom_nonblock:bb.a
  %i.ak = call i64 @recvfrom(i32 noundef %i.ad, ptr noundef %i.aj, i64 noundef %i.l, i32 noundef %i.ab, ptr nonnull %6, ptr noundef nonnull %i.d) #9 ; 5 uses
  %.not40 = icmp ne i64 %i.ak, -1
  %i.al = load i32, ptr %i.d, align 4
  %8 = icmp ult i32 %7, %i.al
  %or.cond = select i1 %.not40, i1 %8, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RSTRING_PTR.exit
  store i32 %7, ptr %i.d, align 4, !tbaa !6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %RSTRING_PTR.exit
end_hunk_2
