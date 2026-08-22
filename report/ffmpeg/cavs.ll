Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cavs?download=true
inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ff_cavs_next_mb:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @ff_cavs_init_pic(ptr nofree noundef captures(none) initializes((824, 840), (848, 872), (888, 896), (920, 944), (952, 976), (984, 992), (1016, 1040), (1048, 1072), (1116, 1120), (1128, 1132), (1152, 1168), (1176, 1184)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  store i64 -281470681743360, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 -281470681743360, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 -281470681743360, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 984
  store i64 -281470681743360, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i64 -281470681743360, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i64 -281470681743360, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.h = load i64, ptr @ff_cavs_dir_mv, align 2   ; 8 uses
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i64 %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 %i.h, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i64 %i.h, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i64 %i.h, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i32 -1, ptr %i.p, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i32 -1, ptr %i.q, align 4, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !66  ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 848
  store ptr %i.t, ptr %i.u, align 16, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr %i.w, ptr %i.x, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %i.z, ptr %i.aa, align 16, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i64 %i.ad, ptr %i.ae, align 16, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !53
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !34
  %i.aj = shl i32 %i.ac, 3                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !53
  %i.al = add i32 %i.aj, 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1180
  store i32 %i.al, ptr %i.am, align 4, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_cavs_init_top_lines(ptr noundef initializes((880, 888), (1080, 1104), (1144, 1152), (1392, 1416), (1616, 1624)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @av_mallocz(i64 noundef %i.c) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !50
  %i.f = load i32, ptr %i.a, align 8, !tbaa !64
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @av_calloc(i64 noundef %i.i, i64 noundef 8) #14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = load i32, ptr %i.a, align 8, !tbaa !64
  %i.m = shl nsw i32 %i.l, 1
  %i.n = or disjoint i32 %i.m, 1
  %i.o = sext i32 %i.n to i64
  %i.p = tail call noalias ptr @av_calloc(i64 noundef %i.o, i64 noundef 8) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  store ptr %i.p, ptr %i.q, align 16, !tbaa !63
  %i.r = load i32, ptr %i.a, align 8, !tbaa !64
  %i.s = shl nsw i32 %i.r, 1
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @av_calloc(i64 noundef %i.t, i64 noundef 4) #14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !54
  %i.w = load i32, ptr %i.a, align 8, !tbaa !64
  %i.x = add nsw i32 %i.w, 1
  %i.y = sext i32 %i.x to i64
  %i.z = tail call noalias ptr @av_calloc(i64 noundef %i.y, i64 noundef 16) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 16, !tbaa !9
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !64
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call noalias ptr @av_calloc(i64 noundef %i.ac, i64 noundef 10) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !27
  %i.af = load i32, ptr %i.a, align 8, !tbaa !64
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call noalias ptr @av_calloc(i64 noundef %i.ag, i64 noundef 10) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 16, !tbaa !29
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 780 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !67
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = tail call noalias ptr @av_calloc(i64 noundef %i.an, i64 noundef 32) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !68
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !64
  %i.ar = load i32, ptr %i.ak, align 4, !tbaa !67
  %i.as = mul nsw i32 %i.ar, %i.aq
  %i.at = sext i32 %i.as to i64
  %i.au = tail call noalias ptr @av_mallocz(i64 noundef %i.at) #14 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store ptr %i.au, ptr %i.av, align 16, !tbaa !69
  %i.aw = load ptr, ptr %i.e, align 16, !tbaa !50
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !63
  %.not38 = icmp eq ptr %i.ax, null
  br i1 %.not38, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %i.q, align 16, !tbaa !63
  %.not39 = icmp eq ptr %i.ay, null
  br i1 %.not39, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !54
  %.not40 = icmp eq ptr %i.az, null
  br i1 %.not40, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %i.aa, align 16, !tbaa !9
  %.not41 = icmp eq ptr %i.ba, null
  br i1 %.not41, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !27
  %.not42 = icmp eq ptr %i.bb, null
  br i1 %.not42, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.ai, align 16, !tbaa !29
  %.not43 = icmp eq ptr %i.bc, null
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !68
  %.not44 = icmp eq ptr %i.bd, null
  %.not45 = icmp eq ptr %i.au, null
  %or.cond = select i1 %.not44, i1 true, i1 %.not45
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @av_freep(ptr noundef nonnull %i.e) #14
  tail call void @av_freep(ptr noundef nonnull %i.k) #14
  tail call void @av_freep(ptr noundef nonnull %i.q) #14
  tail call void @av_freep(ptr noundef nonnull %i.v) #14
  tail call void @av_freep(ptr noundef nonnull %i.aa) #14
  tail call void @av_freep(ptr noundef nonnull %i.ae) #14
  tail call void @av_freep(ptr noundef nonnull %i.ai) #14
  tail call void @av_freep(ptr noundef nonnull %i.ap) #14
  tail call void @av_freep(ptr noundef nonnull %i.av) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i32 [ -12, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #4

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -12, 1) i32 @ff_cavs_init(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @ff_blockdsp_init(ptr noundef nonnull %i.d) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @ff_h264chroma_init(ptr noundef nonnull %i.e, i32 noundef 8) #14
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.f, i32 noundef 8) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  tail call void @ff_cavsdsp_init(ptr noundef nonnull %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  %i.i = load i32, ptr %i.h, align 8, !tbaa !86
  call void @ff_init_scantable_permutation(ptr noundef nonnull %i.a, i32 noundef %i.i) #14
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1328
  call void @ff_permute_scantable(ptr noundef nonnull %i.j, ptr noundef nonnull @ff_zigzag_direct, ptr noundef nonnull %i.a) #14
  store ptr %0, ptr %i.c, align 16, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.k, align 8, !tbaa !87
  %i.l = call ptr @av_frame_alloc() #14
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 704 ; 2 uses
  store ptr %i.l, ptr %i.m, align 16, !tbaa !66
  %i.n = call ptr @av_frame_alloc() #14
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 2 uses
  store ptr %i.n, ptr %i.o, align 16, !tbaa !57
  %i.p = call ptr @av_frame_alloc() #14           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  store ptr %i.p, ptr %i.q, align 16, !tbaa !57
  %i.r = load ptr, ptr %i.m, align 16, !tbaa !66
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.o, align 16, !tbaa !57
  %.not35 = icmp eq ptr %i.s, null
  %.not36 = icmp eq ptr %i.p, null
  %or.cond = select i1 %.not35, i1 true, i1 %.not36
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1168
  store <2 x i32> <i32 0, i32 8>, ptr %i.t, align 16, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 1496
  store <4 x ptr> <ptr @intra_pred_vert, ptr @intra_pred_horiz, ptr @intra_pred_lp, ptr @intra_pred_down_left>, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1528
  store <4 x ptr> <ptr @intra_pred_down_right, ptr @intra_pred_lp_left, ptr @intra_pred_lp_top, ptr @intra_pred_dc_128>, ptr %i.v, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1560
  store <4 x ptr> <ptr @intra_pred_lp, ptr @intra_pred_horiz, ptr @intra_pred_vert, ptr @intra_pred_plane>, ptr %i.w, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1592
  store ptr @intra_pred_lp_left, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1600
  store ptr @intra_pred_lp_top, ptr %i.y, align 16, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1608
  store ptr @intra_pred_dc_128, ptr %i.z, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 944
  store i64 -281470681743360, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1040
  store i64 -281470681743360, ptr %i.ab, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -12, %bb.b ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare void @ff_blockdsp_init(ptr noundef) local_unnamed_addr #4

declare void @ff_h264chroma_init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_videodsp_init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_cavsdsp_init(ptr noundef) local_unnamed_addr #4

declare void @ff_init_scantable_permutation(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_permute_scantable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @av_frame_alloc() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @intra_pred_vert(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i64 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i64, ptr %i.a, align 1, !tbaa !25   ; 8 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !88
  %i.c = getelementptr inbounds i8, ptr %0, i64 %3
  store i64 %i.b, ptr %i.c, align 8, !tbaa !88
  %i.d = shl nsw i64 %3, 1
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store i64 %i.b, ptr %i.e, align 8, !tbaa !88
  %i.f = mul nsw i64 %3, 3
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store i64 %i.b, ptr %i.g, align 8, !tbaa !88
  %i.h = shl nsw i64 %3, 2
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  store i64 %i.b, ptr %i.i, align 8, !tbaa !88
  %i.j = mul nsw i64 %3, 5
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  store i64 %i.b, ptr %i.k, align 8, !tbaa !88
  %i.l = mul nsw i64 %3, 6
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  store i64 %i.b, ptr %i.m, align 8, !tbaa !88
  %i.n = mul nsw i64 %3, 7
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  store i64 %i.b, ptr %i.o, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @intra_pred_horiz(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25
  %i.c = zext i8 %i.b to i64
  %i.d = mul nuw i64 %i.c, 72340172838076673
  store i64 %i.d, ptr %0, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25
  %i.g = zext i8 %i.f to i64
  %i.h = mul nuw i64 %i.g, 72340172838076673
  %i.i = getelementptr inbounds i8, ptr %0, i64 %3
  store i64 %i.h, ptr %i.i, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !25
  %i.l = zext i8 %i.k to i64
  %i.m = mul nuw i64 %i.l, 72340172838076673
  %i.n = shl nsw i64 %3, 1
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  store i64 %i.m, ptr %i.o, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25
  %i.r = zext i8 %i.q to i64
  %i.s = mul nuw i64 %i.r, 72340172838076673
  %i.t = mul nsw i64 %3, 3
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i64 %i.s, ptr %i.u, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !25
  %i.x = zext i8 %i.w to i64
  %i.y = mul nuw i64 %i.x, 72340172838076673
  %i.z = shl nsw i64 %3, 2
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.ad = zext i8 %i.ac to i64
  %i.ae = mul nuw i64 %i.ad, 72340172838076673
  %i.af = mul nsw i64 %3, 5
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !25
  %i.aj = zext i8 %i.ai to i64
  %i.ak = mul nuw i64 %i.aj, 72340172838076673
  %i.al = mul nsw i64 %3, 6
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !88
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %i.ap = zext i8 %i.ao to i64
  %i.aq = mul nuw i64 %i.ap, 72340172838076673
  %i.ar = mul nsw i64 %3, 7
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !88
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @intra_pred_lp(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 8 uses
  %i.s = mul nsw i64 %3, %indvars.iv
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 8 uses
  %i.u = load i8, ptr %1, align 1, !tbaa !25
  %i.v = zext i8 %i.u to i16
  %i.w = load i8, ptr %i.a, align 1, !tbaa !25
  %i.x = zext i8 %i.w to i16
  %i.y = shl nuw nsw i16 %i.x, 1
  %i.z = load i8, ptr %i.b, align 1, !tbaa !25
  %i.aa = zext i8 %i.z to i16
  %i.ab = add nuw nsw i16 %i.v, 2
  %i.ac = add nuw nsw i16 %i.ab, %i.y
  %i.ad = add nuw nsw i16 %i.ac, %i.aa
  %i.ae = lshr i16 %i.ad, 2
  %i.af = load i8, ptr %i.p, align 1, !tbaa !25
  %i.ag = zext i8 %i.af to i16
  %i.ah = load i8, ptr %i.q, align 1, !tbaa !25
  %i.ai = zext i8 %i.ah to i16
  %i.aj = shl nuw nsw i16 %i.ai, 1
  %i.ak = load i8, ptr %i.r, align 1, !tbaa !25
  %i.al = zext i8 %i.ak to i16
  %i.am = add nuw nsw i16 %i.ag, 2
  %i.an = add nuw nsw i16 %i.am, %i.aj
  %i.ao = add nuw nsw i16 %i.an, %i.al
  %i.ap = lshr i16 %i.ao, 2
  %i.aq = add nuw nsw i16 %i.ap, %i.ae
  %i.ar = lshr i16 %i.aq, 1
  %i.as = trunc nuw i16 %i.ar to i8
  store i8 %i.as, ptr %i.t, align 1, !tbaa !25
  %i.at = load i8, ptr %i.a, align 1, !tbaa !25
  %i.au = zext i8 %i.at to i16
  %i.av = load i8, ptr %i.b, align 1, !tbaa !25
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw nsw i16 %i.aw, 1
  %i.ay = load i8, ptr %i.c, align 1, !tbaa !25
  %i.az = zext i8 %i.ay to i16
  %i.ba = add nuw nsw i16 %i.au, 2
  %i.bb = add nuw nsw i16 %i.ba, %i.ax
  %i.bc = add nuw nsw i16 %i.bb, %i.az
  %i.bd = lshr i16 %i.bc, 2
  %i.be = load i8, ptr %i.p, align 1, !tbaa !25
  %i.bf = zext i8 %i.be to i16
  %i.bg = load i8, ptr %i.q, align 1, !tbaa !25
  %i.bh = zext i8 %i.bg to i16
  %i.bi = shl nuw nsw i16 %i.bh, 1
  %i.bj = load i8, ptr %i.r, align 1, !tbaa !25
  %i.bk = zext i8 %i.bj to i16
  %i.bl = add nuw nsw i16 %i.bf, 2
  %i.bm = add nuw nsw i16 %i.bl, %i.bi
  %i.bn = add nuw nsw i16 %i.bm, %i.bk
  %i.bo = lshr i16 %i.bn, 2
  %i.bp = add nuw nsw i16 %i.bo, %i.bd
  %i.bq = lshr i16 %i.bp, 1
  %i.br = trunc nuw i16 %i.bq to i8
  %i.bs = getelementptr i8, ptr %i.t, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !25
end_hunk_0
