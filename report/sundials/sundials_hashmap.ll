Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_hashmap?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@malloc
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNHashMap_Capacity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 7 uses
  %.not25.i = icmp eq ptr %i.d, null
  br i1 %.not25.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.val32.i = load i64, ptr %i.d, align 8, !tbaa !16
  %.not2733.i = icmp sgt i64 %.val32.i, 0
  br i1 %.not2733.i, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre36.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.k, %bb.d ]
  %.01934.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ] ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01934.i
  %i.j = tail call i32 %i.h(ptr noundef %i.i) #17, !inline_history !30 ; 2 uses
  %.not26.i = icmp eq i32 %i.j, 0
  br i1 %.not26.i, label %bb.d, label %SUNStlVector_SUNHashMapKeyValue_Destroy.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01934.i
  store ptr null, ptr %i.l, align 8, !tbaa !20
  %i.m = add nuw nsw i64 %.01934.i, 1             ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !16
  %.not27.i = icmp slt i64 %i.m, %.val.i
  br i1 %.not27.i, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.._crit_edge_crit_edge.i
  %i.n = phi ptr [ %.pre36.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.k, %bb.d ]
  tail call void @free(ptr noundef %i.n) #17
  tail call void @free(ptr noundef nonnull %i.d) #17
  store ptr null, ptr %i.c, align 8, !tbaa !31
  %.pre = load ptr, ptr %0, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %._crit_edge.i
  %i.o = phi ptr [ %i.b, %bb.b ], [ %.pre, %._crit_edge.i ]
  tail call void @free(ptr noundef %i.o) #17
  store ptr null, ptr %0, align 8, !tbaa !10
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %.val27 = load i64, ptr %i.d, align 8, !tbaa !16
  %i.e = icmp slt i64 %1, %.val27
  br i1 %i.e, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader, label %._crit_edge

SUNStlVector_SUNHashMapKeyValue_At.exit.preheader: ; preds = %.preheader
  %i.f = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.f)
  br label %SUNStlVector_SUNHashMapKeyValue_At.exit

bb.b:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit
  %i.g = add nuw nsw i64 %.01728, 1               ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %.val = load i64, ptr %i.h, align 8, !tbaa !16
  %i.i = icmp slt i64 %i.g, %.val
  br i1 %i.i, label %SUNStlVector_SUNHashMapKeyValue_At.exit, label %._crit_edge

SUNStlVector_SUNHashMapKeyValue_At.exit:          ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader, %bb.b
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.d, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ]
  %.01728 = phi i64 [ %i.g, %bb.b ], [ %1, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01728
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
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
  %.val = load ptr, ptr %i.d, align 8, !tbaa !23  ; 9 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.e, align 8, !tbaa !17 ; 7 uses
  %i.f = add nsw i64 %.val.val, -1                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %sunHashMapIdxFromKey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !24      ; 2 uses
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
  %i.n = load i8, ptr %i.j, align 1, !tbaa !24    ; 2 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.p
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.v, label %bb.d

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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %.not81 = icmp eq ptr %i.ad, null
  br i1 %.not81, label %SUNHashMap_Iterate.exit.thread, label %bb.e

SUNHashMap_Iterate.exit:                          ; preds = %bb.e, %.preheader.i
  switch i64 %.val.val, label %SUNHashMap_Iterate.exit.thread.thread [
    i64 -99, label %SUNStlVector_SUNHashMapKeyValue_Set.exit
    i64 0, label %bb.f
  ]

SUNHashMap_Iterate.exit.thread:                   ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.i
  %i.ae = icmp eq i64 %.01728.i, %.val.val
  br i1 %i.ae, label %SUNHashMap_Iterate.exit.thread.thread, label %bb.v

SUNHashMap_Iterate.exit.thread.thread:            ; preds = %SUNHashMap_Iterate.exit.thread, %SUNHashMap_Iterate.exit
  %i.af = sitofp i64 %.val.val to x86_fp80
  %i.ag = fmul nnan x86_fp80 %i.af, 1.500000e+00
  %i.ah = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.ag)
  %i.ai = fptosi x86_fp80 %i.ah to i64
  br label %bb.f

bb.f:                                             ; preds = %SUNHashMap_Iterate.exit, %SUNHashMap_Iterate.exit.thread.thread
  %i.aj = phi i64 [ %i.ai, %SUNHashMap_Iterate.exit.thread.thread ], [ 2, %SUNHashMap_Iterate.exit ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.am = icmp sgt i64 %i.aj, -1
  %i.an = icmp ne ptr %i.al, null
  %or.cond.i60 = and i1 %i.am, %i.an
  br i1 %or.cond.i60, label %bb.g, label %SUNStlVector_SUNHashMapKeyValue_New.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 7 uses
  %.not.i62 = icmp eq ptr %i.ao, null
  br i1 %.not.i62, label %SUNStlVector_SUNHashMapKeyValue_New.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = shl i64 %i.aj, 3
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !15
  %.not17.i = icmp eq ptr %i.aq, null
  br i1 %.not17.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ao) #17
  br label %SUNStlVector_SUNHashMapKeyValue_New.exit

bb.j:                                             ; preds = %bb.h
  store i64 0, ptr %i.ao, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.aj, ptr %i.as, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.al, ptr %i.at, align 8, !tbaa !18
  br label %SUNStlVector_SUNHashMapKeyValue_New.exit

SUNStlVector_SUNHashMapKeyValue_New.exit:         ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.1.i61 = phi ptr [ null, %bb.f ], [ %i.ao, %bb.j ], [ null, %bb.i ], [ null, %bb.g ]
  store ptr %.1.i61, ptr %i.d, align 8, !tbaa !23
  %.not42.i84 = icmp sgt i64 %i.aj, 0
  br i1 %.not42.i84, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.p, %SUNStlVector_SUNHashMapKeyValue_New.exit
  %i.au = icmp slt i64 %.val.val, 1
  %.val32.i.pre = load i64, ptr %.val, align 8, !tbaa !16 ; 3 uses
  br i1 %i.au, label %.preheader.i117, label %SUNStlVector_SUNHashMapKeyValue_At.exit58

.lr.ph:                                           ; preds = %SUNStlVector_SUNHashMapKeyValue_New.exit, %bb.p
  %.033.i85 = phi i64 [ %i.bp, %bb.p ], [ 0, %SUNStlVector_SUNHashMapKeyValue_New.exit ]
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !23  ; 6 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = sitofp i64 %i.aw to x86_fp80
  %i.bc = fmul nnan x86_fp80 %i.bb, 1.500000e+00
  %i.bd = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.bc)
  %i.be = fptosi x86_fp80 %i.bd to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = phi i64 [ %i.be, %bb.l ], [ 2, %bb.k ]  ; 3 uses
  %.not.i.i.i = icmp sgt i64 %i.bf, %i.aw
  br i1 %.not.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15
  %i.bi = shl i64 %i.bf, 3
  %i.bj = tail call ptr @realloc(ptr noundef %i.bh, i64 noundef %i.bi) #18 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not11.i.i.i, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !15
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !17
  %.pre.i = load i64, ptr %i.av, align 8, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.m, %bb.o
  %i.bk = phi i64 [ %.pre.i, %bb.o ], [ %i.aw, %bb.m ], [ %i.aw, %.lr.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.bn = add nsw i64 %i.bk, 1
  store i64 %i.bn, ptr %i.av, align 8, !tbaa !16
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr null, ptr %i.bo, align 8, !tbaa !20
  %i.bp = add nuw nsw i64 %.033.i85, 1            ; 2 uses
  %exitcond91.not = icmp eq i64 %i.bp, %i.aj
  br i1 %exitcond91.not, label %.preheader, label %.lr.ph

SUNStlVector_SUNHashMapKeyValue_At.exit58:        ; preds = %.preheader, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit
  %.val32.i158.a = phi i64 [ %.val32.i159, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val32.i.pre, %.preheader ]
  %i.bq = phi i64 [ %i.cg, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val32.i.pre, %.preheader ] ; 2 uses
  %.0.in.i87 = phi i64 [ %.0.i5388, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val.val, %.preheader ] ; 3 uses
  %.0.i5388 = add nsw i64 %.0.in.i87, -1          ; 2 uses
  %i.br = icmp sle i64 %.0.in.i87, %i.bq
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.i5388
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20 ; 5 uses
  %.not43.i = icmp eq ptr %i.bu, null
  br i1 %.not43.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit58
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !28
  %i.by = tail call i64 @SUNHashMap_Insert(ptr noundef nonnull %0, ptr noundef %i.bv, ptr noundef %i.bx), !inline_history !32 ; 0 uses
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.bz) #17, !inline_history !32
  tail call void @free(ptr noundef nonnull %i.bu) #17, !inline_history !32
  %.pre92 = load i64, ptr %.val, align 8, !tbaa !16 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %SUNStlVector_SUNHashMapKeyValue_At.exit58
  %.val32.i157 = phi i64 [ %.pre92, %bb.q ], [ %.val32.i158.a, %SUNStlVector_SUNHashMapKeyValue_At.exit58 ]
  %i.ca = phi i64 [ %.pre92, %bb.q ], [ %i.bq, %SUNStlVector_SUNHashMapKeyValue_At.exit58 ] ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %SUNStlVector_SUNHashMapKeyValue_PopBack.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp slt i64 %i.ca, 1
  br i1 %i.cc, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = add nsw i64 %i.ca, -1                   ; 4 uses
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  store ptr null, ptr %i.cf, align 8, !tbaa !20
  store i64 %i.cd, ptr %.val, align 8, !tbaa !16
  br label %SUNStlVector_SUNHashMapKeyValue_PopBack.exit

SUNStlVector_SUNHashMapKeyValue_PopBack.exit:     ; preds = %bb.r, %bb.t
  %.val32.i159 = phi i64 [ %.val32.i157, %bb.r ], [ %i.cd, %bb.t ] ; 2 uses
  %i.cg = phi i64 [ 0, %bb.r ], [ %i.cd, %bb.t ]
  %i.ch = icmp samesign ult i64 %.0.in.i87, 2
  br i1 %i.ch, label %.preheader.i117, label %SUNStlVector_SUNHashMapKeyValue_At.exit58

.preheader.i117:                                  ; preds = %SUNStlVector_SUNHashMapKeyValue_PopBack.exit, %.preheader
  %.val32.i = phi i64 [ %.val32.i.pre, %.preheader ], [ %.val32.i159, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ]
  %.not2733.i = icmp sgt i64 %.val32.i, 0
  %.pre.i118 = load ptr, ptr %i.t, align 8, !tbaa !15 ; 2 uses
  br i1 %.not2733.i, label %.lr.ph.i, label %tailrecurse

.lr.ph.i:                                         ; preds = %.preheader.i117, %bb.u
  %i.ci = phi ptr [ %i.cm, %bb.u ], [ %.pre.i118, %.preheader.i117 ]
  %.01934.i = phi i64 [ %i.co, %bb.u ], [ 0, %.preheader.i117 ] ; 3 uses
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.01934.i
  %i.cl = tail call i32 %i.cj(ptr noundef %i.ck) #17, !inline_history !33 ; 2 uses
  %.not26.i = icmp eq i32 %i.cl, 0
  br i1 %.not26.i, label %bb.u, label %sunHashMapResize.exit.thread.loopexit

bb.u:                                             ; preds = %.lr.ph.i
  %i.cm = load ptr, ptr %i.t, align 8, !tbaa !15  ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.01934.i
  store ptr null, ptr %i.cn, align 8, !tbaa !20
  %i.co = add nuw nsw i64 %.01934.i, 1            ; 2 uses
  %.val.i = load i64, ptr %.val, align 8, !tbaa !16
  %.not27.i = icmp slt i64 %i.co, %.val.i
  br i1 %.not27.i, label %.lr.ph.i, label %tailrecurse

sunHashMapResize.exit.thread.loopexit:            ; preds = %.lr.ph.i
  %i.cp = sext i32 %i.cl to i64
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

tailrecurse:                                      ; preds = %bb.u, %.preheader.i117
  %i.cq = phi ptr [ %.pre.i118, %.preheader.i117 ], [ %i.cm, %bb.u ]
  tail call void @free(ptr noundef %i.cq) #17
  tail call void @free(ptr noundef nonnull %.val) #17
  br label %bb.b

bb.v:                                             ; preds = %SUNHashMap_Iterate.exit.thread, %sunHashMapIdxFromKey.exit
  %.0 = phi i64 [ %i.p, %sunHashMapIdxFromKey.exit ], [ %.01728.i, %SUNHashMap_Iterate.exit.thread ] ; 3 uses
  %i.cr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.cs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.ct = add i64 %i.cs, 1
  %i.cu = tail call noalias ptr @malloc(i64 noundef %i.ct) #16 ; 3 uses
  %.not49 = icmp eq ptr %i.cu, null
  br i1 %.not49, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef %i.cr) #17
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

bb.x:                                             ; preds = %bb.v
  %i.cv = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(1) %1) #17 ; 0 uses
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %2, ptr %i.cw, align 8, !tbaa !28
  %3 = icmp sge i64 %.0, %i.q
  %i.cx = icmp slt i64 %.0, 0
  %or.cond.i54 = or i1 %i.cx, %3
  br i1 %or.cond.i54, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0
  store ptr %i.cr, ptr %i.cy, align 8, !tbaa !20
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

SUNStlVector_SUNHashMapKeyValue_Set.exit:         ; preds = %bb.d, %SUNHashMap_Iterate.exit, %bb.n, %bb.s, %sunHashMapResize.exit.thread.loopexit, %bb.a, %bb.y, %bb.x, %bb.w
  %.2 = phi i64 [ -9988, %bb.n ], [ -99, %bb.w ], [ 0, %bb.y ], [ -9992, %bb.x ], [ -99, %bb.a ], [ -9992, %bb.s ], [ %i.cp, %sunHashMapResize.exit.thread.loopexit ], [ -2, %bb.d ], [ %.val.val, %SUNHashMap_Iterate.exit ]
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
  %.val = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %i.f = add nsw i64 %.val.val, -1                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %sunHashMapIdxFromKey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !24      ; 2 uses
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
  %i.n = load i8, ptr %i.j, align 1, !tbaa !24    ; 2 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.p
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 2 uses
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
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 2 uses
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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  store ptr %i.ao, ptr %2, align 8, !tbaa !29
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
  %.val = load ptr, ptr %i.c, align 8, !tbaa !23  ; 3 uses
  %i.d = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.d, align 8, !tbaa !17 ; 3 uses
  %i.e = add nsw i64 %.val.val, -1                ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %sunHashMapIdxFromKey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !24      ; 2 uses
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
  %i.m = load i8, ptr %i.i, align 1, !tbaa !24    ; 2 uses
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.preheader.i, label %bb.d

bb.d:                                             ; preds = %sunHashMapIdxFromKey.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) %1) #19
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %SUNStlVector_SUNHashMapKeyValue_At.exit35, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %sunHashMapIdxFromKey.exit
  %i.z = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.aa = icmp slt i64 %i.z, %i.p
  br i1 %i.aa, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i, label %SUNHashMap_Iterate.exit

sunHashMapLinearProbeGet.exit.thread:             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i, %bb.e
  %i.ab = add i64 %.01728.i, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.p
  br i1 %exitcond.not, label %SUNHashMap_Iterate.exit, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i

end_hunk_0
