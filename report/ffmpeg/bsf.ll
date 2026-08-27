Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bsf?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
begin_hunk_0_@av_bsf_list_parse_str:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.s = call ptr @av_opt_next(ptr noundef %i.r, ptr noundef null) #6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not28.i.i = icmp eq ptr %i.s, null
  br i1 %.not28.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68
  store ptr %i.t, ptr %i.b, align 16, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.v = call i32 @av_opt_set_from_string(ptr noundef %i.u, ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #6 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br i1 %i.w, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %._crit_edge.i.i
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %._crit_edge.i.i ], [ %.pre.pre32.i.i, %bb.j ], [ %.pre.pre32.i.i, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = call i32 @av_dynarray_add_nofree(ptr noundef %i.i, ptr noundef nonnull %i.x, ptr noundef %.pre.i.i) #6 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.thread.i.i, label %bb.l

.thread.i.i:                                      ; preds = %bb.k, %bb.j
  %.01831.i.i = phi i32 [ %i.y, %bb.k ], [ %i.v, %bb.j ]
  call void @av_bsf_free(ptr noundef nonnull %i.a)
  br label %bsf_parse_single.exit.thread15

bsf_parse_single.exit.thread15:                   ; preds = %bb.d, %bb.e, %.thread.i.i
  %.019.i.i.ph = phi i32 [ %.01831.i.i, %.thread.i.i ], [ -1179861752, %bb.d ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.sink.split

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @av_free(ptr noundef %i.h) #6
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !67  ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !71
  %.not11 = icmp eq i8 %i.ab, 0
  br i1 %.not11, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !67
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !71
  %.not12 = icmp eq i8 %i.ad, 0
  br i1 %.not12, label %.critedge, label %.preheader, !llvm.loop !72

.critedge:                                        ; preds = %bb.l, %bb.m
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !57  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !59
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9
  store ptr %i.aj, ptr %1, align 8, !tbaa !9
  call void @av_freep(ptr noundef nonnull %i.ae) #6
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 0, ptr %i.al, align 8, !tbaa !59
  br label %av_bsf_list_finalize.exit

bb.o:                                             ; preds = %.critedge
  %i.am = call i32 @av_bsf_alloc(ptr noundef nonnull @list_bsf, ptr noundef %1) ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %1, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !66
  br label %av_bsf_list_finalize.exit

av_bsf_list_finalize.exit:                        ; preds = %bb.n, %bb.p
  call void @av_freep(ptr noundef nonnull %i.e) #6
  br label %av_bsf_list_free.exit

.sink.split:                                      ; preds = %.preheader, %bsf_parse_single.exit.thread15
  %.08.ph.ph = phi i32 [ %.019.i.i.ph, %bsf_parse_single.exit.thread15 ], [ -22, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @av_free(ptr noundef %i.h) #6
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  %.08.ph = phi i32 [ %i.am, %bb.o ], [ %.08.ph.ph, %.sink.split ] ; 2 uses
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !57  ; 4 uses
  %.not.i13 = icmp eq ptr %i.ax, null
  br i1 %.not.i13, label %av_bsf_list_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !59
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.bb = phi ptr [ %i.be, %.lr.ph.i ], [ %i.ax, %.preheader.i ]
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  call void @av_bsf_free(ptr noundef %i.bd)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !57  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !59
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !63

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.lcssa.i = phi ptr [ %i.ax, %.preheader.i ], [ %i.be, %.lr.ph.i ]
  %i.bj = load ptr, ptr %.lcssa.i, align 8, !tbaa !62
  call void @av_free(ptr noundef %i.bj) #6
  call void @av_freep(ptr noundef nonnull %i.e) #6
  br label %av_bsf_list_free.exit

av_bsf_list_free.exit:                            ; preds = %._crit_edge.i, %bb.q, %av_bsf_list_finalize.exit, %bb.c, %bb.b
  %.09 = phi i32 [ 0, %av_bsf_list_finalize.exit ], [ -12, %bb.c ], [ %i.f, %bb.b ], [ %.08.ph, %bb.q ], [ %.08.ph, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @av_bsf_get_null_filter(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @av_bsf_alloc(ptr noundef nonnull @ff_null_bsf, ptr noundef %0)
  ret i32 %i.a
}

declare ptr @av_get_token(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @bsf_to_name(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @bsf_child_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address_is_null) %1) #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @ff_bsf_child_class_iterate(ptr noundef) #2

declare ptr @av_bsf_get_by_name(ptr noundef) local_unnamed_addr #2

declare ptr @av_opt_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @av_opt_set_from_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_opt_set_dict2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @bsf_list_init(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.0.031 = load i64, ptr %i.d, align 8      ; 2 uses
  %.032 = load ptr, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.i = phi ptr [ %.pre, %.lr.ph ], [ %i.y, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.035 = phi ptr [ %.032, %.lr.ph ], [ %.0, %bb.d ]
  %.sroa.0.034 = phi i64 [ %.sroa.0.031, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = tail call i32 @avcodec_parameters_copy(ptr noundef %i.m, ptr noundef %.035) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %.sroa.0.034, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.w = tail call i32 @av_bsf_init(ptr noundef %i.v) ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !9   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.sroa.0.0 = load i64, ptr %i.ac, align 8       ; 2 uses
  %.0 = load ptr, ptr %i.ab, align 8, !tbaa !73   ; 2 uses
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !66
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.031, %bb.a ], [ %.sroa.0.0, %bb.d ]
  %.0.lcssa = phi ptr [ %.032, %bb.a ], [ %.0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.lcssa, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aj = tail call i32 @avcodec_parameters_copy(ptr noundef %i.ai, ptr noundef %.0.lcssa) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %._crit_edge
  %.023 = phi i32 [ %i.aj, %._crit_edge ], [ %i.w, %bb.c ], [ %i.n, %bb.b ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal i32 @bsf_list_filter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not.i4458 = icmp eq ptr %1, null
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load i32, ptr %i.e, align 4, !tbaa !75
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.c, label %ff_bsf_get_packet_ref.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  %.not6.i = icmp eq ptr %i.p, null
  br i1 %.not6.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !54
  %.not7.i = icmp eq i32 %i.r, 0
  br i1 %.not7.i, label %ff_bsf_get_packet_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @av_packet_move_ref(ptr noundef %1, ptr noundef nonnull %i.n) #6
  br label %ff_bsf_get_packet_ref.exit

bb.f:                                             ; preds = %.backedge, %.preheader
  %i.s = phi i32 [ %storemerge, %.backedge ], [ %.pre, %.preheader ] ; 2 uses
  %.not34 = icmp eq i32 %i.s, 0
  br i1 %.not34, label %bb.g, label %ff_bsf_get_packet_ref.exit43

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.g, align 8, !tbaa !49
  %.not.i39.not = icmp eq i32 %i.t, 0
  br i1 %.not.i39.not, label %bb.h, label %ff_bsf_get_packet_ref.exit43.thread.thread

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51
  %.not6.i41 = icmp eq ptr %i.w, null
  br i1 %.not6.i41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !54
  %.not7.i42 = icmp eq i32 %i.y, 0
  br i1 %.not7.i42, label %ff_bsf_get_packet_ref.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @av_packet_move_ref(ptr noundef %1, ptr noundef nonnull %i.u) #6
  br label %ff_bsf_get_packet_ref.exit43.thread.thread

ff_bsf_get_packet_ref.exit43:                     ; preds = %bb.f
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.aa = add i32 %i.s, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.ai = tail call i32 %i.ah(ptr noundef %i.ad, ptr noundef %1) #6, !inline_history !76 ; 5 uses
  %i.aj = icmp eq i32 %i.ai, -11
  br i1 %i.aj, label %ff_bsf_get_packet_ref.exit43.thread48, label %ff_bsf_get_packet_ref.exit43.thread

ff_bsf_get_packet_ref.exit43.thread48:            ; preds = %ff_bsf_get_packet_ref.exit43
  %.pre69 = load i32, ptr %i.e, align 4, !tbaa !75 ; 2 uses
  %.not38 = icmp eq i32 %.pre69, 0
  br i1 %.not38, label %ff_bsf_get_packet_ref.exit, label %bb.k

bb.k:                                             ; preds = %ff_bsf_get_packet_ref.exit43.thread48
  %i.ak = add i32 %.pre69, -1
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %av_bsf_send_packet.exit
  %storemerge = phi i32 [ %i.ak, %bb.k ], [ %i.bi, %av_bsf_send_packet.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !75
  br label %bb.f

ff_bsf_get_packet_ref.exit43.thread:              ; preds = %ff_bsf_get_packet_ref.exit43
  %.not36.not = icmp eq i32 %i.ai, -541478725     ; 2 uses
  %i.al = icmp slt i32 %i.ai, 0
  %or.cond = xor i1 %.not36.not, %i.al
  br i1 %or.cond, label %ff_bsf_get_packet_ref.exit, label %ff_bsf_get_packet_ref.exit43.thread.thread

ff_bsf_get_packet_ref.exit43.thread.thread:       ; preds = %bb.j, %bb.g, %ff_bsf_get_packet_ref.exit43.thread
  %.not36.not57 = phi i1 [ %.not36.not, %ff_bsf_get_packet_ref.exit43.thread ], [ true, %bb.g ], [ false, %bb.j ] ; 2 uses
  %.0294756 = phi i32 [ %i.ai, %ff_bsf_get_packet_ref.exit43.thread ], [ -541478725, %bb.g ], [ 0, %bb.j ]
  %i.am = load i32, ptr %i.e, align 4, !tbaa !75  ; 2 uses
  %i.an = load i32, ptr %i.c, align 8, !tbaa !66
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %bb.l, label %bb.v

bb.l:                                             ; preds = %ff_bsf_get_packet_ref.exit43.thread.thread
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9  ; 4 uses
  %.not.i44 = or i1 %.not.i4458, %.not36.not57
  br i1 %.not.i44, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !51
  %.not18.i = icmp eq ptr %i.at, null
  br i1 %.not18.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.au = load i32, ptr %i.j, align 8, !tbaa !54
  %.not19.i = icmp eq i32 %i.au, 0
  br i1 %.not19.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @av_packet_unref(ptr noundef nonnull %1) #6
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.o, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store i32 1, ptr %i.av, align 8, !tbaa !49
  br label %av_bsf_send_packet.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !49
  %.not20.i = icmp eq i32 %i.ax, 0
  br i1 %.not20.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.as, i32 noundef 16, ptr noundef nonnull @.str.4) #6
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51
  %.not21.i = icmp eq ptr %i.bb, null
  br i1 %.not21.i, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54
  %.not22.i = icmp eq i32 %i.bd, 0
  br i1 %.not22.i, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.be = tail call i32 @av_packet_make_refcounted(ptr noundef nonnull %1) #6 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !29
  tail call void @av_packet_move_ref(ptr noundef %i.bg, ptr noundef nonnull %1) #6
  br label %av_bsf_send_packet.exit

.loopexit:                                        ; preds = %bb.r, %bb.s, %bb.t, %bb.q
  %.0.i45.ph = phi i32 [ -22, %bb.q ], [ -11, %bb.r ], [ -11, %bb.s ], [ %i.be, %bb.t ]
  tail call void @av_packet_unref(ptr noundef nonnull %1) #6
  br label %ff_bsf_get_packet_ref.exit

av_bsf_send_packet.exit:                          ; preds = %bb.u, %.critedge.i
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !75
  %i.bi = add i32 %i.bh, 1
  br label %.backedge

bb.v:                                             ; preds = %ff_bsf_get_packet_ref.exit43.thread.thread
  %.029. = select i1 %.not36.not57, i32 %.0294756, i32 0
  br label %ff_bsf_get_packet_ref.exit
end_hunk_0
