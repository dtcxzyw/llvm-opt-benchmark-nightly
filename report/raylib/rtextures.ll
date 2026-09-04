Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 119
begin_hunk_0_@stbi_loadf:bb.a

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128) #52, !inline_history !0 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8
  br label %stbi__start_file.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_file.exit

stbi__start_file.exit:                            ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8
  %i.y = call fastcc ptr @stbi__loadf_main(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret ptr %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @stbi_is_hdr_from_memory(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define hidden noundef i32 @stbi_is_hdr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @stbi_is_hdr_from_file(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @stbi_is_hdr_from_callbacks(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @stbi_ldr_to_hdr_gamma(float noundef %0) local_unnamed_addr #3 {
bb.a:
  store float %0, ptr @stbi__l2h_gamma, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @stbi_ldr_to_hdr_scale(float noundef %0) local_unnamed_addr #3 {
bb.a:
  store float %0, ptr @stbi__l2h_scale, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @stbi_hdr_to_ldr_gamma(float noundef %0) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @stbi_hdr_to_ldr_scale(float noundef %0) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden ptr @stbi_zlib_decode_malloc_guesssize(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  %i.a = sext i32 %2 to i64
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.a) #53 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = call fastcc i32 @stbi__do_zlib(ptr noundef %4, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef 1, i32 noundef 1)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not11 = icmp eq ptr %3, null
  br i1 %.not11, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %3, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  call void @free(ptr noundef %i.q) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %.pre, %._crit_edge ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__do_zlib(ptr nofree noundef nonnull initializes((32, 60)) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.stbi__zhuffman, align 4     ; 5 uses
  %i.a = alloca [455 x i8], align 16              ; 8 uses
  %i.b = alloca [19 x i8], align 16               ; 6 uses
  %i.c = alloca [4 x i8], align 2                 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i32 %3, ptr %i.i, align 8
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %stbi__parse_zlib_header.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %0, align 8         ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val2.i.i.i = load ptr, ptr %i.j, align 8      ; 3 uses
  %.not3.i.i.i = icmp ult ptr %.val.i.i.i, %.val2.i.i.i
  br i1 %.not3.i.i.i, label %bb.c, label %stbi__parse_zlib_header.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1 ; 3 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = load i8, ptr %.val.i.i.i, align 1
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %6 = and i32 %i.m, 15
  %.not3.i14.i.i = icmp ult ptr %i.k, %.val2.i.i.i
  br i1 %.not3.i14.i.i, label %stbi__zget8.exit15.i.i, label %stbi__parse_zlib_header.exit.thread.i

stbi__zget8.exit15.i.i:                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 2 ; 2 uses
  store ptr %i.n, ptr %0, align 8
  %i.o = load i8, ptr %i.k, align 1
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = icmp ult ptr %i.n, %.val2.i.i.i
  br i1 %i.q, label %bb.d, label %stbi__parse_zlib_header.exit.thread.i

bb.d:                                             ; preds = %stbi__zget8.exit15.i.i
  %i.r = shl nuw nsw i32 %i.m, 8
  %i.s = or disjoint i32 %i.r, %i.p
  %.lhs.trunc.i.i = trunc nuw i32 %i.s to i16
  %i.t = urem i16 %.lhs.trunc.i.i, 31
  %.not8.i.i = icmp eq i16 %i.t, 0
  br i1 %.not8.i.i, label %bb.e, label %stbi__parse_zlib_header.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %i.p, 32
  %.not9.i.i = icmp eq i32 %i.u, 0
  br i1 %.not9.i.i, label %bb.f, label %stbi__parse_zlib_header.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %.not10.i.i = icmp eq i32 %6, 8
  br i1 %.not10.i.i, label %stbi__parse_zlib_header.exit.i, label %stbi__parse_zlib_header.exit.thread.i

stbi__parse_zlib_header.exit.thread.i:            ; preds = %bb.f, %bb.e, %bb.d, %stbi__zget8.exit15.i.i, %bb.c, %bb.b
  %.str.130.sink.i.i = phi ptr [ @.str.129, %bb.e ], [ @.str.128, %bb.d ], [ @.str.128, %stbi__zget8.exit15.i.i ], [ @.str.128, %bb.b ], [ @.str.128, %bb.c ], [ @.str.130, %bb.f ]
  store ptr %.str.130.sink.i.i, ptr @stbi__g_failure_reason, align 8
  br label %stbi__parse_zlib.exit

stbi__parse_zlib_header.exit.i:                   ; preds = %bb.f, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 31 uses
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 30 uses
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %0, i64 8          ; 26 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.g

thread-pre-split.i:                               ; preds = %stbi__parse_huffman_block.exit.thread.i
  %.pr.i = load i32, ptr %i.v, align 8
  %.promoted.i.i.pre.i = load i32, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i, %stbi__parse_zlib_header.exit.i
  %i.ac = phi ptr [ %i.sb, %thread-pre-split.i ], [ %1, %stbi__parse_zlib_header.exit.i ] ; 3 uses
  %.promoted.i.i.i = phi i32 [ %.promoted.i.i.pre.i, %thread-pre-split.i ], [ 0, %stbi__parse_zlib_header.exit.i ] ; 2 uses
  %i.ad = phi i32 [ %.pr.i, %thread-pre-split.i ], [ 0, %stbi__parse_zlib_header.exit.i ] ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %.preheader172.i, label %stbi__zreceive.exit.i

.preheader172.i:                                  ; preds = %bb.g, %stbi__zget8.exit.i.i.i
  %i.af = phi i32 [ %i.ao, %stbi__zget8.exit.i.i.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.ag = phi i32 [ %i.an, %stbi__zget8.exit.i.i.i ], [ %.promoted.i.i.i, %bb.g ] ; 3 uses
  %.highbits.i.i.i = lshr i32 %i.ag, %i.af
  %.not.i.i.i = icmp eq i32 %.highbits.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader172.i
  %i.ah = load ptr, ptr %i.y, align 8
  store ptr %i.ah, ptr %0, align 8
  br label %stbi__zreceive.exit.i

bb.i:                                             ; preds = %.preheader172.i
  %.val.i.i.i.i = load ptr, ptr %0, align 8       ; 3 uses
  %.val2.i.i.i.i = load ptr, ptr %i.y, align 8
  %.not3.i.i.i.i = icmp ult ptr %.val.i.i.i.i, %.val2.i.i.i.i
  br i1 %.not3.i.i.i.i, label %bb.j, label %stbi__zget8.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  store ptr %i.ai, ptr %0, align 8
  %i.aj = load i8, ptr %.val.i.i.i.i, align 1
  %i.ak = zext i8 %i.aj to i32
  br label %stbi__zget8.exit.i.i.i

stbi__zget8.exit.i.i.i:                           ; preds = %bb.j, %bb.i
  %i.al = phi i32 [ %i.ak, %bb.j ], [ 0, %bb.i ]
  %i.am = shl i32 %i.al, %i.af
  %i.an = or i32 %i.am, %i.ag                     ; 4 uses
  store i32 %i.an, ptr %i.w, align 8
  %i.ao = add nsw i32 %i.af, 8                    ; 2 uses
  store i32 %i.ao, ptr %i.v, align 8
  %i.ap = icmp slt i32 %i.af, 17
  br i1 %i.ap, label %.preheader172.i, label %stbi__zreceive.exit.thread.i

stbi__zreceive.exit.thread.i:                     ; preds = %stbi__zget8.exit.i.i.i
  %i.aq = lshr i32 %i.an, 1
  %i.ar = add nuw nsw i32 %i.af, 7
  br label %stbi__zreceive.exit31.i

stbi__zreceive.exit.i:                            ; preds = %bb.h, %bb.g
  %i.as = phi i32 [ %i.ad, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %i.at = phi i32 [ %.promoted.i.i.i, %bb.g ], [ %i.ag, %bb.h ] ; 4 uses
  %i.au = lshr i32 %i.at, 1                       ; 3 uses
  store i32 %i.au, ptr %i.w, align 8
  %i.av = add nsw i32 %i.as, -1                   ; 3 uses
  store i32 %i.av, ptr %i.v, align 8
  %i.aw = icmp slt i32 %i.as, 3
  br i1 %i.aw, label %.preheader171.i, label %stbi__zreceive.exit31.i

.preheader171.i:                                  ; preds = %stbi__zreceive.exit.i, %stbi__zget8.exit.i.i30.i
  %i.ax = phi i32 [ %i.bg, %stbi__zget8.exit.i.i30.i ], [ %i.av, %stbi__zreceive.exit.i ] ; 5 uses
  %i.ay = phi i32 [ %i.bf, %stbi__zget8.exit.i.i30.i ], [ %i.au, %stbi__zreceive.exit.i ] ; 3 uses
  %.highbits.i.i25.i = lshr i32 %i.ay, %i.ax
  %.not.i.i26.i = icmp eq i32 %.highbits.i.i25.i, 0
  br i1 %.not.i.i26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader171.i
  %i.az = load ptr, ptr %i.y, align 8
  store ptr %i.az, ptr %0, align 8
  br label %stbi__zreceive.exit31.i

bb.l:                                             ; preds = %.preheader171.i
  %.val.i.i.i27.i = load ptr, ptr %0, align 8     ; 3 uses
  %.val2.i.i.i28.i = load ptr, ptr %i.y, align 8
  %.not3.i.i.i29.i = icmp ult ptr %.val.i.i.i27.i, %.val2.i.i.i28.i
  br i1 %.not3.i.i.i29.i, label %bb.m, label %stbi__zget8.exit.i.i30.i

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i27.i, i64 1
  store ptr %i.ba, ptr %0, align 8
  %i.bb = load i8, ptr %.val.i.i.i27.i, align 1
  %i.bc = zext i8 %i.bb to i32
  br label %stbi__zget8.exit.i.i30.i

stbi__zget8.exit.i.i30.i:                         ; preds = %bb.m, %bb.l
  %i.bd = phi i32 [ %i.bc, %bb.m ], [ 0, %bb.l ]
  %i.be = shl i32 %i.bd, %i.ax
  %i.bf = or i32 %i.be, %i.ay                     ; 3 uses
  store i32 %i.bf, ptr %i.w, align 8
  %i.bg = add nsw i32 %i.ax, 8                    ; 3 uses
  store i32 %i.bg, ptr %i.v, align 8
  %i.bh = icmp slt i32 %i.ax, 17
  br i1 %i.bh, label %.preheader171.i, label %stbi__zreceive.exit31.i

stbi__zreceive.exit31.i:                          ; preds = %stbi__zget8.exit.i.i30.i, %bb.k, %stbi__zreceive.exit.i, %stbi__zreceive.exit.thread.i
  %.in.i = phi i32 [ %i.at, %stbi__zreceive.exit.i ], [ %i.at, %bb.k ], [ %i.an, %stbi__zreceive.exit.thread.i ], [ %i.at, %stbi__zget8.exit.i.i30.i ]
  %i.bi = phi i32 [ %i.av, %stbi__zreceive.exit.i ], [ %i.ax, %bb.k ], [ %i.ar, %stbi__zreceive.exit.thread.i ], [ %i.bg, %stbi__zget8.exit.i.i30.i ] ; 3 uses
  %i.bj = phi i32 [ %i.au, %stbi__zreceive.exit.i ], [ %i.ay, %bb.k ], [ %i.aq, %stbi__zreceive.exit.thread.i ], [ %i.bf, %stbi__zget8.exit.i.i30.i ] ; 2 uses
  %i.bk = and i32 %.in.i, 1
  %i.bl = and i32 %i.bj, 3
  %i.bm = lshr i32 %i.bj, 2                       ; 6 uses
  store i32 %i.bm, ptr %i.w, align 8
  %i.bn = add nsw i32 %i.bi, -2                   ; 7 uses
  store i32 %i.bn, ptr %i.v, align 8
  switch i32 %i.bl, label %default.unreachable [
    i32 0, label %bb.n
    i32 3, label %stbi__parse_zlib.exit
    i32 1, label %bb.ae
    i32 2, label %bb.ag
  ]

bb.n:                                             ; preds = %stbi__zreceive.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #52
  %i.bo = and i32 %i.bn, 7                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp slt i32 %i.bi, 2
  br i1 %i.bp, label %.preheader.i, label %stbi__zreceive.exit.i.i

.preheader.i:                                     ; preds = %bb.o, %stbi__zget8.exit.i.i.i.i
  %i.bq = phi i32 [ %i.bz, %stbi__zget8.exit.i.i.i.i ], [ %i.bn, %bb.o ] ; 5 uses
  %i.br = phi i32 [ %i.by, %stbi__zget8.exit.i.i.i.i ], [ %i.bm, %bb.o ] ; 3 uses
  %.highbits.i.i.i.i = lshr i32 %i.br, %i.bq
  %.not.i.i.i.i = icmp eq i32 %.highbits.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bs = load ptr, ptr %i.y, align 8
  store ptr %i.bs, ptr %0, align 8
  br label %stbi__zreceive.exit.i.i

bb.q:                                             ; preds = %.preheader.i
  %.val.i.i.i.i.i = load ptr, ptr %0, align 8     ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.y, align 8
  %.not3.i.i.i.i.i = icmp ult ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %.not3.i.i.i.i.i, label %bb.r, label %stbi__zget8.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 1
  store ptr %i.bt, ptr %0, align 8
  %i.bu = load i8, ptr %.val.i.i.i.i.i, align 1
  %i.bv = zext i8 %i.bu to i32
  br label %stbi__zget8.exit.i.i.i.i

stbi__zget8.exit.i.i.i.i:                         ; preds = %bb.r, %bb.q
  %i.bw = phi i32 [ %i.bv, %bb.r ], [ 0, %bb.q ]
  %i.bx = shl i32 %i.bw, %i.bq
  %i.by = or i32 %i.bx, %i.br                     ; 3 uses
  store i32 %i.by, ptr %i.w, align 8
  %i.bz = add nsw i32 %i.bq, 8                    ; 3 uses
  store i32 %i.bz, ptr %i.v, align 8
  %i.ca = icmp slt i32 %i.bq, 17
  br i1 %i.ca, label %.preheader.i, label %stbi__zreceive.exit.i.i

stbi__zreceive.exit.i.i:                          ; preds = %stbi__zget8.exit.i.i.i.i, %bb.p, %bb.o
  %i.cb = phi i32 [ %i.bn, %bb.o ], [ %i.bq, %bb.p ], [ %i.bz, %stbi__zget8.exit.i.i.i.i ]
  %i.cc = phi i32 [ %i.bm, %bb.o ], [ %i.br, %bb.p ], [ %i.by, %stbi__zget8.exit.i.i.i.i ]
  %i.cd = lshr i32 %i.cc, %i.bo                   ; 2 uses
  store i32 %i.cd, ptr %i.w, align 8
  %i.ce = sub nsw i32 %i.cb, %i.bo                ; 2 uses
  store i32 %i.ce, ptr %i.v, align 8
  br label %bb.s

bb.s:                                             ; preds = %stbi__zreceive.exit.i.i, %bb.n
  %.promoted.i.i = phi i32 [ %i.cd, %stbi__zreceive.exit.i.i ], [ %i.bm, %bb.n ] ; 2 uses
  %.pr.i.i = phi i32 [ %i.ce, %stbi__zreceive.exit.i.i ], [ %i.bn, %bb.n ] ; 6 uses
  %i.cf = icmp sgt i32 %.pr.i.i, 0
  br i1 %i.cf, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.s
  %i.cg = add nsw i32 %.pr.i.i, -1                ; 3 uses
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = add nuw nsw i32 %i.ch, 1
  %wide.trip.count.i = zext nneg i32 %i.ci to i64 ; 3 uses
  %xtraiter482 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.cj = icmp ult i32 %.pr.i.i, 25
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
end_hunk_0
