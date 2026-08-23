Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/pcy_tree?download=true
inline.NumInlined: 57
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/pcy_tree.c\00", align 1

; Function Attrs: nounwind uwtable
define void @X509_policy_tree_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  tail call void @OPENSSL_sk_free(ptr noundef %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.d, ptr noundef nonnull @exnode_free) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016 = phi i32 [ %i.o, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.01315 = phi ptr [ %i.p, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 4 uses
  %i.j = load ptr, ptr %.01315, align 8, !tbaa !18
  tail call void @X509_free(ptr noundef %i.j) #4
  %i.k = getelementptr inbounds nuw i8, ptr %.01315, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.l, ptr noundef nonnull @ossl_policy_node_free) #4
  %i.m = getelementptr inbounds nuw i8, ptr %.01315, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  tail call void @ossl_policy_node_free(ptr noundef %i.n) #4
  %i.o = add nuw nsw i32 %.016, 1                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01315, i64 32
  %i.q = load i32, ptr %i.f, align 8, !tbaa !16
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.t, ptr noundef nonnull @sk_X509_POLICY_DATA_freefunc_thunk) #4
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.u, ptr noundef nonnull @ossl_policy_data_free) #4
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !17
  tail call void @CRYPTO_free(ptr noundef %i.v, ptr noundef nonnull @.str, i32 noundef 646) #4
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 647) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @exnode_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = and i32 %i.b, 8
  %.not3 = icmp eq i32 %i.c, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 625) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @X509_free(ptr noundef) local_unnamed_addr #2

declare void @ossl_policy_node_free(ptr noundef) #2

declare void @ossl_policy_data_free(ptr noundef) #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -2, 2) i32 @X509_policy_check(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !35
  store ptr null, ptr %0, align 8, !tbaa !36
  store i32 0, ptr %1, align 4, !tbaa !38
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef %2) #4 ; 8 uses
  %i.c = and i32 %4, 256
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not.i, i32 %i.b, i32 0
  %i.e = and i32 %4, 512
  %.not120.i = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not120.i, i32 %i.b, i32 0
  %i.g = and i32 %4, 1024
  %.not121.i = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not121.i, i32 %i.b, i32 0
  %i.i = icmp slt i32 %i.b, 1
  br i1 %i.i, label %tree_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %.thread58, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.k = add nsw i32 %i.b, -2                     ; 3 uses
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = add nsw i32 %.090165.i, -1
  %i.m = icmp sgt i32 %.090165.i, 0
  br i1 %i.m, label %.lr.ph.i, label %.lr.ph169.i, !llvm.loop !39

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.090165.i = phi i32 [ %i.l, %bb.c ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %i.n = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.090165.i) #4 ; 2 uses
  %i.o = tail call i32 @X509_check_purpose(ptr noundef %i.n, i32 noundef -1, i32 noundef 0) #4 ; 0 uses
  %i.p = tail call ptr @ossl_policy_cache_set(ptr noundef %i.n) #4
  %.not129.i = icmp eq ptr %i.p, null
  br i1 %.not129.i, label %tree_init.exit.thread, label %bb.c

.lr.ph169.i:                                      ; preds = %bb.c, %bb.i
  %.191168.i = phi i32 [ %i.ak, %bb.i ], [ %i.k, %bb.c ] ; 3 uses
  %.0100167.i = phi i32 [ %.3103.ph.i, %bb.i ], [ %i.d, %bb.c ] ; 4 uses
  %.0104166.i = phi i32 [ %.1105.i, %bb.i ], [ 1, %bb.c ] ; 5 uses
  %i.q = icmp sgt i32 %.0100167.i, 0              ; 2 uses
  %i.r = and i32 %.0104166.i, 2
  %i.s = icmp eq i32 %i.r, 0
  %i.t = select i1 %i.q, i1 true, i1 %i.s
  br i1 %i.t, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph169.i
  %i.u = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.191168.i) #4 ; 2 uses
  %i.v = tail call i32 @X509_get_extension_flags(ptr noundef %i.u) #4 ; 2 uses
  %i.w = and i32 %i.v, 2048
  %.not126.i = icmp eq i32 %i.w, 0
  br i1 %.not126.i, label %bb.e, label %tree_init.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = tail call ptr @ossl_policy_cache_set(ptr noundef %i.u) #4 ; 2 uses
  %i.y = and i32 %.0104166.i, 1
  %.not127.i = icmp eq i32 %i.y, 0
  br i1 %.not127.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = icmp eq ptr %i.aa, null
  %spec.select.i = select i1 %i.ab, i32 2, i32 %.0104166.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1105.i = phi i32 [ %.0104166.i, %bb.e ], [ %spec.select.i, %bb.f ] ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = lshr i32 %i.v, 5
  %i.ad = and i32 %i.ac, 1
  %sext159.i = add nsw i32 %.0100167.i, -1
  %spec.select130.i = add nuw nsw i32 %sext159.i, %i.ad ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !42 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  %i.ah = zext nneg i32 %spec.select130.i to i64
  %i.ai = icmp slt i64 %i.af, %i.ah
  %or.cond132.i = select i1 %i.ag, i1 %i.ai, i1 false
  %i.aj = trunc nuw nsw i64 %i.af to i32
  %spec.select140.i.a = select i1 %or.cond132.i, i32 %i.aj, i32 %spec.select130.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3103.ph.i = phi i32 [ %.0100167.i, %bb.g ], [ %spec.select140.i.a, %bb.h ] ; 2 uses
  %i.ak = add nsw i32 %.191168.i, -1
  %i.al = icmp sgt i32 %.191168.i, 0
  br i1 %i.al, label %.lr.ph169.i, label %.critedge.i, !llvm.loop !43

.critedge.i:                                      ; preds = %bb.i, %.lr.ph169.i
  %.0104.lcssa.ph.i = phi i32 [ %.0104166.i, %.lr.ph169.i ], [ %.1105.i, %bb.i ] ; 2 uses
  %.0100.lcssa.ph.i = phi i32 [ %.0100167.i, %.lr.ph169.i ], [ %.3103.ph.i, %bb.i ]
  %i.am = icmp eq i32 %.0100.lcssa.ph.i, 0
  %i.an = or i32 %.0104.lcssa.ph.i, 4
  %spec.select133.i.a = select i1 %i.am, i32 %i.an, i32 %.0104.lcssa.ph.i ; 4 uses
  %i.ao = and i32 %spec.select133.i.a, 1
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %tree_init.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.aq = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 64, ptr noundef nonnull @.str, i32 noundef 177) #4 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %tree_init.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 1000, ptr %i.as, align 8, !tbaa !44
  %i.at = zext nneg i32 %i.b to i64
  %i.au = tail call noalias ptr @CRYPTO_calloc(i64 noundef %i.at, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 190) #4 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !17
  %i.aw = icmp eq ptr %i.au, null
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @CRYPTO_free(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str, i32 noundef 191) #4
  br label %tree_init.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.b, ptr %i.ax, align 8, !tbaa !16
  %i.ay = tail call ptr @OBJ_nid2obj(i32 noundef 746) #4
  %i.az = tail call ptr @ossl_policy_data_new(ptr noundef null, ptr noundef %i.ay, i32 noundef 0) #4 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = tail call ptr @ossl_policy_level_add_node(ptr noundef nonnull %i.au, ptr noundef nonnull %i.az, ptr noundef null, ptr noundef nonnull %i.aq, i32 noundef 1) #4
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.o, label %.lr.ph178.i

bb.o:                                             ; preds = %bb.n
  tail call void @ossl_policy_data_free(ptr noundef nonnull %i.az) #4
  br label %.loopexit.i

.lr.ph178.i:                                      ; preds = %bb.n, %bb.y
  %.292177.i = phi i32 [ %i.cn, %bb.y ], [ %i.k, %bb.n ] ; 4 uses
  %.093176.i = phi i32 [ %.3.ph.i, %bb.y ], [ %i.h, %bb.n ] ; 2 uses
  %.096175.i = phi i32 [ %.298.i, %bb.y ], [ %i.f, %bb.n ] ; 2 uses
  %.0108174.i = phi ptr [ %i.bh, %bb.y ], [ %i.au, %bb.n ] ; 4 uses
  %i.bd = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.292177.i) #4 ; 4 uses
  %i.be = tail call i32 @X509_get_extension_flags(ptr noundef %i.bd) #4 ; 3 uses
  %i.bf = tail call ptr @ossl_policy_cache_set(ptr noundef %i.bd) #4 ; 3 uses
  %i.bg = tail call i32 @X509_up_ref(ptr noundef %i.bd) #4
  %.not122.i = icmp eq i32 %i.bg, 0
  br i1 %.not122.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph178.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0108174.i, i64 32 ; 2 uses
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !18
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !45
  %.not123.i = icmp eq ptr %i.bi, null
  br i1 %.not123.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %.0108174.i, i64 56 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !46
  %i.bl = or i32 %i.bk, 512
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !46
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = icmp eq i32 %.096175.i, 0
  br i1 %i.bm, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bn = and i32 %i.be, 32
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = icmp eq i32 %.292177.i, 0
  %or.cond.i = or i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108174.i, i64 56 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !46
  %i.bs = or i32 %i.br, 512
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !46
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bt = lshr i32 %i.be, 5
  %i.bu = and i32 %i.bt, 1
  %sext.i = add i32 %.096175.i, -1
  %spec.select134.i = add nuw i32 %sext.i, %i.bu  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !47 ; 3 uses
  %i.bx = icmp sgt i64 %i.bw, -1
  %i.by = sext i32 %spec.select134.i to i64
  %i.bz = icmp slt i64 %i.bw, %i.by
  %or.cond136.i = select i1 %i.bx, i1 %i.bz, i1 false
  %i.ca = trunc nuw nsw i64 %i.bw to i32
  %spec.select141.i.a = select i1 %or.cond136.i, i32 %i.ca, i32 %spec.select134.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.298.i = phi i32 [ 0, %bb.t ], [ 0, %bb.s ], [ %spec.select141.i.a, %bb.u ]
  %i.cb = icmp eq i32 %.093176.i, 0
  br i1 %i.cb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %.0108174.i, i64 56 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.ce = or i32 %i.cd, 1024
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !46
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cf = lshr i32 %i.be, 5
  %i.cg = and i32 %i.cf, 1
  %sext158.i = add i32 %.093176.i, -1
  %spec.select137.i = add nuw i32 %sext158.i, %i.cg ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !48 ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  %i.ck = sext i32 %spec.select137.i to i64
  %i.cl = icmp slt i64 %i.ci, %i.ck
  %or.cond139.i = select i1 %i.cj, i1 %i.cl, i1 false
  %i.cm = trunc nuw nsw i64 %i.ci to i32
  %spec.select142.i = select i1 %or.cond139.i, i32 %i.cm, i32 %spec.select137.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.3.ph.i = phi i32 [ %spec.select142.i, %bb.x ], [ 0, %bb.w ]
  %i.cn = add nsw i32 %.292177.i, -1
  %i.co = icmp sgt i32 %.292177.i, 0
  br i1 %i.co, label %.lr.ph178.i, label %tree_init.exit, !llvm.loop !49

.loopexit.i:                                      ; preds = %.lr.ph178.i, %bb.o, %bb.m
  tail call void @X509_policy_tree_free(ptr noundef nonnull %i.aq)
  br label %tree_init.exit.thread

tree_init.exit:                                   ; preds = %bb.y, %.critedge.i
  %.044 = phi ptr [ null, %.critedge.i ], [ %i.aq, %bb.y ] ; 18 uses
  %i.cp = and i32 %spec.select133.i.a, 4
  %i.cq = icmp eq i32 %i.cp, 0                    ; 3 uses
  br i1 %i.cq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %tree_init.exit
  %i.cr = and i32 %spec.select133.i.a, 2
  %.not22 = icmp eq i32 %i.cr, 0
  br i1 %.not22, label %bb.ac, label %.thread58

.thread58:                                        ; preds = %bb.b, %bb.z
  %.044515762 = phi ptr [ %.044, %bb.z ], [ null, %bb.b ]
  tail call void @X509_policy_tree_free(ptr noundef %.044515762)
  br label %tree_init.exit.thread

bb.aa:                                            ; preds = %tree_init.exit
  store i32 1, ptr %1, align 4, !tbaa !38
  %i.cs = and i32 %spec.select133.i.a, 2
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @X509_policy_tree_free(ptr noundef %.044)
  br label %tree_init.exit.thread

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %.044, i64 16 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.044, i64 24 ; 5 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !16 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  %.pre = load ptr, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  br i1 %i.cw, label %.lr.ph.i27, label %.loopexit

.lr.ph.i27:                                       ; preds = %bb.ac, %bb.be
end_hunk_0
