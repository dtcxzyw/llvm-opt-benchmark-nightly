Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/blf?download=true
inline.NumInlined: 241
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@blf_read_linsenderror2:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 39
  %i.q = load i8, ptr %i.p, align 1
  switch i8 %i.q, label %bb.h [
    i8 0, label %.sink.split
    i8 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.sink14 = phi i8 [ 2, %bb.g ], [ 1, %bb.f ]
  %i.r = or disjoint i8 %i.n, %.sink14
  store i8 %i.r, ptr %i.o, align 4
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %blf_read_bytes.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.m, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 0, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 1, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 264
  call void @ws_buffer_append(ptr noundef %i.y, ptr noundef nonnull %i.a, i64 noundef 12)
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.aa = load i16, ptr %i.z, align 4
  call fastcc void @blf_init_rec(ptr noundef %0, i32 noundef %6, i64 noundef %7, i32 noundef 107, i16 noundef zeroext %i.aa, i16 noundef zeroext -1, i32 noundef 12, i32 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit.thread:                       ; preds = %bb.e, %bb.d, %bb.h, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.h ], [ false, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @blf_read_linwakeupevent2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i32 noundef %6, i64 noundef %7) unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.blf_linwakeupevent2, align 8 ; 4 uses
  %i.a = alloca [12 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %reass.sub = sub i64 %4, %3
  %i.b = add i64 %reass.sub, 24
  %i.c = icmp slt i64 %5, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -13, ptr %1, align 4
  %i.d = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.91)
  store ptr %i.d, ptr %2, align 8
  br label %blf_read_bytes.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = call fastcc zeroext i1 @blf_read_bytes_or_eof(ptr noundef readonly %0, i64 noundef %4, ptr noundef nonnull %8, i64 noundef 24, ptr noundef %1, ptr noundef %2)
  br i1 %i.e, label %blf_read_bytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %blf_read_bytes.exit.thread

bb.e:                                             ; preds = %bb.d
  store i32 -12, ptr %1, align 4
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit:                              ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store <8 x i8> <i8 1, i8 0, i8 0, i8 0, i8 12, i8 0, i8 0, i8 0>, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x i8> <i8 -80, i8 -80, i8 0, i8 4>, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 264
  call void @ws_buffer_append(ptr noundef %i.k, ptr noundef nonnull %i.a, i64 noundef 12)
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.m = load i16, ptr %i.l, align 4
  call fastcc void @blf_init_rec(ptr noundef %0, i32 noundef %6, i64 noundef %7, i32 noundef 107, i16 noundef zeroext %i.m, i16 noundef zeroext -1, i32 noundef 12, i32 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit.thread:                       ; preds = %bb.e, %bb.d, %blf_read_bytes.exit, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %blf_read_bytes.exit ], [ false, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @blf_read_linsleepmodeevent(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i32 noundef %6, i64 noundef %7) unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.blf_linsleepmodeevent, align 2 ; 6 uses
  %i.a = alloca [12 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %reass.sub = sub i64 %4, %3
  %i.b = add i64 %reass.sub, 4
  %i.c = icmp slt i64 %5, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -13, ptr %1, align 4
  %i.d = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.92)
  store ptr %i.d, ptr %2, align 8
  br label %blf_read_bytes.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = call fastcc zeroext i1 @blf_read_bytes_or_eof(ptr noundef readonly %0, i64 noundef %4, ptr noundef nonnull %8, i64 noundef 4, ptr noundef %1, ptr noundef %2)
  br i1 %i.e, label %blf_read_bytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %blf_read_bytes.exit.thread

bb.e:                                             ; preds = %bb.d
  store i32 -12, ptr %1, align 4
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit:                              ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store <8 x i8> <i8 1, i8 0, i8 0, i8 0, i8 12, i8 0, i8 0, i8 0>, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.i = load i8, ptr %i.h, align 2
  switch i8 %i.i, label %bb.l [
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.g
    i8 9, label %bb.h
    i8 10, label %bb.h
    i8 11, label %bb.h
    i8 0, label %bb.i
    i8 18, label %bb.i
  ]

bb.f:                                             ; preds = %blf_read_bytes.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x i8> <i8 -80, i8 -80, i8 0, i8 1>, ptr %i.j, align 8
  br label %bb.m

bb.g:                                             ; preds = %blf_read_bytes.exit, %blf_read_bytes.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x i8> <i8 -80, i8 -80, i8 0, i8 2>, ptr %i.k, align 8
  br label %bb.m

bb.h:                                             ; preds = %blf_read_bytes.exit, %blf_read_bytes.exit, %blf_read_bytes.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x i8> <i8 -80, i8 -80, i8 0, i8 4>, ptr %i.l, align 8
  br label %bb.m

bb.i:                                             ; preds = %blf_read_bytes.exit, %blf_read_bytes.exit
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 2
  %.not = icmp eq i8 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 -80, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 -80, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 0, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 4, ptr %i.s, align 1
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  store i8 2, ptr %i.s, align 1
  br label %bb.m

bb.l:                                             ; preds = %blf_read_bytes.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.t, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 264
  call void @ws_buffer_append(ptr noundef %i.w, ptr noundef nonnull %i.a, i64 noundef 12)
  %i.x = load i16, ptr %8, align 2
  call fastcc void @blf_init_rec(ptr noundef %0, i32 noundef %6, i64 noundef %7, i32 noundef 107, i16 noundef zeroext %i.x, i16 noundef zeroext -1, i32 noundef 12, i32 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit.thread:                       ; preds = %bb.e, %bb.d, %bb.m, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.m ], [ false, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @blf_read_ethernet_status(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i32 noundef %6, i64 noundef %7, i16 noundef zeroext %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.blf_ethernet_status, align 4 ; 11 uses
  %i.a = alloca [24 x i8], align 16               ; 13 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %.not = icmp eq i16 %8, 0                       ; 3 uses
  %i.c = select i1 %.not, i64 0, i64 8
  %reass.sub = sub i64 %4, %3
  %i.d = add i64 %reass.sub, 16
  %i.e = add i64 %i.d, %i.c
  %i.f = icmp slt i64 %5, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -13, ptr %1, align 4
  %i.g = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.125)
  store ptr %i.g, ptr %2, align 8
  br label %blf_read_bytes.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = call fastcc zeroext i1 @blf_read_bytes_or_eof(ptr noundef readonly %0, i64 noundef %4, ptr noundef nonnull %9, i64 noundef 16, ptr noundef %1, ptr noundef %2)
  br i1 %i.h, label %blf_read_bytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %1, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %blf_read_bytes.exit.thread

bb.e:                                             ; preds = %bb.d
  store i32 -12, ptr %1, align 4
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit:                              ; preds = %bb.c
  br i1 %.not, label %blf_read_bytes.exit33, label %bb.f

bb.f:                                             ; preds = %blf_read_bytes.exit
  %i.k = add i64 %4, 16
  %i.l = call fastcc zeroext i1 @blf_read_bytes_or_eof(ptr noundef readonly %0, i64 noundef %i.k, ptr noundef nonnull %i.b, i64 noundef 8, ptr noundef %1, ptr noundef %2)
  br i1 %i.l, label %blf_read_bytes.exit33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %1, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %blf_read_bytes.exit.thread

bb.h:                                             ; preds = %bb.g
  store i32 -12, ptr %1, align 4
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit33:                            ; preds = %bb.f, %blf_read_bytes.exit
  %i.o = load i16, ptr %9, align 4                ; 2 uses
  %i.p = lshr i16 %i.o, 8
  %i.q = trunc nuw i16 %i.p to i8
  store i8 %i.q, ptr %i.a, align 16
  %i.r = trunc i16 %i.o to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.r, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2              ; 2 uses
  %i.w = lshr i16 %i.v, 8
  %i.x = trunc nuw i16 %i.w to i8
  store i8 %i.x, ptr %i.t, align 2
  %i.y = trunc i16 %i.v to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 11 ; 4 uses
  %i.ad = load <8 x i8>, ptr %i.aa, align 4
  store <8 x i8> %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ag = load i32, ptr %i.af, align 4            ; 4 uses
  %i.ah = lshr i32 %i.ag, 24
  %i.ai = trunc nuw i32 %i.ah to i8
  store i8 %i.ai, ptr %i.ae, align 4
  %i.aj = lshr i32 %i.ag, 16
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = lshr i32 %i.ag, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.an, ptr %i.ao, align 2
  %i.ap = trunc i32 %i.ag to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.ap, ptr %i.aq, align 1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %blf_read_bytes.exit33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %10 = load <8 x i8>, ptr %i.b, align 8
  %11 = shufflevector <8 x i8> %10, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %11, ptr %i.ar, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %blf_read_bytes.exit33
  %i.as = phi i64 [ 24, %bb.i ], [ 16, %blf_read_bytes.exit33 ]
  %i.at = getelementptr i8, ptr %0, i64 8         ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 264
  call void @wtap_buffer_append_epdu_string(ptr noundef %i.av, i16 noundef zeroext 12, ptr noundef nonnull @.str.126)
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 264
  %i.ay = call i32 @wtap_buffer_append_epdu_end(ptr noundef %i.ax) ; 0 uses
  %i.az = load ptr, ptr %i.at, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 264
  call void @ws_buffer_append(ptr noundef %i.ba, ptr noundef nonnull %i.a, i64 noundef %i.as)
  %i.bb = load i16, ptr %9, align 4
  %i.bc = zext i16 %i.bb to i32
  %i.bd = load i8, ptr %i.ac, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.127, i32 noundef %i.bc, i32 noundef %i.be) ; 2 uses
  %i.bg = load i16, ptr %9, align 4
  %i.bh = load i8, ptr %i.ac, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = call fastcc i32 @blf_lookup_interface(ptr noundef %0, i32 noundef 155, i16 noundef zeroext %i.bg, i16 noundef zeroext %i.bi, ptr noundef %i.bf) ; 0 uses
  call void @g_free(ptr noundef %i.bf)
  %i.bk = load i16, ptr %9, align 4
  %i.bl = load i8, ptr %i.ac, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 280
  %.val31 = load i64, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 288
  %.val32 = load i64, ptr %i.bp, align 8
  %i.bq = sub i64 %.val32, %.val31
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  call fastcc void @blf_init_rec(ptr noundef %0, i32 noundef %6, i64 noundef %7, i32 noundef 155, i16 noundef zeroext %i.bk, i16 noundef zeroext %i.bm, i32 noundef %i.br, i32 noundef %i.br)
  %i.bs = load i16, ptr %i.u, align 2
  %i.bt = and i16 %i.bs, 256
  %.not29 = icmp eq i16 %i.bt, 0
  br i1 %.not29, label %blf_read_bytes.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.at, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 216
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i8, ptr %i.ac, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = call i32 @wtap_block_add_uint32_option(ptr noundef %i.bw, i32 noundef 6, i32 noundef %i.by) ; 0 uses
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit.thread:                       ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.j, %bb.k, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.k ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @blf_read_ethernet_phystate(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i32 noundef %6, i64 noundef %7) unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.blf_ethernet_phystate, align 2 ; 10 uses
  %i.a = alloca [8 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %reass.sub = sub i64 %4, %3
  %i.b = add i64 %reass.sub, 8
  %i.c = icmp slt i64 %5, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -13, ptr %1, align 4
  %i.d = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.128)
  store ptr %i.d, ptr %2, align 8
  br label %blf_read_bytes.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = call fastcc zeroext i1 @blf_read_bytes_or_eof(ptr noundef readonly %0, i64 noundef %4, ptr noundef nonnull %8, i64 noundef 8, ptr noundef %1, ptr noundef %2)
  br i1 %i.e, label %blf_read_bytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %blf_read_bytes.exit.thread

bb.e:                                             ; preds = %bb.d
  store i32 -12, ptr %1, align 4
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit:                              ; preds = %bb.c
  %i.h = load i16, ptr %8, align 2                ; 2 uses
  %i.i = lshr i16 %i.h, 8
  %i.j = trunc nuw i16 %i.i to i8
  store i8 %i.j, ptr %i.a, align 1
  %i.k = trunc i16 %i.h to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.k, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2              ; 2 uses
  %i.p = lshr i16 %i.o, 8
  %i.q = trunc nuw i16 %i.p to i8
  store i8 %i.q, ptr %i.m, align 1
  %i.r = trunc i16 %i.o to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.r, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 6 ; 4 uses
  %i.w = load <4 x i8>, ptr %i.t, align 2
  store <4 x i8> %i.w, ptr %i.u, align 1
  %i.x = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 264
  call void @wtap_buffer_append_epdu_string(ptr noundef %i.z, i16 noundef zeroext 12, ptr noundef nonnull @.str.129)
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 264
  %i.ac = call i32 @wtap_buffer_append_epdu_end(ptr noundef %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 264
  call void @ws_buffer_append(ptr noundef %i.ae, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.af = load i16, ptr %8, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = load i8, ptr %i.v, align 2
  %i.ai = zext i8 %i.ah to i32
  %i.aj = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.127, i32 noundef %i.ag, i32 noundef %i.ai) ; 2 uses
  %i.ak = load i16, ptr %8, align 2
  %i.al = load i8, ptr %i.v, align 2
  %i.am = zext i8 %i.al to i16
  %i.an = call fastcc i32 @blf_lookup_interface(ptr noundef %0, i32 noundef 155, i16 noundef zeroext %i.ak, i16 noundef zeroext %i.am, ptr noundef %i.aj) ; 0 uses
  call void @g_free(ptr noundef %i.aj)
  %i.ao = load i16, ptr %8, align 2
  %i.ap = load i8, ptr %i.v, align 2
  %i.aq = zext i8 %i.ap to i16
  %i.ar = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 280
  %.val22 = load i64, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 288
  %.val23 = load i64, ptr %i.at, align 8
  %i.au = sub i64 %.val23, %.val22
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  call fastcc void @blf_init_rec(ptr noundef %0, i32 noundef %6, i64 noundef %7, i32 noundef 155, i16 noundef zeroext %i.ao, i16 noundef zeroext %i.aq, i32 noundef %i.av, i32 noundef %i.av)
  %i.aw = load i16, ptr %i.n, align 2
  %i.ax = and i16 %i.aw, 4
  %.not = icmp eq i16 %i.ax, 0
  br i1 %.not, label %blf_read_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %blf_read_bytes.exit
  %i.ay = load ptr, ptr %i.x, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 216
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i8, ptr %i.v, align 2
  %i.bc = zext i8 %i.bb to i32
  %i.bd = call i32 @wtap_block_add_uint32_option(ptr noundef %i.ba, i32 noundef 6, i32 noundef %i.bc) ; 0 uses
  br label %blf_read_bytes.exit.thread

blf_read_bytes.exit.thread:                       ; preds = %bb.e, %bb.d, %blf_read_bytes.exit, %bb.f, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %blf_read_bytes.exit ], [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @g_array_binary_search(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @blf_pull_next_logcontainer(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.blf_blockheader, align 4    ; 10 uses
  %4 = alloca %struct.blf_logcontainerheader, align 4 ; 6 uses
  %5 = alloca %struct.blf_log_container, align 8  ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = add i32 %i.f, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr [56 x i8], ptr %i.h, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.k, i64 32
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.059.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
end_hunk_0
