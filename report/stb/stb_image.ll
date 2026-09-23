Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__bmp_test_raw:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !27
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !27
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i22

bb.l:                                             ; preds = %bb.j
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i21 = load i8, ptr %i.as, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i22

stbi__refill_buffer.exit.i22:                     ; preds = %bb.l, %bb.k
  %i.bk = phi i8 [ 0, %bb.k ], [ %.pre.i21, %bb.l ]
  %.sink.i.i23 = phi ptr [ %i.bh, %bb.k ], [ %i.bj, %bb.l ]
  store ptr %.sink.i.i23, ptr %i.c, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit25

stbi__get8.exit25:                                ; preds = %bb.h, %stbi__refill_buffer.exit.i22
  %.0.i24 = phi i8 [ %i.al, %bb.h ], [ %i.bk, %stbi__refill_buffer.exit.i22 ]
  %.not19 = icmp eq i8 %.0.i24, 77
  br i1 %.not19, label %bb.m, label %stbi__get8.exit.thread

bb.m:                                             ; preds = %stbi__get8.exit25
  %i.bm = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bn = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bo = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bp = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bq = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.br = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bs = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.bt = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.bu = shl nuw i32 %i.bt, 16
  %i.bv = or disjoint i32 %i.bu, %i.bs            ; 2 uses
  %i.bw = add i32 %i.bv, -12                      ; 2 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 30) ; 2 uses
  %i.by = icmp ult i32 %i.bx, 25
  %switch.shifted = lshr i32 16779393, %i.bx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.by, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %stbi__get8.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i32 %i.bv, 124
  %i.ca = zext i1 %i.bz to i32
  br label %stbi__get8.exit.thread

stbi__get8.exit.thread:                           ; preds = %bb.m, %bb.i, %bb.c, %bb.n, %stbi__get8.exit25, %stbi__get8.exit
  %.0 = phi i32 [ 0, %stbi__get8.exit25 ], [ 0, %stbi__get8.exit ], [ %i.ca, %bb.n ], [ 0, %bb.c ], [ 0, %bb.i ], [ 1, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 32) i32 @stbi__high_bit(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 65535                   ; 2 uses
  %i.c = lshr i32 %0, 16
  %spec.select = select i1 %i.b, i32 %i.c, i32 %0 ; 3 uses
  %spec.select23 = select i1 %i.b, i32 16, i32 0  ; 2 uses
  %i.d = icmp samesign ugt i32 %spec.select, 255  ; 2 uses
  %i.e = or disjoint i32 %spec.select23, 8
  %i.f = lshr i32 %spec.select, 8
  %.118 = select i1 %i.d, i32 %i.f, i32 %spec.select ; 3 uses
  %.1 = select i1 %i.d, i32 %i.e, i32 %spec.select23 ; 2 uses
  %i.g = icmp samesign ugt i32 %.118, 15          ; 2 uses
  %i.h = or disjoint i32 %.1, 4
  %i.i = lshr i32 %.118, 4
  %.219 = select i1 %i.g, i32 %i.i, i32 %.118     ; 3 uses
  %.2 = select i1 %i.g, i32 %i.h, i32 %.1         ; 2 uses
  %i.j = icmp samesign ugt i32 %.219, 3           ; 2 uses
  %i.k = or disjoint i32 %.2, 2
  %i.l = lshr i32 %.219, 2
  %.320 = select i1 %i.j, i32 %i.l, i32 %.219
  %.3 = select i1 %i.j, i32 %i.k, i32 %.2
  %i.m = icmp samesign ugt i32 %.320, 1
  %i.n = zext i1 %i.m to i32
  %.4 = add nuw nsw i32 %.3, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %.4, %bb.b ], [ -1, %bb.a ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 64) i32 @stbi__bitcount(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 1431655765
  %i.b = lshr i32 %0, 1
  %i.c = and i32 %i.b, 1431655765
  %i.d = add nuw i32 %i.c, %i.a                   ; 2 uses
  %i.e = and i32 %i.d, 858993459
  %i.f = lshr i32 %i.d, 2
  %i.g = and i32 %i.f, 858993459
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = add nuw nsw i32 %i.i, %i.h
  %i.k = and i32 %i.j, 252645135                  ; 2 uses
  %i.l = lshr i32 %i.k, 8
  %i.m = add nuw nsw i32 %i.l, %i.k               ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = add nuw nsw i32 %i.n, %i.m
  %i.p = and i32 %i.o, 63
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stbi__shiftsigned(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 6, ptr %i.e, align 4
  %i.f = icmp slt i32 %1, 0
  %i.g = sub nsw i32 0, %1
  %i.h = shl i32 %0, %i.g
  %i.i = lshr i32 %0, %1
  %.0 = select i1 %i.f, i32 %i.h, i32 %i.i
  %i.j = sub nsw i32 8, %2
  %i.k = lshr i32 %.0, %i.j
  %i.l = sext i32 %2 to i64                       ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr @__const.stbi__shiftsigned.mul_table, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = mul i32 %i.n, %i.k
  %i.p = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.l
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %i.r = ashr i32 %i.o, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @stbi__bmp_set_mask_defaults(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 3, label %bb.g
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  switch i32 %i.a, label %bb.e [
    i32 16, label %bb.c
    i32 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 31744, ptr %i.b, align 4, !tbaa !56
  store i32 992, ptr %i.c, align 4, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 31, ptr %i.d, align 4, !tbaa !58
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.b, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.e, align 4, !tbaa !53
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @stbi__bmp_parse_header(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %stbi__get8.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #37, !inline_history !65 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !27
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %stbi__refill_buffer.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %stbi__refill_buffer.exit.i ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit.i ]
  %.not = icmp eq i8 %.0.i, 66
  br i1 %.not, label %bb.g, label %stbi__get8.exit.thread

bb.g:                                             ; preds = %stbi__get8.exit
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !29
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !37
  br label %stbi__get8.exit125

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  %.not.i120 = icmp eq i32 %i.an, 0
  br i1 %.not.i120, label %stbi__get8.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !35
  %i.av = tail call i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au) #37, !inline_history !65 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !27
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !27
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i122

bb.l:                                             ; preds = %bb.j
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i121 = load i8, ptr %i.as, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i122

stbi__refill_buffer.exit.i122:                    ; preds = %bb.l, %bb.k
  %i.bk = phi i8 [ 0, %bb.k ], [ %.pre.i121, %bb.l ]
  %.sink.i.i123 = phi ptr [ %i.bh, %bb.k ], [ %i.bj, %bb.l ]
  store ptr %.sink.i.i123, ptr %i.c, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit125

stbi__get8.exit125:                               ; preds = %bb.h, %stbi__refill_buffer.exit.i122
  %.0.i124 = phi i8 [ %i.al, %bb.h ], [ %i.bk, %stbi__refill_buffer.exit.i122 ]
  %.not115 = icmp eq i8 %.0.i124, 77
  br i1 %.not115, label %bb.m, label %stbi__get8.exit.thread

stbi__get8.exit.thread:                           ; preds = %bb.i, %bb.c, %stbi__get8.exit125, %stbi__get8.exit
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.70, ptr %i.bm, align 8, !tbaa !39
  br label %.critedge

bb.m:                                             ; preds = %stbi__get8.exit125
  %i.bn = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bo = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bp = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bq = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.br = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.bs = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.bt = shl nuw i32 %i.bs, 16
  %i.bu = or disjoint i32 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !62
  %i.bw = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.bx = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.by = shl nuw i32 %i.bx, 16
  %i.bz = or disjoint i32 %i.by, %i.bw            ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store i32 14, ptr %i.cf, align 4, !tbaa !63
  %i.cg = load i32, ptr %i.bv, align 4, !tbaa !62
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.71, ptr %i.ci, align 8, !tbaa !39
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %.not131 = icmp eq i32 %i.bz, 12
  %i.cj = add i32 %i.bz, -12                      ; 2 uses
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 30)
  switch i32 %i.ck, label %bb.p [
    i32 0, label %bb.q
    i32 7, label %bb.r
    i32 11, label %bb.r
    i32 24, label %bb.r
    i32 28, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.cl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.72, ptr %i.cl, align 8, !tbaa !39
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.cm = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  store i32 %i.cm, ptr %0, align 8, !tbaa !55
  %i.cn = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.co = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cp = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = or disjoint i32 %i.cq, %i.co
  store i32 %i.cr, ptr %0, align 8, !tbaa !55
  %i.cs = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.ct = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cu = shl nuw i32 %i.ct, 16
  %i.cv = or disjoint i32 %i.cu, %i.cs
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ %i.cv, %bb.r ], [ %i.cn, %bb.q ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.cw, align 4, !tbaa !54
  %i.cx = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %.not116 = icmp eq i32 %i.cx, 1
  br i1 %.not116, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.71, ptr %i.cy, align 8, !tbaa !39
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.cz = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  store i32 %i.cz, ptr %1, align 4, !tbaa !61
  br i1 %.not131, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.db = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.dc = shl nuw i32 %i.db, 16
  %i.dd = or disjoint i32 %i.dc, %i.da            ; 5 uses
  %i.de = add i32 %i.dd, -1
  %or.cond10 = icmp ult i32 %i.de, 2
  br i1 %or.cond10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.73, ptr %i.df, align 8, !tbaa !39
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.dg = icmp sgt i32 %i.dd, 3
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.74, ptr %i.dh, align 8, !tbaa !39
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.di = icmp eq i32 %i.dd, 3                    ; 3 uses
  br i1 %i.di, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dj = load i32, ptr %1, align 4, !tbaa !61
  switch i32 %i.dj, label %bb.ab [
    i32 16, label %bb.ac
    i32 32, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.71, ptr %i.dk, align 8, !tbaa !39
  br label %.critedge

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.z
  %i.dl = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.dm = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.dn = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.do = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.dp = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.dq = add i32 %i.bz, -40                      ; 2 uses
  %i.dr = tail call i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 30)
  switch i32 %i.dr, label %bb.an [
    i32 4, label %bb.ad
    i32 0, label %bb.ae
    i32 21, label %bb.ao
    i32 17, label %bb.ao
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ds = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.dt = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.du = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.dv = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dw = load i32, ptr %1, align 4, !tbaa !61    ; 2 uses
  switch i32 %i.dw, label %stbi__bmp_set_mask_defaults.exit [
    i32 16, label %bb.af
    i32 32, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.dx = icmp eq i32 %i.dd, 0
  br i1 %i.dx, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  switch i32 %i.dw, label %bb.aj [
    i32 16, label %bb.ah
    i32 32, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  store i32 31744, ptr %i.ce, align 4, !tbaa !56
  store i32 992, ptr %i.cd, align 4, !tbaa !57
  store i32 31, ptr %i.cc, align 4, !tbaa !58
  br label %stbi__bmp_set_mask_defaults.exit

bb.ai:                                            ; preds = %bb.ag
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.ce, align 4, !tbaa !40
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.dy, align 4, !tbaa !53
  br label %stbi__bmp_set_mask_defaults.exit

bb.aj:                                            ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  br label %stbi__bmp_set_mask_defaults.exit

bb.ak:                                            ; preds = %bb.af
  br i1 %i.di, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dz = tail call i32 @stbi__get32le(ptr noundef nonnull %0)
  store i32 %i.dz, ptr %i.ce, align 4, !tbaa !56
  %i.ea = tail call i32 @stbi__get32le(ptr noundef nonnull %0)
  store i32 %i.ea, ptr %i.cd, align 4, !tbaa !57
  %i.eb = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 2 uses
  store i32 %i.eb, ptr %i.cc, align 4, !tbaa !58
  %i.ec = load i32, ptr %i.cf, align 4, !tbaa !63
  %i.ed = add nsw i32 %i.ec, 12
  store i32 %i.ed, ptr %i.cf, align 4, !tbaa !63
  %i.ee = load i32, ptr %i.ce, align 4, !tbaa !56
  %i.ef = load i32, ptr %i.cd, align 4, !tbaa !57 ; 2 uses
  %i.eg = icmp eq i32 %i.ee, %i.ef
  %i.eh = icmp eq i32 %i.ef, %i.eb
  %or.cond = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond, label %2, label %stbi__bmp_set_mask_defaults.exit

2:                                                ; preds = %bb.al
  %3 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.71, ptr %3, align 8, !tbaa !39
  br label %.critedge

bb.am:                                            ; preds = %bb.ak
  %i.ei = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.71, ptr %i.ei, align 8, !tbaa !39
  br label %.critedge

bb.an:                                            ; preds = %bb.ac
  %i.ej = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.71, ptr %i.ej, align 8, !tbaa !39
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ac, %bb.ac
  %i.ek = tail call i32 @stbi__get32le(ptr noundef nonnull %0)
  store i32 %i.ek, ptr %i.ce, align 4, !tbaa !56
  %i.el = tail call i32 @stbi__get32le(ptr noundef nonnull %0)
  store i32 %i.el, ptr %i.cd, align 4, !tbaa !57
  %i.em = tail call i32 @stbi__get32le(ptr noundef nonnull %0)
  store i32 %i.em, ptr %i.cc, align 4, !tbaa !58
  %i.en = tail call i32 @stbi__get32le(ptr noundef nonnull %0)
  store i32 %i.en, ptr %i.cb, align 4, !tbaa !59
  br i1 %i.di, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eo = tail call i32 @stbi__bmp_set_mask_defaults(ptr noundef nonnull %1, i32 noundef %i.dd) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ep = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.eq = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.er = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.es = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.et = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.eu = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ev = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ew = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ex = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ey = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ez = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fa = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fb = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fc = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fd = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fe = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ff = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fg = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fh = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fi = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fj = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fk = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fl = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fm = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fn = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  switch i32 %i.bz, label %.critedge [
    i32 124, label %.thread
    i32 108, label %stbi__bmp_set_mask_defaults.exit
  ]

.thread:                                          ; preds = %bb.aq
  %i.fo = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.fp = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.fq = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  %i.fr = tail call i32 @stbi__get32le(ptr noundef nonnull %0) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.an
  %4 = add i32 %i.bz, -108
  %switch.and = and i32 %4, -17
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %5 = select i1 %switch.selectcmp, ptr inttoptr (i64 1 to ptr), ptr null
  br label %.critedge

stbi__bmp_set_mask_defaults.exit:                 ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.aq, %bb.ae, %bb.al
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.aq, %bb.w, %bb.y, %bb.ab, %2, %bb.am, %bb.u, %stbi__bmp_set_mask_defaults.exit, %bb.t, %bb.p, %bb.n, %stbi__get8.exit.thread
  %.3 = phi ptr [ null, %stbi__get8.exit.thread ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %stbi__bmp_set_mask_defaults.exit ], [ null, %bb.aq ], [ null, %bb.am ], [ null, %2 ], [ null, %bb.ab ], [ null, %bb.y ], [ null, %bb.w ], [ %5, %bb.ar ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 5) i32 @stbi__tga_get_comp(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i32 %0, label %bb.h [
    i32 8, label %bb.i
    i32 16, label %bb.d
    i32 15, label %bb.e
    i32 24, label %bb.g
    i32 32, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %.not8 = icmp ne i32 %1, 0                      ; 2 uses
  %brmerge = or i1 %.not8, %.not
  %.mux = select i1 %.not8, i32 2, i32 3
  br i1 %brmerge, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i32 1, ptr %2, align 4, !tbaa !40
  br label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.c
  %i.a = lshr i32 %0, 3
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.h ], [ %i.a, %bb.g ], [ 1, %bb.c ], [ %.mux, %bb.d ], [ 3, %bb.f ], [ 3, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__tga_info(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 33 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %stbi__get8.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = tail call i32 %i.j(ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.o) #37, !inline_history !65 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %i.x, align 8, !tbaa !27
  %i.aa = icmp eq i32 %i.p, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.p to i64
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 %i.ac
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %.sink.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %stbi__get8.exit.sink.split

stbi__get8.exit.sink.split:                       ; preds = %stbi__refill_buffer.exit.i, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.ae, %stbi__refill_buffer.exit.i ] ; 2 uses
  %.ph = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %stbi__get8.exit.sink.split, %bb.c
  %i.af = phi ptr [ %i.d, %bb.c ], [ %.ph, %stbi__get8.exit.sink.split ] ; 3 uses
  %i.ag = phi ptr [ %i.b, %bb.c ], [ %.sink, %stbi__get8.exit.sink.split ] ; 4 uses
  %i.ah = icmp ult ptr %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !29
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !37
  br label %stbi__get8.exit86

bb.h:                                             ; preds = %stbi__get8.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26
  %.not.i81 = icmp eq i32 %i.al, 0
  br i1 %.not.i81, label %stbi__get8.exit86.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35
  %i.at = tail call i32 %i.an(ptr noundef %i.ap, ptr noundef nonnull %i.aq, i32 noundef %i.as) #37, !inline_history !65 ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !27
  %i.bd = add nsw i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !27
  %i.be = icmp eq i32 %i.at, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ak, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.aq, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i83

bb.k:                                             ; preds = %bb.i
  %i.bg = sext i32 %i.at to i64
  %i.bh = getelementptr inbounds i8, ptr %i.aq, i64 %i.bg
  %.pre.i82 = load i8, ptr %i.aq, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i83

stbi__refill_buffer.exit.i83:                     ; preds = %bb.k, %bb.j
  %i.bi = phi i8 [ 0, %bb.j ], [ %.pre.i82, %bb.k ]
  %.sink.i.i84 = phi ptr [ %i.bf, %bb.j ], [ %i.bh, %bb.k ] ; 2 uses
  store ptr %.sink.i.i84, ptr %i.c, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit86

stbi__get8.exit86:                                ; preds = %bb.g, %stbi__refill_buffer.exit.i83
  %i.bk = phi ptr [ %i.af, %bb.g ], [ %.sink.i.i84, %stbi__refill_buffer.exit.i83 ]
  %i.bl = phi ptr [ %i.ai, %bb.g ], [ %i.bj, %stbi__refill_buffer.exit.i83 ]
  %.0.i85 = phi i8 [ %i.aj, %bb.g ], [ %i.bi, %stbi__refill_buffer.exit.i83 ] ; 2 uses
  %i.bm = icmp ugt i8 %.0.i85, 1
  br i1 %i.bm, label %bb.l, label %stbi__get8.exit86.thread

bb.l:                                             ; preds = %stbi__get8.exit86
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bo = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !39
  store <2 x ptr> %i.bo, ptr %i.a, align 8, !tbaa !39
  br label %bb.bk

stbi__get8.exit86.thread:                         ; preds = %bb.h, %stbi__get8.exit86
  %i.bp = phi ptr [ %i.bk, %stbi__get8.exit86 ], [ %i.af, %bb.h ] ; 3 uses
  %i.bq = phi ptr [ %i.bl, %stbi__get8.exit86 ], [ %i.ag, %bb.h ] ; 4 uses
  %.0.i85129 = phi i8 [ %.0.i85, %stbi__get8.exit86 ], [ 0, %bb.h ]
  %i.br = icmp ult ptr %i.bq, %i.bp
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %stbi__get8.exit86.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !29
end_hunk_0
