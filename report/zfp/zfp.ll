Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/zfp?download=true
inline.NumInlined: 142
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zfp_stream_set_mode:bb.a
  br i1 %or.cond43.i, label %bb.m, label %zfp_stream_compression_mode.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp ne i32 %i.aa, -1074                ; 2 uses
  %brmerge.not.i = select i1 %i.aq, i1 %i.am, i1 false
  %.mux.i = select i1 %i.aq, i32 1, i32 3
  br i1 %brmerge.not.i, label %bb.n, label %zfp_stream_compression_mode.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp sgt i32 %i.aa, -1075
  %spec.select.i = select i1 %i.ar, i32 4, i32 5
  br label %zfp_stream_compression_mode.exit

zfp_stream_compression_mode.exit:                 ; preds = %bb.k, %bb.j, %bb.i, %bb.n, %bb.m, %bb.l
  %.024 = phi i32 [ %spec.select.i, %bb.n ], [ 1, %bb.l ], [ 0, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ %.mux.i, %bb.m ]
  ret i32 %.024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @zfp_stream_set_params(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ule i32 %1, %2
  %i.b = add i32 %3, -1
  %i.c = icmp ult i32 %i.b, 64
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.d, align 4, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.f, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @zfp_stream_flush(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call i64 @stream_flush(ptr noundef %i.b) #20
  ret i64 %i.c
}

declare i64 @stream_flush(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define i64 @zfp_stream_align(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call i64 @stream_align(ptr noundef %i.b) #20
  ret i64 %i.c
}

declare i64 @stream_align(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @zfp_stream_rewind(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @stream_rewind(ptr noundef %i.b) #20
  ret void
}

declare void @stream_rewind(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @zfp_stream_execution(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @zfp_stream_omp_threads(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @zfp_stream_omp_chunk_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @zfp_stream_set_execution(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  switch i32 %1, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #20
  store ptr null, ptr %i.c, align 8, !tbaa !32
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.h) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !39
  store ptr %i.i, ptr %i.g, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.k, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 2) i32 @zfp_stream_set_omp_threads(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.b, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp eq ptr %.pre, null
  br i1 %.not19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %.pre) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !39
  store ptr %i.c, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.d
  %i.e = phi ptr [ %i.c, %bb.d ], [ %.pre, %bb.a ]
  store i32 1, ptr %i.a, align 8, !tbaa !31
  store i32 %1, ptr %i.e, align 4, !tbaa !38
  ret i32 1
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 2) i32 @zfp_stream_set_omp_chunk_size(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.b, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp eq ptr %.pre, null
  br i1 %.not19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %.pre) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !38
  store ptr %i.c, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.d
  %i.d = phi ptr [ %i.c, %bb.d ], [ %.pre, %bb.a ]
  store i32 1, ptr %i.a, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %1, ptr %i.e, align 4, !tbaa !39
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_promote_int8_to_int32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 4 uses
  %i.b = shl nuw i32 1, %i.a                      ; 5 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a
  %xtraiter = and i32 %i.b, 1
  %lcmp.mod.not.not = icmp eq i32 %i.a, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.07.prol = phi i32 [ %i.d, %scalar.ph.prol ], [ %i.b, %scalar.ph.preheader ]
  %.036.prol = phi ptr [ %i.i, %scalar.ph.prol ], [ %0, %scalar.ph.preheader ] ; 2 uses
  %.045.prol = phi ptr [ %i.e, %scalar.ph.prol ], [ %1, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.d = add nsw i32 %.07.prol, -1                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.045.prol, i64 1 ; 2 uses
  %i.f = load i8, ptr %.045.prol, align 1, !tbaa !25
  %i.g = sext i8 %i.f to i32
  %i.h = shl nsw i32 %i.g, 23
  %i.i = getelementptr inbounds nuw i8, ptr %.036.prol, i64 4 ; 2 uses
  store i32 %i.h, ptr %.036.prol, align 4, !tbaa !30
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !61

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07.unr = phi i32 [ %i.b, %scalar.ph.preheader ], [ %i.d, %scalar.ph.prol ]
  %.036.unr = phi ptr [ %0, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %.045.unr = phi ptr [ %1, %scalar.ph.preheader ], [ %i.e, %scalar.ph.prol ]
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %middle.block, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.k = add nsw i32 %i.b, -1
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %0, %i.p
  %bound1 = icmp ult ptr %1, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 1431655760
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.q  ; 2 uses
  %next.gep9 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep9, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep9, align 1, !tbaa !25, !alias.scope !67
  %wide.load10 = load <4 x i8>, ptr %i.r, align 1, !tbaa !25, !alias.scope !67
  %i.s = sext <4 x i8> %wide.load to <4 x i32>
  %i.t = sext <4 x i8> %wide.load10 to <4 x i32>
  %i.u = shl nsw <4 x i32> %i.s, splat (i32 23)
  %i.v = shl nsw <4 x i32> %i.t, splat (i32 23)
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.u, ptr %next.gep, align 4, !tbaa !30, !alias.scope !68, !noalias !67
  store <4 x i32> %i.v, ptr %i.w, align 4, !tbaa !30, !alias.scope !68, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07 = phi i32 [ %i.an, %scalar.ph ], [ %.07.unr, %scalar.ph.prol.loopexit ]
  %.036 = phi ptr [ %i.as, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.045 = phi ptr [ %i.ao, %scalar.ph ], [ %.045.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.045, i64 1
  %i.z = load i8, ptr %.045, align 1, !tbaa !25
  %i.aa = sext i8 %i.z to i32
  %i.ab = shl nsw i32 %i.aa, 23
  %i.ac = getelementptr inbounds nuw i8, ptr %.036, i64 4
  store i32 %i.ab, ptr %.036, align 4, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.045, i64 2
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !25
  %i.af = sext i8 %i.ae to i32
  %i.ag = shl nsw i32 %i.af, 23
  %i.ah = getelementptr inbounds nuw i8, ptr %.036, i64 8
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %.045, i64 3
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.ak = sext i8 %i.aj to i32
  %i.al = shl nsw i32 %i.ak, 23
  %i.am = getelementptr inbounds nuw i8, ptr %.036, i64 12
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !30
  %i.an = add nsw i32 %.07, -4                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !25
  %i.aq = sext i8 %i.ap to i32
  %i.ar = shl nsw i32 %i.aq, 23
  %i.as = getelementptr inbounds nuw i8, ptr %.036, i64 16
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !30
  %.not.3 = icmp eq i32 %i.an, 0
  br i1 %.not.3, label %middle.block, label %scalar.ph, !llvm.loop !66

middle.block:                                     ; preds = %vector.body, %scalar.ph.prol.loopexit, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_promote_uint8_to_int32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 4 uses
  %i.b = shl nuw i32 1, %i.a                      ; 5 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a
  %xtraiter = and i32 %i.b, 1
  %lcmp.mod.not.not = icmp eq i32 %i.a, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.07.prol = phi i32 [ %i.d, %scalar.ph.prol ], [ %i.b, %scalar.ph.preheader ]
  %.036.prol = phi ptr [ %i.j, %scalar.ph.prol ], [ %0, %scalar.ph.preheader ] ; 2 uses
  %.045.prol = phi ptr [ %i.e, %scalar.ph.prol ], [ %1, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.d = add nsw i32 %.07.prol, -1                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.045.prol, i64 1 ; 2 uses
  %i.f = load i8, ptr %.045.prol, align 1, !tbaa !25
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 23
  %i.i = add nsw i32 %i.h, -1073741824
  %i.j = getelementptr inbounds nuw i8, ptr %.036.prol, i64 4 ; 2 uses
  store i32 %i.i, ptr %.036.prol, align 4, !tbaa !30
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !69

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07.unr = phi i32 [ %i.b, %scalar.ph.preheader ], [ %i.d, %scalar.ph.prol ]
  %.036.unr = phi ptr [ %0, %scalar.ph.preheader ], [ %i.j, %scalar.ph.prol ]
  %.045.unr = phi ptr [ %1, %scalar.ph.preheader ], [ %i.e, %scalar.ph.prol ]
  %i.k = icmp eq i32 %i.a, 0
  br i1 %i.k, label %middle.block, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.l = add nsw i32 %i.b, -1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %0, %i.q
  %bound1 = icmp ult ptr %1, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 1431655760
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.r  ; 2 uses
  %next.gep9 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep9, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep9, align 1, !tbaa !25, !alias.scope !75
  %wide.load10 = load <4 x i8>, ptr %i.s, align 1, !tbaa !25, !alias.scope !75
  %i.t = zext <4 x i8> %wide.load to <4 x i32>
  %i.u = zext <4 x i8> %wide.load10 to <4 x i32>
  %i.v = shl nuw nsw <4 x i32> %i.t, splat (i32 23)
  %i.w = shl nuw nsw <4 x i32> %i.u, splat (i32 23)
  %i.x = add nsw <4 x i32> %i.v, splat (i32 -1073741824)
  %i.y = add nsw <4 x i32> %i.w, splat (i32 -1073741824)
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.x, ptr %next.gep, align 4, !tbaa !30, !alias.scope !76, !noalias !75
  store <4 x i32> %i.y, ptr %i.z, align 4, !tbaa !30, !alias.scope !76, !noalias !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !73

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07 = phi i32 [ %i.at, %scalar.ph ], [ %.07.unr, %scalar.ph.prol.loopexit ]
  %.036 = phi ptr [ %i.az, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.045 = phi ptr [ %i.au, %scalar.ph ], [ %.045.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.045, i64 1
  %i.ac = load i8, ptr %.045, align 1, !tbaa !25
end_hunk_0
