Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/channel_layout?download=true
inline.NumInlined: 39
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@av_channel_layout_channel_from_index:bb.a
  %i.z = add i32 %.3, -1
  %.not28.1 = icmp eq i32 %.3, 0
  br i1 %.not28.1, label %.loopexit.loopexit.split.loop.exit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3.1 = phi i32 [ %i.z, %bb.i ], [ %.3, %bb.h ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %.loopexit, label %bb.f, !llvm.loop !1

.loopexit.loopexit.split.loop.exit.split.loop.exit: ; preds = %bb.i
  %indvars.iv.next.le = or disjoint i64 %indvars.iv, 1
  br label %.loopexit.loopexit.split.loop.exit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.g, %.loopexit.loopexit.split.loop.exit.split.loop.exit
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next.le, %.loopexit.loopexit.split.loop.exit.split.loop.exit ], [ %indvars.iv, %bb.g ]
  %i.aa = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit.split.loop.exit, %bb.b, %bb.a, %bb.d, %bb.c
  %.122 = phi i32 [ %i.r, %bb.d ], [ -1, %bb.b ], [ %i.h, %bb.c ], [ -1, %bb.a ], [ %i.aa, %.loopexit.loopexit.split.loop.exit ], [ -1, %bb.j ]
  ret i32 %.122
}

declare i64 @av_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #1

declare i32 @av_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @av_channel_layout_default(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %switch.tableidx = add i32 %1, -1               ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8432383, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !30
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.av_channel_layout_default, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @av_channel_layout_copy(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %av_channel_layout_uninit.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.c) #15
  br label %av_channel_layout_uninit.exit

av_channel_layout_uninit.exit:                    ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !35
  %i.d = load i32, ptr %1, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %av_channel_layout_uninit.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @av_malloc_array(i64 noundef %i.h, i64 noundef 32) #15 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !24
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = load i32, ptr %i.f, align 4, !tbaa !30
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %av_channel_layout_uninit.exit, %bb.d, %bb.c
  %.0 = phi i32 [ -12, %bb.c ], [ 0, %bb.d ], [ 0, %av_channel_layout_uninit.exit ]
  ret i32 %.0
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @av_channel_layout_ambisonic_order(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = and i32 %i.a, -2
  %switch = icmp eq i32 %i.b, 2
  br i1 %switch, label %bb.b, label %.thread59

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 3
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.h)
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %i.m = add nuw nsw i32 %i.l, %i.i
  %i.n = xor i32 %i.m, -1
  %i.o = add i32 %i.e, %i.n
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30   ; 3 uses
  %.not5362 = icmp sgt i32 %i.s, 0
  br i1 %.not5362, label %bb.e, label %.thread59

bb.e:                                             ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.t = load i32, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.u = add i32 %i.t, -1025
  %or.cond60.not.peel = icmp ult i32 %i.u, 1023
  br i1 %or.cond60.not.peel, label %.thread59, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %i.t, -1024
  %spec.select.peel = icmp ne i32 %i.v, 1024
  %.140.peel = sext i1 %spec.select.peel to i32   ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.s, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ 1, %bb.f ] ; 4 uses
  %.03964 = phi i32 [ %.140, %.thread ], [ %.140.peel, %bb.f ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = and i32 %i.x, -1024
  %spec.select = icmp eq i32 %i.y, 1024           ; 2 uses
  br i1 %spec.select, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %i.w, i64 -32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !26
  %i.ab = and i32 %i.aa, -1024
  %or.cond55 = icmp ne i32 %i.ab, 1024
  %i.ac = add nsw i32 %i.x, -1024
  %i.ad = zext nneg i32 %i.ac to i64
  %.not52 = icmp ne i64 %indvars.iv, %i.ad
  %or.cond = select i1 %or.cond55, i1 true, i1 %.not52
  br i1 %or.cond, label %.thread59, label %.thread

.thread:                                          ; preds = %bb.g, %.lr.ph
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %.140 = select i1 %spec.select, i32 %i.ae, i32 %.03964 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !2

.loopexit:                                        ; preds = %.thread, %bb.f, %bb.c
  %.4 = phi i32 [ %i.o, %bb.c ], [ %.140.peel, %bb.f ], [ %.140, %.thread ] ; 3 uses
  %i.af = icmp slt i32 %.4, 0
  br i1 %i.af, label %.thread59, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ag = uitofp nneg i32 %.4 to double
  %i.ah = tail call nsz double @llvm.sqrt.f64(double %i.ag)
  %i.ai = tail call nsz double @llvm.floor.f64(double %i.ah)
  %i.aj = fptosi double %i.ai to i32              ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.al = mul nsw i32 %i.ak, %i.ak
  %i.am = add nuw nsw i32 %.4, 1
  %.not54 = icmp eq i32 %i.al, %i.am
  %. = select i1 %.not54, i32 %i.aj, i32 -22
  br label %.thread59

.thread59:                                        ; preds = %bb.g, %bb.d, %bb.e, %bb.a, %bb.h, %.loopexit
  %.345 = phi i32 [ -22, %.loopexit ], [ -22, %bb.a ], [ %., %bb.h ], [ -22, %bb.e ], [ -22, %bb.d ], [ -22, %bb.g ]
  ret i32 %.345
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @av_channel_layout_describe_bprint(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.AVChannelLayout, align 8    ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.a, label %has_channel_names.exit [
    i32 1, label %.preheader
    i32 2, label %.thread
    i32 0, label %._crit_edge88
    i32 3, label %bb.aa
  ]

._crit_edge88:                                    ; preds = %bb.a
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre90 = load i32, ptr %.phi.trans.insert89, align 4, !tbaa !30
  br label %bb.z

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  switch i64 %i.c, label %has_channel_names.exit.thread66.loopexit [
    i64 4, label %bb.b
    i64 3, label %.fold.split
    i64 11, label %.fold.split105
    i64 7, label %.fold.split106
    i64 259, label %.fold.split107
    i64 263, label %.fold.split108
    i64 51, label %.fold.split109
    i64 1539, label %.fold.split110
    i64 15, label %.fold.split111
    i64 55, label %.fold.split112
    i64 1543, label %.fold.split113
    i64 271, label %.fold.split114
    i64 63, label %.fold.split115
    i64 1551, label %.fold.split116
    i64 1799, label %.fold.split117
    i64 1731, label %.fold.split118
    i64 20495, label %.fold.split119
    i64 311, label %.fold.split120
    i64 1807, label %.fold.split121
    i64 319, label %.fold.split122
    i64 1739, label %.fold.split123
    i64 1591, label %.fold.split124
    i64 1735, label %.fold.split125
    i64 1599, label %.fold.split126
    i64 255, label %.fold.split127
    i64 1743, label %.fold.split128
    i64 22031, label %.fold.split129
    i64 20543, label %.fold.split130
    i64 1847, label %.fold.split131
    i64 184371, label %.fold.split132
    i64 185871, label %.fold.split133
    i64 22079, label %.fold.split134
    i64 185919, label %.fold.split135
    i64 34359825983, label %.fold.split136
    i64 186111, label %.fold.split137
    i64 206158616319, label %.fold.split138
    i64 6442710839, label %.fold.split139
    i64 6917529027641081856, label %.fold.split140
    i64 1610612736, label %.fold.split141
    i64 2164663779327, label %.fold.split142
  ]

has_channel_names.exit.thread66.loopexit:         ; preds = %.preheader
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre87 = load i32, ptr %.phi.trans.insert86, align 4, !tbaa !30
  br label %has_channel_names.exit.thread66

.fold.split:                                      ; preds = %.preheader
  br label %bb.b

.fold.split105:                                   ; preds = %.preheader
  br label %bb.b

.fold.split106:                                   ; preds = %.preheader
  br label %bb.b

.fold.split107:                                   ; preds = %.preheader
  br label %bb.b

.fold.split108:                                   ; preds = %.preheader
  br label %bb.b

.fold.split109:                                   ; preds = %.preheader
  br label %bb.b

.fold.split110:                                   ; preds = %.preheader
  br label %bb.b

.fold.split111:                                   ; preds = %.preheader
  br label %bb.b

.fold.split112:                                   ; preds = %.preheader
  br label %bb.b

.fold.split113:                                   ; preds = %.preheader
  br label %bb.b

.fold.split114:                                   ; preds = %.preheader
  br label %bb.b

.fold.split115:                                   ; preds = %.preheader
  br label %bb.b

.fold.split116:                                   ; preds = %.preheader
  br label %bb.b

.fold.split117:                                   ; preds = %.preheader
  br label %bb.b

.fold.split118:                                   ; preds = %.preheader
  br label %bb.b

.fold.split119:                                   ; preds = %.preheader
  br label %bb.b

.fold.split120:                                   ; preds = %.preheader
  br label %bb.b

.fold.split121:                                   ; preds = %.preheader
  br label %bb.b

.fold.split122:                                   ; preds = %.preheader
  br label %bb.b

.fold.split123:                                   ; preds = %.preheader
  br label %bb.b

.fold.split124:                                   ; preds = %.preheader
  br label %bb.b

.fold.split125:                                   ; preds = %.preheader
  br label %bb.b

.fold.split126:                                   ; preds = %.preheader
  br label %bb.b

.fold.split127:                                   ; preds = %.preheader
  br label %bb.b

.fold.split128:                                   ; preds = %.preheader
  br label %bb.b

.fold.split129:                                   ; preds = %.preheader
  br label %bb.b

.fold.split130:                                   ; preds = %.preheader
  br label %bb.b

.fold.split131:                                   ; preds = %.preheader
  br label %bb.b

.fold.split132:                                   ; preds = %.preheader
  br label %bb.b

.fold.split133:                                   ; preds = %.preheader
  br label %bb.b

.fold.split134:                                   ; preds = %.preheader
  br label %bb.b

.fold.split135:                                   ; preds = %.preheader
  br label %bb.b

.fold.split136:                                   ; preds = %.preheader
  br label %bb.b

.fold.split137:                                   ; preds = %.preheader
  br label %bb.b

.fold.split138:                                   ; preds = %.preheader
  br label %bb.b

.fold.split139:                                   ; preds = %.preheader
  br label %bb.b

.fold.split140:                                   ; preds = %.preheader
  br label %bb.b

end_hunk_0
begin_hunk_1_@av_channel_layout_describe_bprint:bb.a

bb.f:                                             ; preds = %bb.h, %.lr.ph.i52
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i52 ], [ %indvars.iv.next.i55, %bb.h ] ; 2 uses
  %.01830.i = phi i64 [ 0, %.lr.ph.i52 ], [ %i.w, %bb.h ] ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %indvars.iv.i54
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %or.cond.i = icmp ult i32 %i.s, 63
  br i1 %or.cond.i, label %bb.g, label %has_channel_names.exit.thread66

bb.g:                                             ; preds = %bb.f
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 1, %i.t                  ; 2 uses
  %i.v = icmp ult i64 %.01830.i, %i.u
  br i1 %i.v, label %bb.h, label %has_channel_names.exit.thread66

bb.h:                                             ; preds = %bb.g
  %i.w = or i64 %i.u, %.01830.i                   ; 4 uses
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, %wide.trip.count.i53
  br i1 %exitcond.not.i56, label %masked_description.exit, label %bb.f, !llvm.loop !4

masked_description.exit:                          ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 1, ptr %2, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = trunc i64 %i.w to i32
  %i.z = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.y)
  %i.aa = lshr i64 %i.w, 32
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ab)
  %i.ad = add nuw nsw i32 %i.ac, %i.z
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.w, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.af, align 8, !tbaa !37
  %i.ag = call i32 @av_channel_layout_describe_bprint(ptr noundef nonnull %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %has_channel_names.exit

has_channel_names.exit.thread66:                  ; preds = %bb.e, %bb.g, %bb.f, %.preheader.i, %has_channel_names.exit.thread66.loopexit, %.loopexit
  %i.ah = phi i32 [ %i.i, %.preheader.i ], [ %i.i, %bb.g ], [ %.pre87, %has_channel_names.exit.thread66.loopexit ], [ %i.i, %.loopexit ], [ %i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not48 = icmp eq i32 %i.ah, 0
  br i1 %.not48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %has_channel_names.exit.thread66
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %i.ah) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %has_channel_names.exit.thread66
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 8 uses
  %i.al = phi i32 [ %i.aj, %.lr.ph ], [ %i.bs, %bb.x ]
  %i.am = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.am, label %av_channel_layout_channel_from_index.exit [
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !26
  br label %av_channel_layout_channel_from_index.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 3 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.as)
  %i.au = lshr i64 %i.ar, 32
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.av)
  %i.ax = add nuw nsw i32 %i.at, %i.aw
  %i.ay = sub i32 %i.al, %i.ax                    ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %.not26.i = icmp samesign ult i64 %indvars.iv, %i.az
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32
  %i.bb = sub nuw i32 %i.ba, %i.ay
  %i.bc = trunc i64 %indvars.iv to i32
  %i.bd = add i32 %i.bc, 1024
  br i1 %.not26.i, label %av_channel_layout_channel_from_index.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %i.be = phi i64 [ %i.ar, %bb.m ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.1.i58 = phi i32 [ %i.bb, %bb.m ], [ %i.an, %._crit_edge.i ]
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %indvars.iv.i59 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next.i60.1, %bb.s ] ; 5 uses
  %.231.i = phi i32 [ %.1.i58, %bb.n ], [ %.3.i.1, %bb.s ] ; 3 uses
  %i.bf = shl nuw i64 1, %indvars.iv.i59
  %i.bg = and i64 %i.bf, %i.be
  %.not27.i = icmp eq i64 %i.bg, 0
  br i1 %.not27.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add i32 %.231.i, -1
  %.not28.i = icmp eq i32 %.231.i, 0
  br i1 %.not28.i, label %.loopexit.loopexit.split.loop.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3.i = phi i32 [ %i.bh, %bb.p ], [ %.231.i, %bb.o ] ; 3 uses
  %i.bi = shl nuw i64 2, %indvars.iv.i59
  %i.bj = and i64 %i.bi, %i.be
  %.not27.i.1 = icmp eq i64 %i.bj, 0
  br i1 %.not27.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = add i32 %.3.i, -1
  %.not28.i.1 = icmp eq i32 %.3.i, 0
  br i1 %.not28.i.1, label %.loopexit.loopexit.split.loop.exit.i.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3.i.1 = phi i32 [ %i.bk, %bb.r ], [ %.3.i, %bb.q ]
  %indvars.iv.next.i60.1 = add nuw nsw i64 %indvars.iv.i59, 2 ; 2 uses
  %exitcond.not.i61.1 = icmp eq i64 %indvars.iv.next.i60.1, 64
  br i1 %exitcond.not.i61.1, label %av_channel_layout_channel_from_index.exit, label %bb.o, !llvm.loop !1

.loopexit.loopexit.split.loop.exit.i.split.loop.exit: ; preds = %bb.r
  %indvars.iv.next.i60.le = or disjoint i64 %indvars.iv.i59, 1
  br label %.loopexit.loopexit.split.loop.exit.i

.loopexit.loopexit.split.loop.exit.i:             ; preds = %bb.p, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit
  %indvars.iv.i59.lcssa = phi i64 [ %indvars.iv.next.i60.le, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit ], [ %indvars.iv.i59, %bb.p ]
  %i.bl = trunc nuw nsw i64 %indvars.iv.i59.lcssa to i32
  br label %av_channel_layout_channel_from_index.exit

av_channel_layout_channel_from_index.exit:        ; preds = %bb.s, %bb.k, %bb.l, %bb.m, %.loopexit.loopexit.split.loop.exit.i
  %.122.i = phi i32 [ %i.bd, %bb.m ], [ -1, %bb.k ], [ %i.aq, %bb.l ], [ %i.bl, %.loopexit.loopexit.split.loop.exit.i ], [ -1, %bb.s ]
  %.not50 = icmp eq i64 %indvars.iv, 0
  br i1 %.not50, label %bb.u, label %bb.t

bb.t:                                             ; preds = %av_channel_layout_channel_from_index.exit
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.22) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %av_channel_layout_channel_from_index.exit
  tail call void @av_channel_name_bprint(ptr noundef %1, i32 noundef %.122.i)
  %i.bm = load i32, ptr %0, align 8, !tbaa !29
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !24
  %.not51 = icmp eq i8 %i.br, 0
  br i1 %.not51, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.bq) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = load i32, ptr %i.ai, align 4, !tbaa !30 ; 3 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %bb.k, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.x, %bb.j
  %.lcssa = phi i32 [ %i.aj, %bb.j ], [ %i.bs, %bb.x ]
  %.not49 = icmp eq i32 %.lcssa, 0
  br i1 %.not49, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.24) #15
  br label %has_channel_names.exit

bb.z:                                             ; preds = %._crit_edge88, %._crit_edge
  %i.bv = phi i32 [ %.pre90, %._crit_edge88 ], [ 0, %._crit_edge ]
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %i.bv) #15
  br label %has_channel_names.exit

bb.aa:                                            ; preds = %bb.a
  %i.bw = tail call fastcc i32 @try_describe_ambisonic(ptr noundef %1, ptr noundef nonnull %0)
  br label %has_channel_names.exit

has_channel_names.exit:                           ; preds = %masked_description.exit, %.thread, %bb.a, %bb.aa, %bb.z, %bb.y, %bb.b
  %.143 = phi i32 [ %i.bw, %bb.aa ], [ 0, %bb.b ], [ 0, %bb.y ], [ 0, %bb.z ], [ -22, %bb.a ], [ %i.ag, %masked_description.exit ], [ 0, %.thread ]
  ret i32 %.143
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @try_describe_ambisonic(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.AVChannelLayout, align 8    ; 13 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.b = and i32 %i.a, -2
  %switch.i = icmp eq i32 %i.b, 2
  br i1 %switch.i, label %bb.b, label %av_channel_layout_ambisonic_order.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 3
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.h)
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %i.m = add nuw nsw i32 %i.l, %i.i
  %i.n = xor i32 %i.m, -1
  %i.o = add i32 %i.e, %i.n
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30   ; 3 uses
  %.not5362.i = icmp sgt i32 %i.s, 0
  br i1 %.not5362.i, label %bb.e, label %av_channel_layout_ambisonic_order.exit.thread

bb.e:                                             ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  %i.t = load i32, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.u = add i32 %i.t, -1025
  %or.cond60.not.peel.i = icmp ult i32 %i.u, 1023
  br i1 %or.cond60.not.peel.i, label %av_channel_layout_ambisonic_order.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %i.t, -1024
  %spec.select.peel.i = icmp ne i32 %i.v, 1024
  %.140.peel.i = sext i1 %spec.select.peel.i to i32 ; 2 uses
  %exitcond.peel.not.i = icmp eq i32 %i.s, 1
  br i1 %exitcond.peel.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 1, %bb.f ] ; 4 uses
  %.03964.i = phi i32 [ %.140.i, %.thread.i ], [ %.140.peel.i, %bb.f ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = and i32 %i.x, -1024
  %spec.select.i = icmp eq i32 %i.y, 1024         ; 2 uses
  br i1 %spec.select.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr i8, ptr %i.w, i64 -32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !26
  %i.ab = and i32 %i.aa, -1024
  %or.cond55.i = icmp ne i32 %i.ab, 1024
  %i.ac = add nsw i32 %i.x, -1024
  %i.ad = zext nneg i32 %i.ac to i64
  %.not52.i = icmp ne i64 %indvars.iv.i, %i.ad
  %or.cond.i = select i1 %or.cond55.i, i1 true, i1 %.not52.i
  br i1 %or.cond.i, label %av_channel_layout_ambisonic_order.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %.lr.ph.i
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32
  %.140.i = select i1 %spec.select.i, i32 %i.ae, i32 %.03964.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !2

.loopexit.i:                                      ; preds = %.thread.i, %bb.f, %bb.c
  %.4.i = phi i32 [ %i.o, %bb.c ], [ %.140.peel.i, %bb.f ], [ %.140.i, %.thread.i ] ; 3 uses
  %i.af = icmp slt i32 %.4.i, 0
  br i1 %i.af, label %av_channel_layout_ambisonic_order.exit.thread, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  %i.ag = uitofp nneg i32 %.4.i to double
  %i.ah = tail call nsz double @llvm.sqrt.f64(double %i.ag)
  %i.ai = tail call nsz double @llvm.floor.f64(double %i.ah)
  %i.aj = fptosi double %i.ai to i32              ; 4 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.al = mul nsw i32 %i.ak, %i.ak                ; 5 uses
  %i.am = add nuw nsw i32 %.4.i, 1
  %.not54.i = icmp eq i32 %i.al, %i.am
  br i1 %.not54.i, label %av_channel_layout_ambisonic_order.exit, label %av_channel_layout_ambisonic_order.exit.thread

av_channel_layout_ambisonic_order.exit:           ; preds = %bb.h
  %3 = icmp slt i32 %i.aj, 0
  br i1 %3, label %av_channel_layout_ambisonic_order.exit.thread, label %bb.i

bb.i:                                             ; preds = %av_channel_layout_ambisonic_order.exit
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.141, i32 noundef %i.aj) #15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30 ; 4 uses
  %i.ap = icmp slt i32 %i.al, %i.ao
  br i1 %i.ap, label %bb.j, label %av_channel_layout_ambisonic_order.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.aq = load i32, ptr %1, align 8, !tbaa !29
  switch i32 %i.aq, label %..lr.ph.i34_crit_edge [
    i32 3, label %bb.k
    i32 2, label %.lr.ph.i27
  ]

..lr.ph.i34_crit_edge:                            ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  %.pre46 = zext nneg i32 %i.ao to i64
  br label %.lr.ph.i34

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %2, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24 ; 3 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.at)
  %i.av = lshr i64 %i.as, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %i.ay = add nuw nsw i32 %i.ax, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.as, ptr %i.ba, align 8, !tbaa !24
  br label %bb.q

.lr.ph.i27:                                       ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !24 ; 3 uses
  %wide.trip.count.i28 = zext nneg i32 %i.ao to i64 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %wide.trip.count.i28
  br i1 %exitcond.not.i31, label %.lr.ph.i34, label %bb.m, !llvm.loop !3

bb.m:                                             ; preds = %bb.l, %.lr.ph.i27
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i30, %bb.l ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %indvars.iv.i29
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !24
  %.not9.i = icmp eq i8 %i.bf, 0
  br i1 %.not9.i, label %bb.l, label %has_channel_names.exit.loopexit45

.lr.ph.i34:                                       ; preds = %bb.l, %..lr.ph.i34_crit_edge
  %wide.trip.count.i35.pre-phi = phi i64 [ %.pre46, %..lr.ph.i34_crit_edge ], [ %wide.trip.count.i28, %bb.l ]
  %i.bg = phi ptr [ %.pre, %..lr.ph.i34_crit_edge ], [ %i.bc, %bb.l ] ; 3 uses
  %i.bh = zext nneg i32 %i.al to i64              ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i34
  %indvars.iv.i36 = phi i64 [ %i.bh, %.lr.ph.i34 ], [ %indvars.iv.next.i38, %bb.p ] ; 2 uses
  %.01830.i = phi i64 [ 0, %.lr.ph.i34 ], [ %i.bn, %bb.p ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %indvars.iv.i36
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !26 ; 2 uses
  %or.cond.i37 = icmp ult i32 %i.bj, 63
  br i1 %or.cond.i37, label %bb.o, label %has_channel_names.exit

bb.o:                                             ; preds = %bb.n
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 1, %i.bk                ; 2 uses
  %i.bm = icmp ult i64 %.01830.i, %i.bl
  br i1 %i.bm, label %bb.p, label %has_channel_names.exit

bb.p:                                             ; preds = %bb.o
  %i.bn = or i64 %i.bl, %.01830.i                 ; 4 uses
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count.i35.pre-phi
  br i1 %exitcond.not.i39, label %masked_description.exit, label %bb.n, !llvm.loop !4

masked_description.exit:                          ; preds = %bb.p
  store i32 1, ptr %2, align 8, !tbaa !29
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bo)
  %i.bq = lshr i64 %i.bn, 32
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.br)
  %i.bt = add nuw nsw i32 %i.bs, %i.bp
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bn, ptr %i.bv, align 8, !tbaa !24
  br label %bb.q

has_channel_names.exit.loopexit45:                ; preds = %bb.m
  %.pre47 = zext nneg i32 %i.al to i64
  br label %has_channel_names.exit

has_channel_names.exit:                           ; preds = %bb.n, %bb.o, %has_channel_names.exit.loopexit45
  %.pre-phi = phi i64 [ %.pre47, %has_channel_names.exit.loopexit45 ], [ %i.bh, %bb.o ], [ %i.bh, %bb.n ]
  %i.bw = phi ptr [ %i.bc, %has_channel_names.exit.loopexit45 ], [ %i.bg, %bb.o ], [ %i.bg, %bb.n ]
  store i32 2, ptr %2, align 8, !tbaa !29
  %i.bx = sub nuw nsw i32 %i.ao, %i.al
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !30
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %.pre-phi
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %masked_description.exit, %has_channel_names.exit, %bb.k
  tail call void @av_bprint_chars(ptr noundef %0, i8 noundef signext 43, i32 noundef 1) #15
  %i.cb = call i32 @av_channel_layout_describe_bprint(ptr noundef nonnull %2, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %av_channel_layout_ambisonic_order.exit.thread

av_channel_layout_ambisonic_order.exit.thread:    ; preds = %bb.g, %bb.d, %bb.e, %bb.h, %bb.a, %.loopexit.i, %bb.i, %bb.q, %av_channel_layout_ambisonic_order.exit
  %.0 = phi i32 [ %i.aj, %av_channel_layout_ambisonic_order.exit ], [ 0, %bb.q ], [ 0, %bb.i ], [ -22, %.loopexit.i ], [ -22, %bb.a ], [ -22, %bb.h ], [ -22, %bb.e ], [ -22, %bb.d ], [ -22, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @av_channel_layout_describe(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.AVBPrint, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %2 to i32
  call void @av_bprint_init_for_buffer(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %i.c) #15
  %i.d = call i32 @av_channel_layout_describe_bprint(ptr noundef %0, ptr noundef nonnull %3) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = icmp ugt i32 %i.g, 2147483646
  %i.i = add nuw nsw i32 %i.g, 1
  %spec.select = select i1 %i.h, i32 -34, i32 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.c ], [ -22, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @av_channel_layout_channel_from_string(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @av_channel_layout_index_from_string(ptr noundef %0, ptr noundef %1) ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %av_channel_layout_channel_from_index.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30   ; 2 uses
  %.not.i = icmp ult i32 %i.a, %i.d
  br i1 %.not.i, label %bb.c, label %av_channel_layout_channel_from_index.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.e, label %av_channel_layout_channel_from_index.exit [
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = zext nneg i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26
  br label %av_channel_layout_channel_from_index.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.m)
  %i.o = lshr i64 %i.l, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.p)
  %i.r = add nuw nsw i32 %i.n, %i.q
  %i.s = sub i32 %i.d, %i.r                       ; 2 uses
  %.not26.i = icmp ult i32 %i.a, %i.s
  %i.t = add nuw i32 %i.a, 1024
  %i.u = sub nuw i32 %i.a, %i.s
  br i1 %.not26.i, label %av_channel_layout_channel_from_index.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.v = phi i64 [ %i.l, %bb.e ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.1.i = phi i32 [ %i.u, %bb.e ], [ %i.a, %._crit_edge.i ]
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.1, %bb.k ] ; 5 uses
  %.231.i = phi i32 [ %.1.i, %bb.f ], [ %.3.i.1, %bb.k ] ; 3 uses
  %i.w = shl nuw i64 1, %indvars.iv.i
  %i.x = and i64 %i.w, %i.v
  %.not27.i = icmp eq i64 %i.x, 0
  br i1 %.not27.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add i32 %.231.i, -1
  %.not28.i = icmp eq i32 %.231.i, 0
  br i1 %.not28.i, label %.loopexit.loopexit.split.loop.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3.i = phi i32 [ %i.y, %bb.h ], [ %.231.i, %bb.g ] ; 3 uses
  %i.z = shl nuw i64 2, %indvars.iv.i
  %i.aa = and i64 %i.z, %i.v
  %.not27.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not27.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add i32 %.3.i, -1
  %.not28.i.1 = icmp eq i32 %.3.i, 0
  br i1 %.not28.i.1, label %.loopexit.loopexit.split.loop.exit.i.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.i.1 = phi i32 [ %i.ab, %bb.j ], [ %.3.i, %bb.i ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %av_channel_layout_channel_from_index.exit, label %bb.g, !llvm.loop !1

.loopexit.loopexit.split.loop.exit.i.split.loop.exit: ; preds = %bb.j
  %indvars.iv.next.i.le = or disjoint i64 %indvars.iv.i, 1
  br label %.loopexit.loopexit.split.loop.exit.i

.loopexit.loopexit.split.loop.exit.i:             ; preds = %bb.h, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.next.i.le, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit ], [ %indvars.iv.i, %bb.h ]
  %i.ac = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %av_channel_layout_channel_from_index.exit

av_channel_layout_channel_from_index.exit:        ; preds = %bb.k, %.loopexit.loopexit.split.loop.exit.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.t, %bb.e ], [ -1, %bb.c ], [ %i.j, %bb.d ], [ -1, %bb.b ], [ %i.ac, %.loopexit.loopexit.split.loop.exit.i ], [ -1, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @av_channel_layout_index_from_string(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.b, label %.critedge [
    i32 2, label %bb.b
    i32 3, label %.critedge.thread
    i32 1, label %.critedge.thread
  ]

bb.b:                                             ; preds = %bb.a
  %strchr = tail call ptr @strchr(ptr nonnull dereferenceable(1) %1, i32 64) ; 2 uses
  %.not = icmp eq ptr %strchr, null
  br i1 %.not, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %strchr, i64 1 ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 16)
  %i.h = call i64 @av_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.g) #15 ; 0 uses
  %i.i = load i8, ptr %i.c, align 1, !tbaa !24
  %i.j = call i32 @av_channel_from_string(ptr noundef nonnull %i.a)
  %.034.fr = freeze i32 %i.j                      ; 3 uses
  %i.k = icmp ne i32 %.034.fr, -1
  %i.l = load i8, ptr %i.a, align 16
  %i.m = icmp eq i8 %i.l, 0
  %or.cond.not = select i1 %i.k, i1 true, i1 %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %or.cond.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.not41 = icmp eq i8 %i.i, 0
  br i1 %.not41, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = icmp eq i32 %.034.fr, -1
  %i.r = icmp sgt i32 %i.o, 0                     ; 2 uses
  br i1 %i.q, label %.lr.ph.split.us.split, label %.lr.ph.split.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  br i1 %i.r, label %.lr.ph65, label %.critedge.thread

.lr.ph65:                                         ; preds = %.lr.ph.split.us.split
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !24
  %wide.trip.count76 = zext nneg i32 %i.o to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph65, %bb.f
  %indvars.iv73 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next74, %bb.f ] ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.u) #16
  %.not45.us = icmp eq i32 %i.v, 0
  br i1 %.not45.us, label %.critedge.loopexit66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %.critedge.thread, label %bb.e

end_hunk_1
begin_hunk_2_@av_channel_layout_subset:bb.a

.loopexit.loopexit.split.loop.exit36.i.us:        ; preds = %bb.c
  %i.m = and i64 %indvars.iv.i.us, 2147483648
  %.not = icmp eq i64 %i.m, 0
  %i.n = select i1 %.not, i64 %i.d, i64 0
  %spec.select.us = or i64 %i.n, %.01219.us
  br label %av_channel_layout_index_from_channel.exit.thread.us

av_channel_layout_index_from_channel.exit.thread.us: ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit36.i.us, %.preheader.i.us, %bb.b
  %.1.us = phi i64 [ %.01219.us, %bb.b ], [ %.01219.us, %.preheader.i.us ], [ %spec.select.us, %.loopexit.loopexit.split.loop.exit36.i.us ], [ %.01219.us, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !50

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24
  %i.q = and i64 %i.p, %1
  br label %.loopexit

.loopexit:                                        ; preds = %av_channel_layout_index_from_channel.exit.thread.us, %bb.a, %bb.e
  %.013 = phi i64 [ %i.q, %bb.e ], [ 0, %bb.a ], [ %.1.us, %av_channel_layout_index_from_channel.exit.thread.us ]
  ret i64 %.013
}

; Function Attrs: nounwind uwtable
define range(i32 -38, 2) i32 @av_channel_layout_retype(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 17 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %av_channel_layout_check.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !29     ; 6 uses
  switch i32 %i.e, label %av_channel_layout_check.exit.thread [
    i32 1, label %.split
    i32 2, label %bb.c
    i32 3, label %av_channel_layout_check.exit
    i32 0, label %av_channel_layout_check.exit.thread165
  ]

.split:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.h)
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %i.m = add nuw nsw i32 %i.l, %i.i
  %i.n = icmp eq i32 %i.m, %i.c
  br i1 %i.n, label %av_channel_layout_check.exit.thread165, label %av_channel_layout_check.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %av_channel_layout_check.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %av_channel_layout_check.exit.thread165, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  %.not22.i = icmp eq i32 %i.r, -1
  br i1 %.not22.i, label %av_channel_layout_check.exit.thread, label %bb.d

av_channel_layout_check.exit:                     ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %i.w = lshr i64 %i.t, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.z = add nuw nsw i32 %i.y, %i.v
  %i.aa = icmp samesign ult i32 %i.z, %i.c
  br i1 %i.aa, label %av_channel_layout_check.exit.thread165, label %av_channel_layout_check.exit.thread

av_channel_layout_check.exit.thread165:           ; preds = %bb.d, %.split, %bb.b, %av_channel_layout_check.exit
  %i.ab = and i32 %2, 2
  %.not96 = icmp eq i32 %i.ab, 0
  br i1 %.not96, label %canonical_order.exit, label %bb.e

bb.e:                                             ; preds = %av_channel_layout_check.exit.thread165
  %.not.i100 = icmp eq i32 %i.e, 2
  br i1 %.not.i100, label %.lr.ph.i.i, label %av_channel_layout_check.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 5 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %has_channel_names.exit.i, label %bb.g, !llvm.loop !3

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !24
  %.not9.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not9.i.i, label %bb.f, label %canonical_order.exit

.critedge.i:                                      ; preds = %has_channel_names.exit.i
  br i1 %.not23.i, label %canonical_order.exit, label %.lr.ph.i24.i

has_channel_names.exit.i:                         ; preds = %bb.f, %has_channel_names.exit.i
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i103, %has_channel_names.exit.i ], [ 0, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i102
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26
  %.not23.i = icmp eq i32 %i.ai, 768              ; 2 uses
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %i.aj = icmp samesign ult i64 %indvars.iv.next.i103, %wide.trip.count.i.i
  %or.cond.i = select i1 %i.aj, i1 %.not23.i, i1 false
  br i1 %or.cond.i, label %has_channel_names.exit.i, label %.critedge.i, !llvm.loop !51

.lr.ph.i24.i:                                     ; preds = %.critedge.i, %bb.i
  %indvars.iv.i26.i = phi i64 [ %indvars.iv.next.i27.i, %bb.i ], [ 0, %.critedge.i ] ; 2 uses
  %.01830.i.i = phi i64 [ %i.ap, %bb.i ], [ 0, %.critedge.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i26.i
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.al, 63
  br i1 %or.cond.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i24.i
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 1, %i.am                ; 2 uses
  %i.ao = icmp ult i64 %.01830.i.i, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = or i64 %i.an, %.01830.i.i
  %indvars.iv.next.i27.i = add nuw nsw i64 %indvars.iv.i26.i, 1 ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %indvars.iv.next.i27.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i28.i, label %canonical_order.exit, label %.lr.ph.i24.i, !llvm.loop !4

bb.j:                                             ; preds = %bb.h, %.lr.ph.i24.i
  %i.aq = load i32, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.ar = add i32 %i.aq, -1025
  %or.cond60.not.peel.i.i = icmp ult i32 %i.ar, 1023
  br i1 %or.cond60.not.peel.i.i, label %canonical_order.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = and i32 %i.aq, -1024
  %spec.select.peel.i.i = icmp ne i32 %i.as, 1024
  %.140.peel.i.i = sext i1 %spec.select.peel.i.i to i32 ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i32 %i.c, 1
  br i1 %exitcond.peel.not.i.i, label %.loopexit.i.i, label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %bb.k, %.thread.i.i
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i33.i, %.thread.i.i ], [ 1, %bb.k ] ; 4 uses
  %.03964.i.i = phi i32 [ %.140.i.i, %.thread.i.i ], [ %.140.peel.i.i, %bb.k ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i31.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %i.av = and i32 %i.au, -1024
  %spec.select.i32.i = icmp eq i32 %i.av, 1024    ; 2 uses
  br i1 %spec.select.i32.i, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %.lr.ph.i30.i
  %i.aw = getelementptr i8, ptr %i.at, i64 -32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !26
  %i.ay = and i32 %i.ax, -1024
  %or.cond55.i.i = icmp ne i32 %i.ay, 1024
  %i.az = add nsw i32 %i.au, -1024
  %i.ba = zext nneg i32 %i.az to i64
  %.not52.i.i = icmp ne i64 %indvars.iv.i31.i, %i.ba
  %or.cond.i35.i = select i1 %or.cond55.i.i, i1 true, i1 %.not52.i.i
  br i1 %or.cond.i35.i, label %canonical_order.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.l, %.lr.ph.i30.i
  %i.bb = trunc nuw nsw i64 %indvars.iv.i31.i to i32
  %.140.i.i = select i1 %spec.select.i32.i, i32 %i.bb, i32 %.03964.i.i ; 2 uses
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i34.i, label %.loopexit.i.i, label %.lr.ph.i30.i, !llvm.loop !2

.loopexit.i.i:                                    ; preds = %.thread.i.i, %bb.k
  %.4.i.i = phi i32 [ %.140.peel.i.i, %bb.k ], [ %.140.i.i, %.thread.i.i ] ; 3 uses
  %i.bc = icmp slt i32 %.4.i.i, 0
  br i1 %i.bc, label %canonical_order.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i
  %i.bd = uitofp nneg i32 %.4.i.i to double
  %i.be = tail call nsz double @llvm.sqrt.f64(double %i.bd)
  %i.bf = tail call nsz double @llvm.floor.f64(double %i.be)
  %i.bg = fptosi double %i.bf to i32              ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1                    ; 2 uses
  %i.bi = mul nsw i32 %i.bh, %i.bh                ; 3 uses
  %i.bj = add nuw nsw i32 %.4.i.i, 1
  %.not54.i.i = icmp eq i32 %i.bi, %i.bj
  %3 = icmp sgt i32 %i.bg, -1
  %or.cond52.i = and i1 %3, %.not54.i.i
  br i1 %or.cond52.i, label %bb.n, label %canonical_order.exit

bb.n:                                             ; preds = %bb.m
  %.not29.i36.i = icmp slt i32 %i.bi, %i.c
  br i1 %.not29.i36.i, label %.lr.ph.i39.i, label %canonical_order.exit

.lr.ph.i39.i:                                     ; preds = %bb.n
  %i.bk = zext nneg i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i39.i
  %indvars.iv.i41.i = phi i64 [ %i.bk, %.lr.ph.i39.i ], [ %indvars.iv.next.i44.i, %bb.q ] ; 2 uses
  %.01830.i42.i = phi i64 [ 0, %.lr.ph.i39.i ], [ %i.bq, %bb.q ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i41.i
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !26 ; 2 uses
  %or.cond.i43.i = icmp ult i32 %i.bm, 63
  br i1 %or.cond.i43.i, label %bb.p, label %canonical_order.exit

bb.p:                                             ; preds = %bb.o
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 1, %i.bn                ; 2 uses
  %i.bp = icmp ult i64 %.01830.i42.i, %i.bo
  br i1 %i.bp, label %bb.q, label %canonical_order.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = or i64 %i.bo, %.01830.i42.i
  %indvars.iv.next.i44.i = add nuw nsw i64 %indvars.iv.i41.i, 1 ; 2 uses
  %exitcond.not.i45.i = icmp eq i64 %indvars.iv.next.i44.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i45.i, label %canonical_order.exit, label %bb.o, !llvm.loop !4

canonical_order.exit:                             ; preds = %bb.g, %bb.i, %bb.l, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.loopexit.i.i, %bb.j, %.critedge.i, %av_channel_layout_check.exit.thread165
  %.084.ph = phi i32 [ 0, %.critedge.i ], [ 2, %bb.j ], [ 2, %bb.m ], [ 3, %bb.n ], [ 2, %.loopexit.i.i ], [ 2, %bb.p ], [ %1, %av_channel_layout_check.exit.thread165 ], [ 1, %bb.i ], [ 2, %bb.l ], [ 3, %bb.q ], [ 2, %bb.o ], [ 2, %bb.g ] ; 2 uses
  %i.br = icmp eq i32 %i.e, %.084.ph
  br i1 %i.br, label %av_channel_layout_check.exit.thread, label %bb.r

bb.r:                                             ; preds = %canonical_order.exit
  switch i32 %.084.ph, label %av_channel_layout_check.exit.thread [
    i32 0, label %.thread201
    i32 1, label %bb.w
    i32 2, label %bb.ab
    i32 3, label %bb.am
  ]

.thread201:                                       ; preds = %bb.r
  %i.bs = icmp eq i32 %i.e, 2                     ; 2 uses
  br i1 %i.bs, label %.lr.ph217, label %.loopexit

.lr.ph217:                                        ; preds = %.thread201
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !24
  %wide.trip.count230 = zext nneg i32 %i.c to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.u
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.thread, label %bb.t, !llvm.loop !52

bb.t:                                             ; preds = %.lr.ph217, %bb.s
  %indvars.iv227 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next228, %bb.s ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %indvars.iv227 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !26
  %.not98 = icmp eq i32 %i.bw, 768
  br i1 %.not98, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !24
  %.not99 = icmp eq i8 %i.by, 0
  br i1 %.not99, label %bb.s, label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.t, %.thread201
  br i1 %.not, label %.thread, label %av_channel_layout_check.exit.thread

.thread:                                          ; preds = %bb.s, %.loopexit
  %.189171 = phi i32 [ 1, %.loopexit ], [ 0, %bb.s ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !37
  br i1 %i.bs, label %bb.v, label %av_channel_layout_uninit.exit

bb.v:                                             ; preds = %.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.cb) #15
  br label %av_channel_layout_uninit.exit

av_channel_layout_uninit.exit:                    ; preds = %.thread, %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 %i.c, ptr %i.b, align 4, !tbaa !30
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !37
  br label %av_channel_layout_check.exit.thread

bb.w:                                             ; preds = %bb.r
  %i.cc = icmp eq i32 %i.e, 2
  br i1 %i.cc, label %.lr.ph.i104, label %av_channel_layout_check.exit.thread

.lr.ph.i104:                                      ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !24 ; 2 uses
  %wide.trip.count.i105 = zext nneg i32 %i.c to i64 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i104
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.i104 ], [ %indvars.iv.next.i108, %bb.z ] ; 2 uses
  %.01830.i = phi i64 [ 0, %.lr.ph.i104 ], [ %i.ck, %bb.z ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %indvars.iv.i106
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !26 ; 2 uses
  %or.cond.i107 = icmp ult i32 %i.cg, 63
  br i1 %or.cond.i107, label %bb.y, label %av_channel_layout_check.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 1, %i.ch                ; 2 uses
  %i.cj = icmp ult i64 %.01830.i, %i.ci
  br i1 %i.cj, label %bb.z, label %av_channel_layout_check.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ck = or i64 %i.ci, %.01830.i                 ; 4 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i105
  br i1 %exitcond.not.i109, label %.lr.ph.i112, label %bb.x, !llvm.loop !4

bb.aa:                                            ; preds = %.lr.ph.i112
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i115, %wide.trip.count.i105
  br i1 %exitcond.not.i116, label %av_channel_layout_from_mask.exit, label %.lr.ph.i112, !llvm.loop !3

.lr.ph.i112:                                      ; preds = %bb.z, %bb.aa
  %indvars.iv.i114 = phi i64 [ %indvars.iv.next.i115, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %indvars.iv.i114
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !24
  %.not9.i = icmp eq i8 %i.cn, 0
  br i1 %.not9.i, label %bb.aa, label %has_channel_names.exit

has_channel_names.exit:                           ; preds = %.lr.ph.i112
  br i1 %.not, label %av_channel_layout_from_mask.exit, label %av_channel_layout_check.exit.thread

av_channel_layout_from_mask.exit:                 ; preds = %bb.aa, %has_channel_names.exit
  %.1.i111179 = phi i32 [ 1, %has_channel_names.exit ], [ 0, %bb.aa ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !37
  tail call void @av_freep(ptr noundef nonnull %i.cd) #15
  store i32 1, ptr %0, align 8, !tbaa !29
  %i.cq = trunc i64 %i.ck to i32
  %i.cr = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cq)
  %i.cs = lshr i64 %i.ck, 32
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ct)
  %i.cv = add nuw nsw i32 %i.cu, %i.cr
  store i32 %i.cv, ptr %i.b, align 4, !tbaa !30
  store i64 %i.ck, ptr %i.cd, align 8, !tbaa !24
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !37
  br label %av_channel_layout_check.exit.thread

bb.ab:                                            ; preds = %bb.r
  %i.cw = zext nneg i32 %i.c to i64               ; 3 uses
  %i.cx = tail call noalias ptr @av_calloc(i64 noundef %i.cw, i64 noundef 32) #15 ; 8 uses
  %.not.i119 = icmp eq ptr %i.cx, null
  br i1 %.not.i119, label %av_channel_layout_check.exit.thread, label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %bb.ab
  %xtraiter = and i64 %i.cw, 3                    ; 3 uses
  %i.cy = icmp ult i32 %i.c, 4
  br i1 %i.cy, label %.lr.ph.i120.epil.preheader, label %.lr.ph.i120.preheader.new

.lr.ph.i120.preheader.new:                        ; preds = %.lr.ph.i120.preheader
  %unroll_iter = and i64 %i.cw, 2147483644
  br label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120, %.lr.ph.i120.preheader.new
  %indvars.iv.i121 = phi i64 [ 0, %.lr.ph.i120.preheader.new ], [ %indvars.iv.next.i122.3, %.lr.ph.i120 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i120.preheader.new ], [ %niter.next.3, %.lr.ph.i120 ]
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %indvars.iv.i121
  store i32 768, ptr %i.cz, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %indvars.iv.i121
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store i32 768, ptr %i.db, align 8, !tbaa !26
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %indvars.iv.i121
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  store i32 768, ptr %i.dd, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %indvars.iv.i121
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  store i32 768, ptr %i.df, align 8, !tbaa !26
  %indvars.iv.next.i122.3 = add nuw nsw i64 %indvars.iv.i121, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.i120, !llvm.loop !0

.unr-lcssa:                                       ; preds = %.lr.ph.i120
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.lr.ph.i120.epil.preheader

.lr.ph.i120.epil.preheader:                       ; preds = %.unr-lcssa, %.lr.ph.i120.preheader
  %indvars.iv.i121.epil.init = phi i64 [ 0, %.lr.ph.i120.preheader ], [ %indvars.iv.next.i122.3, %.unr-lcssa ]
  %lcmp.mod271 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %.lr.ph.i120.epil

.lr.ph.i120.epil:                                 ; preds = %.lr.ph.i120.epil, %.lr.ph.i120.epil.preheader
  %indvars.iv.i121.epil = phi i64 [ %indvars.iv.next.i122.epil, %.lr.ph.i120.epil ], [ %indvars.iv.i121.epil.init, %.lr.ph.i120.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i120.epil ], [ 0, %.lr.ph.i120.epil.preheader ]
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %indvars.iv.i121.epil
  store i32 768, ptr %i.dg, align 8, !tbaa !26
  %indvars.iv.next.i122.epil = add nuw nsw i64 %indvars.iv.i121.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph.i120.epil, !llvm.loop !53

.epilog-lcssa:                                    ; preds = %.lr.ph.i120.epil, %.unr-lcssa
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !37
  %i.dj = load i32, ptr %0, align 8, !tbaa !29    ; 3 uses
  %.not97 = icmp eq i32 %i.dj, 0
  br i1 %.not97, label %av_channel_layout_uninit.exit130, label %.preheader206

.preheader206:                                    ; preds = %.epilog-lcssa
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !30  ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader206
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.dk to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %av_channel_layout_channel_from_index.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %av_channel_layout_channel_from_index.exit ] ; 7 uses
  switch i32 %i.dj, label %av_channel_layout_channel_from_index.exit [
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 1, label %._crit_edge.i125
  ]

._crit_edge.i125:                                 ; preds = %bb.ac
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dn = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %indvars.iv
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !26
  br label %av_channel_layout_channel_from_index.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dq = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 3 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dr)
  %i.dt = lshr i64 %i.dq, 32
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.du)
  %i.dw = add nuw nsw i32 %i.ds, %i.dv
  %i.dx = sub nsw i32 %i.dk, %i.dw                ; 2 uses
  %i.dy = zext i32 %i.dx to i64
  %.not26.i = icmp samesign ult i64 %indvars.iv, %i.dy
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ea = sub nuw i32 %i.dz, %i.dx
  %i.eb = trunc i64 %indvars.iv to i32
  %i.ec = add i32 %i.eb, 1024
  br i1 %.not26.i, label %av_channel_layout_channel_from_index.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i125
  %i.ed = phi i64 [ %i.dq, %bb.ae ], [ %.pre.i, %._crit_edge.i125 ] ; 2 uses
  %.1.i126 = phi i32 [ %i.ea, %bb.ae ], [ %i.dm, %._crit_edge.i125 ]
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %bb.af
  %indvars.iv.i127 = phi i64 [ 0, %bb.af ], [ %indvars.iv.next.i128.1, %bb.ak ] ; 5 uses
  %.231.i = phi i32 [ %.1.i126, %bb.af ], [ %.3.i.1, %bb.ak ] ; 3 uses
  %i.ee = shl nuw i64 1, %indvars.iv.i127
  %i.ef = and i64 %i.ee, %i.ed
  %.not27.i = icmp eq i64 %i.ef, 0
  br i1 %.not27.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eg = add i32 %.231.i, -1
  %.not28.i = icmp eq i32 %.231.i, 0
  br i1 %.not28.i, label %.loopexit.loopexit.split.loop.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.3.i = phi i32 [ %i.eg, %bb.ah ], [ %.231.i, %bb.ag ] ; 3 uses
  %i.eh = shl nuw i64 2, %indvars.iv.i127
  %i.ei = and i64 %i.eh, %i.ed
  %.not27.i.1 = icmp eq i64 %i.ei, 0
  br i1 %.not27.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = add i32 %.3.i, -1
  %.not28.i.1 = icmp eq i32 %.3.i, 0
  br i1 %.not28.i.1, label %.loopexit.loopexit.split.loop.exit.i.split.loop.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3.i.1 = phi i32 [ %i.ej, %bb.aj ], [ %.3.i, %bb.ai ]
  %indvars.iv.next.i128.1 = add nuw nsw i64 %indvars.iv.i127, 2 ; 2 uses
  %exitcond.not.i129.1 = icmp eq i64 %indvars.iv.next.i128.1, 64
  br i1 %exitcond.not.i129.1, label %av_channel_layout_channel_from_index.exit, label %bb.ag, !llvm.loop !1

.loopexit.loopexit.split.loop.exit.i.split.loop.exit: ; preds = %bb.aj
  %indvars.iv.next.i128.le = or disjoint i64 %indvars.iv.i127, 1
  br label %.loopexit.loopexit.split.loop.exit.i

.loopexit.loopexit.split.loop.exit.i:             ; preds = %bb.ah, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit
  %indvars.iv.i127.lcssa = phi i64 [ %indvars.iv.next.i128.le, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit ], [ %indvars.iv.i127, %bb.ah ]
  %i.ek = trunc nuw nsw i64 %indvars.iv.i127.lcssa to i32
  br label %av_channel_layout_channel_from_index.exit

av_channel_layout_channel_from_index.exit:        ; preds = %bb.ak, %bb.ac, %bb.ad, %bb.ae, %.loopexit.loopexit.split.loop.exit.i
  %.122.i = phi i32 [ %i.ec, %bb.ae ], [ -1, %bb.ac ], [ %i.dp, %bb.ad ], [ %i.ek, %.loopexit.loopexit.split.loop.exit.i ], [ -1, %bb.ak ]
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %indvars.iv
  store i32 %.122.i, ptr %i.el, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ac, !llvm.loop !54

._crit_edge:                                      ; preds = %av_channel_layout_channel_from_index.exit, %.preheader206
  %i.em = icmp eq i32 %i.dj, 2
  br i1 %i.em, label %bb.al, label %av_channel_layout_uninit.exit130

bb.al:                                            ; preds = %._crit_edge
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.en) #15
  br label %av_channel_layout_uninit.exit130

av_channel_layout_uninit.exit130:                 ; preds = %.epilog-lcssa, %._crit_edge, %bb.al
  store i32 2, ptr %0, align 8, !tbaa !31
  store i32 %i.c, ptr %i.b, align 4, !tbaa !31
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cx, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !37
  br label %av_channel_layout_check.exit.thread

bb.am:                                            ; preds = %bb.r
  %i.eo = icmp eq i32 %i.e, 2
  br i1 %i.eo, label %bb.an, label %av_channel_layout_check.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !24 ; 4 uses
  %wide.trip.count.i131 = zext nneg i32 %i.c to i64 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !26 ; 2 uses
  %i.es = add i32 %i.er, -1025
  %or.cond60.not.peel.i = icmp ult i32 %i.es, 1023
  br i1 %or.cond60.not.peel.i, label %av_channel_layout_check.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.et = and i32 %i.er, -1024
  %spec.select.peel.i = icmp ne i32 %i.et, 1024
  %.140.peel.i = sext i1 %spec.select.peel.i to i32 ; 2 uses
  %exitcond.peel.not.i = icmp eq i32 %i.c, 1
  br i1 %exitcond.peel.not.i, label %.loopexit.i, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %bb.ao, %.thread.i
  %indvars.iv.i133 = phi i64 [ %indvars.iv.next.i135, %.thread.i ], [ 1, %bb.ao ] ; 4 uses
  %.03964.i = phi i32 [ %.140.i, %.thread.i ], [ %.140.peel.i, %bb.ao ]
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %indvars.iv.i133 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !26 ; 2 uses
  %i.ew = and i32 %i.ev, -1024
  %spec.select.i134 = icmp eq i32 %i.ew, 1024     ; 2 uses
  br i1 %spec.select.i134, label %bb.ap, label %.thread.i

bb.ap:                                            ; preds = %.lr.ph.i132
  %i.ex = getelementptr i8, ptr %i.eu, i64 -32
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !26
  %i.ez = and i32 %i.ey, -1024
  %or.cond55.i = icmp ne i32 %i.ez, 1024
  %i.fa = add nsw i32 %i.ev, -1024
  %i.fb = zext nneg i32 %i.fa to i64
  %.not52.i = icmp ne i64 %indvars.iv.i133, %i.fb
  %or.cond.i137 = select i1 %or.cond55.i, i1 true, i1 %.not52.i
  br i1 %or.cond.i137, label %av_channel_layout_check.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.ap, %.lr.ph.i132
  %i.fc = trunc nuw nsw i64 %indvars.iv.i133 to i32
  %.140.i = select i1 %spec.select.i134, i32 %i.fc, i32 %.03964.i ; 2 uses
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i133, 1 ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %indvars.iv.next.i135, %wide.trip.count.i131
  br i1 %exitcond.not.i136, label %.loopexit.i, label %.lr.ph.i132, !llvm.loop !2

.loopexit.i:                                      ; preds = %.thread.i, %bb.ao
  %.4.i = phi i32 [ %.140.peel.i, %bb.ao ], [ %.140.i, %.thread.i ] ; 3 uses
  %i.fd = icmp slt i32 %.4.i, 0
  br i1 %i.fd, label %av_channel_layout_check.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %.loopexit.i
  %i.fe = uitofp nneg i32 %.4.i to double
  %i.ff = tail call nsz double @llvm.sqrt.f64(double %i.fe)
  %i.fg = tail call nsz double @llvm.floor.f64(double %i.ff)
  %i.fh = fptosi double %i.fg to i32              ; 2 uses
  %i.fi = add nsw i32 %i.fh, 1                    ; 2 uses
  %i.fj = mul nsw i32 %i.fi, %i.fi                ; 3 uses
  %i.fk = add nuw nsw i32 %.4.i, 1
  %.not54.i = icmp ne i32 %i.fj, %i.fk
  %4 = icmp slt i32 %i.fh, 0
  %or.cond203 = or i1 %4, %.not54.i
  br i1 %or.cond203, label %av_channel_layout_check.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not29.i138 = icmp slt i32 %i.fj, %i.c
  br i1 %.not29.i138, label %.lr.ph.i141, label %.lr.ph.i153

.lr.ph.i141:                                      ; preds = %bb.ar
  %i.fl = zext nneg i32 %i.fj to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.i141
  %indvars.iv.i143 = phi i64 [ %i.fl, %.lr.ph.i141 ], [ %indvars.iv.next.i146, %bb.au ] ; 2 uses
  %.01830.i144 = phi i64 [ 0, %.lr.ph.i141 ], [ %i.fr, %bb.au ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %indvars.iv.i143
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !26 ; 2 uses
  %or.cond.i145 = icmp ult i32 %i.fn, 63
  br i1 %or.cond.i145, label %bb.at, label %av_channel_layout_check.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 1, %i.fo                ; 2 uses
  %i.fq = icmp ult i64 %.01830.i144, %i.fp
  br i1 %i.fq, label %bb.au, label %av_channel_layout_check.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.fr = or i64 %i.fp, %.01830.i144              ; 2 uses
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i143, 1 ; 2 uses
  %exitcond.not.i147 = icmp eq i64 %indvars.iv.next.i146, %wide.trip.count.i131
  br i1 %exitcond.not.i147, label %.lr.ph.i153, label %bb.as, !llvm.loop !4

.lr.ph.i153:                                      ; preds = %bb.au, %bb.ar
  %spec.select.i140 = phi i64 [ 0, %bb.ar ], [ %i.fr, %bb.au ]
  br label %bb.aw

bb.av:                                            ; preds = %bb.aw
  %indvars.iv.next.i157 = add nuw nsw i64 %indvars.iv.i155, 1 ; 2 uses
  %exitcond.not.i158 = icmp eq i64 %indvars.iv.next.i157, %wide.trip.count.i131
  br i1 %exitcond.not.i158, label %av_channel_layout_uninit.exit160, label %bb.aw, !llvm.loop !3

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i153
  %indvars.iv.i155 = phi i64 [ 0, %.lr.ph.i153 ], [ %indvars.iv.next.i157, %bb.av ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %indvars.iv.i155
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i8, ptr %i.ft, align 4, !tbaa !24
  %.not9.i156 = icmp eq i8 %i.fu, 0
  br i1 %.not9.i156, label %bb.av, label %has_channel_names.exit159

has_channel_names.exit159:                        ; preds = %bb.aw
  br i1 %.not, label %av_channel_layout_uninit.exit160, label %av_channel_layout_check.exit.thread

av_channel_layout_uninit.exit160:                 ; preds = %bb.av, %has_channel_names.exit159
  %.1.i151192 = phi i32 [ 1, %has_channel_names.exit159 ], [ 0, %bb.av ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !37
  tail call void @av_freep(ptr noundef nonnull %i.ep) #15
  store i32 3, ptr %0, align 8, !tbaa !29
  store i32 %i.c, ptr %i.b, align 4, !tbaa !30
  store i64 %spec.select.i140, ptr %i.ep, align 8, !tbaa !24
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !37
  br label %av_channel_layout_check.exit.thread

av_channel_layout_check.exit.thread:              ; preds = %.lr.ph.i, %bb.ap, %bb.at, %bb.as, %bb.y, %bb.x, %.split, %bb.e, %bb.an, %bb.aq, %.loopexit.i, %av_channel_layout_uninit.exit160, %bb.ab, %av_channel_layout_from_mask.exit, %bb.b, %bb.a, %bb.c, %bb.am, %has_channel_names.exit159, %av_channel_layout_uninit.exit130, %bb.w, %has_channel_names.exit, %bb.r, %av_channel_layout_uninit.exit, %.loopexit, %canonical_order.exit, %av_channel_layout_check.exit
  %.4 = phi i32 [ -22, %av_channel_layout_check.exit ], [ -38, %.loopexit ], [ 0, %canonical_order.exit ], [ -38, %bb.am ], [ -38, %.loopexit.i ], [ -38, %bb.w ], [ -38, %bb.at ], [ -38, %bb.an ], [ %.189171, %av_channel_layout_uninit.exit ], [ -22, %bb.r ], [ -38, %has_channel_names.exit ], [ 0, %av_channel_layout_uninit.exit130 ], [ -38, %has_channel_names.exit159 ], [ -22, %bb.c ], [ -22, %bb.a ], [ -22, %.split ], [ -22, %bb.b ], [ %.1.i111179, %av_channel_layout_from_mask.exit ], [ -38, %bb.aq ], [ -12, %bb.ab ], [ -38, %bb.ap ], [ %.1.i151192, %av_channel_layout_uninit.exit160 ], [ 0, %bb.e ], [ -38, %bb.y ], [ -38, %bb.x ], [ -38, %bb.as ], [ -22, %.lr.ph.i ]
  ret i32 %.4
}

declare i32 @av_opt_get_key_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_free(ptr noundef) local_unnamed_addr #1

declare ptr @av_dynarray2_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @av_bprint_chars(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = distinct !{!2, !23, !36}
!3 = distinct !{!3, !23}
!4 = distinct !{!4, !23}
!5 = distinct !{!5, !23}
!6 = distinct !{!6, !23}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 16}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"channel_name", !17, i64 0, !17, i64 8}
!19 = !{!18, !17, i64 0}
!20 = !{!"AVBPrint", !17, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !12, i64 20, !12, i64 21}
!21 = !{!20, !13, i64 8}
!22 = !{!17, !17, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!12, !12, i64 0}
!25 = !{!"AVChannelCustom", !13, i64 0, !12, i64 4, !16, i64 24}
!26 = !{!25, !13, i64 0}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!"AVChannelLayout", !13, i64 0, !13, i64 4, !12, i64 8, !16, i64 16}
!29 = !{!28, !13, i64 0}
!30 = !{!28, !13, i64 4}
!31 = !{!13, !13, i64 0}
!32 = !{!"channel_layout_name", !17, i64 0, !28, i64 8}
!33 = !{!32, !17, i64 0}
!34 = !{!16, !16, i64 0}
!35 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 8, !24, i64 16, i64 8, !34}
!36 = !{!"llvm.loop.peeled.count", i32 1}
!37 = !{!28, !16, i64 16}
!38 = !{!18, !17, i64 8}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = !{!"p1 _ZTS15AVChannelCustom", !16, i64 0}
!47 = !{!46, !46, i64 0}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !23}
end_hunk_2
