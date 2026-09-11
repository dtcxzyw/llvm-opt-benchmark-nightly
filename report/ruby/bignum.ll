Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@rb_big_mul_normal:bb.a

BIGNUM_DIGITS.exit16:                             ; preds = %bb.h, %bb.i
  %.0.i15 = phi ptr [ %i.ag, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !48
  %i.ak = and i64 %i.aj, 16384
  %.not.i17 = icmp eq i64 %i.ak, 0
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %BIGNUM_DIGITS.exit16
  %i.al = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit19

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit16
  %i.am = getelementptr i8, ptr %i.l, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit19

BIGNUM_DIGITS.exit19:                             ; preds = %bb.j, %bb.k
  %.0.i18 = phi ptr [ %i.al, %bb.j ], [ %i.an, %bb.k ] ; 3 uses
  %.not17.i = icmp eq i64 %i.s, 0
  br i1 %.not17.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %BIGNUM_DIGITS.exit19
  %i.ao = shl nuw i64 %i.s, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i13, i8 0, i64 %i.ao, i1 false), !tbaa !44
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %BIGNUM_DIGITS.exit19
  %.not22.i = icmp eq i64 %.0.i, 0
  %.not43.i.i = icmp eq i64 %.0.i10, 0
  %or.cond.i = or i1 %.not22.i, %.not43.i.i
  br i1 %or.cond.i, label %bary_mul_normal.exit, label %.lr.ph21.split.i.preheader

.lr.ph21.split.i.preheader:                       ; preds = %.preheader.i
  %xtraiter = and i64 %.0.i10, 1
  %i.ap = icmp eq i64 %.0.i10, 1
  %unroll_iter = and i64 %.0.i10, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod26 = trunc i64 %.0.i10 to i1
  br label %.lr.ph21.split.i

.lr.ph21.split.i:                                 ; preds = %.lr.ph21.split.i.preheader, %bary_muladd_1xN.exit.i
  %.01620.i = phi i64 [ %i.cq, %bary_muladd_1xN.exit.i ], [ 0, %.lr.ph21.split.i.preheader ] ; 4 uses
  %i.aq = getelementptr [4 x i8], ptr %.0.i13, i64 %.01620.i ; 4 uses
  %i.ar = sub i64 %i.s, %.01620.i                 ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %.0.i15, i64 %.01620.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !44 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bary_muladd_1xN.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph21.split.i
  %i.av = zext i32 %i.at to i64                   ; 3 uses
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.preheader.i.i.unr-lcssa:                         ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.i.preheader.i
  %.036.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.cg, %.preheader.i.i.unr-lcssa ] ; 2 uses
  %.03035.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %.131.i.i.1, %.preheader.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.aw = getelementptr [4 x i8], ptr %.0.i18, i64 %.036.i.i.epil.init
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !44
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw i64 %i.ay, %i.av
  %i.ba = add nuw i64 %i.az, %.03035.i.i.epil.init ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.epil, label %.preheader.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.bb = getelementptr [4 x i8], ptr %i.aq, i64 %.036.i.i.epil.init ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !44
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw i64 %i.ba, %i.bd                ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !44
  %i.bg = lshr i64 %i.be, 32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i.epil.preheader, %bb.l, %.preheader.i.i.unr-lcssa
  %.131.i.i.lcssa = phi i64 [ %.131.i.i.1, %.preheader.i.i.unr-lcssa ], [ %i.bg, %bb.l ], [ 0, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.bh = icmp uge i64 %.0.i10, %i.ar
  %i.bi = icmp eq i64 %.131.i.i.lcssa, 0
  %or.cond38.i.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond38.i.i, label %bary_muladd_1xN.exit.i, label %.lr.ph41.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i, %bb.o
  %.036.i.i = phi i64 [ %i.cg, %bb.o ], [ 0, %.lr.ph.i.preheader.i ] ; 4 uses
  %.03035.i.i = phi i64 [ %.131.i.i.1, %bb.o ], [ 0, %.lr.ph.i.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %.lr.ph.i.preheader.i ]
  %i.bj = getelementptr [4 x i8], ptr %.0.i18, i64 %.036.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !44
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.av
  %i.bn = add nuw i64 %i.bm, %.03035.i.i          ; 2 uses
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bo = getelementptr [4 x i8], ptr %i.aq, i64 %.036.i.i ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !44
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw i64 %i.bn, %i.bq                ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !44
  %i.bt = lshr i64 %i.br, 32
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.m, %.lr.ph.i.i
  %.131.i.i = phi i64 [ %i.bt, %bb.m ], [ 0, %.lr.ph.i.i ]
  %i.bu = or disjoint i64 %.036.i.i, 1            ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %.0.i18, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !44
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul nuw i64 %i.bx, %i.av
  %i.bz = add nuw i64 %i.by, %.131.i.i            ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.1
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %i.bu ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !44
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw i64 %i.bz, %i.cc                ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !44
  %i.cf = lshr i64 %i.cd, 32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.1
  %.131.i.i.1 = phi i64 [ %i.cf, %bb.n ], [ 0, %.lr.ph.i.i.1 ] ; 3 uses
  %i.cg = add nuw i64 %.036.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph41.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph41.i.i
  %.140.i.i = phi i64 [ %i.cn, %.lr.ph41.i.i ], [ %.0.i10, %.preheader.i.i ] ; 2 uses
  %.239.i.i = phi i64 [ %i.cm, %.lr.ph41.i.i ], [ %.131.i.i.lcssa, %.preheader.i.i ]
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.140.i.i ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !44
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add nuw nsw i64 %.239.i.i, %i.cj        ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !44
  %i.cm = lshr i64 %i.ck, 32                      ; 2 uses
  %i.cn = add nuw i64 %.140.i.i, 1                ; 2 uses
  %i.co = icmp uge i64 %i.cn, %i.ar
  %i.cp = icmp eq i64 %i.cm, 0
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i.i, label %bary_muladd_1xN.exit.i, label %.lr.ph41.i.i, !llvm.loop !1

bary_muladd_1xN.exit.i:                           ; preds = %.lr.ph41.i.i, %.preheader.i.i, %.lr.ph21.split.i
  %i.cq = add nuw i64 %.01620.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cq, %.0.i
  br i1 %exitcond.not.i, label %bary_mul_normal.exit, label %.lr.ph21.split.i, !llvm.loop !2

bary_mul_normal.exit:                             ; preds = %bary_muladd_1xN.exit.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !85
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.cs = load volatile i64, ptr %i.cr, align 8, !tbaa !46 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !86
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.cu = load volatile i64, ptr %i.ct, align 8, !tbaa !46 ; 0 uses
  ret i64 %i.x
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @bignew_1(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp ugt i64 %1, 511
  br i1 %i.c, label %big_embeddable_p.exit.thread, label %big_embeddable_p.exit

big_embeddable_p.exit:                            ; preds = %bb.a
  %i.d = shl nuw nsw i64 %1, 2
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 16)
  %spec.store.select.i.i = add nuw nsw i64 %i.e, 16 ; 2 uses
  %i.f = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.store.select.i.i) #23
  br i1 %i.f, label %bb.b, label %big_embeddable_p.exit.thread

bb.b:                                             ; preds = %big_embeddable_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  store volatile ptr %i.h, ptr %i.b, align 8, !tbaa !88
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef 16394, i32 noundef 0, i64 noundef %spec.store.select.i.i) #23 ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %.not = icmp eq i32 %2, 0
  %3 = load i64, ptr %i.j, align 8, !tbaa !48     ; 2 uses
  %4 = and i64 %3, -8193
  %masksel.i = select i1 %.not, i64 0, i64 8192
  %.sink.i = or disjoint i64 %4, %masksel.i       ; 2 uses
  store i64 %.sink.i, ptr %i.j, align 8, !tbaa !48
  %i.k = and i64 %3, 16384
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %.sink.i, -16744449
  %i.m = shl nuw nsw i64 %1, 15
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.j, align 8, !tbaa !48
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.j, i64 16
  store i64 %1, ptr %i.o, align 8, !tbaa !49
  br label %bb.e

big_embeddable_p.exit.thread:                     ; preds = %bb.a, %big_embeddable_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  store volatile ptr %i.q, ptr %i.a, align 8, !tbaa !88
  %.0..0..0..0..0..0..i22 = load volatile ptr, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i22, i64 noundef %0, i64 noundef 10, i32 noundef 0, i64 noundef 32) #23 ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %.not27 = icmp eq i32 %2, 0
  %5 = load i64, ptr %i.s, align 8, !tbaa !48
  %6 = and i64 %5, -8193
  %masksel.i23 = select i1 %.not27, i64 0, i64 8192
  %.sink.i24 = or disjoint i64 %6, %masksel.i23
  store i64 %.sink.i24, ptr %i.s, align 8, !tbaa !48
  %i.t = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 4) #24
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %i.v = getelementptr i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !49
  store i64 %1, ptr %i.u, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %big_embeddable_p.exit.thread
  %.0 = phi i64 [ %i.r, %big_embeddable_p.exit.thread ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %.0) #23
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc void @bary_mul_normal(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %.not17 = icmp eq i64 %1, 0
  br i1 %.not17, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.a, i1 false), !tbaa !44
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.a
  %.not22 = icmp eq i64 %3, 0
  %.not43.i = icmp eq i64 %5, 0
  %or.cond = or i1 %.not22, %.not43.i
  br i1 %or.cond, label %._crit_edge, label %.lr.ph21.split.preheader

.lr.ph21.split.preheader:                         ; preds = %.preheader
  %xtraiter = and i64 %5, 1
  %i.b = icmp eq i64 %5, 1
  %unroll_iter = and i64 %5, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = trunc i64 %5 to i1
  br label %.lr.ph21.split

.lr.ph21.split:                                   ; preds = %.lr.ph21.split.preheader, %bary_muladd_1xN.exit
  %.01620 = phi i64 [ %i.bc, %bary_muladd_1xN.exit ], [ 0, %.lr.ph21.split.preheader ] ; 4 uses
  %i.c = getelementptr [4 x i8], ptr %0, i64 %.01620 ; 4 uses
  %i.d = sub i64 %1, %.01620                      ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %2, i64 %.01620
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bary_muladd_1xN.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph21.split
  %i.h = zext i32 %i.f to i64                     ; 3 uses
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader.i.unr-lcssa:                           ; preds = %bb.e
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i.preheader
  %.036.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %.preheader.i.unr-lcssa ] ; 2 uses
  %.03035.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %.131.i.1, %.preheader.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.i = getelementptr [4 x i8], ptr %4, i64 %.036.i.epil.init
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw i64 %i.k, %i.h
  %i.m = add nuw i64 %i.l, %.03035.i.epil.init    ; 2 uses
  %.not.i.epil = icmp eq i64 %i.m, 0
  br i1 %.not.i.epil, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.n = getelementptr [4 x i8], ptr %i.c, i64 %.036.i.epil.init ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw i64 %i.m, %i.p                   ; 2 uses
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.n, align 4, !tbaa !44
  %i.s = lshr i64 %i.q, 32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %bb.b, %.preheader.i.unr-lcssa
  %.131.i.lcssa = phi i64 [ %.131.i.1, %.preheader.i.unr-lcssa ], [ %i.s, %bb.b ], [ 0, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.t = icmp uge i64 %5, %i.d
  %i.u = icmp eq i64 %.131.i.lcssa, 0
  %or.cond38.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond38.i, label %bary_muladd_1xN.exit, label %.lr.ph41.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.036.i = phi i64 [ %i.as, %bb.e ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.03035.i = phi i64 [ %.131.i.1, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.v = getelementptr [4 x i8], ptr %4, i64 %.036.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw i64 %i.x, %i.h
  %i.z = add nuw i64 %i.y, %.03035.i              ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr [4 x i8], ptr %i.c, i64 %.036.i ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !44
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw i64 %i.z, %i.ac                 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.aa, align 4, !tbaa !44
  %i.af = lshr i64 %i.ad, 32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.c, %.lr.ph.i
  %.131.i = phi i64 [ %i.af, %bb.c ], [ 0, %.lr.ph.i ]
  %i.ag = or disjoint i64 %.036.i, 1              ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %4, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !44
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw i64 %i.aj, %i.h
  %i.al = add nuw i64 %i.ak, %.131.i              ; 2 uses
  %.not.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.1
  %i.am = getelementptr [4 x i8], ptr %i.c, i64 %i.ag ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw i64 %i.al, %i.ao                ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !44
  %i.ar = lshr i64 %i.ap, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.1
  %.131.i.1 = phi i64 [ %i.ar, %bb.d ], [ 0, %.lr.ph.i.1 ] ; 3 uses
  %i.as = add nuw i64 %.036.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

.lr.ph41.i:                                       ; preds = %.preheader.i, %.lr.ph41.i
  %.140.i = phi i64 [ %i.az, %.lr.ph41.i ], [ %5, %.preheader.i ] ; 2 uses
  %.239.i = phi i64 [ %i.ay, %.lr.ph41.i ], [ %.131.i.lcssa, %.preheader.i ]
  %i.at = getelementptr [4 x i8], ptr %i.c, i64 %.140.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !44
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %.239.i, %i.av          ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !44
  %i.ay = lshr i64 %i.aw, 32                      ; 2 uses
  %i.az = add nuw i64 %.140.i, 1                  ; 2 uses
  %i.ba = icmp uge i64 %i.az, %i.d
  %i.bb = icmp eq i64 %i.ay, 0
  %or.cond.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond.i, label %bary_muladd_1xN.exit, label %.lr.ph41.i, !llvm.loop !1

bary_muladd_1xN.exit:                             ; preds = %.lr.ph41.i, %.preheader.i, %.lr.ph21.split
  %i.bc = add nuw i64 %.01620, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph21.split, !llvm.loop !2

._crit_edge:                                      ; preds = %bary_muladd_1xN.exit, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_sq_fast(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  %i.c = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %i.d, 15
  %i.i = and i64 %i.h, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = shl i64 %.0.i, 1                         ; 2 uses
  %i.k = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.l = tail call fastcc i64 @bignew_1(i64 noundef %i.k, i64 noundef %i.j, i32 noundef 1) ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = and i64 %i.n, 16384
  %.not.i6 = icmp eq i64 %i.o, 0
  br i1 %.not.i6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.p = getelementptr i8, ptr %i.m, i64 16
  br label %BIGNUM_DIGITS.exit

bb.e:                                             ; preds = %BIGNUM_LEN.exit
end_hunk_0
begin_hunk_1_@bary_unpack_internal:bb.a
  %i.cn = getelementptr i8, ptr %i.ch, i64 %4     ; 3 uses
  %.01112.i215.1 = getelementptr i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.co = icmp ult ptr %i.ch, %.01112.i215.1
  br i1 %i.co, label %.lr.ph.i216.1, label %bary_swap.exit220.1

.lr.ph.i216.1:                                    ; preds = %bary_swap.exit220, %.lr.ph.i216.1
  %.01114.i217.1 = phi ptr [ %.011.i219.1, %.lr.ph.i216.1 ], [ %.01112.i215.1, %bary_swap.exit220 ] ; 3 uses
  %.013.i218.1 = phi ptr [ %i.cr, %.lr.ph.i216.1 ], [ %i.ch, %bary_swap.exit220 ] ; 3 uses
  %i.cp = load i32, ptr %.013.i218.1, align 4, !tbaa !44
  %i.cq = load i32, ptr %.01114.i217.1, align 4, !tbaa !44
  store i32 %i.cq, ptr %.013.i218.1, align 4, !tbaa !44
  store i32 %i.cp, ptr %.01114.i217.1, align 4, !tbaa !44
  %i.cr = getelementptr i8, ptr %.013.i218.1, i64 4 ; 2 uses
  %.011.i219.1 = getelementptr i8, ptr %.01114.i217.1, i64 -4 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %.011.i219.1
  br i1 %i.cs, label %.lr.ph.i216.1, label %bary_swap.exit220.1, !llvm.loop !22

bary_swap.exit220.1:                              ; preds = %.lr.ph.i216.1, %bary_swap.exit220
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge363.loopexit.unr-lcssa, label %.lr.ph362, !llvm.loop !229

._crit_edge363.loopexit.unr-lcssa:                ; preds = %bary_swap.exit220.1
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod533.not, label %._crit_edge363, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph362.preheader
  %.0143360.epil.init = phi ptr [ %0, %.lr.ph362.preheader ], [ %i.cn, %._crit_edge363.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod534 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod534)
  %i.ct = getelementptr i8, ptr %.0143360.epil.init, i64 %4
  %.01112.i215.epil = getelementptr i8, ptr %i.ct, i64 -4 ; 2 uses
  %i.cu = icmp ult ptr %.0143360.epil.init, %.01112.i215.epil
  br i1 %i.cu, label %.lr.ph.i216.epil, label %._crit_edge363

.lr.ph.i216.epil:                                 ; preds = %.lr.ph362.epil.preheader, %.lr.ph.i216.epil
  %.01114.i217.epil = phi ptr [ %.011.i219.epil, %.lr.ph.i216.epil ], [ %.01112.i215.epil, %.lr.ph362.epil.preheader ] ; 3 uses
  %.013.i218.epil = phi ptr [ %i.cx, %.lr.ph.i216.epil ], [ %.0143360.epil.init, %.lr.ph362.epil.preheader ] ; 3 uses
  %i.cv = load i32, ptr %.013.i218.epil, align 4, !tbaa !44
  %i.cw = load i32, ptr %.01114.i217.epil, align 4, !tbaa !44
  store i32 %i.cw, ptr %.013.i218.epil, align 4, !tbaa !44
  store i32 %i.cv, ptr %.01114.i217.epil, align 4, !tbaa !44
  %i.cx = getelementptr i8, ptr %.013.i218.epil, i64 4 ; 2 uses
  %.011.i219.epil = getelementptr i8, ptr %.01114.i217.epil, i64 -4 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %.011.i219.epil
  br i1 %i.cy, label %.lr.ph.i216.epil, label %._crit_edge363, !llvm.loop !22

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph.i216.epil, %.lr.ph362.epil.preheader, %bb.ac
  %.not161 = icmp ne i32 %i.bx, 0
  %i.cz = icmp ult ptr %0, %i.b
  %or.cond370 = and i1 %.not161, %i.cz
  br i1 %or.cond370, label %.lr.ph366.preheader, label %.loopexit

bb.ad:                                            ; preds = %bary_swap.exit
  %.old369 = icmp ult ptr %0, %i.b
  br i1 %.old369, label %.lr.ph366.preheader, label %.loopexit

.lr.ph366.preheader:                              ; preds = %bb.ad, %._crit_edge363
  %i.da = shl i64 %1, 2
  %i.db = add i64 %i.da, %i.a
  %i.dc = add i64 %i.a, 4
  %i.dd = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %i.de = xor i64 %i.a, -1
  %i.df = add i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check471 = icmp ult i64 %i.df, 28
  br i1 %min.iters.check471, label %.lr.ph366.preheader516, label %vector.ph472

vector.ph472:                                     ; preds = %.lr.ph366.preheader
  %n.vec473 = and i64 %i.dh, 9223372036854775800  ; 3 uses
  %i.di = shl i64 %n.vec473, 2
  %i.dj = getelementptr i8, ptr %0, i64 %i.di
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph472
  %index475 = phi i64 [ 0, %vector.ph472 ], [ %index.next478, %vector.body474 ] ; 2 uses
  %i.dk = shl i64 %index475, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.dk ; 3 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load476.a = load <4 x i32>, ptr %next.gep, align 4, !tbaa !44
  %wide.load477 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !44
  %i.dm = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load476.a)
  %i.dn = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load477)
  store <4 x i32> %i.dm, ptr %next.gep, align 4, !tbaa !44
  store <4 x i32> %i.dn, ptr %i.dl, align 4, !tbaa !44
  %index.next478 = add nuw i64 %index475, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next478, %n.vec473
  br i1 %i.do, label %middle.block479, label %vector.body474, !llvm.loop !230

middle.block479:                                  ; preds = %vector.body474
  %cmp.n480 = icmp eq i64 %i.dh, %n.vec473
  br i1 %cmp.n480, label %.loopexit, label %.lr.ph366.preheader516

.lr.ph366.preheader516:                           ; preds = %.lr.ph366.preheader, %middle.block479
  %.0142364.ph = phi ptr [ %0, %.lr.ph366.preheader ], [ %i.dj, %middle.block479 ]
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader516, %.lr.ph366
  %.0142364 = phi ptr [ %i.dr, %.lr.ph366 ], [ %.0142364.ph, %.lr.ph366.preheader516 ] ; 3 uses
  %i.dp = load i32, ptr %.0142364, align 4, !tbaa !44
  %i.dq = tail call noundef i32 @llvm.bswap.i32(i32 %i.dp)
  store i32 %i.dq, ptr %.0142364, align 4, !tbaa !44
  %i.dr = getelementptr i8, ptr %.0142364, i64 4  ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.b
  br i1 %i.ds, label %.lr.ph366, label %.loopexit, !llvm.loop !231

.loopexit:                                        ; preds = %.lr.ph366, %middle.block479, %bb.ad, %.critedge, %._crit_edge363
  %i.dt = and i32 %6, 128
  %.not162 = icmp eq i32 %i.dt, 0
  %i.du = and i32 %6, 512
  %.not163 = icmp eq i32 %i.du, 0                 ; 2 uses
  br i1 %.not162, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  br i1 %.not163, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not27.i221 = icmp eq i64 %1, 0
  br i1 %.not27.i221, label %bary_2comp.exit, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.af, %bb.ag
  %.023.i223 = phi i64 [ %i.dx, %bb.ag ], [ 0, %bb.af ] ; 5 uses
  %i.dv = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !44 ; 2 uses
  %.not.i224 = icmp eq i32 %i.dw, 0
  br i1 %.not.i224, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i222
  %i.dx = add nuw i64 %.023.i223, 1               ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.dx, %1
  br i1 %exitcond.not.i231, label %bary_2comp.exit, label %.lr.ph.i222, !llvm.loop !8

bb.ah:                                            ; preds = %.lr.ph.i222
  %i.dy = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dz = sub i32 0, %i.dw
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !44
  %.124.i225 = add i64 %.023.i223, 1              ; 4 uses
  %i.ea = icmp ult i64 %.124.i225, %1
  br i1 %i.ea, label %.lr.ph26.i227.preheader, label %bary_2comp.exit

.lr.ph26.i227.preheader:                          ; preds = %bb.ah
  %i.eb = xor i64 %.023.i223, -1
  %i.ec = add i64 %1, %i.eb                       ; 3 uses
  %min.iters.check483 = icmp ult i64 %i.ec, 8
  br i1 %min.iters.check483, label %.lr.ph26.i227.preheader510, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph26.i227.preheader
  %n.vec485 = and i64 %i.ec, -8                   ; 3 uses
  %i.ed = add i64 %.124.i225, %n.vec485
  %i.ee = getelementptr [4 x i8], ptr %0, i64 %.124.i225
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph484
  %index487 = phi i64 [ 0, %vector.ph484 ], [ %index.next490, %vector.body486 ] ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.ee, i64 %index487 ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16     ; 2 uses
  %wide.load488.a = load <4 x i32>, ptr %i.ef, align 4, !tbaa !44
  %wide.load489 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !44
  %i.eh = xor <4 x i32> %wide.load488.a, splat (i32 -1)
  %i.ei = xor <4 x i32> %wide.load489, splat (i32 -1)
  store <4 x i32> %i.eh, ptr %i.ef, align 4, !tbaa !44
  store <4 x i32> %i.ei, ptr %i.eg, align 4, !tbaa !44
  %index.next490 = add nuw i64 %index487, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next490, %n.vec485
  br i1 %i.ej, label %middle.block491, label %vector.body486, !llvm.loop !232

middle.block491:                                  ; preds = %vector.body486
  %cmp.n492 = icmp eq i64 %i.ec, %n.vec485
  br i1 %cmp.n492, label %bary_2comp.exit, label %.lr.ph26.i227.preheader510

.lr.ph26.i227.preheader510:                       ; preds = %.lr.ph26.i227.preheader, %middle.block491
  %.125.i228.ph = phi i64 [ %.124.i225, %.lr.ph26.i227.preheader ], [ %i.ed, %middle.block491 ]
  br label %.lr.ph26.i227

.lr.ph26.i227:                                    ; preds = %.lr.ph26.i227.preheader510, %.lr.ph26.i227
  %.125.i228 = phi i64 [ %.1.i229, %.lr.ph26.i227 ], [ %.125.i228.ph, %.lr.ph26.i227.preheader510 ] ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %0, i64 %.125.i228 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !44
  %i.em = xor i32 %i.el, -1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !44
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !233

bb.ai:                                            ; preds = %bb.ae
  %i.en = getelementptr i8, ptr %i.b, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !44
  %.not165 = icmp sgt i32 %i.eo, -1
  br i1 %.not165, label %bary_2comp.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @bary_2comp(ptr noundef nonnull %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.ak:                                            ; preds = %.loopexit
  %i.ep = select i1 %.not163, i32 1, i32 -1
  br label %bary_2comp.exit

bb.al:                                            ; preds = %bb.x, %bb.a
  %.not315 = icmp eq i64 %1, 0                    ; 4 uses
  br i1 %.not315, label %.loopexit326, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = and i32 %6, 3
  %i.er = icmp eq i32 %i.eq, 1                    ; 3 uses
  %i.es = add i64 %3, -1
  %i.et = mul i64 %4, %i.es                       ; 2 uses
  %i.eu = sub i64 0, %4
  %.035.i = select i1 %i.er, i64 %i.et, i64 0
  %.034.i = select i1 %i.er, i64 %i.eu, i64 %4
  %.033.i = select i1 %i.er, i64 0, i64 %i.et
  %i.ev = trunc i64 %5 to i32
  %i.ew = and i32 %i.ev, 7                        ; 3 uses
  %i.ex = icmp ne i32 %i.ew, 0                    ; 3 uses
  %i.ey = lshr i64 %5, 3
  %i.ez = sub i64 %4, %i.ey
  %i.fa = sext i1 %i.ex to i64
  %spec.select.i = add i64 %i.ez, %i.fa           ; 2 uses
  %i.fb = and i32 %6, 112
  %i.fc = icmp eq i32 %i.fb, 16                   ; 2 uses
  %i.fd = add i64 %4, -1
  %.032.i = select i1 %i.fc, i64 %i.fd, i64 0
  %.0.i233 = select i1 %i.fc, i64 -1, i64 1
  %i.fe = getelementptr i8, ptr %2, i64 %.035.i
  %i.ff = getelementptr i8, ptr %2, i64 %.033.i
  %.not371 = icmp eq i64 %spec.select.i, 0
  %i.fg = lshr i32 255, %i.ew
  %i.fh = select i1 %i.ex, i32 %i.fg, i32 0
  %invariant.op = sub i32 8, %i.ew
  br label %bb.an

bb.an:                                            ; preds = %integer_unpack_push_bits.exit238, %bb.am
  %.0291 = phi ptr [ %0, %bb.am ], [ %.2293, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0286 = phi i64 [ 0, %bb.am ], [ %.2288, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0283 = phi i32 [ 0, %bb.am ], [ %.2285, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0137 = phi ptr [ %i.fe, %bb.am ], [ %i.hh, %integer_unpack_push_bits.exit238 ] ; 3 uses
  %i.fi = getelementptr i8, ptr %.0137, i64 %.032.i ; 2 uses
  br i1 %.not371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %integer_unpack_push_bits.exit
  %.0351 = phi ptr [ %i.gp, %integer_unpack_push_bits.exit ], [ %i.fi, %bb.an ] ; 2 uses
  %.0136350 = phi i64 [ %i.gq, %integer_unpack_push_bits.exit ], [ 0, %bb.an ]
  %.1284349 = phi i32 [ %.4, %integer_unpack_push_bits.exit ], [ %.0283, %bb.an ] ; 3 uses
  %.1287348 = phi i64 [ %.3289, %integer_unpack_push_bits.exit ], [ %.0286, %bb.an ]
  %.1292347 = phi ptr [ %.5296, %integer_unpack_push_bits.exit ], [ %.0291, %bb.an ] ; 3 uses
  %i.fj = load i8, ptr %.0351, align 1, !tbaa !49
  %i.fk = zext i8 %i.fj to i64
  %i.fl = zext nneg i32 %.1284349 to i64
  %i.fm = shl i64 %i.fk, %i.fl
  %i.fn = or i64 %i.fm, %.1287348                 ; 3 uses
  %i.fo = add i32 %.1284349, 8                    ; 4 uses
  %i.fp = icmp sgt i32 %i.fo, 31
  br i1 %i.fp, label %.lr.ph.i234.preheader, label %integer_unpack_push_bits.exit

.lr.ph.i234.preheader:                            ; preds = %.lr.ph
  %i.fq = add nsw i32 %.1284349, -24              ; 2 uses
  %i.fr = lshr i32 %i.fq, 5
  %i.fs = add nuw nsw i32 %i.fr, 1
  %xtraiter = and i32 %i.fs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol

.lr.ph.i234.prol:                                 ; preds = %.lr.ph.i234.preheader, %.lr.ph.i234.prol
  %.3.prol = phi i32 [ %i.fy, %.lr.ph.i234.prol ], [ %i.fo, %.lr.ph.i234.preheader ]
  %i.ft = phi ptr [ %i.fw, %.lr.ph.i234.prol ], [ %.1292347, %.lr.ph.i234.preheader ] ; 2 uses
  %i.fu = phi i64 [ %i.fx, %.lr.ph.i234.prol ], [ %i.fn, %.lr.ph.i234.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i234.prol ], [ 0, %.lr.ph.i234.preheader ]
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr i8, ptr %i.ft, i64 4      ; 3 uses
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !44
  %i.fx = lshr i64 %i.fu, 32                      ; 3 uses
  %i.fy = add nsw i32 %.3.prol, -32               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol, !llvm.loop !234

.lr.ph.i234.prol.loopexit:                        ; preds = %.lr.ph.i234.prol, %.lr.ph.i234.preheader
  %.3.unr = phi i32 [ %i.fo, %.lr.ph.i234.preheader ], [ %i.fy, %.lr.ph.i234.prol ]
  %.unr = phi ptr [ %.1292347, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.unr531 = phi i64 [ %i.fn, %.lr.ph.i234.preheader ], [ %i.fx, %.lr.ph.i234.prol ]
  %.lcssa526.unr = phi ptr [ poison, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.lcssa525.unr = phi i64 [ poison, %.lr.ph.i234.preheader ], [ %i.fx, %.lr.ph.i234.prol ]
  %.lcssa524.unr = phi i32 [ poison, %.lr.ph.i234.preheader ], [ %i.fy, %.lr.ph.i234.prol ]
  %i.fz = icmp ult i32 %i.fq, 224
  br i1 %i.fz, label %integer_unpack_push_bits.exit, label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234
  %.3 = phi i32 [ %i.gn, %.lr.ph.i234 ], [ %.3.unr, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.ga = phi ptr [ %i.gm, %.lr.ph.i234 ], [ %.unr, %.lr.ph.i234.prol.loopexit ] ; 9 uses
  %i.gb = phi i64 [ 0, %.lr.ph.i234 ], [ %.unr531, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = getelementptr i8, ptr %i.ga, i64 4
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !44
  %i.ge = lshr i64 %i.gb, 32
  %i.gf = trunc nuw i64 %i.ge to i32
  %i.gg = getelementptr i8, ptr %i.ga, i64 8
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !44
  %i.gh = getelementptr i8, ptr %i.ga, i64 12
  store i32 0, ptr %i.gg, align 4, !tbaa !44
  %i.gi = getelementptr i8, ptr %i.ga, i64 16
  store i32 0, ptr %i.gh, align 4, !tbaa !44
  %i.gj = getelementptr i8, ptr %i.ga, i64 20
  store i32 0, ptr %i.gi, align 4, !tbaa !44
  %i.gk = getelementptr i8, ptr %i.ga, i64 24
  store i32 0, ptr %i.gj, align 4, !tbaa !44
  %i.gl = getelementptr i8, ptr %i.ga, i64 28
  store i32 0, ptr %i.gk, align 4, !tbaa !44
  %i.gm = getelementptr i8, ptr %i.ga, i64 32     ; 2 uses
  store i32 0, ptr %i.gl, align 4, !tbaa !44
  %i.gn = add nsw i32 %.3, -256                   ; 2 uses
  %i.go = icmp sgt i32 %.3, 287
  br i1 %i.go, label %.lr.ph.i234, label %integer_unpack_push_bits.exit, !llvm.loop !235

integer_unpack_push_bits.exit:                    ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234, %.lr.ph
  %.5296 = phi ptr [ %.1292347, %.lr.ph ], [ %.lcssa526.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gm, %.lr.ph.i234 ] ; 2 uses
  %.3289 = phi i64 [ %i.fn, %.lr.ph ], [ %.lcssa525.unr, %.lr.ph.i234.prol.loopexit ], [ 0, %.lr.ph.i234 ] ; 2 uses
  %.4 = phi i32 [ %i.fo, %.lr.ph ], [ %.lcssa524.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gn, %.lr.ph.i234 ] ; 2 uses
  %i.gp = getelementptr i8, ptr %.0351, i64 %.0.i233 ; 2 uses
  %i.gq = add nuw i64 %.0136350, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !236

._crit_edge:                                      ; preds = %integer_unpack_push_bits.exit, %bb.an
  %.1292.lcssa = phi ptr [ %.0291, %bb.an ], [ %.5296, %integer_unpack_push_bits.exit ] ; 3 uses
  %.1287.lcssa = phi i64 [ %.0286, %bb.an ], [ %.3289, %integer_unpack_push_bits.exit ] ; 2 uses
  %.1284.lcssa = phi i32 [ %.0283, %bb.an ], [ %.4, %integer_unpack_push_bits.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.fi, %bb.an ], [ %i.gp, %integer_unpack_push_bits.exit ]
  br i1 %i.ex, label %bb.ao, label %integer_unpack_push_bits.exit238

bb.ao:                                            ; preds = %._crit_edge
  %i.gr = load i8, ptr %.0.lcssa, align 1, !tbaa !49
  %i.gs = zext i8 %i.gr to i32
  %i.gt = and i32 %i.fh, %i.gs
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = zext nneg i32 %.1284.lcssa to i64
  %i.gw = shl i64 %i.gu, %i.gv
  %i.gx = or i64 %i.gw, %.1287.lcssa              ; 2 uses
  %.reass = add i32 %.1284.lcssa, %invariant.op   ; 3 uses
  %i.gy = icmp sgt i32 %.reass, 31
  br i1 %i.gy, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238

.lr.ph.i235:                                      ; preds = %bb.ao, %.lr.ph.i235
  %.5 = phi i32 [ %i.he, %.lr.ph.i235 ], [ %.reass, %bb.ao ] ; 2 uses
  %i.gz = phi ptr [ %i.hc, %.lr.ph.i235 ], [ %.1292.lcssa, %bb.ao ] ; 2 uses
  %i.ha = phi i64 [ %i.hd, %.lr.ph.i235 ], [ %i.gx, %bb.ao ] ; 2 uses
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = getelementptr i8, ptr %i.gz, i64 4      ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !44
  %i.hd = lshr i64 %i.ha, 32                      ; 2 uses
  %i.he = add nsw i32 %.5, -32                    ; 2 uses
  %i.hf = icmp samesign ugt i32 %.5, 63
  br i1 %i.hf, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238, !llvm.loop !235

integer_unpack_push_bits.exit238:                 ; preds = %.lr.ph.i235, %bb.ao, %._crit_edge
  %.2293 = phi ptr [ %.1292.lcssa, %._crit_edge ], [ %.1292.lcssa, %bb.ao ], [ %i.hc, %.lr.ph.i235 ] ; 4 uses
  %.2288 = phi i64 [ %.1287.lcssa, %._crit_edge ], [ %i.gx, %bb.ao ], [ %i.hd, %.lr.ph.i235 ] ; 3 uses
  %.2285 = phi i32 [ %.1284.lcssa, %._crit_edge ], [ %.reass, %bb.ao ], [ %i.he, %.lr.ph.i235 ]
  %i.hg = icmp eq ptr %.0137, %i.ff
  %i.hh = getelementptr i8, ptr %.0137, i64 %.034.i
  br i1 %i.hg, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %integer_unpack_push_bits.exit238
  %.not173 = icmp eq i64 %.2288, 0
  br i1 %.not173, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hi = trunc i64 %.2288 to i32
  %i.hj = getelementptr i8, ptr %.2293, i64 4
  store i32 %i.hi, ptr %.2293, align 4, !tbaa !44
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3294 = phi ptr [ %.2293, %bb.ap ], [ %i.hj, %bb.aq ] ; 3 uses
  %i.hk = icmp ult ptr %.3294, %i.b
  br i1 %i.hk, label %.lr.ph357.preheader, label %.loopexit326

.lr.ph357.preheader:                              ; preds = %bb.ar
  %.3294394 = ptrtoaddr ptr %.3294 to i64
  %i.hl = shl i64 %1, 2
  %i.hm = add i64 %i.hl, %i.a
  %i.hn = xor i64 %.3294394, -1
  %i.ho = add i64 %i.hm, %i.hn
  %i.hp = and i64 %i.ho, -4
  %i.hq = add i64 %i.hp, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.3294, i8 0, i64 %i.hq, i1 false), !tbaa !44
  br label %.loopexit326

.loopexit326:                                     ; preds = %.lr.ph357.preheader, %bb.ar, %bb.al
  %i.hr = and i32 %6, 128
  %.not174 = icmp eq i32 %i.hr, 0
  br i1 %.not174, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit326
  %i.hs = and i32 %6, 512
  %.not175 = icmp eq i32 %i.hs, 0
  %i.ht = select i1 %.not175, i32 1, i32 -1
  br label %bary_2comp.exit

bb.at:                                            ; preds = %.loopexit326
  %.not176 = icmp eq i32 %7, 0
  %i.hu = and i32 %6, 512
  %.not177 = icmp eq i32 %i.hu, 0                 ; 2 uses
  br i1 %.not176, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = getelementptr i8, ptr %i.b, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !44 ; 2 uses
  br i1 %.not177, label %bb.av, label %._crit_edge396

bb.av:                                            ; preds = %bb.au
  %i.hx = sub i32 31, %7
  %i.hy = lshr i32 %i.hw, %i.hx
  %.not181 = icmp eq i32 %i.hy, 0
  br i1 %.not181, label %bary_2comp.exit, label %._crit_edge396

._crit_edge396:                                   ; preds = %bb.au, %bb.av
  %8 = sub i32 32, %7
  %9 = shl nsw i32 -1, %8
  %10 = getelementptr i8, ptr %i.b, i64 -4
  %11 = or i32 %i.hw, %9
  store i32 %11, ptr %10, align 4, !tbaa !44
  br label %bary_zero_p.exit

bb.aw:                                            ; preds = %bb.at
  br i1 %.not177, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax, %bb.ay
  %.0.i239 = phi i64 [ %i.hz, %bb.ay ], [ %1, %bb.ax ]
  %i.hz = add i64 %.0.i239, -1                    ; 3 uses
  %i.ia = getelementptr [4 x i8], ptr %0, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !44
  %.not.i240 = icmp eq i32 %i.ib, 0
  br i1 %.not.i240, label %bb.ay, label %bary_zero_p.exit

bb.ay:                                            ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.hz, 0
  br i1 %.not7.i, label %bary_2comp.exit, label %.preheader.i, !llvm.loop !14

bb.az:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ic = getelementptr i8, ptr %i.b, i64 -4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !44
  %.not178 = icmp sgt i32 %i.id, -1
  br i1 %.not178, label %bary_2comp.exit, label %.lr.ph.i242.preheader

bary_zero_p.exit:                                 ; preds = %.preheader.i, %._crit_edge396
  br i1 %.not315, label %bary_2comp.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %bary_zero_p.exit, %bb.ba
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader, %bb.bb
  %.023.i243 = phi i64 [ %i.ig, %bb.bb ], [ 0, %.lr.ph.i242.preheader ] ; 5 uses
  %i.ie = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !44 ; 2 uses
  %.not.i244 = icmp eq i32 %i.if, 0
  br i1 %.not.i244, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i242
  %i.ig = add nuw i64 %.023.i243, 1               ; 2 uses
  %exitcond.not.i251 = icmp eq i64 %i.ig, %1
  br i1 %exitcond.not.i251, label %bary_2comp.exit, label %.lr.ph.i242, !llvm.loop !8

bb.bc:                                            ; preds = %.lr.ph.i242
  %i.ih = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.ii = sub i32 0, %i.if
  store i32 %i.ii, ptr %i.ih, align 4, !tbaa !44
  %.124.i245 = add i64 %.023.i243, 1              ; 4 uses
  %i.ij = icmp ult i64 %.124.i245, %1
  br i1 %i.ij, label %.lr.ph26.i247.preheader, label %bary_2comp.exit

.lr.ph26.i247.preheader:                          ; preds = %bb.bc
  %i.ik = xor i64 %.023.i243, -1
  %i.il = add i64 %1, %i.ik                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.il, 8
  br i1 %min.iters.check, label %.lr.ph26.i247.preheader517, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i247.preheader
  %n.vec = and i64 %i.il, -8                      ; 3 uses
  %i.im = add i64 %.124.i245, %n.vec
  %i.in = getelementptr [4 x i8], ptr %0, i64 %.124.i245
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.io = getelementptr [4 x i8], ptr %i.in, i64 %index ; 3 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.io, align 4, !tbaa !44
  %wide.load469 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !44
  %i.iq = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.ir = xor <4 x i32> %wide.load469, splat (i32 -1)
  store <4 x i32> %i.iq, ptr %i.io, align 4, !tbaa !44
  store <4 x i32> %i.ir, ptr %i.ip, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.il, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i247.preheader517

.lr.ph26.i247.preheader517:                       ; preds = %.lr.ph26.i247.preheader, %middle.block
  %.125.i248.ph = phi i64 [ %.124.i245, %.lr.ph26.i247.preheader ], [ %i.im, %middle.block ]
  br label %.lr.ph26.i247

.lr.ph26.i247:                                    ; preds = %.lr.ph26.i247.preheader517, %.lr.ph26.i247
  %.125.i248 = phi i64 [ %.1.i249, %.lr.ph26.i247 ], [ %.125.i248.ph, %.lr.ph26.i247.preheader517 ] ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %0, i64 %.125.i248 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !44
  %i.iv = xor i32 %i.iu, -1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !44
  %.1.i249 = add nuw i64 %.125.i248, 1            ; 2 uses
  %exitcond31.not.i250 = icmp eq i64 %.1.i249, %1
  br i1 %exitcond31.not.i250, label %bary_2comp.exit, label %.lr.ph26.i247, !llvm.loop !238

bary_2comp.exit:                                  ; preds = %bb.ay, %bb.bb, %.lr.ph26.i247, %bb.ag, %.lr.ph26.i227, %bb.r, %.lr.ph26.i, %middle.block, %middle.block491, %middle.block503, %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.bc, %bb.af, %bb.ah, %bb.q, %bb.s, %integer_unpack_single_bdigit.exit, %integer_unpack_single_bdigit.exit201, %integer_unpack_single_bdigit.exit207, %bb.as, %bary_zero_p.exit, %bb.ak, %bb.aj, %bb.ai, %bb.w, %bb.u, %bb.v
  %.1139 = phi i32 [ 1, %bb.ai ], [ %i.ht, %bb.as ], [ %i.bq, %bb.w ], [ %.0.i205, %integer_unpack_single_bdigit.exit207 ], [ -1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.az ], [ -1, %bb.aj ], [ %i.ep, %bb.ak ], [ -1, %middle.block491 ], [ -1, %bary_zero_p.exit ], [ %spec.select317, %integer_unpack_single_bdigit.exit ], [ %spec.select319, %integer_unpack_single_bdigit.exit201 ], [ -2, %bb.ag ], [ -2, %bb.q ], [ -1, %bb.s ], [ -1, %bb.bb ], [ -2, %bb.af ], [ -1, %bb.ah ], [ -1, %middle.block503 ], [ -2, %bb.r ], [ -1, %bb.bc ], [ -1, %middle.block ], [ 1, %bb.av ], [ -2, %bb.ax ], [ 1, %bb.ba ], [ -1, %.lr.ph26.i247 ], [ -1, %.lr.ph26.i ], [ -1, %.lr.ph26.i227 ], [ -2, %bb.ay ]
  ret i32 %.1139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cstr_to_inum(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.a, ptr null
  %i.b = call i64 @rb_int_parse_cstr(ptr noundef nonnull %0, i64 noundef -1, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.c = icmp ne i64 %i.b, 4                      ; 2 uses
  %brmerge = or i1 %.not, %i.c
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_invalid_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.mux = select i1 %i.c, i64 %i.b, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.mux
}

; Function Attrs: noreturn
declare void @rb_invalid_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_int_parse_cstr(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !46
  %i.c = icmp ne ptr %2, null                     ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %str2big_scan_digits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not197 = icmp eq i64 %1, 0
  %i.d = and i32 %5, 1
  %.not198 = icmp eq i32 %i.d, 0
  %or.cond216 = or i1 %.not197, %.not198
  br i1 %or.cond216, label %bb.g, label %.preheader289

.preheader289:                                    ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1, !tbaa !49      ; 3 uses
  %i.f = sext i8 %i.e to i32
  %i.g = icmp ne i8 %i.e, 32
  %i.h = add nsw i32 %i.f, -14
  %i.i = icmp ult i32 %i.h, -5
  %narrow.i.not311 = select i1 %i.g, i1 %i.i, i1 false
  br i1 %narrow.i.not311, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader289
  %i.j = getelementptr i8, ptr %0, i64 %1
  %scevgep = getelementptr i8, ptr %i.j, i64 -1   ; 2 uses
  %or.cond416 = icmp eq i64 %1, 1
  br i1 %or.cond416, label %str2big_scan_digits.exit.thread, label %.lr.ph419

.lr.ph:                                           ; preds = %.lr.ph419
  %or.cond = icmp eq i64 %i.l, 1
  br i1 %or.cond, label %str2big_scan_digits.exit.thread, label %.lr.ph419, !llvm.loop !239

.lr.ph419:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.0252312418 = phi i64 [ %i.l, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %.0157313417 = phi ptr [ %i.k, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.k = getelementptr i8, ptr %.0157313417, i64 1 ; 3 uses
  %i.l = add i64 %.0252312418, -1                 ; 3 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !49    ; 3 uses
  %i.n = sext i8 %i.m to i32
  %i.o = icmp ne i8 %i.m, 32
  %i.p = add nsw i32 %i.n, -14
  %i.q = icmp ult i32 %i.p, -5
  %narrow.i.not = select i1 %i.o, i1 %i.q, i1 false
  br i1 %narrow.i.not, label %._crit_edge, label %.lr.ph, !llvm.loop !239

._crit_edge:                                      ; preds = %.lr.ph419, %.preheader289
  %.0252.lcssa = phi i64 [ %1, %.preheader289 ], [ %i.l, %.lr.ph419 ] ; 5 uses
  %.0157.lcssa = phi ptr [ %0, %.preheader289 ], [ %i.k, %.lr.ph419 ] ; 5 uses
  %.lcssa307 = phi i8 [ %i.e, %.preheader289 ], [ %i.m, %.lr.ph419 ]
  switch i8 %.lcssa307, label %bb.g [
    i8 43, label %bb.c
    i8 45, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = icmp eq i64 %.0252.lcssa, 1
  br i1 %or.cond3, label %str2big_scan_digits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %.0157.lcssa, i64 1
  %i.s = add i64 %.0252.lcssa, -1
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %or.cond5 = icmp eq i64 %.0252.lcssa, 1
  br i1 %or.cond5, label %str2big_scan_digits.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.0157.lcssa, i64 1
  %i.u = add i64 %.0252.lcssa, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %._crit_edge, %bb.b
  %.1253 = phi i64 [ %1, %bb.b ], [ %.0252.lcssa, %._crit_edge ], [ %i.s, %bb.d ], [ %i.u, %bb.f ] ; 28 uses
  %.not287 = phi i64 [ 8192, %bb.b ], [ 8192, %._crit_edge ], [ 8192, %bb.d ], [ 0, %bb.f ]
  %.not212 = phi i1 [ false, %bb.b ], [ false, %._crit_edge ], [ false, %bb.d ], [ true, %bb.f ]
  %.1167 = phi i32 [ 1, %bb.b ], [ 1, %._crit_edge ], [ 1, %bb.d ], [ 0, %bb.f ] ; 3 uses
  %.2 = phi ptr [ %0, %bb.b ], [ %.0157.lcssa, %._crit_edge ], [ %i.r, %bb.d ], [ %i.t, %bb.f ] ; 36 uses
  %i.v = icmp slt i32 %4, 1
  br i1 %i.v, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %.2, align 1, !tbaa !49
  %i.x = icmp eq i8 %i.w, 48
  %i.y = icmp sgt i64 %.1253, 1
  %or.cond7 = and i1 %i.x, %i.y
  br i1 %or.cond7, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %.2, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !49
  switch i8 %i.aa, label %.thread [
    i8 120, label %bb.j
    i8 88, label %bb.j
    i8 98, label %bb.l
    i8 66, label %bb.l
    i8 111, label %bb.n
    i8 79, label %bb.n
    i8 100, label %bb.p
    i8 68, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %or.cond9 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond9, label %str2big_scan_digits.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %.2, i64 2
  %i.ac = add nsw i64 %.1253, -2
  br label %.thread

bb.l:                                             ; preds = %bb.i, %bb.i
  %or.cond11 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond11, label %str2big_scan_digits.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.2, i64 2
  %i.ae = add nsw i64 %.1253, -2
  br label %.thread

bb.n:                                             ; preds = %bb.i, %bb.i
  %or.cond13 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond13, label %str2big_scan_digits.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr i8, ptr %.2, i64 2
  %i.ag = add nsw i64 %.1253, -2
  br label %.thread

bb.p:                                             ; preds = %bb.i, %bb.i
  %or.cond15 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond15, label %str2big_scan_digits.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %.2, i64 2
  %i.ai = add nsw i64 %.1253, -2
  br label %.thread

bb.r:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %4, -1
  %i.ak = sub i32 0, %4
  %spec.select222 = select i1 %i.aj, i32 %i.ak, i32 10
  br label %bb.ak

bb.s:                                             ; preds = %bb.g
  %i.al = icmp eq i64 %.1253, 1
  %i.am = and i32 %5, 4
  %.not200 = icmp eq i32 %i.am, 0
  %or.cond217 = or i1 %.not200, %i.al
  br i1 %or.cond217, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i32 %4, label %bb.ak [
    i32 2, label %bb.u
    i32 8, label %bb.y
    i32 10, label %bb.ac
    i32 16, label %bb.ag
  ]

bb.u:                                             ; preds = %bb.t
  %i.an = load i8, ptr %.2, align 1, !tbaa !49
  %i.ao = icmp eq i8 %i.an, 48
  br i1 %i.ao, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr i8, ptr %.2, i64 1
end_hunk_1
