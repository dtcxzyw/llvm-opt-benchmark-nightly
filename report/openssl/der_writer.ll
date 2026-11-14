Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/der_writer?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
begin_hunk_0_@ossl_DER_w_precompiled:bb.a
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %int_end_context.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = zext nneg i32 %i.h to i64
  %i.p = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef %i.o, i64 noundef 1) #3
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  br label %int_end_context.exit

int_end_context.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i7 = phi i32 [ 1, %bb.c ], [ %i.r, %bb.h ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %int_start_context.exit.thread

int_start_context.exit.thread:                    ; preds = %bb.b, %.thread, %int_end_context.exit, %int_start_context.exit.thread10, %int_start_context.exit
  %i.s = phi i32 [ 0, %int_start_context.exit.thread10 ], [ 0, %int_start_context.exit ], [ %.0.i7, %int_end_context.exit ], [ 0, %.thread ], [ 0, %bb.b ]
  ret i32 %i.s
}

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_DER_w_boolean(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp slt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %int_start_context.exit.thread16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 31
  br i1 %i.d, label %int_start_context.exit, label %int_start_context.exit.thread, !prof !8

int_start_context.exit:                           ; preds = %bb.b
  %i.e = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %int_start_context.exit.thread, label %int_start_context.exit.thread16

int_start_context.exit.thread16:                  ; preds = %bb.a, %int_start_context.exit
  %i.f = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %int_start_context.exit.thread, label %bb.c

bb.c:                                             ; preds = %int_start_context.exit.thread16
  %.not9 = icmp eq i32 %2, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef 255, i64 noundef 1) #3
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %int_start_context.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = tail call i32 @WPACKET_close(ptr noundef %0) #3
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.f, label %int_start_context.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef 1, i64 noundef 1) #3
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.g, label %int_start_context.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  br i1 %i.c, label %int_end_context.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = or disjoint i32 %1, 160
  %i.k = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.a) #3
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %int_end_context.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = call i32 @WPACKET_close(ptr noundef %0) #3
  %.not9.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i, label %int_end_context.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.b) #3
  %.not10.i = icmp eq i32 %i.m, 0
  br i1 %.not10.i, label %int_end_context.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = load i64, ptr %i.a, align 8, !tbaa !10
  %i.o = load i64, ptr %i.b, align 8, !tbaa !10
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %int_end_context.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = zext nneg i32 %i.j to i64
  %i.r = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef %i.q, i64 noundef 1) #3
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  br label %int_end_context.exit

int_end_context.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i13 = phi i32 [ 1, %bb.g ], [ %i.t, %bb.l ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %int_start_context.exit.thread

int_start_context.exit.thread:                    ; preds = %bb.b, %int_end_context.exit, %bb.f, %bb.e, %bb.d, %int_start_context.exit.thread16, %int_start_context.exit
  %i.u = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %int_start_context.exit.thread16 ], [ 0, %int_start_context.exit ], [ %.0.i13, %int_end_context.exit ], [ 0, %bb.b ]
  ret i32 %i.u
}

declare i32 @WPACKET_start_sub_packet(ptr noundef) local_unnamed_addr #1

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_DER_w_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp slt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %int_start_context.exit.thread16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 31
  br i1 %i.d, label %int_start_context.exit, label %int_start_context.exit.thread, !prof !8

int_start_context.exit:                           ; preds = %bb.b
  %i.e = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %int_start_context.exit.thread, label %int_start_context.exit.thread16

int_start_context.exit.thread16:                  ; preds = %bb.a, %int_start_context.exit
  %i.f = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %int_start_context.exit.thread, label %bb.c

bb.c:                                             ; preds = %int_start_context.exit.thread16
  %i.g = tail call i32 @WPACKET_memcpy(ptr noundef %0, ptr noundef %2, i64 noundef %3) #3
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %int_start_context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @WPACKET_close(ptr noundef %0) #3
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %int_start_context.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef 4, i64 noundef 1) #3
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %int_start_context.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  br i1 %i.c, label %int_end_context.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = or disjoint i32 %1, 160
  %i.k = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.a) #3
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %int_end_context.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = call i32 @WPACKET_close(ptr noundef %0) #3
  %.not9.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i, label %int_end_context.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.b) #3
  %.not10.i = icmp eq i32 %i.m, 0
  br i1 %.not10.i, label %int_end_context.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !10
  %i.o = load i64, ptr %i.b, align 8, !tbaa !10
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %int_end_context.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = zext nneg i32 %i.j to i64
  %i.r = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef %i.q, i64 noundef 1) #3
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  br label %int_end_context.exit

int_end_context.exit:                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i13 = phi i32 [ 1, %bb.f ], [ %i.t, %bb.k ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %int_start_context.exit.thread

int_start_context.exit.thread:                    ; preds = %bb.b, %int_end_context.exit, %bb.e, %bb.d, %bb.c, %int_start_context.exit.thread16, %int_start_context.exit
  %i.u = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %int_start_context.exit.thread16 ], [ 0, %int_start_context.exit ], [ %.0.i13, %int_end_context.exit ], [ 0, %bb.b ]
  ret i32 %i.u
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_DER_w_octet_string_uint32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.preheader, %.lr.ph.a
  %.08 = phi ptr [ %3, %.lr.ph.a ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.057 = phi i32 [ %i.d, %.lr.ph.a ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.c = trunc i32 %.057 to i8
  %3 = getelementptr inbounds i8, ptr %.08, i64 -1
  store i8 %i.c, ptr %.08, align 1, !tbaa !14
  %i.d = lshr i32 %.057, 8                        ; 2 uses
  %.not.a = icmp eq i32 %i.d, 0
  br i1 %.not.a, label %._crit_edge, label %.lr.ph.a, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.a, %bb.a
  %i.e = call i32 @ossl_DER_w_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_DER_w_uint32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !12
  %i.b = call fastcc i32 @int_der_w_integer(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @int_put_bytes_uint32, ptr noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @int_der_w_integer(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.d = icmp slt i32 %1, 0                       ; 2 uses
  br i1 %i.d, label %int_start_context.exit.thread18, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 31
  br i1 %i.e, label %int_start_context.exit, label %int_start_context.exit.thread, !prof !8

int_start_context.exit:                           ; preds = %bb.b
  %i.f = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %int_start_context.exit.thread, label %int_start_context.exit.thread18

int_start_context.exit.thread18:                  ; preds = %bb.a, %int_start_context.exit
  %i.g = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %int_start_context.exit.thread, label %bb.c

bb.c:                                             ; preds = %int_start_context.exit.thread18
  %i.h = call i32 %2(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %i.c) #3, !callees !15
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %int_start_context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.c, align 4, !tbaa !12
  %i.j = and i32 %i.i, 128
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef 0, i64 noundef 1) #3
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %int_start_context.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = call i32 @WPACKET_close(ptr noundef %0) #3
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %int_start_context.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef 2, i64 noundef 1) #3
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %int_start_context.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  br i1 %i.d, label %int_end_context.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = or disjoint i32 %1, 160
  %i.p = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.a) #3
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %int_end_context.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = call i32 @WPACKET_close(ptr noundef %0) #3
  %.not9.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i, label %int_end_context.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.b) #3
  %.not10.i = icmp eq i32 %i.r, 0
  br i1 %.not10.i, label %int_end_context.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = load i64, ptr %i.a, align 8, !tbaa !10
  %i.t = load i64, ptr %i.b, align 8, !tbaa !10
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %int_end_context.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = zext nneg i32 %i.o to i64
  %i.w = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef %i.v, i64 noundef 1) #3
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  br label %int_end_context.exit

int_end_context.exit:                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i15 = phi i32 [ 1, %bb.h ], [ %i.y, %bb.m ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %int_start_context.exit.thread

int_start_context.exit.thread:                    ; preds = %bb.b, %int_end_context.exit, %bb.g, %bb.f, %bb.e, %bb.c, %int_start_context.exit.thread18, %int_start_context.exit
  %i.z = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %int_start_context.exit.thread18 ], [ 0, %int_start_context.exit ], [ %.0.i15, %int_end_context.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  ret i32 %i.z
}

; Function Attrs: nounwind uwtable
define internal i32 @int_put_bytes_uint32(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !12     ; 2 uses
  %.not11 = icmp eq i32 %i.a, 0
  br i1 %.not11, label %bb.b, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.a, %.lr.ph.a
  %.013 = phi i64 [ %3, %.lr.ph.a ], [ 0, %bb.a ]
  %.01012 = phi i32 [ %4, %.lr.ph.a ], [ %i.a, %bb.a ] ; 2 uses
  %3 = add nuw nsw i64 %.013, 1                   ; 2 uses
  %4 = lshr i32 %.01012, 8                        ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.a, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph.a
  store i32 %.01012, ptr %2, align 4, !tbaa !12
  %.pre = load i32, ptr %1, align 4, !tbaa !12
  %i.b = zext i32 %.pre to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.c = phi i64 [ %i.b, %._crit_edge ], [ 0, %bb.a ]
  %.0.lcssa = phi i64 [ %3, %._crit_edge ], [ 1, %bb.a ]
  %i.d = tail call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef %i.c, i64 noundef %.0.lcssa) #3
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_DER_w_bn(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_is_negative(ptr noundef nonnull %2) #3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @BN_is_zero(ptr noundef nonnull %2) #3
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.e = call fastcc range(i32 0, 2) i32 @int_der_w_integer(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @int_put_bytes_uint32, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call fastcc i32 @int_der_w_integer(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @int_put_bytes_bn, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ %i.f, %bb.e ], [ %i.e, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @int_put_bytes_bn(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.b = tail call i32 @BN_num_bits(ptr noundef %1) #3
  %i.c = add nsw i32 %i.b, 7
  %i.d = sdiv i32 %i.c, 8
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = tail call ptr @bn_get_words(ptr noundef %1) #3
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = shl nsw i64 %i.g, 3
  %i.l = and i64 %i.k, 56
  %i.m = lshr i64 %i.j, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 255
  store i32 %i.o, ptr %2, align 4, !tbaa !12
  %i.p = call i32 @WPACKET_allocate_bytes(ptr noundef %0, i64 noundef %i.e, ptr noundef nonnull %i.a) #3
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not9 = icmp eq ptr %i.q, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @BN_bn2bin(ptr noundef %1, ptr noundef nonnull %i.q) #3 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_DER_w_null(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp slt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %int_start_context.exit.thread12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 31
  br i1 %i.d, label %int_start_context.exit, label %int_start_context.exit.thread, !prof !8

int_start_context.exit:                           ; preds = %bb.b
  %i.e = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %int_start_context.exit.thread, label %int_start_context.exit.thread12

int_start_context.exit.thread12:                  ; preds = %bb.a, %int_start_context.exit
  %i.f = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %int_start_context.exit.thread, label %bb.c

bb.c:                                             ; preds = %int_start_context.exit.thread12
  %i.g = tail call i32 @WPACKET_close(ptr noundef %0) #3
  %.not7 = icmp eq i32 %i.g, 0
  br i1 %.not7, label %int_start_context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef 5, i64 noundef 1) #3
  %.not8 = icmp eq i32 %i.h, 0
  br i1 %.not8, label %int_start_context.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  br i1 %i.c, label %int_end_context.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = or disjoint i32 %1, 160
  %i.j = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.a) #3
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %int_end_context.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call i32 @WPACKET_close(ptr noundef %0) #3
  %.not9.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i, label %int_end_context.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.b) #3
  %.not10.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i, label %int_end_context.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load i64, ptr %i.a, align 8, !tbaa !10
  %i.n = load i64, ptr %i.b, align 8, !tbaa !10
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %int_end_context.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %i.i to i64
  %i.q = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef %i.p, i64 noundef 1) #3
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  br label %int_end_context.exit

int_end_context.exit:                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i9 = phi i32 [ 1, %bb.e ], [ %i.s, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %int_start_context.exit.thread

int_start_context.exit.thread:                    ; preds = %bb.b, %int_end_context.exit, %bb.d, %bb.c, %int_start_context.exit.thread12, %int_start_context.exit
  %i.t = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %int_start_context.exit.thread12 ], [ 0, %int_start_context.exit ], [ %.0.i9, %int_end_context.exit ], [ 0, %bb.b ]
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_DER_w_begin_sequence(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %int_start_context.exit.thread4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 31
  br i1 %i.b, label %int_start_context.exit, label %int_start_context.exit.thread, !prof !8

int_start_context.exit:                           ; preds = %bb.b
  %i.c = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %int_start_context.exit.thread, label %int_start_context.exit.thread4

int_start_context.exit.thread4:                   ; preds = %bb.a, %int_start_context.exit
  %i.d = tail call i32 @WPACKET_start_sub_packet(ptr noundef %0) #3
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  br label %int_start_context.exit.thread

int_start_context.exit.thread:                    ; preds = %bb.b, %int_start_context.exit.thread4, %int_start_context.exit
  %i.g = phi i32 [ 0, %int_start_context.exit ], [ %i.f, %int_start_context.exit.thread4 ], [ 0, %bb.b ]
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_DER_w_end_sequence(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.e = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.c) #3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @WPACKET_close(ptr noundef %0) #3
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.d) #3
  %.not7 = icmp eq i32 %i.g, 0
  br i1 %.not7, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8, !tbaa !10
  %i.i = load i64, ptr %i.d, align 8, !tbaa !10
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 @WPACKET_set_flags(ptr noundef %0, i32 noundef 2) #3
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.n, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef 48, i64 noundef 1) #3
  %.not8 = icmp eq i32 %i.l, 0
  br i1 %.not8, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.m = icmp slt i32 %1, 0
  br i1 %i.m, label %int_end_context.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i32 %1, 31
  br i1 %i.n, label %bb.i, label %int_end_context.exit, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.o = or disjoint i32 %1, 160
  %i.p = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.a) #3
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %int_end_context.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = call i32 @WPACKET_close(ptr noundef %0) #3
  %.not9.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i, label %int_end_context.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = call i32 @WPACKET_get_total_written(ptr noundef %0, ptr noundef nonnull %i.b) #3
  %.not10.i = icmp eq i32 %i.r, 0
  br i1 %.not10.i, label %int_end_context.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = load i64, ptr %i.a, align 8, !tbaa !10
  %i.t = load i64, ptr %i.b, align 8, !tbaa !10
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %int_end_context.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = zext nneg i32 %i.o to i64
  %i.w = call i32 @WPACKET_put_bytes__(ptr noundef %0, i64 noundef %i.v, i64 noundef 1) #3
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  br label %int_end_context.exit

int_end_context.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i = phi i32 [ 1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 1, %bb.l ], [ %i.y, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.n

bb.n:                                             ; preds = %int_end_context.exit, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %i.z = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.0.i, %int_end_context.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  ret i32 %i.z
}

declare i32 @WPACKET_get_total_written(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WPACKET_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare ptr @bn_get_words(ptr noundef) local_unnamed_addr #1

declare i32 @WPACKET_allocate_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"long", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !11}
!14 = !{!4, !4, i64 0}
!15 = !{ptr @int_put_bytes_bn, ptr @int_put_bytes_uint32}
!16 = distinct !{!16, !11}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
end_hunk_0
