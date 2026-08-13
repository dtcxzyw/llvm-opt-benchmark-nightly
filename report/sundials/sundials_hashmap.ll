inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SUNHashMap_Insert
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
  %.07.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %1, %bb.c ]
  %.036.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ 1099511628211, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1 ; 2 uses
  %i.k = sext i8 %i.i to i64
  %i.l = xor i64 %.036.i.i, %i.k
  %i.m = mul i64 %i.l, -3750763034362895579       ; 2 uses
  %i.n = load i8, ptr %i.j, align 1, !tbaa !26    ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

fnv1a_hash.exit.i:                                ; preds = %.lr.ph.i.i, %bb.c
  %.03.lcssa.i.i = phi i64 [ 1099511628211, %bb.c ], [ %i.m, %.lr.ph.i.i ]
  %i.o = urem i64 %.03.lcssa.i.i, %i.f
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
  %i.ab = add i64 %.01928.i, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.q
  br i1 %exitcond.not, label %SUNHashMap_Iterate.exit, label %SUNStlVector_SUNHashMapKeyValue_At.exit.i

SUNStlVector_SUNHashMapKeyValue_At.exit.i:        ; preds = %.preheader.i, %bb.e
  %.01928.i = phi i64 [ %i.ab, %bb.e ], [ %i.z, %.preheader.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.01928.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %.not82 = icmp eq ptr %i.ad, null
  br i1 %.not82, label %SUNHashMap_Iterate.exit.thread, label %bb.e

SUNHashMap_Iterate.exit:                          ; preds = %bb.e, %.preheader.i
  switch i64 %.val.val, label %bb.f [
    i64 -99, label %SUNStlVector_SUNHashMapKeyValue_Set.exit
    i64 0, label %bb.g
  ]

SUNHashMap_Iterate.exit.thread:                   ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.i
  %i.ae = icmp eq i64 %.01928.i, %.val.val
  br i1 %i.ae, label %SUNHashMap_Iterate.exit.thread.thread, label %bb.w

SUNHashMap_Iterate.exit.thread.thread:            ; preds = %SUNHashMap_Iterate.exit.thread
  %i.af = icmp eq i64 %.val.val, 0
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %SUNHashMap_Iterate.exit, %SUNHashMap_Iterate.exit.thread.thread
  %i.ag = sitofp i64 %.val.val to x86_fp80
  %i.ah = fmul nnan x86_fp80 %i.ag, 1.500000e+00
  %i.ai = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.ah)
  %i.aj = fptosi x86_fp80 %i.ai to i64
  br label %bb.g

bb.g:                                             ; preds = %SUNHashMap_Iterate.exit, %bb.f, %SUNHashMap_Iterate.exit.thread.thread
  %i.ak = phi i64 [ %i.aj, %bb.f ], [ 2, %SUNHashMap_Iterate.exit.thread.thread ], [ 2, %SUNHashMap_Iterate.exit ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.an = icmp sgt i64 %i.ak, -1
  %i.ao = icmp ne ptr %i.am, null
  %or.cond.i61 = and i1 %i.an, %i.ao
  br i1 %or.cond.i61, label %bb.h, label %SUNStlVector_SUNHashMapKeyValue_New.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 7 uses
  %.not.i63 = icmp eq ptr %i.ap, null
  br i1 %.not.i63, label %SUNStlVector_SUNHashMapKeyValue_New.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = shl i64 %i.ak, 3
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.aq) #16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !11
  %.not17.i = icmp eq ptr %i.ar, null
  br i1 %.not17.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.ap) #17
  br label %SUNStlVector_SUNHashMapKeyValue_New.exit

bb.k:                                             ; preds = %bb.i
  store i64 0, ptr %i.ap, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ak, ptr %i.at, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.am, ptr %i.au, align 8, !tbaa !18
  br label %SUNStlVector_SUNHashMapKeyValue_New.exit

SUNStlVector_SUNHashMapKeyValue_New.exit:         ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.1.i62 = phi ptr [ null, %bb.g ], [ %i.ap, %bb.k ], [ null, %bb.j ], [ null, %bb.h ]
  store ptr %.1.i62, ptr %i.d, align 8, !tbaa !21
  %.not42.i85 = icmp sgt i64 %i.ak, 0
  br i1 %.not42.i85, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.q, %SUNStlVector_SUNHashMapKeyValue_New.exit
  %i.av = icmp slt i64 %.val.val, 1
  %.val32.i.pre = load i64, ptr %.val, align 8, !tbaa !16 ; 3 uses
  br i1 %i.av, label %.preheader.i117, label %SUNStlVector_SUNHashMapKeyValue_At.exit59

.lr.ph:                                           ; preds = %SUNStlVector_SUNHashMapKeyValue_New.exit, %bb.q
  %.032.i86 = phi i64 [ %i.bq, %bb.q ], [ 0, %SUNStlVector_SUNHashMapKeyValue_New.exit ]
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !21  ; 6 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph
  %i.bb = icmp eq i64 %i.ax, 0
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = sitofp i64 %i.ax to x86_fp80
  %i.bd = fmul nnan x86_fp80 %i.bc, 1.500000e+00
  %i.be = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.bd)
  %i.bf = fptosi x86_fp80 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = phi i64 [ %i.bf, %bb.m ], [ 2, %bb.l ]  ; 3 uses
  %.not.i.i.i = icmp sgt i64 %i.bg, %i.ax
  br i1 %.not.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.bj = shl i64 %i.bg, 3
  %i.bk = tail call ptr @realloc(ptr noundef %i.bi, i64 noundef %i.bj) #18 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not11.i.i.i, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !11
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !17
  %.pre.i = load i64, ptr %i.aw, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.n, %bb.p
  %i.bl = phi i64 [ %.pre.i, %bb.p ], [ %i.ax, %bb.n ], [ %i.ax, %.lr.ph ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bo = add nsw i64 %i.bl, 1
  store i64 %i.bo, ptr %i.aw, align 8, !tbaa !16
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr null, ptr %i.bp, align 8, !tbaa !19
  %i.bq = add nuw nsw i64 %.032.i86, 1            ; 2 uses
  %exitcond92.not = icmp eq i64 %i.bq, %i.ak
  br i1 %exitcond92.not, label %.preheader, label %.lr.ph

SUNStlVector_SUNHashMapKeyValue_At.exit59:        ; preds = %.preheader, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit
  %.val32.i158 = phi i64 [ %.val32.i159, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val32.i.pre, %.preheader ]
  %i.br = phi i64 [ %i.ch, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val32.i.pre, %.preheader ] ; 2 uses
  %.033.in.i88 = phi i64 [ %.033.i89, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ], [ %.val.val, %.preheader ] ; 3 uses
  %.033.i89 = add nsw i64 %.033.in.i88, -1        ; 2 uses
  %i.bs = icmp sle i64 %.033.in.i88, %i.br
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.033.i89
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !19 ; 5 uses
  %.not43.i = icmp eq ptr %i.bv, null
  br i1 %.not43.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit59
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30
  %i.bz = tail call i64 @SUNHashMap_Insert(ptr noundef nonnull %0, ptr noundef %i.bw, ptr noundef %i.by), !inline_history !31 ; 0 uses
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.ca) #17, !inline_history !31
  tail call void @free(ptr noundef nonnull %i.bv) #17, !inline_history !31
  %.pre93 = load i64, ptr %.val, align 8, !tbaa !16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %SUNStlVector_SUNHashMapKeyValue_At.exit59
  %.val32.i157 = phi i64 [ %.pre93, %bb.r ], [ %.val32.i158, %SUNStlVector_SUNHashMapKeyValue_At.exit59 ]
  %i.cb = phi i64 [ %.pre93, %bb.r ], [ %i.br, %SUNStlVector_SUNHashMapKeyValue_At.exit59 ] ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %SUNStlVector_SUNHashMapKeyValue_PopBack.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp slt i64 %i.cb, 1
  br i1 %i.cd, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = add nsw i64 %i.cb, -1                   ; 4 uses
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  store ptr null, ptr %i.cg, align 8, !tbaa !19
  store i64 %i.ce, ptr %.val, align 8, !tbaa !16
  br label %SUNStlVector_SUNHashMapKeyValue_PopBack.exit

SUNStlVector_SUNHashMapKeyValue_PopBack.exit:     ; preds = %bb.s, %bb.u
  %.val32.i159 = phi i64 [ %.val32.i157, %bb.s ], [ %i.ce, %bb.u ] ; 2 uses
  %i.ch = phi i64 [ 0, %bb.s ], [ %i.ce, %bb.u ]
  %i.ci = icmp samesign ult i64 %.033.in.i88, 2
  br i1 %i.ci, label %.preheader.i117, label %SUNStlVector_SUNHashMapKeyValue_At.exit59

.preheader.i117:                                  ; preds = %SUNStlVector_SUNHashMapKeyValue_PopBack.exit, %.preheader
  %.val32.i = phi i64 [ %.val32.i.pre, %.preheader ], [ %.val32.i159, %SUNStlVector_SUNHashMapKeyValue_PopBack.exit ]
  %.not2733.i = icmp sgt i64 %.val32.i, 0
  %.pre.i118 = load ptr, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  br i1 %.not2733.i, label %.lr.ph.i, label %tailrecurse

.lr.ph.i:                                         ; preds = %.preheader.i117, %bb.v
  %i.cj = phi ptr [ %i.cn, %bb.v ], [ %.pre.i118, %.preheader.i117 ]
  %.02134.i = phi i64 [ %i.cp, %bb.v ], [ 0, %.preheader.i117 ] ; 3 uses
  %i.ck = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.02134.i
  %i.cm = tail call i32 %i.ck(ptr noundef %i.cl) #17, !inline_history !32 ; 2 uses
  %.not26.i = icmp eq i32 %i.cm, 0
  br i1 %.not26.i, label %bb.v, label %sunHashMapResize.exit.thread.loopexit

bb.v:                                             ; preds = %.lr.ph.i
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !11  ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.02134.i
  store ptr null, ptr %i.co, align 8, !tbaa !19
  %i.cp = add nuw nsw i64 %.02134.i, 1            ; 2 uses
  %.val.i = load i64, ptr %.val, align 8, !tbaa !16
  %.not27.i = icmp slt i64 %i.cp, %.val.i
  br i1 %.not27.i, label %.lr.ph.i, label %tailrecurse

sunHashMapResize.exit.thread.loopexit:            ; preds = %.lr.ph.i
  %i.cq = sext i32 %i.cm to i64
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

tailrecurse:                                      ; preds = %bb.v, %.preheader.i117
  %i.cr = phi ptr [ %.pre.i118, %.preheader.i117 ], [ %i.cn, %bb.v ]
  tail call void @free(ptr noundef %i.cr) #17
  tail call void @free(ptr noundef nonnull %.val) #17
  br label %bb.b

bb.w:                                             ; preds = %SUNHashMap_Iterate.exit.thread, %sunHashMapIdxFromKey.exit
  %.039 = phi i64 [ %i.p, %sunHashMapIdxFromKey.exit ], [ %.01928.i, %SUNHashMap_Iterate.exit.thread ] ; 3 uses
  %i.cs = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.ct = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.cu = add i64 %i.ct, 1
  %i.cv = tail call noalias ptr @malloc(i64 noundef %i.cu) #16 ; 3 uses
  %.not49 = icmp eq ptr %i.cv, null
  br i1 %.not49, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef %i.cs) #17
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

bb.y:                                             ; preds = %bb.w
  %i.cw = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cv, ptr noundef nonnull dereferenceable(1) %1) #17 ; 0 uses
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %2, ptr %i.cx, align 8, !tbaa !30
  %i.cy = icmp sge i64 %.039, %i.q
  %i.cz = icmp slt i64 %.039, 0
  %or.cond.i55 = or i1 %i.cz, %i.cy
  br i1 %or.cond.i55, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.039
  store ptr %i.cs, ptr %i.da, align 8, !tbaa !19
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

SUNStlVector_SUNHashMapKeyValue_Set.exit:         ; preds = %bb.d, %SUNHashMap_Iterate.exit, %bb.o, %bb.t, %sunHashMapResize.exit.thread.loopexit, %bb.a, %bb.z, %bb.y, %bb.x
  %.2 = phi i64 [ -9988, %bb.o ], [ -99, %bb.x ], [ 0, %bb.z ], [ -9992, %bb.y ], [ -99, %bb.a ], [ -9992, %bb.t ], [ %i.cq, %sunHashMapResize.exit.thread.loopexit ], [ -2, %bb.d ], [ %.val.val, %SUNHashMap_Iterate.exit ]
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
  %.07.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %1, %bb.c ]
  %.036.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ 1099511628211, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1 ; 2 uses
  %i.k = sext i8 %i.i to i64
  %i.l = xor i64 %.036.i.i, %i.k
  %i.m = mul i64 %i.l, -3750763034362895579       ; 2 uses
  %i.n = load i8, ptr %i.j, align 1, !tbaa !26    ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

fnv1a_hash.exit.i:                                ; preds = %.lr.ph.i.i, %bb.c
  %.03.lcssa.i.i = phi i64 [ 1099511628211, %bb.c ], [ %i.m, %.lr.ph.i.i ]
  %i.o = urem i64 %.03.lcssa.i.i, %i.f
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
  %i.ac = add i64 %.01928.i, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.q
  br i1 %exitcond.not, label %SUNHashMap_Iterate.exit, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i

SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i: ; preds = %.preheader.i, %sunHashMapLinearProbeGet.exit.thread
  %.01928.i = phi i64 [ %i.ac, %sunHashMapLinearProbeGet.exit.thread ], [ %i.aa, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.01928.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %sunHashMapLinearProbeGet.exit.thread, label %bb.e

bb.e:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull readonly dereferenceable(1) %1) #19
  %.not.i.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i.not, label %SUNHashMap_Iterate.exit, label %sunHashMapLinearProbeGet.exit.thread

SUNHashMap_Iterate.exit:                          ; preds = %bb.e, %sunHashMapLinearProbeGet.exit.thread, %.preheader.i
  %.3.i = phi i64 [ %.val.val, %.preheader.i ], [ %.val.val, %sunHashMapLinearProbeGet.exit.thread ], [ %.01928.i, %bb.e ] ; 2 uses
  %i.ai = icmp eq i64 %.3.i, -99
  br i1 %i.ai, label %SUNStlVector_SUNHashMapKeyValue_At.exit38.thread, label %bb.f

bb.f:                                             ; preds = %SUNHashMap_Iterate.exit, %bb.d
  %.025 = phi i64 [ %i.p, %bb.d ], [ %.3.i, %SUNHashMap_Iterate.exit ] ; 3 uses
  %i.aj = icmp sge i64 %.025, %i.q
  %i.ak = icmp slt i64 %.025, 0
  %or.cond.i36 = or i1 %i.ak, %i.aj
  %.not34 = icmp eq ptr %i.u, null
  %or.cond56 = or i1 %or.cond.i36, %.not34
  br i1 %or.cond56, label %SUNStlVector_SUNHashMapKeyValue_At.exit38.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.025
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
end_hunk_0
begin_hunk_1_@SUNHashMap_Remove:bb.a
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
  %.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %1, %bb.c ]
  %.036.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 1099511628211, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1 ; 2 uses
  %i.j = sext i8 %i.h to i64
  %i.k = xor i64 %.036.i.i, %i.j
  %i.l = mul i64 %i.k, -3750763034362895579       ; 2 uses
  %i.m = load i8, ptr %i.i, align 1, !tbaa !26    ; 2 uses
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

fnv1a_hash.exit.i:                                ; preds = %.lr.ph.i.i, %bb.c
  %.03.lcssa.i.i = phi i64 [ 1099511628211, %bb.c ], [ %i.l, %.lr.ph.i.i ]
  %i.n = urem i64 %.03.lcssa.i.i, %i.e
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
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 3 uses
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
  %i.ab = add i64 %.01928.i, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.p
  br i1 %exitcond.not, label %SUNHashMap_Iterate.exit, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i

SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i: ; preds = %.preheader.i, %sunHashMapLinearProbeGet.exit.thread
  %.01928.i = phi i64 [ %i.ab, %sunHashMapLinearProbeGet.exit.thread ], [ %i.z, %.preheader.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.01928.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %sunHashMapLinearProbeGet.exit.thread, label %bb.e

bb.e:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull readonly dereferenceable(1) %1) #19
  %.not.i.not = icmp eq i32 %i.ag, 0
  br i1 %.not.i.not, label %SUNHashMap_Iterate.exit, label %sunHashMapLinearProbeGet.exit.thread

SUNHashMap_Iterate.exit:                          ; preds = %bb.e, %sunHashMapLinearProbeGet.exit.thread, %.preheader.i
  %.3.i = phi i64 [ %.val.val, %.preheader.i ], [ %.val.val, %sunHashMapLinearProbeGet.exit.thread ], [ %.01928.i, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %.3.i, -99
  br i1 %i.ah, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %SUNHashMap_Iterate.exit.SUNStlVector_SUNHashMapKeyValue_At.exit35_crit_edge

SUNHashMap_Iterate.exit.SUNStlVector_SUNHashMapKeyValue_At.exit35_crit_edge: ; preds = %SUNHashMap_Iterate.exit
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.3.i
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %SUNStlVector_SUNHashMapKeyValue_At.exit35

SUNStlVector_SUNHashMapKeyValue_At.exit35:        ; preds = %SUNHashMap_Iterate.exit.SUNStlVector_SUNHashMapKeyValue_At.exit35_crit_edge, %bb.d
  %i.ai = phi ptr [ %i.v, %bb.d ], [ %.pre, %SUNHashMap_Iterate.exit.SUNStlVector_SUNHashMapKeyValue_At.exit35_crit_edge ] ; 3 uses
  %.025 = phi i64 [ %i.o, %bb.d ], [ %.3.i, %SUNHashMap_Iterate.exit.SUNStlVector_SUNHashMapKeyValue_At.exit35_crit_edge ] ; 4 uses
  %i.aj = icmp slt i64 %.025, %i.p
  %i.ak = icmp sgt i64 %.025, -1
  tail call void @llvm.assume(i1 %i.ak)
  tail call void @llvm.assume(i1 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  store ptr %i.am, ptr %2, align 8, !tbaa !33
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.an) #17
  tail call void @free(ptr noundef %i.ai) #17
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16
  %.not43 = icmp slt i64 %.025, %i.ap
  br i1 %.not43, label %bb.f, label %SUNStlVector_SUNHashMapKeyValue_Set.exit

bb.f:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.025
  store ptr null, ptr %i.as, align 8, !tbaa !19
  br label %SUNStlVector_SUNHashMapKeyValue_Set.exit

SUNStlVector_SUNHashMapKeyValue_Set.exit:         ; preds = %bb.f, %SUNStlVector_SUNHashMapKeyValue_At.exit35, %SUNHashMap_Iterate.exit, %bb.a
  %.1 = phi i64 [ -99, %bb.a ], [ -99, %SUNHashMap_Iterate.exit ], [ 0, %bb.f ], [ -9992, %SUNStlVector_SUNHashMapKeyValue_At.exit35 ]
  ret i64 %.1
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -9999, 1) i32 @SUNHashMap_Sort(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !17 ; 9 uses
  %i.f = shl i64 %.val.i, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #16 ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  store ptr %i.g, ptr %1, align 8, !tbaa !34
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = icmp sgt i64 %.val.i, 0
  br i1 %i.i, label %SUNStlVector_SUNHashMapKeyValue_At.exit.lr.ph, label %._crit_edge

SUNStlVector_SUNHashMapKeyValue_At.exit.lr.ph:    ; preds = %.preheader
  %i.j = load i64, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 7 uses
  %min.iters.check = icmp ult i64 %.val.i, 8
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond27 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond27, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.lr.ph
  %n.vec = and i64 %.val.i, 9223372036854775804   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x ptr>, ptr %i.o, align 8, !tbaa !19
  %wide.load25 = load <2 x ptr>, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x ptr> %wide.load, ptr %i.q, align 8, !tbaa !19
  store <2 x ptr> %wide.load25, ptr %i.r, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader

SUNStlVector_SUNHashMapKeyValue_At.exit.preheader: ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %SUNStlVector_SUNHashMapKeyValue_At.exit.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.val.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %SUNStlVector_SUNHashMapKeyValue_At.exit.prol.loopexit, label %SUNStlVector_SUNHashMapKeyValue_At.exit.prol

SUNStlVector_SUNHashMapKeyValue_At.exit.prol:     ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader, %SUNStlVector_SUNHashMapKeyValue_At.exit.prol
  %.022.prol = phi i64 [ %i.w, %SUNStlVector_SUNHashMapKeyValue_At.exit.prol ], [ %.022.ph, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %SUNStlVector_SUNHashMapKeyValue_At.exit.prol ], [ 0, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ]
  %.not21.prol = icmp slt i64 %.022.prol, %i.j
  tail call void @llvm.assume(i1 %.not21.prol)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.022.prol
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.022.prol
  store ptr %i.u, ptr %i.v, align 8, !tbaa !19
  %i.w = add nuw nsw i64 %.022.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %SUNStlVector_SUNHashMapKeyValue_At.exit.prol.loopexit, label %SUNStlVector_SUNHashMapKeyValue_At.exit.prol, !llvm.loop !38

SUNStlVector_SUNHashMapKeyValue_At.exit.prol.loopexit: ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.prol, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader
  %.022.unr = phi i64 [ %.022.ph, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ], [ %i.w, %SUNStlVector_SUNHashMapKeyValue_At.exit.prol ]
  %i.x = sub nsw i64 %.022.ph, %.val.i
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %._crit_edge, label %SUNStlVector_SUNHashMapKeyValue_At.exit

._crit_edge:                                      ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.prol.loopexit, %SUNStlVector_SUNHashMapKeyValue_At.exit, %middle.block, %.preheader
  tail call void @qsort(ptr noundef nonnull %i.g, i64 noundef %.val.i, i64 noundef 8, ptr noundef nonnull %2) #17
  br label %bb.c

SUNStlVector_SUNHashMapKeyValue_At.exit:          ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.prol.loopexit, %SUNStlVector_SUNHashMapKeyValue_At.exit
  %.022 = phi i64 [ %i.ak, %SUNStlVector_SUNHashMapKeyValue_At.exit ], [ %.022.unr, %SUNStlVector_SUNHashMapKeyValue_At.exit.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.022
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.022
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !19
  %3 = add nuw nsw i64 %.022, 1                   ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %3
  %i.ac = load ptr, ptr %4, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %3
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !19
  %5 = add nuw nsw i64 %.022, 2                   ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %5
  %i.ae = load ptr, ptr %6, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %5
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !19
  %i.ag = add nuw nsw i64 %.022, 3                ; 3 uses
  %.not21.3 = icmp slt i64 %i.ag, %i.j
  tail call void @llvm.assume(i1 %.not21.3)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ag
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = add nuw nsw i64 %.022, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ak, %.val.i
  br i1 %exitcond.not.3, label %._crit_edge, label %SUNStlVector_SUNHashMapKeyValue_At.exit, !llvm.loop !40

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.016 = phi i32 [ 0, %._crit_edge ], [ -9999, %bb.a ], [ -9988, %bb.b ]
  ret i32 %.016
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -9999, 1) i32 @SUNHashMap_Values(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  %i.d = mul nsw i64 %.val.i, %2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #16
  store ptr %i.e, ptr %1, align 8, !tbaa !41
  %i.f = icmp sgt i64 %.val.i, 0
  br i1 %i.f, label %SUNStlVector_SUNHashMapKeyValue_At.exit, label %.loopexit

SUNStlVector_SUNHashMapKeyValue_At.exit:          ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.s, %bb.d ], [ %i.b, %bb.b ] ; 3 uses
  %.01423 = phi i64 [ %i.t, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %.01522 = phi i32 [ %.1, %bb.d ], [ 0, %bb.b ]  ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %.not20 = icmp slt i64 %.01423, %i.h
  tail call void @llvm.assume(i1 %.not20)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01423
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = load ptr, ptr %1, align 8, !tbaa !41
  %i.p = add nsw i32 %.01522, 1
  %i.q = sext i32 %.01522 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.q
  store ptr %i.n, ptr %i.r, align 8, !tbaa !33
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %SUNStlVector_SUNHashMapKeyValue_At.exit
  %i.s = phi ptr [ %.pre, %bb.c ], [ %i.g, %SUNStlVector_SUNHashMapKeyValue_At.exit ] ; 2 uses
  %.1 = phi i32 [ %i.p, %bb.c ], [ %.01522, %SUNStlVector_SUNHashMapKeyValue_At.exit ]
  %i.t = add nuw nsw i64 %.01423, 1               ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val.i19 = load i64, ptr %i.u, align 8, !tbaa !17
  %i.v = icmp slt i64 %i.t, %.val.i19
  br i1 %i.v, label %SUNStlVector_SUNHashMapKeyValue_At.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -9999, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -9999, 1) i32 @SUNHashMap_PrintKeys(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fputc = tail call i32 @fputc(i32 91, ptr %1)   ; 0 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i16 = load i64, ptr %i.c, align 8, !tbaa !17
  %i.d = icmp sgt i64 %.val.i16, 0
  br i1 %i.d, label %SUNStlVector_SUNHashMapKeyValue_At.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %1) ; 0 uses
  br label %bb.e

SUNStlVector_SUNHashMapKeyValue_At.exit:          ; preds = %bb.b, %bb.d
  %i.f = phi ptr [ %i.n, %bb.d ], [ %i.b, %bb.b ] ; 3 uses
  %.01117 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %.not15 = icmp slt i64 %.01117, %i.g
  tail call void @llvm.assume(i1 %.not15)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01117
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %i.l) #17 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %SUNStlVector_SUNHashMapKeyValue_At.exit
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.f, %SUNStlVector_SUNHashMapKeyValue_At.exit ] ; 2 uses
  %i.o = add nuw nsw i64 %.01117, 1               ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !17
  %i.q = icmp slt i64 %i.o, %.val.i
  br i1 %i.q, label %SUNStlVector_SUNHashMapKeyValue_At.exit, label %._crit_edge

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.ceil.f80(x86_fp80) #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS11SUNHashMap_", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !14, i64 16}
!12 = !{!"SUNStlVector_SUNHashMapKeyValue_s", !13, i64 0, !13, i64 8, !14, i64 16, !10, i64 24}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p2 _ZTS19SUNHashMapKeyValue_", !15, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!12, !13, i64 0}
!17 = !{!12, !13, i64 8}
!18 = !{!12, !10, i64 24}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS19SUNHashMapKeyValue_", !10, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"SUNHashMap_", !10, i64 0, !23, i64 8}
!23 = !{!"p1 _ZTS33SUNStlVector_SUNHashMapKeyValue_s", !10, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{null}
!26 = !{!6, !6, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"SUNHashMapKeyValue_", !29, i64 0, !10, i64 8}
!29 = !{!"p1 omnipotent char", !10, i64 0}
!30 = !{!28, !10, i64 8}
!31 = distinct !{null}
!32 = distinct !{null, null}
!33 = !{!10, !10, i64 0}
!34 = !{!14, !14, i64 0}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
