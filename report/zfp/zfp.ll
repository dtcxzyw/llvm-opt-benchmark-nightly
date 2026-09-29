Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/zfp?download=true
inline.NumInlined: 142
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@stream_flush

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
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !38
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
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !39
  store ptr %i.c, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.d
  %i.e = phi ptr [ %i.c, %bb.d ], [ %.pre, %bb.a ]
  store i32 1, ptr %i.a, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %1, ptr %i.f, align 4, !tbaa !39
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_promote_int8_to_int32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 4 uses
  %i.b = shl nuw i32 1, %i.a                      ; 5 uses
  %3 = zext nneg i32 %i.b to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a
  %xtraiter = and i32 %i.b, 1
  %lcmp.mod.not.not = icmp eq i32 %i.a, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.07.prol = phi i32 [ %i.c, %scalar.ph.prol ], [ %i.b, %scalar.ph.preheader ]
  %.036.prol = phi ptr [ %i.h, %scalar.ph.prol ], [ %0, %scalar.ph.preheader ] ; 2 uses
  %.045.prol = phi ptr [ %i.d, %scalar.ph.prol ], [ %1, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.c = add nsw i32 %.07.prol, -1                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.045.prol, i64 1 ; 2 uses
  %i.e = load i8, ptr %.045.prol, align 1, !tbaa !25
  %i.f = sext i8 %i.e to i32
  %i.g = shl nsw i32 %i.f, 23
  %i.h = getelementptr inbounds nuw i8, ptr %.036.prol, i64 4 ; 2 uses
  store i32 %i.g, ptr %.036.prol, align 4, !tbaa !30
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !61

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07.unr = phi i32 [ %i.b, %scalar.ph.preheader ], [ %i.c, %scalar.ph.prol ]
  %.036.unr = phi ptr [ %0, %scalar.ph.preheader ], [ %i.h, %scalar.ph.prol ]
  %.045.unr = phi ptr [ %1, %scalar.ph.preheader ], [ %i.d, %scalar.ph.prol ]
  %i.i = icmp eq i32 %i.a, 0
  br i1 %i.i, label %middle.block, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.j = add nsw i32 %i.b, -1
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 4
  %scevgep8 = getelementptr i8, ptr %1, i64 %3
  %bound0 = icmp ult ptr %0, %scevgep8
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 1431655760
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 2 uses
  %next.gep9 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep9, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep9, align 1, !tbaa !25, !alias.scope !67
  %wide.load10 = load <4 x i8>, ptr %i.o, align 1, !tbaa !25, !alias.scope !67
  %i.p = sext <4 x i8> %wide.load to <4 x i32>
  %i.q = sext <4 x i8> %wide.load10 to <4 x i32>
  %i.r = shl nsw <4 x i32> %i.p, splat (i32 23)
  %i.s = shl nsw <4 x i32> %i.q, splat (i32 23)
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.r, ptr %next.gep, align 4, !tbaa !30, !alias.scope !68, !noalias !67
  store <4 x i32> %i.s, ptr %i.t, align 4, !tbaa !30, !alias.scope !68, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07 = phi i32 [ %i.ak, %scalar.ph ], [ %.07.unr, %scalar.ph.prol.loopexit ]
  %.036 = phi ptr [ %i.ap, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.045 = phi ptr [ %i.al, %scalar.ph ], [ %.045.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.045, i64 1
  %i.w = load i8, ptr %.045, align 1, !tbaa !25
  %i.x = sext i8 %i.w to i32
  %i.y = shl nsw i32 %i.x, 23
  %i.z = getelementptr inbounds nuw i8, ptr %.036, i64 4
  store i32 %i.y, ptr %.036, align 4, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %.045, i64 2
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !25
  %i.ac = sext i8 %i.ab to i32
  %i.ad = shl nsw i32 %i.ac, 23
  %i.ae = getelementptr inbounds nuw i8, ptr %.036, i64 8
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %.045, i64 3
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !25
  %i.ah = sext i8 %i.ag to i32
  %i.ai = shl nsw i32 %i.ah, 23
  %i.aj = getelementptr inbounds nuw i8, ptr %.036, i64 12
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !30
  %i.ak = add nsw i32 %.07, -4                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.am = load i8, ptr %i.af, align 1, !tbaa !25
  %i.an = sext i8 %i.am to i32
  %i.ao = shl nsw i32 %i.an, 23
  %i.ap = getelementptr inbounds nuw i8, ptr %.036, i64 16
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !30
  %.not.3 = icmp eq i32 %i.ak, 0
  br i1 %.not.3, label %middle.block, label %scalar.ph, !llvm.loop !66

middle.block:                                     ; preds = %vector.body, %scalar.ph.prol.loopexit, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_promote_uint8_to_int32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 4 uses
  %i.b = shl nuw i32 1, %i.a                      ; 5 uses
  %3 = zext nneg i32 %i.b to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a
  %xtraiter = and i32 %i.b, 1
  %lcmp.mod.not.not = icmp eq i32 %i.a, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.07.prol = phi i32 [ %i.c, %scalar.ph.prol ], [ %i.b, %scalar.ph.preheader ]
  %.036.prol = phi ptr [ %i.i, %scalar.ph.prol ], [ %0, %scalar.ph.preheader ] ; 2 uses
  %.045.prol = phi ptr [ %i.d, %scalar.ph.prol ], [ %1, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.c = add nsw i32 %.07.prol, -1                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.045.prol, i64 1 ; 2 uses
  %i.e = load i8, ptr %.045.prol, align 1, !tbaa !25
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 23
  %i.h = add nsw i32 %i.g, -1073741824
  %i.i = getelementptr inbounds nuw i8, ptr %.036.prol, i64 4 ; 2 uses
  store i32 %i.h, ptr %.036.prol, align 4, !tbaa !30
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !69

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07.unr = phi i32 [ %i.b, %scalar.ph.preheader ], [ %i.c, %scalar.ph.prol ]
  %.036.unr = phi ptr [ %0, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %.045.unr = phi ptr [ %1, %scalar.ph.preheader ], [ %i.d, %scalar.ph.prol ]
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %middle.block, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.k = add nsw i32 %i.b, -1
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.n, i64 4
  %scevgep8 = getelementptr i8, ptr %1, i64 %3
  %bound0 = icmp ult ptr %0, %scevgep8
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 1431655760
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.o  ; 2 uses
  %next.gep9 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep9, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep9, align 1, !tbaa !25, !alias.scope !75
  %wide.load10 = load <4 x i8>, ptr %i.p, align 1, !tbaa !25, !alias.scope !75
  %i.q = zext <4 x i8> %wide.load to <4 x i32>
  %i.r = zext <4 x i8> %wide.load10 to <4 x i32>
  %i.s = shl nuw nsw <4 x i32> %i.q, splat (i32 23)
  %i.t = shl nuw nsw <4 x i32> %i.r, splat (i32 23)
  %i.u = add nsw <4 x i32> %i.s, splat (i32 -1073741824)
  %i.v = add nsw <4 x i32> %i.t, splat (i32 -1073741824)
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.u, ptr %next.gep, align 4, !tbaa !30, !alias.scope !76, !noalias !75
  store <4 x i32> %i.v, ptr %i.w, align 4, !tbaa !30, !alias.scope !76, !noalias !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !73

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07 = phi i32 [ %i.aq, %scalar.ph ], [ %.07.unr, %scalar.ph.prol.loopexit ]
  %.036 = phi ptr [ %i.aw, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.045 = phi ptr [ %i.ar, %scalar.ph ], [ %.045.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.045, i64 1
  %i.z = load i8, ptr %.045, align 1, !tbaa !25
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 23
  %i.ac = add nsw i32 %i.ab, -1073741824
  %i.ad = getelementptr inbounds nuw i8, ptr %.036, i64 4
  store i32 %i.ac, ptr %.036, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %.045, i64 2
  %i.af = load i8, ptr %i.y, align 1, !tbaa !25
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 23
  %i.ai = add nsw i32 %i.ah, -1073741824
  %i.aj = getelementptr inbounds nuw i8, ptr %.036, i64 8
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %.045, i64 3
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !25
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 23
  %i.ao = add nsw i32 %i.an, -1073741824
  %i.ap = getelementptr inbounds nuw i8, ptr %.036, i64 12
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !30
  %i.aq = add nsw i32 %.07, -4                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.as = load i8, ptr %i.ak, align 1, !tbaa !25
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 23
  %i.av = add nsw i32 %i.au, -1073741824
  %i.aw = getelementptr inbounds nuw i8, ptr %.036, i64 16
  store i32 %i.av, ptr %i.ap, align 4, !tbaa !30
  %.not.3 = icmp eq i32 %i.aq, 0
  br i1 %.not.3, label %middle.block, label %scalar.ph, !llvm.loop !74

middle.block:                                     ; preds = %vector.body, %scalar.ph.prol.loopexit, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_promote_int16_to_int32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 2 uses
  %i.b = shl nuw i32 1, %i.a                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 3
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.c = and i32 %i.b, 1431655760
  %n.vec = zext nneg i32 %i.c to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.d  ; 2 uses
  %i.e = shl i64 %index, 1
  %next.gep8 = getelementptr i8, ptr %1, i64 %i.e ; 2 uses
  %i.f = getelementptr i8, ptr %next.gep8, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep8, align 2, !tbaa !44
  %wide.load9 = load <4 x i16>, ptr %i.f, align 2, !tbaa !44
  %i.g = sext <4 x i16> %wide.load to <4 x i32>
  %i.h = sext <4 x i16> %wide.load9 to <4 x i32>
  %i.i = shl nsw <4 x i32> %i.g, splat (i32 15)
  %i.j = shl nsw <4 x i32> %i.h, splat (i32 15)
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.i, ptr %next.gep, align 4, !tbaa !30
  store <4 x i32> %i.j, ptr %i.k, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !77

scalar.ph:                                        ; preds = %bb.a, %scalar.ph
  %.07 = phi i32 [ %i.m, %scalar.ph ], [ %i.b, %bb.a ]
  %.036 = phi ptr [ %i.r, %scalar.ph ], [ %0, %bb.a ] ; 2 uses
  %.045 = phi ptr [ %i.n, %scalar.ph ], [ %1, %bb.a ] ; 2 uses
  %i.m = add nsw i32 %.07, -1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.045, i64 2
  %i.o = load i16, ptr %.045, align 2, !tbaa !44
  %i.p = sext i16 %i.o to i32
  %i.q = shl nsw i32 %i.p, 15
  %i.r = getelementptr inbounds nuw i8, ptr %.036, i64 4
  store i32 %i.q, ptr %.036, align 4, !tbaa !30
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %middle.block, label %scalar.ph, !llvm.loop !78

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_promote_uint16_to_int32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 2 uses
  %i.b = shl nuw i32 1, %i.a                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 3
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.c = and i32 %i.b, 1431655760
  %n.vec = zext nneg i32 %i.c to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.d  ; 2 uses
  %i.e = shl i64 %index, 1
  %next.gep8 = getelementptr i8, ptr %1, i64 %i.e ; 2 uses
  %i.f = getelementptr i8, ptr %next.gep8, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep8, align 2, !tbaa !44
  %wide.load9 = load <4 x i16>, ptr %i.f, align 2, !tbaa !44
  %i.g = zext <4 x i16> %wide.load to <4 x i32>
  %i.h = zext <4 x i16> %wide.load9 to <4 x i32>
  %i.i = shl nuw nsw <4 x i32> %i.g, splat (i32 15)
  %i.j = shl nuw nsw <4 x i32> %i.h, splat (i32 15)
  %i.k = add nsw <4 x i32> %i.i, splat (i32 -1073741824)
  %i.l = add nsw <4 x i32> %i.j, splat (i32 -1073741824)
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.k, ptr %next.gep, align 4, !tbaa !30
  store <4 x i32> %i.l, ptr %i.m, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !79

scalar.ph:                                        ; preds = %bb.a, %scalar.ph
  %.07 = phi i32 [ %i.o, %scalar.ph ], [ %i.b, %bb.a ]
  %.036 = phi ptr [ %i.u, %scalar.ph ], [ %0, %bb.a ] ; 2 uses
  %.045 = phi ptr [ %i.p, %scalar.ph ], [ %1, %bb.a ] ; 2 uses
  %i.o = add nsw i32 %.07, -1                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.045, i64 2
  %i.q = load i16, ptr %.045, align 2, !tbaa !44
  %i.r = zext i16 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 15
  %i.t = add nsw i32 %i.s, -1073741824
  %i.u = getelementptr inbounds nuw i8, ptr %.036, i64 4
  store i32 %i.t, ptr %.036, align 4, !tbaa !30
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %middle.block, label %scalar.ph, !llvm.loop !80

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_demote_int32_to_int8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 4 uses
  %i.b = shl nuw i32 1, %i.a                      ; 4 uses
  %3 = zext nneg i32 %i.b to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a
  %lcmp.mod.not.not = icmp eq i32 %i.a, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.c = add nsw i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %1, align 4, !tbaa !30
  %i.f = ashr i32 %i.e, 23
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.f, i32 -128)
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.g, i32 127)
  %i.i = trunc nsw i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %0, align 1, !tbaa !25
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.011.unr = phi ptr [ %0, %scalar.ph.preheader ], [ %i.j, %scalar.ph.prol ]
  %.0710.unr = phi i32 [ %i.b, %scalar.ph.preheader ], [ %i.c, %scalar.ph.prol ]
  %.089.unr = phi ptr [ %1, %scalar.ph.preheader ], [ %i.d, %scalar.ph.prol ]
  %i.k = icmp eq i32 %i.a, 0
  br i1 %i.k, label %middle.block, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.l = add nsw i32 %i.b, -1
  %i.m = zext i32 %i.l to i64
  %scevgep = getelementptr i8, ptr %0, i64 %3
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep12 = getelementptr i8, ptr %i.o, i64 4
  %bound0 = icmp ult ptr %0, %scevgep12
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 1431655760
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.p = shl i64 %index, 2
  %next.gep13 = getelementptr i8, ptr %1, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !30, !alias.scope !86
  %wide.load14 = load <4 x i32>, ptr %i.q, align 4, !tbaa !30, !alias.scope !86
  %i.r = ashr <4 x i32> %wide.load, splat (i32 23)
  %i.s = ashr <4 x i32> %wide.load14, splat (i32 23)
  %i.t = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> splat (i32 -128))
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.s, <4 x i32> splat (i32 -128))
  %i.v = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.t, <4 x i32> splat (i32 127))
  %i.w = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.u, <4 x i32> splat (i32 127))
  %i.x = trunc nsw <4 x i32> %i.v to <4 x i8>
  %i.y = trunc nsw <4 x i32> %i.w to <4 x i8>
  %i.z = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.x, ptr %next.gep, align 1, !tbaa !25, !alias.scope !87, !noalias !86
  store <4 x i8> %i.y, ptr %i.z, align 1, !tbaa !25, !alias.scope !87, !noalias !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011 = phi ptr [ %i.ap, %scalar.ph ], [ %.011.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0710 = phi i32 [ %i.ai, %scalar.ph ], [ %.0710.unr, %scalar.ph.prol.loopexit ]
  %.089 = phi ptr [ %i.aj, %scalar.ph ], [ %.089.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.ac = load i32, ptr %.089, align 4, !tbaa !30
  %i.ad = ashr i32 %i.ac, 23
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 -128)
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 127)
  %i.ag = trunc nsw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.011, i64 1
  store i8 %i.ag, ptr %.011, align 1, !tbaa !25
  %i.ai = add nsw i32 %.0710, -2                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.089, i64 8
  %i.ak = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.al = ashr i32 %i.ak, 23
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 -128)
  %i.an = tail call i32 @llvm.smin.i32(i32 %i.am, i32 127)
  %i.ao = trunc nsw i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.011, i64 2
  store i8 %i.ao, ptr %i.ah, align 1, !tbaa !25
  %.not.1 = icmp eq i32 %i.ai, 0
  br i1 %.not.1, label %middle.block, label %scalar.ph, !llvm.loop !85

middle.block:                                     ; preds = %vector.body, %scalar.ph.prol.loopexit, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_demote_int32_to_uint8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 4 uses
  %i.b = shl nuw i32 1, %i.a                      ; 4 uses
  %3 = zext nneg i32 %i.b to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a
  %lcmp.mod.not.not = icmp eq i32 %i.a, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.c = add nsw i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %1, align 4, !tbaa !30
  %i.f = ashr i32 %i.e, 23
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.f, i32 -128)
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.g, i32 127)
  %i.i = trunc nsw i32 %i.h to i8
  %i.j = xor i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %0, align 1, !tbaa !25
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.011.unr = phi ptr [ %0, %scalar.ph.preheader ], [ %i.k, %scalar.ph.prol ]
  %.0710.unr = phi i32 [ %i.b, %scalar.ph.preheader ], [ %i.c, %scalar.ph.prol ]
  %.089.unr = phi ptr [ %1, %scalar.ph.preheader ], [ %i.d, %scalar.ph.prol ]
  %i.l = icmp eq i32 %i.a, 0
  br i1 %i.l, label %middle.block, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.m = add nsw i32 %i.b, -1
  %i.n = zext i32 %i.m to i64
  %scevgep = getelementptr i8, ptr %0, i64 %3
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  %scevgep12 = getelementptr i8, ptr %i.p, i64 4
  %bound0 = icmp ult ptr %0, %scevgep12
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 1431655760
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.q = shl i64 %index, 2
  %next.gep13 = getelementptr i8, ptr %1, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !30, !alias.scope !93
  %wide.load14 = load <4 x i32>, ptr %i.r, align 4, !tbaa !30, !alias.scope !93
  %i.s = ashr <4 x i32> %wide.load, splat (i32 23)
  %i.t = ashr <4 x i32> %wide.load14, splat (i32 23)
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.s, <4 x i32> splat (i32 -128))
  %i.v = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.t, <4 x i32> splat (i32 -128))
  %i.w = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.u, <4 x i32> splat (i32 127))
  %i.x = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.v, <4 x i32> splat (i32 127))
  %i.y = trunc nsw <4 x i32> %i.w to <4 x i8>
  %i.z = xor <4 x i8> %i.y, splat (i8 -128)
  %i.aa = trunc nsw <4 x i32> %i.x to <4 x i8>
  %i.ab = xor <4 x i8> %i.aa, splat (i8 -128)
  %i.ac = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.z, ptr %next.gep, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !91

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011 = phi ptr [ %i.au, %scalar.ph ], [ %.011.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0710 = phi i32 [ %i.am, %scalar.ph ], [ %.0710.unr, %scalar.ph.prol.loopexit ]
  %.089 = phi ptr [ %i.an, %scalar.ph ], [ %.089.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.af = load i32, ptr %.089, align 4, !tbaa !30
  %i.ag = ashr i32 %i.af, 23
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 -128)
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 127)
  %i.aj = trunc nsw i32 %i.ai to i8
  %i.ak = xor i8 %i.aj, -128
  %i.al = getelementptr inbounds nuw i8, ptr %.011, i64 1
  store i8 %i.ak, ptr %.011, align 1, !tbaa !25
  %i.am = add nsw i32 %.0710, -2                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.089, i64 8
  %i.ao = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.ap = ashr i32 %i.ao, 23
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 -128)
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 127)
  %i.as = trunc nsw i32 %i.ar to i8
  %i.at = xor i8 %i.as, -128
  %i.au = getelementptr inbounds nuw i8, ptr %.011, i64 2
  store i8 %i.at, ptr %i.al, align 1, !tbaa !25
  %.not.1 = icmp eq i32 %i.am, 0
  br i1 %.not.1, label %middle.block, label %scalar.ph, !llvm.loop !92

middle.block:                                     ; preds = %vector.body, %scalar.ph.prol.loopexit, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_demote_int32_to_int16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 2 uses
  %i.b = shl nuw i32 1, %i.a                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 3
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.c = and i32 %i.b, 1431655760
  %n.vec = zext nneg i32 %i.c to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.d  ; 2 uses
  %i.e = shl i64 %index, 2
  %next.gep12 = getelementptr i8, ptr %1, i64 %i.e ; 2 uses
  %i.f = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !30
  %wide.load13 = load <4 x i32>, ptr %i.f, align 4, !tbaa !30
  %i.g = ashr <4 x i32> %wide.load, splat (i32 15)
  %i.h = ashr <4 x i32> %wide.load13, splat (i32 15)
  %i.i = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.g, <4 x i32> splat (i32 -32768))
  %i.j = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.h, <4 x i32> splat (i32 -32768))
  %i.k = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.i, <4 x i32> splat (i32 32767))
  %i.l = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.j, <4 x i32> splat (i32 32767))
  %i.m = trunc nsw <4 x i32> %i.k to <4 x i16>
  %i.n = trunc nsw <4 x i32> %i.l to <4 x i16>
  %i.o = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.m, ptr %next.gep, align 2, !tbaa !44
  store <4 x i16> %i.n, ptr %i.o, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !95

scalar.ph:                                        ; preds = %bb.a, %scalar.ph
  %.011 = phi ptr [ %i.x, %scalar.ph ], [ %0, %bb.a ] ; 2 uses
  %.0710 = phi i32 [ %i.q, %scalar.ph ], [ %i.b, %bb.a ]
  %.089 = phi ptr [ %i.r, %scalar.ph ], [ %1, %bb.a ] ; 2 uses
  %i.q = add nsw i32 %.0710, -1                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.s = load i32, ptr %.089, align 4, !tbaa !30
  %i.t = ashr i32 %i.s, 15
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 -32768)
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.u, i32 32767)
  %i.w = trunc nsw i32 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %.011, i64 2
  store i16 %i.w, ptr %.011, align 2, !tbaa !44
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %middle.block, label %scalar.ph, !llvm.loop !96

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_demote_int32_to_uint16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 2 uses
  %i.b = shl nuw i32 1, %i.a                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 3
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.c = and i32 %i.b, 1431655760
  %n.vec = zext nneg i32 %i.c to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.d  ; 2 uses
  %i.e = shl i64 %index, 2
  %next.gep12 = getelementptr i8, ptr %1, i64 %i.e ; 2 uses
  %i.f = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !30
  %wide.load13 = load <4 x i32>, ptr %i.f, align 4, !tbaa !30
  %i.g = ashr <4 x i32> %wide.load, splat (i32 15)
  %i.h = ashr <4 x i32> %wide.load13, splat (i32 15)
  %i.i = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.g, <4 x i32> splat (i32 -32768))
  %i.j = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.h, <4 x i32> splat (i32 -32768))
  %i.k = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.i, <4 x i32> splat (i32 32767))
  %i.l = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.j, <4 x i32> splat (i32 32767))
  %i.m = trunc nsw <4 x i32> %i.k to <4 x i16>
  %i.n = xor <4 x i16> %i.m, splat (i16 -32768)
  %i.o = trunc nsw <4 x i32> %i.l to <4 x i16>
  %i.p = xor <4 x i16> %i.o, splat (i16 -32768)
  %i.q = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.n, ptr %next.gep, align 2, !tbaa !44
  store <4 x i16> %i.p, ptr %i.q, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !97

scalar.ph:                                        ; preds = %bb.a, %scalar.ph
  %.011 = phi ptr [ %i.aa, %scalar.ph ], [ %0, %bb.a ] ; 2 uses
  %.0710 = phi i32 [ %i.s, %scalar.ph ], [ %i.b, %bb.a ]
  %.089 = phi ptr [ %i.t, %scalar.ph ], [ %1, %bb.a ] ; 2 uses
  %i.s = add nsw i32 %.0710, -1                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.u = load i32, ptr %.089, align 4, !tbaa !30
  %i.v = ashr i32 %i.u, 15
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.v, i32 -32768)
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.w, i32 32767)
  %i.y = trunc nsw i32 %i.x to i16
  %i.z = xor i16 %i.y, -32768
  %i.aa = getelementptr inbounds nuw i8, ptr %.011, i64 2
  store i16 %i.z, ptr %.011, align 2, !tbaa !44
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %middle.block, label %scalar.ph, !llvm.loop !98

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @zfp_compress(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  %.not32.i = icmp eq i64 %i.d, 0
  br i1 %.not32.i, label %bb.b, label %zfp_field_stride.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %.not33.i = icmp eq i64 %i.f, 0
  br i1 %.not33.i, label %bb.c, label %zfp_field_stride.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  %.not34.i = icmp eq i64 %i.h, 0
  br i1 %.not34.i, label %bb.d, label %zfp_field_stride.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = icmp ne i64 %i.j, 0
end_hunk_0
