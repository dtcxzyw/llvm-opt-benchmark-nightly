Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@BN_mul_word:bb.a
  %.pre = load i32, ptr %i.a, align 8, !tbaa !186 ; 2 uses
  %.pre30 = add nsw i32 %.pre, 1
  %.pre31 = sext i32 %.pre to i64
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.d
  %.pre-phi32 = phi i64 [ %.pre31, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.f, %bb.d ]
  %.pre-phi = phi i32 [ %.pre30, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.bq, %bb.d ]
  %i.cg = phi ptr [ %i.by, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.e, %bb.d ]
  store i32 %.pre-phi, ptr %i.a, align 8, !tbaa !186
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %.pre-phi32
  store i64 %.0.i, ptr %i.ch, align 8, !tbaa !94
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.i, %bb.h, %bb.f, %bn_wexpand.exit, %bn_mul_words.exit, %bb.a, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %bn_mul_words.exit ], [ 1, %bn_wexpand.exit ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @bn_sqr_consttime(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 10 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !182
  br label %BN_CTX_end.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !291
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.d, label %BN_CTX_start.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !292
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !293  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !294
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !290
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.m, 0
  %i.q = mul i64 %i.m, 3
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %.not.i.i, i64 32, i64 %i.r    ; 4 uses
  %i.t = icmp ule i64 %i.s, %i.m
  %i.u = icmp samesign ugt i64 %i.s, 2305843009213693951
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !290
  %i.w = shl nuw i64 %i.s, 3
  %i.x = tail call ptr @OPENSSL_realloc(ptr noundef %i.v, i64 noundef %i.w) #36 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.x, ptr %i.i, align 8, !tbaa !290
  store i64 %i.s, ptr %i.n, align 8, !tbaa !294
  %.pre26.i.i = load i64, ptr %i.l, align 8, !tbaa !293
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.g, %._crit_edge.i.i
  %i.z = phi i64 [ %i.m, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.g ]
  %i.aa = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.x, %bb.g ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store i64 %i.k, ptr %i.ab, align 8, !tbaa !94
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !293
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.l, align 8, !tbaa !293
  br label %BN_CTX_start.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  store i8 1, ptr %i.g, align 8, !tbaa !291
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 41
  store i8 1, ptr %i.ae, align 1, !tbaa !295
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.c, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.h
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %BN_CTX_start.exit
  %i.af = tail call ptr @BN_CTX_get(ptr noundef nonnull %2)
  br label %bb.j

bb.j:                                             ; preds = %BN_CTX_start.exit, %bb.i
  %i.ag = phi ptr [ %i.af, %bb.i ], [ %0, %BN_CTX_start.exit ] ; 16 uses
  %i.ah = tail call ptr @BN_CTX_get(ptr noundef nonnull %2) ; 5 uses
  %i.ai = icmp ne ptr %i.ag, null
  %i.aj = icmp ne ptr %i.ah, null
  %or.cond = and i1 %i.ai, %i.aj
  br i1 %or.cond, label %bb.k, label %bn_wexpand.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = shl nuw nsw i32 %i.c, 1                 ; 4 uses
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !197
  %.not.i60 = icmp ugt i32 %i.ak, %i.an
  br i1 %.not.i60, label %bb.l, label %bn_wexpand.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp samesign ugt i32 %i.c, 4194303
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 2
  %.not16.i = icmp eq i32 %i.ar, 0
  br i1 %.not16.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.as = tail call ptr @OPENSSL_calloc(i64 noundef %i.al, i64 noundef 8) #36 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bn_wexpand.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !186 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = sext i32 %i.av to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr readonly align 1 %i.az, i64 %i.ay, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.r, %bb.q
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.ba) #36
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !185
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !197
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.k
  switch i32 %i.c, label %bb.u [
    i32 4, label %bb.s
    i32 8, label %bb.t
  ]

bb.s:                                             ; preds = %bn_wexpand.exit
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !185
  %i.bc = load ptr, ptr %1, align 8, !tbaa !185
  tail call void @bn_sqr_comba4(ptr noundef %i.bb, ptr noundef %i.bc)
  br label %bb.ab

bb.t:                                             ; preds = %bn_wexpand.exit
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !185
  %i.be = load ptr, ptr %1, align 8, !tbaa !185
  tail call void @bn_sqr_comba8(ptr noundef %i.bd, ptr noundef %i.be)
  br label %bb.ab

bb.u:                                             ; preds = %bn_wexpand.exit
  %i.bf = icmp samesign ult i32 %i.c, 16
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !185
  %i.bh = load ptr, ptr %1, align 8, !tbaa !185
  %i.bi = zext nneg i32 %i.c to i64
  call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef %i.bg, ptr noundef %i.bh, i64 noundef %i.bi, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bj = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.bk = icmp samesign ult i32 %i.bj, 2
  br i1 %i.bk, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bl = shl nsw i32 %i.c, 2
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = tail call i32 @bn_wexpand(ptr noundef nonnull %i.ah, i64 noundef %i.bm)
  %.not57 = icmp eq i32 %i.bn, 0
  br i1 %.not57, label %bn_wexpand.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !185
  %i.bp = load ptr, ptr %1, align 8, !tbaa !185
  %i.bq = zext nneg i32 %i.c to i64
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !185
  tail call fastcc void @_ZL16bn_sqr_recursivePmPKmmS_(ptr noundef %i.bo, ptr noundef %i.bp, i64 noundef %i.bq, ptr noundef %i.br)
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.bs = tail call i32 @bn_wexpand(ptr noundef nonnull %i.ah, i64 noundef %i.al)
  %.not56 = icmp eq i32 %i.bs, 0
  br i1 %.not56, label %bn_wexpand.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = load ptr, ptr %i.ag, align 8, !tbaa !185
  %i.bu = load ptr, ptr %1, align 8, !tbaa !185
  %i.bv = zext nneg i32 %i.c to i64
  %i.bw = load ptr, ptr %i.ah, align 8, !tbaa !185
  tail call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef %i.bt, ptr noundef %i.bu, i64 noundef %i.bv, ptr noundef %i.bw)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.t, %bb.y, %bb.aa, %bb.v, %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.bx, align 8, !tbaa !182
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.ak, ptr %i.by, align 8, !tbaa !186
  %.not58 = icmp eq ptr %i.ag, %0
  br i1 %.not58, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %i.ag)
  %.not59 = icmp eq ptr %i.bz, null
  br i1 %.not59, label %bn_wexpand.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.p, %bb.o, %bb.m, %bb.ac, %bb.z, %bb.x, %bb.j, %bb.ad
  %.0 = phi i32 [ 1, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.p ] ; 2 uses
  %i.ca = load i8, ptr %i.g, align 8, !tbaa !291
  %.not.i61 = icmp eq i8 %i.ca, 0
  br i1 %.not.i61, label %bb.ae, label %BN_CTX_end.exit

bb.ae:                                            ; preds = %bn_wexpand.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !293
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !293
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !290
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !94
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !292
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.ae, %bn_wexpand.exit.thread, %bb.b
  %.050 = phi i32 [ 1, %bb.b ], [ %.0, %bn_wexpand.exit.thread ], [ %.0, %bb.ae ]
  ret i32 %.050
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 2147483648) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bn_add_words.exit77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i64 %2, 1                    ; 3 uses
  %i.c = getelementptr [8 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  store i64 0, ptr %i.d, align 8, !tbaa !94
  store i64 0, ptr %0, align 8, !tbaa !94
  %.not = icmp eq i64 %2, 1                       ; 2 uses
  br i1 %.not, label %.lr.ph59.i.preheader, label %.preheader50.i

.preheader50.i:                                   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = add nsw i64 %2, -1                       ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !94
  %.not51.i = icmp samesign ult i64 %2, 5
  %.pre = zext i64 %i.h to i128                   ; 7 uses
  br i1 %.not51.i, label %.lr.ph64.i.preheader, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not4959.i = icmp eq i64 %i.bd, 0
  br i1 %.not4959.i, label %.thread80, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader50.i, %.preheader.i
  %.163.i.ph = phi ptr [ %i.e, %.preheader50.i ], [ %i.bc, %.preheader.i ] ; 3 uses
  %.14362.i.ph = phi ptr [ %i.f, %.preheader50.i ], [ %i.bb, %.preheader.i ] ; 3 uses
  %.14561.i.ph = phi i64 [ %i.g, %.preheader50.i ], [ %i.bd, %.preheader.i ] ; 4 uses
  %.14760.i.ph = phi i64 [ 0, %.preheader50.i ], [ %i.ba, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.14561.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader
  %i.i = load i64, ptr %.14362.i.ph, align 8, !tbaa !94
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %.pre, %i.j
  %i.l = zext i64 %.14760.i.ph to i128
  %i.m = add nuw i128 %i.k, %i.l                  ; 2 uses
  %i.n = trunc i128 %i.m to i64
  store i64 %i.n, ptr %.163.i.ph, align 8, !tbaa !94
  %i.o = lshr i128 %i.m, 64
  %i.p = trunc nuw i128 %i.o to i64               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.14362.i.ph, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.163.i.ph, i64 8
  %i.s = add nsw i64 %.14561.i.ph, -1
  br label %.lr.ph64.i.prol.loopexit

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %.lcssa163.unr = phi i64 [ poison, %.lr.ph64.i.preheader ], [ %i.p, %.lr.ph64.i.prol ]
  %.163.i.unr = phi ptr [ %.163.i.ph, %.lr.ph64.i.preheader ], [ %i.r, %.lr.ph64.i.prol ]
  %.14362.i.unr = phi ptr [ %.14362.i.ph, %.lr.ph64.i.preheader ], [ %i.q, %.lr.ph64.i.prol ]
  %.14561.i.unr = phi i64 [ %.14561.i.ph, %.lr.ph64.i.preheader ], [ %i.s, %.lr.ph64.i.prol ]
  %.14760.i.unr = phi i64 [ %.14760.i.ph, %.lr.ph64.i.preheader ], [ %i.p, %.lr.ph64.i.prol ]
  %i.t = icmp eq i64 %.14561.i.ph, 1
  br i1 %i.t, label %.unr-lcssa, label %.lr.ph64.i

.thread80:                                        ; preds = %.preheader.i
  %i.u = getelementptr [8 x i8], ptr %0, i64 %2
  store i64 %i.ba, ptr %i.u, align 8, !tbaa !94
  br label %.lr.ph.preheader

.lr.ph.i:                                         ; preds = %.preheader50.i, %.lr.ph.i
  %.04155.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.e, %.preheader50.i ] ; 5 uses
  %.04254.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.f, %.preheader50.i ] ; 5 uses
  %.04453.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %i.g, %.preheader50.i ]
  %.04652.i = phi i64 [ %i.ba, %.lr.ph.i ], [ 0, %.preheader50.i ]
  %i.v = load i64, ptr %.04254.i, align 8, !tbaa !94
  %i.w = zext i64 %i.v to i128
  %i.x = mul nuw i128 %i.w, %.pre
  %i.y = zext i64 %.04652.i to i128
  %i.z = add nuw i128 %i.x, %i.y                  ; 2 uses
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %.04155.i, align 8, !tbaa !94
  %i.ab = lshr i128 %i.z, 64
  %i.ac = getelementptr inbounds nuw i8, ptr %.04254.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !94
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, %.pre
  %i.ag = add nuw i128 %i.af, %i.ab               ; 2 uses
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.04155.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !94
  %i.aj = lshr i128 %i.ag, 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.04254.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !94
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %.pre
  %i.ao = add nuw i128 %i.an, %i.aj               ; 2 uses
  %i.ap = trunc i128 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.04155.i, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !94
  %i.ar = lshr i128 %i.ao, 64
  %i.as = getelementptr inbounds nuw i8, ptr %.04254.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !94
  %i.au = zext i64 %i.at to i128
  %i.av = mul nuw i128 %i.au, %.pre
  %i.aw = add nuw i128 %i.av, %i.ar               ; 2 uses
  %i.ax = trunc i128 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.04155.i, i64 24
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !94
  %i.az = lshr i128 %i.aw, 64
  %i.ba = trunc nuw i128 %i.az to i64             ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.04254.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04155.i, i64 32 ; 2 uses
  %i.bd = add i64 %.04453.i, -4                   ; 4 uses
  %.not.i = icmp ult i64 %i.bd, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !299

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %.163.i = phi ptr [ %i.bv, %.lr.ph64.i ], [ %.163.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14362.i = phi ptr [ %i.bu, %.lr.ph64.i ], [ %.14362.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14561.i = phi i64 [ %i.bw, %.lr.ph64.i ], [ %.14561.i.unr, %.lr.ph64.i.prol.loopexit ]
  %.14760.i = phi i64 [ %i.bt, %.lr.ph64.i ], [ %.14760.i.unr, %.lr.ph64.i.prol.loopexit ]
  %i.be = load i64, ptr %.14362.i, align 8, !tbaa !94
  %i.bf = zext i64 %i.be to i128
  %i.bg = mul nuw i128 %.pre, %i.bf
  %i.bh = zext i64 %.14760.i to i128
  %i.bi = add nuw i128 %i.bg, %i.bh               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64
  store i64 %i.bj, ptr %.163.i, align 8, !tbaa !94
  %i.bk = lshr i128 %i.bi, 64
  %i.bl = getelementptr inbounds nuw i8, ptr %.14362.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.163.i, i64 8
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !94
  %i.bo = zext i64 %i.bn to i128
  %i.bp = mul nuw i128 %.pre, %i.bo
  %i.bq = add nuw i128 %i.bp, %i.bk               ; 2 uses
  %i.br = trunc i128 %i.bq to i64
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !94
end_hunk_0
begin_hunk_1_@bn_miller_rabin_init:bb.a
bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !654
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp eq ptr %i.g, null
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL17BN_value_one_once, ptr noundef nonnull @_ZL17BN_value_one_initv) #36
  %i.p = tail call i32 @bn_usub_consttime(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZL20BN_value_one_storage)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !651    ; 2 uses
  %i.r = tail call i32 @BN_count_low_zero_bits(ptr noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.r, ptr %i.s, align 4, !tbaa !656
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !653
  %i.u = tail call i32 @bn_rshift_secret_shift(ptr noundef %i.t, ptr noundef %i.q, i32 noundef %i.r, ptr noundef %2)
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !186  ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.w, %.lr.ph.i.i ], [ %i.ae, %bb.h ] ; 4 uses
  %i.z = zext nneg i32 %.05.i.i to i64
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !94
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bn_minimal_width.exit.thread7.i

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %.05.i.i, -1
  %i.af = icmp sgt i32 %.05.i.i, 1
  br i1 %i.af, label %bb.g, label %BN_num_bits.exit, !llvm.loop !192

bn_minimal_width.exit.i:                          ; preds = %bb.f
  %i.ag = icmp eq i32 %i.w, 0
  br i1 %i.ag, label %BN_num_bits.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !185
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.g, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.ah = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.y, %bb.g ]
  %.0.lcssa.i9.i = phi i32 [ %i.w, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.g ]
  %i.ai = add nsw i32 %.0.lcssa.i9.i, -1          ; 2 uses
  %i.aj = shl nsw i32 %i.ai, 6
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !94 ; 3 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = lshr i64 %i.am, 32                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, 0                ; 2 uses
  %i.ap = select i1 %.not.i.i, i32 0, i32 32
  %i.aq = zext i1 %i.an to i32
  %i.ar = select i1 %.not.i.i, i64 %i.am, i64 %i.ao ; 2 uses
  %i.as = lshr i64 %i.ar, 16                      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.as, 0              ; 2 uses
  %i.at = select i1 %.not52.i.i, i32 0, i32 16
  %i.au = select i1 %.not52.i.i, i64 %i.ar, i64 %i.as ; 2 uses
  %i.av = lshr i64 %i.au, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.av, 0              ; 2 uses
  %i.aw = select i1 %.not53.i.i, i32 0, i32 8
  %i.ax = select i1 %.not53.i.i, i64 %i.au, i64 %i.av ; 2 uses
  %i.ay = lshr i64 %i.ax, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.ay, 0              ; 2 uses
  %i.az = select i1 %.not54.i.i, i32 0, i32 4
  %i.ba = select i1 %.not54.i.i, i64 %i.ax, i64 %i.ay ; 2 uses
  %i.bb = lshr i64 %i.ba, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.bb, 0              ; 2 uses
  %i.bc = select i1 %.not55.i.i, i32 0, i32 2
  %i.bd = select i1 %.not55.i.i, i64 %i.ba, i64 %i.bb
  %i.be = icmp samesign ugt i64 %i.bd, 1
  %.neg.i.i = zext i1 %i.be to i32
  %i.bf = or disjoint i32 %i.aj, %i.aq
  %i.bg = or disjoint i32 %i.bf, %i.ap
  %i.bh = or disjoint i32 %i.bg, %i.at
  %i.bi = or disjoint i32 %i.bh, %i.aw
  %i.bj = or disjoint i32 %i.bi, %i.az
  %i.bk = or disjoint i32 %i.bj, %i.bc
  %i.bl = add i32 %i.bk, %.neg.i.i
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.h, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread7.i
  %.0.i = phi i32 [ %i.bl, %bn_minimal_width.exit.thread7.i ], [ 0, %bn_minimal_width.exit.i ], [ 0, %bb.h ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.bm, align 8, !tbaa !657
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !654
  %i.bo = tail call i32 @bn_one_to_montgomery(ptr noundef %i.bn, ptr noundef %1, ptr noundef %2)
  %.not31 = icmp eq i32 %i.bo, 0
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %BN_num_bits.exit
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !655
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !654
  %i.br = tail call i32 @bn_usub_consttime(ptr noundef %i.bp, ptr noundef nonnull %i.a, ptr noundef %i.bq)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %BN_num_bits.exit, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %BN_num_bits.exit ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.br, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @BN_count_low_zero_bits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !185
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.bk, %bb.b ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %bb.b ]
  %.01518 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i64, ptr %i.e, align 8, !tbaa !94   ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  %.neg.i.i = sext i1 %i.g to i32                 ; 2 uses
  %i.h = xor i32 %.neg.i.i, -1
  %i.i = or i32 %.01518, %i.h
  %.mask.i = and i64 %i.f, 4294967295
  %i.j = icmp eq i64 %.mask.i, 0                  ; 2 uses
  %.neg.i.i.i = sext i1 %i.j to i64
  %i.k = select i1 %i.j, i64 32, i64 0
  %i.l = lshr i64 %i.f, 32
  %i.m = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.n = and i64 %i.m, %i.l
  %i.o = xor i64 %i.m, -1
  %i.p = and i64 %i.f, %i.o
  %i.q = or disjoint i64 %i.n, %i.p               ; 3 uses
  %.mask39.i = and i64 %i.q, 65535
  %i.r = icmp eq i64 %.mask39.i, 0                ; 2 uses
  %.neg.i.i34.i = sext i1 %i.r to i64
  %i.s = select i1 %i.r, i64 16, i64 0
  %i.t = or disjoint i64 %i.s, %i.k
  %i.u = lshr i64 %i.q, 16
  %i.v = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i34.i) #38, !srcloc !156 ; 2 uses
  %i.w = and i64 %i.u, %i.v
  %i.x = xor i64 %i.v, -1
  %i.y = and i64 %i.q, %i.x
  %i.z = or disjoint i64 %i.w, %i.y               ; 3 uses
  %.mask40.i = and i64 %i.z, 255
  %i.aa = icmp eq i64 %.mask40.i, 0               ; 2 uses
  %.neg.i.i35.i = sext i1 %i.aa to i64
  %i.ab = select i1 %i.aa, i64 8, i64 0
  %i.ac = or disjoint i64 %i.t, %i.ab
  %i.ad = lshr i64 %i.z, 8
  %i.ae = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i35.i) #38, !srcloc !156 ; 2 uses
  %i.af = and i64 %i.ad, %i.ae
  %i.ag = xor i64 %i.ae, -1
  %i.ah = and i64 %i.z, %i.ag
  %i.ai = or disjoint i64 %i.af, %i.ah            ; 3 uses
  %.mask41.i = and i64 %i.ai, 15
  %i.aj = icmp eq i64 %.mask41.i, 0               ; 2 uses
  %.neg.i.i36.i = sext i1 %i.aj to i64
  %i.ak = select i1 %i.aj, i64 4, i64 0
  %i.al = or disjoint i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.ai, 4
  %i.an = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i36.i) #38, !srcloc !156 ; 2 uses
  %i.ao = and i64 %i.am, %i.an
  %i.ap = xor i64 %i.an, -1
  %i.aq = and i64 %i.ai, %i.ap
  %i.ar = or disjoint i64 %i.ao, %i.aq            ; 3 uses
  %.mask42.i = and i64 %i.ar, 3
  %i.as = icmp eq i64 %.mask42.i, 0               ; 2 uses
  %.neg.i.i37.i = sext i1 %i.as to i64
  %i.at = select i1 %i.as, i64 2, i64 0
  %i.au = or disjoint i64 %i.al, %i.at
  %i.av = lshr i64 %i.ar, 2
  %i.aw = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i37.i) #38, !srcloc !156 ; 2 uses
  %i.ax = and i64 %i.av, %i.aw
  %i.ay = xor i64 %i.aw, -1
  %i.az = and i64 %i.ar, %i.ay
  %i.ba = or disjoint i64 %i.ax, %i.az
  %i.bb = and i64 %i.ba, 1
  %i.bc = or disjoint i64 %i.au, %i.bb
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.be = shl nsw i32 %indvars.iv.tr, 6
  %i.bf = or i32 %i.be, %i.bd
  %i.bg = xor i32 %i.bf, 1
  %i.bh = or i32 %.01518, %.neg.i.i
  %i.bi = xor i32 %i.bh, -1
  %i.bj = and i32 %i.bg, %i.bi
  %i.bk = or i32 %i.bj, %.019                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !658
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @bn_miller_rabin_iteration(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !291
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.b, label %BN_CTX_start.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !292
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !293  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !294
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !290
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.g, 0
  %i.k = mul i64 %i.g, 3
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %.not.i.i, i64 32, i64 %i.l    ; 4 uses
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = icmp samesign ugt i64 %i.m, 2305843009213693951
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !290
  %i.q = shl nuw i64 %i.m, 3
  %i.r = tail call ptr @OPENSSL_realloc(ptr noundef %i.p, i64 noundef %i.q) #36 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !290
  store i64 %i.m, ptr %i.h, align 8, !tbaa !294
  %.pre26.i.i = load i64, ptr %i.f, align 8, !tbaa !293
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.e ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store i64 %i.e, ptr %i.v, align 8, !tbaa !94
  %i.w = load i64, ptr %i.f, align 8, !tbaa !293
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !293
  br label %BN_CTX_start.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !291
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 41
  store i8 1, ptr %i.y, align 1, !tbaa !295
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.a, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.f
  %i.z = tail call ptr @BN_CTX_get(ptr noundef nonnull %4) ; 17 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread133, label %bb.g

bb.g:                                             ; preds = %BN_CTX_start.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !653
  %i.ae = tail call i32 @BN_mod_exp_mont_consttime(ptr noundef nonnull %i.z, ptr noundef %2, ptr noundef %i.ad, ptr noundef nonnull %i.ab, ptr noundef nonnull %4, ptr noundef %3)
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.thread133, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call range(i32 0, 2) i32 @BN_mod_mul_montgomery(ptr noundef nonnull %i.z, ptr noundef nonnull readonly %i.z, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %3, ptr noundef nonnull %4)
  %.not50 = icmp eq i32 %i.af, 0
  br i1 %.not50, label %.thread133, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !654 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !186 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !186 ; 5 uses
  %i.am = icmp slt i32 %i.aj, %i.al
  br i1 %i.am, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !185 ; 2 uses
  %i.ao = sext i32 %i.aj to i64                   ; 4 uses
  %wide.trip.count.i = sext i32 %i.al to i64      ; 2 uses
  %i.ap = sub nsw i64 %wide.trip.count.i, %i.ao   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.ap, -4                      ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.ao
  %invariant.gep = getelementptr [8 x i8], ptr %i.an, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi204 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !94
  %wide.load205 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !94
  %i.as = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.at = or <2 x i64> %wide.load205, %vec.phi204 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !659

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.at, %i.as
  %i.av = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ao, %.lr.ph.i ], [ %i.aq, %middle.block ]
  %.03135.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %middle.block ]
  br label %scalar.ph

.preheader.i:                                     ; preds = %scalar.ph, %middle.block, %bb.i
  %.031.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.av, %middle.block ], [ %i.bj, %scalar.ph ] ; 3 uses
  %i.aw = icmp slt i32 %i.al, %i.aj
  br i1 %i.aw, label %.lr.ph40.i, label %._crit_edge.i

.lr.ph40.i:                                       ; preds = %.preheader.i
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !185 ; 2 uses
  %i.ay = sext i32 %i.al to i64                   ; 4 uses
  %wide.trip.count54.i = sext i32 %i.aj to i64    ; 2 uses
  %i.az = sub nsw i64 %wide.trip.count54.i, %i.ay ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.az, 4
  br i1 %min.iters.check207, label %scalar.ph206.preheader, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph40.i
  %n.vec209 = and i64 %i.az, -4                   ; 3 uses
  %i.ba = add nsw i64 %n.vec209, %i.ay
  %i.bb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.031.lcssa.i, i64 0
  %invariant.gep460 = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %vec.phi212 = phi <2 x i64> [ %i.bb, %vector.ph208 ], [ %i.bd, %vector.body210 ]
  %vec.phi213 = phi <2 x i64> [ zeroinitializer, %vector.ph208 ], [ %i.be, %vector.body210 ]
  %gep461 = getelementptr [8 x i8], ptr %invariant.gep460, i64 %index211 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %gep461, i64 16
  %wide.load214 = load <2 x i64>, ptr %gep461, align 8, !tbaa !94
  %wide.load215 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !94
  %i.bd = or <2 x i64> %wide.load214, %vec.phi212 ; 2 uses
  %i.be = or <2 x i64> %wide.load215, %vec.phi213 ; 2 uses
  %index.next216 = add nuw i64 %index211, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.bf, label %middle.block217, label %vector.body210, !llvm.loop !660

middle.block217:                                  ; preds = %vector.body210
  %bin.rdx218 = or <2 x i64> %i.be, %i.bd
  %i.bg = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx218) ; 2 uses
  %cmp.n219 = icmp eq i64 %i.az, %n.vec209
  br i1 %cmp.n219, label %._crit_edge.i, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %.lr.ph40.i, %middle.block217
  %indvars.iv51.i.ph = phi i64 [ %i.ay, %.lr.ph40.i ], [ %i.ba, %middle.block217 ]
  %.138.i.ph = phi i64 [ %.031.lcssa.i, %.lr.ph40.i ], [ %i.bg, %middle.block217 ]
  br label %scalar.ph206

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.03135.i = phi i64 [ %i.bj, %scalar.ph ], [ %.03135.i.ph, %scalar.ph.preheader ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !94
  %i.bj = or i64 %i.bi, %.03135.i                 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %scalar.ph, !llvm.loop !661

._crit_edge.i:                                    ; preds = %scalar.ph206, %middle.block217, %.preheader.i
  %.1.lcssa.i = phi i64 [ %.031.lcssa.i, %.preheader.i ], [ %i.bg, %middle.block217 ], [ %i.ca, %scalar.ph206 ] ; 3 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.al) ; 3 uses
  %i.bk = icmp sgt i32 %..i, 0
  br i1 %i.bk, label %.lr.ph45.i, label %BN_equal_consttime.exit
end_hunk_1
begin_hunk_2_@_ZL21bn_mul_part_recursivePmPKmS1_iiiS_:bb.a
  br i1 %.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ac = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #38, !srcloc !156 ; 3 uses
  %i.ad = xor i64 %i.ac, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert383 = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat384 = shufflevector <2 x i64> %broadcast.splatinsert383, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !94
  %wide.load385.a = load <2 x i64>, ptr %i.af, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load386.a = load <2 x i64>, ptr %i.ag, align 8, !tbaa !94
  %wide.load387 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !94
  %i.ai = and <2 x i64> %wide.load, %broadcast.splat
  %i.aj = and <2 x i64> %wide.load385.a, %broadcast.splat
  %i.ak = and <2 x i64> %wide.load386.a, %broadcast.splat384
  %i.al = and <2 x i64> %wide.load387, %broadcast.splat384
  %i.am = or disjoint <2 x i64> %i.ak, %i.ai
  %i.an = or disjoint <2 x i64> %i.al, %i.aj
  store <2 x i64> %i.am, ptr %i.ae, align 8, !tbaa !94
  store <2 x i64> %i.an, ptr %i.af, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  br i1 %cmp.n, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.aw, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !94
  %i.at = and i64 %i.aq, %i.ac
  %i.au = and i64 %i.as, %i.ad
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !94
  %i.aw = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.ab
  br i1 %exitcond.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph, !llvm.loop !1447

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit:      ; preds = %scalar.ph, %middle.block, %bb.d
  %i.ax = getelementptr [8 x i8], ptr %6, i64 %i.q ; 8 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q ; 6 uses
  %i.az = sub nsw i32 %5, %3                      ; 3 uses
  %i.ba = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.u, ptr noundef nonnull readonly %i.ay, ptr noundef readonly %2, i32 noundef %5, i32 noundef %i.az)
  %i.bb = sub nsw i32 0, %i.az
  %i.bc = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.ax, ptr noundef readonly %2, ptr noundef nonnull readonly %i.ay, i32 noundef %5, i32 noundef %i.bb) ; 0 uses
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.be = add nsw i32 %i.bd, %5                   ; 4 uses
  %i.bf = sub nsw i64 0, %i.ba                    ; 2 uses
  %i.bg = sext i32 %i.be to i64                   ; 6 uses
  %.not.i.i184 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i184, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.bh = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bf) #38, !srcloc !156 ; 5 uses
  %i.bi = xor i64 %i.bh, -1                       ; 4 uses
  %min.iters.check390 = icmp ult i32 %i.be, 10
  br i1 %min.iters.check390, label %scalar.ph389.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i185
  %i.bj = add nsw i64 %i.bg, %i.q
  %i.bk = shl nsw i64 %i.bj, 3
  %scevgep = getelementptr i8, ptr %6, i64 %i.bk
  %i.bl = add nsw i64 %i.bg, %i.t
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep388 = getelementptr i8, ptr %6, i64 %i.bm
  %bound0 = icmp ult ptr %i.ax, %scevgep388
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph389.preheader, label %vector.ph391

vector.ph391:                                     ; preds = %vector.memcheck
  %n.vec392 = and i64 %i.bg, -4                   ; 3 uses
  %broadcast.splatinsert393 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splat394 = shufflevector <2 x i64> %broadcast.splatinsert393, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert395 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat396 = shufflevector <2 x i64> %broadcast.splatinsert395, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph391
  %index398 = phi i64 [ 0, %vector.ph391 ], [ %index.next403, %vector.body397 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index398 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load399.a = load <2 x i64>, ptr %i.bn, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %wide.load400.a = load <2 x i64>, ptr %i.bo, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index398 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load401.a = load <2 x i64>, ptr %i.bp, align 8, !tbaa !94, !alias.scope !1451
  %wide.load402 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !94, !alias.scope !1451
  %i.br = and <2 x i64> %wide.load399.a, %broadcast.splat394
  %i.bs = and <2 x i64> %wide.load400.a, %broadcast.splat394
  %i.bt = and <2 x i64> %wide.load401.a, %broadcast.splat396
  %i.bu = and <2 x i64> %wide.load402, %broadcast.splat396
  %i.bv = or disjoint <2 x i64> %i.bt, %i.br
  %i.bw = or disjoint <2 x i64> %i.bu, %i.bs
  store <2 x i64> %i.bv, ptr %i.bn, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  store <2 x i64> %i.bw, ptr %i.bo, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %index.next403 = add nuw i64 %index398, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next403, %n.vec392
  br i1 %i.bx, label %middle.block404, label %vector.body397, !llvm.loop !1453

middle.block404:                                  ; preds = %vector.body397
  %cmp.n405 = icmp eq i64 %n.vec392, %i.bg
  br i1 %cmp.n405, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph389.preheader

scalar.ph389.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i185, %middle.block404
  %.09.i.i186.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i185 ], [ %n.vec392, %middle.block404 ] ; 5 uses
  %i.by = and i32 %i.be, 1
  %lcmp.mod.not = icmp eq i32 %i.by, 0
  br i1 %lcmp.mod.not, label %scalar.ph389.prol.loopexit, label %scalar.ph389.prol

scalar.ph389.prol:                                ; preds = %scalar.ph389.preheader
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.09.i.i186.ph ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !94
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i186.ph
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !94
  %i.cd = and i64 %i.ca, %i.bh
  %i.ce = and i64 %i.cc, %i.bi
  %i.cf = or disjoint i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !94
  %i.cg = or disjoint i64 %.09.i.i186.ph, 1
  br label %scalar.ph389.prol.loopexit

scalar.ph389.prol.loopexit:                       ; preds = %scalar.ph389.prol, %scalar.ph389.preheader
  %.09.i.i186.unr = phi i64 [ %.09.i.i186.ph, %scalar.ph389.preheader ], [ %i.cg, %scalar.ph389.prol ]
  %i.ch = add nsw i64 %i.bg, -1
  %i.ci = icmp eq i64 %.09.i.i186.ph, %i.ch
  br i1 %i.ci, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph389

scalar.ph389:                                     ; preds = %scalar.ph389.prol.loopexit, %scalar.ph389
  %.09.i.i186 = phi i64 [ %i.cy, %scalar.ph389 ], [ %.09.i.i186.unr, %scalar.ph389.prol.loopexit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.09.i.i186 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !94
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i186
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !94
  %i.cn = and i64 %i.ck, %i.bh
  %i.co = and i64 %i.cm, %i.bi
  %i.cp = or disjoint i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !94
  %i.cq = add nuw i64 %.09.i.i186, 1              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cq ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !94
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cq
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !94
  %i.cv = and i64 %i.cs, %i.bh
  %i.cw = and i64 %i.cu, %i.bi
  %i.cx = or disjoint i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !94
  %i.cy = add nuw i64 %.09.i.i186, 2              ; 2 uses
  %exitcond.not.i.i187.1 = icmp eq i64 %i.cy, %i.bg
  br i1 %exitcond.not.i.i187.1, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph389, !llvm.loop !1454

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188:   ; preds = %scalar.ph389.prol.loopexit, %scalar.ph389, %middle.block404, %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.cz = xor i64 %i.bf, %i.aa
  %i.da = icmp eq i32 %3, 8
  br i1 %i.da, label %bb.e, label %_ZL14OPENSSL_memsetPvim.exit190

bb.e:                                             ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.ax)
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.dc = sext i32 %4 to i64
  %i.dd = sext i32 %5 to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.db, ptr noundef nonnull %i.r, i64 noundef %i.dc, ptr noundef nonnull %i.ay, i64 noundef %i.dd)
  %i.de = add i32 %5, %4                          ; 3 uses
  %i.df = icmp eq i32 %i.de, 16
  br i1 %i.df, label %.preheader42.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = sub i32 16, %i.de
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 3
  %i.dj = add i32 %i.de, %i.a
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dl, i8 0, i64 %i.di, i1 false)
  br label %.preheader42.i

_ZL14OPENSSL_memsetPvim.exit190:                  ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188
  %i.dm = shl nsw i32 %3, 2
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dn ; 4 uses
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.ax, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.do)
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.do)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.dq = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dp, i8 0, i64 %i.dq, i1 false)
  %i.dr = icmp slt i32 %4, 16
  %i.ds = icmp slt i32 %5, 16
  %or.cond = and i1 %i.dr, %i.ds
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZL14OPENSSL_memsetPvim.exit190
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  br label %bb.h

bb.g:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit190
  %i.dt = sext i32 %4 to i64
  %i.du = sext i32 %5 to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, i64 noundef %i.dt, ptr noundef nonnull %i.ay, i64 noundef %i.du)
  br label %.preheader42.i

bb.h:                                             ; preds = %.preheader, %bb.j
  %.0175 = phi i32 [ %i.dv, %bb.j ], [ %3, %.preheader ]
  %i.dv = sdiv i32 %.0175, 2                      ; 10 uses
  %or.cond182 = icmp slt i32 %i.dv, %invariant.smax
  br i1 %or.cond182, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dw = sub nsw i32 %4, %i.dv
  %i.dx = sub nsw i32 %5, %i.dv
  tail call fastcc void @_ZL21bn_mul_part_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ay, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef %i.dx, ptr noundef nonnull %i.do)
  br label %.preheader42.i

bb.j:                                             ; preds = %bb.h
  %i.dy = icmp eq i32 %i.dv, %4
  %i.dz = icmp eq i32 %i.dv, %5
  %or.cond183 = or i1 %i.dy, %i.dz
  br i1 %or.cond183, label %bb.k, label %bb.h, !llvm.loop !1455

bb.k:                                             ; preds = %bb.j
  %i.ea = sub nsw i32 %4, %i.dv
  %i.eb = sub nsw i32 %5, %i.dv
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ay, i32 noundef %i.dv, i32 noundef %i.ea, i32 noundef %i.eb, ptr noundef nonnull %i.do)
  br label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.i, %bb.k, %bb.g, %bb.e, %bb.f
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.gd, 0
  br i1 %.not3453.i, label %.preheader42.i191, label %.lr.ph59.i

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.gd, %.lr.ph.i ], [ %i.t, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.gb, %.lr.ph.i ], [ %i.ec, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.ga, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.gc, %.lr.ph.i ], [ %6, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.fy, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.ed = load i64, ptr %.02846.i, align 8, !tbaa !94
  %i.ee = load i64, ptr %.02647.i, align 8, !tbaa !94
  %i.ef = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ed, i64 %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  %i.eh = extractvalue { i64, i1 } %i.ef, 0
  %i.ei = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eh, i64 %.04044.i) ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  %i.ek = extractvalue { i64, i1 } %i.ei, 0
  %i.el = or i1 %i.eg, %i.ej
  %i.em = zext i1 %i.el to i64
  store i64 %i.ek, ptr %.03045.i, align 8, !tbaa !94
  %i.en = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !94
  %i.ep = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !94
  %i.er = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eo, i64 %i.eq) ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  %i.et = extractvalue { i64, i1 } %i.er, 0
  %i.eu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.et, i64 %i.em) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  %i.ew = extractvalue { i64, i1 } %i.eu, 0
  %i.ex = or i1 %i.es, %i.ev
  %i.ey = zext i1 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.ew, ptr %i.ez, align 8, !tbaa !94
  %i.fa = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !94
  %i.fc = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !94
  %i.fe = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fb, i64 %i.fd) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  %i.fg = extractvalue { i64, i1 } %i.fe, 0
  %i.fh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fg, i64 %i.ey) ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  %i.fj = extractvalue { i64, i1 } %i.fh, 0
  %i.fk = or i1 %i.ff, %i.fi
  %i.fl = zext i1 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.fj, ptr %i.fm, align 8, !tbaa !94
  %i.fn = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !94
  %i.fp = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !94
  %i.fr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fo, i64 %i.fq) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %i.fu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ft, i64 %i.fl) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 1
  %i.fw = extractvalue { i64, i1 } %i.fu, 0
  %i.fx = or i1 %i.fs, %i.fv
  %i.fy = zext i1 %i.fx to i64                    ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.fw, ptr %i.fz, align 8, !tbaa !94
  %i.ga = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.gd = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.gd, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !199

.lr.ph59.i:                                       ; preds = %.preheader.i, %.lr.ph59.i
  %.158.i = phi i64 [ %i.gr, %.lr.ph59.i ], [ %i.gd, %.preheader.i ]
  %.12757.i = phi ptr [ %i.gp, %.lr.ph59.i ], [ %i.gb, %.preheader.i ] ; 2 uses
  %.12956.i = phi ptr [ %i.go, %.lr.ph59.i ], [ %i.ga, %.preheader.i ] ; 2 uses
  %.13155.i = phi ptr [ %i.gq, %.lr.ph59.i ], [ %i.gc, %.preheader.i ] ; 2 uses
  %.14154.i = phi i64 [ %i.gn, %.lr.ph59.i ], [ %i.fy, %.preheader.i ]
  %i.ge = load i64, ptr %.12956.i, align 8, !tbaa !94
  %i.gf = load i64, ptr %.12757.i, align 8, !tbaa !94
  %i.gg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ge, i64 %i.gf) ; 2 uses
  %i.gh = extractvalue { i64, i1 } %i.gg, 1
  %i.gi = extractvalue { i64, i1 } %i.gg, 0
  %i.gj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gi, i64 %.14154.i) ; 2 uses
  %i.gk = extractvalue { i64, i1 } %i.gj, 1
  %i.gl = extractvalue { i64, i1 } %i.gj, 0
  %i.gm = or i1 %i.gh, %i.gk
  %i.gn = zext i1 %i.gm to i64                    ; 2 uses
  store i64 %i.gl, ptr %.13155.i, align 8, !tbaa !94
  %i.go = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.gr = add i64 %.158.i, -1                     ; 2 uses
  %.not34.i = icmp eq i64 %i.gr, 0
  br i1 %.not34.i, label %.preheader42.i191, label %.lr.ph59.i, !llvm.loop !200

.preheader42.i191:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.fy, %.preheader.i ], [ %i.gn, %.lr.ph59.i ] ; 2 uses
  %i.gs = shl i32 %3, 2                           ; 3 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr [8 x i8], ptr %6, i64 %i.gt ; 5 uses
  br label %.lr.ph.i193

.preheader.i200:                                  ; preds = %.lr.ph.i193
  %.not3453.i201 = icmp eq i64 %i.iv, 0
  br i1 %.not3453.i201, label %.preheader42.i216, label %.lr.ph59.i208

.lr.ph.i193:                                      ; preds = %.preheader42.i191, %.lr.ph.i193
  %.048.i194 = phi i64 [ %i.iv, %.lr.ph.i193 ], [ %i.t, %.preheader42.i191 ]
  %.02647.i195 = phi ptr [ %i.it, %.lr.ph.i193 ], [ %i.u, %.preheader42.i191 ] ; 5 uses
  %.02846.i196 = phi ptr [ %i.is, %.lr.ph.i193 ], [ %6, %.preheader42.i191 ] ; 5 uses
  %.03045.i197 = phi ptr [ %i.iu, %.lr.ph.i193 ], [ %i.gu, %.preheader42.i191 ] ; 5 uses
  %.04044.i198 = phi i64 [ %i.iq, %.lr.ph.i193 ], [ 0, %.preheader42.i191 ]
  %i.gv = load i64, ptr %.02846.i196, align 8, !tbaa !94
  %i.gw = load i64, ptr %.02647.i195, align 8, !tbaa !94
  %i.gx = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gv, i64 %i.gw) ; 2 uses
  %i.gy = extractvalue { i64, i1 } %i.gx, 1
  %i.gz = extractvalue { i64, i1 } %i.gx, 0
  %i.ha = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gz, i64 %.04044.i198) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 1
  %i.hc = extractvalue { i64, i1 } %i.ha, 0
  %i.hd = or i1 %i.gy, %i.hb
  %i.he = zext i1 %i.hd to i64
  store i64 %i.hc, ptr %.03045.i197, align 8, !tbaa !94
  %i.hf = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !94
  %i.hh = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !94
  %i.hj = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hg, i64 %i.hi) ; 2 uses
  %i.hk = extractvalue { i64, i1 } %i.hj, 1
  %i.hl = extractvalue { i64, i1 } %i.hj, 0
  %i.hm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hl, i64 %i.he) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 1
  %i.ho = extractvalue { i64, i1 } %i.hm, 0
  %i.hp = or i1 %i.hk, %i.hn
  %i.hq = zext i1 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 8
  store i64 %i.ho, ptr %i.hr, align 8, !tbaa !94
  %i.hs = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !94
  %i.hu = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !94
  %i.hw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ht, i64 %i.hv) ; 2 uses
  %i.hx = extractvalue { i64, i1 } %i.hw, 1
  %i.hy = extractvalue { i64, i1 } %i.hw, 0
  %i.hz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hy, i64 %i.hq) ; 2 uses
  %i.ia = extractvalue { i64, i1 } %i.hz, 1
  %i.ib = extractvalue { i64, i1 } %i.hz, 0
  %i.ic = or i1 %i.hx, %i.ia
  %i.id = zext i1 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 16
  store i64 %i.ib, ptr %i.ie, align 8, !tbaa !94
  %i.if = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 24
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !94
  %i.ih = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !94
  %i.ij = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ig, i64 %i.ii) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 1
  %i.il = extractvalue { i64, i1 } %i.ij, 0
  %i.im = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.il, i64 %i.id) ; 2 uses
  %i.in = extractvalue { i64, i1 } %i.im, 1
  %i.io = extractvalue { i64, i1 } %i.im, 0
  %i.ip = or i1 %i.ik, %i.in
  %i.iq = zext i1 %i.ip to i64                    ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 24
  store i64 %i.io, ptr %i.ir, align 8, !tbaa !94
  %i.is = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 32 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 32 ; 2 uses
  %i.iv = add i64 %.048.i194, -4                  ; 4 uses
  %.not.i199 = icmp ult i64 %i.iv, 4
  br i1 %.not.i199, label %.preheader.i200, label %.lr.ph.i193, !llvm.loop !219

.lr.ph59.i208:                                    ; preds = %.preheader.i200, %.lr.ph59.i208
  %.158.i209 = phi i64 [ %i.jj, %.lr.ph59.i208 ], [ %i.iv, %.preheader.i200 ]
  %.12757.i210 = phi ptr [ %i.jh, %.lr.ph59.i208 ], [ %i.it, %.preheader.i200 ] ; 2 uses
  %.12956.i211 = phi ptr [ %i.jg, %.lr.ph59.i208 ], [ %i.is, %.preheader.i200 ] ; 2 uses
  %.13155.i212 = phi ptr [ %i.ji, %.lr.ph59.i208 ], [ %i.iu, %.preheader.i200 ] ; 2 uses
  %.14154.i213 = phi i64 [ %i.jf, %.lr.ph59.i208 ], [ %i.iq, %.preheader.i200 ]
  %i.iw = load i64, ptr %.12956.i211, align 8, !tbaa !94
  %i.ix = load i64, ptr %.12757.i210, align 8, !tbaa !94
  %i.iy = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.iw, i64 %i.ix) ; 2 uses
  %i.iz = extractvalue { i64, i1 } %i.iy, 1
  %i.ja = extractvalue { i64, i1 } %i.iy, 0
  %i.jb = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ja, i64 %.14154.i213) ; 2 uses
  %i.jc = extractvalue { i64, i1 } %i.jb, 1
  %i.jd = extractvalue { i64, i1 } %i.jb, 0
  %i.je = or i1 %i.iz, %i.jc
  %i.jf = zext i1 %i.je to i64                    ; 2 uses
  store i64 %i.jd, ptr %.13155.i212, align 8, !tbaa !94
  %i.jg = getelementptr inbounds nuw i8, ptr %.12956.i211, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.12757.i210, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.13155.i212, i64 8
  %i.jj = add i64 %.158.i209, -1                  ; 2 uses
  %.not34.i214 = icmp eq i64 %i.jj, 0
  br i1 %.not34.i214, label %.preheader42.i216, label %.lr.ph59.i208, !llvm.loop !220

.preheader42.i216:                                ; preds = %.lr.ph59.i208, %.preheader.i200
  %.032.i215 = phi i64 [ %i.iq, %.preheader.i200 ], [ %i.jf, %.lr.ph59.i208 ]
  br label %.lr.ph.i218

.preheader.i225:                                  ; preds = %.lr.ph.i218
  %i.jk = sub nsw i64 %.032.i, %.032.i215
  %.not3453.i226 = icmp eq i64 %i.lh, 0
  br i1 %.not3453.i226, label %.lr.ph.i243, label %.lr.ph59.i233

.lr.ph.i218:                                      ; preds = %.preheader42.i216, %.lr.ph.i218
  %.048.i219 = phi i64 [ %i.lh, %.lr.ph.i218 ], [ %i.t, %.preheader42.i216 ]
  %.02647.i220 = phi ptr [ %i.lg, %.lr.ph.i218 ], [ %i.u, %.preheader42.i216 ] ; 6 uses
  %.02846.i221 = phi ptr [ %i.lf, %.lr.ph.i218 ], [ %6, %.preheader42.i216 ] ; 5 uses
  %.04044.i223 = phi i64 [ %i.le, %.lr.ph.i218 ], [ 0, %.preheader42.i216 ]
  %i.jl = load i64, ptr %.02846.i221, align 8, !tbaa !94
  %i.jm = load i64, ptr %.02647.i220, align 8, !tbaa !94
  %i.jn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jl, i64 %i.jm) ; 2 uses
  %i.jo = extractvalue { i64, i1 } %i.jn, 1
  %i.jp = extractvalue { i64, i1 } %i.jn, 0
  %i.jq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jp, i64 %.04044.i223) ; 2 uses
  %i.jr = extractvalue { i64, i1 } %i.jq, 1
  %i.js = extractvalue { i64, i1 } %i.jq, 0
  %i.jt = or i1 %i.jo, %i.jr
  %i.ju = zext i1 %i.jt to i64
  store i64 %i.js, ptr %.02647.i220, align 8, !tbaa !94
  %i.jv = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !94
  %i.jx = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 8 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !94
  %i.jz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jw, i64 %i.jy) ; 2 uses
  %i.ka = extractvalue { i64, i1 } %i.jz, 1
  %i.kb = extractvalue { i64, i1 } %i.jz, 0
  %i.kc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kb, i64 %i.ju) ; 2 uses
  %i.kd = extractvalue { i64, i1 } %i.kc, 1
  %i.ke = extractvalue { i64, i1 } %i.kc, 0
  %i.kf = or i1 %i.ka, %i.kd
  %i.kg = zext i1 %i.kf to i64
  store i64 %i.ke, ptr %i.jx, align 8, !tbaa !94
  %i.kh = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 16
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !94
  %i.kj = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 16 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !94
  %i.kl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ki, i64 %i.kk) ; 2 uses
  %i.km = extractvalue { i64, i1 } %i.kl, 1
  %i.kn = extractvalue { i64, i1 } %i.kl, 0
  %i.ko = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kn, i64 %i.kg) ; 2 uses
  %i.kp = extractvalue { i64, i1 } %i.ko, 1
  %i.kq = extractvalue { i64, i1 } %i.ko, 0
  %i.kr = or i1 %i.km, %i.kp
  %i.ks = zext i1 %i.kr to i64
  store i64 %i.kq, ptr %i.kj, align 8, !tbaa !94
  %i.kt = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 24
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !94
  %i.kv = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 24 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !94
  %i.kx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ku, i64 %i.kw) ; 2 uses
  %i.ky = extractvalue { i64, i1 } %i.kx, 1
  %i.kz = extractvalue { i64, i1 } %i.kx, 0
  %i.la = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kz, i64 %i.ks) ; 2 uses
  %i.lb = extractvalue { i64, i1 } %i.la, 1
  %i.lc = extractvalue { i64, i1 } %i.la, 0
  %i.ld = or i1 %i.ky, %i.lb
  %i.le = zext i1 %i.ld to i64                    ; 3 uses
  store i64 %i.lc, ptr %i.kv, align 8, !tbaa !94
  %i.lf = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 32 ; 2 uses
  %i.lg = getelementptr i8, ptr %.02647.i220, i64 32 ; 2 uses
  %i.lh = add i64 %.048.i219, -4                  ; 4 uses
  %.not.i224 = icmp ult i64 %i.lh, 4
  br i1 %.not.i224, label %.preheader.i225, label %.lr.ph.i218, !llvm.loop !199

.lr.ph59.i233:                                    ; preds = %.preheader.i225, %.lr.ph59.i233
  %.158.i234 = phi i64 [ %i.lu, %.lr.ph59.i233 ], [ %i.lh, %.preheader.i225 ]
  %.12757.i235 = phi ptr [ %i.lt, %.lr.ph59.i233 ], [ %i.lg, %.preheader.i225 ] ; 3 uses
  %.12956.i236 = phi ptr [ %i.ls, %.lr.ph59.i233 ], [ %i.lf, %.preheader.i225 ] ; 2 uses
  %.14154.i238 = phi i64 [ %i.lr, %.lr.ph59.i233 ], [ %i.le, %.preheader.i225 ]
  %i.li = load i64, ptr %.12956.i236, align 8, !tbaa !94
  %i.lj = load i64, ptr %.12757.i235, align 8, !tbaa !94
  %i.lk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.li, i64 %i.lj) ; 2 uses
  %i.ll = extractvalue { i64, i1 } %i.lk, 1
  %i.lm = extractvalue { i64, i1 } %i.lk, 0
  %i.ln = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lm, i64 %.14154.i238) ; 2 uses
  %i.lo = extractvalue { i64, i1 } %i.ln, 1
  %i.lp = extractvalue { i64, i1 } %i.ln, 0
  %i.lq = or i1 %i.ll, %i.lo
  %i.lr = zext i1 %i.lq to i64                    ; 2 uses
  store i64 %i.lp, ptr %.12757.i235, align 8, !tbaa !94
  %i.ls = getelementptr inbounds nuw i8, ptr %.12956.i236, i64 8
  %i.lt = getelementptr i8, ptr %.12757.i235, i64 8
  %i.lu = add i64 %.158.i234, -1                  ; 2 uses
  %.not34.i239 = icmp eq i64 %i.lu, 0
  br i1 %.not34.i239, label %.lr.ph.i243, label %.lr.ph59.i233, !llvm.loop !200

.lr.ph.i243:                                      ; preds = %.lr.ph59.i233, %.preheader.i225
  %.032.i240 = phi i64 [ %i.le, %.preheader.i225 ], [ %i.lr, %.lr.ph59.i233 ]
  %i.lv = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cz) #38 ; 5 uses
  %i.lw = xor i64 %i.lv, -1                       ; 4 uses
  %min.iters.check414 = icmp ult i32 %i.a, 10
  br i1 %min.iters.check414, label %scalar.ph413.preheader, label %vector.memcheck407

vector.memcheck407:                               ; preds = %.lr.ph.i243
  %i.lx = shl nuw nsw i64 %i.t, 4
  %scevgep408.a = getelementptr i8, ptr %6, i64 %i.lx
  %i.ly = add nuw nsw i64 %i.gt, %i.t
  %i.lz = shl nuw nsw i64 %i.ly, 3
  %scevgep409 = getelementptr i8, ptr %6, i64 %i.lz
  %bound0410 = icmp ult ptr %i.u, %scevgep409
  %bound1411 = icmp ult ptr %i.gu, %scevgep408.a
  %found.conflict412 = and i1 %bound0410, %bound1411
  br i1 %found.conflict412, label %scalar.ph413.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %vector.memcheck407
  %n.vec416 = and i64 %i.t, 2147483644            ; 3 uses
  %broadcast.splatinsert417 = insertelement <2 x i64> poison, i64 %i.lv, i64 0
  %broadcast.splat418 = shufflevector <2 x i64> %broadcast.splatinsert417, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert419 = insertelement <2 x i64> poison, i64 %i.lw, i64 0
  %broadcast.splat420 = shufflevector <2 x i64> %broadcast.splatinsert419, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph415
  %index422 = phi i64 [ 0, %vector.ph415 ], [ %index.next427, %vector.body421 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index422 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load423.a = load <2 x i64>, ptr %i.ma, align 8, !tbaa !94, !alias.scope !1456
  %wide.load424.a = load <2 x i64>, ptr %i.mb, align 8, !tbaa !94, !alias.scope !1456
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index422 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %wide.load425.a = load <2 x i64>, ptr %i.mc, align 8, !tbaa !94, !alias.scope !1459, !noalias !1456
  %wide.load426 = load <2 x i64>, ptr %i.md, align 8, !tbaa !94, !alias.scope !1459, !noalias !1456
  %i.me = and <2 x i64> %wide.load423.a, %broadcast.splat418
  %i.mf = and <2 x i64> %wide.load424.a, %broadcast.splat418
  %i.mg = and <2 x i64> %wide.load425.a, %broadcast.splat420
  %i.mh = and <2 x i64> %wide.load426, %broadcast.splat420
  %i.mi = or disjoint <2 x i64> %i.mg, %i.me
  %i.mj = or disjoint <2 x i64> %i.mh, %i.mf
  store <2 x i64> %i.mi, ptr %i.mc, align 8, !tbaa !94, !alias.scope !1459, !noalias !1456
  store <2 x i64> %i.mj, ptr %i.md, align 8, !tbaa !94, !alias.scope !1459, !noalias !1456
  %index.next427 = add nuw i64 %index422, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next427, %n.vec416
  br i1 %i.mk, label %middle.block428, label %vector.body421, !llvm.loop !1461

middle.block428:                                  ; preds = %vector.body421
  %cmp.n429 = icmp eq i64 %n.vec416, %i.t
  br i1 %cmp.n429, label %.preheader42.i244, label %scalar.ph413.preheader

scalar.ph413.preheader:                           ; preds = %vector.memcheck407, %.lr.ph.i243, %middle.block428
  %.09.i.ph = phi i64 [ 0, %vector.memcheck407 ], [ 0, %.lr.ph.i243 ], [ %n.vec416, %middle.block428 ]
  br label %scalar.ph413

scalar.ph413:                                     ; preds = %scalar.ph413, %scalar.ph413.preheader
  %.09.i = phi i64 [ %.09.i.ph, %scalar.ph413.preheader ], [ %i.na, %scalar.ph413 ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.09.i
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !94
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !94
  %i.mp = and i64 %i.mm, %i.lv
  %i.mq = and i64 %i.mo, %i.lw
  %i.mr = or disjoint i64 %i.mq, %i.mp
  store i64 %i.mr, ptr %i.mn, align 8, !tbaa !94
  %i.ms = or disjoint i64 %.09.i, 1               ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !94
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ms ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !94
  %i.mx = and i64 %i.mu, %i.lv
  %i.my = and i64 %i.mw, %i.lw
  %i.mz = or disjoint i64 %i.my, %i.mx
  store i64 %i.mz, ptr %i.mv, align 8, !tbaa !94
  %i.na = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.na, %i.t
  br i1 %exitcond.not.i.1, label %.preheader42.i244, label %scalar.ph413, !llvm.loop !1462

.preheader42.i244:                                ; preds = %scalar.ph413, %middle.block428
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  br label %.lr.ph.i246

.preheader.i253:                                  ; preds = %.lr.ph.i246
  %i.nc = add nuw nsw i64 %.032.i240, %.032.i
  %i.nd = and i64 %i.lv, %i.jk
  %i.ne = and i64 %i.nc, %i.lw
  %i.nf = or disjoint i64 %i.nd, %i.ne
  %.not3453.i254 = icmp eq i64 %i.pc, 0
  br i1 %.not3453.i254, label %bn_add_words.exit269, label %.lr.ph59.i261

.lr.ph.i246:                                      ; preds = %.preheader42.i244, %.lr.ph.i246
  %.048.i247 = phi i64 [ %i.pc, %.lr.ph.i246 ], [ %i.t, %.preheader42.i244 ]
  %.02647.i248 = phi ptr [ %i.pb, %.lr.ph.i246 ], [ %i.u, %.preheader42.i244 ] ; 5 uses
  %.02846.i249 = phi ptr [ %i.pa, %.lr.ph.i246 ], [ %i.nb, %.preheader42.i244 ] ; 6 uses
  %.04044.i251 = phi i64 [ %i.oz, %.lr.ph.i246 ], [ 0, %.preheader42.i244 ]
  %i.ng = load i64, ptr %.02846.i249, align 8, !tbaa !94
  %i.nh = load i64, ptr %.02647.i248, align 8, !tbaa !94
  %i.ni = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ng, i64 %i.nh) ; 2 uses
  %i.nj = extractvalue { i64, i1 } %i.ni, 1
  %i.nk = extractvalue { i64, i1 } %i.ni, 0
  %i.nl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nk, i64 %.04044.i251) ; 2 uses
  %i.nm = extractvalue { i64, i1 } %i.nl, 1
  %i.nn = extractvalue { i64, i1 } %i.nl, 0
  %i.no = or i1 %i.nj, %i.nm
  %i.np = zext i1 %i.no to i64
  store i64 %i.nn, ptr %.02846.i249, align 8, !tbaa !94
  %i.nq = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 8 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !94
  %i.ns = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !94
  %i.nu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nr, i64 %i.nt) ; 2 uses
  %i.nv = extractvalue { i64, i1 } %i.nu, 1
  %i.nw = extractvalue { i64, i1 } %i.nu, 0
  %i.nx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nw, i64 %i.np) ; 2 uses
  %i.ny = extractvalue { i64, i1 } %i.nx, 1
  %i.nz = extractvalue { i64, i1 } %i.nx, 0
  %i.oa = or i1 %i.nv, %i.ny
  %i.ob = zext i1 %i.oa to i64
  store i64 %i.nz, ptr %i.nq, align 8, !tbaa !94
  %i.oc = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 16 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !94
  %i.oe = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 16
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !94
  %i.og = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.od, i64 %i.of) ; 2 uses
  %i.oh = extractvalue { i64, i1 } %i.og, 1
  %i.oi = extractvalue { i64, i1 } %i.og, 0
  %i.oj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oi, i64 %i.ob) ; 2 uses
  %i.ok = extractvalue { i64, i1 } %i.oj, 1
  %i.ol = extractvalue { i64, i1 } %i.oj, 0
  %i.om = or i1 %i.oh, %i.ok
  %i.on = zext i1 %i.om to i64
  store i64 %i.ol, ptr %i.oc, align 8, !tbaa !94
  %i.oo = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 24 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !94
  %i.oq = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 24
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !94
  %i.os = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.op, i64 %i.or) ; 2 uses
  %i.ot = extractvalue { i64, i1 } %i.os, 1
  %i.ou = extractvalue { i64, i1 } %i.os, 0
  %i.ov = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ou, i64 %i.on) ; 2 uses
  %i.ow = extractvalue { i64, i1 } %i.ov, 1
  %i.ox = extractvalue { i64, i1 } %i.ov, 0
  %i.oy = or i1 %i.ot, %i.ow
  %i.oz = zext i1 %i.oy to i64                    ; 3 uses
  store i64 %i.ox, ptr %i.oo, align 8, !tbaa !94
  %i.pa = getelementptr i8, ptr %.02846.i249, i64 32 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 32 ; 2 uses
  %i.pc = add i64 %.048.i247, -4                  ; 4 uses
  %.not.i252 = icmp ult i64 %i.pc, 4
  br i1 %.not.i252, label %.preheader.i253, label %.lr.ph.i246, !llvm.loop !199

.lr.ph59.i261:                                    ; preds = %.preheader.i253, %.lr.ph59.i261
  %.158.i262 = phi i64 [ %i.pp, %.lr.ph59.i261 ], [ %i.pc, %.preheader.i253 ]
  %.12757.i263 = phi ptr [ %i.po, %.lr.ph59.i261 ], [ %i.pb, %.preheader.i253 ] ; 2 uses
  %.12956.i264 = phi ptr [ %i.pn, %.lr.ph59.i261 ], [ %i.pa, %.preheader.i253 ] ; 3 uses
  %.14154.i266 = phi i64 [ %i.pm, %.lr.ph59.i261 ], [ %i.oz, %.preheader.i253 ]
  %i.pd = load i64, ptr %.12956.i264, align 8, !tbaa !94
  %i.pe = load i64, ptr %.12757.i263, align 8, !tbaa !94
  %i.pf = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pd, i64 %i.pe) ; 2 uses
  %i.pg = extractvalue { i64, i1 } %i.pf, 1
  %i.ph = extractvalue { i64, i1 } %i.pf, 0
  %i.pi = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ph, i64 %.14154.i266) ; 2 uses
  %i.pj = extractvalue { i64, i1 } %i.pi, 1
  %i.pk = extractvalue { i64, i1 } %i.pi, 0
  %i.pl = or i1 %i.pg, %i.pj
  %i.pm = zext i1 %i.pl to i64                    ; 2 uses
  store i64 %i.pk, ptr %.12956.i264, align 8, !tbaa !94
  %i.pn = getelementptr i8, ptr %.12956.i264, i64 8
  %i.po = getelementptr inbounds nuw i8, ptr %.12757.i263, i64 8
  %i.pp = add i64 %.158.i262, -1                  ; 2 uses
  %.not34.i267 = icmp eq i64 %i.pp, 0
  br i1 %.not34.i267, label %bn_add_words.exit269, label %.lr.ph59.i261, !llvm.loop !200

bn_add_words.exit269:                             ; preds = %.lr.ph59.i261, %.preheader.i253
  %.032.i268 = phi i64 [ %i.oz, %.preheader.i253 ], [ %i.pm, %.lr.ph59.i261 ]
  %i.pq = mul nuw nsw i32 %3, 3                   ; 2 uses
  %7 = icmp slt i32 %i.pq, %i.gs
  br i1 %7, label %.lr.ph.preheader, label %_ZL14OPENSSL_memsetPvim.exit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit269
  %i.pr = add i64 %i.nf, %.032.i268               ; 2 uses
  %i.ps = zext nneg i32 %i.pq to i64              ; 3 uses
  %xtraiter454 = and i32 %3, 1
  %lcmp.mod455.not = icmp eq i32 %xtraiter454, 0
  br i1 %lcmp.mod455.not, label %.lr.ph.preheader.new, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ps ; 2 uses
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !94 ; 2 uses
  %i.pv = add i64 %i.pu, %i.pr                    ; 2 uses
  store i64 %i.pv, ptr %i.pt, align 8, !tbaa !94
  %i.pw = icmp ult i64 %i.pv, %i.pu
  %i.px = zext i1 %i.pw to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.ps, 1
  br label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.unr = phi i64 [ %i.ps, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0174295.unr = phi i64 [ %i.pr, %.lr.ph.preheader ], [ %i.px, %.lr.ph.prol ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0174295 = phi i64 [ %.0174295.unr, %.lr.ph.preheader.new ], [ %i.qi, %.lr.ph ]
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !94 ; 2 uses
  %i.qa = add i64 %i.pz, %.0174295                ; 2 uses
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !94
  %i.qb = icmp ult i64 %i.qa, %i.pz
  %i.qc = zext i1 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !94 ; 2 uses
  %i.qg = add i64 %i.qf, %i.qc                    ; 2 uses
  store i64 %i.qg, ptr %i.qe, align 8, !tbaa !94
  %i.qh = icmp ult i64 %i.qg, %i.qf
  %i.qi = zext i1 %i.qh to i64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %8 = trunc nuw i64 %indvars.iv.next.1 to i32
  %9 = icmp sgt i32 %i.gs, %8
  br i1 %9, label %.lr.ph, label %_ZL14OPENSSL_memsetPvim.exit, !llvm.loop !1463

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %.lr.ph, %bn_add_words.exit269, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -1073741824, -2147483648) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i32 %3, 8
  %i.b = or i32 %5, %4
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %3, 16
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %4, %3
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i32 %5, %3
  %i.h = sext i32 %i.g to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %0, ptr noundef %1, i64 noundef %i.f, ptr noundef %2, i64 noundef %i.h)
  %i.i = add nsw i32 %5, %4                       ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %_ZL14OPENSSL_memsetPvim.exit, label %.loopexit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.d
  %i.k = shl nsw i32 %3, 1
  %i.l = add nsw i32 %i.k, %4
  %i.m = add nsw i32 %i.l, %5
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = sub nsw i32 0, %i.i
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.r, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = lshr i32 %3, 1                           ; 10 uses
  %i.t = add nsw i32 %i.s, %4                     ; 3 uses
  %i.u = add nsw i32 %5, %i.s                     ; 3 uses
  %i.v = zext nneg i32 %i.s to i64                ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 4 uses
  %i.x = sub i32 0, %4
  %i.y = zext nneg i32 %3 to i64                  ; 16 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.y ; 19 uses
  %i.aa = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.z, ptr noundef readonly %1, ptr noundef readonly %i.w, i32 noundef %i.t, i32 noundef %i.x)
  %i.ab = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %6, ptr noundef readonly %i.w, ptr noundef readonly %1, i32 noundef %i.t, i32 noundef %4) ; 0 uses
  %i.ac = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %i.ad = add nsw i32 %i.ac, %i.t                 ; 3 uses
  %i.ae = sub nsw i64 0, %i.aa                    ; 2 uses
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ag = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ae) #38, !srcloc !156 ; 3 uses
  %i.ah = xor i64 %i.ag, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert354 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat355 = shufflevector <2 x i64> %broadcast.splatinsert354, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !tbaa !94
  %wide.load356 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load357 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !94
  %wide.load358 = load <2 x i64>, ptr %i.al, align 8, !tbaa !94
  %i.am = and <2 x i64> %wide.load, %broadcast.splat
  %i.an = and <2 x i64> %wide.load356, %broadcast.splat
  %i.ao = and <2 x i64> %wide.load357, %broadcast.splat355
  %i.ap = and <2 x i64> %wide.load358, %broadcast.splat355
  %i.aq = or disjoint <2 x i64> %i.ao, %i.am
  %i.ar = or disjoint <2 x i64> %i.ap, %i.an
  store <2 x i64> %i.aq, ptr %i.ai, align 8, !tbaa !94
  store <2 x i64> %i.ar, ptr %i.aj, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br i1 %cmp.n, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.ba, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !94
  %i.ax = and i64 %i.au, %i.ag
  %i.ay = and i64 %i.aw, %i.ah
  %i.az = or disjoint i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.at, align 8, !tbaa !94
  %i.ba = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.af
  br i1 %exitcond.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph, !llvm.loop !1465

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit:      ; preds = %scalar.ph, %middle.block, %bb.e
  %i.bb = getelementptr [8 x i8], ptr %6, i64 %i.v ; 8 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.bd = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.z, ptr noundef readonly %i.bc, ptr noundef readonly %2, i32 noundef %i.u, i32 noundef %5)
  %i.be = sub nsw i32 0, %5
  %i.bf = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %i.bb, ptr noundef readonly %2, ptr noundef readonly %i.bc, i32 noundef %i.u, i32 noundef %i.be) ; 0 uses
  %i.bg = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %i.bh = add nsw i32 %i.bg, %i.u                 ; 4 uses
  %i.bi = sub nsw i64 0, %i.bd                    ; 2 uses
  %i.bj = sext i32 %i.bh to i64                   ; 6 uses
  %.not.i.i171 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i171, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175, label %.lr.ph.i.i172

.lr.ph.i.i172:                                    ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.bk = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bi) #38, !srcloc !156 ; 5 uses
  %i.bl = xor i64 %i.bk, -1                       ; 4 uses
  %min.iters.check361 = icmp ult i32 %i.bh, 10
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i172
  %i.bm = add nsw i64 %i.v, %i.bj
  %i.bn = shl nsw i64 %i.bm, 3
  %scevgep = getelementptr i8, ptr %6, i64 %i.bn
  %i.bo = add nsw i64 %i.bj, %i.y
  %i.bp = shl nsw i64 %i.bo, 3
  %scevgep359 = getelementptr i8, ptr %6, i64 %i.bp
  %bound0 = icmp ult ptr %i.bb, %scevgep359
  %bound1 = icmp ult ptr %i.z, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck
  %n.vec363 = and i64 %i.bj, -4                   ; 3 uses
  %broadcast.splatinsert364 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat365 = shufflevector <2 x i64> %broadcast.splatinsert364, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert366 = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat367 = shufflevector <2 x i64> %broadcast.splatinsert366, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph362
  %index369 = phi i64 [ 0, %vector.ph362 ], [ %index.next374, %vector.body368 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index369 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load370 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !94, !alias.scope !1466, !noalias !1469
  %wide.load371 = load <2 x i64>, ptr %i.br, align 8, !tbaa !94, !alias.scope !1466, !noalias !1469
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index369 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load372 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !94, !alias.scope !1469
  %wide.load373 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !94, !alias.scope !1469
  %i.bu = and <2 x i64> %wide.load370, %broadcast.splat365
  %i.bv = and <2 x i64> %wide.load371, %broadcast.splat365
  %i.bw = and <2 x i64> %wide.load372, %broadcast.splat367
  %i.bx = and <2 x i64> %wide.load373, %broadcast.splat367
  %i.by = or disjoint <2 x i64> %i.bw, %i.bu
  %i.bz = or disjoint <2 x i64> %i.bx, %i.bv
  store <2 x i64> %i.by, ptr %i.bq, align 8, !tbaa !94, !alias.scope !1466, !noalias !1469
  store <2 x i64> %i.bz, ptr %i.br, align 8, !tbaa !94, !alias.scope !1466, !noalias !1469
  %index.next374 = add nuw i64 %index369, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next374, %n.vec363
  br i1 %i.ca, label %middle.block375, label %vector.body368, !llvm.loop !1471

middle.block375:                                  ; preds = %vector.body368
  %cmp.n376 = icmp eq i64 %n.vec363, %i.bj
  br i1 %cmp.n376, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i172, %middle.block375
  %.09.i.i173.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i172 ], [ %n.vec363, %middle.block375 ] ; 5 uses
  %i.cb = and i32 %i.bh, 1
  %lcmp.mod.not = icmp eq i32 %i.cb, 0
  br i1 %lcmp.mod.not, label %scalar.ph360.prol.loopexit, label %scalar.ph360.prol

scalar.ph360.prol:                                ; preds = %scalar.ph360.preheader
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.09.i.i173.ph ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !94
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.i173.ph
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !94
  %i.cg = and i64 %i.cd, %i.bk
  %i.ch = and i64 %i.cf, %i.bl
  %i.ci = or disjoint i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !94
  %i.cj = or disjoint i64 %.09.i.i173.ph, 1
  br label %scalar.ph360.prol.loopexit
end_hunk_2
