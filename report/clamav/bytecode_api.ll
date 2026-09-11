Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode_api?download=true
inline.NumInlined: 110
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cli_bcapi_trace_op:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !71
  %.not28 = icmp eq i32 %i.n, %2
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  store i32 %2, ptr %i.m, align 4, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.sink = phi i32 [ 5, %bb.d ], [ 4, %.thread ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65
  tail call void %i.p(ptr noundef nonnull %0, i32 noundef %.sink) #27
  %i.q = load i32, ptr %i.a, align 8, !tbaa !69
  %i.r = icmp ult i32 %i.q, 6
  br i1 %i.r, label %bb.h, label %bb.f, !prof !70

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66   ; 2 uses
  %i.u = icmp ne ptr %i.t, null
  %i.v = icmp ne ptr %1, null
  %or.cond = and i1 %i.v, %i.u
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void %i.t(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cli_bcapi_trace_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  br i1 %i.c, label %bb.g, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 126
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  tail call void %i.h(ptr noundef nonnull %0, i32 noundef 2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne ptr %1, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void %i.j(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cli_bcapi_trace_ptr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  br i1 %i.c, label %bb.g, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 126
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  tail call void %i.h(ptr noundef nonnull %0, i32 noundef 2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.j(ptr noundef nonnull %0, ptr noundef %1) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_pe_rawaddr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 644
  %i.l = load i32, ptr %i.k, align 4, !tbaa !183
  %i.m = call i32 @cli_rawaddr(i32 noundef %1, ptr noundef %i.e, i16 noundef zeroext %i.g, ptr noundef nonnull %i.a, i64 noundef %i.j, i32 noundef %i.l) #27
  %i.n = load i32, ptr %i.a, align 4, !tbaa !63
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.m, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare i32 @cli_rawaddr(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_file_find(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  tail call void @cli_event_error_str(ptr noundef %i.f, ptr noundef nonnull @.str.28) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @cli_bcapi_file_find_limit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_file_find_limit(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = zext i32 %2 to i64                       ; 3 uses
  %i.f = add i32 %2, -1025
  %i.g = icmp ult i32 %i.f, -1024
  %or.cond4 = or i1 %i.g, %i.d
  %i.h = icmp slt i32 %3, 1
  %or.cond6 = or i1 %i.h, %or.cond4
  br i1 %or.cond6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  tail call void @cli_event_error_str(ptr noundef %i.j, ptr noundef nonnull @.str.30) #27
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = zext nneg i32 %3 to i64                  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = and i64 %i.l, 4294967295
  tail call void @cli_event_int(ptr noundef %i.p, i32 noundef 3, i64 noundef %i.q) #27
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !41
  tail call void @cli_event_fastdata(ptr noundef %i.r, i32 noundef 9, ptr noundef %1, i32 noundef %2) #27
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %.not.i55 = icmp eq ptr %1, null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = add nsw i32 %2, -1
  %i.w = zext nneg i32 %i.v to i64
  br i1 %.not.i55, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %fmap_readn.exit.us
  %.044.us = phi i32 [ %i.ah, %fmap_readn.exit.us ], [ %i.m, %bb.c ] ; 3 uses
  %i.x = zext i32 %.044.us to i64                 ; 6 uses
  %i.y = add nuw nsw i64 %i.x, 4096
  %i.z = icmp samesign ugt i64 %i.y, %i.n
  br i1 %i.z, label %4, label %bb.d

4:                                                ; preds = %.split.us
  %5 = icmp ugt i32 %.044.us, %3
  br i1 %5, label %.thread, label %6

6:                                                ; preds = %4
  %7 = sub nuw nsw i64 %i.n, %i.x
  br label %bb.d

bb.d:                                             ; preds = %6, %.split.us
  %.0.us = phi i64 [ %7, %6 ], [ 4096, %.split.us ] ; 2 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !46  ; 3 uses
  %8 = icmp ne i64 %i.aa, %i.x
  %9 = icmp ne i64 %.0.us, 0
  %or.cond.i.us = and i1 %9, %8
  br i1 %or.cond.i.us, label %bb.e, label %fmap_readn.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.aa, %i.x
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = sub nuw i64 %i.aa, %i.x
  %spec.select.i.us = tail call i64 @llvm.umin.i64(i64 range(i64 -2147483646, 2147483648) %.0.us, i64 %i.ac) ; 2 uses
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.ae = tail call ptr %i.ad(ptr noundef nonnull %i.c, i64 noundef %i.x, i64 noundef %spec.select.i.us, i32 noundef 0) #27, !inline_history !0
  %.not.i.us = icmp eq ptr %i.ae, null
  br i1 %.not.i.us, label %.thread, label %fmap_readn.exit.us

fmap_readn.exit.us:                               ; preds = %bb.f, %bb.d
  %.020.i.us = phi i64 [ 0, %bb.d ], [ %spec.select.i.us, %bb.f ] ; 2 uses
  %i.af = icmp ult i64 %.020.i.us, %i.e
  %i.ag = trunc nuw nsw i64 %.020.i.us to i32
  %i.ah = add i32 %.044.us, %i.ag
  br i1 %i.af, label %.thread, label %.split.us

.split:                                           ; preds = %bb.c
  %i.ai = icmp eq i32 %2, 1
  br i1 %i.ai, label %.split.split.us, label %.split.split.preheader.a

.split.split.preheader.a:                         ; preds = %.split
  %invariant.op = sub i32 1, %2
  br label %.split.split

.split.split.us:                                  ; preds = %.split, %cli_memmem.exit.us
  %.044.us72 = phi i32 [ %i.aw, %cli_memmem.exit.us ], [ %i.m, %.split ] ; 4 uses
  %i.aj = zext i32 %.044.us72 to i64              ; 6 uses
  %i.ak = add nuw nsw i64 %i.aj, 4096
  %i.al = icmp samesign ugt i64 %i.ak, %i.n
  br i1 %i.al, label %10, label %bb.g

10:                                               ; preds = %.split.split.us
  %11 = icmp ugt i32 %.044.us72, %3
  br i1 %11, label %.thread, label %12

12:                                               ; preds = %10
  %13 = sub nuw nsw i64 %i.n, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %12, %.split.split.us
  %.0.us73 = phi i64 [ %13, %12 ], [ 4096, %.split.split.us ] ; 2 uses
  %i.am = load i64, ptr %i.s, align 8, !tbaa !46  ; 3 uses
  %14 = icmp ne i64 %i.am, %i.aj
  %15 = icmp ne i64 %.0.us73, 0
  %or.cond.i.us74 = and i1 %15, %14
  br i1 %or.cond.i.us74, label %bb.h, label %fmap_readn.exit.us77

bb.h:                                             ; preds = %bb.g
  %i.an = icmp ult i64 %i.am, %i.aj
  br i1 %i.an, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = sub nuw i64 %i.am, %i.aj
  %spec.select.i.us75 = call i64 @llvm.umin.i64(i64 range(i64 -2147483646, 2147483648) %.0.us73, i64 %i.ao) ; 3 uses
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.aq = call ptr %i.ap(ptr noundef nonnull %i.c, i64 noundef %i.aj, i64 noundef %spec.select.i.us75, i32 noundef 0) #27, !inline_history !0 ; 2 uses
  %.not.i.us76 = icmp eq ptr %i.aq, null
  br i1 %.not.i.us76, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.aq, i64 %spec.select.i.us75, i1 false)
  br label %fmap_readn.exit.us77

fmap_readn.exit.us77:                             ; preds = %bb.j, %bb.g
  %.020.i.us78 = phi i64 [ 0, %bb.g ], [ %spec.select.i.us75, %bb.j ] ; 3 uses
  %i.ar = icmp ult i64 %.020.i.us78, %i.e
  br i1 %i.ar, label %.thread, label %cli_memmem.exit.us

cli_memmem.exit.us:                               ; preds = %fmap_readn.exit.us77
  %i.as = trunc nuw nsw i64 %.020.i.us78 to i32
  %i.at = load i8, ptr %1, align 1, !tbaa !49
  %i.au = zext i8 %i.at to i32
  %i.av = call ptr @memchr(ptr noundef nonnull %i.a, i32 noundef %i.au, i64 noundef %.020.i.us78) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.av, null
  %i.aw = add i32 %.044.us72, %i.as
  br i1 %.not.us, label %.split.split.us, label %cli_memmem.exit.thread60

.split.split:                                     ; preds = %.split.split.preheader.a, %cli_memmem.exit.thread.loopexit
  %.044 = phi i32 [ %i.br, %cli_memmem.exit.thread.loopexit ], [ %i.m, %.split.split.preheader.a ] ; 4 uses
  %16 = zext i32 %.044 to i64                     ; 6 uses
  %17 = add nuw nsw i64 %16, 4096
  %18 = icmp samesign ugt i64 %17, %i.n
  br i1 %18, label %19, label %bb.k

19:                                               ; preds = %.split.split
  %20 = icmp ugt i32 %.044, %3
  br i1 %20, label %.thread, label %21

21:                                               ; preds = %19
  %22 = sub nuw nsw i64 %i.n, %16
  br label %bb.k

bb.k:                                             ; preds = %21, %.split.split
  %.0 = phi i64 [ %22, %21 ], [ 4096, %.split.split ] ; 2 uses
  %23 = load i64, ptr %i.s, align 8, !tbaa !46    ; 3 uses
  %24 = icmp ne i64 %23, %16
  %25 = icmp ne i64 %.0, 0
  %or.cond.i = and i1 %25, %24
  br i1 %or.cond.i, label %bb.l, label %fmap_readn.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp ult i64 %23, %16
  br i1 %i.ax, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = sub nuw i64 %23, %16
  %spec.select.i = call i64 @llvm.umin.i64(i64 range(i64 -2147483646, 2147483648) %.0, i64 %i.ay) ; 3 uses
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.ba = call ptr %i.az(ptr noundef nonnull %i.c, i64 noundef %16, i64 noundef %spec.select.i, i32 noundef 0) #27, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.ba, i64 %spec.select.i, i1 false)
  br label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.k, %bb.n
  %.020.i = phi i64 [ 0, %bb.k ], [ %spec.select.i, %bb.n ] ; 2 uses
  %i.bb = icmp ult i64 %.020.i, %i.e
  br i1 %i.bb, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %fmap_readn.exit
  %i.bc = trunc nuw nsw i64 %.020.i to i32        ; 2 uses
  %i.bd = load i8, ptr %1, align 1, !tbaa !49
  %i.be = zext i8 %i.bd to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.preheader.i
  %.02537.i = phi i32 [ %i.bc, %.preheader.i ], [ %i.bl, %bb.q ] ; 2 uses
  %.02636.i = phi ptr [ %i.a, %.preheader.i ], [ %i.bh, %bb.q ] ; 2 uses
  %.reass.i.reass.reass = add i32 %.02537.i, %invariant.op
  %i.bf = zext i32 %.reass.i.reass.reass to i64
  %i.bg = call ptr @memchr(ptr noundef nonnull %.02636.i, i32 noundef %i.be, i64 noundef %i.bf) #28 ; 3 uses
  %.not32.i = icmp eq ptr %i.bg, null
  br i1 %.not32.i, label %cli_memmem.exit.thread.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull readonly %i.u, i64 %i.w)
  %.not33.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not33.i, label %cli_memmem.exit.thread60, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = ptrtoint ptr %.02636.i to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %.neg.i = sub i64 %i.bi, %i.bj
  %i.bk = trunc i64 %.neg.i to i32
  %i.bl = add i32 %.02537.i, %i.bk                ; 2 uses
  %.not31.i = icmp ult i32 %i.bl, %2
  br i1 %.not31.i, label %cli_memmem.exit.thread.loopexit, label %bb.o

cli_memmem.exit.thread60:                         ; preds = %bb.p, %cli_memmem.exit.us
  %.04471 = phi i32 [ %.044.us72, %cli_memmem.exit.us ], [ %.044, %bb.p ]
  %.0.i63 = phi ptr [ %i.av, %cli_memmem.exit.us ], [ %i.bg, %bb.p ]
  %i.bm = ptrtoint ptr %.0.i63 to i64
  %i.bn = ptrtoint ptr %i.a to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %.04471, %i.bp
  br label %.thread

cli_memmem.exit.thread.loopexit:                  ; preds = %bb.o, %bb.q
  %i.br = add i32 %.044, %i.bc
  br label %.split.split

.thread:                                          ; preds = %bb.m, %bb.l, %fmap_readn.exit, %19, %10, %bb.h, %bb.i, %fmap_readn.exit.us77, %fmap_readn.exit.us, %bb.f, %bb.e, %4, %cli_memmem.exit.thread60, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ %i.bq, %cli_memmem.exit.thread60 ], [ -1, %fmap_readn.exit.us ], [ -1, %10 ], [ -1, %4 ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %fmap_readn.exit.us77 ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %19 ], [ -1, %fmap_readn.exit ], [ -1, %bb.l ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 256) i32 @cli_bcapi_file_byteat(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #27
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = zext i32 %1 to i64                       ; 3 uses
  tail call void @cli_event_int(ptr noundef %i.d, i32 noundef 3, i64 noundef %i.e) #27
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %or.cond.not = icmp ugt i64 %i.h, %i.e
  br i1 %or.cond.not, label %bb.d, label %fmap_readn.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = tail call ptr %i.j(ptr noundef nonnull %i.f, i64 noundef %i.e, i64 noundef 1, i32 noundef 0) #27, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %fmap_readn.exit.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.d
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  br label %bb.e

fmap_readn.exit.thread:                           ; preds = %bb.d, %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i32 noundef %1) #27
  br label %bb.e

bb.e:                                             ; preds = %fmap_readn.exit, %fmap_readn.exit.thread, %bb.b
  %.0 = phi i32 [ -1, %fmap_readn.exit.thread ], [ %i.m, %fmap_readn.exit ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @cli_bcapi_malloc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @mpool_create() #27        ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !184
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #27
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.e = add i32 %1, -1073741825
  %or.cond = icmp ult i32 %i.e, -1073741824
  br i1 %or.cond, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.34, i32 noundef %1, i32 noundef 1073741824) #27
  br label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.f = zext nneg i32 %1 to i64
  %i.g = tail call ptr @mpool_malloc(ptr noundef nonnull %i.d, i64 noundef %i.f) #27 ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %.thread, %bb.c
  %.sink23 = phi i32 [ 0, %bb.c ], [ %1, %.thread ], [ %1, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  tail call void @cli_event_error_oom(ptr noundef %i.i, i32 noundef %.sink23) #27
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.014 = phi ptr [ %i.g, %bb.e ], [ null, %.sink.split ]
  ret ptr %.014
}

declare ptr @mpool_create() local_unnamed_addr #3

declare ptr @mpool_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 1) i32 @cli_bcapi_get_pe_section(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !77
  %i.e = zext i16 %i.d to i32
  %i.f = icmp ult i32 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = zext nneg i32 %2 to i64
  %i.j = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %i.j, i64 36, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @cli_bcapi_fill_buffer(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = add i32 %2, -1073741825
  %i.c = icmp ult i32 %i.b, -1073741824
  %or.cond3 = or i1 %i.a, %i.c
  %i.d = icmp ugt i32 %3, %2
  %or.cond = or i1 %i.d, %or.cond3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  tail call void @cli_event_error_str(ptr noundef %i.f, ptr noundef nonnull @.str.36) #27
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48
  %i.k = zext i32 %i.j to i64
  %.not = icmp slt i64 %i.h, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37) #27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  tail call void @cli_event_error_str(ptr noundef %i.m, ptr noundef nonnull @.str.38) #27
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.n = sub i32 %3, %4                           ; 6 uses
  %.not96 = icmp eq i32 %3, %4
  br i1 %.not96, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %.not98 = icmp ugt i32 %i.n, %2
  br i1 %.not98, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = zext nneg i32 %2 to i64
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = add i64 %i.s, %i.o                       ; 2 uses
  %i.v = add i64 %i.p, %i.t                       ; 2 uses
  %.not100 = icmp ule i64 %i.u, %i.v
  %i.w = icmp ugt i64 %i.u, %i.t
  %or.cond105 = and i1 %.not100, %i.w
  %i.x = icmp ugt i64 %i.v, %i.s
  %or.cond106 = and i1 %i.x, %or.cond105
  br i1 %or.cond106, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39) #27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  tail call void @cli_event_error_str(ptr noundef %i.z, ptr noundef nonnull @.str.40) #27
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.r, i64 %i.o, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.aa = sub nuw nsw i32 %2, %i.n                ; 2 uses
  %or.cond107.not = icmp samesign ult i32 %i.n, %2
  br i1 %or.cond107.not, label %bb.k, label %bb.l

end_hunk_0
