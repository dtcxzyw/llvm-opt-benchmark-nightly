Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/zfp?download=true
inline.NumInlined: 142
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zfp_stream_omp_threads:bb.a
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
  %i.b = shl nuw i32 1, %i.a                      ; 6 uses
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
  %i.c = add i32 %.07.prol, -1                    ; 2 uses
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
  %i.n = zext nneg i32 %i.b to i64
  %scevgep8 = getelementptr i8, ptr %1, i64 %i.n
  %bound0 = icmp ult ptr %0, %scevgep8
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.o = and i32 %i.b, 1431655760
  %n.vec = zext nneg i32 %i.o to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.p  ; 2 uses
  %next.gep9 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep9, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep9, align 1, !tbaa !25, !alias.scope !67
  %wide.load10 = load <4 x i8>, ptr %i.q, align 1, !tbaa !25, !alias.scope !67
  %i.r = sext <4 x i8> %wide.load to <4 x i32>
  %i.s = sext <4 x i8> %wide.load10 to <4 x i32>
  %i.t = shl nsw <4 x i32> %i.r, splat (i32 23)
  %i.u = shl nsw <4 x i32> %i.s, splat (i32 23)
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.t, ptr %next.gep, align 4, !tbaa !30, !alias.scope !68, !noalias !67
  store <4 x i32> %i.u, ptr %i.v, align 4, !tbaa !30, !alias.scope !68, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07 = phi i32 [ %i.am, %scalar.ph ], [ %.07.unr, %scalar.ph.prol.loopexit ]
  %.036 = phi ptr [ %i.ar, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.045 = phi ptr [ %i.an, %scalar.ph ], [ %.045.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.045, i64 1
  %i.y = load i8, ptr %.045, align 1, !tbaa !25
  %i.z = sext i8 %i.y to i32
  %i.aa = shl nsw i32 %i.z, 23
  %i.ab = getelementptr inbounds nuw i8, ptr %.036, i64 4
  store i32 %i.aa, ptr %.036, align 4, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %.045, i64 2
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !25
  %i.ae = sext i8 %i.ad to i32
  %i.af = shl nsw i32 %i.ae, 23
  %i.ag = getelementptr inbounds nuw i8, ptr %.036, i64 8
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %.045, i64 3
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.aj = sext i8 %i.ai to i32
  %i.ak = shl nsw i32 %i.aj, 23
  %i.al = getelementptr inbounds nuw i8, ptr %.036, i64 12
  store i32 %i.ak, ptr %i.ag, align 4, !tbaa !30
  %i.am = add i32 %.07, -4                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !25
  %i.ap = sext i8 %i.ao to i32
  %i.aq = shl nsw i32 %i.ap, 23
  %i.ar = getelementptr inbounds nuw i8, ptr %.036, i64 16
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !30
  %.not.3 = icmp eq i32 %i.am, 0
  br i1 %.not.3, label %middle.block, label %scalar.ph, !llvm.loop !66

middle.block:                                     ; preds = %vector.body, %scalar.ph.prol.loopexit, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_promote_uint8_to_int32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 4 uses
  %i.b = shl nuw i32 1, %i.a                      ; 6 uses
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
  %i.c = add i32 %.07.prol, -1                    ; 2 uses
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
  %i.o = zext nneg i32 %i.b to i64
  %scevgep8 = getelementptr i8, ptr %1, i64 %i.o
  %bound0 = icmp ult ptr %0, %scevgep8
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = and i32 %i.b, 1431655760
  %n.vec = zext nneg i32 %i.p to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.q  ; 2 uses
  %next.gep9 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep9, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep9, align 1, !tbaa !25, !alias.scope !75
  %wide.load10 = load <4 x i8>, ptr %i.r, align 1, !tbaa !25, !alias.scope !75
  %i.s = zext <4 x i8> %wide.load to <4 x i32>
  %i.t = zext <4 x i8> %wide.load10 to <4 x i32>
  %i.u = shl nuw nsw <4 x i32> %i.s, splat (i32 23)
  %i.v = shl nuw nsw <4 x i32> %i.t, splat (i32 23)
  %i.w = add nsw <4 x i32> %i.u, splat (i32 -1073741824)
  %i.x = add nsw <4 x i32> %i.v, splat (i32 -1073741824)
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.w, ptr %next.gep, align 4, !tbaa !30, !alias.scope !76, !noalias !75
  store <4 x i32> %i.x, ptr %i.y, align 4, !tbaa !30, !alias.scope !76, !noalias !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !73

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07 = phi i32 [ %i.as, %scalar.ph ], [ %.07.unr, %scalar.ph.prol.loopexit ]
  %.036 = phi ptr [ %i.ay, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.045 = phi ptr [ %i.at, %scalar.ph ], [ %.045.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.045, i64 1
  %i.ab = load i8, ptr %.045, align 1, !tbaa !25
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 23
  %i.ae = add nsw i32 %i.ad, -1073741824
  %i.af = getelementptr inbounds nuw i8, ptr %.036, i64 4
  store i32 %i.ae, ptr %.036, align 4, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.045, i64 2
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !25
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 23
  %i.ak = add nsw i32 %i.aj, -1073741824
  %i.al = getelementptr inbounds nuw i8, ptr %.036, i64 8
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %.045, i64 3
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 23
  %i.aq = add nsw i32 %i.ap, -1073741824
  %i.ar = getelementptr inbounds nuw i8, ptr %.036, i64 12
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !30
  %i.as = add i32 %.07, -4                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.au = load i8, ptr %i.am, align 1, !tbaa !25
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 23
  %i.ax = add nsw i32 %i.aw, -1073741824
  %i.ay = getelementptr inbounds nuw i8, ptr %.036, i64 16
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !30
  %.not.3 = icmp eq i32 %i.as, 0
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
  %i.m = add i32 %.07, -1                         ; 2 uses
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
  %i.o = add i32 %.07, -1                         ; 2 uses
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
  %i.b = shl nuw i32 1, %i.a                      ; 5 uses
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
  %i.n = zext nneg i32 %i.b to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl nuw nsw i64 %i.m, 2
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  %scevgep12 = getelementptr i8, ptr %i.p, i64 4
  %bound0 = icmp ult ptr %0, %scevgep12
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.q = and i32 %i.b, 1431655760
  %n.vec = zext nneg i32 %i.q to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep13 = getelementptr i8, ptr %1, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !30, !alias.scope !86
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4, !tbaa !30, !alias.scope !86
  %i.t = ashr <4 x i32> %wide.load, splat (i32 23)
  %i.u = ashr <4 x i32> %wide.load14, splat (i32 23)
  %i.v = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.t, <4 x i32> splat (i32 -128))
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.u, <4 x i32> splat (i32 -128))
  %i.x = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.v, <4 x i32> splat (i32 127))
  %i.y = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.w, <4 x i32> splat (i32 127))
  %i.z = trunc nsw <4 x i32> %i.x to <4 x i8>
  %i.aa = trunc nsw <4 x i32> %i.y to <4 x i8>
  %i.ab = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.z, ptr %next.gep, align 1, !tbaa !25, !alias.scope !87, !noalias !86
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !25, !alias.scope !87, !noalias !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011 = phi ptr [ %i.ar, %scalar.ph ], [ %.011.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0710 = phi i32 [ %i.ak, %scalar.ph ], [ %.0710.unr, %scalar.ph.prol.loopexit ]
  %.089 = phi ptr [ %i.al, %scalar.ph ], [ %.089.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.ae = load i32, ptr %.089, align 4, !tbaa !30
  %i.af = ashr i32 %i.ae, 23
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 -128)
  %i.ah = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 127)
  %i.ai = trunc nsw i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.011, i64 1
  store i8 %i.ai, ptr %.011, align 1, !tbaa !25
  %i.ak = add i32 %.0710, -2                      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.089, i64 8
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !30
  %i.an = ashr i32 %i.am, 23
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.an, i32 -128)
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 127)
  %i.aq = trunc nsw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.011, i64 2
  store i8 %i.aq, ptr %i.aj, align 1, !tbaa !25
  %.not.1 = icmp eq i32 %i.ak, 0
  br i1 %.not.1, label %middle.block, label %scalar.ph, !llvm.loop !85

middle.block:                                     ; preds = %vector.body, %scalar.ph.prol.loopexit, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @zfp_demote_int32_to_uint8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = shl i32 %2, 1                            ; 4 uses
  %i.b = shl nuw i32 1, %i.a                      ; 5 uses
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
  %i.o = zext nneg i32 %i.b to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %scevgep12 = getelementptr i8, ptr %i.q, i64 4
  %bound0 = icmp ult ptr %0, %scevgep12
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.r = and i32 %i.b, 1431655760
  %n.vec = zext nneg i32 %i.r to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.s = shl i64 %index, 2
  %next.gep13 = getelementptr i8, ptr %1, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !30, !alias.scope !93
  %wide.load14 = load <4 x i32>, ptr %i.t, align 4, !tbaa !30, !alias.scope !93
  %i.u = ashr <4 x i32> %wide.load, splat (i32 23)
  %i.v = ashr <4 x i32> %wide.load14, splat (i32 23)
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.u, <4 x i32> splat (i32 -128))
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.v, <4 x i32> splat (i32 -128))
  %i.y = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.w, <4 x i32> splat (i32 127))
  %i.z = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.x, <4 x i32> splat (i32 127))
  %i.aa = trunc nsw <4 x i32> %i.y to <4 x i8>
  %i.ab = xor <4 x i8> %i.aa, splat (i8 -128)
  %i.ac = trunc nsw <4 x i32> %i.z to <4 x i8>
  %i.ad = xor <4 x i8> %i.ac, splat (i8 -128)
  %i.ae = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.ab, ptr %next.gep, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !91

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011 = phi ptr [ %i.aw, %scalar.ph ], [ %.011.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0710 = phi i32 [ %i.ao, %scalar.ph ], [ %.0710.unr, %scalar.ph.prol.loopexit ]
  %.089 = phi ptr [ %i.ap, %scalar.ph ], [ %.089.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.ah = load i32, ptr %.089, align 4, !tbaa !30
  %i.ai = ashr i32 %i.ah, 23
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 -128)
  %i.ak = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 127)
  %i.al = trunc nsw i32 %i.ak to i8
  %i.am = xor i8 %i.al, -128
  %i.an = getelementptr inbounds nuw i8, ptr %.011, i64 1
  store i8 %i.am, ptr %.011, align 1, !tbaa !25
  %i.ao = add i32 %.0710, -2                      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.089, i64 8
  %i.aq = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.ar = ashr i32 %i.aq, 23
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 -128)
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.as, i32 127)
  %i.au = trunc nsw i32 %i.at to i8
  %i.av = xor i8 %i.au, -128
  %i.aw = getelementptr inbounds nuw i8, ptr %.011, i64 2
  store i8 %i.av, ptr %i.an, align 1, !tbaa !25
  %.not.1 = icmp eq i32 %i.ao, 0
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
  %i.q = add i32 %.0710, -1                       ; 2 uses
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
  %i.s = add i32 %.0710, -1                       ; 2 uses
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
end_hunk_0
