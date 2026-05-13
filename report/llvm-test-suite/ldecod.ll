inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@free_slice:.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.q) #20
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.r) #20
  tail call void @free(ptr noundef nonnull %i.d) #20
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  tail call void @delete_contexts_MotionInfo(ptr noundef %i.t) #20
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  tail call void @delete_contexts_TextureInfo(ptr noundef %i.v) #20
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !47
  tail call void @free(ptr noundef %i.w) #20
  ret void
}

declare i32 @FmoFinit(...) local_unnamed_addr #6

declare void @flush_dpb() local_unnamed_addr #6

declare void @CloseBitstreamFile(...) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #6

declare void @ercClose(ptr noundef) local_unnamed_addr #6

declare void @CleanUpPPS(...) local_unnamed_addr #6

declare void @free_dpb() local_unnamed_addr #6

declare void @uninit_out_buffer(...) local_unnamed_addr #6

declare void @free_colocated(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_frext(ptr noundef captures(none) initializes((5872, 5876), (5884, 5896), (5900, 5908), (5924, 5940), (5948, 5996)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5876
  %i.b = load i32, ptr %i.a, align 4, !tbaa !100  ; 6 uses
  %i.c = mul i32 %i.b, 6
  %i.d = add i32 %i.c, -48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5884
  store i32 %i.d, ptr %i.e, align 4, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.g = load i32, ptr %i.f, align 8, !tbaa !102  ; 5 uses
  %i.h = icmp sgt i32 %i.b, %i.g
  %.pre.pre = load ptr, ptr @active_sps, align 8, !tbaa !88 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !103
  %i.k = icmp eq i32 %i.j, 0
  %spec.select = select i1 %i.k, i32 %i.b, i32 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ %i.b, %bb.a ], [ %spec.select, %bb.b ]
  %i.l = icmp sgt i32 %.sink, 8
  %i.m = select i1 %i.l, i32 16, i32 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5872
  store i32 %i.m, ptr %i.n, align 8, !tbaa !107
  %i.o = add nsw i32 %i.b, -1
  %i.p = shl nuw i32 1, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5892
  store i32 %i.p, ptr %i.q, align 4, !tbaa !108
  %notmask = shl nsw i32 -1, %i.b
  %i.r = xor i32 %notmask, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 %i.r, ptr %i.s, align 4, !tbaa !109
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5948
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5952
  store i32 16, ptr %i.u, align 8, !tbaa !4
  store i32 16, ptr %i.t, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !103  ; 3 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = mul i32 %i.g, 6
  %i.y = add i32 %i.x, -48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5888
  store i32 %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = add nsw i32 %i.g, -1
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5896
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !111
  %notmask50 = shl nsw i32 -1, %i.g
  %i.ad = xor i32 %notmask50, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5904
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !112
  %i.af = shl nuw i32 1, %i.w
  %i.ag = and i32 %i.af, -2                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5924
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !113
  %i.ai = shl i32 %i.ag, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !114
  %i.ak = icmp ult i32 %i.w, 3
  %i.al = select i1 %i.ak, i32 8, i32 16          ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5964
  store i32 %i.al, ptr %i.am, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5956
  store i32 %i.al, ptr %i.an, align 4, !tbaa !4
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !103
  %i.ap = and i32 %i.ao, -2
  %i.aq = icmp eq i32 %i.ap, 2
  %i.ar = select i1 %i.aq, i32 16, i32 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5888
  store i32 0, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5904
  store i32 0, ptr %i.at, align 8, !tbaa !112
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5924
  store i32 0, ptr %i.au, align 4, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 0, ptr %i.av, align 8, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5964
  store i32 0, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5956
  store i32 0, ptr %i.ax, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ay = phi i32 [ 0, %bb.e ], [ %i.al, %bb.d ]  ; 2 uses
  %.sink52 = phi i32 [ 0, %bb.e ], [ %i.ar, %bb.d ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !115
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i32 %.sink52, ptr %i.ba, align 8, !tbaa !116
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5968
  store i32 %.sink52, ptr %i.bb, align 8, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 %.sink52, ptr %i.bc, align 8, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5972
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5976
  store i32 4, ptr %i.be, align 8, !tbaa !4
  store i32 4, ptr %i.bd, align 4, !tbaa !4
  %i.bf = lshr exact i32 %i.ay, 2                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5988
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5980
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !4
  %i.bi = lshr exact i32 %.sink52, 2              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5992
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5984
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !4
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocPartition(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 56) #22 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.68, i64 60, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.f = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #22 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !95
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) @errortext, ptr noundef nonnull align 1 dereferenceable(55) @.str.69, i64 55, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #20
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %1 = phi ptr [ %.pre, %bb.d ], [ %i.f, %.lr.ph ]
  %i.h = tail call noalias dereferenceable_or_null(8000000) ptr @calloc(i64 noundef 8000000, i64 noundef 1) #22 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !98
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(58) @errortext, ptr noundef nonnull align 1 dereferenceable(58) @.str.70, i64 58, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.g, %bb.c
  ret ptr %i.b
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreePartition(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.e) #20
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.f) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef %0) #20
  ret void
}

declare ptr @create_contexts_MotionInfo() local_unnamed_addr #6

declare ptr @create_contexts_TextureInfo() local_unnamed_addr #6

declare void @delete_contexts_MotionInfo(ptr noundef) local_unnamed_addr #6

declare void @delete_contexts_TextureInfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @init_global_buffers() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @global_init_done, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free_global_buffers()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @img, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !85
  %i.g = tail call i32 @get_mem2Dpel(ptr noundef nonnull @imgY_ref, i32 noundef %i.d, i32 noundef %i.f) #20 ; 2 uses
  %i.h = load ptr, ptr @active_sps, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !103
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @img, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !120
  %i.p = tail call i32 @get_mem3Dpel(ptr noundef nonnull @imgUV_ref, i32 noundef 2, i32 noundef %i.m, i32 noundef %i.o) #20
  %i.q = add nsw i32 %i.p, %i.g
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr @imgUV_ref, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026 = phi i32 [ %i.q, %bb.d ], [ %i.g, %bb.e ]
  %i.r = load ptr, ptr @img, align 8, !tbaa !24   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5840
  %i.t = load i32, ptr %i.s, align 8, !tbaa !121
  %i.u = zext i32 %i.t to i64
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 408) #22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 5600
  store ptr %i.v, ptr %i.w, align 8, !tbaa !122
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @no_mem_exit(ptr noundef nonnull @.str.72) #20
  %.pre = load ptr, ptr @img, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %.pre, %bb.g ], [ %i.r, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 5840
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !121
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call noalias ptr @calloc(i64 noundef %i.ab, i64 noundef 4) #22 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !123
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @no_mem_exit(ptr noundef nonnull @.str.73) #20
  %.pre40 = load ptr, ptr @img, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %.pre40, %bb.i ], [ %i.y, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5840
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !121
  %i.ai = add i32 %i.ah, 1
  %i.aj = tail call i32 @get_mem2Dint(ptr noundef nonnull @PicPos, i32 noundef %i.ai, i32 noundef 2) #20
  %i.ak = load ptr, ptr @img, align 8, !tbaa !24  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 5840 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !121
  %.not2930 = icmp slt i32 %i.am, 0
  br i1 %.not2930, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 5820 ; 2 uses
  %i.ao = load ptr, ptr @PicPos, align 8, !tbaa !124
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !125
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ar = urem i32 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126 ; 2 uses
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !4
  %i.au = load i32, ptr %i.an, align 4, !tbaa !125
  %i.av = udiv i32 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ax = load i32, ptr %i.al, align 8, !tbaa !121
  %i.ay = sext i32 %i.ax to i64
  %.not29.not = icmp slt i64 %indvars.iv, %i.ay
  br i1 %.not29.not, label %bb.k, label %._crit_edge, !llvm.loop !127

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 5544
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 5828
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !128
  %i.bc = shl i32 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 5820
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !125
  %i.bf = shl i32 %i.be, 2
  %i.bg = tail call i32 @get_mem2D(ptr noundef nonnull %i.az, i32 noundef %i.bc, i32 noundef %i.bf) #20
  %i.bh = load ptr, ptr @img, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 5768
  %i.bj = tail call i32 @get_mem3Dint(ptr noundef nonnull %i.bi, i32 noundef 2, i32 noundef 32, i32 noundef 3) #20
  %i.bk = load ptr, ptr @img, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 5776
  %i.bm = tail call i32 @get_mem3Dint(ptr noundef nonnull %i.bl, i32 noundef 6, i32 noundef 32, i32 noundef 3) #20
  %i.bn = load ptr, ptr @img, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 5784
  %i.bp = tail call i32 @get_mem4Dint(ptr noundef nonnull %i.bo, i32 noundef 6, i32 noundef 32, i32 noundef 32, i32 noundef 3) #20
  %i.bq = load ptr, ptr @img, align 8, !tbaa !24  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 5560
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 5840
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !121
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 5924
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !113
  %i.bw = add nsw i32 %i.bv, 4
  %i.bx = tail call i32 @get_mem3Dint(ptr noundef nonnull %i.br, i32 noundef %i.bt, i32 noundef 4, i32 noundef %i.bw) #20
  %i.by = load ptr, ptr @img, align 8, !tbaa !24  ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5568
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 5828
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !128
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 5820
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !125
  %i.ce = tail call i32 @get_mem2Dint(ptr noundef nonnull %i.bz, i32 noundef %i.cb, i32 noundef %i.cd) #20
  %i.cf = load ptr, ptr @img, align 8, !tbaa !24  ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 5900
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !109 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 5904
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !112 ; 2 uses
  %i.ck = icmp sgt i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.m, label %bb.l
end_hunk_0
