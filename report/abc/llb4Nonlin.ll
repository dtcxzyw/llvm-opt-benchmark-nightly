Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/llb4Nonlin?download=true
inline.NumInlined: 247
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Llb_Nonlin4DerivePartitions:bb.a
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count
  br i1 %exitcond.not, label %.critedge14.thread, label %.critedge12, !llvm.loop !110

.critedge14:                                      ; preds = %.critedge12.preheader
  %.not.i = icmp eq ptr %i.gx, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %.critedge14.thread

.critedge14.thread:                               ; preds = %.critedge12, %.critedge14
  tail call void @free(ptr noundef nonnull %i.gx) #21
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge14, %.critedge14.thread
  tail call void @free(ptr noundef nonnull %i.bq) #21
  br label %.critedge10

.critedge10:                                      ; preds = %.critedge8, %.critedge8.preheader, %Vec_PtrFree.exit
  %.0121 = phi ptr [ null, %Vec_PtrFree.exit ], [ %i.bq, %.critedge8.preheader ], [ %i.bq, %.critedge8 ]
  ret ptr %.0121
}

declare ptr @Cudd_bddXnor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Llb_Nonlin4CreateOrderSimple(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr i8, ptr %.val28, i64 4
  %.val28.val = load i32, ptr %i.b, align 4, !tbaa !29 ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.d = add i32 %.val28.val, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val28.val ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !45
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !33
  store i32 %.val28.val, ptr %i.e, align 4, !tbaa !46
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #22 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !33
  store i32 %.val28.val, ptr %i.e, align 4, !tbaa !46
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %.val28.val to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 -1, i64 %i.l, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val29 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val31 = load i32, ptr %i.o, align 4, !tbaa !29
  %i.p = icmp sgt i32 %.val31, 0
  br i1 %i.p, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val23 = load ptr, ptr %i.q, align 8, !tbaa !30
  br label %bb.c

.critedge.preheader.loopexit:                     ; preds = %bb.c
  %indvars = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit, %Vec_IntStartFull.exit
  %.0.lcssa = phi i32 [ 0, %Vec_IntStartFull.exit ], [ %indvars, %.critedge.preheader.loopexit ] ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 104
  %.val2734 = load i32, ptr %i.r, align 8, !tbaa !43 ; 5 uses
  %i.s = icmp sgt i32 %.val2734, 0
  br i1 %i.s, label %.lr.ph37, label %.critedge2

.lr.ph37:                                         ; preds = %.critedge.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.v = getelementptr i8, ptr %0, i64 112
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val22 = load ptr, ptr %i.w, align 8, !tbaa !30 ; 3 uses
  %.val26.pre = load i32, ptr %i.v, align 8, !tbaa !38 ; 3 uses
  %xtraiter = and i32 %.val2734, 1
  %i.x = icmp eq i32 %.val2734, 1
  br i1 %i.x, label %.critedge.epil.preheader, label %.lr.ph37.new

.lr.ph37.new:                                     ; preds = %.lr.ph37
  %unroll_iter = and i32 %.val2734, 2147483646
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %indvars38 = trunc i64 %indvars.iv to i32
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val23, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr i8, ptr %i.z, i64 36
  %.val25 = load i32, ptr %i.aa, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ab = sext i32 %.val25 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.ab
  store i32 %indvars38, ptr %i.ac, align 4, !tbaa !35
  %.val = load i32, ptr %i.o, align 4, !tbaa !29
  %i.ad = sext i32 %.val to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.c, label %.critedge.preheader.loopexit, !llvm.loop !111

.critedge:                                        ; preds = %.critedge, %.lr.ph37.new
  %.136 = phi i32 [ %.0.lcssa, %.lr.ph37.new ], [ %i.at, %.critedge ] ; 3 uses
  %.12135 = phi i32 [ 0, %.lr.ph37.new ], [ %i.aw, %.critedge ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph37.new ], [ %niter.next.1, %.critedge ]
  %i.af = add nsw i32 %.val26.pre, %.12135
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val22, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = getelementptr i8, ptr %i.ai, i64 36
  %.val24 = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.ak = add nuw nsw i32 %.136, 1
  %i.al = sext i32 %.val24 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.al
  store i32 %.136, ptr %i.am, align 4, !tbaa !35
  %i.an = or disjoint i32 %.12135, 1
  %i.ao = add nsw i32 %.val26.pre, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %.val22, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.as = getelementptr i8, ptr %i.ar, i64 36
  %.val24.1 = load i32, ptr %i.as, align 4, !tbaa !34
  %i.at = add nuw nsw i32 %.136, 2                ; 2 uses
  %i.au = sext i32 %.val24.1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.au
  store i32 %i.ak, ptr %i.av, align 4, !tbaa !35
  %i.aw = add nuw nsw i32 %.12135, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge2.loopexit.unr-lcssa, label %.critedge, !llvm.loop !112

.critedge2.loopexit.unr-lcssa:                    ; preds = %.critedge
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph37
  %.136.epil.init = phi i32 [ %.0.lcssa, %.lr.ph37 ], [ %i.at, %.critedge2.loopexit.unr-lcssa ]
  %.12135.epil.init = phi i32 [ 0, %.lr.ph37 ], [ %i.aw, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i32 %.val2734 to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.ax = add nsw i32 %.val26.pre, %.12135.epil.init
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %.val22, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = getelementptr i8, ptr %i.ba, i64 36
  %.val24.epil = load i32, ptr %i.bb, align 4, !tbaa !34
  %i.bc = sext i32 %.val24.epil to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.bc
  store i32 %.136.epil.init, ptr %i.bd, align 4, !tbaa !35
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge.epil.preheader, %.critedge2.loopexit.unr-lcssa, %.critedge.preheader
  ret ptr %i.c
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Llb_Nonlin4CreateOrder_rec(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 312
  %.val39 = load i32, ptr %i.a, align 8, !tbaa !47 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %.val40 = load i32, ptr %i.b, align 8, !tbaa !48
  %.not = icmp eq i32 %.val40, %.val39
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.val39, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val42 = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val42, 7
  %.not43 = icmp eq i64 %i.d, 2
  br i1 %.not43, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val35 = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.f = ptrtoint ptr %.val35 to i64
  %i.g = and i64 %i.f, -2
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val36 = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.j = ptrtoint ptr %.val36 to i64
  %i.k = and i64 %i.j, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = getelementptr i8, ptr %i.h, i64 28
  %4 = load i32, ptr %i.m, align 4
  %i.n = and i32 %4, 16777215
  %i.o = getelementptr i8, ptr %i.l, i64 28
  %5 = load i32, ptr %i.o, align 4
  %i.p = and i32 %5, 16777215
  %i.q = icmp samesign ugt i32 %i.n, %i.p         ; 2 uses
  %. = select i1 %i.q, ptr %i.h, ptr %i.l
  %.52 = select i1 %i.q, ptr %i.l, ptr %i.h
  tail call void @Llb_Nonlin4CreateOrder_rec(ptr noundef nonnull %0, ptr noundef nonnull %., ptr noundef %2, ptr noundef %3)
  tail call void @Llb_Nonlin4CreateOrder_rec(ptr noundef nonnull %0, ptr noundef nonnull %.52, ptr noundef %2, ptr noundef %3)
  %i.r = load i64, ptr %i.c, align 8
  %i.s = and i64 %i.r, 16
  %.not33 = icmp eq i64 %i.s, 0
  br i1 %.not33, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.t = getelementptr i8, ptr %1, i64 36
  %.val = load i32, ptr %i.t, align 4, !tbaa !34
  %i.u = load i32, ptr %3, align 4, !tbaa !35     ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %3, align 4, !tbaa !35
  %i.w = getelementptr i8, ptr %2, i64 8
  %.val37 = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.x = sext i32 %.val to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %.val37, i64 %i.x
  store i32 %i.u, ptr %i.y, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Llb_Nonlin4CollectHighRefNodes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @Aig_ManCleanMarkA(ptr noundef %0) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val3851 = load i32, ptr %i.c, align 4, !tbaa !29
  %i.d = icmp sgt i32 %.val3851, 0
  br i1 %i.d, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.d, %bb.a
  %i.e = phi ptr [ %i.b, %bb.a ], [ %i.u, %bb.d ]
  %i.f = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %.val4753 = load i32, ptr %i.f, align 8, !tbaa !43
  %i.g = icmp sgt i32 %.val4753, 0
  br i1 %i.g, label %.lr.ph55, label %.critedge2

.lr.ph55:                                         ; preds = %.critedge.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr i8, ptr %0, i64 112
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.j = phi ptr [ %i.u, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val41 = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val41, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %.val45 = load i64, ptr %i.o, align 8           ; 2 uses
  %i.p = trunc i64 %.val45 to i32                 ; 2 uses
  %i.q = and i32 %i.p, 7
  %i.r = add nsw i32 %i.q, -7
  %narrow.i = icmp ult i32 %i.r, -2
  %i.s = lshr i32 %i.p, 6
  %.not37 = icmp slt i32 %i.s, %1
  %or.cond = or i1 %.not37, %narrow.i
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = or i64 %.val45, 16
  store i64 %i.t, ptr %i.o, align 8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.lr.ph, %bb.c
  %i.u = phi ptr [ %i.j, %bb.b ], [ %i.j, %.lr.ph ], [ %.pre, %bb.c ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val38 = load i32, ptr %i.v, align 4, !tbaa !29
  %i.w = sext i32 %.val38 to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %.critedge.preheader, !llvm.loop !113

.critedge:                                        ; preds = %.lr.ph55, %.critedge
  %.154 = phi i32 [ 0, %.lr.ph55 ], [ %i.al, %.critedge ] ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !37
  %.val43 = load i32, ptr %i.i, align 8, !tbaa !38
  %i.z = add nsw i32 %.val43, %.154
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val40 = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val40, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val46 = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.af = ptrtoint ptr %.val46 to i64
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, -17
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = add nuw nsw i32 %.154, 1                ; 2 uses
  %.val47 = load i32, ptr %i.f, align 8, !tbaa !43
  %i.am = icmp slt i32 %i.al, %.val47
  br i1 %i.am, label %.critedge, label %.critedge2.loopexit, !llvm.loop !114

.critedge2.loopexit:                              ; preds = %.critedge
  %.pre63 = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge.preheader
  %i.an = phi ptr [ %.pre63, %.critedge2.loopexit ], [ %i.e, %.critedge.preheader ] ; 3 uses
  %i.ao = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  store i32 0, ptr %i.ap, align 4, !tbaa !46
  store i32 100, ptr %i.ao, align 8, !tbaa !45
  %i.aq = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !33
  %i.as = getelementptr i8, ptr %i.an, i64 4
  %.val56 = load i32, ptr %i.as, align 4, !tbaa !29
  %i.at = icmp sgt i32 %.val56, 0
  br i1 %i.at, label %.lr.ph58, label %.critedge4

.lr.ph58:                                         ; preds = %.critedge2, %bb.o
  %.pre6465 = phi ptr [ %.pre6466, %bb.o ], [ %i.an, %.critedge2 ] ; 4 uses
  %i.au = phi ptr [ %i.by, %bb.o ], [ %i.an, %.critedge2 ] ; 3 uses
  %i.av = phi ptr [ %i.bz, %bb.o ], [ %i.aq, %.critedge2 ] ; 4 uses
  %i.aw = phi ptr [ %i.ca, %bb.o ], [ %i.aq, %.critedge2 ] ; 6 uses
  %i.ax = phi i32 [ %i.cb, %bb.o ], [ 100, %.critedge2 ] ; 9 uses
  %i.ay = phi i32 [ %i.cc, %bb.o ], [ 0, %.critedge2 ] ; 5 uses
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.o ], [ 0, %.critedge2 ] ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %.val39 = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val39, i64 %indvars.iv60
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.o, label %bb.e

bb.e:                                             ; preds = %.lr.ph58
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val44 = load i64, ptr %i.bd, align 8          ; 2 uses
  %i.be = trunc i64 %.val44 to i32
  %i.bf = and i32 %i.be, 7
  %i.bg = add nsw i32 %i.bf, -7
  %narrow.i49 = icmp ult i32 %i.bg, -2
  %i.bh = and i64 %.val44, 16
  %.not35 = icmp eq i64 %i.bh, 0
  %or.cond50 = or i1 %.not35, %narrow.i49
  br i1 %or.cond50, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr i8, ptr %i.bb, i64 36
  %.val42 = load i32, ptr %i.bi, align 4, !tbaa !34
  %i.bj = icmp eq i32 %i.ay, %i.ax
  br i1 %i.bj, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.bk = icmp slt i32 %i.ax, 16
  br i1 %i.bk, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %i.aw, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aw, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.bm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.bn = icmp samesign ult i32 %i.ax, 1073741823
  %i.bo = shl nuw nsw i32 %i.ax, 1
  %spec.select.i = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ax, %spec.select.i
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %i.aw, null
  %i.bp = zext nneg i32 %spec.select.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = tail call ptr @realloc(ptr noundef nonnull %i.aw, i64 noundef %i.bq) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
end_hunk_0
