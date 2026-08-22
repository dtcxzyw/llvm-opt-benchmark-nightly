Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264dec?download=true
inline.NumInlined: 42
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@h264_er_decode_mb:bb.a
  %i.l = load i32, ptr %i.k, align 16, !tbaa !86
  %.not = icmp ult i32 %1, %i.l
  %spec.store.select = select i1 %.not, i32 %1, i32 0 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 22656 ; 2 uses
  %i.n = sext i32 %spec.store.select to i64
  %i.o = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99
  %.not30 = icmp eq ptr %i.p, null
  br i1 %.not30, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.r, i32 noundef 48, ptr noundef nonnull @.str.2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.store.select, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %i.s = sext i32 %.0 to i64
  %i.t = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !141
  %i.w = and i32 %i.v, 3
  %.not31 = icmp eq i32 %i.w, 3
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.y, i32 noundef 48, ptr noundef nonnull @.str.3) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28624
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !140
  %i.ac = shl nsw i32 %i.ab, 2
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = trunc i32 %.0 to i16
  %i.ag = mul i16 %i.af, 257                      ; 2 uses
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !131
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 29068
  %i.aj = mul i32 %.0, 16843009                   ; 4 uses
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 29076
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !86
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 29084
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 29092
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !86
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 28784
  %i.ao = load i32, ptr %4, align 4, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !86
  %i.ar = and i32 %i.ao, 65535
  %i.as = shl i32 %i.aq, 16
  %i.at = or disjoint i32 %i.as, %i.ar
  %i.au = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.av = shufflevector <4 x i32> %i.au, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.av, ptr %i.an, align 16, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 28816
  store <4 x i32> %i.av, ptr %i.aw, align 16, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 28848
  store <4 x i32> %i.av, ptr %i.ax, align 16, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 28880
  store <4 x i32> %i.av, ptr %i.ay, align 16, !tbaa !86
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 21064
  store i32 0, ptr %i.az, align 8, !tbaa !143
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 21068
  store i32 0, ptr %i.ba, align 4, !tbaa !144
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !89
  tail call void @ff_h264_hl_decode_mb(ptr noundef nonnull %0, ptr noundef %i.bb) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare i32 @ff_er_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ff_h264_slice_context_init(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((32, 40), (29072, 29073), (29080, 29081), (29088, 29089), (29112, 29113), (29120, 29121), (29128, 29129)) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 29128
  store i8 -2, ptr %i.a, align 1, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 29120
  store i8 -2, ptr %i.b, align 1, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 29112
  store i8 -2, ptr %i.c, align 1, !tbaa !145
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 29088
  store i8 -2, ptr %i.d, align 1, !tbaa !145
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 29080
  store i8 -2, ptr %i.e, align 1, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 29072
  store i8 -2, ptr %i.f, align 1, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 35944
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.g, ptr %i.h, align 16, !tbaa !146
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_h264_flush_change(ptr noundef initializes((34992, 34996), (35828, 35832)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34992
  store i32 -2147483648, ptr %i.a, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 35828
  store i32 1, ptr %i.b, align 4, !tbaa !148
  tail call void @ff_h264_remove_all_refs(ptr noundef %0) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34140
  store i32 0, ptr %i.c, align 4, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 34128
  store i32 65536, ptr %i.e, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34132
  store i32 -1, ptr %i.f, align 4, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34920
  store <4 x i32> splat (i32 -2147483648), ptr %i.g, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 34936
  store <4 x i32> splat (i32 -2147483648), ptr %i.h, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 34952
  store <4 x i32> splat (i32 -2147483648), ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34968
  store <4 x i32> splat (i32 -2147483648), ptr %i.j, align 8, !tbaa !86
  store i32 -1, ptr %i.d, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28496 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !153  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 700
  store i32 0, ptr %i.m, align 4, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 34776 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !155  ; 2 uses
  %.not2628 = icmp eq ptr %i.o, null
  br i1 %.not2628, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ]
  %i.p = phi ptr [ %i.v, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %.030 = phi i32 [ %.1, %bb.d ], [ 0, %bb.b ]    ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !153
  %.not27 = icmp eq ptr %i.p, %i.q
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %.030, 1
  %i.s = sext i32 %.030 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  store ptr %i.p, ptr %i.t, align 8, !tbaa !155
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.1 = phi i32 [ %i.r, %bb.c ], [ %.030, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !155  ; 2 uses
  %.not26 = icmp eq ptr %i.v, null
  br i1 %.not26, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !156

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.w = sext i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.loopexit ]
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa
  store ptr null, ptr %i.x, align 8, !tbaa !155
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 29264
  tail call void @ff_h264_unref_picture(ptr noundef nonnull %i.y) #9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 31072
  store i32 0, ptr %i.z, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 35836
  store i32 -1, ptr %i.aa, align 4, !tbaa !157
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 35840
  store i32 0, ptr %i.ab, align 8, !tbaa !158
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 35824
  store i32 0, ptr %i.ac, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 35808
  store i32 1, ptr %i.ad, align 8, !tbaa !160
  ret void
}

declare void @ff_h264_unref_picture(ptr noundef) local_unnamed_addr #3

declare i32 @ff_h264_update_thread_context(ptr noundef, ptr noundef) #3

declare i32 @ff_h264_update_thread_context_for_user(ptr noundef, ptr noundef) #3

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @h264_decode_init(ptr noundef %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 31 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 35856
  store i32 -1, ptr %i.d, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 35928
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !86
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.i = load i32, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 30120
  store i32 %i.i, ptr %i.j, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !164
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 30116
  store i32 %i.l, ptr %i.m, align 4, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 34128
  store i32 65536, ptr %i.n, align 8, !tbaa !150
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 35836
  store <2 x i32> <i32 -1, i32 0>, ptr %i.o, align 4, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 34144
  store i32 -1, ptr %i.p, align 8, !tbaa !152
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 36568
  store i32 -1, ptr %i.q, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 36556
  store i32 -1, ptr %i.r, align 4, !tbaa !167
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 34992
  store i32 -2147483648, ptr %i.s, align 8, !tbaa !147
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 34920
  store <4 x i32> splat (i32 -2147483648), ptr %i.t, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 34936
  store <4 x i32> splat (i32 -2147483648), ptr %i.u, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 34952
  store <4 x i32> splat (i32 -2147483648), ptr %i.v, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 34968
  store <4 x i32> splat (i32 -2147483648), ptr %i.w, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 36416
  tail call void @ff_h264_sei_uninit(ptr noundef nonnull %i.x) #9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !168  ; 2 uses
  %i.aa = and i32 %i.z, 1
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call ptr @av_refstruct_pool_alloc(i64 noundef 4, i32 noundef 0) #9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 37000
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !169
  %.not53.i = icmp eq ptr %i.ab, null
  br i1 %.not53.i, label %h264_init_context.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !168
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %i.ad = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.z, %bb.a ]
  %i.ae = and i32 %i.ad, 2
  %.not54.i = icmp eq i32 %i.ae, 0
  br i1 %.not54.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !170
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = phi i32 [ %i.ag, %bb.d ], [ 1, %bb.c ]  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 30032 ; 3 uses
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !88
  %i.aj = sext i32 %i.ah to i64
  %i.ak = tail call noalias ptr @av_calloc(i64 noundef %i.aj, i64 noundef 35552) #9 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 30024 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %.not55.i = icmp eq ptr %i.ak, null
  br i1 %.not55.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ai, align 8, !tbaa !88
  br label %h264_init_context.exit.thread

bb.g:                                             ; preds = %h264_init_pic.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 36
  br i1 %exitcond.not.i, label %bb.i, label %bb.h, !llvm.loop !171

bb.h:                                             ; preds = %bb.g, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw [760 x i8], ptr %i.am, i64 %indvars.iv.i ; 2 uses
  %i.ao = tail call ptr @av_frame_alloc() #9      ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !172
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %h264_init_context.exit.thread, label %h264_init_pic.exit.i

h264_init_pic.exit.i:                             ; preds = %bb.h
  %i.ap = tail call ptr @av_frame_alloc() #9      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !173
  %.not4.i.i = icmp eq ptr %i.ap, null
  br i1 %.not4.i.i, label %h264_init_context.exit.thread, label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 28504
  %i.as = tail call ptr @av_frame_alloc() #9      ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !172
  %.not.i56.i = icmp eq ptr %i.as, null
  br i1 %.not.i56.i, label %h264_init_context.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call ptr @av_frame_alloc() #9      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 28544
  store ptr %i.at, ptr %i.au, align 8, !tbaa !173
  %.not4.i57.i = icmp eq ptr %i.at, null
  br i1 %.not4.i57.i, label %h264_init_context.exit.thread, label %h264_init_pic.exit60.i

h264_init_pic.exit60.i:                           ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 29264
  %i.aw = tail call ptr @av_frame_alloc() #9      ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !172
  %.not.i61.i = icmp eq ptr %i.aw, null
  br i1 %.not.i61.i, label %h264_init_context.exit.thread, label %bb.k

bb.k:                                             ; preds = %h264_init_pic.exit60.i
  %i.ax = tail call ptr @av_frame_alloc() #9      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 29304
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !173
  %.not4.i62.i = icmp eq ptr %i.ax, null
  br i1 %.not4.i62.i, label %h264_init_context.exit.thread, label %h264_init_pic.exit65.preheader.i

h264_init_pic.exit65.preheader.i:                 ; preds = %bb.k
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !88 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %h264_init_context.exit

.lr.ph.i:                                         ; preds = %h264_init_pic.exit65.preheader.i
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !89
  %wide.trip.count.i = zext nneg i32 %i.az to i64
  br label %h264_init_pic.exit65.i

h264_init_pic.exit65.i:                           ; preds = %h264_init_pic.exit65.i, %.lr.ph.i
  %indvars.iv78.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next79.i, %h264_init_pic.exit65.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [35552 x i8], ptr %i.bb, i64 %indvars.iv78.i
  store ptr %i.b, ptr %i.bc, align 16, !tbaa !174
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count.i
  br i1 %exitcond81.not.i, label %h264_init_context.exit, label %h264_init_pic.exit65.i, !llvm.loop !175

h264_init_context.exit:                           ; preds = %h264_init_pic.exit65.i, %h264_init_pic.exit65.preheader.i
  %i.bd = tail call i32 @pthread_once(ptr noundef nonnull @h264_vlc_init, ptr noundef nonnull @ff_h264_decode_init_vlc) #9
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %h264_init_context.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18) #9
  br label %h264_init_context.exit.thread

bb.m:                                             ; preds = %h264_init_context.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !176
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !177
  %.not44 = icmp eq i32 %i.bg, 0
  br i1 %.not44, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !182 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !183 ; 2 uses
  %.not45 = icmp eq ptr %i.bl, null
  br i1 %.not45, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 31768
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 31752
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 31756
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !184
  %i.br = tail call i32 @ff_h264_decode_extradata(ptr noundef nonnull %i.bl, i32 noundef %i.bi, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, i32 noundef %i.bq, ptr noundef nonnull %0) #9 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = load i32, ptr %i.bp, align 8, !tbaa !184
  %i.bu = and i32 %i.bt, 8                        ; 2 uses
  %.not46 = icmp eq i32 %i.bu, 0
  %i.bv = xor i32 %i.bu, 24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef %i.bv, ptr noundef nonnull @.str.19) #9
  br i1 %.not46, label %bb.r, label %h264_init_context.exit.thread

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.q, %bb.p, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 34080
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29 ; 3 uses
  %.not47 = icmp eq ptr %i.bx, null
  br i1 %.not47, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1208
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !185
  %.not48 = icmp eq i32 %i.bz, 0
  br i1 %.not48, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 172 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !186
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 1212
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.cf = icmp slt i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !186
end_hunk_0
