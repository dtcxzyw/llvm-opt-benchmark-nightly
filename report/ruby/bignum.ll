inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@rb_big_mul_normal:bb.a

BIGNUM_DIGITS.exit16:                             ; preds = %bb.h, %bb.i
  %.0.i15 = phi ptr [ %i.ag, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !13
  %i.ak = and i64 %i.aj, 16384
  %.not.i17 = icmp eq i64 %i.ak, 0
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %BIGNUM_DIGITS.exit16
  %i.al = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit19

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit16
  %i.am = getelementptr i8, ptr %i.l, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit19

BIGNUM_DIGITS.exit19:                             ; preds = %bb.j, %bb.k
  %.0.i18 = phi ptr [ %i.al, %bb.j ], [ %i.an, %bb.k ] ; 3 uses
  %.not17.i = icmp eq i64 %i.s, 0
  br i1 %.not17.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %BIGNUM_DIGITS.exit19
  %i.ao = shl nuw i64 %i.s, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i13, i8 0, i64 %i.ao, i1 false), !tbaa !7
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7  ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bary_muladd_1xN.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph21.split.i
  %i.av = zext i32 %i.at to i64                   ; 3 uses
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.preheader.i.i.unr-lcssa:                         ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.i.preheader.i
  %.03036.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.cg, %.preheader.i.i.unr-lcssa ] ; 2 uses
  %.03135.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %.132.i.i.1, %.preheader.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.aw = getelementptr [4 x i8], ptr %.0.i18, i64 %.03036.i.i.epil.init
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw i64 %i.ay, %i.av
  %i.ba = add nuw i64 %i.az, %.03135.i.i.epil.init ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.epil, label %.preheader.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.bb = getelementptr [4 x i8], ptr %i.aq, i64 %.03036.i.i.epil.init ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw i64 %i.ba, %i.bd                ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !7
  %i.bg = lshr i64 %i.be, 32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i.epil.preheader, %bb.l, %.preheader.i.i.unr-lcssa
  %.132.i.i.lcssa = phi i64 [ %.132.i.i.1, %.preheader.i.i.unr-lcssa ], [ %i.bg, %bb.l ], [ 0, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.bh = icmp uge i64 %.0.i10, %i.ar
  %i.bi = icmp eq i64 %.132.i.i.lcssa, 0
  %or.cond38.i.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond38.i.i, label %bary_muladd_1xN.exit.i, label %.lr.ph41.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i, %bb.o
  %.03036.i.i = phi i64 [ %i.cg, %bb.o ], [ 0, %.lr.ph.i.preheader.i ] ; 4 uses
  %.03135.i.i = phi i64 [ %.132.i.i.1, %bb.o ], [ 0, %.lr.ph.i.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %.lr.ph.i.preheader.i ]
  %i.bj = getelementptr [4 x i8], ptr %.0.i18, i64 %.03036.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.av
  %i.bn = add nuw i64 %i.bm, %.03135.i.i          ; 2 uses
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bo = getelementptr [4 x i8], ptr %i.aq, i64 %.03036.i.i ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw i64 %i.bn, %i.bq                ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !7
  %i.bt = lshr i64 %i.br, 32
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.m, %.lr.ph.i.i
  %.132.i.i = phi i64 [ %i.bt, %bb.m ], [ 0, %.lr.ph.i.i ]
  %i.bu = or disjoint i64 %.03036.i.i, 1          ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %.0.i18, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul nuw i64 %i.bx, %i.av
  %i.bz = add nuw i64 %i.by, %.132.i.i            ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.1
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %i.bu ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw i64 %i.bz, %i.cc                ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !7
  %i.cf = lshr i64 %i.cd, 32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.1
  %.132.i.i.1 = phi i64 [ %i.cf, %bb.n ], [ 0, %.lr.ph.i.i.1 ] ; 3 uses
  %i.cg = add nuw i64 %.03036.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !16

.lr.ph41.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph41.i.i
  %.140.i.i = phi i64 [ %i.cn, %.lr.ph41.i.i ], [ %.0.i10, %.preheader.i.i ] ; 2 uses
  %.239.i.i = phi i64 [ %i.cm, %.lr.ph41.i.i ], [ %.132.i.i.lcssa, %.preheader.i.i ]
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.140.i.i ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add nuw nsw i64 %.239.i.i, %i.cj        ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !7
  %i.cm = lshr i64 %i.ck, 32                      ; 2 uses
  %i.cn = add nuw i64 %.140.i.i, 1                ; 2 uses
  %i.co = icmp uge i64 %i.cn, %i.ar
  %i.cp = icmp eq i64 %i.cm, 0
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i.i, label %bary_muladd_1xN.exit.i, label %.lr.ph41.i.i, !llvm.loop !18

bary_muladd_1xN.exit.i:                           ; preds = %.lr.ph41.i.i, %.preheader.i.i, %.lr.ph21.split.i
  %i.cq = add nuw i64 %.01620.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cq, %.0.i
  br i1 %exitcond.not.i, label %bary_mul_normal.exit, label %.lr.ph21.split.i, !llvm.loop !19

bary_mul_normal.exit:                             ; preds = %bary_muladd_1xN.exit.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !23
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.cs = load volatile i64, ptr %i.cr, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !24
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.cu = load volatile i64, ptr %i.ct, align 8, !tbaa !11 ; 0 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  store volatile ptr %i.h, ptr %i.b, align 8, !tbaa !25
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef 16394, i32 noundef 0, i64 noundef %spec.store.select.i.i) #23 ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %.not = icmp eq i32 %2, 0
  %3 = load i64, ptr %i.j, align 8, !tbaa !13     ; 2 uses
  %4 = and i64 %3, -8193
  %masksel.i = select i1 %.not, i64 0, i64 8192
  %.sink.i = or disjoint i64 %4, %masksel.i       ; 2 uses
  store i64 %.sink.i, ptr %i.j, align 8, !tbaa !13
  %i.k = and i64 %3, 16384
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %.sink.i, -16744449
  %i.m = shl nuw nsw i64 %1, 15
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.j, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.j, i64 16
  store i64 %1, ptr %i.o, align 8, !tbaa !15
  br label %bb.e

big_embeddable_p.exit.thread:                     ; preds = %bb.a, %big_embeddable_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  store volatile ptr %i.q, ptr %i.a, align 8, !tbaa !25
  %.0..0..0..0..0..0..i22 = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i22, i64 noundef %0, i64 noundef 10, i32 noundef 0, i64 noundef 32) #23 ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %.not27 = icmp eq i32 %2, 0
  %5 = load i64, ptr %i.s, align 8, !tbaa !13
  %6 = and i64 %5, -8193
  %masksel.i23 = select i1 %.not27, i64 0, i64 8192
  %.sink.i24 = or disjoint i64 %6, %masksel.i23
  store i64 %.sink.i24, ptr %i.s, align 8, !tbaa !13
  %i.t = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 4) #24
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %i.v = getelementptr i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !15
  store i64 %1, ptr %i.u, align 8, !tbaa !15
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.a, i1 false), !tbaa !7
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
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7    ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bary_muladd_1xN.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph21.split
  %i.h = zext i32 %i.f to i64                     ; 3 uses
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader.i.unr-lcssa:                           ; preds = %bb.e
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i.preheader
  %.03036.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %.preheader.i.unr-lcssa ] ; 2 uses
  %.03135.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %.132.i.1, %.preheader.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.i = getelementptr [4 x i8], ptr %4, i64 %.03036.i.epil.init
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw i64 %i.k, %i.h
  %i.m = add nuw i64 %i.l, %.03135.i.epil.init    ; 2 uses
  %.not.i.epil = icmp eq i64 %i.m, 0
  br i1 %.not.i.epil, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.n = getelementptr [4 x i8], ptr %i.c, i64 %.03036.i.epil.init ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw i64 %i.m, %i.p                   ; 2 uses
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.n, align 4, !tbaa !7
  %i.s = lshr i64 %i.q, 32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %bb.b, %.preheader.i.unr-lcssa
  %.132.i.lcssa = phi i64 [ %.132.i.1, %.preheader.i.unr-lcssa ], [ %i.s, %bb.b ], [ 0, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.t = icmp uge i64 %5, %i.d
  %i.u = icmp eq i64 %.132.i.lcssa, 0
  %or.cond38.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond38.i, label %bary_muladd_1xN.exit, label %.lr.ph41.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.03036.i = phi i64 [ %i.as, %bb.e ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.03135.i = phi i64 [ %.132.i.1, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.v = getelementptr [4 x i8], ptr %4, i64 %.03036.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw i64 %i.x, %i.h
  %i.z = add nuw i64 %i.y, %.03135.i              ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr [4 x i8], ptr %i.c, i64 %.03036.i ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw i64 %i.z, %i.ac                 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.aa, align 4, !tbaa !7
  %i.af = lshr i64 %i.ad, 32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.c, %.lr.ph.i
  %.132.i = phi i64 [ %i.af, %bb.c ], [ 0, %.lr.ph.i ]
  %i.ag = or disjoint i64 %.03036.i, 1            ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %4, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw i64 %i.aj, %i.h
  %i.al = add nuw i64 %i.ak, %.132.i              ; 2 uses
  %.not.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.1
  %i.am = getelementptr [4 x i8], ptr %i.c, i64 %i.ag ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw i64 %i.al, %i.ao                ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !7
  %i.ar = lshr i64 %i.ap, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.1
  %.132.i.1 = phi i64 [ %i.ar, %bb.d ], [ 0, %.lr.ph.i.1 ] ; 3 uses
  %i.as = add nuw i64 %.03036.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !16

.lr.ph41.i:                                       ; preds = %.preheader.i, %.lr.ph41.i
  %.140.i = phi i64 [ %i.az, %.lr.ph41.i ], [ %5, %.preheader.i ] ; 2 uses
  %.239.i = phi i64 [ %i.ay, %.lr.ph41.i ], [ %.132.i.lcssa, %.preheader.i ]
  %i.at = getelementptr [4 x i8], ptr %i.c, i64 %.140.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %.239.i, %i.av          ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !7
  %i.ay = lshr i64 %i.aw, 32                      ; 2 uses
  %i.az = add nuw i64 %.140.i, 1                  ; 2 uses
  %i.ba = icmp uge i64 %i.az, %i.d
  %i.bb = icmp eq i64 %i.ay, 0
  %or.cond.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond.i, label %bary_muladd_1xN.exit, label %.lr.ph41.i, !llvm.loop !18

bary_muladd_1xN.exit:                             ; preds = %.lr.ph41.i, %.preheader.i, %.lr.ph21.split
  %i.bc = add nuw i64 %.01620, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph21.split, !llvm.loop !19

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
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %i.d, 15
  %i.i = and i64 %i.h, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = shl i64 %.0.i, 1                         ; 2 uses
  %i.k = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.l = tail call fastcc i64 @bignew_1(i64 noundef %i.k, i64 noundef %i.j, i32 noundef 1) ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = and i64 %i.n, 16384
  %.not.i6 = icmp eq i64 %i.o, 0
  br i1 %.not.i6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.p = getelementptr i8, ptr %i.m, i64 16
  br label %BIGNUM_DIGITS.exit

bb.e:                                             ; preds = %BIGNUM_LEN.exit
end_hunk_0
begin_hunk_1_@bary_unpack_internal:bb.a
  %index504 = phi i64 [ 0, %vector.ph500 ], [ %index.next507, %vector.body503 ] ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %index504 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16     ; 2 uses
  %wide.load505 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !7
  %wide.load506 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !7
  %i.bc = xor <4 x i32> %wide.load505, splat (i32 -1)
  %i.bd = xor <4 x i32> %wide.load506, splat (i32 -1)
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !7
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !7
  %index.next507 = add nuw i64 %index504, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.be, label %middle.block508, label %vector.body503, !llvm.loop !194

middle.block508:                                  ; preds = %vector.body503
  %cmp.n509 = icmp eq i64 %i.ax, %n.vec502
  br i1 %cmp.n509, label %bary_2comp.exit, label %.lr.ph26.i.preheader511

.lr.ph26.i.preheader511:                          ; preds = %.lr.ph26.i.preheader, %middle.block508
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.ay, %middle.block508 ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader511, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader511 ] ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %0, i64 %.125.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = xor i32 %i.bg, -1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %1
  br i1 %exitcond31.not.i, label %bary_2comp.exit, label %.lr.ph26.i, !llvm.loop !195

bb.t:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %2, i64 %i.ak
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %.not170 = icmp sgt i8 %i.bk, -1
  %i.bl = getelementptr i8, ptr %0, i64 %i.ak     ; 2 uses
  %i.bm = sub i64 %i.al, %i.ak                    ; 2 uses
  br i1 %.not170, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bl, i8 noundef -1, i64 noundef %i.bm, i1 noundef false) #23
  tail call fastcc void @bary_2comp(ptr noundef %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bl, i8 noundef 0, i64 noundef %i.bm, i1 noundef false) #23
  br label %bary_2comp.exit

bb.w:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.ak
  %i.bo = sub i64 %i.al, %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bn, i8 noundef 0, i64 noundef %i.bo, i1 noundef false) #23
  %i.bp = and i32 %6, 512
  %.not168 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not168, i32 1, i32 -1
  br label %bary_2comp.exit

bb.x:                                             ; preds = %.thread
  %i.br = and i64 %4, 3
  %i.bs = or i64 %5, %i.br
  %or.cond193 = icmp eq i64 %i.bs, 0
  br i1 %or.cond193, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.bt = lshr exact i64 %4, 2
  %i.bu = and i32 %6, 1
  %.not157 = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %6, 64
  %.not158 = icmp eq i32 %i.bv, 0
  %i.bw = lshr i32 %6, 4
  %.lobit = and i32 %i.bw, 1
  %i.bx = select i1 %.not158, i32 %.lobit, i32 0  ; 3 uses
  %i.by = mul i64 %i.bt, %3                       ; 4 uses
  %i.bz = icmp ugt i64 %i.by, 4611686018427387903
  br i1 %i.bz, label %bb.z, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.z:                                             ; preds = %bb.y
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.by) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.y
  %.not.i211 = icmp eq i64 %i.by, 0
  br i1 %.not.i211, label %ruby_nonempty_memcpy.exit213, label %bb.aa

bb.aa:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ca = shl nuw i64 %i.by, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %2, i64 noundef range(i64 1, 0) %i.ca, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit213

ruby_nonempty_memcpy.exit213:                     ; preds = %rbimpl_size_mul_or_raise.exit, %bb.aa
  br i1 %.not157, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %ruby_nonempty_memcpy.exit213
  %.01112.i = getelementptr i8, ptr %i.b, i64 -4  ; 2 uses
  %i.cb = icmp ult ptr %0, %.01112.i
  br i1 %i.cb, label %.lr.ph.i214, label %bary_swap.exit

.lr.ph.i214:                                      ; preds = %bb.ab, %.lr.ph.i214
  %.01114.i = phi ptr [ %.011.i, %.lr.ph.i214 ], [ %.01112.i, %bb.ab ] ; 3 uses
  %.013.i = phi ptr [ %i.ce, %.lr.ph.i214 ], [ %0, %bb.ab ] ; 3 uses
  %i.cc = load i32, ptr %.013.i, align 4, !tbaa !7
  %i.cd = load i32, ptr %.01114.i, align 4, !tbaa !7
  store i32 %i.cd, ptr %.013.i, align 4, !tbaa !7
  store i32 %i.cc, ptr %.01114.i, align 4, !tbaa !7
  %i.ce = getelementptr i8, ptr %.013.i, i64 4    ; 2 uses
  %.011.i = getelementptr i8, ptr %.01114.i, i64 -4 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %.011.i
  br i1 %i.cf, label %.lr.ph.i214, label %bary_swap.exit, !llvm.loop !187

bary_swap.exit:                                   ; preds = %.lr.ph.i214, %bb.ab
  %cond194 = icmp eq i32 %i.bx, 0
  br i1 %cond194, label %bb.ac, label %bb.ad

.critedge:                                        ; preds = %ruby_nonempty_memcpy.exit213
  %cond195 = icmp eq i32 %i.bx, 0
  br i1 %cond195, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.critedge, %bary_swap.exit
  %.not372 = icmp eq i64 %3, 0
  br i1 %.not372, label %._crit_edge363, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %bb.ac
  %xtraiter537 = and i64 %3, 1
  %i.cg = icmp eq i64 %3, 1
  br i1 %i.cg, label %.lr.ph362.epil.preheader, label %.lr.ph362.preheader.new

.lr.ph362.preheader.new:                          ; preds = %.lr.ph362.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %bary_swap.exit220.1, %.lr.ph362.preheader.new
  %.0145360 = phi ptr [ %0, %.lr.ph362.preheader.new ], [ %i.cn, %bary_swap.exit220.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph362.preheader.new ], [ %niter.next.1, %bary_swap.exit220.1 ]
  %i.ch = getelementptr i8, ptr %.0145360, i64 %4 ; 4 uses
  %.01112.i215 = getelementptr i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.ci = icmp ult ptr %.0145360, %.01112.i215
  br i1 %i.ci, label %.lr.ph.i216, label %bary_swap.exit220

.lr.ph.i216:                                      ; preds = %.lr.ph362, %.lr.ph.i216
  %.01114.i217 = phi ptr [ %.011.i219, %.lr.ph.i216 ], [ %.01112.i215, %.lr.ph362 ] ; 3 uses
  %.013.i218 = phi ptr [ %i.cl, %.lr.ph.i216 ], [ %.0145360, %.lr.ph362 ] ; 3 uses
  %i.cj = load i32, ptr %.013.i218, align 4, !tbaa !7
  %i.ck = load i32, ptr %.01114.i217, align 4, !tbaa !7
  store i32 %i.ck, ptr %.013.i218, align 4, !tbaa !7
  store i32 %i.cj, ptr %.01114.i217, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %.013.i218, i64 4 ; 2 uses
  %.011.i219 = getelementptr i8, ptr %.01114.i217, i64 -4 ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %.011.i219
  br i1 %i.cm, label %.lr.ph.i216, label %bary_swap.exit220, !llvm.loop !187

bary_swap.exit220:                                ; preds = %.lr.ph.i216, %.lr.ph362
  %i.cn = getelementptr i8, ptr %i.ch, i64 %4     ; 3 uses
  %.01112.i215.1 = getelementptr i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.co = icmp ult ptr %i.ch, %.01112.i215.1
  br i1 %i.co, label %.lr.ph.i216.1, label %bary_swap.exit220.1

.lr.ph.i216.1:                                    ; preds = %bary_swap.exit220, %.lr.ph.i216.1
  %.01114.i217.1 = phi ptr [ %.011.i219.1, %.lr.ph.i216.1 ], [ %.01112.i215.1, %bary_swap.exit220 ] ; 3 uses
  %.013.i218.1 = phi ptr [ %i.cr, %.lr.ph.i216.1 ], [ %i.ch, %bary_swap.exit220 ] ; 3 uses
  %i.cp = load i32, ptr %.013.i218.1, align 4, !tbaa !7
  %i.cq = load i32, ptr %.01114.i217.1, align 4, !tbaa !7
  store i32 %i.cq, ptr %.013.i218.1, align 4, !tbaa !7
  store i32 %i.cp, ptr %.01114.i217.1, align 4, !tbaa !7
  %i.cr = getelementptr i8, ptr %.013.i218.1, i64 4 ; 2 uses
  %.011.i219.1 = getelementptr i8, ptr %.01114.i217.1, i64 -4 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %.011.i219.1
  br i1 %i.cs, label %.lr.ph.i216.1, label %bary_swap.exit220.1, !llvm.loop !187

bary_swap.exit220.1:                              ; preds = %.lr.ph.i216.1, %bary_swap.exit220
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge363.loopexit.unr-lcssa, label %.lr.ph362, !llvm.loop !196

._crit_edge363.loopexit.unr-lcssa:                ; preds = %bary_swap.exit220.1
  %lcmp.mod538.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod538.not, label %._crit_edge363, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph362.preheader
  %.0145360.epil.init = phi ptr [ %0, %.lr.ph362.preheader ], [ %i.cn, %._crit_edge363.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod539 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod539)
  %i.ct = getelementptr i8, ptr %.0145360.epil.init, i64 %4
  %.01112.i215.epil = getelementptr i8, ptr %i.ct, i64 -4 ; 2 uses
  %i.cu = icmp ult ptr %.0145360.epil.init, %.01112.i215.epil
  br i1 %i.cu, label %.lr.ph.i216.epil, label %._crit_edge363

.lr.ph.i216.epil:                                 ; preds = %.lr.ph362.epil.preheader, %.lr.ph.i216.epil
  %.01114.i217.epil = phi ptr [ %.011.i219.epil, %.lr.ph.i216.epil ], [ %.01112.i215.epil, %.lr.ph362.epil.preheader ] ; 3 uses
  %.013.i218.epil = phi ptr [ %i.cx, %.lr.ph.i216.epil ], [ %.0145360.epil.init, %.lr.ph362.epil.preheader ] ; 3 uses
  %i.cv = load i32, ptr %.013.i218.epil, align 4, !tbaa !7
  %i.cw = load i32, ptr %.01114.i217.epil, align 4, !tbaa !7
  store i32 %i.cw, ptr %.013.i218.epil, align 4, !tbaa !7
  store i32 %i.cv, ptr %.01114.i217.epil, align 4, !tbaa !7
  %i.cx = getelementptr i8, ptr %.013.i218.epil, i64 4 ; 2 uses
  %.011.i219.epil = getelementptr i8, ptr %.01114.i217.epil, i64 -4 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %.011.i219.epil
  br i1 %i.cy, label %.lr.ph.i216.epil, label %._crit_edge363, !llvm.loop !187

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
  %umax471 = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %i.dd = xor i64 %i.a, -1
  %i.de = add i64 %umax471, %i.dd                 ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check473 = icmp ult i64 %i.de, 28
  br i1 %min.iters.check473, label %.lr.ph366.preheader521, label %vector.ph474

vector.ph474:                                     ; preds = %.lr.ph366.preheader
  %n.vec476 = and i64 %i.dg, 9223372036854775800  ; 3 uses
  %i.dh = shl i64 %n.vec476, 2
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph474
  %index478 = phi i64 [ 0, %vector.ph474 ], [ %index.next481, %vector.body477 ] ; 2 uses
  %i.dj = shl i64 %index478, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.dj ; 3 uses
  %i.dk = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load479 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load480 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !7
  %i.dl = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load479)
  %i.dm = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load480)
  store <4 x i32> %i.dl, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !7
  %index.next481 = add nuw i64 %index478, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next481, %n.vec476
  br i1 %i.dn, label %middle.block482, label %vector.body477, !llvm.loop !197

middle.block482:                                  ; preds = %vector.body477
  %cmp.n483 = icmp eq i64 %i.dg, %n.vec476
  br i1 %cmp.n483, label %.loopexit, label %.lr.ph366.preheader521

.lr.ph366.preheader521:                           ; preds = %.lr.ph366.preheader, %middle.block482
  %.0144364.ph = phi ptr [ %0, %.lr.ph366.preheader ], [ %i.di, %middle.block482 ]
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader521, %.lr.ph366
  %.0144364 = phi ptr [ %i.dq, %.lr.ph366 ], [ %.0144364.ph, %.lr.ph366.preheader521 ] ; 3 uses
  %i.do = load i32, ptr %.0144364, align 4, !tbaa !7
  %i.dp = tail call noundef i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %i.dp, ptr %.0144364, align 4, !tbaa !7
  %i.dq = getelementptr i8, ptr %.0144364, i64 4  ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.b
  br i1 %i.dr, label %.lr.ph366, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %.lr.ph366, %middle.block482, %bb.ad, %.critedge, %._crit_edge363
  %i.ds = and i32 %6, 128
  %.not162 = icmp eq i32 %i.ds, 0
  %i.dt = and i32 %6, 512
  %.not163 = icmp eq i32 %i.dt, 0                 ; 2 uses
  br i1 %.not162, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  br i1 %.not163, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not27.i221 = icmp eq i64 %1, 0
  br i1 %.not27.i221, label %bary_2comp.exit, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.af, %bb.ag
  %.023.i223 = phi i64 [ %i.dw, %bb.ag ], [ 0, %bb.af ] ; 5 uses
  %i.du = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7  ; 2 uses
  %.not.i224 = icmp eq i32 %i.dv, 0
  br i1 %.not.i224, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i222
  %i.dw = add nuw i64 %.023.i223, 1               ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.dw, %1
  br i1 %exitcond.not.i231, label %bary_2comp.exit, label %.lr.ph.i222, !llvm.loop !55

bb.ah:                                            ; preds = %.lr.ph.i222
  %i.dx = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dy = sub i32 0, %i.dv
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !7
  %.124.i225 = add i64 %.023.i223, 1              ; 4 uses
  %i.dz = icmp ult i64 %.124.i225, %1
  br i1 %i.dz, label %.lr.ph26.i227.preheader, label %bary_2comp.exit

.lr.ph26.i227.preheader:                          ; preds = %bb.ah
  %i.ea = xor i64 %.023.i223, -1
  %i.eb = add i64 %1, %i.ea                       ; 3 uses
  %min.iters.check486 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check486, label %.lr.ph26.i227.preheader515, label %vector.ph487

vector.ph487:                                     ; preds = %.lr.ph26.i227.preheader
  %n.vec489 = and i64 %i.eb, -8                   ; 3 uses
  %i.ec = add i64 %.124.i225, %n.vec489
  %i.ed = getelementptr [4 x i8], ptr %0, i64 %.124.i225
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph487
  %index491 = phi i64 [ 0, %vector.ph487 ], [ %index.next494, %vector.body490 ] ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %index491 ; 3 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16     ; 2 uses
  %wide.load492 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !7
  %wide.load493 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !7
  %i.eg = xor <4 x i32> %wide.load492, splat (i32 -1)
  %i.eh = xor <4 x i32> %wide.load493, splat (i32 -1)
  store <4 x i32> %i.eg, ptr %i.ee, align 4, !tbaa !7
  store <4 x i32> %i.eh, ptr %i.ef, align 4, !tbaa !7
  %index.next494 = add nuw i64 %index491, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next494, %n.vec489
  br i1 %i.ei, label %middle.block495, label %vector.body490, !llvm.loop !199

middle.block495:                                  ; preds = %vector.body490
  %cmp.n496 = icmp eq i64 %i.eb, %n.vec489
  br i1 %cmp.n496, label %bary_2comp.exit, label %.lr.ph26.i227.preheader515

.lr.ph26.i227.preheader515:                       ; preds = %.lr.ph26.i227.preheader, %middle.block495
  %.125.i228.ph = phi i64 [ %.124.i225, %.lr.ph26.i227.preheader ], [ %i.ec, %middle.block495 ]
  br label %.lr.ph26.i227

.lr.ph26.i227:                                    ; preds = %.lr.ph26.i227.preheader515, %.lr.ph26.i227
  %.125.i228 = phi i64 [ %.1.i229, %.lr.ph26.i227 ], [ %.125.i228.ph, %.lr.ph26.i227.preheader515 ] ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %0, i64 %.125.i228 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = xor i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !7
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !200

bb.ai:                                            ; preds = %bb.ae
  %i.em = getelementptr i8, ptr %i.b, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %.not165 = icmp sgt i32 %i.en, -1
  br i1 %.not165, label %bary_2comp.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @bary_2comp(ptr noundef nonnull %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.ak:                                            ; preds = %.loopexit
  %i.eo = select i1 %.not163, i32 1, i32 -1
  br label %bary_2comp.exit

bb.al:                                            ; preds = %bb.x, %bb.a
  %.not315 = icmp eq i64 %1, 0                    ; 4 uses
  br i1 %.not315, label %.loopexit326, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = and i32 %6, 3
  %i.eq = icmp eq i32 %i.ep, 1                    ; 3 uses
  %i.er = add i64 %3, -1
  %i.es = mul i64 %4, %i.er                       ; 2 uses
  %i.et = sub i64 0, %4
  %.035.i = select i1 %i.eq, i64 %i.es, i64 0
  %.034.i = select i1 %i.eq, i64 %i.et, i64 %4
  %.033.i = select i1 %i.eq, i64 0, i64 %i.es
  %i.eu = trunc i64 %5 to i32
  %i.ev = and i32 %i.eu, 7                        ; 3 uses
  %i.ew = icmp ne i32 %i.ev, 0                    ; 3 uses
  %i.ex = lshr i64 %5, 3
  %i.ey = sub i64 %4, %i.ex
  %i.ez = sext i1 %i.ew to i64
  %spec.select.i = add i64 %i.ey, %i.ez           ; 2 uses
  %i.fa = and i32 %6, 112
  %i.fb = icmp eq i32 %i.fa, 16                   ; 2 uses
  %i.fc = add i64 %4, -1
  %.032.i = select i1 %i.fb, i64 %i.fc, i64 0
  %.0.i233 = select i1 %i.fb, i64 -1, i64 1
  %i.fd = getelementptr i8, ptr %2, i64 %.035.i
  %i.fe = getelementptr i8, ptr %2, i64 %.033.i
  %.not371 = icmp eq i64 %spec.select.i, 0
  %i.ff = lshr i32 255, %i.ev
  %i.fg = select i1 %i.ew, i32 %i.ff, i32 0
  %invariant.op = sub i32 8, %i.ev
  br label %bb.an

bb.an:                                            ; preds = %integer_unpack_push_bits.exit238, %bb.am
  %.0291 = phi ptr [ %0, %bb.am ], [ %.2293, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0286 = phi i64 [ 0, %bb.am ], [ %.2288, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0283 = phi i32 [ 0, %bb.am ], [ %.2285, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0138 = phi ptr [ %i.fd, %bb.am ], [ %i.hg, %integer_unpack_push_bits.exit238 ] ; 3 uses
  %i.fh = getelementptr i8, ptr %.0138, i64 %.032.i ; 2 uses
  br i1 %.not371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %integer_unpack_push_bits.exit
  %.0351 = phi ptr [ %i.go, %integer_unpack_push_bits.exit ], [ %i.fh, %bb.an ] ; 2 uses
  %.0136350 = phi i64 [ %i.gp, %integer_unpack_push_bits.exit ], [ 0, %bb.an ]
  %.1284349 = phi i32 [ %.4, %integer_unpack_push_bits.exit ], [ %.0283, %bb.an ] ; 3 uses
  %.1287348 = phi i64 [ %.3289, %integer_unpack_push_bits.exit ], [ %.0286, %bb.an ]
  %.1292347 = phi ptr [ %.5296, %integer_unpack_push_bits.exit ], [ %.0291, %bb.an ] ; 3 uses
  %i.fi = load i8, ptr %.0351, align 1, !tbaa !15
  %i.fj = zext i8 %i.fi to i64
  %i.fk = zext nneg i32 %.1284349 to i64
  %i.fl = shl i64 %i.fj, %i.fk
  %i.fm = or i64 %i.fl, %.1287348                 ; 3 uses
end_hunk_1
