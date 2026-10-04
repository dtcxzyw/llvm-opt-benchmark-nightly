Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi_loadf:bb.a
  store i8 0, ptr %i.g, align 8
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8
  %i.z = call fastcc noalias noundef ptr @stbi__loadf_main(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  %i.aa = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
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
  br i1 %.not3.i.i.i, label %bb.c, label %stbi__zget8.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = load i8, ptr %.val.i.i.i, align 1
  %i.m = zext i8 %i.l to i32
  br label %stbi__zget8.exit.i.i

stbi__zget8.exit.i.i:                             ; preds = %bb.c, %bb.b
  %.val.i12.i.i = phi ptr [ %i.k, %bb.c ], [ %.val.i.i.i, %bb.b ] ; 3 uses
  %i.n = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.o = and i32 %i.n, 15
  %.not3.i14.i.i = icmp ult ptr %.val.i12.i.i, %.val2.i.i.i
  br i1 %.not3.i14.i.i, label %stbi__zget8.exit15.i.i, label %stbi__parse_zlib_header.exit.thread.i

stbi__zget8.exit15.i.i:                           ; preds = %stbi__zget8.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i12.i.i, i64 1 ; 2 uses
  store ptr %i.p, ptr %0, align 8
  %i.q = load i8, ptr %.val.i12.i.i, align 1
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = icmp ult ptr %i.p, %.val2.i.i.i
  br i1 %i.s, label %bb.d, label %stbi__parse_zlib_header.exit.thread.i

bb.d:                                             ; preds = %stbi__zget8.exit15.i.i
  %i.t = shl nuw nsw i32 %i.n, 8
  %i.u = or disjoint i32 %i.t, %i.r
  %.lhs.trunc.i.i = trunc nuw i32 %i.u to i16
  %i.v = urem i16 %.lhs.trunc.i.i, 31
  %.not8.i.i = icmp eq i16 %i.v, 0
  br i1 %.not8.i.i, label %bb.e, label %stbi__parse_zlib_header.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.r, 32
  %.not9.i.i = icmp eq i32 %i.w, 0
  br i1 %.not9.i.i, label %bb.f, label %stbi__parse_zlib_header.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %.not10.i.i = icmp eq i32 %i.o, 8
  br i1 %.not10.i.i, label %stbi__parse_zlib_header.exit.i, label %stbi__parse_zlib_header.exit.thread.i

stbi__parse_zlib_header.exit.thread.i:            ; preds = %bb.f, %bb.e, %bb.d, %stbi__zget8.exit15.i.i, %stbi__zget8.exit.i.i
  %.str.130.sink.i.i = phi ptr [ @.str.129, %bb.e ], [ @.str.128, %bb.d ], [ @.str.128, %stbi__zget8.exit15.i.i ], [ @.str.128, %stbi__zget8.exit.i.i ], [ @.str.130, %bb.f ]
  store ptr %.str.130.sink.i.i, ptr @stbi__g_failure_reason, align 8
  br label %stbi__parse_zlib.exit

stbi__parse_zlib_header.exit.i:                   ; preds = %bb.f, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 31 uses
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 30 uses
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 26 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.g

thread-pre-split.i:                               ; preds = %stbi__parse_huffman_block.exit.thread.i
  %.pr.i = load i32, ptr %i.x, align 8
  %.promoted.i.i.pre.i = load i32, ptr %i.y, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i, %stbi__parse_zlib_header.exit.i
  %i.ae = phi ptr [ %i.rz, %thread-pre-split.i ], [ %1, %stbi__parse_zlib_header.exit.i ] ; 3 uses
  %.promoted.i.i.i = phi i32 [ %.promoted.i.i.pre.i, %thread-pre-split.i ], [ 0, %stbi__parse_zlib_header.exit.i ] ; 2 uses
  %i.af = phi i32 [ %.pr.i, %thread-pre-split.i ], [ 0, %stbi__parse_zlib_header.exit.i ] ; 3 uses
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %.preheader172.i, label %stbi__zreceive.exit.i

.preheader172.i:                                  ; preds = %bb.g, %stbi__zget8.exit.i.i.i
  %i.ah = phi i32 [ %i.aq, %stbi__zget8.exit.i.i.i ], [ %i.af, %bb.g ] ; 6 uses
  %i.ai = phi i32 [ %i.ap, %stbi__zget8.exit.i.i.i ], [ %.promoted.i.i.i, %bb.g ] ; 3 uses
  %.highbits.i.i.i = lshr i32 %i.ai, %i.ah
  %.not.i.i.i = icmp eq i32 %.highbits.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader172.i
  %i.aj = load ptr, ptr %i.aa, align 8
  store ptr %i.aj, ptr %0, align 8
  br label %stbi__zreceive.exit.i

bb.i:                                             ; preds = %.preheader172.i
  %.val.i.i.i.i = load ptr, ptr %0, align 8       ; 3 uses
  %.val2.i.i.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i.i = icmp ult ptr %.val.i.i.i.i, %.val2.i.i.i.i
  br i1 %.not3.i.i.i.i, label %bb.j, label %stbi__zget8.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  store ptr %i.ak, ptr %0, align 8
  %i.al = load i8, ptr %.val.i.i.i.i, align 1
  %i.am = zext i8 %i.al to i32
  br label %stbi__zget8.exit.i.i.i

stbi__zget8.exit.i.i.i:                           ; preds = %bb.j, %bb.i
  %i.an = phi i32 [ %i.am, %bb.j ], [ 0, %bb.i ]
  %i.ao = shl i32 %i.an, %i.ah
  %i.ap = or i32 %i.ao, %i.ai                     ; 4 uses
  store i32 %i.ap, ptr %i.y, align 8
  %i.aq = add nsw i32 %i.ah, 8                    ; 2 uses
  store i32 %i.aq, ptr %i.x, align 8
  %i.ar = icmp slt i32 %i.ah, 17
  br i1 %i.ar, label %.preheader172.i, label %stbi__zreceive.exit.thread.i

stbi__zreceive.exit.thread.i:                     ; preds = %stbi__zget8.exit.i.i.i
  %i.as = lshr i32 %i.ap, 1
  %i.at = add nuw nsw i32 %i.ah, 7
  br label %stbi__zreceive.exit31.i

stbi__zreceive.exit.i:                            ; preds = %bb.h, %bb.g
  %i.au = phi i32 [ %i.af, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  %i.av = phi i32 [ %.promoted.i.i.i, %bb.g ], [ %i.ai, %bb.h ] ; 4 uses
  %i.aw = lshr i32 %i.av, 1                       ; 3 uses
  store i32 %i.aw, ptr %i.y, align 8
  %i.ax = add nsw i32 %i.au, -1                   ; 3 uses
  store i32 %i.ax, ptr %i.x, align 8
  %i.ay = icmp slt i32 %i.au, 3
  br i1 %i.ay, label %.preheader171.i, label %stbi__zreceive.exit31.i

.preheader171.i:                                  ; preds = %stbi__zreceive.exit.i, %stbi__zget8.exit.i.i30.i
  %i.az = phi i32 [ %i.bi, %stbi__zget8.exit.i.i30.i ], [ %i.ax, %stbi__zreceive.exit.i ] ; 5 uses
  %i.ba = phi i32 [ %i.bh, %stbi__zget8.exit.i.i30.i ], [ %i.aw, %stbi__zreceive.exit.i ] ; 3 uses
  %.highbits.i.i25.i = lshr i32 %i.ba, %i.az
  %.not.i.i26.i = icmp eq i32 %.highbits.i.i25.i, 0
  br i1 %.not.i.i26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader171.i
  %i.bb = load ptr, ptr %i.aa, align 8
  store ptr %i.bb, ptr %0, align 8
  br label %stbi__zreceive.exit31.i

bb.l:                                             ; preds = %.preheader171.i
  %.val.i.i.i27.i = load ptr, ptr %0, align 8     ; 3 uses
  %.val2.i.i.i28.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i29.i = icmp ult ptr %.val.i.i.i27.i, %.val2.i.i.i28.i
  br i1 %.not3.i.i.i29.i, label %bb.m, label %stbi__zget8.exit.i.i30.i

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i27.i, i64 1
  store ptr %i.bc, ptr %0, align 8
  %i.bd = load i8, ptr %.val.i.i.i27.i, align 1
  %i.be = zext i8 %i.bd to i32
  br label %stbi__zget8.exit.i.i30.i

stbi__zget8.exit.i.i30.i:                         ; preds = %bb.m, %bb.l
  %i.bf = phi i32 [ %i.be, %bb.m ], [ 0, %bb.l ]
  %i.bg = shl i32 %i.bf, %i.az
  %i.bh = or i32 %i.bg, %i.ba                     ; 3 uses
  store i32 %i.bh, ptr %i.y, align 8
  %i.bi = add nsw i32 %i.az, 8                    ; 3 uses
  store i32 %i.bi, ptr %i.x, align 8
  %i.bj = icmp slt i32 %i.az, 17
  br i1 %i.bj, label %.preheader171.i, label %stbi__zreceive.exit31.i

stbi__zreceive.exit31.i:                          ; preds = %stbi__zget8.exit.i.i30.i, %bb.k, %stbi__zreceive.exit.i, %stbi__zreceive.exit.thread.i
  %.in.i = phi i32 [ %i.av, %stbi__zreceive.exit.i ], [ %i.av, %bb.k ], [ %i.ap, %stbi__zreceive.exit.thread.i ], [ %i.av, %stbi__zget8.exit.i.i30.i ]
  %i.bk = phi i32 [ %i.ax, %stbi__zreceive.exit.i ], [ %i.az, %bb.k ], [ %i.at, %stbi__zreceive.exit.thread.i ], [ %i.bi, %stbi__zget8.exit.i.i30.i ] ; 3 uses
  %i.bl = phi i32 [ %i.aw, %stbi__zreceive.exit.i ], [ %i.ba, %bb.k ], [ %i.as, %stbi__zreceive.exit.thread.i ], [ %i.bh, %stbi__zget8.exit.i.i30.i ] ; 2 uses
  %i.bm = and i32 %.in.i, 1
  %i.bn = and i32 %i.bl, 3
  %i.bo = lshr i32 %i.bl, 2                       ; 6 uses
  store i32 %i.bo, ptr %i.y, align 8
  %i.bp = add nsw i32 %i.bk, -2                   ; 7 uses
  store i32 %i.bp, ptr %i.x, align 8
  switch i32 %i.bn, label %default.unreachable [
    i32 0, label %bb.n
    i32 3, label %stbi__parse_zlib.exit
    i32 1, label %bb.ae
    i32 2, label %bb.ag
  ]

bb.n:                                             ; preds = %stbi__zreceive.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #52
  %i.bq = and i32 %i.bp, 7                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = icmp slt i32 %i.bk, 2
  br i1 %i.br, label %.preheader.i, label %stbi__zreceive.exit.i.i

.preheader.i:                                     ; preds = %bb.o, %stbi__zget8.exit.i.i.i.i
  %i.bs = phi i32 [ %i.cb, %stbi__zget8.exit.i.i.i.i ], [ %i.bp, %bb.o ] ; 5 uses
  %i.bt = phi i32 [ %i.ca, %stbi__zget8.exit.i.i.i.i ], [ %i.bo, %bb.o ] ; 3 uses
  %.highbits.i.i.i.i = lshr i32 %i.bt, %i.bs
  %.not.i.i.i.i = icmp eq i32 %.highbits.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bu = load ptr, ptr %i.aa, align 8
  store ptr %i.bu, ptr %0, align 8
  br label %stbi__zreceive.exit.i.i

bb.q:                                             ; preds = %.preheader.i
  %.val.i.i.i.i.i = load ptr, ptr %0, align 8     ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i.i.i = icmp ult ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %.not3.i.i.i.i.i, label %bb.r, label %stbi__zget8.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 1
  store ptr %i.bv, ptr %0, align 8
  %i.bw = load i8, ptr %.val.i.i.i.i.i, align 1
  %i.bx = zext i8 %i.bw to i32
  br label %stbi__zget8.exit.i.i.i.i

stbi__zget8.exit.i.i.i.i:                         ; preds = %bb.r, %bb.q
  %i.by = phi i32 [ %i.bx, %bb.r ], [ 0, %bb.q ]
  %i.bz = shl i32 %i.by, %i.bs
  %i.ca = or i32 %i.bz, %i.bt                     ; 3 uses
  store i32 %i.ca, ptr %i.y, align 8
  %i.cb = add nsw i32 %i.bs, 8                    ; 3 uses
  store i32 %i.cb, ptr %i.x, align 8
  %i.cc = icmp slt i32 %i.bs, 17
  br i1 %i.cc, label %.preheader.i, label %stbi__zreceive.exit.i.i

stbi__zreceive.exit.i.i:                          ; preds = %stbi__zget8.exit.i.i.i.i, %bb.p, %bb.o
  %i.cd = phi i32 [ %i.bp, %bb.o ], [ %i.bs, %bb.p ], [ %i.cb, %stbi__zget8.exit.i.i.i.i ]
  %i.ce = phi i32 [ %i.bo, %bb.o ], [ %i.bt, %bb.p ], [ %i.ca, %stbi__zget8.exit.i.i.i.i ]
  %i.cf = lshr i32 %i.ce, %i.bq                   ; 2 uses
  store i32 %i.cf, ptr %i.y, align 8
  %i.cg = sub nsw i32 %i.cd, %i.bq                ; 2 uses
  store i32 %i.cg, ptr %i.x, align 8
  br label %bb.s

bb.s:                                             ; preds = %stbi__zreceive.exit.i.i, %bb.n
  %.promoted.i.i = phi i32 [ %i.cf, %stbi__zreceive.exit.i.i ], [ %i.bo, %bb.n ] ; 2 uses
  %.pr.i.i = phi i32 [ %i.cg, %stbi__zreceive.exit.i.i ], [ %i.bp, %bb.n ] ; 6 uses
  %i.ch = icmp sgt i32 %.pr.i.i, 0
  br i1 %i.ch, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.s
  %i.ci = add nsw i32 %.pr.i.i, -1                ; 3 uses
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = add nuw nsw i32 %i.cj, 1
  %wide.trip.count.i = zext nneg i32 %i.ck to i64 ; 3 uses
  %xtraiter482 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.cl = icmp ult i32 %.pr.i.i, 25
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i, 1073741820
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.t ] ; 5 uses
  %i.cm = phi i32 [ %.promoted.i.i, %.lr.ph.i.i.new ], [ 0, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.t ]
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  store i8 %i.cn, ptr %i.co, align 2
  %i.cp = lshr i32 %i.cm, 8
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.cq, ptr %i.cs, align 1
  %i.ct = lshr i32 %i.cm, 16
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %i.cu, ptr %i.cw, align 2
  %i.cx = lshr i32 %i.cm, 24
  %i.cy = trunc nuw i32 %i.cx to i8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  store i8 %i.cy, ptr %i.da, align 1
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod483.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %bb.v, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ 0, %.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter482, 0
  tail call void @llvm.assume(i1 %lcmp.mod486)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.u ] ; 3 uses
  %i.db = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.de, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.dc = trunc i32 %i.db to i8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.epil
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = lshr i32 %i.db, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter482
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.u, !llvm.loop !37

.epilog-lcssa:                                    ; preds = %bb.u
  %i.df = icmp samesign ult i64 %indvars.iv.i.i.epil, 3
  br label %bb.v

bb.v:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %indvars.iv.i.i.lcssa = phi i1 [ false, %.unr-lcssa ], [ %i.df, %.epilog-lcssa ]
  %.lcssa480 = phi i32 [ 0, %.unr-lcssa ], [ %i.de, %.epilog-lcssa ]
  %i.dg = add nsw i32 %.pr.i.i, -8
  %i.dh = and i32 %i.ci, -8
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = and i32 %i.ci, -8
  %i.dk = sub nsw i32 %.pr.i.i, %i.dj
  store i32 %.lcssa480, ptr %i.y, align 8
  store i32 %i.di, ptr %i.x, align 8
  %.not90.i.i = icmp eq i32 %i.dk, 8
  br i1 %.not90.i.i, label %.preheader.i.i, label %stbi__parse_uncompressed_block.exit.thread.i

.thread.i.i:                                      ; preds = %bb.s
  %i.dl = icmp slt i32 %.pr.i.i, 0
  br i1 %i.dl, label %stbi__parse_uncompressed_block.exit.thread.i, label %.lr.ph49.i.i

.preheader.i.i:                                   ; preds = %bb.v
  br i1 %indvars.iv.i.i.lcssa, label %.lr.ph49.i.i, label %._crit_edge50.i.i

.lr.ph49.i.i:                                     ; preds = %.preheader.i.i, %.thread.i.i
  %.0.lcssa7981.i.i = phi i64 [ %wide.trip.count.i, %.preheader.i.i ], [ 0, %.thread.i.i ] ; 5 uses
  %.val2.i.i32.i = load ptr, ptr %i.aa, align 8   ; 3 uses
  %.promoted51.i.i = load ptr, ptr %0, align 8    ; 5 uses
  %xtraiter487 = and i64 %.0.lcssa7981.i.i, 1
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph49.i.i
  %.not3.i.i33.i.prol = icmp ult ptr %.promoted51.i.i, %.val2.i.i32.i
  br i1 %.not3.i.i33.i.prol, label %bb.w, label %stbi__zget8.exit.i34.i.prol

bb.w:                                             ; preds = %.prol.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %.promoted51.i.i, i64 1 ; 2 uses
  store ptr %i.dm, ptr %0, align 8
  %i.dn = load i8, ptr %.promoted51.i.i, align 1
  br label %stbi__zget8.exit.i34.i.prol

stbi__zget8.exit.i34.i.prol:                      ; preds = %bb.w, %.prol.preheader
  %i.do = phi ptr [ %i.dm, %bb.w ], [ %.promoted51.i.i, %.prol.preheader ]
  %i.dp = phi i8 [ %i.dn, %bb.w ], [ 0, %.prol.preheader ]
  %indvars.iv.next63.i.i.prol = add nuw nsw i64 %.0.lcssa7981.i.i, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa7981.i.i
  store i8 %i.dp, ptr %i.dq, align 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %stbi__zget8.exit.i34.i.prol, %.lr.ph49.i.i
  %indvars.iv62.i.i.unr = phi i64 [ %.0.lcssa7981.i.i, %.lr.ph49.i.i ], [ %indvars.iv.next63.i.i.prol, %stbi__zget8.exit.i34.i.prol ]
  %.unr490 = phi ptr [ %.promoted51.i.i, %.lr.ph49.i.i ], [ %i.do, %stbi__zget8.exit.i34.i.prol ]
  %6 = icmp eq i64 %.0.lcssa7981.i.i, 3
  br i1 %6, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new

.lr.ph49.i.i.new:                                 ; preds = %.prol.loopexit, %stbi__zget8.exit.i34.i.1
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i.1, %stbi__zget8.exit.i34.i.1 ], [ %indvars.iv62.i.i.unr, %.prol.loopexit ] ; 3 uses
  %7 = phi ptr [ %8, %stbi__zget8.exit.i34.i.1 ], [ %.unr490, %.prol.loopexit ] ; 4 uses
  %.not3.i.i33.i = icmp ult ptr %7, %.val2.i.i32.i
  br i1 %.not3.i.i33.i, label %bb.x, label %stbi__zget8.exit.i34.i

bb.x:                                             ; preds = %.lr.ph49.i.i.new
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  store ptr %i.dr, ptr %0, align 8
  %i.ds = load i8, ptr %7, align 1
  br label %stbi__zget8.exit.i34.i

stbi__zget8.exit.i34.i:                           ; preds = %bb.x, %.lr.ph49.i.i.new
  %i.dt = phi ptr [ %i.dr, %bb.x ], [ %7, %.lr.ph49.i.i.new ] ; 4 uses
  %i.du = phi i8 [ %i.ds, %bb.x ], [ 0, %.lr.ph49.i.i.new ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv62.i.i
  store i8 %i.du, ptr %i.dv, align 1
  %.not3.i.i33.i.1 = icmp ult ptr %i.dt, %.val2.i.i32.i
  br i1 %.not3.i.i33.i.1, label %bb.y, label %stbi__zget8.exit.i34.i.1

bb.y:                                             ; preds = %stbi__zget8.exit.i34.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  store ptr %i.dw, ptr %0, align 8
  %i.dx = load i8, ptr %i.dt, align 1
  br label %stbi__zget8.exit.i34.i.1

stbi__zget8.exit.i34.i.1:                         ; preds = %bb.y, %stbi__zget8.exit.i34.i
  %8 = phi ptr [ %i.dw, %bb.y ], [ %i.dt, %stbi__zget8.exit.i34.i ]
  %i.dy = phi i8 [ %i.dx, %bb.y ], [ 0, %stbi__zget8.exit.i34.i ]
  %indvars.iv.next63.i.i.1 = add nuw nsw i64 %indvars.iv62.i.i, 2 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv62.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 1
  store i8 %i.dy, ptr %i.dz, align 1
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next63.i.i.1, 4
  br i1 %exitcond.not.i.i.1, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new

._crit_edge50.i.i:                                ; preds = %.prol.loopexit, %stbi__zget8.exit.i34.i.1, %.preheader.i.i
  %i.ea = load i16, ptr %i.c, align 2             ; 3 uses
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = load i16, ptr %i.ad, align 2
  %i.ed = xor i16 %i.ec, %i.ea
  %.not33.i.i = icmp eq i16 %i.ed, -1
  br i1 %.not33.i.i, label %bb.z, label %stbi__parse_uncompressed_block.exit.thread.i

bb.z:                                             ; preds = %._crit_edge50.i.i
  %i.ee = load ptr, ptr %0, align 8               ; 2 uses
  %i.ef = zext i16 %i.ea to i64                   ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = load ptr, ptr %i.aa, align 8
  %i.ei = icmp ugt ptr %i.eg, %i.eh
  br i1 %i.ei, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ef
  %i.ek = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.el = icmp ugt ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.ab, label %stbi__parse_uncompressed_block.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.em = load i32, ptr %i.i, align 8
  %.not.i.i35.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i35.i, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.en = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.eo = ptrtoint ptr %i.ae to i64
  %i.ep = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 2 uses
  %i.er = trunc i64 %i.eq to i32                  ; 2 uses
  %i.es = xor i32 %i.er, -1
  %i.et = icmp ugt i32 %i.eb, %i.es
  br i1 %i.et, label %stbi__parse_uncompressed_block.exit.thread.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ac
  %i.eu = ptrtoint ptr %i.ek to i64
  %i.ev = sub i64 %i.eu, %i.ep
  %i.ew = trunc i64 %i.ev to i32                  ; 3 uses
  %i.ex = add i32 %i.er, %i.eb                    ; 2 uses
  %i.ey = icmp ugt i32 %i.ex, %i.ew
  br i1 %i.ey, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ad
  %.028.i.i.i = phi i32 [ %i.fa, %bb.ad ], [ %i.ew, %.preheader.i.i.i ] ; 2 uses
  %i.ez = icmp slt i32 %.028.i.i.i, 0
  br i1 %i.ez, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.fa = shl nuw i32 %.028.i.i.i, 1              ; 3 uses
  %i.fb = icmp ugt i32 %i.ex, %i.fa
  br i1 %i.fb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ad, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.ew, %.preheader.i.i.i ], [ %i.fa, %bb.ad ]
  %i.fc = zext i32 %.0.lcssa.i.i.i to i64         ; 2 uses
  %i.fd = tail call ptr @realloc(ptr noundef %i.en, i64 noundef %i.fc) #54 ; 4 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %stbi__parse_uncompressed_block.exit.thread.i, label %stbi__zexpand.exit.i.i

stbi__zexpand.exit.i.i:                           ; preds = %._crit_edge.i.i.i
  store ptr %i.fd, ptr %i.d, align 8
  %i.ff = and i64 %i.eq, 4294967295
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ff ; 2 uses
  store ptr %i.fg, ptr %i.e, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store ptr %i.fh, ptr %i.h, align 8
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %stbi__parse_uncompressed_block.exit.i

stbi__parse_uncompressed_block.exit.thread.i:     ; preds = %._crit_edge.i.i.i, %bb.ac, %bb.ab, %bb.z, %._crit_edge50.i.i, %.thread.i.i, %bb.v, %.lr.ph.i.i.i
  %.str.131.sink.i = phi ptr [ @.str.104, %.lr.ph.i.i.i ], [ @.str.131, %.thread.i.i ], [ @.str.104, %._crit_edge.i.i.i ], [ @.str.104, %bb.ac ], [ @.str.133, %bb.ab ], [ @.str.131, %._crit_edge50.i.i ], [ @.str.131, %bb.v ], [ @.str.132, %bb.z ]
  store ptr %.str.131.sink.i, ptr @stbi__g_failure_reason, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  br label %stbi__parse_zlib.exit

stbi__parse_uncompressed_block.exit.i:            ; preds = %stbi__zexpand.exit.i.i, %bb.aa
  %i.fi = phi ptr [ %.pre.i.i, %stbi__zexpand.exit.i.i ], [ %i.ee, %bb.aa ]
  %i.fj = phi ptr [ %i.fg, %stbi__zexpand.exit.i.i ], [ %i.ae, %bb.aa ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fi, i64 %i.ef, i1 false)
  %i.fk = load ptr, ptr %0, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ef
  store ptr %i.fl, ptr %0, align 8
  %i.fm = load ptr, ptr %i.e, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ef ; 2 uses
  store ptr %i.fn, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  br label %stbi__parse_huffman_block.exit.thread.i

bb.ae:                                            ; preds = %stbi__zreceive.exit31.i
  %i.fo = tail call fastcc i32 @stbi__zbuild_huffman(ptr noundef %i.ab, ptr noundef nonnull @stbi__zdefault_length, i32 noundef 288)
  %.not19.i = icmp eq i32 %i.fo, 0
  br i1 %.not19.i, label %stbi__parse_zlib.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = tail call fastcc i32 @stbi__zbuild_huffman(ptr noundef %i.ac, ptr noundef nonnull @stbi__zdefault_distance, i32 noundef 32)
  %.not20.i = icmp eq i32 %i.fp, 0
  br i1 %.not20.i, label %stbi__parse_zlib.exit, label %bb.bq

default.unreachable:                              ; preds = %stbi__zreceive.exit31.i
  unreachable

bb.ag:                                            ; preds = %stbi__zreceive.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.fq = icmp slt i32 %i.bk, 7
  br i1 %i.fq, label %.preheader170.i, label %stbi__zreceive.exit.i37.i

.preheader170.i:                                  ; preds = %bb.ag, %stbi__zget8.exit.i.i.i49.i
  %i.fr = phi i32 [ %i.ga, %stbi__zget8.exit.i.i.i49.i ], [ %i.bp, %bb.ag ] ; 5 uses
  %i.fs = phi i32 [ %i.fz, %stbi__zget8.exit.i.i.i49.i ], [ %i.bo, %bb.ag ] ; 3 uses
  %.highbits.i.i.i44.i = lshr i32 %i.fs, %i.fr
  %.not.i.i.i45.i = icmp eq i32 %.highbits.i.i.i44.i, 0
  br i1 %.not.i.i.i45.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader170.i
  %i.ft = load ptr, ptr %i.aa, align 8
  store ptr %i.ft, ptr %0, align 8
  br label %stbi__zreceive.exit.i37.i

bb.ai:                                            ; preds = %.preheader170.i
  %.val.i.i.i.i46.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i.i47.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i.i48.i = icmp ult ptr %.val.i.i.i.i46.i, %.val2.i.i.i.i47.i
  br i1 %.not3.i.i.i.i48.i, label %bb.aj, label %stbi__zget8.exit.i.i.i49.i

bb.aj:                                            ; preds = %bb.ai
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i46.i, i64 1
  store ptr %i.fu, ptr %0, align 8
  %i.fv = load i8, ptr %.val.i.i.i.i46.i, align 1
  %i.fw = zext i8 %i.fv to i32
  br label %stbi__zget8.exit.i.i.i49.i

stbi__zget8.exit.i.i.i49.i:                       ; preds = %bb.aj, %bb.ai
  %i.fx = phi i32 [ %i.fw, %bb.aj ], [ 0, %bb.ai ]
  %i.fy = shl i32 %i.fx, %i.fr
  %i.fz = or i32 %i.fy, %i.fs                     ; 3 uses
  store i32 %i.fz, ptr %i.y, align 8
  %i.ga = add nsw i32 %i.fr, 8                    ; 3 uses
  store i32 %i.ga, ptr %i.x, align 8
  %i.gb = icmp slt i32 %i.fr, 17
  br i1 %i.gb, label %.preheader170.i, label %stbi__zreceive.exit.i37.i

stbi__zreceive.exit.i37.i:                        ; preds = %stbi__zget8.exit.i.i.i49.i, %bb.ah, %bb.ag
  %i.gc = phi i32 [ %i.bp, %bb.ag ], [ %i.fr, %bb.ah ], [ %i.ga, %stbi__zget8.exit.i.i.i49.i ] ; 2 uses
  %i.gd = phi i32 [ %i.bo, %bb.ag ], [ %i.fs, %bb.ah ], [ %i.fz, %stbi__zget8.exit.i.i.i49.i ] ; 2 uses
  %i.ge = and i32 %i.gd, 31
  %i.gf = lshr i32 %i.gd, 5                       ; 3 uses
  store i32 %i.gf, ptr %i.y, align 8
  %i.gg = add nsw i32 %i.gc, -5                   ; 3 uses
  store i32 %i.gg, ptr %i.x, align 8
  %i.gh = add nuw nsw i32 %i.ge, 257              ; 3 uses
  %i.gi = icmp slt i32 %i.gc, 10
  br i1 %i.gi, label %.preheader169.i, label %stbi__zreceive.exit69.i.i

.preheader169.i:                                  ; preds = %stbi__zreceive.exit.i37.i, %stbi__zget8.exit.i.i68.i.i
  %i.gj = phi i32 [ %i.gs, %stbi__zget8.exit.i.i68.i.i ], [ %i.gg, %stbi__zreceive.exit.i37.i ] ; 5 uses
  %i.gk = phi i32 [ %i.gr, %stbi__zget8.exit.i.i68.i.i ], [ %i.gf, %stbi__zreceive.exit.i37.i ] ; 3 uses
  %.highbits.i.i63.i.i = lshr i32 %i.gk, %i.gj
  %.not.i.i64.i.i = icmp eq i32 %.highbits.i.i63.i.i, 0
  br i1 %.not.i.i64.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader169.i
  %i.gl = load ptr, ptr %i.aa, align 8
  store ptr %i.gl, ptr %0, align 8
  br label %stbi__zreceive.exit69.i.i

bb.al:                                            ; preds = %.preheader169.i
  %.val.i.i.i65.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i66.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i67.i.i = icmp ult ptr %.val.i.i.i65.i.i, %.val2.i.i.i66.i.i
  br i1 %.not3.i.i.i67.i.i, label %bb.am, label %stbi__zget8.exit.i.i68.i.i

bb.am:                                            ; preds = %bb.al
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i.i.i65.i.i, i64 1
  store ptr %i.gm, ptr %0, align 8
  %i.gn = load i8, ptr %.val.i.i.i65.i.i, align 1
  %i.go = zext i8 %i.gn to i32
  br label %stbi__zget8.exit.i.i68.i.i

stbi__zget8.exit.i.i68.i.i:                       ; preds = %bb.am, %bb.al
  %i.gp = phi i32 [ %i.go, %bb.am ], [ 0, %bb.al ]
  %i.gq = shl i32 %i.gp, %i.gj
  %i.gr = or i32 %i.gq, %i.gk                     ; 3 uses
  store i32 %i.gr, ptr %i.y, align 8
  %i.gs = add nsw i32 %i.gj, 8                    ; 3 uses
  store i32 %i.gs, ptr %i.x, align 8
  %i.gt = icmp slt i32 %i.gj, 17
  br i1 %i.gt, label %.preheader169.i, label %stbi__zreceive.exit69.i.i

stbi__zreceive.exit69.i.i:                        ; preds = %stbi__zget8.exit.i.i68.i.i, %bb.ak, %stbi__zreceive.exit.i37.i
  %i.gu = phi i32 [ %i.gg, %stbi__zreceive.exit.i37.i ], [ %i.gj, %bb.ak ], [ %i.gs, %stbi__zget8.exit.i.i68.i.i ] ; 2 uses
  %i.gv = phi i32 [ %i.gf, %stbi__zreceive.exit.i37.i ], [ %i.gk, %bb.ak ], [ %i.gr, %stbi__zget8.exit.i.i68.i.i ] ; 2 uses
  %i.gw = and i32 %i.gv, 31
  %i.gx = lshr i32 %i.gv, 5                       ; 3 uses
  store i32 %i.gx, ptr %i.y, align 8
  %i.gy = add nsw i32 %i.gu, -5                   ; 3 uses
  store i32 %i.gy, ptr %i.x, align 8
end_hunk_0
