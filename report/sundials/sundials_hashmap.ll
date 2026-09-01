Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_hashmap?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SUNHashMap_New:bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %.thread

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.i = phi ptr [ %i.e, %.lr.ph ], [ %i.r, %bb.k ] ; 3 uses
  %i.j = phi i64 [ %0, %.lr.ph ], [ %i.s, %bb.k ] ; 5 uses
  %.pre.i = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.k ] ; 3 uses
  %.036 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.k ]
  %i.k = icmp eq i64 %.pre.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.l = uitofp nneg i64 %i.j to x86_fp80
  %i.m = fmul nnan x86_fp80 %i.l, 1.500000e+00
  %i.n = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.m)
  %i.o = fptosi x86_fp80 %i.n to i64              ; 4 uses
  %.not.i.i.i = icmp slt i64 %i.j, %i.o
  br i1 %.not.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = shl i64 %i.o, 3
  %i.q = tail call ptr @realloc(ptr noundef %i.i, i64 noundef %i.p) #18 ; 3 uses
  %.not11.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not11.i.i.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.q, ptr %i.f, align 8, !tbaa !11
  store i64 %i.o, ptr %i.g, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j
  %i.r = phi ptr [ %i.q, %bb.j ], [ %i.i, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %i.s = phi i64 [ %i.o, %bb.j ], [ %i.j, %bb.h ], [ %i.j, %bb.g ]
  %i.t = add nuw nsw i64 %.pre.i, 1               ; 2 uses
  store i64 %i.t, ptr %i.c, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre.i
  store ptr null, ptr %i.u, align 8, !tbaa !19
  %i.v = add nuw nsw i64 %.036, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %0
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %2, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.c, ptr %i.w, align 8, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.f, %._crit_edge, %bb.a
  %.4 = phi i32 [ -9997, %bb.a ], [ 0, %._crit_edge ], [ -9988, %bb.f ], [ -9988, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNHashMap_Capacity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load i64, ptr %i.c, align 8, !tbaa !17
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define i32 @SUNHashMap_Destroy(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SUNStlVector_SUNHashMapKeyValue_Destroy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 7 uses
  %.not25.i = icmp eq ptr %i.d, null
  br i1 %.not25.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.val32.i = load i64, ptr %i.d, align 8, !tbaa !16
  %.not2733.i = icmp sgt i64 %.val32.i, 0
  br i1 %.not2733.i, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre36.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.k, %bb.d ]
  %.01934.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ] ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01934.i
  %i.j = tail call i32 %i.h(ptr noundef %i.i) #17, !inline_history !25 ; 2 uses
  %.not26.i = icmp eq i32 %i.j, 0
  br i1 %.not26.i, label %bb.d, label %SUNStlVector_SUNHashMapKeyValue_Destroy.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !11   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01934.i
  store ptr null, ptr %i.l, align 8, !tbaa !19
  %i.m = add nuw nsw i64 %.01934.i, 1             ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !16
  %.not27.i = icmp slt i64 %i.m, %.val.i
  br i1 %.not27.i, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.._crit_edge_crit_edge.i
  %i.n = phi ptr [ %.pre36.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.k, %bb.d ]
  tail call void @free(ptr noundef %i.n) #17
  tail call void @free(ptr noundef nonnull %i.d) #17
  store ptr null, ptr %i.c, align 8, !tbaa !24
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %._crit_edge.i
  %i.o = phi ptr [ %i.b, %bb.b ], [ %.pre, %._crit_edge.i ]
  tail call void @free(ptr noundef %i.o) #17
  store ptr null, ptr %0, align 8, !tbaa !8
  br label %SUNStlVector_SUNHashMapKeyValue_Destroy.exit

SUNStlVector_SUNHashMapKeyValue_Destroy.exit:     ; preds = %bb.c, %bb.e, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %i.j, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i64 @SUNHashMap_Iterate(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %.val27 = load i64, ptr %i.d, align 8, !tbaa !16
  %i.e = icmp slt i64 %1, %.val27
  br i1 %i.e, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader, label %._crit_edge

SUNStlVector_SUNHashMapKeyValue_At.exit.preheader: ; preds = %.preheader
  %i.f = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.f)
  br label %SUNStlVector_SUNHashMapKeyValue_At.exit

bb.b:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit
  %i.g = add nuw nsw i64 %.01728, 1               ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %.val = load i64, ptr %i.h, align 8, !tbaa !16
  %i.i = icmp slt i64 %i.g, %.val
  br i1 %i.i, label %SUNStlVector_SUNHashMapKeyValue_At.exit, label %._crit_edge

SUNStlVector_SUNHashMapKeyValue_At.exit:          ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader, %bb.b
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.d, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ]
  %.01728 = phi i64 [ %i.g, %bb.b ], [ %1, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01728
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = tail call i64 %2(i64 noundef %.01728, ptr noundef %i.n, ptr noundef %3) #17 ; 2 uses
  %i.p = icmp eq i64 %i.o, -99
  br i1 %i.p, label %bb.b, label %.loopexit

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.q = phi ptr [ %i.d, %.preheader ], [ %i.h, %bb.b ]
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit, %bb.a, %._crit_edge
  %.3 = phi i64 [ -99, %bb.a ], [ %.val.i, %._crit_edge ], [ %i.o, %SUNStlVector_SUNHashMapKeyValue_At.exit ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, 2147483648) i64 @SUNHashMap_Insert(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %tailrecurse, %.lr.ph137
  %.val = load ptr, ptr %i.d, align 8, !tbaa !21  ; 9 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.e, align 8, !tbaa !17 ; 8 uses
  %i.f = add nsw i64 %.val.val, -1                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %sunHashMapIdxFromKey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !26      ; 2 uses
  %.not5.i.i = icmp eq i8 %i.h, 0
  br i1 %.not5.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi i8 [ %i.n, %.lr.ph.i.i ], [ %i.h, %bb.c ]
  %.07.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ 1099511628211, %bb.c ]
  %.036.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %1, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 1 ; 2 uses
  %i.k = sext i8 %i.i to i64
  %i.l = xor i64 %.07.i.i, %i.k
  %i.m = mul i64 %i.l, -3750763034362895579       ; 2 uses
  %i.n = load i8, ptr %i.j, align 1, !tbaa !26    ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

fnv1a_hash.exit.i:                                ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ 1099511628211, %bb.c ], [ %i.m, %.lr.ph.i.i ]
  %i.o = urem i64 %.0.lcssa.i.i, %i.f
  br label %sunHashMapIdxFromKey.exit

sunHashMapIdxFromKey.exit:                        ; preds = %bb.b, %fnv1a_hash.exit.i
  %i.p = phi i64 [ %i.o, %fnv1a_hash.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.q = load i64, ptr %.val, align 8, !tbaa !16  ; 4 uses
  %i.r = icmp slt i64 %i.p, %i.q
  %i.s = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.s)
  tail call void @llvm.assume(i1 %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.p
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.w, label %bb.d

bb.d:                                             ; preds = %sunHashMapIdxFromKey.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.x) #19
  %.not48 = icmp eq i32 %i.y, 0
  br i1 %.not48, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.z = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.aa = icmp slt i64 %i.z, %i.q
  br i1 %i.aa, label %SUNStlVector_SUNHashMapKeyValue_At.exit.i, label %SUNHashMap_Iterate.exit

bb.e:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.i
  %i.ab = add i64 %.01728.i, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.q
  br i1 %exitcond.not, label %SUNHashMap_Iterate.exit, label %SUNStlVector_SUNHashMapKeyValue_At.exit.i

SUNStlVector_SUNHashMapKeyValue_At.exit.i:        ; preds = %.preheader.i, %bb.e
  %.01728.i = phi i64 [ %i.ab, %bb.e ], [ %i.z, %.preheader.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.01728.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %.not81 = icmp eq ptr %i.ad, null
  br i1 %.not81, label %SUNHashMap_Iterate.exit.thread, label %bb.e

SUNHashMap_Iterate.exit:                          ; preds = %bb.e, %.preheader.i
  switch i64 %.val.val, label %bb.f [
    i64 -99, label %SUNStlVector_SUNHashMapKeyValue_Set.exit
    i64 0, label %bb.g
  ]

SUNHashMap_Iterate.exit.thread:                   ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.i
  %3 = icmp eq i64 %.01728.i, %.val.val
  br i1 %3, label %SUNHashMap_Iterate.exit.thread.thread.a, label %bb.w

SUNHashMap_Iterate.exit.thread.thread.a:          ; preds = %SUNHashMap_Iterate.exit.thread
  %i.ae = icmp eq i64 %.val.val, 0
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %SUNHashMap_Iterate.exit, %SUNHashMap_Iterate.exit.thread.thread.a
  %i.af = sitofp i64 %.val.val to x86_fp80
  %i.ag = fmul nnan x86_fp80 %i.af, 1.500000e+00
  %i.ah = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.ag)
  %i.ai = fptosi x86_fp80 %i.ah to i64
  br label %bb.g

bb.g:                                             ; preds = %SUNHashMap_Iterate.exit, %bb.f, %SUNHashMap_Iterate.exit.thread.thread.a
  %4 = phi i64 [ %i.ai, %bb.f ], [ 2, %SUNHashMap_Iterate.exit.thread.thread.a ], [ 2, %SUNHashMap_Iterate.exit ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = icmp sgt i64 %4, -1
  %i.am = icmp ne ptr %i.ak, null
  %or.cond.i60 = and i1 %i.al, %i.am
  br i1 %or.cond.i60, label %bb.h, label %SUNStlVector_SUNHashMapKeyValue_New.exit

bb.h:                                             ; preds = %bb.g
  %i.an = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 7 uses
  %.not.i62 = icmp eq ptr %i.an, null
  br i1 %.not.i62, label %SUNStlVector_SUNHashMapKeyValue_New.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = shl i64 %4, 3
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !11
  %.not17.i = icmp eq ptr %i.ap, null
  br i1 %.not17.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.an) #17
  br label %SUNStlVector_SUNHashMapKeyValue_New.exit

bb.k:                                             ; preds = %bb.i
  store i64 0, ptr %i.an, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %4, ptr %i.ar, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ak, ptr %i.as, align 8, !tbaa !18
  br label %SUNStlVector_SUNHashMapKeyValue_New.exit

SUNStlVector_SUNHashMapKeyValue_New.exit:         ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.1.i61 = phi ptr [ null, %bb.g ], [ %i.an, %bb.k ], [ null, %bb.j ], [ null, %bb.h ]
  store ptr %.1.i61, ptr %i.d, align 8, !tbaa !21
  %.not42.i84 = icmp sgt i64 %4, 0
  br i1 %.not42.i84, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.q, %SUNStlVector_SUNHashMapKeyValue_New.exit
  %i.at = icmp slt i64 %.val.val, 1
  %.val32.i.pre = load i64, ptr %.val, align 8, !tbaa !16 ; 3 uses
  br i1 %i.at, label %.preheader.i117, label %SUNStlVector_SUNHashMapKeyValue_At.exit58

.lr.ph:                                           ; preds = %SUNStlVector_SUNHashMapKeyValue_New.exit, %bb.q
  %.033.i85 = phi i64 [ %i.bo, %bb.q ], [ 0, %SUNStlVector_SUNHashMapKeyValue_New.exit ]
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !21  ; 6 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph
  %i.az = icmp eq i64 %i.av, 0
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = sitofp i64 %i.av to x86_fp80
  %i.bb = fmul nnan x86_fp80 %i.ba, 1.500000e+00
  %i.bc = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.bb)
  %i.bd = fptosi x86_fp80 %i.bc to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = phi i64 [ %i.bd, %bb.m ], [ 2, %bb.l ]  ; 3 uses
  %.not.i.i.i = icmp sgt i64 %i.be, %i.av
  br i1 %.not.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !11
  %i.bh = shl i64 %i.be, 3
  %i.bi = tail call ptr @realloc(ptr noundef %i.bg, i64 noundef %i.bh) #18 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not11.i.i.i, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !11
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !17
  %.pre.i = load i64, ptr %i.au, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.n, %bb.p
  %i.bj = phi i64 [ %.pre.i, %bb.p ], [ %i.av, %bb.n ], [ %i.av, %.lr.ph ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !11
  %i.bm = add nsw i64 %i.bj, 1
  store i64 %i.bm, ptr %i.au, align 8, !tbaa !16
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr null, ptr %i.bn, align 8, !tbaa !19
  %i.bo = add nuw nsw i64 %.033.i85, 1            ; 2 uses
  %exitcond91.not = icmp eq i64 %i.bo, %4
  br i1 %exitcond91.not, label %.preheader, label %.lr.ph

SUNStlVector_SUNHashMapKeyValue_At.exit58:        ; preds = %.preheader, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit
  %.val32.i158 = phi i64 [ %.val32.i159, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val32.i.pre, %.preheader ]
  %i.bp = phi i64 [ %i.cf, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val32.i.pre, %.preheader ] ; 2 uses
  %.0.in.i87 = phi i64 [ %.0.i5388, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val.val, %.preheader ] ; 3 uses
  %.0.i5388 = add nsw i64 %.0.in.i87, -1          ; 2 uses
  %i.bq = icmp sle i64 %.0.in.i87, %i.bp
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.0.i5388
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !19 ; 5 uses
  %.not43.i = icmp eq ptr %i.bt, null
  br i1 %.not43.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit58
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30
  %i.bx = tail call i64 @SUNHashMap_Insert(ptr noundef nonnull %0, ptr noundef %i.bu, ptr noundef %i.bw), !inline_history !31 ; 0 uses
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.by) #17, !inline_history !31
  tail call void @free(ptr noundef nonnull %i.bt) #17, !inline_history !31
  %.pre92 = load i64, ptr %.val, align 8, !tbaa !16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %SUNStlVector_SUNHashMapKeyValue_At.exit58
  %.val32.i157 = phi i64 [ %.pre92, %bb.r ], [ %.val32.i158, %SUNStlVector_SUNHashMapKeyValue_At.exit58 ]
  %i.bz = phi i64 [ %.pre92, %bb.r ], [ %i.bp, %SUNStlVector_SUNHashMapKeyValue_At.exit58 ] ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %SUNStlVector_SUNHashMapKeyValue_PopBack.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = icmp slt i64 %i.bz, 1
  br i1 %i.cb, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = add nsw i64 %i.bz, -1                   ; 4 uses
  %i.cd = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  store ptr null, ptr %i.ce, align 8, !tbaa !19
  store i64 %i.cc, ptr %.val, align 8, !tbaa !16
  br label %SUNStlVector_SUNHashMapKeyValue_PopBack.exit

SUNStlVector_SUNHashMapKeyValue_PopBack.exit:     ; preds = %bb.s, %bb.u
  %.val32.i159 = phi i64 [ %.val32.i157, %bb.s ], [ %i.cc, %bb.u ] ; 2 uses
  %i.cf = phi i64 [ 0, %bb.s ], [ %i.cc, %bb.u ]
  %i.cg = icmp samesign ult i64 %.0.in.i87, 2
  br i1 %i.cg, label %.preheader.i117, label %SUNStlVector_SUNHashMapKeyValue_At.exit58

.preheader.i117:                                  ; preds = %SUNStlVector_SUNHashMapKeyValue_PopBack.exit, %.preheader
  %.val32.i = phi i64 [ %.val32.i.pre, %.preheader ], [ %.val32.i159, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ]
  %.not2733.i = icmp sgt i64 %.val32.i, 0
  %.pre.i118 = load ptr, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  br i1 %.not2733.i, label %.lr.ph.i, label %tailrecurse

.lr.ph.i:                                         ; preds = %.preheader.i117, %bb.v
  %i.ch = phi ptr [ %i.cl, %bb.v ], [ %.pre.i118, %.preheader.i117 ]
  %.01934.i = phi i64 [ %i.cn, %bb.v ], [ 0, %.preheader.i117 ] ; 3 uses
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.01934.i
  %i.ck = tail call i32 %i.ci(ptr noundef %i.cj) #17, !inline_history !32 ; 2 uses
  %.not26.i = icmp eq i32 %i.ck, 0
  br i1 %.not26.i, label %bb.v, label %sunHashMapResize.exit.thread.loopexit

bb.v:                                             ; preds = %.lr.ph.i
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !11  ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.01934.i
  store ptr null, ptr %i.cm, align 8, !tbaa !19
  %i.cn = add nuw nsw i64 %.01934.i, 1            ; 2 uses
  %.val.i = load i64, ptr %.val, align 8, !tbaa !16
  %.not27.i = icmp slt i64 %i.cn, %.val.i
  br i1 %.not27.i, label %.lr.ph.i, label %tailrecurse

sunHashMapResize.exit.thread.loopexit:            ; preds = %.lr.ph.i
  %i.co = sext i32 %i.ck to i64
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

tailrecurse:                                      ; preds = %bb.v, %.preheader.i117
  %i.cp = phi ptr [ %.pre.i118, %.preheader.i117 ], [ %i.cl, %bb.v ]
  tail call void @free(ptr noundef %i.cp) #17
  tail call void @free(ptr noundef nonnull %.val) #17
  br label %bb.b

bb.w:                                             ; preds = %SUNHashMap_Iterate.exit.thread, %sunHashMapIdxFromKey.exit
  %.0 = phi i64 [ %i.p, %sunHashMapIdxFromKey.exit ], [ %.01728.i, %SUNHashMap_Iterate.exit.thread ] ; 3 uses
  %i.cq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.cr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.cs = add i64 %i.cr, 1
  %i.ct = tail call noalias ptr @malloc(i64 noundef %i.cs) #16 ; 3 uses
  %.not49 = icmp eq ptr %i.ct, null
  br i1 %.not49, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef %i.cq) #17
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

bb.y:                                             ; preds = %bb.w
  %i.cu = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(1) %1) #17 ; 0 uses
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %2, ptr %i.cv, align 8, !tbaa !30
  %i.cw = icmp sge i64 %.0, %i.q
  %i.cx = icmp slt i64 %.0, 0
  %or.cond.i54 = or i1 %i.cx, %i.cw
  br i1 %or.cond.i54, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0
  store ptr %i.cq, ptr %i.cy, align 8, !tbaa !19
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

SUNStlVector_SUNHashMapKeyValue_Set.exit:         ; preds = %bb.d, %SUNHashMap_Iterate.exit, %bb.o, %bb.t, %sunHashMapResize.exit.thread.loopexit, %bb.a, %bb.z, %bb.y, %bb.x
  %.2 = phi i64 [ -9988, %bb.o ], [ -99, %bb.x ], [ 0, %bb.z ], [ -9992, %bb.y ], [ -99, %bb.a ], [ -9992, %bb.t ], [ %i.co, %sunHashMapResize.exit.thread.loopexit ], [ -2, %bb.d ], [ %.val.val, %SUNHashMap_Iterate.exit ]
  ret i64 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define range(i64 -99, 1) i64 @SUNHashMap_GetValue(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %SUNStlVector_SUNHashMapKeyValue_At.exit38.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %i.f = add nsw i64 %.val.val, -1                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %sunHashMapIdxFromKey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !26      ; 2 uses
  %.not5.i.i = icmp eq i8 %i.h, 0
  br i1 %.not5.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi i8 [ %i.n, %.lr.ph.i.i ], [ %i.h, %bb.c ]
  %.07.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ 1099511628211, %bb.c ]
  %.036.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %1, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 1 ; 2 uses
  %i.k = sext i8 %i.i to i64
  %i.l = xor i64 %.07.i.i, %i.k
  %i.m = mul i64 %i.l, -3750763034362895579       ; 2 uses
  %i.n = load i8, ptr %i.j, align 1, !tbaa !26    ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

fnv1a_hash.exit.i:                                ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ 1099511628211, %bb.c ], [ %i.m, %.lr.ph.i.i ]
  %i.o = urem i64 %.0.lcssa.i.i, %i.f
  br label %sunHashMapIdxFromKey.exit

sunHashMapIdxFromKey.exit:                        ; preds = %bb.b, %fnv1a_hash.exit.i
  %i.p = phi i64 [ %i.o, %fnv1a_hash.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.q = load i64, ptr %.val, align 8, !tbaa !16  ; 4 uses
  %i.r = icmp slt i64 %i.p, %i.q
  %i.s = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.s)
  tail call void @llvm.assume(i1 %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.p
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.preheader.i, label %bb.d

bb.d:                                             ; preds = %sunHashMapIdxFromKey.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %1) #19
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %sunHashMapIdxFromKey.exit
  %i.aa = add nuw nsw i64 %i.p, 1                 ; 2 uses
  %i.ab = icmp slt i64 %i.aa, %i.q
  br i1 %i.ab, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i, label %SUNHashMap_Iterate.exit

sunHashMapLinearProbeGet.exit.thread:             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i, %bb.e
  %i.ac = add i64 %.01728.i, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.q
  br i1 %exitcond.not, label %SUNHashMap_Iterate.exit, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i

SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i: ; preds = %.preheader.i, %sunHashMapLinearProbeGet.exit.thread
  %.01728.i = phi i64 [ %i.ac, %sunHashMapLinearProbeGet.exit.thread ], [ %i.aa, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.01728.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %sunHashMapLinearProbeGet.exit.thread, label %bb.e

bb.e:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull readonly dereferenceable(1) %1) #19
  %.not.i.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i.not, label %SUNHashMap_Iterate.exit, label %sunHashMapLinearProbeGet.exit.thread

SUNHashMap_Iterate.exit:                          ; preds = %bb.e, %sunHashMapLinearProbeGet.exit.thread, %.preheader.i
  %.3.i = phi i64 [ %.val.val, %.preheader.i ], [ %.val.val, %sunHashMapLinearProbeGet.exit.thread ], [ %.01728.i, %bb.e ] ; 2 uses
  %i.ai = icmp eq i64 %.3.i, -99
  br i1 %i.ai, label %SUNStlVector_SUNHashMapKeyValue_At.exit38.thread, label %bb.f

bb.f:                                             ; preds = %SUNHashMap_Iterate.exit, %bb.d
  %.0 = phi i64 [ %i.p, %bb.d ], [ %.3.i, %SUNHashMap_Iterate.exit ] ; 3 uses
  %i.aj = icmp sge i64 %.0, %i.q
  %i.ak = icmp slt i64 %.0, 0
  %or.cond.i36 = or i1 %i.ak, %i.aj
  %.not34 = icmp eq ptr %i.u, null
  %or.cond57 = or i1 %or.cond.i36, %.not34
  br i1 %or.cond57, label %SUNStlVector_SUNHashMapKeyValue_At.exit38.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30
  store ptr %i.ao, ptr %2, align 8, !tbaa !33
  br label %SUNStlVector_SUNHashMapKeyValue_At.exit38.thread

SUNStlVector_SUNHashMapKeyValue_At.exit38.thread: ; preds = %bb.f, %SUNHashMap_Iterate.exit, %bb.g, %bb.a
  %.2 = phi i64 [ -99, %bb.a ], [ -99, %SUNHashMap_Iterate.exit ], [ 0, %bb.g ], [ -1, %bb.f ]
  ret i64 %.2
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 -9992, 1) i64 @SUNHashMap_Remove(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  %i.d = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.d, align 8, !tbaa !17 ; 3 uses
  %i.e = add nsw i64 %.val.val, -1                ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %sunHashMapIdxFromKey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !26      ; 2 uses
  %.not5.i.i = icmp eq i8 %i.g, 0
  br i1 %.not5.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.h = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.g, %bb.c ]
  %.07.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 1099511628211, %bb.c ]
  %.036.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %1, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 1 ; 2 uses
  %i.j = sext i8 %i.h to i64
  %i.k = xor i64 %.07.i.i, %i.j
  %i.l = mul i64 %i.k, -3750763034362895579       ; 2 uses
  %i.m = load i8, ptr %i.i, align 1, !tbaa !26    ; 2 uses
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

fnv1a_hash.exit.i:                                ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ 1099511628211, %bb.c ], [ %i.l, %.lr.ph.i.i ]
  %i.n = urem i64 %.0.lcssa.i.i, %i.e
  br label %sunHashMapIdxFromKey.exit

sunHashMapIdxFromKey.exit:                        ; preds = %bb.b, %fnv1a_hash.exit.i
  %i.o = phi i64 [ %i.n, %fnv1a_hash.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.p = load i64, ptr %.val, align 8, !tbaa !16  ; 4 uses
  %i.q = icmp slt i64 %i.o, %i.p
  %i.r = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.r)
  tail call void @llvm.assume(i1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
end_hunk_0
