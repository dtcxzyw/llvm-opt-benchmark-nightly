inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @FT_Stream_OpenLZW(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = icmp ne ptr %0, null
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.h = tail call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef 0) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %ft_lzw_check_header.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 2) #7 ; 2 uses
  %.not7.i = icmp eq i32 %i.i, 0
  br i1 %.not7.i, label %bb.d, label %ft_lzw_check_header.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.b, align 1, !tbaa !13
  %i.k = icmp ne i8 %i.j, 31
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp ne i8 %i.m, -99
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond.i, label %ft_lzw_check_header.exit.thread, label %bb.e

ft_lzw_check_header.exit.thread:                  ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.ph = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ 3, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.o, align 8, !tbaa !7
  %i.p = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef 4360, ptr noundef nonnull %i.c) #7 ; 17 uses
  %i.q = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %0, ptr %i.r, align 8, !tbaa !14
  store ptr %1, ptr %i.p, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4336 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4352
  store ptr %i.u, ptr %i.v, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4344
  store ptr %i.u, ptr %i.w, align 8, !tbaa !22
  store i64 0, ptr %i.u, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.x = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef 0) #7 ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 2) #7 ; 2 uses
  %.not7.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.a, align 1, !tbaa !13
  %i.aa = icmp ne i8 %i.z, 31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp ne i8 %i.ac, -99
  %or.cond.i.i = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.ph.i = phi i32 [ %i.x, %bb.f ], [ %i.y, %bb.g ], [ 3, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store i32 %.0.i.ph.i, ptr %i.c, align 4, !tbaa !3
  call void @ft_mem_free(ptr noundef %i.g, ptr noundef nonnull %i.p) #7
  %.pre = load i32, ptr %i.c, align 4, !tbaa !3
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ae, i8 0, i64 216, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  store ptr %1, ptr %i.af, align 8, !tbaa !24
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ai, i8 0, i64 20, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  store i64 64, ptr %i.al, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.am, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.an, align 4, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.ao, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2147483647, ptr %i.ap, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8, !tbaa !30
  store ptr null, ptr %0, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @ft_lzw_stream_io, ptr %i.ar, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ft_lzw_stream_close, ptr %i.as, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %ft_lzw_check_header.exit.thread, %bb.k, %bb.i
  %i.at = phi i32 [ %.0.i.ph, %ft_lzw_check_header.exit.thread ], [ %i.q, %bb.k ], [ %.pre, %bb.i ], [ 40, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 %i.at
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @ft_lzw_stream_io(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4336 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw i64 %i.d, %1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4344 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %.not.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.m = sub i64 0, %i.f
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m
  store ptr %i.n, ptr %i.g, align 8, !tbaa !22
  store i64 %1, ptr %i.c, align 8, !tbaa !23
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.p = tail call i32 @FT_Stream_Seek(ptr noundef %i.o, i64 noundef 0) #7
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %ft_lzw_file_reset.exit.thread.i, label %ft_lzw_file_io.exit

ft_lzw_file_reset.exit.thread.i:                  ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 0, ptr %i.r, align 4, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 0, ptr %i.u, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.v, align 4, !tbaa !28
  store i32 0, ptr %i.q, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4352
  store ptr %i.c, ptr %i.w, align 8, !tbaa !21
  store ptr %i.c, ptr %i.g, align 8, !tbaa !22
  store i64 0, ptr %i.c, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %ft_lzw_file_reset.exit.thread.i, %bb.a
  %i.x = phi i64 [ 0, %ft_lzw_file_reset.exit.thread.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = icmp ugt i64 %1, %i.x
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.z = sub nuw i64 %1, %i.x                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4352
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4344 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.z) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %spec.select.i.i
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !22
  %i.ai = add i64 %spec.select.i.i, %i.x
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !23
  %i.aj = sub i64 %i.z, %spec.select.i.i          ; 2 uses
  %.not3136.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not3136.i.i, label %ft_lzw_file_skip_output.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.02437.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %spec.select32.i.i = tail call i64 @llvm.umin.i64(i64 %.02437.i.i, i64 4096) ; 4 uses
  %i.al = tail call i64 @ft_lzwstate_io(ptr noundef nonnull %i.ak, ptr noundef null, i64 noundef %spec.select32.i.i)
  %i.am = icmp ult i64 %i.al, %spec.select32.i.i
  br i1 %i.am, label %ft_lzw_file_io.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.c, align 8, !tbaa !23
  %i.ao = add i64 %i.an, %spec.select32.i.i
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !23
  %i.ap = sub i64 %.02437.i.i, %spec.select32.i.i ; 2 uses
  %.not31.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not31.i.i, label %ft_lzw_file_skip_output.exit.i, label %bb.f

ft_lzw_file_skip_output.exit.i:                   ; preds = %bb.g, %bb.e
  %i.aq = icmp eq i64 %3, 0
  br i1 %i.aq, label %ft_lzw_file_io.exit, label %.preheader.i

bb.h:                                             ; preds = %bb.d, %.thread.i
  %.old1.i = icmp eq i64 %3, 0
  br i1 %.old1.i, label %ft_lzw_file_io.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %ft_lzw_file_skip_output.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4352 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4344 ; 5 uses
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !21
  %.pre64.i = load ptr, ptr %i.au, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader.i
  %i.av = phi ptr [ %i.bj, %bb.j ], [ %.pre64.i, %.preheader.i ] ; 2 uses
  %i.aw = phi ptr [ %i.bk, %bb.j ], [ %.pre.i, %.preheader.i ]
  %.045.i = phi i64 [ %i.bg, %bb.j ], [ %3, %.preheader.i ] ; 2 uses
  %.044.i = phi i64 [ %i.bb, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %.045.i) ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.044.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.av, i64 %spec.select.i, i1 false)
  %i.bb = add i64 %spec.select.i, %.044.i         ; 3 uses
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %spec.select.i
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !22
  %i.be = load i64, ptr %i.c, align 8, !tbaa !23
  %i.bf = add i64 %i.be, %spec.select.i
  store i64 %i.bf, ptr %i.c, align 8, !tbaa !23
  %i.bg = sub i64 %.045.i, %spec.select.i         ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %ft_lzw_file_io.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.as, ptr %i.au, align 8, !tbaa !22
  %i.bi = tail call i64 @ft_lzwstate_io(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 4096) ; 2 uses
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !22 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  store ptr %i.bk, ptr %i.at, align 8, !tbaa !21
  %.not61.i = icmp eq i64 %i.bi, 0
  br i1 %.not61.i, label %ft_lzw_file_io.exit, label %bb.i

ft_lzw_file_io.exit:                              ; preds = %bb.f, %bb.i, %bb.j, %bb.c, %ft_lzw_file_skip_output.exit.i, %bb.h
  %.1.i = phi i64 [ 0, %ft_lzw_file_skip_output.exit.i ], [ %i.bb, %bb.i ], [ 0, %bb.h ], [ 0, %bb.c ], [ %i.bb, %bb.j ], [ 0, %bb.f ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define internal void @ft_lzw_stream_close(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 13 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 0, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.l, align 4, !tbaa !28
  store i32 0, ptr %i.e, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %ft_lzw_file_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.n) #7
  store ptr null, ptr %i.m, align 8, !tbaa !26
  br label %ft_lzw_file_done.exit

ft_lzw_file_done.exit:                            ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  tail call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.q) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, i8 0, i64 240, i1 false)
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef nonnull %i.b) #7
  store ptr null, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %ft_lzw_file_done.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ft_lzwstate_reset(ptr noundef writeonly captures(none) initializes((0, 8), (24, 33), (40, 48), (60, 64), (120, 124)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.e, align 4, !tbaa !28
  store i32 0, ptr %0, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ft_lzwstate_init(ptr noundef initializes((0, 216)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.c, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 64, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.k, align 4, !tbaa !28
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ft_lzwstate_done(ptr noundef captures(address) initializes((0, 8), (24, 33), (40, 48), (60, 64), (120, 124)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.g, align 4, !tbaa !28
  store i32 0, ptr %0, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.i) #7
  store ptr null, ptr %i.h, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.l) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @ft_lzwstate_io(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41   ; 7 uses
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %0, align 8, !tbaa !37
  switch i32 %i.m, label %.loopexit [
    i32 0, label %bb.c
    i32 1, label %.preheader
    i32 2, label %bb.ak
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = tail call i32 @FT_Stream_Seek(ptr noundef %i.o, i64 noundef 2) #7
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.r = call i64 @FT_Stream_TryRead(ptr noundef %i.q, ptr noundef nonnull %i.e, i64 noundef 1) #7
  %.not138 = icmp eq i64 %i.r, 1
  br i1 %.not138, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.e, align 1, !tbaa !13    ; 3 uses
  %i.t = and i8 %i.s, 31                          ; 3 uses
  %i.u = zext nneg i8 %i.t to i32                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.u, ptr %i.v, align 8, !tbaa !42
  %i.w = and i8 %i.s, -128
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.x, ptr %i.y, align 4, !tbaa !43
  %i.z = shl nuw i32 1, %i.u                      ; 2 uses
  %i.aa = add i32 %i.z, -256
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !44
  %i.ac = icmp samesign ugt i8 %i.t, 16
  br i1 %i.ac, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 9, ptr %i.ad, align 4, !tbaa !28
  %.lobit = lshr i8 %i.s, 7
  %i.ae = zext nneg i8 %.lobit to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !45
end_hunk_0
