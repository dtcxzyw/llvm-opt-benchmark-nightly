Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcCom?download=true
inline.NumInlined: 100
inline.NumDeleted: 25
begin_hunk_0_@Abc_CommandInvCheck:bb.a
  %.0.i.neg = phi i64 [ %.neg32, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void (...) @Extra_UtilGetoptReset() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %Abc_Clock.exit
  %.0 = phi i32 [ 0, %Abc_Clock.exit ], [ %i.g, %bb.d ] ; 3 uses
  %i.f = call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.212) #17
  switch i32 %i.f, label %bb.p [
    i32 -1, label %bb.e
    i32 118, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = xor i32 %.0, 1
  br label %bb.c, !llvm.loop !110

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.242)
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 552        ; 2 uses
  %.val24 = load ptr, ptr %i.k, align 8, !tbaa !68 ; 4 uses
  %i.l = icmp eq ptr %.val24, null
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.243)
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %i.i, i64 16
  %.val25 = load i32, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr i8, ptr %.val24, i64 4
  %.val26 = load i32, ptr %i.n, align 4, !tbaa !37
  %i.o = getelementptr i8, ptr %.val24, i64 8
  %.val27 = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.p = sext i32 %.val26 to i64
  %i.q = getelementptr [4 x i8], ptr %.val27, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %.not19 = icmp eq i32 %.val25, %i.s
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.244)
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.t = call i32 @Pdr_InvCheck(ptr noundef nonnull %i.i, ptr noundef nonnull %.val24, i32 noundef %.0) #17 ; 2 uses
  %.not20 = icmp eq i32 %i.t, 0
  br i1 %.not20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.u = getelementptr i8, ptr %.val, i64 8
  %.val28 = load ptr, ptr %i.u, align 8, !tbaa !67
  %.val28.val = load i32, ptr %.val28, align 4, !tbaa !10
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.245, i32 noundef %i.t, i32 noundef %.val28.val) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.246) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.x = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #17
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %Abc_Clock.exit30, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load i64, ptr %3, align 8, !tbaa !112
  %i.aa = mul nsw i64 %i.z, 1000000
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !113
  %i.ad = sdiv i64 %i.ac, 1000
  %i.ae = add nsw i64 %i.ad, %i.aa
  br label %Abc_Clock.exit30

Abc_Clock.exit30:                                 ; preds = %bb.n, %bb.o
  %.0.i29 = phi i64 [ %i.ae, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.af = add i64 %.0.i29, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.247)
  %i.ag = sitofp i64 %i.af to double
  %i.ah = fdiv double %i.ag, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.252, double noundef %i.ah)
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.248)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.249)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.250)
  %.not21 = icmp eq i32 %.0, 0
  %i.ai = select i1 %.not21, ptr @.str.43, ptr @.str.42
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.ai)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.47)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %Abc_Clock.exit30, %bb.j, %bb.h, %bb.f
  %.016 = phi i32 [ 1, %bb.p ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %Abc_Clock.exit30 ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandInvGet(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 544
  %.val44 = load ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  tail call void (...) @Extra_UtilGetoptReset() #17
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.029.ph = phi i32 [ %i.d, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.028.ph = phi i32 [ %.028, %bb.d ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %.028 = phi i32 [ %i.c, %bb.c ], [ %.028.ph, %.outer ] ; 4 uses
  %i.b = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.253) #17
  switch i32 %i.b, label %bb.x [
    i32 -1, label %bb.e
    i32 102, label %bb.c
    i32 118, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %.028, 1
  br label %bb.b, !llvm.loop !114

bb.d:                                             ; preds = %bb.b
  %i.d = xor i32 %.029.ph, 1
  br label %.outer, !llvm.loop !114

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 552        ; 3 uses
  %.val41 = load ptr, ptr %i.e, align 8, !tbaa !68 ; 3 uses
  %i.f = icmp eq ptr %.val41, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.254)
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %.not36 = icmp eq i32 %.028, 0
  br i1 %.not36, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.255)
  %.val50.pre = load ptr, ptr %i.e, align 8, !tbaa !68
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val43 = load i32, ptr %i.j, align 8, !tbaa !65 ; 7 uses
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.l = add i32 %.val43, -1
  %or.cond.i.i = icmp ult i32 %i.l, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val43 ; 4 uses
  store i32 %spec.store.select.i.i, ptr %i.k, align 8, !tbaa !118
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrStart.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = sext i32 %spec.store.select.i.i to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #20
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %bb.j, %bb.k
  %i.p = phi ptr [ %i.o, %bb.k ], [ null, %bb.j ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !63
  store i32 %.val43, ptr %i.q, align 4, !tbaa !62
  %i.s = sext i32 %.val43 to i64
  %i.t = shl nsw i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.t, i1 false)
  %i.u = icmp sgt i32 %.val43, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_PtrStart.exit, %Vec_PtrSetEntry.exit
  %.val.i60 = phi ptr [ %.val.i, %Vec_PtrSetEntry.exit ], [ %i.p, %Vec_PtrStart.exit ] ; 7 uses
  %i.v = phi i32 [ %i.bg, %Vec_PtrSetEntry.exit ], [ %spec.store.select.i.i, %Vec_PtrStart.exit ] ; 7 uses
  %i.w = phi i32 [ %i.bh, %Vec_PtrSetEntry.exit ], [ %.val43, %Vec_PtrStart.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_PtrSetEntry.exit ], [ 0, %Vec_PtrStart.exit ] ; 8 uses
  %.val4256 = phi i32 [ %.val42, %Vec_PtrSetEntry.exit ], [ %.val43, %Vec_PtrStart.exit ]
  %i.x = phi ptr [ %i.bj, %Vec_PtrSetEntry.exit ], [ %i.h, %Vec_PtrStart.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 640
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr i8, ptr %i.x, i64 64
  %.val46 = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ab = getelementptr i8, ptr %.val46, i64 4
  %.val46.val = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = sub i32 %i.ac, %.val4256
  %i.ae = add i32 %i.ad, %.val46.val
  %i.af = getelementptr i8, ptr %i.z, i64 8
  %.val47 = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val47, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = tail call ptr @Extra_UtilStrsav(ptr noundef %i.ai) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.ak = sext i32 %i.w to i64                    ; 3 uses
  %.not.i.not.i = icmp slt i64 %indvars.iv, %i.ak
  br i1 %.not.i.not.i, label %Vec_PtrSetEntry.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.al = shl nsw i32 %i.v, 1                     ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.am
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not9.i.i.i = icmp eq ptr %.val.i60, null
  %i.an = shl nuw nsw i64 %indvars.iv.next, 3     ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %.not9.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %.val.i60, i64 noundef %i.an) #21
  br label %Vec_PtrGrow.exit.sink.split.i.i

bb.o:                                             ; preds = %bb.m
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.an) #20
  br label %Vec_PtrGrow.exit.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.ar = sext i32 %i.v to i64
  %.not.i.i.not.i = icmp slt i64 %indvars.iv, %i.ar
  br i1 %.not.i.i.not.i, label %Vec_PtrGrow.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = icmp slt i32 %i.v, 1073741823
  %spec.select.i.i = select i1 %i.as, i32 %i.al, i32 2147483647 ; 4 uses
  %.not.i22.i.i = icmp slt i32 %i.v, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.r, label %Vec_PtrGrow.exit.i.i

bb.r:                                             ; preds = %bb.q
  %.not9.i23.i.i = icmp eq ptr %.val.i60, null
  %i.at = sext i32 %spec.select.i.i to i64
  %i.au = shl nuw nsw i64 %i.at, 3                ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = tail call ptr @realloc(ptr noundef nonnull %.val.i60, i64 noundef %i.au) #21
  br label %Vec_PtrGrow.exit.sink.split.i.i

bb.t:                                             ; preds = %bb.r
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.au) #20
  br label %Vec_PtrGrow.exit.sink.split.i.i

Vec_PtrGrow.exit.sink.split.i.i:                  ; preds = %bb.s, %bb.t, %bb.n, %bb.o
  %storemerge = phi ptr [ %i.aq, %bb.o ], [ %i.ap, %bb.n ], [ %i.av, %bb.s ], [ %i.aw, %bb.t ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ %i.ao, %bb.o ], [ %i.ao, %bb.n ], [ %spec.select.i.i, %bb.s ], [ %spec.select.i.i, %bb.t ] ; 2 uses
  store ptr %storemerge, ptr %i.r, align 8, !tbaa !63
  store i32 %spec.select.sink.i.i, ptr %i.k, align 8, !tbaa !118
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !62
  %.pre = sext i32 %.pre.i to i64
  br label %Vec_PtrGrow.exit.i.i

Vec_PtrGrow.exit.i.i:                             ; preds = %Vec_PtrGrow.exit.sink.split.i.i, %bb.q, %bb.p
  %.pre-phi = phi i64 [ %.pre, %Vec_PtrGrow.exit.sink.split.i.i ], [ %i.ak, %bb.q ], [ %i.ak, %bb.p ] ; 5 uses
  %.val.i62 = phi ptr [ %storemerge, %Vec_PtrGrow.exit.sink.split.i.i ], [ %.val.i60, %bb.q ], [ %.val.i60, %bb.p ] ; 3 uses
  %i.ax = phi i32 [ %spec.select.sink.i.i, %Vec_PtrGrow.exit.sink.split.i.i ], [ %i.v, %bb.q ], [ %i.v, %bb.p ]
  %.not4.i = icmp sgt i64 %.pre-phi, %indvars.iv
  br i1 %.not4.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %Vec_PtrGrow.exit.i.i
  %i.ay = sub i64 %indvars.iv.next, %.pre-phi     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  %i.az = add i64 %.pre-phi, %n.vec
  %i.ba = getelementptr [8 x i8], ptr %.val.i62, i64 %.pre-phi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !64
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader73

.lr.ph.i.i.preheader73:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %.pre-phi, %.lr.ph.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader73, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader73 ] ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.val.i62, i64 %indvars.iv.i.i
  store ptr null, ptr %i.be, align 8, !tbaa !64
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %indvars.iv
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !116

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %Vec_PtrGrow.exit.i.i
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %i.bf, ptr %i.q, align 4, !tbaa !62
  br label %Vec_PtrSetEntry.exit

Vec_PtrSetEntry.exit:                             ; preds = %.lr.ph, %._crit_edge.i.i
  %.val.i = phi ptr [ %.val.i60, %.lr.ph ], [ %.val.i62, %._crit_edge.i.i ] ; 2 uses
  %i.bg = phi i32 [ %i.v, %.lr.ph ], [ %i.ax, %._crit_edge.i.i ]
  %i.bh = phi i32 [ %i.w, %.lr.ph ], [ %i.bf, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv
  store ptr %i.aj, ptr %i.bi, align 8, !tbaa !64
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %.val42 = load i32, ptr %i.bk, align 8, !tbaa !65 ; 2 uses
  %i.bl = sext i32 %.val42 to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !117

.thread:                                          ; preds = %bb.i, %bb.g
  %.val50 = phi ptr [ %.val50.pre, %bb.i ], [ %.val41, %bb.g ]
  %i.bn = tail call ptr @Wlc_NtkGetInv(ptr noundef %.val44, ptr noundef %.val50, ptr noundef null) #17
  br label %bb.v

._crit_edge.loopexit:                             ; preds = %Vec_PtrSetEntry.exit
  %.val.pre = load ptr, ptr %i.e, align 8, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Vec_PtrStart.exit
  %.val = phi ptr [ %.val.pre, %._crit_edge.loopexit ], [ %.val41, %Vec_PtrStart.exit ]
  %i.bo = tail call ptr @Wlc_NtkGetInv(ptr noundef %.val44, ptr noundef %.val, ptr noundef nonnull %i.k) #17
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !63  ; 2 uses
  %.not.i48 = icmp eq ptr %i.bp, null
  br i1 %.not.i48, label %Vec_PtrFree.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.bp) #17
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %._crit_edge, %bb.u
  tail call void @free(ptr noundef nonnull %i.k) #17
  br label %bb.v

bb.v:                                             ; preds = %.thread, %Vec_PtrFree.exit
  %i.bq = phi ptr [ %i.bn, %.thread ], [ %i.bo, %Vec_PtrFree.exit ] ; 2 uses
  %.not38 = icmp eq ptr %i.bq, null
  br i1 %.not38, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @Abc_FrameReplaceCurrentNetwork(ptr noundef nonnull %0, ptr noundef nonnull %i.bq) #17
  br label %bb.y

bb.x:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.256)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.257)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.258)
  %.not39 = icmp eq i32 %.028, 0
  %i.br = select i1 %.not39, ptr @.str.43, ptr @.str.42
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.259, ptr noundef nonnull %i.br)
  %.not40 = icmp eq i32 %.029.ph, 0
  %i.bs = select i1 %.not40, ptr @.str.43, ptr @.str.42
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.bs)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.47)
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.f
  %.032 = phi i32 [ 1, %bb.x ], [ 0, %bb.f ], [ 0, %bb.w ], [ 0, %bb.v ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandInvPut(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @Abc_FrameReadNtk(ptr noundef %0) #17 ; 2 uses
  tail call void (...) @Extra_UtilGetoptReset() #17
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.c ]     ; 2 uses
  %i.b = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.212) #17
  switch i32 %i.b, label %bb.j [
    i32 -1, label %bb.d
    i32 118, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !121

bb.d:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %i.a, null
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.260)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.261)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.h = tail call ptr @Wlc_NtkGetPut(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #17 ; 2 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @Abc_FrameSetInv(ptr noundef nonnull %i.h) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.262)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.263)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.250)
  %.not18 = icmp eq i32 %.0, 0
  %i.i = select i1 %.not18, ptr @.str.43, ptr @.str.42
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.i)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.47)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.g, %bb.e
  %.012 = phi i32 [ 1, %bb.j ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandInvMin(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #17
  br label %.outer

.outer:                                           ; preds = %bb.c, %bb.a
  %.021.ph = phi i32 [ %i.b, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %.0, %bb.c ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %.0 = phi i32 [ %i.c, %bb.d ], [ %.0.ph, %.outer ] ; 5 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.264) #17
  switch i32 %i.a, label %bb.p [
    i32 -1, label %bb.e
    i32 108, label %bb.c
    i32 118, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = xor i32 %.021.ph, 1
  br label %.outer, !llvm.loop !122

bb.d:                                             ; preds = %bb.b
  %i.c = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !122

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_0
