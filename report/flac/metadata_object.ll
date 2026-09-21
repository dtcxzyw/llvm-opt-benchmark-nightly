Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/metadata_object?download=true
inline.NumInlined: 94
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@FLAC__metadata_object_application_set_data:bb.a

copy_bytes_.exit.thread:                          ; preds = %bb.c, %copy_bytes_.exit
  %.0 = phi i32 [ 1, %copy_bytes_.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 2) i32 @FLAC__metadata_object_seektable_resize_points(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 8 uses
  %i.b = mul nuw nsw i64 %i.a, 18
  %i.c = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !15
  %i.d = shl nuw i32 1, %i.c
  %i.e = zext i32 %i.d to i64
  %.not = icmp samesign ult i64 %i.b, %i.e
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @safe_malloc_mul_2op_p(i64 noundef %i.a, i64 noundef 24) #31 ; 7 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %seekpoint_array_new_.exit.thread, label %.preheader.i

seekpoint_array_new_.exit.thread:                 ; preds = %bb.d
  store ptr null, ptr %i.g, align 8, !tbaa !19
  br label %.critedge

.preheader.i:                                     ; preds = %bb.d
  %i.l = load i64, ptr @FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER, align 8, !tbaa !46 ; 5 uses
  %xtraiter47 = and i64 %i.a, 3                   ; 3 uses
  %i.m = icmp ult i32 %1, 4
  br i1 %i.m, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %i.a, 4294967292
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.3, %bb.e ]
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.l, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 0, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 0, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 %i.l, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 0, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i32 0, ptr %i.x, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i64 %i.l, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store i64 0, ptr %i.aa, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 0, ptr %i.ab, align 8, !tbaa !34
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %seekpoint_array_new_.exit.unr-lcssa, label %bb.e, !llvm.loop !93

seekpoint_array_new_.exit.unr-lcssa:              ; preds = %bb.e
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %seekpoint_array_new_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %seekpoint_array_new_.exit.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.3, %seekpoint_array_new_.exit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i.epil ; 3 uses
  store i64 %i.l, ptr %i.ac, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !34
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter47
  br i1 %epil.iter.cmp.not, label %seekpoint_array_new_.exit, label %bb.f, !llvm.loop !94

seekpoint_array_new_.exit:                        ; preds = %bb.f, %seekpoint_array_new_.exit.unr-lcssa
  store ptr %i.k, ptr %i.g, align 8, !tbaa !19
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.f, align 8, !tbaa !19
  %i.ag = mul nuw nsw i64 %i.a, 24
  %i.ah = icmp ugt i32 %1, 178956970
  br i1 %i.ah, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %1, 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.h) #31
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.ag) #32 ; 2 uses
  %.not39 = icmp eq ptr %i.aj, null
  br i1 %.not39, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi ptr [ null, %bb.i ], [ %i.aj, %bb.j ]
  store ptr %storemerge, ptr %i.g, align 8, !tbaa !19
  %i.ak = icmp ugt i32 %1, %i.af
  br i1 %i.ak, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.f, align 8, !tbaa !19  ; 2 uses
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.l
  %i.an = load i64, ptr @FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER, align 8, !tbaa !46 ; 3 uses
  %i.ao = zext i32 %i.al to i64                   ; 7 uses
  %i.ap = sub nsw i64 %i.a, %i.ao
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ao
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !32
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !33
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 0, ptr %i.ax, align 8, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %i.ao, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ay = add nsw i64 %i.a, -1
  %i.az = icmp eq i64 %i.ay, %i.ao
  br i1 %i.az, label %.critedge.thread, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv
  store i64 %i.an, ptr %i.bb, align 8, !tbaa !32
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !33
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 0, ptr %i.bh, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %indvars.iv.next
  store i64 %i.an, ptr %i.bj, align 8, !tbaa !32
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv.next
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 0, ptr %i.bp, align 8, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.a
  br i1 %exitcond.not.1, label %.critedge.thread, label %.lr.ph.new, !llvm.loop !95

.critedge.thread:                                 ; preds = %.prol.loopexit, %.lr.ph.new, %bb.l, %bb.k, %seekpoint_array_new_.exit
  store i32 %1, ptr %i.f, align 8, !tbaa !19
  %i.bq = mul nuw i32 %1, 18
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.j, %seekpoint_array_new_.exit.thread, %bb.c, %bb.a, %.critedge.thread
  %.3 = phi i32 [ 0, %seekpoint_array_new_.exit.thread ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %.critedge.thread ], [ 0, %bb.j ], [ 0, %bb.g ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FLAC__metadata_object_seektable_set_point(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.FLAC__StreamMetadata_SeekPoint) align 8 captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 2) i32 @FLAC__metadata_object_seektable_insert_point(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.FLAC__StreamMetadata_SeekPoint) align 8 captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = add i32 %i.b, 1
  %i.d = tail call i32 @FLAC__metadata_object_seektable_resize_points(ptr noundef %0, i32 noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.015 = add nsw i32 %i.e, -1
  %i.f = icmp sgt i32 %.015, %1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = sext i32 %i.e to i64                     ; 7 uses
  %i.i = add nsw i64 %i.h, -1                     ; 2 uses
  %i.j = sext i32 %1 to i64                       ; 3 uses
  %i.k = add nsw i64 %i.h, -2
  %i.l = sub nsw i64 %i.j, %i.h
  %i.m = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.i
  %i.p = getelementptr [24 x i8], ptr %i.n, i64 %i.h
  %i.q = getelementptr i8, ptr %i.p, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !48
  %indvars.iv.next.prol = add nsw i64 %i.h, -2
  %indvars.iv.next19.prol = add nsw i64 %i.h, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv18.unr = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next19.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.k, %i.j
  br i1 %i.r, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv18 = phi i64 [ %indvars.iv.next19.1, %.lr.ph.new ], [ %indvars.iv18.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = getelementptr [24 x i8], ptr %i.s, i64 %indvars.iv18
  %i.v = getelementptr i8, ptr %i.u, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !48
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.x = getelementptr [24 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = getelementptr [24 x i8], ptr %i.w, i64 %indvars.iv18
  %i.aa = getelementptr i8, ptr %i.z, i64 -72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !48
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ab = icmp sgt i64 %indvars.iv.next.1, %i.j
  %indvars.iv.next19.1 = add nsw i64 %indvars.iv18, -2
  br i1 %i.ab, label %.lr.ph.new, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = zext i32 %1 to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !19
  %i.ah = mul i32 %i.ag, 18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.013 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 2) i32 @FLAC__metadata_object_seektable_delete_point(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = icmp ult i32 %1, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !48
  %i.j = load i32, ptr %i.a, align 8, !tbaa !19
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.k, %bb.b ]
  %i.n = tail call i32 @FLAC__metadata_object_seektable_resize_points(ptr noundef nonnull %0, i32 noundef %.lcssa)
  ret i32 %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @FLAC__metadata_object_seektable_is_legal(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i32 @FLAC__format_seektable_is_legal(ptr noundef nonnull %i.a) #31
  ret i32 %i.b
}

declare i32 @FLAC__format_seektable_is_legal(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 2) i32 @FLAC__metadata_object_seektable_template_append_placeholders(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = add i32 %i.b, %1
  %i.d = tail call i32 @FLAC__metadata_object_seektable_resize_points(ptr noundef %0, i32 noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 2) i32 @FLAC__metadata_object_seektable_template_append_point(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = add i32 %i.b, 1
  %i.d = tail call i32 @FLAC__metadata_object_seektable_resize_points(ptr noundef %0, i32 noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = load i32, ptr %i.a, align 8, !tbaa !29
  %i.h = add i32 %i.g, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.i ; 3 uses
  store i64 %1, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 2) i32 @FLAC__metadata_object_seektable_template_append_points(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.thread, label %bb.b
end_hunk_0
