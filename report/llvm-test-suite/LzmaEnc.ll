Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LzmaEnc?download=true
inline.NumInlined: 106
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 67
begin_hunk_0_@LzmaEnc_Encode2:.preheader
  %.not22 = icmp eq i32 %i.v, 0
  br i1 %.not22, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.w = tail call fastcc i32 @LzmaEnc_CodeOneBlock(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %bb.c, %bb.b, %.lr.ph.split.us, %bb.a, %.preheader
  %.017 = phi i32 [ %i.b, %.preheader ], [ %i.i, %bb.a ], [ 0, %.lr.ph.split.us ], [ 0, %.lr.ph.split ], [ 10, %bb.b ], [ %i.w, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !87
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %LzmaEnc_Finish.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @MatchFinderMt_ReleaseStream(ptr noundef nonnull %i.z) #14
  br label %LzmaEnc_Finish.exit

LzmaEnc_Finish.exit:                              ; preds = %._crit_edge, %bb.d
  ret i32 %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 6) i32 @LzmaEnc_WriteProperties(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252344
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 40 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !99
  %i.d = icmp ult i64 %i.c, 5
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 5, ptr %2, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 213564
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = mul i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 213560
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53
  %i.j = add i32 %i.g, %i.i
  %i.k = mul i32 %i.j, 9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 213556
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52
  %i.n = add i32 %i.k, %i.m
  %i.o = trunc i32 %i.n to i8
  store i8 %i.o, ptr %1, align 1, !tbaa !21
  %.not = icmp ugt i32 %i.b, 4096
  br i1 %.not, label %bb.ao, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.ao
  %.not.1 = icmp ugt i32 %i.b, 8192
  br i1 %.not.1, label %bb.d, label %.loopexit.loopexit

bb.d:                                             ; preds = %bb.c
  %.not27.1 = icmp ugt i32 %i.b, 12288
  br i1 %.not27.1, label %bb.e, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.d
  %.not.2 = icmp ugt i32 %i.b, 16384
  br i1 %.not.2, label %bb.f, label %.loopexit.loopexit

bb.f:                                             ; preds = %bb.e
  %.not27.2 = icmp ugt i32 %i.b, 24576
  br i1 %.not27.2, label %bb.g, label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.f
  %.not.3 = icmp ugt i32 %i.b, 32768
  br i1 %.not.3, label %bb.h, label %.loopexit.loopexit

bb.h:                                             ; preds = %bb.g
  %.not27.3 = icmp ugt i32 %i.b, 49152
  br i1 %.not27.3, label %bb.i, label %.loopexit.loopexit

bb.i:                                             ; preds = %bb.h
  %.not.4 = icmp ugt i32 %i.b, 65536
  br i1 %.not.4, label %bb.j, label %.loopexit.loopexit

bb.j:                                             ; preds = %bb.i
  %.not27.4 = icmp ugt i32 %i.b, 98304
  br i1 %.not27.4, label %bb.k, label %.loopexit.loopexit

bb.k:                                             ; preds = %bb.j
  %.not.5 = icmp ugt i32 %i.b, 131072
  br i1 %.not.5, label %bb.l, label %.loopexit.loopexit

bb.l:                                             ; preds = %bb.k
  %.not27.5 = icmp ugt i32 %i.b, 196608
  br i1 %.not27.5, label %bb.m, label %.loopexit.loopexit

bb.m:                                             ; preds = %bb.l
  %.not.6 = icmp ugt i32 %i.b, 262144
  br i1 %.not.6, label %bb.n, label %.loopexit.loopexit

bb.n:                                             ; preds = %bb.m
  %.not27.6 = icmp ugt i32 %i.b, 393216
  br i1 %.not27.6, label %bb.o, label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.n
  %.not.7 = icmp ugt i32 %i.b, 524288
  br i1 %.not.7, label %bb.p, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %.not27.7 = icmp ugt i32 %i.b, 786432
  br i1 %.not27.7, label %bb.q, label %.loopexit.loopexit

bb.q:                                             ; preds = %bb.p
  %.not.8 = icmp ugt i32 %i.b, 1048576
  br i1 %.not.8, label %bb.r, label %.loopexit.loopexit

bb.r:                                             ; preds = %bb.q
  %.not27.8 = icmp ugt i32 %i.b, 1572864
  br i1 %.not27.8, label %bb.s, label %.loopexit.loopexit

bb.s:                                             ; preds = %bb.r
  %.not.9 = icmp ugt i32 %i.b, 2097152
  br i1 %.not.9, label %bb.t, label %.loopexit.loopexit

bb.t:                                             ; preds = %bb.s
  %.not27.9 = icmp ugt i32 %i.b, 3145728
  br i1 %.not27.9, label %bb.u, label %.loopexit.loopexit

bb.u:                                             ; preds = %bb.t
  %.not.10 = icmp ugt i32 %i.b, 4194304
  br i1 %.not.10, label %bb.v, label %.loopexit.loopexit

bb.v:                                             ; preds = %bb.u
  %.not27.10 = icmp ugt i32 %i.b, 6291456
  br i1 %.not27.10, label %bb.w, label %.loopexit.loopexit

bb.w:                                             ; preds = %bb.v
  %.not.11 = icmp ugt i32 %i.b, 8388608
  br i1 %.not.11, label %bb.x, label %.loopexit.loopexit

bb.x:                                             ; preds = %bb.w
  %.not27.11 = icmp ugt i32 %i.b, 12582912
  br i1 %.not27.11, label %bb.y, label %.loopexit.loopexit

bb.y:                                             ; preds = %bb.x
  %.not.12 = icmp ugt i32 %i.b, 16777216
  br i1 %.not.12, label %bb.z, label %.loopexit.loopexit

bb.z:                                             ; preds = %bb.y
  %.not27.12 = icmp ugt i32 %i.b, 25165824
  br i1 %.not27.12, label %bb.aa, label %.loopexit.loopexit

bb.aa:                                            ; preds = %bb.z
  %.not.13 = icmp ugt i32 %i.b, 33554432
  br i1 %.not.13, label %bb.ab, label %.loopexit.loopexit

bb.ab:                                            ; preds = %bb.aa
  %.not27.13 = icmp ugt i32 %i.b, 50331648
  br i1 %.not27.13, label %bb.ac, label %.loopexit.loopexit

bb.ac:                                            ; preds = %bb.ab
  %.not.14 = icmp ugt i32 %i.b, 67108864
  br i1 %.not.14, label %bb.ad, label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
  %.not27.14 = icmp ugt i32 %i.b, 100663296
  br i1 %.not27.14, label %bb.ae, label %.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ad
  %.not.15 = icmp ugt i32 %i.b, 134217728
  br i1 %.not.15, label %bb.af, label %.loopexit.loopexit

bb.af:                                            ; preds = %bb.ae
  %.not27.15 = icmp ugt i32 %i.b, 201326592
  br i1 %.not27.15, label %bb.ag, label %.loopexit.loopexit

bb.ag:                                            ; preds = %bb.af
  %.not.16 = icmp ugt i32 %i.b, 268435456
  br i1 %.not.16, label %bb.ah, label %.loopexit.loopexit

bb.ah:                                            ; preds = %bb.ag
  %.not27.16 = icmp ugt i32 %i.b, 402653184
  br i1 %.not27.16, label %bb.ai, label %.loopexit.loopexit

bb.ai:                                            ; preds = %bb.ah
  %.not.17 = icmp ugt i32 %i.b, 536870912
  br i1 %.not.17, label %bb.aj, label %.loopexit.loopexit

bb.aj:                                            ; preds = %bb.ai
  %.not27.17 = icmp ugt i32 %i.b, 805306368
  br i1 %.not27.17, label %bb.ak, label %.loopexit.loopexit

bb.ak:                                            ; preds = %bb.aj
  %.not.18 = icmp ugt i32 %i.b, 1073741824
  br i1 %.not.18, label %bb.al, label %.loopexit.loopexit

bb.al:                                            ; preds = %bb.ak
  %.not27.18 = icmp ugt i32 %i.b, 1610612736
  br i1 %.not27.18, label %bb.am, label %.loopexit.loopexit

bb.am:                                            ; preds = %bb.al
  %.not.19 = icmp ugt i32 %i.b, -2147483648
  br i1 %.not.19, label %bb.an, label %.loopexit.loopexit

bb.an:                                            ; preds = %bb.am
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.b, i32 -1073741824)
  br label %.loopexit.loopexit

bb.ao:                                            ; preds = %bb.b
  %.not27 = icmp ugt i32 %i.b, 6144
  br i1 %.not27, label %bb.c, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.ao, %bb.b
  %.0 = phi i32 [ 50331648, %bb.ab ], [ 4096, %bb.b ], [ 6144, %bb.ao ], [ 8192, %bb.c ], [ 12288, %bb.d ], [ %spec.select, %bb.an ], [ 16384, %bb.e ], [ 24576, %bb.f ], [ -2147483648, %bb.am ], [ 32768, %bb.g ], [ 49152, %bb.h ], [ 201326592, %bb.af ], [ 65536, %bb.i ], [ 98304, %bb.j ], [ 1610612736, %bb.al ], [ 131072, %bb.k ], [ 196608, %bb.l ], [ 1073741824, %bb.ak ], [ 262144, %bb.m ], [ 393216, %bb.n ], [ 67108864, %bb.ac ], [ 524288, %bb.o ], [ 786432, %bb.p ], [ 805306368, %bb.aj ], [ 1048576, %bb.q ], [ 1572864, %bb.r ], [ 536870912, %bb.ai ], [ 2097152, %bb.s ], [ 3145728, %bb.t ], [ 100663296, %bb.ad ], [ 4194304, %bb.u ], [ 6291456, %bb.v ], [ 402653184, %bb.ah ], [ 8388608, %bb.w ], [ 12582912, %bb.x ], [ 268435456, %bb.ag ], [ 16777216, %bb.y ], [ 25165824, %bb.z ], [ 134217728, %bb.ae ], [ 33554432, %bb.aa ] ; 4 uses
  %3 = trunc i32 %.0 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %3, ptr %i.p, align 1, !tbaa !21
  %4 = lshr i32 %.0, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %5, ptr %6, align 1, !tbaa !21
  %7 = lshr i32 %.0, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %8, ptr %9, align 1, !tbaa !21
  %10 = lshr i32 %.0, 24
  %11 = trunc nuw i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %11, ptr %12, align 1, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.023 = phi i32 [ 5, %bb.a ], [ 0, %.loopexit.loopexit ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEnc_MemEncode(ptr noundef initializes((1624, 1632), (1660, 1672), (213552, 213556), (252288, 252296), (252312, 252316), (252332, 252336), (252340, 252344), (252352, 252356)) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #6 {
bb.a:
  %9 = alloca %struct.CSeqOutStreamBuf, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  store i64 %4, ptr %i.c, align 8, !tbaa !92
  store ptr @MyWrite, ptr %9, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !98
  %i.e = load i64, ptr %2, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252312
  store i32 %5, ptr %i.h, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 252288
  store ptr %9, ptr %i.i, align 8, !tbaa !102
  store i32 1, ptr %i.a, align 4, !tbaa !90
  store ptr %3, ptr %i.b, align 8, !tbaa !91
  store i64 %4, ptr %i.c, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252352
  store i32 1, ptr %i.j, align 8, !tbaa !83
  %i.k = call fastcc i32 @LzmaEnc_AllocAndInit(ptr noundef %0, i32 noundef 0, ptr noundef %7, ptr noundef %8) ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call fastcc i32 @LzmaEnc_Encode2(ptr noundef nonnull %0, ptr noundef %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.k, %bb.a ]
  %i.n = load i64, ptr %i.f, align 8, !tbaa !100
  %i.o = load i64, ptr %2, align 8, !tbaa !99
  %i.p = sub i64 %i.o, %i.n
  store i64 %i.p, ptr %2, align 8, !tbaa !99
  %i.q = load i32, ptr %i.g, align 8, !tbaa !101
  %.not = icmp eq i32 %i.q, 0
  %.0. = select i1 %.not, i32 %.0, i32 7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  ret i32 %.0.
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEncode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(none) %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #6 {
bb.a:
  %11 = alloca %struct.CSeqOutStreamBuf, align 8  ; 7 uses
  %i.a = load ptr, ptr %9, align 8, !tbaa !62
  %i.b = tail call ptr %i.a(ptr noundef nonnull %9, i64 noundef 291032) #14, !inline_history !198 ; 18 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %LzmaEnc_Create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @LzmaEnc_Construct(ptr noundef nonnull %i.b)
  %i.c = tail call i32 @LzmaEnc_SetProps(ptr noundef nonnull %i.b, ptr noundef %4) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @LzmaEnc_WriteProperties(ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef %6) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1660
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1624
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1664 ; 2 uses
  store i64 %3, ptr %i.i, align 8, !tbaa !92
  store ptr @MyWrite, ptr %11, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.j, align 8, !tbaa !98
  %i.k = load i64, ptr %1, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 252312
  store i32 %7, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 252288
  store ptr %11, ptr %i.o, align 8, !tbaa !102
  store i32 1, ptr %i.g, align 4, !tbaa !90
  store ptr %2, ptr %i.h, align 8, !tbaa !91
  store i64 %3, ptr %i.i, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 252352
  store i32 1, ptr %i.p, align 8, !tbaa !83
  %i.q = call fastcc i32 @LzmaEnc_AllocAndInit(ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef nonnull %9, ptr noundef %10) ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %LzmaEnc_MemEncode.exit

bb.e:                                             ; preds = %bb.d
  %i.s = call fastcc i32 @LzmaEnc_Encode2(ptr noundef nonnull %i.b, ptr noundef %8)
  br label %LzmaEnc_MemEncode.exit

LzmaEnc_MemEncode.exit:                           ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.s, %bb.e ], [ %i.q, %bb.d ]
  %i.t = load i64, ptr %i.l, align 8, !tbaa !100
  %i.u = load i64, ptr %1, align 8, !tbaa !99
  %i.v = sub i64 %i.u, %i.t
  store i64 %i.v, ptr %1, align 8, !tbaa !99
  %i.w = load i32, ptr %i.m, align 8, !tbaa !101
  %.not.i26 = icmp eq i32 %i.w, 0
  %.0..i = select i1 %.not.i26, i32 %.0.i, i32 7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %LzmaEnc_MemEncode.exit, %bb.b
  %.0 = phi i32 [ %.0..i, %LzmaEnc_MemEncode.exit ], [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @MatchFinderMt_Destruct(ptr noundef nonnull %i.x, ptr noundef %10) #14
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1560
  call void @MatchFinder_Free(ptr noundef nonnull %i.y, ptr noundef %10) #14
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 213576 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  call void %i.aa(ptr noundef nonnull %9, ptr noundef %i.ac) #14, !inline_history !199
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 252360 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60
  call void %i.ad(ptr noundef nonnull %9, ptr noundef %i.af) #14, !inline_history !199
  store ptr null, ptr %i.ab, align 8, !tbaa !48
  store ptr null, ptr %i.ae, align 8, !tbaa !60
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 252280 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  call void %i.ag(ptr noundef nonnull %9, ptr noundef %i.ai) #14, !inline_history !197
  store ptr null, ptr %i.ah, align 8, !tbaa !64
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !63
  call void %i.aj(ptr noundef nonnull %9, ptr noundef nonnull %i.b) #14, !inline_history !200
  br label %LzmaEnc_Create.exit.thread

LzmaEnc_Create.exit.thread:                       ; preds = %bb.a, %bb.f
  %.022 = phi i32 [ %.0, %bb.f ], [ 2, %bb.a ]
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @LenPriceEnc_UpdateTable(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18436 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !202  ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw [1088 x i8], ptr %i.c, i64 %i.d ; 17 uses
  %i.f = load i16, ptr %0, align 4, !tbaa !73
  %i.g = lshr i16 %i.f, 4                         ; 2 uses
  %i.h = zext nneg i16 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 8 uses
  %i.k = xor i16 %i.g, 127
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !72
  %i.q = lshr i16 %i.p, 4                         ; 2 uses
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = add i32 %i.t, %i.n                       ; 8 uses
  %i.v = xor i16 %i.q, 127
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  %i.z = add i32 %i.y, %i.n
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = shl i32 %1, 3
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac ; 7 uses
  %wide.trip.count.i = zext i32 %i.b to i64
  %exitcond.not.i = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i, label %LenEnc_SetPrices.exit, label %.lr.ph.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.6.i
  %i.ae = xor i64 %i.dv, 127
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14
  %i.ah = load i32, ptr %i.dz, align 4, !tbaa !14
  %i.ai = load i32, ptr %i.dd, align 4, !tbaa !14
  %i.aj = add i32 %i.ag, %i.j
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %i.al, ptr %i.am, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ac ; 7 uses
  %exitcond75.not.i = icmp ult i32 %i.b, 9
  br i1 %exitcond75.not.i, label %LenEnc_SetPrices.exit, label %.lr.ph.i41.i
end_hunk_0
