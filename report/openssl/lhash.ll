Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/lhash?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0_@OPENSSL_LH_delete:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bh = zext i32 %i.ba to i64
  %i.bi = tail call ptr @CRYPTO_realloc_array(ptr noundef nonnull %i.ay, i64 noundef %i.bh, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 293) #7 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !39
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !39
  %.pre.pre.i = load ptr, ptr %0, align 8, !tbaa !24
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %i.bi, ptr %0, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre.i = phi ptr [ %i.bi, %bb.q ], [ %.pre.pre.i, %bb.p ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !28
  %i.bo = lshr i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !28
  %i.bp = load i32, ptr %i.h, align 4, !tbaa !29
  %i.bq = lshr i32 %i.bp, 1                       ; 2 uses
  store i32 %i.bq, ptr %i.h, align 4, !tbaa !29
  %.pre34.i = add nsw i32 %i.bq, -1
  %.pre = load i32, ptr %i.aq, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.br = phi i32 [ %i.ar, %bb.n ], [ %.pre, %bb.r ]
  %storemerge.pre-phi.i = phi i32 [ %i.bb, %bb.n ], [ %.pre34.i, %bb.r ] ; 2 uses
  %i.bs = phi ptr [ %i.ay, %bb.n ], [ %.pre.i, %bb.r ]
  store i32 %storemerge.pre-phi.i, ptr %i.l, align 8, !tbaa !40
  %i.bt = add i32 %i.br, -1
  store i32 %i.bt, ptr %i.aq, align 8, !tbaa !27
  %i.bu = sext i32 %storemerge.pre-phi.i to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.t, label %.preheader.i

bb.t:                                             ; preds = %bb.s
  store ptr %i.bf, ptr %i.bv, align 8, !tbaa !35
  br label %contract.exit

.preheader.i:                                     ; preds = %bb.s, %.preheader.i
  %.0.i19 = phi ptr [ %i.bz, %.preheader.i ], [ %i.bw, %bb.s ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i19, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !37 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bz, null
  br i1 %.not.i20, label %bb.u, label %.preheader.i, !llvm.loop !45

bb.u:                                             ; preds = %.preheader.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i19, i64 8
  store ptr %i.bf, ptr %i.ca, align 8, !tbaa !37
  br label %contract.exit

contract.exit:                                    ; preds = %bb.k, %bb.f, %bb.u, %bb.t, %bb.l, %bb.m, %getrn.exit
  %.0 = phi ptr [ null, %getrn.exit ], [ %i.am, %bb.u ], [ %i.am, %bb.m ], [ %i.am, %bb.l ], [ %i.am, %bb.t ], [ null, %bb.f ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @OPENSSL_LH_retrieve(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 %i.d(ptr noundef %1, ptr noundef %i.f) #7, !inline_history !2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 %i.f(ptr noundef %1) #7, !inline_history !2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.031.i = phi i64 [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  %i.k = zext i32 %i.j to i64
  %i.l = urem i64 %.031.i, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %i.l, %i.o
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !28
  %i.s = zext i32 %i.r to i64
  %i.t = urem i64 %.031.i, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.g ], [ %i.l, %bb.f ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !24
  %sext.i = shl nuw i64 %.0.i, 32
  %i.v = ashr exact i64 %sext.i, 29
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.03240.i = load ptr, ptr %i.w, align 8, !tbaa !35 ; 2 uses
  %.not3741.i = icmp eq ptr %.03240.i, null
  br i1 %.not3741.i, label %getrn.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %.03243.i = phi ptr [ %.03240.i, %.lr.ph.i ], [ %.032.i, %bb.m ] ; 4 uses
  %.03342.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.1.i, %bb.m ]
  %i.z = getelementptr inbounds nuw i8, ptr %.03243.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !41
  %.not38.i = icmp eq i64 %i.aa, %.031.i
  br i1 %.not38.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !20  ; 2 uses
  %.not39.i = icmp eq ptr %i.ab, null
  br i1 %.not39.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %.03243.i, align 8, !tbaa !42
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.ae = tail call i32 %i.ab(ptr noundef %i.ac, ptr noundef %1, ptr noundef %i.ad) #7, !inline_history !2
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %getrn.exit, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.ah = load ptr, ptr %.03243.i, align 8, !tbaa !42
  %i.ai = tail call i32 %i.ag(ptr noundef %i.ah, ptr noundef %1) #7, !inline_history !2
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %getrn.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.1.i = getelementptr inbounds nuw i8, ptr %.03243.i, i64 8 ; 2 uses
  %.032.i = load ptr, ptr %.1.i, align 8, !tbaa !35 ; 2 uses
  %.not37.i = icmp eq ptr %.032.i, null
  br i1 %.not37.i, label %getrn.exit.thread, label %bb.i, !llvm.loop !3

getrn.exit:                                       ; preds = %bb.k, %bb.l
  %.pr = load ptr, ptr %.03342.i, align 8, !tbaa !35 ; 2 uses
  %i.ak = icmp eq ptr %.pr, null
  br i1 %i.ak, label %getrn.exit.thread, label %bb.n

bb.n:                                             ; preds = %getrn.exit
  %i.al = load ptr, ptr %.pr, align 8, !tbaa !42
  br label %getrn.exit.thread

getrn.exit.thread:                                ; preds = %bb.m, %bb.h, %getrn.exit, %bb.n
  %i.am = phi ptr [ %i.al, %bb.n ], [ null, %getrn.exit ], [ null, %bb.h ], [ null, %bb.m ]
  ret ptr %i.am
}

; Function Attrs: nounwind uwtable
define void @OPENSSL_LH_doall(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %doall_util_fn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %.01622.i = add i32 %i.e, -1                    ; 2 uses
  %i.f = icmp sgt i32 %.01622.i, -1
  br i1 %i.f, label %.lr.ph24.i, label %doall_util_fn.exit

.lr.ph24.i:                                       ; preds = %bb.b
  %i.g = zext nneg i32 %.01622.i to i64
  br label %.lr.ph24.split.us.i

.lr.ph24.split.us.i:                              ; preds = %.loopexit.us.i, %.lr.ph24.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.loopexit.us.i ], [ %i.g, %.lr.ph24.i ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv27.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %.not20.us.i = icmp eq ptr %i.j, null
  br i1 %.not20.us.i, label %.loopexit.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph24.split.us.i, %.lr.ph.us.i
  %.021.us.us.i = phi ptr [ %i.l, %.lr.ph.us.i ], [ %i.j, %.lr.ph24.split.us.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.021.us.us.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = load ptr, ptr %.021.us.us.i, align 8, !tbaa !42
  tail call void %i.c(ptr noundef %i.m, ptr noundef %1) #7, !inline_history !4
  %.not.us.us.i = icmp eq ptr %i.l, null
  br i1 %.not.us.us.i, label %.loopexit.us.i, label %.lr.ph.us.i, !llvm.loop !5

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i, %.lr.ph24.split.us.i
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1
  %2 = icmp sgt i64 %indvars.iv27.i, 0
  br i1 %2, label %.lr.ph24.split.us.i, label %doall_util_fn.exit, !llvm.loop !6

doall_util_fn.exit:                               ; preds = %.loopexit.us.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @OPENSSL_LH_doall_arg(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %doall_util_fn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %.01622.i = add i32 %i.e, -1                    ; 2 uses
  %i.f = icmp sgt i32 %.01622.i, -1
  br i1 %i.f, label %.lr.ph24.i, label %doall_util_fn.exit

.lr.ph24.i:                                       ; preds = %bb.b
  %i.g = zext nneg i32 %.01622.i to i64
  br label %.lr.ph24.split.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph24.split.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.h = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.h, label %.lr.ph24.split.i, label %doall_util_fn.exit, !llvm.loop !6

.lr.ph24.split.i:                                 ; preds = %.loopexit.i, %.lr.ph24.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.g, %.lr.ph24.i ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %.not20.i = icmp eq ptr %i.k, null
  br i1 %.not20.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph24.split.i, %.lr.ph.i
  %.021.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.k, %.lr.ph24.split.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.n = load ptr, ptr %.021.i, align 8, !tbaa !42
  tail call void %i.c(ptr noundef %i.n, ptr noundef %2, ptr noundef %1) #7, !inline_history !4
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !5

doall_util_fn.exit:                               ; preds = %.loopexit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @OPENSSL_LH_doall_arg_thunk(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %doall_util_fn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27
  %.01622.i = add i32 %i.c, -1                    ; 2 uses
  %i.d = icmp sgt i32 %.01622.i, -1
  br i1 %i.d, label %.lr.ph24.i, label %doall_util_fn.exit

.lr.ph24.i:                                       ; preds = %bb.b
  %i.e = zext nneg i32 %.01622.i to i64
  br label %.lr.ph24.split.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph24.split.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.f = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.f, label %.lr.ph24.split.i, label %doall_util_fn.exit, !llvm.loop !6

.lr.ph24.split.i:                                 ; preds = %.loopexit.i, %.lr.ph24.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.e, %.lr.ph24.i ] ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %.not20.i = icmp eq ptr %i.i, null
  br i1 %.not20.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph24.split.i, %.lr.ph.i
  %.021.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.i, %.lr.ph24.split.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.l = load ptr, ptr %.021.i, align 8, !tbaa !42
  tail call void %1(ptr noundef %i.l, ptr noundef %3, ptr noundef %2) #7, !inline_history !4
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !5

doall_util_fn.exit:                               ; preds = %.loopexit.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @ossl_lh_strcasehash(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !32      ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.026 = phi i64 [ %i.s, %.preheader ], [ 256, %bb.b ] ; 2 uses
  %.02025 = phi i64 [ %i.q, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %.02124 = phi ptr [ %i.r, %.preheader ], [ %0, %bb.b ]
  %i.d = phi i8 [ %.pr, %.preheader ], [ %i.b, %bb.b ]
  %i.e = and i8 %i.d, -33
  %i.f = sext i8 %i.e to i64                      ; 3 uses
  %i.g = or i64 %.026, %i.f                       ; 2 uses
  %i.h = lshr i64 %i.f, 2
  %i.i = xor i64 %i.h, %i.f
  %i.j = and i64 %i.i, 15                         ; 2 uses
  %i.k = shl i64 %.02025, %i.j
  %i.l = sub nuw nsw i64 32, %i.j
  %i.m = lshr i64 %.02025, %i.l
  %i.n = or i64 %i.m, %i.k
  %i.o = and i64 %i.n, 4294967295
  %i.p = mul i64 %i.g, %i.g
  %i.q = xor i64 %i.o, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02124, i64 1 ; 2 uses
  %i.s = add nuw nsw i64 %.026, 256
  %.pr = load i8, ptr %i.r, align 1, !tbaa !32    ; 2 uses
  %.not = icmp eq i8 %.pr, 0
  br i1 %.not, label %bb.c, label %.preheader, !llvm.loop !46

bb.c:                                             ; preds = %.preheader
  %i.t = lshr i64 %i.q, 16
  %i.u = xor i64 %i.t, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.022 = phi i64 [ %i.u, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @OPENSSL_LH_num_items(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @OPENSSL_LH_get_down_load(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @OPENSSL_LH_set_down_load(ptr nofree noundef writeonly captures(none) initializes((80, 88)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %1, ptr %i.a, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @OPENSSL_LH_error(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  ret i32 %i.b
}

declare ptr @CRYPTO_realloc_array(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{null}
!3 = distinct !{!3, !33}
!4 = distinct !{null}
!5 = distinct !{!5, !33}
!6 = distinct !{!6, !33}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"any p2 pointer", !15, i64 0}
!17 = !{!"p2 _ZTS13lhash_node_st", !16, i64 0}
!18 = !{!"long", !11, i64 0}
!19 = !{!"lhash_st", !17, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !18, i64 72, !18, i64 80, !18, i64 88, !12, i64 96}
!20 = !{!19, !15, i64 32}
!21 = !{!19, !15, i64 24}
!22 = !{!19, !15, i64 40}
!23 = !{!19, !15, i64 48}
!24 = !{!19, !17, i64 0}
!25 = !{!19, !15, i64 8}
!26 = !{!19, !15, i64 16}
!27 = !{!19, !12, i64 56}
!28 = !{!19, !12, i64 60}
!29 = !{!19, !12, i64 68}
!30 = !{!19, !18, i64 72}
!31 = !{!19, !18, i64 80}
!32 = !{!11, !11, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"p1 _ZTS13lhash_node_st", !15, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"lhash_node_st", !15, i64 0, !34, i64 8, !18, i64 16}
!37 = !{!36, !34, i64 8}
!38 = !{!19, !18, i64 88}
!39 = !{!19, !12, i64 96}
!40 = !{!19, !12, i64 64}
!41 = !{!36, !18, i64 16}
!42 = !{!36, !15, i64 0}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
end_hunk_0
