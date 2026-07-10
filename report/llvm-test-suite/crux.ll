inline.NumInlined: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4CruxC2Eiib:bb.a

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.o = load ptr, ptr @crux_data, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.epil
  store ptr null, ptr %i.p, align 8, !tbaa !17
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !18

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %i.q = sext i32 %i.l to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #16
  store ptr %i.s, ptr @crux_data_size, align 8, !tbaa !20
  %i.t = load i8, ptr @do_crux_timing, align 1, !tbaa !12, !range !22, !noundef !23
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.v = load ptr, ptr @crux_data, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  store ptr null, ptr %i.w, align 8, !tbaa !17
  %i.x = load ptr, ptr @crux_data, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !17
  %i.aa = load ptr, ptr @crux_data, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !17
  %i.ad = load ptr, ptr @crux_data, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ag = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @checkpoint_directory) #15 ; 0 uses
  %i.ah = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1)
  store ptr %i.ah, ptr @crux_time_fp, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4CruxD2Ev(ptr nofree noundef nonnull readonly align 4 captures(none) dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.c = load ptr, ptr @crux_data, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.c) #15
  %i.d = load ptr, ptr @crux_data_size, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.d) #15
  %i.e = load i8, ptr @do_crux_timing, align 1, !tbaa !12, !range !22, !noundef !23
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i32, ptr @checkpoint_timing_count, align 4 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr @crux_data, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.k) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !8
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !28

bb.b:                                             ; preds = %._crit_edge
  %i.o = load float, ptr @checkpoint_timing_sum, align 4, !tbaa !29 ; 2 uses
  %i.p = uitofp nneg i32 %i.g to float
  %i.q = fdiv float %i.o, %i.p
  %i.r = fpext float %i.q to double
  %i.s = fmul double %i.r, 1.000000e+03
  %i.t = load float, ptr @checkpoint_timing_size, align 4, !tbaa !29
  %i.u = fdiv float %i.t, %i.o
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, f0x3EB0C6F7A0B5ED8D
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.s, double noundef %i.w) ; 0 uses
  %i.y = load ptr, ptr @crux_time_fp, align 8, !tbaa !26
  %i.z = load float, ptr @checkpoint_timing_sum, align 4, !tbaa !29 ; 2 uses
  %i.aa = load i32, ptr @checkpoint_timing_count, align 4, !tbaa !4
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fdiv float %i.z, %i.ab
  %i.ad = fpext float %i.ac to double
  %i.ae = fmul double %i.ad, 1.000000e+03
  %i.af = load float, ptr @checkpoint_timing_size, align 4, !tbaa !29
  %i.ag = fdiv float %i.af, %i.z
  %i.ah = fpext float %i.ag to double
  %i.ai = fmul double %i.ah, f0x3EB0C6F7A0B5ED8D
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.2, double noundef %i.ae, double noundef %i.ai) #15 ; 0 uses
  %i.ak = load ptr, ptr @crux_time_fp, align 8, !tbaa !26
  %i.al = tail call i32 @fclose(ptr noundef %i.ak) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Crux16store_MallocPlusE10MallocPlus(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10MallocPlus26memory_entry_by_name_beginEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 2 uses
  %i.b = tail call noundef ptr @_ZN10MallocPlus24memory_entry_by_name_endEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  %.not27 = icmp eq ptr %i.a, %i.b
  br i1 %.not27, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a, %bb.c
  %.02228 = phi ptr [ %i.ab, %bb.c ], [ %i.a, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.02228, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %.02228, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  %i.f = and i32 %i.e, 16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.lr.ph30
  %i.h = getelementptr inbounds nuw i8, ptr %.02228, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not32 = icmp eq i64 %i.i, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.02228, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.l = sext i32 %i.z to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.021.lcssa = phi i64 [ 1, %.preheader ], [ %i.l, %._crit_edge.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.02228, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.p = tail call i64 @fwrite(ptr noundef readonly %i.n, i64 noundef 1, i64 noundef 30, ptr noundef %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02228, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39
  %i.s = icmp eq i64 %i.r, 4
  %i.t = load ptr, ptr @store_fp, align 8, !tbaa !26
  %.35 = select i1 %i.s, i64 4, i64 8
  %i.u = tail call i64 @fwrite(ptr noundef readonly %i.c, i64 noundef %.35, i64 noundef %.021.lcssa, ptr noundef %i.t) ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.v = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02125 = phi i32 [ 1, %.lr.ph ], [ %i.z, %bb.b ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40
  %i.y = trunc i64 %i.x to i32
  %i.z = mul i32 %.02125, %i.y                    ; 2 uses
  %indvars.iv.next = add i64 %i.v, 1              ; 2 uses
  %2 = and i64 %indvars.iv.next, 4294967295
  %i.aa = icmp ugt i64 %i.i, %2
  br i1 %i.aa, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !41

bb.c:                                             ; preds = %._crit_edge, %.lr.ph30
  %i.ab = tail call noundef ptr @_ZN10MallocPlus25memory_entry_by_name_nextEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 2 uses
  %i.ac = tail call noundef ptr @_ZN10MallocPlus24memory_entry_by_name_endEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  %.not = icmp eq ptr %i.ab, %i.ac
  br i1 %.not, label %._crit_edge31, label %.lr.ph30, !llvm.loop !42

._crit_edge31:                                    ; preds = %bb.c, %bb.a
  ret void
}

declare noundef ptr @_ZN10MallocPlus26memory_entry_by_name_beginEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #7

declare noundef ptr @_ZN10MallocPlus24memory_entry_by_name_endEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux18store_field_headerEPKci(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.c = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux26store_replicated_int_arrayEPim(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 4, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux29store_replicated_double_arrayEPdm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 8, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux15store_int_arrayEPim(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 4, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux18store_double_arrayEPdm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 8, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

declare noundef ptr @_ZN10MallocPlus25memory_entry_by_name_nextEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Crux11store_beginEmi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [60 x i8], align 16               ; 5 uses
  %i.b = alloca [40 x i8], align 16               ; 4 uses
  %i.c = alloca [60 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %i.f = load i32, ptr %0, align 4, !tbaa !8
  %i.g = srem i32 %i.e, %i.f
  store i32 %i.g, ptr @cp_num, align 4, !tbaa !4
  tail call void @cpu_timer_start(ptr noundef nonnull @tcheckpoint_time)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !10
  switch i32 %i.i, label %bb.h [
    i32 2, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @crux_data, align 8, !tbaa !14 ; 2 uses
  %i.k = load i32, ptr @cp_num, align 4, !tbaa !4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %.not9 = icmp eq ptr %i.n, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.n) #15
  %.pre = load ptr, ptr @crux_data, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %.pre, %bb.c ], [ %i.j, %bb.b ]
  %i.p = tail call noalias ptr @malloc(i64 noundef %1) #16
  %i.q = load i32, ptr @cp_num, align 4, !tbaa !4
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  store ptr %i.p, ptr %i.s, align 8, !tbaa !17
  %i.t = load ptr, ptr @crux_data_size, align 8, !tbaa !20
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.r
  store i64 %1, ptr %i.u, align 8, !tbaa !40
  %i.v = load ptr, ptr @crux_data, align 8, !tbaa !14
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.r
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.y = tail call noalias ptr @fmemopen(ptr noundef %i.x, i64 noundef %1, ptr noundef nonnull @.str.1) #15
  store ptr %i.y, ptr @store_fp, align 8, !tbaa !26
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.z = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @checkpoint_directory, i32 noundef %2) #15 ; 0 uses
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %2) #15 ; 0 uses
  %i.ab = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1) ; 2 uses
  store ptr %i.ab, ptr @store_fp, align 8, !tbaa !26
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.a, i32 noundef %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ad = load i32, ptr @cp_num, align 4, !tbaa !4
  %i.ae = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @checkpoint_directory, i32 noundef %i.ad) #15 ; 0 uses
  %i.af = call i32 @unlink(ptr noundef nonnull %i.c) #15 ; 0 uses
  %i.ag = call i32 @symlink(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.d
  %i.ah = load i8, ptr @do_crux_timing, align 1, !tbaa !12, !range !22, !noundef !23
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = uitofp i64 %1 to float
  %i.ak = load float, ptr @checkpoint_timing_size, align 4, !tbaa !29
  %i.al = fadd float %i.ak, %i.aj
  store float %i.al, ptr @checkpoint_timing_size, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

declare void @cpu_timer_start(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare noalias ptr @fmemopen(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux16store_named_intsEPKciPim(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.c = tail call i64 @fwrite(ptr noundef readonly %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %i.b) ; 0 uses
  %i.d = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.e = tail call i64 @fwrite(ptr noundef readonly %3, i64 noundef 4, i64 noundef %4, ptr noundef %i.d) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux18restore_named_intsEPKciPim(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.b, ptr noundef %i.c)
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %.not.i = icmp eq i32 %2, %i.e
  br i1 %.not.i, label %_ZN4Crux20restore_field_headerEPci.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.e, i32 noundef %2) ; 0 uses
  br label %_ZN4Crux20restore_field_headerEPci.exit

_ZN4Crux20restore_field_headerEPci.exit:          ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.h = tail call i64 @fread(ptr noundef %3, i64 noundef 4, i64 noundef %4, ptr noundef %i.g) ; 2 uses
  %.not.i3 = icmp eq i64 %i.h, %4
  br i1 %.not.i3, label %_ZN4Crux17restore_int_arrayEPim.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4Crux20restore_field_headerEPci.exit
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.h, i64 noundef %4) ; 0 uses
  br label %_ZN4Crux17restore_int_arrayEPim.exit

_ZN4Crux17restore_int_arrayEPim.exit:             ; preds = %_ZN4Crux20restore_field_headerEPci.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux20restore_field_headerEPci(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.c = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %i.b)
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %.not = icmp eq i32 %2, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.d, i32 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN4Crux17restore_int_arrayEPim(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 4, i64 noundef %2, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.b, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux11store_boolsEPbm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux10store_intsEPim(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 4, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux11store_longsEPxm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 8, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux12store_sizetsEPmm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 8, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux13store_doublesEPdm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 8, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux16store_long_arrayEPxm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 8, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux17store_float_arrayEPfm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 4, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Crux9store_endEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr @store_fp, align 8, !tbaa !26
  %i.b = tail call i32 @fclose(ptr noundef %i.a)  ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr @tcheckpoint_time, align 8, !tbaa !40
  %.sroa.2.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcheckpoint_time, i64 8), align 8, !tbaa !40
  %i.c = tail call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.d = load i8, ptr @do_crux_timing, align 1, !tbaa !12, !range !22, !noundef !23
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @crux_time_fp, align 8, !tbaa !26
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.7, double noundef %i.c) #15 ; 0 uses
  %i.h = load i32, ptr @checkpoint_timing_count, align 4, !tbaa !4
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr @checkpoint_timing_count, align 4, !tbaa !4
  %i.j = load float, ptr @checkpoint_timing_sum, align 4, !tbaa !29
  %i.k = fpext float %i.j to double
  %i.l = fadd double %i.c, %i.k
  %i.m = fptrunc double %i.l to float
  store float %i.m, ptr @checkpoint_timing_sum, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !11
  ret void
}

declare double @cpu_timer_stop(i64, i64) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Crux18restore_MallocPlusE10MallocPlus(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [34 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = tail call noundef ptr @_ZN10MallocPlus26memory_entry_by_name_beginEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 2 uses
  %i.c = tail call noundef ptr @_ZN10MallocPlus24memory_entry_by_name_endEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  %.not33 = icmp eq ptr %i.b, %i.c
  br i1 %.not33, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.a, %_ZN4Crux28restore_replicated_int_arrayEPim.exit
  %.02334 = phi ptr [ %i.am, %_ZN4Crux28restore_replicated_int_arrayEPim.exit ], [ %i.b, %bb.a ] ; 6 uses
  %i.d = load ptr, ptr %.02334, align 8, !tbaa !31 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02334, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = and i32 %i.f, 16
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit, label %.preheader

.preheader:                                       ; preds = %.lr.ph36
  %i.i = getelementptr inbounds nuw i8, ptr %.02334, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %.not38 = icmp eq i64 %i.j, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %.02334, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.m = sext i32 %i.y to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.022.lcssa = phi i64 [ 1, %.preheader ], [ %i.m, %._crit_edge.loopexit ] ; 9 uses
  %i.n = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.o = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 30, ptr noundef %i.n)
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.not.i = icmp eq i32 %i.p, 30
  br i1 %.not.i, label %_ZN4Crux20restore_field_headerEPci.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.p, i32 noundef 30) ; 0 uses
  br label %_ZN4Crux20restore_field_headerEPci.exit

_ZN4Crux20restore_field_headerEPci.exit:          ; preds = %._crit_edge, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02334, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.s) #17
  %.not25 = icmp eq i32 %i.t, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.u = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.02231 = phi i32 [ 1, %.lr.ph ], [ %i.y, %bb.c ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40
  %i.x = trunc i64 %i.w to i32
  %i.y = mul i32 %.02231, %i.x                    ; 2 uses
  %indvars.iv.next = add i64 %i.u, 1              ; 2 uses
  %2 = and i64 %indvars.iv.next, 4294967295
  %i.z = icmp ugt i64 %i.j, %2
  br i1 %i.z, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !43

bb.d:                                             ; preds = %_ZN4Crux20restore_field_headerEPci.exit
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s) ; 0 uses
  call void @exit(i32 noundef -1) #18
  unreachable

bb.e:                                             ; preds = %_ZN4Crux20restore_field_headerEPci.exit
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !35
  %i.ac = and i32 %i.ab, 32
  %.not26 = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %.02334, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !39
  %i.af = icmp eq i64 %i.ae, 4                    ; 2 uses
  %i.ag = load ptr, ptr @restore_fp, align 8, !tbaa !26 ; 4 uses
  br i1 %.not26, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call i64 @fread(ptr noundef %i.d, i64 noundef 4, i64 noundef %.022.lcssa, ptr noundef %i.ag) ; 2 uses
  %.not.i27 = icmp eq i64 %i.ah, %.022.lcssa
  br i1 %.not.i27, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call i64 @fread(ptr noundef %i.d, i64 noundef 8, i64 noundef %.022.lcssa, ptr noundef %i.ag) ; 2 uses
  %.not.i28 = icmp eq i64 %i.ai, %.022.lcssa
  br i1 %.not.i28, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit.sink.split

bb.i:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call i64 @fread(ptr noundef %i.d, i64 noundef 4, i64 noundef %.022.lcssa, ptr noundef %i.ag) ; 2 uses
  %.not.i29 = icmp eq i64 %i.aj, %.022.lcssa
  br i1 %.not.i29, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ak = tail call i64 @fread(ptr noundef %i.d, i64 noundef 8, i64 noundef %.022.lcssa, ptr noundef %i.ag) ; 2 uses
  %.not.i30 = icmp eq i64 %i.ak, %.022.lcssa
  br i1 %.not.i30, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit, label %_ZN4Crux28restore_replicated_int_arrayEPim.exit.sink.split

_ZN4Crux28restore_replicated_int_arrayEPim.exit.sink.split: ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.sink = phi i64 [ %i.aj, %bb.j ], [ %i.ai, %bb.h ], [ %i.ah, %bb.g ], [ %i.ak, %bb.k ]
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %.sink, i64 noundef %.022.lcssa) ; 0 uses
  br label %_ZN4Crux28restore_replicated_int_arrayEPim.exit

_ZN4Crux28restore_replicated_int_arrayEPim.exit:  ; preds = %_ZN4Crux28restore_replicated_int_arrayEPim.exit.sink.split, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph36
  %i.am = tail call noundef ptr @_ZN10MallocPlus25memory_entry_by_name_nextEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 2 uses
  %i.an = tail call noundef ptr @_ZN10MallocPlus24memory_entry_by_name_endEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  %.not = icmp eq ptr %i.am, %i.an
  br i1 %.not, label %._crit_edge37, label %.lr.ph36, !llvm.loop !44

._crit_edge37:                                    ; preds = %_ZN4Crux28restore_replicated_int_arrayEPim.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN4Crux28restore_replicated_int_arrayEPim(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 4, i64 noundef %2, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.b, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN4Crux31restore_replicated_double_arrayEPdm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 8, i64 noundef %2, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.b, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN4Crux20restore_double_arrayEPdm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 8, i64 noundef %2, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.b, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Crux13restore_beginEPci(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [60 x i8], align 16               ; 6 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !8
  %i.c = srem i32 %2, %i.b
  store i32 %i.c, ptr @rs_num, align 4, !tbaa !4
  tail call void @cpu_timer_start(ptr noundef nonnull @trestore_time)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %1) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.e = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) ; 2 uses
  store ptr %i.e, ptr @restore_fp, align 8, !tbaa !26
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr @restore_type, align 4, !tbaa !4
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  switch i32 %i.h, label %bb.j [
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr @rs_num, align 4, !tbaa !4
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.i, i32 noundef %2) ; 0 uses
  %i.k = load ptr, ptr @crux_data, align 8, !tbaa !14
  %i.l = load i32, ptr @rs_num, align 4, !tbaa !4
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = load ptr, ptr @crux_data_size, align 8, !tbaa !20
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40
  %i.s = tail call noalias ptr @fmemopen(ptr noundef %i.o, i64 noundef %i.r, ptr noundef nonnull @.str.12) #15
  store ptr %i.s, ptr @restore_fp, align 8, !tbaa !26
  store i32 2, ptr @restore_type, align 4, !tbaa !4
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.t = load i32, ptr @rs_num, align 4, !tbaa !4
  %i.u = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull @checkpoint_directory, i32 noundef %i.t) #15 ; 0 uses
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %i.a, i32 noundef %2) ; 0 uses
  %i.w = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12) ; 2 uses
  store ptr %i.w, ptr @restore_fp, align 8, !tbaa !26
  %.not8 = icmp eq ptr %i.w, null
  br i1 %.not8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 2, ptr @restore_type, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Crux13restore_boolsEPbm(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @restore_fp, align 8, !tbaa !26
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
