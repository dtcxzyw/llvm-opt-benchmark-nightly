inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 183
begin_hunk_0_@rb_big_mul_normal:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 3 uses
  %i.n = and i64 %i.m, 16384
  %.not.i9 = icmp eq i64 %i.n, 0
  br i1 %.not.i9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit11

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = lshr i64 %i.m, 15
  %i.r = and i64 %i.q, 511
  br label %BIGNUM_LEN.exit11

BIGNUM_LEN.exit11:                                ; preds = %bb.d, %bb.e
  %.0.i10 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 8 uses
  %i.s = add i64 %.0.i10, %.0.i                   ; 4 uses
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.u = xor i64 %i.m, %i.f
  %i.v = and i64 %i.u, 8192
  %.not = icmp eq i64 %i.v, 0
  %i.w = zext i1 %.not to i32
  %i.x = tail call fastcc i64 @bignew_1(i64 noundef %i.t, i64 noundef %i.s, i32 noundef %i.w) ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  %i.aa = and i64 %i.z, 16384
  %.not.i12 = icmp eq i64 %i.aa, 0
  br i1 %.not.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit11
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  br label %BIGNUM_DIGITS.exit

bb.g:                                             ; preds = %BIGNUM_LEN.exit11
  %i.ac = getelementptr i8, ptr %i.y, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.f, %bb.g
  %.0.i13 = phi ptr [ %i.ab, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !13
  %i.af = and i64 %i.ae, 16384
  %.not.i14 = icmp eq i64 %i.af, 0
  br i1 %.not.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ag = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit16

bb.i:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ah = getelementptr i8, ptr %i.e, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit16

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
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = and i64 %i.k, -8193
  %masksel.i = select i1 %.not, i64 0, i64 8192
  %.sink.i = or disjoint i64 %i.l, %masksel.i     ; 2 uses
  store i64 %.sink.i, ptr %i.j, align 8, !tbaa !13
  %i.m = and i64 %i.k, 16384
  %.not26 = icmp eq i64 %i.m, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %.sink.i, -16744449
  %i.o = shl nuw nsw i64 %1, 15
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.j, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.j, i64 16
  store i64 %1, ptr %i.q, align 8, !tbaa !15
  br label %bb.e

big_embeddable_p.exit.thread:                     ; preds = %bb.a, %big_embeddable_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  store volatile ptr %i.s, ptr %i.a, align 8, !tbaa !25
  %.0..0..0..0..0..0..i22 = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i22, i64 noundef %0, i64 noundef 10, i32 noundef 0, i64 noundef 32) #23 ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 4 uses
  %.not27 = icmp eq i32 %2, 0
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, -8193
  %masksel.i23 = select i1 %.not27, i64 0, i64 8192
  %.sink.i24 = or disjoint i64 %i.w, %masksel.i23
  store i64 %.sink.i24, ptr %i.u, align 8, !tbaa !13
  %i.x = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 4) #24
  %i.y = getelementptr i8, ptr %i.u, i64 16
  %i.z = getelementptr i8, ptr %i.u, i64 24
  store ptr %i.x, ptr %i.z, align 8, !tbaa !15
  store i64 %1, ptr %i.y, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %big_embeddable_p.exit.thread
  %.0 = phi i64 [ %i.t, %big_embeddable_p.exit.thread ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
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
  %i.q = getelementptr i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.d, %bb.e
  %.0.i7 = phi ptr [ %i.p, %bb.d ], [ %i.r, %bb.e ]
  %i.s = load i64, ptr %i.c, align 8, !tbaa !13
  %i.t = and i64 %i.s, 16384
  %.not.i8 = icmp eq i64 %i.t, 0
  br i1 %.not.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.u = getelementptr i8, ptr %i.c, i64 16
  br label %BIGNUM_DIGITS.exit10

bb.g:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.v = getelementptr i8, ptr %i.c, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit10

BIGNUM_DIGITS.exit10:                             ; preds = %bb.f, %bb.g
  %.0.i9 = phi ptr [ %i.u, %bb.f ], [ %i.w, %bb.g ]
  tail call fastcc void @bary_sq_fast(ptr noundef %.0.i7, i64 noundef %i.j, ptr noundef %.0.i9, i64 noundef %.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !27
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !11 ; 0 uses
  ret i64 %i.l
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc void @bary_sq_fast(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.not94 = icmp eq i64 %1, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.a, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.c = add i64 %3, -1                           ; 7 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %3
  %.not107 = icmp eq i64 %i.c, 0
  br i1 %.not107, label %._crit_edge105, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.preheader
  %i.d = add i64 %3, -2                           ; 2 uses
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %bb.d
  %indvar = phi i64 [ 0, %.lr.ph104.preheader ], [ %indvar.next, %bb.d ] ; 5 uses
  %.078103 = phi i64 [ 0, %.lr.ph104.preheader ], [ %.pre-phi, %bb.d ] ; 8 uses
  %i.e = sub i64 %i.c, %indvar
  %i.f = sub i64 %i.c, %indvar
  %i.g = getelementptr [4 x i8], ptr %2, i64 %.078103
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %.fr = freeze i32 %i.h                          ; 4 uses
  %.not88 = icmp eq i32 %.fr, 0
  br i1 %.not88, label %.lr.ph104._crit_edge, label %.lr.ph101

.lr.ph104._crit_edge:                             ; preds = %.lr.ph104
  %.pre = add nuw i64 %.078103, 1
  br label %bb.d

.lr.ph101:                                        ; preds = %.lr.ph104
  %i.i = zext i32 %.fr to i64                     ; 2 uses
  %.idx89 = shl i64 %.078103, 3
  %i.j = getelementptr i8, ptr %0, i64 %.idx89    ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw i64 %i.i, %i.i
  %i.n = add nuw i64 %i.m, %i.l                   ; 2 uses
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %i.j, align 4, !tbaa !7
  %i.p = lshr i64 %i.n, 32                        ; 4 uses
  %.07997 = add nuw i64 %.078103, 1               ; 9 uses
  %i.q = shl i32 %.fr, 1
  %i.r = getelementptr [4 x i8], ptr %0, i64 %.078103 ; 6 uses
  %i.s = zext i32 %i.q to i64                     ; 6 uses
  %.not9293 = icmp slt i32 %.fr, 0
  br i1 %.not9293, label %.lr.ph101.split.us.preheader, label %.lr.ph101.split.preheader

.lr.ph101.split.preheader:                        ; preds = %.lr.ph101
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph101.split.prol.loopexit, label %.lr.ph101.split.prol

.lr.ph101.split.prol:                             ; preds = %.lr.ph101.split.preheader
  %i.t = getelementptr [4 x i8], ptr %2, i64 %.07997
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %i.r, i64 %.07997 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = zext i32 %i.x to i64
  %i.z = mul nuw i64 %i.v, %i.s
  %i.aa = add nuw nsw i64 %i.p, %i.y
  %i.ab = add nuw i64 %i.aa, %i.z                 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.w, align 4, !tbaa !7
  %i.ad = lshr i64 %i.ab, 32                      ; 2 uses
  %.079.prol = add nuw i64 %.078103, 2
  br label %.lr.ph101.split.prol.loopexit

.lr.ph101.split.prol.loopexit:                    ; preds = %.lr.ph101.split.prol, %.lr.ph101.split.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph101.split.preheader ], [ %i.ad, %.lr.ph101.split.prol ]
  %.07999.unr = phi i64 [ %.07997, %.lr.ph101.split.preheader ], [ %.079.prol, %.lr.ph101.split.prol ]
  %.08098.unr = phi i64 [ %i.p, %.lr.ph101.split.preheader ], [ %i.ad, %.lr.ph101.split.prol ]
  %i.ae = icmp eq i64 %i.d, %indvar
  br i1 %i.ae, label %._crit_edge102, label %.lr.ph101.split

.lr.ph101.split.us.preheader:                     ; preds = %.lr.ph101
  %xtraiter120 = and i64 %i.e, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph101.split.us.prol.loopexit, label %.lr.ph101.split.us.prol

.lr.ph101.split.us.prol:                          ; preds = %.lr.ph101.split.us.preheader
  %i.af = getelementptr [4 x i8], ptr %2, i64 %.07997
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.r, i64 %.07997 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw i64 %i.ah, %i.s
end_hunk_0
begin_hunk_1_@bary_mul_karatsuba:bb.a
  %i.zf = sub i64 %.063.i.i366610757, %i.ze
  %diff.check758 = icmp ugt i64 %i.zf, -32
  br i1 %diff.check758, label %.lr.ph91.i.i392.preheader774, label %vector.ph761

vector.ph761:                                     ; preds = %vector.memcheck756
  %n.vec763 = and i64 %i.zc, -8                   ; 3 uses
  %i.zg = add i64 %.182.i.i396, %n.vec763
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph761
  %index765 = phi i64 [ 0, %vector.ph761 ], [ %index.next768, %vector.body764 ] ; 2 uses
  %i.zh = add i64 %.182.i.i396, %index765         ; 2 uses
  %i.zi = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %i.zh ; 2 uses
  %i.zj = getelementptr i8, ptr %i.zi, i64 16
  %wide.load766 = load <4 x i32>, ptr %i.zi, align 4, !tbaa !7
  %wide.load767 = load <4 x i32>, ptr %i.zj, align 4, !tbaa !7
  %i.zk = getelementptr [4 x i8], ptr %i.ax, i64 %i.zh ; 2 uses
  %i.zl = getelementptr i8, ptr %i.zk, i64 16
  store <4 x i32> %wide.load766, ptr %i.zk, align 4, !tbaa !7
  store <4 x i32> %wide.load767, ptr %i.zl, align 4, !tbaa !7
  %index.next768 = add nuw i64 %index765, 8       ; 2 uses
  %i.zm = icmp eq i64 %index.next768, %n.vec763
  br i1 %i.zm, label %middle.block769, label %vector.body764, !llvm.loop !70

middle.block769:                                  ; preds = %vector.body764
  %cmp.n770 = icmp eq i64 %i.zc, %n.vec763
  br i1 %cmp.n770, label %.preheader.i.i388, label %.lr.ph91.i.i392.preheader774

.lr.ph91.i.i392.preheader774:                     ; preds = %vector.memcheck756, %.lr.ph91.i.i392.preheader, %middle.block769
  %.490.i.i393.ph = phi i64 [ %.182.i.i396, %vector.memcheck756 ], [ %.182.i.i396, %.lr.ph91.i.i392.preheader ], [ %i.zg, %middle.block769 ] ; 4 uses
  %i.zn = sub i64 %.062.i.i367612, %.490.i.i393.ph
  %xtraiter866 = and i64 %i.zn, 3                 ; 2 uses
  %lcmp.mod867.not = icmp eq i64 %xtraiter866, 0
  br i1 %lcmp.mod867.not, label %.lr.ph91.i.i392.prol.loopexit, label %.lr.ph91.i.i392.prol

.lr.ph91.i.i392.prol:                             ; preds = %.lr.ph91.i.i392.preheader774, %.lr.ph91.i.i392.prol
  %.490.i.i393.prol = phi i64 [ %i.zr, %.lr.ph91.i.i392.prol ], [ %.490.i.i393.ph, %.lr.ph91.i.i392.preheader774 ] ; 3 uses
  %prol.iter868 = phi i64 [ %prol.iter868.next, %.lr.ph91.i.i392.prol ], [ 0, %.lr.ph91.i.i392.preheader774 ]
  %i.zo = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %.490.i.i393.prol
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !7
  %i.zq = getelementptr [4 x i8], ptr %i.ax, i64 %.490.i.i393.prol
  store i32 %i.zp, ptr %i.zq, align 4, !tbaa !7
  %i.zr = add nuw i64 %.490.i.i393.prol, 1        ; 2 uses
  %prol.iter868.next = add i64 %prol.iter868, 1   ; 2 uses
  %prol.iter868.cmp.not = icmp eq i64 %prol.iter868.next, %xtraiter866
  br i1 %prol.iter868.cmp.not, label %.lr.ph91.i.i392.prol.loopexit, label %.lr.ph91.i.i392.prol, !llvm.loop !71

.lr.ph91.i.i392.prol.loopexit:                    ; preds = %.lr.ph91.i.i392.prol, %.lr.ph91.i.i392.preheader774
  %.490.i.i393.unr = phi i64 [ %.490.i.i393.ph, %.lr.ph91.i.i392.preheader774 ], [ %i.zr, %.lr.ph91.i.i392.prol ]
  %i.zs = sub i64 %.490.i.i393.ph, %.062.i.i367612
  %i.zt = icmp ugt i64 %i.zs, -4
  br i1 %i.zt, label %.preheader.i.i388, label %.lr.ph91.i.i392

.preheader.i.i388:                                ; preds = %.lr.ph91.i.i392.prol.loopexit, %.lr.ph91.i.i392, %middle.block769, %.preheader69.i.i387
  %.4.lcssa.i.i389 = phi i64 [ %.182.i.i396, %.preheader69.i.i387 ], [ %.062.i.i367612, %middle.block769 ], [ %.062.i.i367612, %.lr.ph91.i.i392 ], [ %.062.i.i367612, %.lr.ph91.i.i392.prol.loopexit ] ; 3 uses
  %i.zu = icmp ult i64 %.4.lcssa.i.i389, %i.qn
  br i1 %i.zu, label %.lr.ph94.preheader.i.i390, label %bary_add.exit399

.lr.ph94.preheader.i.i390:                        ; preds = %.preheader.i.i388
  %i.zv = shl i64 %.4.lcssa.i.i389, 2
  %scevgep.i.i391 = getelementptr i8, ptr %i.ax, i64 %i.zv
  %i.zw = sub nuw i64 %i.qn, %.4.lcssa.i.i389
  %i.zx = shl i64 %i.zw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i391, i8 0, i64 %i.zx, i1 false), !tbaa !7
  br label %bary_add.exit399

.lr.ph91.i.i392:                                  ; preds = %.lr.ph91.i.i392.prol.loopexit, %.lr.ph91.i.i392
  %.490.i.i393 = phi i64 [ %i.aan, %.lr.ph91.i.i392 ], [ %.490.i.i393.unr, %.lr.ph91.i.i392.prol.loopexit ] ; 6 uses
  %i.zy = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %.490.i.i393
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !7
  %i.aaa = getelementptr [4 x i8], ptr %i.ax, i64 %.490.i.i393
  store i32 %i.zz, ptr %i.aaa, align 4, !tbaa !7
  %i.aab = add nuw i64 %.490.i.i393, 1            ; 2 uses
  %i.aac = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !7
  %i.aae = getelementptr [4 x i8], ptr %i.ax, i64 %i.aab
  store i32 %i.aad, ptr %i.aae, align 4, !tbaa !7
  %i.aaf = add nuw i64 %.490.i.i393, 2            ; 2 uses
  %i.aag = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !7
  %i.aai = getelementptr [4 x i8], ptr %i.ax, i64 %i.aaf
  store i32 %i.aah, ptr %i.aai, align 4, !tbaa !7
  %i.aaj = add nuw i64 %.490.i.i393, 3            ; 2 uses
  %i.aak = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %i.aaj
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !7
  %i.aam = getelementptr [4 x i8], ptr %i.ax, i64 %i.aaj
  store i32 %i.aal, ptr %i.aam, align 4, !tbaa !7
  %i.aan = add nuw i64 %.490.i.i393, 4            ; 2 uses
  %exitcond106.not.i.i394.3 = icmp eq i64 %i.aan, %.062.i.i367612
  br i1 %exitcond106.not.i.i394.3, label %.preheader.i.i388, label %.lr.ph91.i.i392, !llvm.loop !72

bary_add.exit399:                                 ; preds = %bb.aj, %.preheader72.i.i374, %.loopexit71.i.i384, %.preheader.i.i388, %.lr.ph94.preheader.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #23
  br label %bary_sub_one.exit

bary_sub_one.exit:                                ; preds = %bb.af, %.lr.ph82.i.i359, %bb.ae, %bb.ag, %bary_add.exit399
  br i1 %.not215, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bary_sub_one.exit
  %i.aao = getelementptr [4 x i8], ptr %0, i64 %.0191 ; 4 uses
  %i.aap = sub i64 %1, %.0191                     ; 2 uses
  %i.aaq = getelementptr [4 x i8], ptr %4, i64 %.0191
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !7 ; 2 uses
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %bary_muladd_1xN.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.aat = zext i32 %i.aar to i64                 ; 3 uses
  %.not43.i = icmp eq i64 %.0, 0
  br i1 %.not43.i, label %bary_muladd_1xN.exit, label %.lr.ph.i400.preheader

.lr.ph.i400.preheader:                            ; preds = %bb.al
  %xtraiter869 = and i64 %.0, 1
  %i.aau = icmp eq i64 %.0, 1
  br i1 %i.aau, label %.lr.ph.i400.epil.preheader, label %.lr.ph.i400.preheader.new

.lr.ph.i400.preheader.new:                        ; preds = %.lr.ph.i400.preheader
  %unroll_iter873 = and i64 %.0, -2
  br label %.lr.ph.i400

.preheader.i403.unr-lcssa:                        ; preds = %bb.ap
  %lcmp.mod870.not = icmp eq i64 %xtraiter869, 0
  br i1 %lcmp.mod870.not, label %.preheader.i403, label %.lr.ph.i400.epil.preheader

.lr.ph.i400.epil.preheader:                       ; preds = %.preheader.i403.unr-lcssa, %.lr.ph.i400.preheader
  %.03036.i.epil.init = phi i64 [ 0, %.lr.ph.i400.preheader ], [ %i.acf, %.preheader.i403.unr-lcssa ] ; 2 uses
  %.03135.i.epil.init = phi i64 [ 0, %.lr.ph.i400.preheader ], [ %.132.i.1, %.preheader.i403.unr-lcssa ]
  %lcmp.mod872 = trunc i64 %.0 to i1
  call void @llvm.assume(i1 %lcmp.mod872)
  %i.aav = getelementptr [4 x i8], ptr %2, i64 %.03036.i.epil.init
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !7
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = mul nuw i64 %i.aax, %i.aat
  %i.aaz = add nuw i64 %i.aay, %.03135.i.epil.init ; 2 uses
  %.not.i401.epil = icmp eq i64 %i.aaz, 0
  br i1 %.not.i401.epil, label %.preheader.i403, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i400.epil.preheader
  %i.aba = getelementptr [4 x i8], ptr %i.aao, i64 %.03036.i.epil.init ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !7
  %i.abc = zext i32 %i.abb to i64
  %i.abd = add nuw i64 %i.aaz, %i.abc             ; 2 uses
  %i.abe = trunc i64 %i.abd to i32
  store i32 %i.abe, ptr %i.aba, align 4, !tbaa !7
  %i.abf = lshr i64 %i.abd, 32
  br label %.preheader.i403

.preheader.i403:                                  ; preds = %.lr.ph.i400.epil.preheader, %bb.am, %.preheader.i403.unr-lcssa
  %.132.i.lcssa = phi i64 [ %.132.i.1, %.preheader.i403.unr-lcssa ], [ %i.abf, %bb.am ], [ 0, %.lr.ph.i400.epil.preheader ] ; 2 uses
  %i.abg = icmp uge i64 %.0, %i.aap
  %i.abh = icmp eq i64 %.132.i.lcssa, 0
  %or.cond38.i = select i1 %i.abg, i1 true, i1 %i.abh
  br i1 %or.cond38.i, label %bary_muladd_1xN.exit, label %.lr.ph41.i

.lr.ph.i400:                                      ; preds = %bb.ap, %.lr.ph.i400.preheader.new
  %.03036.i = phi i64 [ 0, %.lr.ph.i400.preheader.new ], [ %i.acf, %bb.ap ] ; 4 uses
  %.03135.i = phi i64 [ 0, %.lr.ph.i400.preheader.new ], [ %.132.i.1, %bb.ap ]
  %niter874 = phi i64 [ 0, %.lr.ph.i400.preheader.new ], [ %niter874.next.1, %bb.ap ]
  %i.abi = getelementptr [4 x i8], ptr %2, i64 %.03036.i
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !7
  %i.abk = zext i32 %i.abj to i64
  %i.abl = mul nuw i64 %i.abk, %i.aat
  %i.abm = add nuw i64 %i.abl, %.03135.i          ; 2 uses
  %.not.i401 = icmp eq i64 %i.abm, 0
  br i1 %.not.i401, label %.lr.ph.i400.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i400
  %i.abn = getelementptr [4 x i8], ptr %i.aao, i64 %.03036.i ; 2 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !7
  %i.abp = zext i32 %i.abo to i64
  %i.abq = add nuw i64 %i.abm, %i.abp             ; 2 uses
  %i.abr = trunc i64 %i.abq to i32
  store i32 %i.abr, ptr %i.abn, align 4, !tbaa !7
  %i.abs = lshr i64 %i.abq, 32
  br label %.lr.ph.i400.1

.lr.ph.i400.1:                                    ; preds = %bb.an, %.lr.ph.i400
  %.132.i = phi i64 [ %i.abs, %bb.an ], [ 0, %.lr.ph.i400 ]
  %i.abt = or disjoint i64 %.03036.i, 1           ; 2 uses
  %i.abu = getelementptr [4 x i8], ptr %2, i64 %i.abt
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !7
  %i.abw = zext i32 %i.abv to i64
  %i.abx = mul nuw i64 %i.abw, %i.aat
  %i.aby = add nuw i64 %i.abx, %.132.i            ; 2 uses
  %.not.i401.1 = icmp eq i64 %i.aby, 0
  br i1 %.not.i401.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i400.1
  %i.abz = getelementptr [4 x i8], ptr %i.aao, i64 %i.abt ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !7
  %i.acb = zext i32 %i.aca to i64
  %i.acc = add nuw i64 %i.aby, %i.acb             ; 2 uses
  %i.acd = trunc i64 %i.acc to i32
  store i32 %i.acd, ptr %i.abz, align 4, !tbaa !7
  %i.ace = lshr i64 %i.acc, 32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i400.1
  %.132.i.1 = phi i64 [ %i.ace, %bb.ao ], [ 0, %.lr.ph.i400.1 ] ; 3 uses
  %i.acf = add nuw i64 %.03036.i, 2               ; 2 uses
  %niter874.next.1 = add i64 %niter874, 2         ; 2 uses
  %niter874.ncmp.1 = icmp eq i64 %niter874.next.1, %unroll_iter873
  br i1 %niter874.ncmp.1, label %.preheader.i403.unr-lcssa, label %.lr.ph.i400, !llvm.loop !16

.lr.ph41.i:                                       ; preds = %.preheader.i403, %.lr.ph41.i
  %.140.i = phi i64 [ %i.acm, %.lr.ph41.i ], [ %.0, %.preheader.i403 ] ; 2 uses
  %.239.i = phi i64 [ %i.acl, %.lr.ph41.i ], [ %.132.i.lcssa, %.preheader.i403 ]
  %i.acg = getelementptr [4 x i8], ptr %i.aao, i64 %.140.i ; 2 uses
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !7
  %i.aci = zext i32 %i.ach to i64
  %i.acj = add nuw nsw i64 %.239.i, %i.aci        ; 2 uses
  %i.ack = trunc i64 %i.acj to i32
  store i32 %i.ack, ptr %i.acg, align 4, !tbaa !7
  %i.acl = lshr i64 %i.acj, 32                    ; 2 uses
  %i.acm = add nuw i64 %.140.i, 1                 ; 2 uses
  %i.acn = icmp uge i64 %i.acm, %i.aap
  %i.aco = icmp eq i64 %i.acl, 0
  %or.cond.i404 = select i1 %i.acn, i1 true, i1 %i.aco
  br i1 %or.cond.i404, label %bary_muladd_1xN.exit, label %.lr.ph41.i, !llvm.loop !18

bary_muladd_1xN.exit:                             ; preds = %.lr.ph41.i, %bb.al, %.preheader.i403, %bb.ak
  %i.acp = getelementptr [4 x i8], ptr %0, i64 %.0 ; 4 uses
  %i.acq = sub i64 %1, %.0                        ; 2 uses
  %i.acr = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !7 ; 2 uses
  %i.act = add nuw i64 %.0191, 1                  ; 2 uses
  %i.acu = icmp eq i32 %i.acs, 0
  br i1 %i.acu, label %bary_muladd_1xN.exit423, label %bb.aq

bb.aq:                                            ; preds = %bary_muladd_1xN.exit
  %i.acv = zext i32 %i.acs to i64                 ; 3 uses
  %i.acw = add nuw i64 %.0191, 1                  ; 2 uses
  %i.acx = icmp eq i64 %.0191, 0
  br i1 %i.acx, label %.lr.ph.i408.epil.preheader, label %.new

.new:                                             ; preds = %bb.aq
  %unroll_iter879 = and i64 %i.acw, -2
  br label %.lr.ph.i408

.preheader.i414.unr-lcssa:                        ; preds = %bb.au
  %i.acy = and i64 %.0191, 1
  %lcmp.mod876.not.not = icmp eq i64 %i.acy, 0
  br i1 %lcmp.mod876.not.not, label %.lr.ph.i408.epil.preheader, label %.preheader.i414

.lr.ph.i408.epil.preheader:                       ; preds = %.preheader.i414.unr-lcssa, %bb.aq
  %.03036.i409.epil.init = phi i64 [ 0, %bb.aq ], [ %i.aej, %.preheader.i414.unr-lcssa ] ; 2 uses
  %.03135.i410.epil.init = phi i64 [ 0, %bb.aq ], [ %.132.i412.1, %.preheader.i414.unr-lcssa ]
  %lcmp.mod878 = trunc i64 %i.acw to i1
  call void @llvm.assume(i1 %lcmp.mod878)
  %i.acz = getelementptr [4 x i8], ptr %4, i64 %.03036.i409.epil.init
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !7
  %i.adb = zext i32 %i.ada to i64
  %i.adc = mul nuw i64 %i.adb, %i.acv
  %i.add = add nuw i64 %i.adc, %.03135.i410.epil.init ; 2 uses
  %.not.i411.epil = icmp eq i64 %i.add, 0
  br i1 %.not.i411.epil, label %.preheader.i414, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i408.epil.preheader
  %i.ade = getelementptr [4 x i8], ptr %i.acp, i64 %.03036.i409.epil.init ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !7
  %i.adg = zext i32 %i.adf to i64
  %i.adh = add nuw i64 %i.add, %i.adg             ; 2 uses
  %i.adi = trunc i64 %i.adh to i32
  store i32 %i.adi, ptr %i.ade, align 4, !tbaa !7
  %i.adj = lshr i64 %i.adh, 32
  br label %.preheader.i414

.preheader.i414:                                  ; preds = %.lr.ph.i408.epil.preheader, %bb.ar, %.preheader.i414.unr-lcssa
  %.132.i412.lcssa = phi i64 [ %.132.i412.1, %.preheader.i414.unr-lcssa ], [ %i.adj, %bb.ar ], [ 0, %.lr.ph.i408.epil.preheader ] ; 2 uses
  %i.adk = icmp uge i64 %i.act, %i.acq
  %i.adl = icmp eq i64 %.132.i412.lcssa, 0
  %or.cond38.i415 = select i1 %i.adk, i1 true, i1 %i.adl
  br i1 %or.cond38.i415, label %bary_muladd_1xN.exit423, label %.lr.ph41.i416

.lr.ph.i408:                                      ; preds = %bb.au, %.new
  %.03036.i409 = phi i64 [ 0, %.new ], [ %i.aej, %bb.au ] ; 4 uses
  %.03135.i410 = phi i64 [ 0, %.new ], [ %.132.i412.1, %bb.au ]
  %niter880 = phi i64 [ 0, %.new ], [ %niter880.next.1, %bb.au ]
  %i.adm = getelementptr [4 x i8], ptr %4, i64 %.03036.i409
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !7
  %i.ado = zext i32 %i.adn to i64
  %i.adp = mul nuw i64 %i.ado, %i.acv
  %i.adq = add nuw i64 %i.adp, %.03135.i410       ; 2 uses
  %.not.i411 = icmp eq i64 %i.adq, 0
  br i1 %.not.i411, label %.lr.ph.i408.1, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i408
  %i.adr = getelementptr [4 x i8], ptr %i.acp, i64 %.03036.i409 ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !7
  %i.adt = zext i32 %i.ads to i64
  %i.adu = add nuw i64 %i.adq, %i.adt             ; 2 uses
  %i.adv = trunc i64 %i.adu to i32
  store i32 %i.adv, ptr %i.adr, align 4, !tbaa !7
  %i.adw = lshr i64 %i.adu, 32
  br label %.lr.ph.i408.1

.lr.ph.i408.1:                                    ; preds = %bb.as, %.lr.ph.i408
  %.132.i412 = phi i64 [ %i.adw, %bb.as ], [ 0, %.lr.ph.i408 ]
  %i.adx = or disjoint i64 %.03036.i409, 1        ; 2 uses
  %i.ady = getelementptr [4 x i8], ptr %4, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !7
  %i.aea = zext i32 %i.adz to i64
  %i.aeb = mul nuw i64 %i.aea, %i.acv
  %i.aec = add nuw i64 %i.aeb, %.132.i412         ; 2 uses
  %.not.i411.1 = icmp eq i64 %i.aec, 0
  br i1 %.not.i411.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i408.1
  %i.aed = getelementptr [4 x i8], ptr %i.acp, i64 %i.adx ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !7
  %i.aef = zext i32 %i.aee to i64
  %i.aeg = add nuw i64 %i.aec, %i.aef             ; 2 uses
  %i.aeh = trunc i64 %i.aeg to i32
  store i32 %i.aeh, ptr %i.aed, align 4, !tbaa !7
  %i.aei = lshr i64 %i.aeg, 32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i408.1
  %.132.i412.1 = phi i64 [ %i.aei, %bb.at ], [ 0, %.lr.ph.i408.1 ] ; 3 uses
  %i.aej = add nuw i64 %.03036.i409, 2            ; 2 uses
  %niter880.next.1 = add i64 %niter880, 2         ; 2 uses
  %niter880.ncmp.1 = icmp eq i64 %niter880.next.1, %unroll_iter879
  br i1 %niter880.ncmp.1, label %.preheader.i414.unr-lcssa, label %.lr.ph.i408, !llvm.loop !16

.lr.ph41.i416:                                    ; preds = %.preheader.i414, %.lr.ph41.i416
  %.140.i417 = phi i64 [ %i.aeq, %.lr.ph41.i416 ], [ %i.act, %.preheader.i414 ] ; 2 uses
  %.239.i418 = phi i64 [ %i.aep, %.lr.ph41.i416 ], [ %.132.i412.lcssa, %.preheader.i414 ]
  %i.aek = getelementptr [4 x i8], ptr %i.acp, i64 %.140.i417 ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !7
  %i.aem = zext i32 %i.ael to i64
  %i.aen = add nuw nsw i64 %.239.i418, %i.aem     ; 2 uses
  %i.aeo = trunc i64 %i.aen to i32
  store i32 %i.aeo, ptr %i.aek, align 4, !tbaa !7
  %i.aep = lshr i64 %i.aen, 32                    ; 2 uses
  %i.aeq = add nuw i64 %.140.i417, 1              ; 2 uses
  %i.aer = icmp uge i64 %i.aeq, %i.acq
  %i.aes = icmp eq i64 %i.aep, 0
  %or.cond.i419 = select i1 %i.aer, i1 true, i1 %i.aes
  br i1 %or.cond.i419, label %bary_muladd_1xN.exit423, label %.lr.ph41.i416, !llvm.loop !18

bb.av:                                            ; preds = %bary_sub_one.exit
  br i1 %.not, label %bary_muladd_1xN.exit423, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.aet = getelementptr [4 x i8], ptr %0, i64 %.0191 ; 4 uses
  %i.aeu = sub i64 %1, %.0191                     ; 2 uses
  %i.aev = getelementptr [4 x i8], ptr %4, i64 %.0191
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !7 ; 2 uses
  %i.aex = icmp eq i32 %i.aew, 0
  br i1 %i.aex, label %bary_muladd_1xN.exit423, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.aey = zext i32 %i.aew to i64                 ; 3 uses
  %.not43.i424 = icmp eq i64 %.0, 0
  br i1 %.not43.i424, label %bary_muladd_1xN.exit423, label %.lr.ph.i425.preheader

.lr.ph.i425.preheader:                            ; preds = %bb.ax
  %xtraiter881 = and i64 %.0, 1
  %i.aez = icmp eq i64 %.0, 1
  br i1 %i.aez, label %.lr.ph.i425.epil.preheader, label %.lr.ph.i425.preheader.new

.lr.ph.i425.preheader.new:                        ; preds = %.lr.ph.i425.preheader
  %unroll_iter885 = and i64 %.0, -2
  br label %.lr.ph.i425

.preheader.i431.unr-lcssa:                        ; preds = %bb.bb
  %lcmp.mod882.not = icmp eq i64 %xtraiter881, 0
  br i1 %lcmp.mod882.not, label %.preheader.i431, label %.lr.ph.i425.epil.preheader

.lr.ph.i425.epil.preheader:                       ; preds = %.preheader.i431.unr-lcssa, %.lr.ph.i425.preheader
  %.03036.i426.epil.init = phi i64 [ 0, %.lr.ph.i425.preheader ], [ %i.agk, %.preheader.i431.unr-lcssa ] ; 2 uses
  %.03135.i427.epil.init = phi i64 [ 0, %.lr.ph.i425.preheader ], [ %.132.i429.1, %.preheader.i431.unr-lcssa ]
  %lcmp.mod884 = trunc i64 %.0 to i1
  call void @llvm.assume(i1 %lcmp.mod884)
  %i.afa = getelementptr [4 x i8], ptr %2, i64 %.03036.i426.epil.init
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !7
  %i.afc = zext i32 %i.afb to i64
  %i.afd = mul nuw i64 %i.afc, %i.aey
  %i.afe = add nuw i64 %i.afd, %.03135.i427.epil.init ; 2 uses
  %.not.i428.epil = icmp eq i64 %i.afe, 0
  br i1 %.not.i428.epil, label %.preheader.i431, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i425.epil.preheader
  %i.aff = getelementptr [4 x i8], ptr %i.aet, i64 %.03036.i426.epil.init ; 2 uses
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !7
  %i.afh = zext i32 %i.afg to i64
  %i.afi = add nuw i64 %i.afe, %i.afh             ; 2 uses
  %i.afj = trunc i64 %i.afi to i32
  store i32 %i.afj, ptr %i.aff, align 4, !tbaa !7
  %i.afk = lshr i64 %i.afi, 32
  br label %.preheader.i431

.preheader.i431:                                  ; preds = %.lr.ph.i425.epil.preheader, %bb.ay, %.preheader.i431.unr-lcssa
  %.132.i429.lcssa = phi i64 [ %.132.i429.1, %.preheader.i431.unr-lcssa ], [ %i.afk, %bb.ay ], [ 0, %.lr.ph.i425.epil.preheader ] ; 2 uses
  %i.afl = icmp uge i64 %.0, %i.aeu
  %i.afm = icmp eq i64 %.132.i429.lcssa, 0
  %or.cond38.i432 = select i1 %i.afl, i1 true, i1 %i.afm
  br i1 %or.cond38.i432, label %bary_muladd_1xN.exit423, label %.lr.ph41.i433

.lr.ph.i425:                                      ; preds = %bb.bb, %.lr.ph.i425.preheader.new
  %.03036.i426 = phi i64 [ 0, %.lr.ph.i425.preheader.new ], [ %i.agk, %bb.bb ] ; 4 uses
  %.03135.i427 = phi i64 [ 0, %.lr.ph.i425.preheader.new ], [ %.132.i429.1, %bb.bb ]
  %niter886 = phi i64 [ 0, %.lr.ph.i425.preheader.new ], [ %niter886.next.1, %bb.bb ]
  %i.afn = getelementptr [4 x i8], ptr %2, i64 %.03036.i426
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !7
  %i.afp = zext i32 %i.afo to i64
  %i.afq = mul nuw i64 %i.afp, %i.aey
  %i.afr = add nuw i64 %i.afq, %.03135.i427       ; 2 uses
  %.not.i428 = icmp eq i64 %i.afr, 0
  br i1 %.not.i428, label %.lr.ph.i425.1, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i425
  %i.afs = getelementptr [4 x i8], ptr %i.aet, i64 %.03036.i426 ; 2 uses
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !7
  %i.afu = zext i32 %i.aft to i64
  %i.afv = add nuw i64 %i.afr, %i.afu             ; 2 uses
  %i.afw = trunc i64 %i.afv to i32
  store i32 %i.afw, ptr %i.afs, align 4, !tbaa !7
  %i.afx = lshr i64 %i.afv, 32
  br label %.lr.ph.i425.1

.lr.ph.i425.1:                                    ; preds = %bb.az, %.lr.ph.i425
  %.132.i429 = phi i64 [ %i.afx, %bb.az ], [ 0, %.lr.ph.i425 ]
  %i.afy = or disjoint i64 %.03036.i426, 1        ; 2 uses
  %i.afz = getelementptr [4 x i8], ptr %2, i64 %i.afy
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !7
  %i.agb = zext i32 %i.aga to i64
  %i.agc = mul nuw i64 %i.agb, %i.aey
  %i.agd = add nuw i64 %i.agc, %.132.i429         ; 2 uses
  %.not.i428.1 = icmp eq i64 %i.agd, 0
  br i1 %.not.i428.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i425.1
  %i.age = getelementptr [4 x i8], ptr %i.aet, i64 %i.afy ; 2 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !7
  %i.agg = zext i32 %i.agf to i64
  %i.agh = add nuw i64 %i.agd, %i.agg             ; 2 uses
  %i.agi = trunc i64 %i.agh to i32
  store i32 %i.agi, ptr %i.age, align 4, !tbaa !7
  %i.agj = lshr i64 %i.agh, 32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i425.1
  %.132.i429.1 = phi i64 [ %i.agj, %bb.ba ], [ 0, %.lr.ph.i425.1 ] ; 3 uses
  %i.agk = add nuw i64 %.03036.i426, 2            ; 2 uses
  %niter886.next.1 = add i64 %niter886, 2         ; 2 uses
  %niter886.ncmp.1 = icmp eq i64 %niter886.next.1, %unroll_iter885
  br i1 %niter886.ncmp.1, label %.preheader.i431.unr-lcssa, label %.lr.ph.i425, !llvm.loop !16

.lr.ph41.i433:                                    ; preds = %.preheader.i431, %.lr.ph41.i433
  %.140.i434 = phi i64 [ %i.agr, %.lr.ph41.i433 ], [ %.0, %.preheader.i431 ] ; 2 uses
  %.239.i435 = phi i64 [ %i.agq, %.lr.ph41.i433 ], [ %.132.i429.lcssa, %.preheader.i431 ]
  %i.agl = getelementptr [4 x i8], ptr %i.aet, i64 %.140.i434 ; 2 uses
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !7
  %i.agn = zext i32 %i.agm to i64
  %i.ago = add nuw nsw i64 %.239.i435, %i.agn     ; 2 uses
  %i.agp = trunc i64 %i.ago to i32
  store i32 %i.agp, ptr %i.agl, align 4, !tbaa !7
  %i.agq = lshr i64 %i.ago, 32                    ; 2 uses
  %i.agr = add nuw i64 %.140.i434, 1              ; 2 uses
  %i.ags = icmp uge i64 %i.agr, %i.aeu
  %i.agt = icmp eq i64 %i.agq, 0
  %or.cond.i436 = select i1 %i.ags, i1 true, i1 %i.agt
  br i1 %or.cond.i436, label %bary_muladd_1xN.exit423, label %.lr.ph41.i433, !llvm.loop !18

bary_muladd_1xN.exit423:                          ; preds = %.lr.ph41.i416, %.lr.ph41.i433, %bb.ax, %.preheader.i431, %.preheader.i414, %bb.aw, %bary_muladd_1xN.exit, %bb.av
  %i.agu = load i64, ptr %i.aa, align 8, !tbaa !11
  %.not217 = icmp eq i64 %i.agu, 0
  br i1 %.not217, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bary_muladd_1xN.exit423
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.aa) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bary_muladd_1xN.exit423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_mul_toom3(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 3 uses
  %i.n = and i64 %i.m, 16384
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit18

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = lshr i64 %i.m, 15
  %i.r = and i64 %i.q, 511
  br label %BIGNUM_LEN.exit18

BIGNUM_LEN.exit18:                                ; preds = %bb.d, %bb.e
  %.0.i17 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 5 uses
  %i.s = add i64 %.0.i17, %.0.i                   ; 2 uses
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.u = xor i64 %i.m, %i.f
  %i.v = and i64 %i.u, 8192
  %.not = icmp eq i64 %i.v, 0
  %i.w = zext i1 %.not to i32
  %i.x = tail call fastcc i64 @bignew_1(i64 noundef %i.t, i64 noundef %i.s, i32 noundef %i.w) ; 2 uses
  %i.y = icmp ugt i64 %.0.i, %.0.i17
  %i.z = icmp ult i64 %.0.i17, 3
  %or.cond = or i1 %i.y, %i.z
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit18
  %i.aa = add i64 %.0.i17, 2
  %i.ab = udiv i64 %i.aa, 3
  %i.ac = shl nuw i64 %i.ab, 1
  %i.ad = icmp ult i64 %i.ac, %.0.i
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %BIGNUM_LEN.exit18
  %i.ae = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.1) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13
  %i.ah = and i64 %i.ag, 16384
  %.not.i19 = icmp eq i64 %i.ah, 0
  br i1 %.not.i19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  br label %BIGNUM_DIGITS.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.i, %bb.j
  %.0.i20 = phi ptr [ %i.ai, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = load i64, ptr %i.e, align 8, !tbaa !13
  %i.am = and i64 %i.al, 16384
  %.not.i21 = icmp eq i64 %i.am, 0
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.an = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit23

bb.l:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ao = getelementptr i8, ptr %i.e, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit23

BIGNUM_DIGITS.exit23:                             ; preds = %bb.k, %bb.l
  %.0.i22 = phi ptr [ %i.an, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !13
  %i.ar = and i64 %i.aq, 16384
  %.not.i24 = icmp eq i64 %i.ar, 0
  br i1 %.not.i24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %BIGNUM_DIGITS.exit23
  %i.as = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit26

bb.n:                                             ; preds = %BIGNUM_DIGITS.exit23
  %i.at = getelementptr i8, ptr %i.l, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit26

BIGNUM_DIGITS.exit26:                             ; preds = %bb.m, %bb.n
  %.0.i25 = phi ptr [ %i.as, %bb.m ], [ %i.au, %bb.n ]
  tail call fastcc void @bary_mul_toom3(ptr noundef %.0.i20, i64 noundef %i.s, ptr noundef %.0.i22, i64 noundef %.0.i, ptr noundef %.0.i25, i64 noundef %.0.i17, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !73
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.aw = load volatile i64, ptr %i.av, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !74
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.ay = load volatile i64, ptr %i.ax, align 8, !tbaa !11 ; 0 uses
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bary_mul_toom3(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp eq ptr %2, %4
  %i.d = icmp eq i64 %3, %5
  %i.e = and i1 %i.c, %i.d                        ; 2 uses
  %i.f = add i64 %5, 2                            ; 19 uses
  %i.g = udiv i64 %i.f, 3                         ; 117 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 46 uses
  %i.i = mul i64 %i.h, 6
  %i.j = shl nuw i64 %i.g, 1                      ; 93 uses
  %i.k = add nuw i64 %i.j, 2                      ; 8 uses
  %i.l = or disjoint i64 %i.j, 1                  ; 30 uses
  %reass.add2022 = add i64 %i.k, %i.j
  %reass.add = add i64 %reass.add2022, %i.l
  %reass.mul2023 = shl i64 %reass.add, 1
  %i.m = add i64 %i.k, %i.i
  %i.n = add i64 %i.m, %i.l
  %i.o = add i64 %i.n, %reass.mul2023             ; 3 uses
  %i.p = icmp ult i64 %7, %i.o
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = mul i64 %i.o, 3                          ; 3 uses
  %i.r = lshr i64 %i.q, 1                         ; 5 uses
  %i.s = icmp ult i64 %i.q, 512
  br i1 %i.s, label %bb.c, label %bb.d

end_hunk_1
begin_hunk_2_@bary_divmod_normal:bb.a
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %7, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit113:                     ; preds = %bb.k
  %i.y = shl nuw i64 %7, 2                        ; 2 uses
  %i.z = add i64 %i.y, 4
  %i.aa = lshr i64 %i.z, 3
  %i.ab = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.y, i64 noundef %i.aa) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.j, %rb_alloc_tmp_buffer2.exit113
  %i.ac = phi ptr [ %i.ab, %rb_alloc_tmp_buffer2.exit113 ], [ %i.w, %bb.j ], [ %2, %bb.h ] ; 3 uses
  br i1 %i.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ad = icmp ult i64 %i.c, 256
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.ae = shl nuw nsw i64 %i.c, 2
  %i.af = alloca i8, i64 %i.ae, align 16
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp ugt i64 %i.c, 4611686018427387903
  br i1 %i.ag, label %bb.q, label %.thread, !prof !32

bb.q:                                             ; preds = %bb.p
  call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.c, i64 noundef 4) #25
  unreachable

.thread:                                          ; preds = %bb.p
  %i.ah = shl nuw i64 %i.c, 2                     ; 2 uses
  %i.ai = add i64 %i.ah, 4
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.ah, i64 noundef %i.aj) #26
  br label %.lr.ph.i

bb.r:                                             ; preds = %bb.o, %bb.m, %bb.g
  %.089 = phi ptr [ %i.s, %bb.g ], [ %i.ac, %bb.m ], [ %i.ac, %bb.o ] ; 2 uses
  %.086 = phi ptr [ %i.t, %bb.g ], [ %0, %bb.m ], [ %i.af, %bb.o ] ; 2 uses
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %bary_small_lshift.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %bb.r
  %.086140 = phi ptr [ %i.ak, %.thread ], [ %.086, %bb.r ] ; 3 uses
  %.089138 = phi ptr [ %i.ac, %.thread ], [ %.089, %bb.r ]
  %i.al = zext nneg i32 %i.g to i64               ; 5 uses
  %i.am = add i64 %5, -1
  %xtraiter = and i64 %5, 3                       ; 3 uses
  %i.an = icmp ult i64 %i.am, 3
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %5, -4
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.new
  %.015.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bt, %bb.s ]
  %.01013.i = phi ptr [ %.086140, %.lr.ph.i.new ], [ %i.bs, %bb.s ] ; 5 uses
  %.01112.i = phi ptr [ %4, %.lr.ph.i.new ], [ %i.bm, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.s ]
  %i.ao = getelementptr i8, ptr %.01112.i, i64 4
  %i.ap = load i32, ptr %.01112.i, align 4, !tbaa !7
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw i64 %i.aq, %i.al                ; 2 uses
  %i.as = or i64 %i.ar, %.015.i
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr i8, ptr %.01013.i, i64 4
  store i32 %i.at, ptr %.01013.i, align 4, !tbaa !7
  %i.av = lshr i64 %i.ar, 32
  %i.aw = getelementptr i8, ptr %.01112.i, i64 8
  %i.ax = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw i64 %i.ay, %i.al                ; 2 uses
  %i.ba = or i64 %i.az, %i.av
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = getelementptr i8, ptr %.01013.i, i64 8
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !7
  %i.bd = lshr i64 %i.az, 32
  %i.be = getelementptr i8, ptr %.01112.i, i64 12
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw i64 %i.bg, %i.al                ; 2 uses
  %i.bi = or i64 %i.bh, %i.bd
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr i8, ptr %.01013.i, i64 12
  store i32 %i.bj, ptr %i.bc, align 4, !tbaa !7
  %i.bl = lshr i64 %i.bh, 32
  %i.bm = getelementptr i8, ptr %.01112.i, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw i64 %i.bo, %i.al                ; 2 uses
  %i.bq = or i64 %i.bp, %i.bl
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  store i32 %i.br, ptr %i.bk, align 4, !tbaa !7
  %i.bt = lshr i64 %i.bp, 32                      ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.s, !llvm.loop !88

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bt, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %.086140, %.lr.ph.i ], [ %i.bs, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %4, %.lr.ph.i ], [ %i.bm, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %.015.i.epil = phi i64 [ %.015.i.epil.init, %.epil.preheader ], [ %i.cb, %bb.t ]
  %.01013.i.epil = phi ptr [ %.01013.i.epil.init, %.epil.preheader ], [ %i.ca, %bb.t ] ; 2 uses
  %.01112.i.epil = phi ptr [ %.01112.i.epil.init, %.epil.preheader ], [ %i.bu, %bb.t ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.bu = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.bv = load i32, ptr %.01112.i.epil, align 4, !tbaa !7
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw i64 %i.bw, %i.al                ; 2 uses
  %i.by = or i64 %i.bx, %.015.i.epil
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.bz, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.cb = lshr i64 %i.bx, 32                      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.t, !llvm.loop !153

._crit_edge.loopexit.i:                           ; preds = %bb.t, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa189 = phi i64 [ %i.bt, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.cb, %bb.t ]
  %i.cc = trunc nuw i64 %.lcssa189 to i32
  br label %bary_small_lshift.exit

bary_small_lshift.exit:                           ; preds = %bb.r, %._crit_edge.loopexit.i
  %.086141 = phi ptr [ %.086, %bb.r ], [ %.086140, %._crit_edge.loopexit.i ] ; 14 uses
  %.089139 = phi ptr [ %.089, %bb.r ], [ %.089138, %._crit_edge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.r ], [ %i.cc, %._crit_edge.loopexit.i ]
  %.086141186 = ptrtoaddr ptr %.086141 to i64
  %i.cd = getelementptr [4 x i8], ptr %.086141, i64 %5
  store i32 %.0.lcssa.i, ptr %i.cd, align 4, !tbaa !7
  %.not.i115 = icmp eq i64 %7, 0
  br i1 %.not.i115, label %bary_small_lshift.exit124, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %bary_small_lshift.exit
  %i.ce = zext nneg i32 %i.g to i64               ; 5 uses
  %i.cf = add i64 %7, -1
  %xtraiter193 = and i64 %7, 3                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 3
  br i1 %i.cg, label %.epil.preheader192, label %.lr.ph.i116.new

.lr.ph.i116.new:                                  ; preds = %.lr.ph.i116
  %unroll_iter197 = and i64 %7, -4
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i116.new
  %.015.i117 = phi i64 [ 0, %.lr.ph.i116.new ], [ %i.dm, %bb.u ]
  %.01013.i119 = phi ptr [ %.089139, %.lr.ph.i116.new ], [ %i.dl, %bb.u ] ; 5 uses
  %.01112.i120 = phi ptr [ %6, %.lr.ph.i116.new ], [ %i.df, %bb.u ] ; 5 uses
  %niter198 = phi i64 [ 0, %.lr.ph.i116.new ], [ %niter198.next.3, %bb.u ]
  %i.ch = getelementptr i8, ptr %.01112.i120, i64 4
  %i.ci = load i32, ptr %.01112.i120, align 4, !tbaa !7
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw i64 %i.cj, %i.ce                ; 2 uses
  %i.cl = or i64 %i.ck, %.015.i117
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = getelementptr i8, ptr %.01013.i119, i64 4
  store i32 %i.cm, ptr %.01013.i119, align 4, !tbaa !7
  %i.co = lshr i64 %i.ck, 32
  %i.cp = getelementptr i8, ptr %.01112.i120, i64 8
  %i.cq = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw i64 %i.cr, %i.ce                ; 2 uses
  %i.ct = or i64 %i.cs, %i.co
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr i8, ptr %.01013.i119, i64 8
  store i32 %i.cu, ptr %i.cn, align 4, !tbaa !7
  %i.cw = lshr i64 %i.cs, 32
  %i.cx = getelementptr i8, ptr %.01112.i120, i64 12
  %i.cy = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, %i.ce                ; 2 uses
  %i.db = or i64 %i.da, %i.cw
  %i.dc = trunc i64 %i.db to i32
  %i.dd = getelementptr i8, ptr %.01013.i119, i64 12
  store i32 %i.dc, ptr %i.cv, align 4, !tbaa !7
  %i.de = lshr i64 %i.da, 32
  %i.df = getelementptr i8, ptr %.01112.i120, i64 16 ; 2 uses
  %i.dg = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw i64 %i.dh, %i.ce                ; 2 uses
  %i.dj = or i64 %i.di, %i.de
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr i8, ptr %.01013.i119, i64 16 ; 2 uses
  store i32 %i.dk, ptr %i.dd, align 4, !tbaa !7
  %i.dm = lshr i64 %i.di, 32                      ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %bary_small_lshift.exit124.thread184.unr-lcssa, label %bb.u, !llvm.loop !88

bb.v:                                             ; preds = %bb.a
  %.not103 = icmp eq ptr %0, null
  %.not104 = icmp ugt i64 %i.c, %1
  %or.cond112 = or i1 %.not103, %.not104
  br i1 %or.cond112, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.dn = icmp ult i64 %i.c, 256
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.do = shl nuw nsw i64 %i.c, 2
  %i.dp = alloca i8, i64 %i.do, align 16
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.dq = icmp ugt i64 %i.c, 4611686018427387903
  br i1 %i.dq, label %bb.z, label %rbimpl_size_mul_or_raise.exit.thread, !prof !32

bb.z:                                             ; preds = %bb.y
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.c, i64 noundef 4) #25
  unreachable

rbimpl_size_mul_or_raise.exit.thread:             ; preds = %bb.y
  %i.dr = shl nuw i64 %i.c, 2                     ; 2 uses
  %i.ds = add i64 %i.dr, 4
  %i.dt = lshr i64 %i.ds, 3
  %i.du = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.dr, i64 noundef %i.dt) #26
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x, %bb.v
  %.1 = phi ptr [ %0, %bb.v ], [ %i.dp, %bb.x ]   ; 2 uses
  %i.dv = icmp ugt i64 %5, 4611686018427387903
  br i1 %i.dv, label %bb.ab, label %rbimpl_size_mul_or_raise.exit, !prof !154

bb.ab:                                            ; preds = %bb.aa
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %5) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.aa
  %.not.i126 = icmp eq i64 %5, 0
  br i1 %.not.i126, label %bary_small_lshift.exit124.thread, label %bb.ac

bb.ac:                                            ; preds = %rbimpl_size_mul_or_raise.exit.thread, %rbimpl_size_mul_or_raise.exit
  %.1179182 = phi ptr [ %i.du, %rbimpl_size_mul_or_raise.exit.thread ], [ %.1, %rbimpl_size_mul_or_raise.exit ] ; 2 uses
  %i.dw = shl nuw i64 %5, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.1179182, ptr noundef nonnull readonly align 1 %4, i64 noundef range(i64 1, 0) %i.dw, i1 noundef false) #23
  br label %bary_small_lshift.exit124.thread

bary_small_lshift.exit124:                        ; preds = %bary_small_lshift.exit
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.086141, i64 noundef %i.c, ptr noundef nonnull %.089139, i64 noundef %7)
  br i1 %.not105, label %.loopexit151, label %bary_small_rshift.exit

bary_small_lshift.exit124.thread184.unr-lcssa:    ; preds = %bb.u
  %lcmp.mod195.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod195.not, label %bary_small_lshift.exit124.thread184, label %.epil.preheader192

.epil.preheader192:                               ; preds = %bary_small_lshift.exit124.thread184.unr-lcssa, %.lr.ph.i116
  %.015.i117.epil.init = phi i64 [ 0, %.lr.ph.i116 ], [ %i.dm, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %.01013.i119.epil.init = phi ptr [ %.089139, %.lr.ph.i116 ], [ %i.dl, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %.01112.i120.epil.init = phi ptr [ %6, %.lr.ph.i116 ], [ %i.df, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %lcmp.mod196 = icmp ne i64 %xtraiter193, 0
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader192
  %.015.i117.epil = phi i64 [ %.015.i117.epil.init, %.epil.preheader192 ], [ %i.ee, %bb.ad ]
  %.01013.i119.epil = phi ptr [ %.01013.i119.epil.init, %.epil.preheader192 ], [ %i.ed, %bb.ad ] ; 2 uses
  %.01112.i120.epil = phi ptr [ %.01112.i120.epil.init, %.epil.preheader192 ], [ %i.dx, %bb.ad ] ; 2 uses
  %epil.iter194 = phi i64 [ 0, %.epil.preheader192 ], [ %epil.iter194.next, %bb.ad ]
  %i.dx = getelementptr i8, ptr %.01112.i120.epil, i64 4
  %i.dy = load i32, ptr %.01112.i120.epil, align 4, !tbaa !7
  %i.dz = zext i32 %i.dy to i64
  %i.ea = shl nuw i64 %i.dz, %i.ce                ; 2 uses
  %i.eb = or i64 %i.ea, %.015.i117.epil
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr i8, ptr %.01013.i119.epil, i64 4
  store i32 %i.ec, ptr %.01013.i119.epil, align 4, !tbaa !7
  %i.ee = lshr i64 %i.ea, 32
  %epil.iter194.next = add i64 %epil.iter194, 1   ; 2 uses
  %epil.iter194.cmp.not = icmp eq i64 %epil.iter194.next, %xtraiter193
  br i1 %epil.iter194.cmp.not, label %bary_small_lshift.exit124.thread184, label %bb.ad, !llvm.loop !155

bary_small_lshift.exit124.thread184:              ; preds = %bb.ad, %bary_small_lshift.exit124.thread184.unr-lcssa
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.086141, i64 noundef %i.c, ptr noundef nonnull %.089139, i64 noundef %7)
  br i1 %.not105, label %.loopexit151, label %.lr.ph.i128

bary_small_lshift.exit124.thread:                 ; preds = %bb.ac, %rbimpl_size_mul_or_raise.exit
  %.1179183 = phi ptr [ %.1179182, %bb.ac ], [ %.1, %rbimpl_size_mul_or_raise.exit ] ; 6 uses
  %i.ef = getelementptr [4 x i8], ptr %.1179183, i64 %5
  store i32 0, ptr %i.ef, align 4, !tbaa !7
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.1179183, i64 noundef %i.c, ptr noundef nonnull %6, i64 noundef %7)
  %.not107144 = icmp eq ptr %2, null
  br i1 %.not107144, label %.loopexit151, label %.thread147

.lr.ph.i128:                                      ; preds = %bary_small_lshift.exit124.thread184
  %i.eg = zext nneg i32 %i.g to i64               ; 4 uses
  %min.iters.check = icmp ult i64 %7, 4
  %i.eh = sub i64 %i.a, %.086141186
  %diff.check = icmp ugt i64 %i.eh, -16
  %or.cond188 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond188, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i128
  %n.vec = and i64 %7, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = xor i64 %index, -1
  %i.ej = add i64 %7, %i.ei                       ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %.086141, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 -12
  %wide.load = load <4 x i32>, ptr %i.el, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.em = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.en = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.em, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.eo = shl nuw <4 x i64> %i.en, splat (i64 32)
  %i.ep = or disjoint <4 x i64> %i.eo, %i.em
  %i.eq = lshr <4 x i64> %i.ep, %broadcast.splat
  %i.er = trunc <4 x i64> %i.eq to <4 x i32>
  %i.es = getelementptr [4 x i8], ptr %2, i64 %i.ej
  %i.et = getelementptr i8, ptr %i.es, i64 -12
  %reverse187 = shufflevector <4 x i32> %i.er, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse187, ptr %i.et, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.em, i64 3
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %bary_small_rshift.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i128, %middle.block
  %.017.i.ph = phi i64 [ 0, %.lr.ph.i128 ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.ph = phi i64 [ 0, %.lr.ph.i128 ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %.017.i.ph, 1
  %xtraiter199 = and i64 %7, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.prol = shl nuw i64 %.014.in16.i.ph, 32
  %i.ev = xor i64 %.017.i.ph, -1
  %i.ew = add i64 %7, %i.ev                       ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %.086141, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = or disjoint i64 %.014.i.prol, %i.ez
  %i.fb = lshr i64 %i.fa, %i.eg
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = getelementptr [4 x i8], ptr %2, i64 %i.ew
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !7
  %i.fe = or disjoint i64 %.017.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %scalar.ph.preheader ], [ %i.fe, %scalar.ph.prol ]
  %.014.in16.i.unr = phi i64 [ %.014.in16.i.ph, %scalar.ph.preheader ], [ %i.ez, %scalar.ph.prol ]
  %i.ff = icmp eq i64 %7, %.neg
  br i1 %i.ff, label %bary_small_rshift.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.fx, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.fs, %scalar.ph ], [ %.014.in16.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.fg = xor i64 %.017.i, -1
  %i.fh = add i64 %7, %i.fg                       ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %.086141, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = or disjoint i64 %.014.i, %i.fk
  %i.fm = lshr i64 %i.fl, %i.eg
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr [4 x i8], ptr %2, i64 %i.fh
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !7
  %.014.i.1 = shl nuw i64 %i.fk, 32
  %reass.sub = sub i64 %7, %.017.i
  %i.fp = add i64 %reass.sub, -2                  ; 2 uses
  %i.fq = getelementptr [4 x i8], ptr %.086141, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = or disjoint i64 %.014.i.1, %i.fs
  %i.fu = lshr i64 %i.ft, %i.eg
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr [4 x i8], ptr %2, i64 %i.fp
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !7
  %i.fx = add nuw i64 %.017.i, 2                  ; 2 uses
  %exitcond.not.i129.1 = icmp eq i64 %i.fx, %7
  br i1 %exitcond.not.i129.1, label %bary_small_rshift.exit, label %scalar.ph, !llvm.loop !157

.thread147:                                       ; preds = %bary_small_lshift.exit124.thread
  %i.fy = icmp ugt i64 %7, 4611686018427387903
end_hunk_2
begin_hunk_3_@bary_pack:bb.a

ruby_nonempty_memcpy.exit373.thread:              ; preds = %rbimpl_size_mul_or_raise.exit370
  %i.ex = icmp sgt i32 %spec.select, -1
  %i.ey = and i32 %7, 128
  %.not319657 = icmp eq i32 %i.ey, 0
  %or.cond355658 = or i1 %.not319657, %i.ex
  br i1 %or.cond355658, label %bary_2comp.exit.thread.thread, label %bary_2comp.exit.thread663

bary_2comp.exit.thread.thread:                    ; preds = %ruby_nonempty_memcpy.exit373.thread
  %i.ez = and i32 %7, 80
  %.not320.not666 = icmp eq i32 %i.ez, 16
  br label %.loopexit554

bb.ao:                                            ; preds = %ruby_nonempty_memcpy.exit373
  %.not27.i = icmp eq i64 %i.en, 0
  br i1 %.not27.i, label %bary_2comp.exit, label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %bb.ao, %bb.ap
  %.023.i = phi i64 [ %i.fc, %bb.ap ], [ 0, %bb.ao ] ; 5 uses
  %i.fa = getelementptr [4 x i8], ptr %3, i64 %.023.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7  ; 2 uses
  %.not.i375 = icmp eq i32 %i.fb, 0
  br i1 %.not.i375, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i374
  %i.fc = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i376 = icmp eq i64 %i.fc, %i.en
  br i1 %exitcond.not.i376, label %bary_2comp.exit, label %.lr.ph.i374, !llvm.loop !55

bb.aq:                                            ; preds = %.lr.ph.i374
  %i.fd = getelementptr [4 x i8], ptr %3, i64 %.023.i
  %i.fe = sub i32 0, %i.fb
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !7
  %.124.i = add i64 %.023.i, 1                    ; 4 uses
  %i.ff = icmp ult i64 %.124.i, %i.en
  br i1 %i.ff, label %.lr.ph26.i.preheader, label %bary_2comp.exit.thread

.lr.ph26.i.preheader:                             ; preds = %bb.aq
  %i.fg = xor i64 %.023.i, -1
  %i.fh = add i64 %i.en, %i.fg                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fh, 8
  br i1 %min.iters.check, label %.lr.ph26.i.preheader731, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.preheader
  %n.vec = and i64 %i.fh, -8                      ; 3 uses
  %i.fi = add i64 %.124.i, %n.vec
  %i.fj = getelementptr [4 x i8], ptr %3, i64 %.124.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fk, align 4, !tbaa !7
  %wide.load695 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !7
  %i.fm = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.fn = xor <4 x i32> %wide.load695, splat (i32 -1)
  store <4 x i32> %i.fm, ptr %i.fk, align 4, !tbaa !7
  store <4 x i32> %i.fn, ptr %i.fl, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit.thread, label %.lr.ph26.i.preheader731

.lr.ph26.i.preheader731:                          ; preds = %.lr.ph26.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.fi, %middle.block ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader731, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader731 ] ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %3, i64 %.125.i ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !7
  %i.fr = xor i32 %i.fq, -1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %i.en
  br i1 %exitcond31.not.i, label %bary_2comp.exit.thread, label %.lr.ph26.i, !llvm.loop !184

bary_2comp.exit:                                  ; preds = %bb.ap, %bb.ao
  br i1 %.not317, label %bary_2comp.exit.thread663, label %bary_2comp.exit.thread

bary_2comp.exit.thread663:                        ; preds = %ruby_nonempty_memcpy.exit373.thread, %bary_2comp.exit
  %i.fs = add nsw i64 %i.em, -1
  %i.ft = icmp eq i64 %i.en, %i.fs
  br i1 %i.ft, label %bb.ar, label %bary_2comp.exit.thread

bb.ar:                                            ; preds = %bary_2comp.exit.thread663
  %i.fu = getelementptr [4 x i8], ptr %1, i64 %i.en
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !7
  %i.fw = icmp ne i32 %i.fv, 1
  %spec.select356 = zext i1 %i.fw to i32
  br label %bary_2comp.exit.thread

bary_2comp.exit.thread:                           ; preds = %.lr.ph26.i, %middle.block, %bb.aq, %bb.ar, %bary_2comp.exit, %bary_2comp.exit.thread663, %ruby_nonempty_memcpy.exit373
  %.2286 = phi i32 [ %.0284, %ruby_nonempty_memcpy.exit373 ], [ %.0284, %bary_2comp.exit ], [ %spec.select356, %bb.ar ], [ 1, %bary_2comp.exit.thread663 ], [ %.0284, %bb.aq ], [ %.0284, %middle.block ], [ %.0284, %.lr.ph26.i ] ; 3 uses
  %i.fx = and i32 %7, 80
  %.not320.not = icmp eq i32 %i.fx, 16            ; 4 uses
  %i.fy = icmp ne i64 %i.en, 0
  %or.cond608 = and i1 %.not320.not, %i.fy
  br i1 %or.cond608, label %.lr.ph598.preheader, label %.loopexit554

.lr.ph598.preheader:                              ; preds = %bary_2comp.exit.thread
  %min.iters.check697 = icmp ult i64 %i.en, 8
  br i1 %min.iters.check697, label %.lr.ph598.preheader730, label %vector.ph698

vector.ph698:                                     ; preds = %.lr.ph598.preheader
  %n.vec700 = and i64 %i.en, -8                   ; 3 uses
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph698
  %index702 = phi i64 [ 0, %vector.ph698 ], [ %index.next705, %vector.body701 ] ; 2 uses
  %i.fz = getelementptr [4 x i8], ptr %3, i64 %index702 ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 16     ; 2 uses
  %wide.load703 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !7
  %wide.load704 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !7
  %i.gb = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load703)
  %i.gc = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load704)
  store <4 x i32> %i.gb, ptr %i.fz, align 4, !tbaa !7
  store <4 x i32> %i.gc, ptr %i.ga, align 4, !tbaa !7
  %index.next705 = add nuw i64 %index702, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next705, %n.vec700
  br i1 %i.gd, label %middle.block706, label %vector.body701, !llvm.loop !185

middle.block706:                                  ; preds = %vector.body701
  %cmp.n707 = icmp eq i64 %i.en, %n.vec700
  br i1 %cmp.n707, label %.loopexit554, label %.lr.ph598.preheader730

.lr.ph598.preheader730:                           ; preds = %.lr.ph598.preheader, %middle.block706
  %.0279597.ph = phi i64 [ 0, %.lr.ph598.preheader ], [ %n.vec700, %middle.block706 ]
  br label %.lr.ph598

.lr.ph598:                                        ; preds = %.lr.ph598.preheader730, %.lr.ph598
  %.0279597 = phi i64 [ %i.gh, %.lr.ph598 ], [ %.0279597.ph, %.lr.ph598.preheader730 ] ; 2 uses
  %i.ge = getelementptr [4 x i8], ptr %3, i64 %.0279597 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !7
  %i.gg = tail call noundef i32 @llvm.bswap.i32(i32 %i.gf)
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !7
  %i.gh = add nuw i64 %.0279597, 1                ; 2 uses
  %exitcond628.not = icmp eq i64 %i.gh, %i.en
  br i1 %exitcond628.not, label %.loopexit554, label %.lr.ph598, !llvm.loop !186

.loopexit554:                                     ; preds = %.lr.ph598, %middle.block706, %bary_2comp.exit.thread.thread, %bary_2comp.exit.thread
  %.not320.not669 = phi i1 [ %.not320.not666, %bary_2comp.exit.thread.thread ], [ %.not320.not, %bary_2comp.exit.thread ], [ %.not320.not, %middle.block706 ], [ %.not320.not, %.lr.ph598 ]
  %.2286668 = phi i32 [ 1, %bary_2comp.exit.thread.thread ], [ %.2286, %bary_2comp.exit.thread ], [ %.2286, %middle.block706 ], [ %.2286, %.lr.ph598 ]
  %i.gi = xor i1 %.not315, %.not320.not669
  %i.gj = icmp eq i64 %4, 0
  %or.cond611.not = or i1 %i.gj, %i.gi
  br i1 %or.cond611.not, label %.loopexit, label %.lr.ph601.preheader

.lr.ph601.preheader:                              ; preds = %.loopexit554
  %xtraiter745 = and i64 %4, 1
  %i.gk = icmp eq i64 %4, 1
  br i1 %i.gk, label %.lr.ph601.epil.preheader, label %.lr.ph601.preheader.new

.lr.ph601.preheader.new:                          ; preds = %.lr.ph601.preheader
  %unroll_iter748 = and i64 %4, -2
  br label %.lr.ph601

.lr.ph601:                                        ; preds = %bary_swap.exit.1, %.lr.ph601.preheader.new
  %.0272600 = phi ptr [ %3, %.lr.ph601.preheader.new ], [ %i.gr, %bary_swap.exit.1 ] ; 3 uses
  %niter749 = phi i64 [ 0, %.lr.ph601.preheader.new ], [ %niter749.next.1, %bary_swap.exit.1 ]
  %i.gl = getelementptr i8, ptr %.0272600, i64 %5 ; 4 uses
  %.01112.i = getelementptr i8, ptr %i.gl, i64 -4 ; 2 uses
  %i.gm = icmp ult ptr %.0272600, %.01112.i
  br i1 %i.gm, label %.lr.ph.i377, label %bary_swap.exit

.lr.ph.i377:                                      ; preds = %.lr.ph601, %.lr.ph.i377
  %.01114.i = phi ptr [ %.011.i, %.lr.ph.i377 ], [ %.01112.i, %.lr.ph601 ] ; 3 uses
  %.013.i = phi ptr [ %i.gp, %.lr.ph.i377 ], [ %.0272600, %.lr.ph601 ] ; 3 uses
  %i.gn = load i32, ptr %.013.i, align 4, !tbaa !7
  %i.go = load i32, ptr %.01114.i, align 4, !tbaa !7
  store i32 %i.go, ptr %.013.i, align 4, !tbaa !7
  store i32 %i.gn, ptr %.01114.i, align 4, !tbaa !7
  %i.gp = getelementptr i8, ptr %.013.i, i64 4    ; 2 uses
  %.011.i = getelementptr i8, ptr %.01114.i, i64 -4 ; 2 uses
  %i.gq = icmp ult ptr %i.gp, %.011.i
  br i1 %i.gq, label %.lr.ph.i377, label %bary_swap.exit, !llvm.loop !187

bary_swap.exit:                                   ; preds = %.lr.ph.i377, %.lr.ph601
  %i.gr = getelementptr i8, ptr %i.gl, i64 %5     ; 3 uses
  %.01112.i.1 = getelementptr i8, ptr %i.gr, i64 -4 ; 2 uses
  %i.gs = icmp ult ptr %i.gl, %.01112.i.1
  br i1 %i.gs, label %.lr.ph.i377.1, label %bary_swap.exit.1

.lr.ph.i377.1:                                    ; preds = %bary_swap.exit, %.lr.ph.i377.1
  %.01114.i.1 = phi ptr [ %.011.i.1, %.lr.ph.i377.1 ], [ %.01112.i.1, %bary_swap.exit ] ; 3 uses
  %.013.i.1 = phi ptr [ %i.gv, %.lr.ph.i377.1 ], [ %i.gl, %bary_swap.exit ] ; 3 uses
  %i.gt = load i32, ptr %.013.i.1, align 4, !tbaa !7
  %i.gu = load i32, ptr %.01114.i.1, align 4, !tbaa !7
  store i32 %i.gu, ptr %.013.i.1, align 4, !tbaa !7
  store i32 %i.gt, ptr %.01114.i.1, align 4, !tbaa !7
  %i.gv = getelementptr i8, ptr %.013.i.1, i64 4  ; 2 uses
  %.011.i.1 = getelementptr i8, ptr %.01114.i.1, i64 -4 ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %.011.i.1
  br i1 %i.gw, label %.lr.ph.i377.1, label %bary_swap.exit.1, !llvm.loop !187

bary_swap.exit.1:                                 ; preds = %.lr.ph.i377.1, %bary_swap.exit
  %niter749.next.1 = add i64 %niter749, 2         ; 2 uses
  %niter749.ncmp.1 = icmp eq i64 %niter749.next.1, %unroll_iter748
  br i1 %niter749.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph601, !llvm.loop !188

.loopexit.loopexit.unr-lcssa:                     ; preds = %bary_swap.exit.1
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %.loopexit, label %.lr.ph601.epil.preheader

.lr.ph601.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph601.preheader
  %.0272600.epil.init = phi ptr [ %3, %.lr.ph601.preheader ], [ %i.gr, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod747 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod747)
  %i.gx = getelementptr i8, ptr %.0272600.epil.init, i64 %5
  %.01112.i.epil = getelementptr i8, ptr %i.gx, i64 -4 ; 2 uses
  %i.gy = icmp ult ptr %.0272600.epil.init, %.01112.i.epil
  br i1 %i.gy, label %.lr.ph.i377.epil, label %.loopexit

.lr.ph.i377.epil:                                 ; preds = %.lr.ph601.epil.preheader, %.lr.ph.i377.epil
  %.01114.i.epil = phi ptr [ %.011.i.epil, %.lr.ph.i377.epil ], [ %.01112.i.epil, %.lr.ph601.epil.preheader ] ; 3 uses
  %.013.i.epil = phi ptr [ %i.hb, %.lr.ph.i377.epil ], [ %.0272600.epil.init, %.lr.ph601.epil.preheader ] ; 3 uses
  %i.gz = load i32, ptr %.013.i.epil, align 4, !tbaa !7
  %i.ha = load i32, ptr %.01114.i.epil, align 4, !tbaa !7
  store i32 %i.ha, ptr %.013.i.epil, align 4, !tbaa !7
  store i32 %i.gz, ptr %.01114.i.epil, align 4, !tbaa !7
  %i.hb = getelementptr i8, ptr %.013.i.epil, i64 4 ; 2 uses
  %.011.i.epil = getelementptr i8, ptr %.01114.i.epil, i64 -4 ; 2 uses
  %i.hc = icmp ult ptr %i.hb, %.011.i.epil
  br i1 %i.hc, label %.lr.ph.i377.epil, label %.loopexit, !llvm.loop !187

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i377.epil, %.lr.ph601.epil.preheader, %.loopexit554
  %i.hd = getelementptr [4 x i8], ptr %3, i64 %i.en
  %.01112.i378 = getelementptr i8, ptr %i.hd, i64 -4 ; 2 uses
  %i.he = icmp uge ptr %3, %.01112.i378
  %or.cond542.not = or i1 %.not315, %i.he
  br i1 %or.cond542.not, label %bary_swap.exit383, label %.lr.ph.i379

.lr.ph.i379:                                      ; preds = %.loopexit, %.lr.ph.i379
  %.01114.i380 = phi ptr [ %.011.i382, %.lr.ph.i379 ], [ %.01112.i378, %.loopexit ] ; 3 uses
  %.013.i381 = phi ptr [ %i.hh, %.lr.ph.i379 ], [ %3, %.loopexit ] ; 3 uses
  %i.hf = load i32, ptr %.013.i381, align 4, !tbaa !7
  %i.hg = load i32, ptr %.01114.i380, align 4, !tbaa !7
  store i32 %i.hg, ptr %.013.i381, align 4, !tbaa !7
  store i32 %i.hf, ptr %.01114.i380, align 4, !tbaa !7
  %i.hh = getelementptr i8, ptr %.013.i381, i64 4 ; 2 uses
  %.011.i382 = getelementptr i8, ptr %.01114.i380, i64 -4 ; 2 uses
  %i.hi = icmp ult ptr %i.hh, %.011.i382
  br i1 %i.hi, label %.lr.ph.i379, label %bary_swap.exit383, !llvm.loop !187

bary_swap.exit383:                                ; preds = %.lr.ph.i379, %.loopexit
  %.not322 = icmp ne i32 %.2286668, 0
  %i.hj = zext i1 %.not322 to i32
  %spec.select357 = shl nsw i32 %spec.select, %i.hj
  br label %.thread494

bb.as:                                            ; preds = %bb.ag, %.critedge
  %i.hk = mul i64 %5, %4                          ; 3 uses
  %i.hl = getelementptr i8, ptr %3, i64 %i.hk
  %i.hm = icmp eq i64 %i.hk, 0
  br i1 %i.hm, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.hn = and i32 %7, 128
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = icmp sgt i32 %spec.select, -1
  %or.cond11 = or i1 %i.ho, %i.hp
  br i1 %or.cond11, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hq = shl nsw i32 %spec.select, 1
  br label %bb.bq

bb.av:                                            ; preds = %bb.at
  %i.hr = ptrtoint ptr %.0476 to i64
  %i.hs = ptrtoint ptr %1 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = icmp eq i64 %i.ht, 4
  br i1 %i.hu, label %bb.aw, label %bb.bp

bb.aw:                                            ; preds = %bb.av
  %i.hv = load i32, ptr %1, align 4, !tbaa !7
  %i.hw = icmp eq i32 %i.hv, 1
  br i1 %i.hw, label %bb.bq, label %bb.bp

bb.ax:                                            ; preds = %bb.as
  br i1 %i.f, label %.thread670, label %bb.ay

.thread670:                                       ; preds = %bb.ax
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %3, i8 noundef 0, i64 noundef %i.hk, i1 noundef false) #23
  br label %.thread494

bb.ay:                                            ; preds = %bb.ax
  %i.hx = icmp ult ptr %3, %i.hl
  %or.cond359 = and i1 %i.hx, %i.b
  br i1 %or.cond359, label %bb.az, label %bb.bq

bb.az:                                            ; preds = %bb.ay
  %i.hy = and i32 %7, 3
  %i.hz = icmp eq i32 %i.hy, 1                    ; 3 uses
  %i.ia = add i64 %4, -1
  %i.ib = mul i64 %5, %i.ia                       ; 2 uses
  %i.ic = sub i64 0, %5
  %.035.i = select i1 %i.hz, i64 %i.ib, i64 0
  %.034.i = select i1 %i.hz, i64 %i.ic, i64 %5
  %.033.i = select i1 %i.hz, i64 0, i64 %i.ib
  %i.id = trunc i64 %6 to i32
  %i.ie = and i32 %i.id, 7                        ; 2 uses
  %i.if = icmp ne i32 %i.ie, 0                    ; 3 uses
  %i.ig = lshr i64 %6, 3
  %i.ih = sub i64 %5, %i.ig
  %i.ii = sext i1 %i.if to i64
  %spec.select.i = add i64 %i.ih, %i.ii           ; 4 uses
  %i.ij = and i32 %7, 112
  %i.ik = icmp eq i32 %i.ij, 16                   ; 2 uses
  %i.il = add i64 %5, -1
  %.032.i = select i1 %i.ik, i64 %i.il, i64 0
  %.0.i384 = select i1 %i.ik, i64 -1, i64 1       ; 11 uses
  %i.im = sub nuw nsw i32 8, %i.ie                ; 2 uses
  %spec.store.select.i = select i1 %i.if, i32 %i.im, i32 0
  %i.in = getelementptr i8, ptr %3, i64 %.035.i
  %i.io = getelementptr i8, ptr %3, i64 %.033.i
  %.not612 = icmp eq i64 %spec.select.i, 0
  %i.ip = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ip
  %i.iq = xor i64 %notmask.i, -1
  %i.ir = add i64 %spec.select.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge578, %bb.az
  %.0486 = phi i32 [ 0, %bb.az ], [ %.2488, %._crit_edge578 ] ; 2 uses
  %.0477 = phi i64 [ 0, %bb.az ], [ %.2479, %._crit_edge578 ] ; 2 uses
  %.0471 = phi ptr [ %1, %bb.az ], [ %.2473, %._crit_edge578 ] ; 2 uses
  %.0270 = phi ptr [ %i.in, %bb.az ], [ %i.kn, %._crit_edge578 ] ; 3 uses
  %i.is = getelementptr i8, ptr %.0270, i64 %.032.i ; 2 uses
  br i1 %.not612, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba, %integer_pack_fill_dd.exit
  %.0264569 = phi ptr [ %i.jg, %integer_pack_fill_dd.exit ], [ %i.is, %bb.ba ] ; 2 uses
  %.0267568 = phi i64 [ %i.jh, %integer_pack_fill_dd.exit ], [ 0, %bb.ba ]
  %.1472567 = phi ptr [ %.4475, %integer_pack_fill_dd.exit ], [ %.0471, %bb.ba ] ; 5 uses
  %.1478566 = phi i64 [ %i.jd, %integer_pack_fill_dd.exit ], [ %.0477, %bb.ba ] ; 2 uses
  %.1487565 = phi i32 [ %i.je, %integer_pack_fill_dd.exit ], [ %.0486, %bb.ba ] ; 4 uses
  %i.it = icmp ult ptr %.1472567, %.0476
  %notsub.i = add i32 %.1487565, -65
  %i.iu = icmp slt i32 %notsub.i, -32
  %or.cond544 = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %or.cond544, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph
  %i.iv = getelementptr i8, ptr %.1472567, i64 4
  %i.iw = load i32, ptr %.1472567, align 4, !tbaa !7
  %i.ix = zext i32 %i.iw to i64
  %i.iy = zext nneg i32 %.1487565 to i64
  %i.iz = shl i64 %i.ix, %i.iy
  %i.ja = or i64 %i.iz, %.1478566
  %i.jb = add nsw i32 %.1487565, 32
  br label %integer_pack_fill_dd.exit

bb.bc:                                            ; preds = %.lr.ph
  %i.jc = icmp eq ptr %.1472567, %.0476
  %spec.select545 = select i1 %i.jc, i32 64, i32 %.1487565
  br label %integer_pack_fill_dd.exit

integer_pack_fill_dd.exit:                        ; preds = %bb.bc, %bb.bb
  %.3489 = phi i32 [ %spec.select545, %bb.bc ], [ %i.jb, %bb.bb ]
  %.4481 = phi i64 [ %.1478566, %bb.bc ], [ %i.ja, %bb.bb ] ; 2 uses
  %.4475 = phi ptr [ %.1472567, %bb.bc ], [ %i.iv, %bb.bb ] ; 2 uses
  %i.jd = lshr i64 %.4481, 8                      ; 2 uses
  %i.je = add i32 %.3489, -8                      ; 2 uses
  %i.jf = trunc i64 %.4481 to i8
  store i8 %i.jf, ptr %.0264569, align 1, !tbaa !15
  %i.jg = getelementptr i8, ptr %.0264569, i64 %.0.i384 ; 2 uses
  %i.jh = add nuw i64 %.0267568, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jh, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %integer_pack_fill_dd.exit, %bb.ba
  %.1487.lcssa = phi i32 [ %.0486, %bb.ba ], [ %i.je, %integer_pack_fill_dd.exit ] ; 5 uses
  %.1478.lcssa = phi i64 [ %.0477, %bb.ba ], [ %i.jd, %integer_pack_fill_dd.exit ] ; 3 uses
  %.1472.lcssa = phi ptr [ %.0471, %bb.ba ], [ %.4475, %integer_pack_fill_dd.exit ] ; 6 uses
  %.0264.lcssa = phi ptr [ %i.is, %bb.ba ], [ %i.jg, %integer_pack_fill_dd.exit ] ; 3 uses
  br i1 %i.if, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %._crit_edge
  %i.ji = icmp ult ptr %.1472.lcssa, %.0476
  %notsub.i387 = add i32 %.1487.lcssa, -65
  %i.jj = icmp slt i32 %notsub.i387, -32
  %or.cond547 = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond547, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jk = getelementptr i8, ptr %.1472.lcssa, i64 4
  %i.jl = load i32, ptr %.1472.lcssa, align 4, !tbaa !7
  %i.jm = zext i32 %i.jl to i64
  %i.jn = zext nneg i32 %.1487.lcssa to i64
  %i.jo = shl i64 %i.jm, %i.jn
  %i.jp = or i64 %i.jo, %.1478.lcssa
  %i.jq = add nsw i32 %.1487.lcssa, 32
  br label %integer_pack_fill_dd.exit388

bb.bf:                                            ; preds = %bb.bd
  %i.jr = icmp eq ptr %.1472.lcssa, %.0476
end_hunk_3
begin_hunk_4_@bary_unpack_internal:bb.a
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7  ; 2 uses
  %.not.i210 = icmp eq i32 %i.ar, 0
  br i1 %.not.i210, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.as = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %1
  br i1 %exitcond.not.i, label %bary_2comp.exit, label %.lr.ph.i, !llvm.loop !55

bb.s:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr [4 x i8], ptr %0, i64 %.023.i
  %i.au = sub i32 0, %i.ar
  store i32 %i.au, ptr %i.at, align 4, !tbaa !7
  %.124.i = add i64 %.023.i, 1                    ; 4 uses
  %i.av = icmp ult i64 %.124.i, %1
  br i1 %i.av, label %.lr.ph26.i.preheader, label %bary_2comp.exit

.lr.ph26.i.preheader:                             ; preds = %bb.s
  %i.aw = xor i64 %.023.i, -1
  %i.ax = add i64 %1, %i.aw                       ; 3 uses
  %min.iters.check498 = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check498, label %.lr.ph26.i.preheader510, label %vector.ph499

vector.ph499:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec501 = and i64 %i.ax, -8                   ; 3 uses
  %i.ay = add i64 %.124.i, %n.vec501
  %i.az = getelementptr [4 x i8], ptr %0, i64 %.124.i
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph499
  %index503 = phi i64 [ 0, %vector.ph499 ], [ %index.next506, %vector.body502 ] ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %index503 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16     ; 2 uses
  %wide.load504 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !7
  %wide.load505 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !7
  %i.bc = xor <4 x i32> %wide.load504, splat (i32 -1)
  %i.bd = xor <4 x i32> %wide.load505, splat (i32 -1)
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !7
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !7
  %index.next506 = add nuw i64 %index503, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next506, %n.vec501
  br i1 %i.be, label %middle.block507, label %vector.body502, !llvm.loop !194

middle.block507:                                  ; preds = %vector.body502
  %cmp.n508 = icmp eq i64 %i.ax, %n.vec501
  br i1 %cmp.n508, label %bary_2comp.exit, label %.lr.ph26.i.preheader510

.lr.ph26.i.preheader510:                          ; preds = %.lr.ph26.i.preheader, %middle.block507
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.ay, %middle.block507 ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader510, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader510 ] ; 2 uses
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
  %xtraiter536 = and i64 %3, 1
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
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %._crit_edge363, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph362.preheader
  %.0145360.epil.init = phi ptr [ %0, %.lr.ph362.preheader ], [ %i.cn, %._crit_edge363.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod538 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod538)
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
  %i.da = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.db = shl i64 %1, 2
  %i.dc = add i64 %i.db, %i.da
  %i.dd = add i64 %i.da, 4
  %i.de = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.dd)
  %i.df = xor i64 %i.da, -1
  %i.dg = add i64 %i.de, %i.df                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check472 = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check472, label %.lr.ph366.preheader520, label %vector.ph473

vector.ph473:                                     ; preds = %.lr.ph366.preheader
  %n.vec475 = and i64 %i.di, 9223372036854775800  ; 3 uses
  %i.dj = shl i64 %n.vec475, 2
  %i.dk = getelementptr i8, ptr %0, i64 %i.dj
  br label %vector.body476

vector.body476:                                   ; preds = %vector.body476, %vector.ph473
  %index477 = phi i64 [ 0, %vector.ph473 ], [ %index.next480, %vector.body476 ] ; 2 uses
  %i.dl = shl i64 %index477, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.dl ; 3 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load478 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load479 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !7
  %i.dn = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load478)
  %i.do = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load479)
  store <4 x i32> %i.dn, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %i.do, ptr %i.dm, align 4, !tbaa !7
  %index.next480 = add nuw i64 %index477, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next480, %n.vec475
  br i1 %i.dp, label %middle.block481, label %vector.body476, !llvm.loop !197

middle.block481:                                  ; preds = %vector.body476
  %cmp.n482 = icmp eq i64 %i.di, %n.vec475
  br i1 %cmp.n482, label %.loopexit, label %.lr.ph366.preheader520

.lr.ph366.preheader520:                           ; preds = %.lr.ph366.preheader, %middle.block481
  %.0144364.ph = phi ptr [ %0, %.lr.ph366.preheader ], [ %i.dk, %middle.block481 ]
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader520, %.lr.ph366
  %.0144364 = phi ptr [ %i.ds, %.lr.ph366 ], [ %.0144364.ph, %.lr.ph366.preheader520 ] ; 3 uses
  %i.dq = load i32, ptr %.0144364, align 4, !tbaa !7
  %i.dr = tail call noundef i32 @llvm.bswap.i32(i32 %i.dq)
  store i32 %i.dr, ptr %.0144364, align 4, !tbaa !7
  %i.ds = getelementptr i8, ptr %.0144364, i64 4  ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.b
  br i1 %i.dt, label %.lr.ph366, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %.lr.ph366, %middle.block481, %bb.ad, %.critedge, %._crit_edge363
  %i.du = and i32 %6, 128
  %.not162 = icmp eq i32 %i.du, 0
  %i.dv = and i32 %6, 512
  %.not163 = icmp eq i32 %i.dv, 0                 ; 2 uses
  br i1 %.not162, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  br i1 %.not163, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not27.i221 = icmp eq i64 %1, 0
  br i1 %.not27.i221, label %bary_2comp.exit, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.af, %bb.ag
  %.023.i223 = phi i64 [ %i.dy, %bb.ag ], [ 0, %bb.af ] ; 5 uses
  %i.dw = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7  ; 2 uses
  %.not.i224 = icmp eq i32 %i.dx, 0
  br i1 %.not.i224, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i222
  %i.dy = add nuw i64 %.023.i223, 1               ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.dy, %1
  br i1 %exitcond.not.i231, label %bary_2comp.exit, label %.lr.ph.i222, !llvm.loop !55

bb.ah:                                            ; preds = %.lr.ph.i222
  %i.dz = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.ea = sub i32 0, %i.dx
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !7
  %.124.i225 = add i64 %.023.i223, 1              ; 4 uses
  %i.eb = icmp ult i64 %.124.i225, %1
  br i1 %i.eb, label %.lr.ph26.i227.preheader, label %bary_2comp.exit

.lr.ph26.i227.preheader:                          ; preds = %bb.ah
  %i.ec = xor i64 %.023.i223, -1
  %i.ed = add i64 %1, %i.ec                       ; 3 uses
  %min.iters.check485 = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check485, label %.lr.ph26.i227.preheader514, label %vector.ph486

vector.ph486:                                     ; preds = %.lr.ph26.i227.preheader
  %n.vec488 = and i64 %i.ed, -8                   ; 3 uses
  %i.ee = add i64 %.124.i225, %n.vec488
  %i.ef = getelementptr [4 x i8], ptr %0, i64 %.124.i225
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph486
  %index490 = phi i64 [ 0, %vector.ph486 ], [ %index.next493, %vector.body489 ] ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %i.ef, i64 %index490 ; 3 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16     ; 2 uses
  %wide.load491 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !7
  %wide.load492 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !7
  %i.ei = xor <4 x i32> %wide.load491, splat (i32 -1)
  %i.ej = xor <4 x i32> %wide.load492, splat (i32 -1)
  store <4 x i32> %i.ei, ptr %i.eg, align 4, !tbaa !7
  store <4 x i32> %i.ej, ptr %i.eh, align 4, !tbaa !7
  %index.next493 = add nuw i64 %index490, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next493, %n.vec488
  br i1 %i.ek, label %middle.block494, label %vector.body489, !llvm.loop !199

middle.block494:                                  ; preds = %vector.body489
  %cmp.n495 = icmp eq i64 %i.ed, %n.vec488
  br i1 %cmp.n495, label %bary_2comp.exit, label %.lr.ph26.i227.preheader514

.lr.ph26.i227.preheader514:                       ; preds = %.lr.ph26.i227.preheader, %middle.block494
  %.125.i228.ph = phi i64 [ %.124.i225, %.lr.ph26.i227.preheader ], [ %i.ee, %middle.block494 ]
  br label %.lr.ph26.i227

.lr.ph26.i227:                                    ; preds = %.lr.ph26.i227.preheader514, %.lr.ph26.i227
  %.125.i228 = phi i64 [ %.1.i229, %.lr.ph26.i227 ], [ %.125.i228.ph, %.lr.ph26.i227.preheader514 ] ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %0, i64 %.125.i228 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = xor i32 %i.em, -1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !7
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !200

bb.ai:                                            ; preds = %bb.ae
  %i.eo = getelementptr i8, ptr %i.b, i64 -4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7
  %.not165 = icmp sgt i32 %i.ep, -1
  br i1 %.not165, label %bary_2comp.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @bary_2comp(ptr noundef nonnull %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.ak:                                            ; preds = %.loopexit
  %i.eq = select i1 %.not163, i32 1, i32 -1
  br label %bary_2comp.exit

bb.al:                                            ; preds = %bb.x, %bb.a
  %.not315 = icmp eq i64 %1, 0                    ; 4 uses
  br i1 %.not315, label %.loopexit326, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = and i32 %6, 3
  %i.es = icmp eq i32 %i.er, 1                    ; 3 uses
  %i.et = add i64 %3, -1
  %i.eu = mul i64 %4, %i.et                       ; 2 uses
  %i.ev = sub i64 0, %4
  %.035.i = select i1 %i.es, i64 %i.eu, i64 0
  %.034.i = select i1 %i.es, i64 %i.ev, i64 %4
  %.033.i = select i1 %i.es, i64 0, i64 %i.eu
  %i.ew = trunc i64 %5 to i32
  %i.ex = and i32 %i.ew, 7                        ; 3 uses
  %i.ey = icmp ne i32 %i.ex, 0                    ; 3 uses
  %i.ez = lshr i64 %5, 3
  %i.fa = sub i64 %4, %i.ez
  %i.fb = sext i1 %i.ey to i64
end_hunk_4
begin_hunk_5_@rb_big_or:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_xor(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.c, align 8, !tbaa !11
  store i64 %1, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.i = trunc i64 %1 to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %1, 0
  %i.k = and i64 %1, 6
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rb_integer_type_p.exit.thread52, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.b
  %i.n = inttoptr i64 %1 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %bb.z, label %rb_integer_type_p.exit.thread52

rb_integer_type_p.exit.thread52:                  ; preds = %bb.b, %rb_integer_type_p.exit
  %i.r = tail call i64 @rb_num_coerce_bit(i64 noundef %0, i64 noundef %1, i64 noundef 94) #23
  br label %bignorm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = call fastcc i32 @abs2twocomp(ptr noundef %i.c, ptr noundef %i.e) ; 7 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !11   ; 16 uses
  %i.v = ashr i64 %1, 1                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8, !tbaa !11
  %.lobit.i = ashr i64 %1, 63
  %i.w = trunc nsw i64 %.lobit.i to i32           ; 8 uses
  %i.x = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = and i64 %i.y, 16384
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.x, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.x, i64 16
  %i.af = lshr i64 %i.y, 15
  %i.ag = and i64 %i.af, 511
  br label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i52.i = phi ptr [ %i.ae, %bb.e ], [ %i.ab, %bb.d ] ; 12 uses
  %.0.i43.i = phi i64 [ %i.ag, %bb.e ], [ %i.ad, %bb.d ]
  %.0.i52.i175 = ptrtoaddr ptr %.0.i52.i to i64
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %.0.i43.i, i64 2) ; 13 uses
  %i.ah = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ai = tail call fastcc i64 @bignew_1(i64 noundef %i.ah, i64 noundef %spec.store.select.i, i32 noundef 0) ; 8 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 16 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13 ; 4 uses
  %i.al = and i64 %i.ak, 16384
  %.not.i44.i = icmp eq i64 %i.al, 0              ; 3 uses
  br i1 %.not.i44.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit.i
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  br label %BIGNUM_DIGITS.exit46.i

bb.g:                                             ; preds = %BIGNUM_LEN.exit.i
  %i.an = getelementptr i8, ptr %i.aj, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit46.i

BIGNUM_DIGITS.exit46.i:                           ; preds = %bb.g, %bb.f
  %.0.i45.i = phi ptr [ %i.am, %bb.f ], [ %i.ao, %bb.g ] ; 19 uses
  %.0.i45.i174 = ptrtoaddr ptr %.0.i45.i to i64
  %i.ap = icmp sgt i64 %i.u, 0
  br i1 %i.ap, label %.lr.ph.i.preheader, label %.lr.ph68.i.preheader

.lr.ph.i.preheader:                               ; preds = %BIGNUM_DIGITS.exit46.i
  %xtraiter245 = and i64 %i.u, 3                  ; 3 uses
  %i.aq = icmp ult i64 %i.u, 4
  br i1 %i.aq, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter250 = and i64 %i.u, 9223372036854775804
  br label %.lr.ph.i

.lr.ph68.i.preheader:                             ; preds = %.preheader55.i, %BIGNUM_DIGITS.exit46.i
  %.167.i.ph = phi i64 [ %i.v, %BIGNUM_DIGITS.exit46.i ], [ %.lcssa226, %.preheader55.i ] ; 2 uses
  %.14166.i.ph = phi i64 [ 0, %BIGNUM_DIGITS.exit46.i ], [ %i.u, %.preheader55.i ] ; 4 uses
  %i.ar = sub nsw i64 %spec.store.select.i, %.14166.i.ph
  %xtraiter252 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph68.i.prol.loopexit, label %.lr.ph68.i.prol

.lr.ph68.i.prol:                                  ; preds = %.lr.ph68.i.preheader, %.lr.ph68.i.prol
  %.167.i.prol = phi i64 [ %i.av, %.lr.ph68.i.prol ], [ %.167.i.ph, %.lr.ph68.i.preheader ] ; 2 uses
  %.14166.i.prol = phi i64 [ %i.aw, %.lr.ph68.i.prol ], [ %.14166.i.ph, %.lr.ph68.i.preheader ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph68.i.prol ], [ 0, %.lr.ph68.i.preheader ]
  %i.as = trunc i64 %.167.i.prol to i32
  %i.at = xor i32 %i.s, %i.as
  %i.au = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i.prol
  store i32 %i.at, ptr %i.au, align 4, !tbaa !7
  %i.av = ashr i64 %.167.i.prol, 32               ; 2 uses
  %i.aw = add nuw nsw i64 %.14166.i.prol, 1       ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph68.i.prol.loopexit, label %.lr.ph68.i.prol, !llvm.loop !363

.lr.ph68.i.prol.loopexit:                         ; preds = %.lr.ph68.i.prol, %.lr.ph68.i.preheader
  %.167.i.unr = phi i64 [ %.167.i.ph, %.lr.ph68.i.preheader ], [ %i.av, %.lr.ph68.i.prol ]
  %.14166.i.unr = phi i64 [ %.14166.i.ph, %.lr.ph68.i.preheader ], [ %i.aw, %.lr.ph68.i.prol ]
  %i.ax = sub nsw i64 %.14166.i.ph, %spec.store.select.i
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.preheader54.i, label %.lr.ph68.i

.preheader55.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod247.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod247.not, label %.preheader55.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader55.i.unr-lcssa, %.lr.ph.i.preheader
  %.064.i.epil.init = phi i64 [ %i.v, %.lr.ph.i.preheader ], [ %i.bt, %.preheader55.i.unr-lcssa ]
  %.04063.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cg, %.preheader55.i.unr-lcssa ]
  %lcmp.mod249 = icmp ne i64 %xtraiter245, 0
  tail call void @llvm.assume(i1 %lcmp.mod249)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.064.i.epil = phi i64 [ %i.be, %.lr.ph.i.epil ], [ %.064.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.04063.i.epil = phi i64 [ %i.bf, %.lr.ph.i.epil ], [ %.04063.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter246 = phi i64 [ %epil.iter246.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.az = getelementptr [4 x i8], ptr %.0.i52.i, i64 %.04063.i.epil
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = trunc i64 %.064.i.epil to i32
  %i.bc = xor i32 %i.ba, %i.bb
  %i.bd = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.04063.i.epil
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !7
  %i.be = ashr i64 %.064.i.epil, 32               ; 2 uses
  %i.bf = add nuw nsw i64 %.04063.i.epil, 1
  %epil.iter246.next = add i64 %epil.iter246, 1   ; 2 uses
  %epil.iter246.cmp.not = icmp eq i64 %epil.iter246.next, %xtraiter245
  br i1 %epil.iter246.cmp.not, label %.preheader55.i, label %.lr.ph.i.epil, !llvm.loop !364

.preheader55.i:                                   ; preds = %.lr.ph.i.epil, %.preheader55.i.unr-lcssa
  %.lcssa226 = phi i64 [ %i.bt, %.preheader55.i.unr-lcssa ], [ %i.be, %.lr.ph.i.epil ]
  %i.bg = icmp samesign ult i64 %i.u, %spec.store.select.i
  br i1 %i.bg, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.064.i = phi i64 [ %i.v, %.lr.ph.i.preheader.new ], [ %i.bt, %.lr.ph.i ] ; 3 uses
  %.04063.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cg, %.lr.ph.i ] ; 6 uses
  %niter251 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter251.next.3, %.lr.ph.i ]
  %i.bh = getelementptr [4 x i8], ptr %.0.i52.i, i64 %.04063.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = trunc i64 %.064.i to i32
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.04063.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !7
  %i.bm = lshr i64 %.064.i, 32
  %i.bn = or disjoint i64 %.04063.i, 1            ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = trunc nuw i64 %i.bm to i32
  %i.br = xor i32 %i.bp, %i.bq
  %i.bs = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.bn
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !7
  %i.bt = ashr i64 %.064.i, 63                    ; 5 uses
  %i.bu = or disjoint i64 %.04063.i, 2            ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = trunc nsw i64 %i.bt to i32
  %i.by = xor i32 %i.bw, %i.bx
  %i.bz = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.bu
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !7
  %i.ca = or disjoint i64 %.04063.i, 3            ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = trunc nsw i64 %i.bt to i32
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.ca
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = add nuw nsw i64 %.04063.i, 4            ; 2 uses
  %niter251.next.3 = add i64 %niter251, 4         ; 2 uses
  %niter251.ncmp.3 = icmp eq i64 %niter251.next.3, %unroll_iter250
  br i1 %niter251.ncmp.3, label %.preheader55.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !365

.preheader54.i:                                   ; preds = %.lr.ph68.i, %.lr.ph68.i.prol.loopexit
  %i.ch = icmp slt i64 %spec.store.select.i, %i.u
  br i1 %i.ch, label %.lr.ph71.i.preheader, label %._crit_edge.i

.lr.ph71.i.preheader:                             ; preds = %.preheader54.i
  %i.ci = sub i64 %i.u, %spec.store.select.i      ; 3 uses
  %min.iters.check178 = icmp ult i64 %i.ci, 8
  %i.cj = sub i64 %.0.i52.i175, %.0.i45.i174
  %diff.check176 = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check178, i1 true, i1 %diff.check176
  br i1 %or.cond, label %.lr.ph71.i.preheader225, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph71.i.preheader
  %n.vec181 = and i64 %i.ci, -8                   ; 3 uses
  %i.ck = add i64 %spec.store.select.i, %n.vec181
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph179
  %index185 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body184 ] ; 2 uses
  %i.cl = add i64 %spec.store.select.i, %index185 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %wide.load186 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !7
  %wide.load187 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !7
  %i.co = xor <4 x i32> %wide.load186, %broadcast.splat183
  %i.cp = xor <4 x i32> %wide.load187, %broadcast.splat183
  %i.cq = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.cl ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  store <4 x i32> %i.co, ptr %i.cq, align 4, !tbaa !7
  store <4 x i32> %i.cp, ptr %i.cr, align 4, !tbaa !7
  %index.next188 = add nuw i64 %index185, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.cs, label %middle.block189, label %vector.body184, !llvm.loop !366

middle.block189:                                  ; preds = %vector.body184
  %cmp.n190 = icmp eq i64 %i.ci, %n.vec181
  br i1 %cmp.n190, label %.preheader.i, label %.lr.ph71.i.preheader225

.lr.ph71.i.preheader225:                          ; preds = %.lr.ph71.i.preheader, %middle.block189
  %.270.i.ph = phi i64 [ %spec.store.select.i, %.lr.ph71.i.preheader ], [ %i.ck, %middle.block189 ] ; 4 uses
  %i.ct = sub i64 %i.u, %.270.i.ph
  %xtraiter255 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph71.i.prol.loopexit, label %.lr.ph71.i.prol

.lr.ph71.i.prol:                                  ; preds = %.lr.ph71.i.preheader225, %.lr.ph71.i.prol
  %.270.i.prol = phi i64 [ %i.cy, %.lr.ph71.i.prol ], [ %.270.i.ph, %.lr.ph71.i.preheader225 ] ; 3 uses
  %prol.iter257 = phi i64 [ %prol.iter257.next, %.lr.ph71.i.prol ], [ 0, %.lr.ph71.i.preheader225 ]
  %i.cu = getelementptr [4 x i8], ptr %.0.i52.i, i64 %.270.i.prol
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = xor i32 %i.cv, %i.w
  %i.cx = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.270.i.prol
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !7
  %i.cy = add nuw nsw i64 %.270.i.prol, 1         ; 2 uses
  %prol.iter257.next = add i64 %prol.iter257, 1   ; 2 uses
  %prol.iter257.cmp.not = icmp eq i64 %prol.iter257.next, %xtraiter255
  br i1 %prol.iter257.cmp.not, label %.lr.ph71.i.prol.loopexit, label %.lr.ph71.i.prol, !llvm.loop !367

.lr.ph71.i.prol.loopexit:                         ; preds = %.lr.ph71.i.prol, %.lr.ph71.i.preheader225
  %.270.i.unr = phi i64 [ %.270.i.ph, %.lr.ph71.i.preheader225 ], [ %i.cy, %.lr.ph71.i.prol ]
  %i.cz = sub i64 %.270.i.ph, %i.u
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %.preheader.i, label %.lr.ph71.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.prol.loopexit, %.lr.ph68.i
  %.167.i = phi i64 [ %i.dj, %.lr.ph68.i ], [ %.167.i.unr, %.lr.ph68.i.prol.loopexit ] ; 3 uses
  %.14166.i = phi i64 [ %i.ds, %.lr.ph68.i ], [ %.14166.i.unr, %.lr.ph68.i.prol.loopexit ] ; 5 uses
  %i.db = trunc i64 %.167.i to i32
  %i.dc = xor i32 %i.s, %i.db
  %i.dd = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !7
  %i.de = lshr i64 %.167.i, 32
  %i.df = trunc nuw i64 %i.de to i32
  %i.dg = xor i32 %i.s, %i.df
  %i.dh = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !7
  %i.dj = ashr i64 %.167.i, 63                    ; 3 uses
  %i.dk = trunc nsw i64 %i.dj to i32
  %i.dl = xor i32 %i.s, %i.dk
  %i.dm = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !7
  %i.do = trunc nsw i64 %i.dj to i32
  %i.dp = xor i32 %i.s, %i.do
  %i.dq = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 12
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !7
  %i.ds = add nuw nsw i64 %.14166.i, 4            ; 2 uses
  %exitcond85.not.i.3 = icmp eq i64 %i.ds, %spec.store.select.i
  br i1 %exitcond85.not.i.3, label %.preheader54.i, label %.lr.ph68.i, !llvm.loop !368

.preheader.i:                                     ; preds = %.lr.ph71.i.prol.loopexit, %.lr.ph71.i, %middle.block189, %.preheader55.i
  %i.dt = icmp samesign ult i64 %i.u, %spec.store.select.i
  br i1 %i.dt, label %.lr.ph74.i, label %._crit_edge.i

.lr.ph74.i:                                       ; preds = %.preheader.i
  %i.du = xor i32 %i.s, %i.w                      ; 2 uses
  %i.dv = sub nuw i64 %spec.store.select.i, %i.u  ; 3 uses
  %min.iters.check193 = icmp samesign ult i64 %i.dv, 8
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph74.i
  %n.vec196 = and i64 %i.dv, 9223372036854775800  ; 3 uses
  %i.dw = add i64 %i.u, %n.vec196
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.u
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph194
  %index200 = phi i64 [ 0, %vector.ph194 ], [ %index.next201, %vector.body199 ] ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %index200 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  store <4 x i32> %broadcast.splat198, ptr %i.dy, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat198, ptr %i.dz, align 4, !tbaa !7
  %index.next201 = add nuw i64 %index200, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.ea, label %middle.block202, label %vector.body199, !llvm.loop !369

middle.block202:                                  ; preds = %vector.body199
  %cmp.n203 = icmp eq i64 %i.dv, %n.vec196
  br i1 %cmp.n203, label %._crit_edge.i, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %.lr.ph74.i, %middle.block202
  %.373.i.ph = phi i64 [ %i.u, %.lr.ph74.i ], [ %i.dw, %middle.block202 ]
  br label %scalar.ph192

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.prol.loopexit, %.lr.ph71.i
  %.270.i = phi i64 [ %i.eu, %.lr.ph71.i ], [ %.270.i.unr, %.lr.ph71.i.prol.loopexit ] ; 6 uses
  %i.eb = getelementptr [4 x i8], ptr %.0.i52.i, i64 %.270.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !7
  %i.ed = xor i32 %i.ec, %i.w
  %i.ee = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.270.i
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !7
  %i.ef = add nuw nsw i64 %.270.i, 1              ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.ei = xor i32 %i.eh, %i.w
  %i.ej = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.ef
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !7
  %i.ek = add nuw nsw i64 %.270.i, 2              ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = xor i32 %i.em, %i.w
  %i.eo = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.ek
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !7
  %i.ep = add nuw nsw i64 %.270.i, 3              ; 2 uses
  %i.eq = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7
  %i.es = xor i32 %i.er, %i.w
  %i.et = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.ep
  store i32 %i.es, ptr %i.et, align 4, !tbaa !7
  %i.eu = add nuw nsw i64 %.270.i, 4              ; 2 uses
  %exitcond86.not.i.3 = icmp eq i64 %i.eu, %i.u
  br i1 %exitcond86.not.i.3, label %.preheader.i, label %.lr.ph71.i, !llvm.loop !370

scalar.ph192:                                     ; preds = %scalar.ph192.preheader, %scalar.ph192
  %.373.i = phi i64 [ %i.ew, %scalar.ph192 ], [ %.373.i.ph, %scalar.ph192.preheader ] ; 2 uses
  %i.ev = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.373.i
  store i32 %i.du, ptr %i.ev, align 4, !tbaa !7
  %i.ew = add nuw nsw i64 %.373.i, 1              ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.ew, %spec.store.select.i
  br i1 %exitcond87.not.i, label %._crit_edge.i, label %scalar.ph192, !llvm.loop !371

._crit_edge.i:                                    ; preds = %scalar.ph192, %middle.block202, %.preheader54.i, %.preheader.i
  %.not.i = icmp eq i32 %i.s, %i.w                ; 2 uses
  %i.ex = and i64 %i.ak, -8193
  %masksel.i.i.i = select i1 %.not.i, i64 8192, i64 0
  %.sink.i.i.i = or disjoint i64 %i.ex, %masksel.i.i.i
  store i64 %.sink.i.i.i, ptr %i.aj, align 8, !tbaa !13
  br i1 %.not.i, label %twocomp2abs_bang.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  br i1 %.not.i44.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ey = lshr i64 %i.ak, 15
  %i.ez = and i64 %i.ey, 511
  %i.fa = getelementptr i8, ptr %i.aj, i64 16
  br label %BIGNUM_DIGITS.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.fb = getelementptr i8, ptr %i.aj, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !15
  %i.fd = getelementptr i8, ptr %i.aj, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i.i

BIGNUM_DIGITS.exit.i.i.i:                         ; preds = %bb.j, %bb.i
  %.0.i8.i.i.i = phi i64 [ %i.ez, %bb.i ], [ %i.fc, %bb.j ] ; 5 uses
  %.0.i5.i.i.i = phi ptr [ %i.fa, %bb.i ], [ %i.fe, %bb.j ] ; 4 uses
  %.not27.i.i.i.i = icmp eq i64 %.0.i8.i.i.i, 0
  br i1 %.not27.i.i.i.i, label %bary_2comp.exit.i.i.i, label %.lr.ph.i.i.i.i

end_hunk_5
begin_hunk_6_@rb_big_lshift:bb.a

.lr.ph36.i.i32.epil:                              ; preds = %.lr.ph36.i.i32.epil, %.lr.ph36.i.i32.epil.preheader
  %.035.i.i33.epil = phi i32 [ %i.db, %.lr.ph36.i.i32.epil ], [ %.035.i.i33.epil.init, %.lr.ph36.i.i32.epil.preheader ]
  %.02134.i.i34.epil = phi i64 [ %i.dh, %.lr.ph36.i.i32.epil ], [ %.02134.i.i34.epil.init, %.lr.ph36.i.i32.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i32.epil ], [ 0, %.lr.ph36.i.i32.epil.preheader ]
  %i.db = add i32 %.035.i.i33.epil, -1            ; 2 uses
  %i.dc = shl i64 %.02134.i.i34.epil, 32          ; 2 uses
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr [4 x i8], ptr %.0.i26.i.i26, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = zext i32 %i.df to i64
  %i.dh = or disjoint i64 %i.dc, %i.dg            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.cl
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i36.epilog-lcssa, label %.lr.ph36.i.i32.epil, !llvm.loop !388

._crit_edge.i.i36.epilog-lcssa:                   ; preds = %.lr.ph36.i.i32.epil
  %i.di = icmp ult i64 %i.dc, 4611686018427387904
  %i.dj = and i64 %i.bu, 8192
  %.not.i.i37 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i37, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i36.epilog-lcssa
  br i1 %i.di, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dk = shl nuw nsw i64 %i.dh, 1
  %i.dl = or disjoint i64 %i.dk, 1
  br label %bignorm.exit

bb.r:                                             ; preds = %._crit_edge.i.i36.epilog-lcssa
  %i.dm = icmp ult i64 %i.dh, 4611686018427387905
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.neg.i.i38 = mul nsw i64 %i.dh, -2
  %i.dn = or disjoint i64 %.neg.i.i38, 1
  br label %bignorm.exit

bb.t:                                             ; preds = %bb.r, %bb.p, %.critedge.i.i30
  tail call void @rb_big_resize(i64 noundef %i.bo, i64 noundef %.02332.i.i29)
  br label %bignorm.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %.lr.ph, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.do = tail call i64 @rb_to_int(i64 noundef %.01749) #23 ; 3 uses
  %i.dp = trunc i64 %i.do to i1
  br i1 %i.dp, label %._crit_edge, label %.lr.ph

bignorm.exit:                                     ; preds = %bb.o, %bb.e, %bb.t, %bb.s, %bb.q, %BIGNUM_DIGITS.exit.i.i24, %rbimpl_RB_TYPE_P_fastpath.exit.i21, %bb.k, %bb.j, %bb.i, %bb.g, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %._crit_edge
  %.016 = phi i64 [ 1, %bb.e ], [ %i.g, %._crit_edge ], [ %i.g, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bf, %bb.i ], [ %i.g, %bb.j ], [ %i.bd, %bb.g ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.bo, %bb.k ], [ %i.bo, %rbimpl_RB_TYPE_P_fastpath.exit.i21 ], [ %i.dn, %bb.s ], [ %i.bo, %bb.t ], [ %i.dl, %bb.q ], [ 1, %BIGNUM_DIGITS.exit.i.i24 ], [ 1, %bb.o ]
  ret i64 %.016
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @big_shift3(i64 noundef %0, i32 noundef range(i32 0, 2) %1, i64 noundef %2, i32 noundef range(i32 0, 32) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not = icmp eq i32 %1, 0
  %i.d = icmp slt i64 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %BIGNUM_LEN.exit, %bb.b
  %i.e = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.41) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = and i64 %i.g, 16384
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.f:                                             ; preds = %bb.d
  %i.k = lshr i64 %i.g, 15
  %i.l = and i64 %i.k, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.l, %bb.f ], [ %i.j, %bb.e ] ; 6 uses
  %i.m = add i64 %.0.i, %2                        ; 2 uses
  %i.n = icmp sgt i64 %i.m, 2305843009213693950
  br i1 %i.n, label %bb.c, label %bb.g

bb.g:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.p = add nsw i64 %i.m, 1
  %i.q = trunc i64 %i.g to i32
  %i.r = lshr i32 %i.q, 13
  %i.s = and i32 %i.r, 1
  %i.t = tail call fastcc i64 @bignew_1(i64 noundef %i.o, i64 noundef %i.p, i32 noundef %i.s) ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, 16384
  %.not.i54 = icmp eq i64 %i.w, 0
  br i1 %.not.i54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.u, i64 16
  br label %BIGNUM_DIGITS.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.u, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.h, %bb.i
  %.0.i55 = phi ptr [ %i.x, %bb.h ], [ %i.z, %bb.i ] ; 3 uses
  %.not5398 = icmp eq i64 %2, 0
  br i1 %.not5398, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %BIGNUM_DIGITS.exit
  %i.aa = shl nuw i64 %2, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i55, i8 0, i64 %i.aa, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %BIGNUM_DIGITS.exit
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !13
  %i.ac = and i64 %i.ab, 16384
  %.not.i56 = icmp eq i64 %i.ac, 0
  br i1 %.not.i56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  br label %BIGNUM_DIGITS.exit58

bb.k:                                             ; preds = %._crit_edge
  %i.ae = getelementptr i8, ptr %i.f, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit58

BIGNUM_DIGITS.exit58:                             ; preds = %bb.j, %bb.k
  %.0.i57 = phi ptr [ %i.ad, %bb.j ], [ %i.af, %bb.k ] ; 2 uses
  %.not.i59 = icmp eq i64 %.0.i, 0
  br i1 %.not.i59, label %bary_small_lshift.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %BIGNUM_DIGITS.exit58
  %i.ag = getelementptr [4 x i8], ptr %.0.i55, i64 %2 ; 2 uses
  %i.ah = zext nneg i32 %3 to i64                 ; 5 uses
  %xtraiter = and i64 %.0.i, 3                    ; 3 uses
  %i.ai = icmp ult i64 %.0.i, 4
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.i, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %.015.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bo, %bb.l ]
  %.01013.i = phi ptr [ %i.ag, %.lr.ph.i.new ], [ %i.bn, %bb.l ] ; 5 uses
  %.01112.i = phi ptr [ %.0.i57, %.lr.ph.i.new ], [ %i.bh, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.l ]
  %i.aj = getelementptr i8, ptr %.01112.i, i64 4
  %i.ak = load i32, ptr %.01112.i, align 4, !tbaa !7
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, %i.ah            ; 2 uses
  %i.an = or i64 %i.am, %.015.i
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr i8, ptr %.01013.i, i64 4
  store i32 %i.ao, ptr %.01013.i, align 4, !tbaa !7
  %i.aq = lshr i64 %i.am, 32
  %i.ar = getelementptr i8, ptr %.01112.i, i64 8
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, %i.ah            ; 2 uses
  %i.av = or i64 %i.au, %i.aq
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %.01013.i, i64 8
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !7
  %i.ay = lshr i64 %i.au, 32
  %i.az = getelementptr i8, ptr %.01112.i, i64 12
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, %i.ah            ; 2 uses
  %i.bd = or i64 %i.bc, %i.ay
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr i8, ptr %.01013.i, i64 12
  store i32 %i.be, ptr %i.ax, align 4, !tbaa !7
  %i.bg = lshr i64 %i.bc, 32
  %i.bh = getelementptr i8, ptr %.01112.i, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, %i.ah            ; 2 uses
  %i.bl = or i64 %i.bk, %i.bg
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  store i32 %i.bm, ptr %i.bf, align 4, !tbaa !7
  %i.bo = lshr i64 %i.bk, 32                      ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.l, !llvm.loop !88

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bo, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.bn, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %.0.i57, %.lr.ph.i ], [ %i.bh, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.015.i.epil = phi i64 [ %.015.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.m ]
  %.01013.i.epil = phi ptr [ %.01013.i.epil.init, %.epil.preheader ], [ %i.bv, %bb.m ] ; 2 uses
  %.01112.i.epil = phi ptr [ %.01112.i.epil.init, %.epil.preheader ], [ %i.bp, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bp = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.bq = load i32, ptr %.01112.i.epil, align 4, !tbaa !7
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, %i.ah            ; 2 uses
  %i.bt = or i64 %i.bs, %.015.i.epil
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.bu, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.bw = lshr i64 %i.bs, 32                      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.m, !llvm.loop !389

._crit_edge.loopexit.i:                           ; preds = %bb.m, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa140 = phi i64 [ %i.bo, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bw, %bb.m ]
  %i.bx = trunc nuw nsw i64 %.lcssa140 to i32
  br label %bary_small_lshift.exit

bary_small_lshift.exit:                           ; preds = %BIGNUM_DIGITS.exit58, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %BIGNUM_DIGITS.exit58 ], [ %i.bx, %._crit_edge.loopexit.i ]
  %i.by = getelementptr [4 x i8], ptr %.0.i55, i64 %.0.i
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %2
  store i32 %.0.lcssa.i, ptr %i.bz, align 4, !tbaa !7
  br label %bary_zero_p.exit.thread87

bb.n:                                             ; preds = %bb.a
  %.pre = inttoptr i64 %0 to ptr                  ; 6 uses
  br i1 %i.d, label %._crit_edge105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %.pre, align 8, !tbaa !13 ; 2 uses
  %i.cb = and i64 %i.ca, 16384
  %.not.i60 = icmp eq i64 %i.cb, 0
  br i1 %.not.i60, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr i8, ptr %.pre, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit62

bb.q:                                             ; preds = %bb.o
  %i.ce = lshr i64 %i.ca, 15
  %i.cf = and i64 %i.ce, 511
  br label %BIGNUM_LEN.exit62

BIGNUM_LEN.exit62:                                ; preds = %bb.p, %bb.q
  %.0.i61 = phi i64 [ %i.cf, %bb.q ], [ %i.cd, %bb.p ]
  %.not49 = icmp ugt i64 %.0.i61, %2
  br i1 %.not49, label %bb.v, label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.n, %BIGNUM_LEN.exit62
  %i.cg = load i64, ptr %.pre, align 8, !tbaa !13 ; 3 uses
  %i.ch = and i64 %i.cg, 8192
  %.not92 = icmp eq i64 %i.ch, 0
  br i1 %.not92, label %bb.r, label %bary_zero_p.exit

bb.r:                                             ; preds = %._crit_edge105
  %i.ci = and i64 %i.cg, 16384
  %.not.i63 = icmp eq i64 %i.ci, 0
  br i1 %.not.i63, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr i8, ptr %.pre, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !15
  %i.cl = getelementptr i8, ptr %.pre, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit68

bb.t:                                             ; preds = %bb.r
  %i.cn = getelementptr i8, ptr %.pre, i64 16
  %i.co = lshr i64 %i.cg, 15
  %i.cp = and i64 %i.co, 511
  br label %BIGNUM_LEN.exit68

BIGNUM_LEN.exit68:                                ; preds = %bb.s, %bb.t
  %.0.i6482 = phi ptr [ %i.cn, %bb.t ], [ %i.ck, %bb.s ]
  %.0.i67 = phi i64 [ %i.cp, %bb.t ], [ %i.cm, %bb.s ] ; 2 uses
  %i.cq = icmp eq i64 %.0.i67, 0
  br i1 %i.cq, label %bary_zero_p.exit, label %.preheader.i

.preheader.i:                                     ; preds = %BIGNUM_LEN.exit68, %bb.u
  %.0.i69 = phi i64 [ %i.cr, %bb.u ], [ %.0.i67, %BIGNUM_LEN.exit68 ]
  %i.cr = add i64 %.0.i69, -1                     ; 3 uses
  %i.cs = getelementptr [4 x i8], ptr %.0.i6482, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %.not.i70 = icmp eq i32 %i.ct, 0
  br i1 %.not.i70, label %bb.u, label %bary_zero_p.exit

bb.u:                                             ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.cr, 0
  br i1 %.not7.i, label %bary_zero_p.exit, label %.preheader.i, !llvm.loop !158

bb.v:                                             ; preds = %BIGNUM_LEN.exit62
  %i.cu = call fastcc i32 @abs2twocomp(ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !11
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.cy = and i64 %i.cx, 16384
  %.not.i71 = icmp eq i64 %i.cy, 0
  br i1 %.not.i71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %i.cw, i64 16
  br label %BIGNUM_DIGITS.exit73

bb.x:                                             ; preds = %bb.v
  %i.da = getelementptr i8, ptr %i.cw, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit73

BIGNUM_DIGITS.exit73:                             ; preds = %bb.w, %bb.x
  %.0.i72 = phi ptr [ %i.cz, %bb.w ], [ %i.db, %bb.x ] ; 2 uses
  %.0.i72120 = ptrtoaddr ptr %.0.i72 to i64
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %.not50 = icmp sgt i64 %i.dc, %2
  br i1 %.not50, label %bb.z, label %bb.y

bb.y:                                             ; preds = %BIGNUM_DIGITS.exit73
  %.not51 = icmp eq i32 %i.cu, 0
  %i.dd = select i1 %.not51, i64 1, i64 -1
  br label %bary_zero_p.exit

bb.z:                                             ; preds = %BIGNUM_DIGITS.exit73
  %i.de = sub nsw i64 %i.dc, %2                   ; 9 uses
  %i.df = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.dg = tail call fastcc i64 @bignew_1(i64 noundef %i.df, i64 noundef %i.de, i32 noundef 0) ; 7 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 12 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !13 ; 4 uses
  %i.dj = and i64 %i.di, 16384
  %.not.i74 = icmp eq i64 %i.dj, 0                ; 3 uses
  br i1 %.not.i74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr i8, ptr %i.dh, i64 16
  br label %BIGNUM_DIGITS.exit76

bb.ab:                                            ; preds = %bb.z
  %i.dl = getelementptr i8, ptr %i.dh, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit76

BIGNUM_DIGITS.exit76:                             ; preds = %bb.aa, %bb.ab
  %.0.i75 = phi ptr [ %i.dk, %bb.aa ], [ %i.dm, %bb.ab ] ; 5 uses
  %i.dn = getelementptr [4 x i8], ptr %.0.i72, i64 %2 ; 4 uses
  %.not91 = icmp eq i32 %i.cu, 0                  ; 3 uses
  %i.do = select i1 %.not91, i64 0, i64 4294967295 ; 3 uses
  %i.dp = zext nneg i32 %3 to i64                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.de, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %BIGNUM_DIGITS.exit76
  %.0.i75121 = ptrtoaddr ptr %.0.i75 to i64
  %i.dq = shl i64 %2, 2
  %i.dr = add i64 %i.dq, %.0.i72120
  %i.ds = sub i64 %.0.i75121, %i.dr
  %diff.check = icmp ugt i64 %i.ds, -16
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.de, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x i64> poison, i64 %i.do, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %vector.ph ], [ %i.dx, %vector.body ]
  %i.dt = xor i64 %index, -1
  %i.du = add i64 %i.de, %i.dt                    ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.dn, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -12
  %wide.load = load <4 x i32>, ptr %i.dw, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dx = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.dy = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.dx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dz = shl nuw <4 x i64> %i.dy, splat (i64 32)
  %i.ea = or disjoint <4 x i64> %i.dz, %i.dx
  %i.eb = lshr <4 x i64> %i.ea, %broadcast.splat
  %i.ec = trunc <4 x i64> %i.eb to <4 x i32>
end_hunk_6
begin_hunk_7_@bary_mul_karatsuba_branch:bb.a
  %i.bm = getelementptr [4 x i8], ptr %i.ac, i64 %i.bg ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw i64 %i.bl, %i.bo                ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !7
  %i.br = lshr i64 %i.bp, 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.1
  %.132.i.i.i.1 = phi i64 [ %i.br, %bb.g ], [ 0, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.bs = add nuw i64 %.03036.i.i.i, 2            ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !16

.lr.ph41.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph41.i.i.i
  %.140.i.i.i = phi i64 [ %i.bz, %.lr.ph41.i.i.i ], [ %3, %.preheader.i.i.i ] ; 2 uses
  %.239.i.i.i = phi i64 [ %i.by, %.lr.ph41.i.i.i ], [ %.132.i.i.i.lcssa, %.preheader.i.i.i ]
  %i.bt = getelementptr [4 x i8], ptr %i.ac, i64 %.140.i.i.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %.239.i.i.i, %i.bv      ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !7
  %i.by = lshr i64 %i.bw, 32                      ; 2 uses
  %i.bz = add nuw i64 %.140.i.i.i, 1              ; 2 uses
  %i.ca = icmp uge i64 %i.bz, %i.ad
  %i.cb = icmp eq i64 %i.by, 0
  %or.cond.i.i.i = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond.i.i.i, label %bary_muladd_1xN.exit.i.i, label %.lr.ph41.i.i.i, !llvm.loop !18

bary_muladd_1xN.exit.i.i:                         ; preds = %.lr.ph41.i.i.i, %.preheader.i.i.i, %.lr.ph21.split.i.i
  %i.cc = add nuw i64 %.01620.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond.not.i.i, label %bary_short_mul.exit, label %.lr.ph21.split.i.i, !llvm.loop !19

bary_short_mul.exit:                              ; preds = %bary_muladd_1xN.exit.i.i, %.preheader.i.i
  tail call void @rb_thread_check_ints() #23
  br label %bary_short_mul.exit78

bary_sparse_p.exit50.thread:                      ; preds = %bb.d, %bary_sparse_p.exit.thread
  %i.cd = icmp ult i64 %i.s, %3
  br i1 %i.cd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bary_sparse_p.exit50.thread
  tail call fastcc void @bary_mul_balance_with_mulfunc(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull @bary_mul_karatsuba_start)
  br label %bary_short_mul.exit78

bb.j:                                             ; preds = %bary_sparse_p.exit50.thread
  tail call fastcc void @bary_mul_karatsuba(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef %5, ptr noundef %6, i64 noundef %7)
  br label %bary_short_mul.exit78

bary_sparse_p.exit.thread81:                      ; preds = %bb.c, %bb.a
  %i.ce = icmp eq ptr %2, %4
  %i.cf = icmp eq i64 %3, %5
  %or.cond = and i1 %i.ce, %i.cf
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bary_sparse_p.exit.thread81
  tail call fastcc void @bary_sq_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bary_short_mul.exit78

bb.l:                                             ; preds = %bary_sparse_p.exit.thread81
  %i.cg = icmp eq i64 %3, 1
  %i.ch = icmp eq i64 %5, 1
  %or.cond.i51 = and i1 %i.cg, %i.ch
  br i1 %or.cond.i51, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = load i32, ptr %2, align 4, !tbaa !7
  %i.cj = load i32, ptr %4, align 4, !tbaa !7
  %i.ck = zext i32 %i.ci to i64
  %i.cl = zext i32 %i.cj to i64
  %i.cm = mul nuw i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %0, align 4
  %.not9.i.i76 = icmp eq i64 %1, 2
  br i1 %.not9.i.i76, label %bary_short_mul.exit78, label %.lr.ph.preheader.i.i77

.lr.ph.preheader.i.i77:                           ; preds = %bb.m
  %i.cn = getelementptr i8, ptr %0, i64 8
  %i.co = shl i64 %1, 2
  %i.cp = add i64 %i.co, -8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cn, i8 0, i64 %i.cp, i1 false), !tbaa !7
  br label %bary_short_mul.exit78

bb.n:                                             ; preds = %bb.l
  %.not17.i.i52 = icmp eq i64 %1, 0
  br i1 %.not17.i.i52, label %.preheader.i.i54, label %.lr.ph.preheader.i12.i53

.lr.ph.preheader.i12.i53:                         ; preds = %bb.n
  %i.cq = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cq, i1 false), !tbaa !7
  br label %.preheader.i.i54

.preheader.i.i54:                                 ; preds = %.lr.ph.preheader.i12.i53, %bb.n
  %.not22.i.i55 = icmp eq i64 %3, 0
  %.not43.i.i.i56 = icmp eq i64 %5, 0
  %or.cond.i.i57 = or i1 %.not22.i.i55, %.not43.i.i.i56
  br i1 %or.cond.i.i57, label %bary_mul_normal.exit.i75, label %.lr.ph21.split.i.i58.preheader

.lr.ph21.split.i.i58.preheader:                   ; preds = %.preheader.i.i54
  %xtraiter109 = and i64 %5, 1
  %i.cr = icmp eq i64 %5, 1
  %unroll_iter113 = and i64 %5, -2
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod112 = trunc i64 %5 to i1
  br label %.lr.ph21.split.i.i58

.lr.ph21.split.i.i58:                             ; preds = %.lr.ph21.split.i.i58.preheader, %bary_muladd_1xN.exit.i.i73
  %.01620.i.i59 = phi i64 [ %i.es, %bary_muladd_1xN.exit.i.i73 ], [ 0, %.lr.ph21.split.i.i58.preheader ] ; 4 uses
  %i.cs = getelementptr [4 x i8], ptr %0, i64 %.01620.i.i59 ; 4 uses
  %i.ct = sub i64 %1, %.01620.i.i59               ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %2, i64 %.01620.i.i59
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7  ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph.i.preheader.i.i60

.lr.ph.i.preheader.i.i60:                         ; preds = %.lr.ph21.split.i.i58
  %i.cx = zext i32 %i.cv to i64                   ; 3 uses
  br i1 %i.cr, label %.lr.ph.i.i.i61.epil.preheader, label %.lr.ph.i.i.i61

.preheader.i.i.i67.unr-lcssa:                     ; preds = %bb.r
  br i1 %lcmp.mod110.not, label %.preheader.i.i.i67, label %.lr.ph.i.i.i61.epil.preheader

.lr.ph.i.i.i61.epil.preheader:                    ; preds = %.preheader.i.i.i67.unr-lcssa, %.lr.ph.i.preheader.i.i60
  %.03036.i.i.i62.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i60 ], [ %i.ei, %.preheader.i.i.i67.unr-lcssa ] ; 2 uses
  %.03135.i.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i60 ], [ %.132.i.i.i65.1, %.preheader.i.i.i67.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.cy = getelementptr [4 x i8], ptr %4, i64 %.03036.i.i.i62.epil.init
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = zext i32 %i.cz to i64
  %i.db = mul nuw i64 %i.da, %i.cx
  %i.dc = add nuw i64 %i.db, %.03135.i.i.i63.epil.init ; 2 uses
  %.not.i.i.i64.epil = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i64.epil, label %.preheader.i.i.i67, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i61.epil.preheader
  %i.dd = getelementptr [4 x i8], ptr %i.cs, i64 %.03036.i.i.i62.epil.init ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw i64 %i.dc, %i.df                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !7
  %i.di = lshr i64 %i.dg, 32
  br label %.preheader.i.i.i67

.preheader.i.i.i67:                               ; preds = %.lr.ph.i.i.i61.epil.preheader, %bb.o, %.preheader.i.i.i67.unr-lcssa
  %.132.i.i.i65.lcssa = phi i64 [ %.132.i.i.i65.1, %.preheader.i.i.i67.unr-lcssa ], [ %i.di, %bb.o ], [ 0, %.lr.ph.i.i.i61.epil.preheader ] ; 2 uses
  %i.dj = icmp uge i64 %5, %i.ct
  %i.dk = icmp eq i64 %.132.i.i.i65.lcssa, 0
  %or.cond38.i.i.i68 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond38.i.i.i68, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph41.i.i.i69

.lr.ph.i.i.i61:                                   ; preds = %.lr.ph.i.preheader.i.i60, %bb.r
  %.03036.i.i.i62 = phi i64 [ %i.ei, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ] ; 4 uses
  %.03135.i.i.i63 = phi i64 [ %.132.i.i.i65.1, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ]
  %niter114 = phi i64 [ %niter114.next.1, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ]
  %i.dl = getelementptr [4 x i8], ptr %4, i64 %.03036.i.i.i62
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.cx
  %i.dp = add nuw i64 %i.do, %.03135.i.i.i63      ; 2 uses
  %.not.i.i.i64 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i64, label %.lr.ph.i.i.i61.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i61
  %i.dq = getelementptr [4 x i8], ptr %i.cs, i64 %.03036.i.i.i62 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw i64 %i.dp, %i.ds                ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  store i32 %i.du, ptr %i.dq, align 4, !tbaa !7
  %i.dv = lshr i64 %i.dt, 32
  br label %.lr.ph.i.i.i61.1

.lr.ph.i.i.i61.1:                                 ; preds = %bb.p, %.lr.ph.i.i.i61
  %.132.i.i.i65 = phi i64 [ %i.dv, %bb.p ], [ 0, %.lr.ph.i.i.i61 ]
  %i.dw = or disjoint i64 %.03036.i.i.i62, 1      ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %4, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw i64 %i.dz, %i.cx
  %i.eb = add nuw i64 %i.ea, %.132.i.i.i65        ; 2 uses
  %.not.i.i.i64.1 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i64.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i61.1
  %i.ec = getelementptr [4 x i8], ptr %i.cs, i64 %i.dw ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw i64 %i.eb, %i.ee                ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !7
  %i.eh = lshr i64 %i.ef, 32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.i61.1
  %.132.i.i.i65.1 = phi i64 [ %i.eh, %bb.q ], [ 0, %.lr.ph.i.i.i61.1 ] ; 3 uses
  %i.ei = add nuw i64 %.03036.i.i.i62, 2          ; 2 uses
  %niter114.next.1 = add i64 %niter114, 2         ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %.preheader.i.i.i67.unr-lcssa, label %.lr.ph.i.i.i61, !llvm.loop !16

.lr.ph41.i.i.i69:                                 ; preds = %.preheader.i.i.i67, %.lr.ph41.i.i.i69
  %.140.i.i.i70 = phi i64 [ %i.ep, %.lr.ph41.i.i.i69 ], [ %5, %.preheader.i.i.i67 ] ; 2 uses
  %.239.i.i.i71 = phi i64 [ %i.eo, %.lr.ph41.i.i.i69 ], [ %.132.i.i.i65.lcssa, %.preheader.i.i.i67 ]
  %i.ej = getelementptr [4 x i8], ptr %i.cs, i64 %.140.i.i.i70 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %.239.i.i.i71, %i.el    ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !7
  %i.eo = lshr i64 %i.em, 32                      ; 2 uses
  %i.ep = add nuw i64 %.140.i.i.i70, 1            ; 2 uses
  %i.eq = icmp uge i64 %i.ep, %i.ct
  %i.er = icmp eq i64 %i.eo, 0
  %or.cond.i.i.i72 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond.i.i.i72, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph41.i.i.i69, !llvm.loop !18

bary_muladd_1xN.exit.i.i73:                       ; preds = %.lr.ph41.i.i.i69, %.preheader.i.i.i67, %.lr.ph21.split.i.i58
  %i.es = add nuw i64 %.01620.i.i59, 1            ; 2 uses
  %exitcond.not.i.i74 = icmp eq i64 %i.es, %3
  br i1 %exitcond.not.i.i74, label %bary_mul_normal.exit.i75, label %.lr.ph21.split.i.i58, !llvm.loop !19

bary_mul_normal.exit.i75:                         ; preds = %bary_muladd_1xN.exit.i.i73, %.preheader.i.i54
  tail call void @rb_thread_check_ints() #23
  br label %bary_short_mul.exit78

bary_short_mul.exit78:                            ; preds = %bary_mul_normal.exit.i75, %.lr.ph.preheader.i.i77, %bb.m, %bb.k, %bb.j, %bb.i, %bary_short_mul.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bigdivrem_restoring(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.big_div_struct, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]     ; 8 uses
  %i.a = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = add i64 %.0, 1                           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !420

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %i.c, %3
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr %0, i64 %3   ; 5 uses
  %i.f = getelementptr [4 x i8], ptr %0, i64 %.0  ; 7 uses
  %i.g = sub i64 %1, %3                           ; 10 uses
  %i.h = getelementptr [4 x i8], ptr %0, i64 %1
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 3 uses
  %i.k = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.l = icmp samesign ult i32 %i.k, 2
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %i.b, -1
  %i.n = load i32, ptr %i.f, align 4, !tbaa !7
  %i.o = and i32 %i.n, %i.m                       ; 4 uses
  %.not.i.i = icmp eq i64 %1, %3
  br i1 %.not.i.i, label %bigdivrem_single1.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.q = xor i32 %i.p, 31
  %i.r = zext i32 %i.j to i64                     ; 3 uses
  %i.s = zext nneg i32 %i.q to i64                ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.t = sub i64 %.0, %3
  %i.u = shl i64 %i.t, 2
  %i.v = add i64 %i.u, -1
  %diff.check = icmp ult i64 %i.v, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x i64> poison, i64 %i.r, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %vector.ph ], [ %i.aa, %vector.body ]
  %i.w = xor i64 %index, -1
  %i.x = add i64 %i.g, %i.w                       ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.f, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aa = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.ab = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.aa, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ac = shl nuw <4 x i64> %i.ab, splat (i64 32)
  %i.ad = or disjoint <4 x i64> %i.ac, %i.aa
  %i.ae = lshr <4 x i64> %i.ad, %broadcast.splat
  %i.af = trunc <4 x i64> %i.ae to <4 x i32>
  %i.ag = getelementptr [4 x i8], ptr %i.e, i64 %i.x
  %i.ah = getelementptr i8, ptr %i.ag, i64 -12
  %reverse40 = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse40, ptr %i.ah, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.aa, i64 3
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %bigdivrem_single1.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %i.aj = sub i64 %1, %3
  %i.ak = xor i64 %.017.i.i.ph, -1
  %i.al = add i64 %1, %i.ak
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.prol = shl nuw i64 %.014.in16.i.i.ph, 32
  %i.am = xor i64 %.017.i.i.ph, -1
  %i.an = add i64 %i.g, %i.am                     ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.f, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = or disjoint i64 %.014.i.i.prol, %i.aq
  %i.as = lshr i64 %i.ar, %i.s
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr [4 x i8], ptr %i.e, i64 %i.an
  store i32 %i.at, ptr %i.au, align 4, !tbaa !7
  %i.av = or disjoint i64 %.017.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.i.unr = phi i64 [ %.017.i.i.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.014.in16.i.i.unr = phi i64 [ %.014.in16.i.i.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %i.aw = icmp eq i64 %i.al, %3
  br i1 %i.aw, label %bigdivrem_single1.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i.i = phi i64 [ %i.bo, %scalar.ph ], [ %.017.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i.i = phi i64 [ %i.bj, %scalar.ph ], [ %.014.in16.i.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i.i = shl nuw i64 %.014.in16.i.i, 32
  %i.ax = xor i64 %.017.i.i, -1
  %i.ay = add i64 %i.g, %i.ax                     ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.f, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = or disjoint i64 %.014.i.i, %i.bb
  %i.bd = lshr i64 %i.bc, %i.s
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr [4 x i8], ptr %i.e, i64 %i.ay
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !7
  %.014.i.i.1 = shl nuw i64 %i.bb, 32
  %reass.sub = sub i64 %i.g, %.017.i.i
  %i.bg = add i64 %reass.sub, -2                  ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = or disjoint i64 %.014.i.i.1, %i.bj
  %i.bl = lshr i64 %i.bk, %i.s
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr [4 x i8], ptr %i.e, i64 %i.bg
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !7
  %i.bo = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bo, %i.g
  br i1 %exitcond.not.i.i.1, label %bigdivrem_single1.exit, label %scalar.ph, !llvm.loop !422

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, %3
  br i1 %.not.i, label %bigdivrem_single1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bp = zext i32 %i.j to i64
  %i.bq = zext i32 %i.b to i64                    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.030.i = phi i64 [ %i.bp, %.lr.ph.i ], [ %i.cb, %bb.g ]
  %.02629.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cc, %bb.g ] ; 2 uses
  %i.br = shl nuw i64 %.030.i, 32
  %i.bs = xor i64 %.02629.i, -1
  %i.bt = add i64 %i.g, %i.bs                     ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.f, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.br, %i.bw            ; 2 uses
  %i.by = udiv i64 %i.bx, %i.bq
  %i.bz = trunc i64 %i.by to i32
end_hunk_7
begin_hunk_8_@bigdivrem1:bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !423
  %.fr = freeze i64 %i.a                          ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !428  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !426  ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !425  ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %.fr
  %i.j = getelementptr i8, ptr %i.i, i64 -4       ; 2 uses
  %i.k = xor i64 %.fr, -1                         ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr, i64 1)
  %.not.i.i = icmp eq i64 %.fr, 0
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %.fr, 1
  %i.l = icmp eq i64 %.fr, 1
  %unroll_iter = and i64 %.fr, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod111 = trunc i64 %.fr to i1
  br label %.split

.split.us:                                        ; preds = %bb.a, %.loopexit.us
  %.047.us = phi i64 [ %i.ar, %.loopexit.us ], [ %i.c, %bb.a ] ; 3 uses
  %i.m = load volatile i64, ptr %i.h, align 8, !tbaa !427
  %.not.us = icmp eq i64 %i.m, 0
  br i1 %.not.us, label %bb.b, label %.split64.us

bb.b:                                             ; preds = %.split.us
  %i.n = getelementptr [4 x i8], ptr %i.g, i64 %.047.us ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4       ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 3 uses
  %i.q = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %i.p to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = getelementptr i8, ptr %i.n, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = zext i32 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = zext i32 %i.q to i64
  %i.z = udiv i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %.not51.us = icmp eq i32 %i.aa, 0
  br i1 %.not51.us, label %.loopexit.us, label %.thread.us

.thread.us:                                       ; preds = %bb.c, %bb.b
  %.055.us = phi i32 [ %i.aa, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.n, i64 %i.k ; 2 uses
  %i.ac = zext i32 %.055.us to i64
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !7
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw i64 %i.ae, %i.ac                ; 2 uses
  %i.ag = and i64 %i.af, 4294967295               ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i64 %i.ai, %i.ag                ; 2 uses
  %.not.i.us = icmp eq i64 %i.ag, 0
  br i1 %.not.i.us, label %bigdivrem_mulsub.exit.us, label %bb.d

bb.d:                                             ; preds = %.thread.us
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %i.ab, align 4, !tbaa !7
  %.pre = load i32, ptr %i.o, align 4, !tbaa !7
  br label %bigdivrem_mulsub.exit.us

bigdivrem_mulsub.exit.us:                         ; preds = %bb.d, %.thread.us
  %i.al = phi i32 [ %.pre, %bb.d ], [ %i.p, %.thread.us ]
  %i.am = ashr i64 %i.aj, 32
  %i.an = lshr i64 %i.af, 32
  %i.ao = sub nsw i64 %i.am, %i.an
  %i.ap = zext i32 %i.al to i64
  %i.aq = sub nsw i64 0, %i.ap
  %.not5261.us = icmp eq i64 %i.ao, %i.aq
  br i1 %.not5261.us, label %.loopexit.us, label %bary_add.exit.us

.loopexit.us:                                     ; preds = %bigdivrem_mulsub.exit.us, %bb.c
  %.2.us = phi i32 [ 0, %bb.c ], [ %.055.us, %bigdivrem_mulsub.exit.us ]
  %i.ar = add i64 %.047.us, -1                    ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %i.g, i64 %i.ar
  store i32 %.2.us, ptr %i.as, align 4, !tbaa !7
  %.not85 = icmp eq i64 %i.ar, 0
  br i1 %.not85, label %.loopexit57, label %.split.us, !llvm.loop !429

.split:                                           ; preds = %.split.preheader, %.loopexit
  %.047 = phi i64 [ %i.dk, %.loopexit ], [ %i.c, %.split.preheader ] ; 3 uses
  %i.at = load volatile i64, ptr %i.h, align 8, !tbaa !427
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.e, label %.split64.us

.split64.us:                                      ; preds = %.split, %.split.us
  %.us-phi65 = phi i64 [ %.047.us, %.split.us ], [ %.047, %.split ]
  store i64 %.us-phi65, ptr %i.b, align 8, !tbaa !428
  br label %.loopexit57

bb.e:                                             ; preds = %.split
  %i.au = getelementptr [4 x i8], ptr %i.g, i64 %.047 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -4     ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7  ; 2 uses
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !7   ; 2 uses
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = zext i32 %i.aw to i64
  %i.ba = shl nuw i64 %i.az, 32
  %i.bb = getelementptr i8, ptr %i.au, i64 -8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = zext i32 %i.bc to i64
  %i.be = or disjoint i64 %i.ba, %i.bd
  %i.bf = zext i32 %i.ax to i64
  %i.bg = udiv i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %.not51 = icmp eq i32 %i.bh, 0
  br i1 %.not51, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %.055 = phi i32 [ %i.bh, %bb.f ], [ -1, %bb.e ] ; 3 uses
  %i.bi = getelementptr [4 x i8], ptr %i.au, i64 %i.k ; 4 uses
  %i.bj = zext i32 %.055 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.thread
  %.023.i = phi i64 [ 0, %.thread ], [ %i.bx, %bb.i ]
  %.022.i = phi i64 [ 0, %.thread ], [ %i.bw, %bb.i ] ; 2 uses
  %.0.i = phi i64 [ 0, %.thread ], [ %i.by, %bb.i ] ; 3 uses
  %i.bk = getelementptr [4 x i8], ptr %i.e, i64 %.0.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.bj
  %i.bo = add nuw i64 %i.bn, %.023.i              ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295               ; 2 uses
  %i.bq = sub nsw i64 %.022.i, %i.bp
  %i.br = getelementptr [4 x i8], ptr %i.bi, i64 %.0.i ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bq, %i.bt                ; 2 uses
  %.not.i = icmp eq i64 %.022.i, %i.bp
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = trunc i64 %i.bu to i32
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = ashr i64 %i.bu, 32                      ; 2 uses
  %i.bx = lshr i64 %i.bo, 32                      ; 2 uses
  %i.by = add nuw i64 %.0.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.by, %umax.i
  br i1 %exitcond.not.i, label %bigdivrem_mulsub.exit, label %bb.g, !llvm.loop !127

bigdivrem_mulsub.exit:                            ; preds = %bb.i
  %i.bz = sub nsw i64 %i.bw, %i.bx
  %i.ca = load i32, ptr %i.av, align 4, !tbaa !7
  %i.cb = zext i32 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %.not5261 = icmp eq i64 %i.bz, %i.cc
  br i1 %.not5261, label %.loopexit, label %.lr.ph.i.i.preheader

bary_add.exit.us:                                 ; preds = %bigdivrem_mulsub.exit.us, %bary_add.exit.us
  br label %bary_add.exit.us

.lr.ph.i.i.preheader:                             ; preds = %bigdivrem_mulsub.exit, %bary_add.exit.loopexit
  %.162 = phi i32 [ %i.dj, %bary_add.exit.loopexit ], [ %.055, %bigdivrem_mulsub.exit ]
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05779.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %.05878.i.i = phi i64 [ %i.cx, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = getelementptr [4 x i8], ptr %i.bi, i64 %.05779.i.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr %i.e, i64 %.05779.i.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %.05878.i.i, %i.cf
  %i.ck = add nuw nsw i64 %i.cj, %i.ci            ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.cd, align 4, !tbaa !7
  %i.cm = lshr i64 %i.ck, 32
  %i.cn = or disjoint i64 %.05779.i.i, 1          ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.bi, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.e, i64 %i.cn
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.cm, %i.cq
  %i.cv = add nuw nsw i64 %i.cu, %i.ct            ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.co, align 4, !tbaa !7
  %i.cx = lshr i64 %i.cv, 32                      ; 3 uses
  %i.cy = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bary_add.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !34

bary_add.exit.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %bary_add.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %bary_add.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05779.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cy, %bary_add.exit.loopexit.unr-lcssa ] ; 2 uses
  %.05878.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cx, %bary_add.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.cz = getelementptr [4 x i8], ptr %i.bi, i64 %.05779.i.i.epil.init ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.e, i64 %.05779.i.i.epil.init
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw nsw i64 %.05878.i.i.epil.init, %i.db
  %i.dg = add nuw nsw i64 %i.df, %i.de            ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.cz, align 4, !tbaa !7
  %i.di = lshr i64 %i.dg, 32
  br label %bary_add.exit.loopexit

bary_add.exit.loopexit:                           ; preds = %bary_add.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa107 = phi i64 [ %i.cx, %bary_add.exit.loopexit.unr-lcssa ], [ %i.di, %.lr.ph.i.i.epil.preheader ]
  %i.dj = add i32 %.162, -1                       ; 2 uses
  %.not56.not = icmp eq i64 %.lcssa107, 0
  br i1 %.not56.not, label %.lr.ph.i.i.preheader, label %.loopexit, !llvm.loop !430

.loopexit:                                        ; preds = %bary_add.exit.loopexit, %bigdivrem_mulsub.exit, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ %.055, %bigdivrem_mulsub.exit ], [ %i.dj, %bary_add.exit.loopexit ]
  %i.dk = add i64 %.047, -1                       ; 3 uses
  %i.dl = getelementptr [4 x i8], ptr %i.g, i64 %i.dk
  store i32 %.2, ptr %i.dl, align 4, !tbaa !7
  %i.dm = icmp ugt i64 %i.dk, %.fr
  br i1 %i.dm, label %.split, label %.loopexit57, !llvm.loop !429

.loopexit57:                                      ; preds = %.loopexit, %.loopexit.us, %.split64.us
  ret ptr null
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @rb_big_stop(ptr nofree noundef captures(address) %0) #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  store volatile i64 20, ptr %i.a, align 8, !tbaa !427
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #18

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #5

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #5

declare zeroext i1 @rb_gc_size_allocatable_p(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @power_cache_get_power(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #20 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp sgt i32 %1, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.30, i32 noundef %0, i32 noundef %1) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %0, -2
  %i.d = sext i32 %i.c to i64                     ; 5 uses
  %i.e = getelementptr [520 x i8], ptr @base36_power_cache, i64 %i.d
  %i.f = sext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr [8 x i8], ptr @maxpow64_num, i64 %i.d
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.d
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.o = tail call fastcc i64 @bignew_1(i64 noundef %i.n, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13
  %i.r = and i64 %i.q, 16384
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.p, i64 16
  br label %BIGNUM_DIGITS.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.p, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.s, %bb.f ], [ %i.u, %bb.g ]
  store i64 %i.k, ptr %.0.i, align 4
  %i.v = sext i32 %i.m to i64
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.w = add i32 %1, -1
  %i.x = call fastcc i64 @power_cache_get_power(i32 noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a)
  %i.y = call fastcc i64 @bigsq(i64 noundef %i.x) ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 5 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13  ; 3 uses
  %i.ab = and i64 %i.aa, 16384
  %.not.i.i = icmp eq i64 %i.ab, 0                ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = lshr i64 %i.aa, 15
  %i.ad = and i64 %i.ac, 511
  %i.ae = getelementptr i8, ptr %i.z, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.z, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !15
  %i.ah = getelementptr i8, ptr %i.z, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.j, %bb.i
  %.0.i21.i = phi i64 [ %i.ad, %bb.i ], [ %i.ag, %bb.j ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.ae, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i64 %.0.i21.i, 0
  br i1 %i.aj, label %bigtrunc.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %BIGNUM_DIGITS.exit.i
  %i.ak = add i64 %.0.i21.i, -1                   ; 2 uses
  %.not.i2834 = icmp eq i64 %i.ak, 0
  br i1 %.not.i2834, label %.critedge.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.al = add i64 %i.am, -1                       ; 2 uses
  %.not.i28 = icmp eq i64 %i.al, 0
  br i1 %.not.i28, label %.critedge.i, label %.lr.ph, !llvm.loop !150

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.am = phi i64 [ %i.al, %.preheader.i ], [ %i.ak, %.preheader.i.preheader ] ; 4 uses
  %.012.i35 = phi i64 [ %i.am, %.preheader.i ], [ %.0.i21.i, %.preheader.i.preheader ]
  %i.an = getelementptr [4 x i8], ptr %.0.i16.i, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %.not14.i = icmp eq i32 %i.ao, 0
  br i1 %.not14.i, label %.preheader.i, label %..critedge.i_crit_edge, !llvm.loop !150

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !150

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.012.i.lcssa = phi i64 [ %.012.i35, %..critedge.i_crit_edge ], [ %.0.i21.i, %.preheader.i.preheader ], [ %i.am, %.preheader.i ] ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.i
  %i.ap = getelementptr i8, ptr %i.z, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !15
end_hunk_8
begin_hunk_9_@big2str_karatsuba:bb.a
bb.an:                                            ; preds = %bb.al
  %i.ft = add nuw nsw i64 %i.fq, 1
  %i.fu = call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %i.ft) #23, !callees !236, !inline_history !250 ; 2 uses
  %i.fv = getelementptr i8, ptr %0, i64 24
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !247
  %i.fw = inttoptr i64 %i.fu to ptr               ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !13
  %i.fy = and i64 %i.fx, 8192
  %.not.i.i.i164 = icmp eq i64 %i.fy, 0
  %i.fz = getelementptr i8, ptr %i.fw, i64 24     ; 2 uses
  br i1 %.not.i.i.i164, label %RSTRING_PTR.exit.i.i165, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i.i165

RSTRING_PTR.exit.i.i165:                          ; preds = %bb.ao, %bb.an
  %i.gb = phi ptr [ %i.ga, %bb.ao ], [ %i.fz, %bb.an ] ; 3 uses
  store ptr %i.gb, ptr %i.eu, align 8, !tbaa !248
  %i.gc = load i32, ptr %0, align 8, !tbaa !242
  %.not.i.i166 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i166, label %big2str_alloc.exit.i167, label %bb.ap

bb.ap:                                            ; preds = %RSTRING_PTR.exit.i.i165
  %i.gd = getelementptr i8, ptr %i.gb, i64 1
  store ptr %i.gd, ptr %i.eu, align 8, !tbaa !248
  store i8 45, ptr %i.gb, align 1, !tbaa !15
  br label %big2str_alloc.exit.i167

big2str_alloc.exit.i167:                          ; preds = %bb.ap, %RSTRING_PTR.exit.i.i165
  %.not.i38.i168 = icmp eq i64 %.0.i162, 65
  br i1 %.not.i38.i168, label %ruby_nonempty_memcpy.exit.i158, label %bb.aq

bb.aq:                                            ; preds = %big2str_alloc.exit.i167
  %i.ge = load ptr, ptr %i.eu, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ge, ptr noundef nonnull readonly align 1 %i.fo, i64 noundef range(i64 1, 0) %i.fp, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit.i158

bb.ar:                                            ; preds = %bary2bdigitdbl.exit.thread.i169, %bary2bdigitdbl.exit.i152
  %.0.i42.i154 = phi i64 [ 0, %bary2bdigitdbl.exit.thread.i169 ], [ %.0.i.i153, %bary2bdigitdbl.exit.i152 ] ; 3 uses
  %i.gf = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !431 ; 3 uses
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = and i32 %i.gg, 1
  %lcmp.mod329.not = icmp eq i32 %i.gi, 0
  br i1 %lcmp.mod329.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ar
  %i.gj = load i32, ptr %i.ch, align 4, !tbaa !245
  %i.gk = sext i32 %i.gj to i64                   ; 2 uses
  %i.gl = urem i64 %.0.i42.i154, %i.gk
  %i.gm = udiv i64 %.0.i42.i154, %i.gk
  %i.gn = getelementptr i8, ptr @ruby_digitmap, i64 %i.gl
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  %i.gp = add nsw i64 %i.gh, -1                   ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fb, i64 %i.gp
  store i8 %i.go, ptr %i.gq, align 1, !tbaa !15
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ar
  %.133.i155.unr = phi i64 [ %.0.i42.i154, %bb.ar ], [ %i.gm, %.prol.loopexit.unr-lcssa ]
  %.1.i156.unr = phi i64 [ %i.gh, %bb.ar ], [ %i.gp, %.prol.loopexit.unr-lcssa ]
  %i.gr = icmp eq i32 %i.gg, 1
  br i1 %i.gr, label %.unr-lcssa330, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.133.i155 = phi i64 [ %i.hd, %.new ], [ %.133.i155.unr, %.prol.loopexit ] ; 2 uses
  %.1.i156 = phi i64 [ %i.hg, %.new ], [ %.1.i156.unr, %.prol.loopexit ] ; 2 uses
  %i.gs = load i32, ptr %i.ch, align 4, !tbaa !245
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = urem i64 %.133.i155, %i.gt
  %i.gv = udiv i64 %.133.i155, %i.gt              ; 2 uses
  %i.gw = getelementptr i8, ptr @ruby_digitmap, i64 %i.gu
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15
  %i.gy = getelementptr i8, ptr %i.fb, i64 %.1.i156
  %i.gz = getelementptr i8, ptr %i.gy, i64 -1
  store i8 %i.gx, ptr %i.gz, align 1, !tbaa !15
  %i.ha = load i32, ptr %i.ch, align 4, !tbaa !245
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = urem i64 %i.gv, %i.hb
  %i.hd = udiv i64 %i.gv, %i.hb
  %i.he = getelementptr i8, ptr @ruby_digitmap, i64 %i.hc
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !15
  %i.hg = add i64 %.1.i156, -2                    ; 3 uses
  %i.hh = getelementptr i8, ptr %i.fb, i64 %i.hg
  store i8 %i.hf, ptr %i.hh, align 1, !tbaa !15
  %.not36.i157.1 = icmp eq i64 %i.hg, 0
  br i1 %.not36.i157.1, label %.unr-lcssa330, label %.new, !llvm.loop !432

.unr-lcssa330:                                    ; preds = %.new, %.prol.loopexit
  %i.hi = load i32, ptr %i.gf, align 8, !tbaa !431
  %i.hj = sext i32 %i.hi to i64
  br label %ruby_nonempty_memcpy.exit.i158

ruby_nonempty_memcpy.exit.i158:                   ; preds = %.unr-lcssa330, %bb.aq, %big2str_alloc.exit.i167
  %.034.i159 = phi i64 [ %i.hj, %.unr-lcssa330 ], [ 0, %big2str_alloc.exit.i167 ], [ %i.fp, %bb.aq ]
  %i.hk = load ptr, ptr %i.eu, align 8, !tbaa !248
  %i.hl = getelementptr i8, ptr %i.hk, i64 %.034.i159
  store ptr %i.hl, ptr %i.eu, align 8, !tbaa !248
  br label %big2str_2bdigits.exit170

big2str_2bdigits.exit170:                         ; preds = %bary2bdigitdbl.exit.thread.i169, %bb.aj, %ruby_nonempty_memcpy.exit.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ay

.critedge.thread:                                 ; preds = %bb.t, %bb.ad, %bb.ac, %.critedge
  %.0123215 = phi ptr [ %.0123216, %.critedge ], [ %.0123216275, %bb.ad ], [ %.0123216275, %bb.ac ], [ %.0123217, %bb.t ] ; 4 uses
  %.0122211 = phi i64 [ %.0122212, %.critedge ], [ %2, %bb.ad ], [ %.0122212276, %bb.ac ], [ %.0122218, %bb.t ] ; 17 uses
  %.0121207 = phi i32 [ %.0121208, %.critedge ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ %.0121219, %bb.t ] ; 3 uses
  %.not127 = icmp eq i32 %.0121207, %i.cg
  br i1 %.not127, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.critedge.thread
  %i.hm = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !248 ; 2 uses
  %.not128 = icmp eq ptr %i.hn, null
  br i1 %.not128, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ho = load i64, ptr %i.c, align 8, !tbaa !11
  %i.hp = sub i64 %i.cu, %i.ho
  %i.hq = shl i64 %i.hp, 1                        ; 3 uses
  store i64 %i.hq, ptr %i.d, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.hn, i8 noundef 48, i64 noundef %i.hq, i1 noundef false) #23
  %i.hr = load ptr, ptr %i.hm, align 8, !tbaa !248
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hq
  store ptr %i.hs, ptr %i.hm, align 8, !tbaa !248
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.critedge.thread
  %i.ht = getelementptr [4 x i8], ptr %.0123215, i64 %.0122211
  %i.hu = getelementptr i8, ptr %i.ht, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !7
  %i.hw = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hv, i1 false) ; 2 uses
  %i.hx = add i64 %2, 1                           ; 4 uses
  %i.hy = icmp eq i32 %i.hw, 0
  br i1 %i.hy, label %.thread, label %bb.av

.thread:                                          ; preds = %bb.au
  %i.hz = getelementptr [4 x i8], ptr %1, i64 %2
  store i32 0, ptr %i.hz, align 4, !tbaa !7
  call fastcc void @bigdivrem_restoring(ptr noundef %1, i64 noundef %i.hx, ptr noundef nonnull %.0123215, i64 noundef %.0122211)
  br label %bary_small_rshift.exit

bb.av:                                            ; preds = %bb.au
  %i.ia = getelementptr [4 x i8], ptr %1, i64 %i.hx ; 3 uses
  %.not.i171 = icmp eq i64 %.0122211, 0           ; 2 uses
  %.pre = zext nneg i32 %i.hw to i64              ; 12 uses
  br i1 %.not.i171, label %.lr.ph.i177.preheader, label %.lr.ph.i172.preheader

.lr.ph.i172.preheader:                            ; preds = %bb.av
  %xtraiter = and i64 %.0122211, 3                ; 3 uses
  %i.ib = icmp ult i64 %.0122211, 4
  br i1 %i.ib, label %.lr.ph.i172.epil.preheader, label %.lr.ph.i172.preheader.new

.lr.ph.i172.preheader.new:                        ; preds = %.lr.ph.i172.preheader
  %unroll_iter = and i64 %.0122211, -4
  br label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %.lr.ph.i172, %.lr.ph.i172.preheader.new
  %.015.i = phi i64 [ 0, %.lr.ph.i172.preheader.new ], [ %i.jh, %.lr.ph.i172 ]
  %.01013.i = phi ptr [ %i.ia, %.lr.ph.i172.preheader.new ], [ %i.jg, %.lr.ph.i172 ] ; 5 uses
  %.01112.i = phi ptr [ %.0123215, %.lr.ph.i172.preheader.new ], [ %i.ja, %.lr.ph.i172 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i172.preheader.new ], [ %niter.next.3, %.lr.ph.i172 ]
  %i.ic = getelementptr i8, ptr %.01112.i, i64 4
  %i.id = load i32, ptr %.01112.i, align 4, !tbaa !7
  %i.ie = zext i32 %i.id to i64
  %i.if = shl nuw i64 %i.ie, %.pre                ; 2 uses
  %i.ig = or i64 %i.if, %.015.i
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = getelementptr i8, ptr %.01013.i, i64 4
  store i32 %i.ih, ptr %.01013.i, align 4, !tbaa !7
  %i.ij = lshr i64 %i.if, 32
  %i.ik = getelementptr i8, ptr %.01112.i, i64 8
  %i.il = load i32, ptr %i.ic, align 4, !tbaa !7
  %i.im = zext i32 %i.il to i64
  %i.in = shl nuw i64 %i.im, %.pre                ; 2 uses
  %i.io = or i64 %i.in, %i.ij
  %i.ip = trunc i64 %i.io to i32
  %i.iq = getelementptr i8, ptr %.01013.i, i64 8
  store i32 %i.ip, ptr %i.ii, align 4, !tbaa !7
  %i.ir = lshr i64 %i.in, 32
  %i.is = getelementptr i8, ptr %.01112.i, i64 12
  %i.it = load i32, ptr %i.ik, align 4, !tbaa !7
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw i64 %i.iu, %.pre                ; 2 uses
  %i.iw = or i64 %i.iv, %i.ir
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = getelementptr i8, ptr %.01013.i, i64 12
  store i32 %i.ix, ptr %i.iq, align 4, !tbaa !7
  %i.iz = lshr i64 %i.iv, 32
  %i.ja = getelementptr i8, ptr %.01112.i, i64 16 ; 2 uses
  %i.jb = load i32, ptr %i.is, align 4, !tbaa !7
  %i.jc = zext i32 %i.jb to i64
  %i.jd = shl nuw i64 %i.jc, %.pre                ; 2 uses
  %i.je = or i64 %i.jd, %i.iz
  %i.jf = trunc i64 %i.je to i32
  %i.jg = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  store i32 %i.jf, ptr %i.iy, align 4, !tbaa !7
  %i.jh = lshr i64 %i.jd, 32                      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i177.preheader.loopexit.unr-lcssa, label %.lr.ph.i172, !llvm.loop !88

.lr.ph.i177.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph.i172
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i177.preheader, label %.lr.ph.i172.epil.preheader

.lr.ph.i172.epil.preheader:                       ; preds = %.lr.ph.i177.preheader.loopexit.unr-lcssa, %.lr.ph.i172.preheader
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i172.preheader ], [ %i.jh, %.lr.ph.i177.preheader.loopexit.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ia, %.lr.ph.i172.preheader ], [ %i.jg, %.lr.ph.i177.preheader.loopexit.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %.0123215, %.lr.ph.i172.preheader ], [ %i.ja, %.lr.ph.i177.preheader.loopexit.unr-lcssa ]
  %lcmp.mod320 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod320)
  br label %.lr.ph.i172.epil

.lr.ph.i172.epil:                                 ; preds = %.lr.ph.i172.epil, %.lr.ph.i172.epil.preheader
  %.015.i.epil = phi i64 [ %i.jp, %.lr.ph.i172.epil ], [ %.015.i.epil.init, %.lr.ph.i172.epil.preheader ]
  %.01013.i.epil = phi ptr [ %i.jo, %.lr.ph.i172.epil ], [ %.01013.i.epil.init, %.lr.ph.i172.epil.preheader ] ; 2 uses
  %.01112.i.epil = phi ptr [ %i.ji, %.lr.ph.i172.epil ], [ %.01112.i.epil.init, %.lr.ph.i172.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i172.epil ], [ 0, %.lr.ph.i172.epil.preheader ]
  %i.ji = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.jj = load i32, ptr %.01112.i.epil, align 4, !tbaa !7
  %i.jk = zext i32 %i.jj to i64
  %i.jl = shl nuw i64 %i.jk, %.pre                ; 2 uses
  %i.jm = or i64 %i.jl, %.015.i.epil
  %i.jn = trunc i64 %i.jm to i32
  %i.jo = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.jn, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.jp = lshr i64 %i.jl, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i177.preheader, label %.lr.ph.i172.epil, !llvm.loop !434

.lr.ph.i177.preheader:                            ; preds = %.lr.ph.i177.preheader.loopexit.unr-lcssa, %.lr.ph.i172.epil, %bb.av
  %i.jq = add i64 %2, -1
  %xtraiter321 = and i64 %2, 3                    ; 3 uses
  %i.jr = icmp ult i64 %i.jq, 3
  br i1 %i.jr, label %.lr.ph.i177.epil.preheader, label %.lr.ph.i177.preheader.new

.lr.ph.i177.preheader.new:                        ; preds = %.lr.ph.i177.preheader
  %unroll_iter326 = and i64 %2, -4
  br label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.i177.preheader.new
  %.015.i178 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %i.kt, %.lr.ph.i177 ]
  %.01013.i180 = phi ptr [ %1, %.lr.ph.i177.preheader.new ], [ %i.kn, %.lr.ph.i177 ] ; 6 uses
  %niter327 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %niter327.next.3, %.lr.ph.i177 ]
  %i.js = getelementptr i8, ptr %.01013.i180, i64 4 ; 2 uses
  %i.jt = load i32, ptr %.01013.i180, align 4, !tbaa !7
  %i.ju = zext i32 %i.jt to i64
  %i.jv = shl nuw i64 %i.ju, %.pre                ; 2 uses
  %i.jw = or i64 %i.jv, %.015.i178
  %i.jx = trunc i64 %i.jw to i32
  store i32 %i.jx, ptr %.01013.i180, align 4, !tbaa !7
  %i.jy = lshr i64 %i.jv, 32
  %i.jz = getelementptr i8, ptr %.01013.i180, i64 8 ; 2 uses
  %i.ka = load i32, ptr %i.js, align 4, !tbaa !7
  %i.kb = zext i32 %i.ka to i64
  %i.kc = shl nuw i64 %i.kb, %.pre                ; 2 uses
  %i.kd = or i64 %i.kc, %i.jy
  %i.ke = trunc i64 %i.kd to i32
  store i32 %i.ke, ptr %i.js, align 4, !tbaa !7
  %i.kf = lshr i64 %i.kc, 32
  %i.kg = getelementptr i8, ptr %.01013.i180, i64 12 ; 2 uses
  %i.kh = load i32, ptr %i.jz, align 4, !tbaa !7
  %i.ki = zext i32 %i.kh to i64
  %i.kj = shl nuw i64 %i.ki, %.pre                ; 2 uses
  %i.kk = or i64 %i.kj, %i.kf
  %i.kl = trunc i64 %i.kk to i32
  store i32 %i.kl, ptr %i.jz, align 4, !tbaa !7
  %i.km = lshr i64 %i.kj, 32
  %i.kn = getelementptr i8, ptr %.01013.i180, i64 16 ; 2 uses
  %i.ko = load i32, ptr %i.kg, align 4, !tbaa !7
  %i.kp = zext i32 %i.ko to i64
  %i.kq = shl nuw i64 %i.kp, %.pre                ; 2 uses
  %i.kr = or i64 %i.kq, %i.km
  %i.ks = trunc i64 %i.kr to i32
  store i32 %i.ks, ptr %i.kg, align 4, !tbaa !7
  %i.kt = lshr i64 %i.kq, 32                      ; 3 uses
  %niter327.next.3 = add i64 %niter327, 4         ; 2 uses
  %niter327.ncmp.3 = icmp eq i64 %niter327.next.3, %unroll_iter326
  br i1 %niter327.ncmp.3, label %.unr-lcssa, label %.lr.ph.i177, !llvm.loop !88

.unr-lcssa:                                       ; preds = %.lr.ph.i177
  %lcmp.mod323.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod323.not, label %.epilog-lcssa, label %.lr.ph.i177.epil.preheader

.lr.ph.i177.epil.preheader:                       ; preds = %.unr-lcssa, %.lr.ph.i177.preheader
  %.015.i178.epil.init = phi i64 [ 0, %.lr.ph.i177.preheader ], [ %i.kt, %.unr-lcssa ]
  %.01013.i180.epil.init = phi ptr [ %1, %.lr.ph.i177.preheader ], [ %i.kn, %.unr-lcssa ]
  %lcmp.mod325 = icmp ne i64 %xtraiter321, 0
  call void @llvm.assume(i1 %lcmp.mod325)
  br label %.lr.ph.i177.epil

.lr.ph.i177.epil:                                 ; preds = %.lr.ph.i177.epil, %.lr.ph.i177.epil.preheader
  %.015.i178.epil = phi i64 [ %i.la, %.lr.ph.i177.epil ], [ %.015.i178.epil.init, %.lr.ph.i177.epil.preheader ]
  %.01013.i180.epil = phi ptr [ %i.ku, %.lr.ph.i177.epil ], [ %.01013.i180.epil.init, %.lr.ph.i177.epil.preheader ] ; 3 uses
  %epil.iter322 = phi i64 [ %epil.iter322.next, %.lr.ph.i177.epil ], [ 0, %.lr.ph.i177.epil.preheader ]
  %i.ku = getelementptr i8, ptr %.01013.i180.epil, i64 4
  %i.kv = load i32, ptr %.01013.i180.epil, align 4, !tbaa !7
  %i.kw = zext i32 %i.kv to i64
  %i.kx = shl nuw i64 %i.kw, %.pre                ; 2 uses
  %i.ky = or i64 %i.kx, %.015.i178.epil
  %i.kz = trunc i64 %i.ky to i32
  store i32 %i.kz, ptr %.01013.i180.epil, align 4, !tbaa !7
  %i.la = lshr i64 %i.kx, 32                      ; 2 uses
  %epil.iter322.next = add i64 %epil.iter322, 1   ; 2 uses
  %epil.iter322.cmp.not = icmp eq i64 %epil.iter322.next, %xtraiter321
  br i1 %epil.iter322.cmp.not, label %.epilog-lcssa, label %.lr.ph.i177.epil, !llvm.loop !435

.epilog-lcssa:                                    ; preds = %.lr.ph.i177.epil, %.unr-lcssa
  %.lcssa308 = phi i64 [ %i.kt, %.unr-lcssa ], [ %i.la, %.lr.ph.i177.epil ]
  %i.lb = trunc nuw i64 %.lcssa308 to i32
  %i.lc = getelementptr [4 x i8], ptr %1, i64 %2
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !7
  call fastcc void @bigdivrem_restoring(ptr noundef %1, i64 noundef %i.hx, ptr noundef %i.ia, i64 noundef %.0122211)
  br i1 %.not.i171, label %bary_small_rshift.exit, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.epilog-lcssa
  %i.ld = getelementptr [4 x i8], ptr %1, i64 %.0122211 ; 2 uses
  %min.iters.check = icmp ult i64 %.0122211, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i188
  %n.vec = and i64 %.0122211, -4                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph ], [ %i.lh, %vector.body ]
  %i.le = xor i64 %index, -1
  %i.lf = getelementptr [4 x i8], ptr %i.ld, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.lf, i64 -12    ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.lg, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lh = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.li = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.lh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lj = shl nuw <4 x i64> %i.li, splat (i64 32)
  %i.lk = or disjoint <4 x i64> %i.lj, %i.lh
  %i.ll = lshr <4 x i64> %i.lk, %broadcast.splat
  %i.lm = trunc <4 x i64> %i.ll to <4 x i32>
  %reverse305 = shufflevector <4 x i32> %i.lm, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse305, ptr %i.lg, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ln = icmp eq i64 %index.next, %n.vec
  br i1 %i.ln, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.lh, i64 3
  %cmp.n = icmp eq i64 %.0122211, %n.vec
  br i1 %cmp.n, label %bary_small_rshift.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i188, %middle.block
  %.017.i.ph = phi i64 [ 0, %.lr.ph.i188 ], [ %n.vec, %middle.block ]
  %.014.in16.i.ph = phi i64 [ 0, %.lr.ph.i188 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.017.i = phi i64 [ %i.lv, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.in16.i = phi i64 [ %i.lr, %scalar.ph ], [ %.014.in16.i.ph, %scalar.ph.preheader ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.lo = xor i64 %.017.i, -1
  %i.lp = getelementptr [4 x i8], ptr %i.ld, i64 %i.lo ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = zext i32 %i.lq to i64                   ; 2 uses
  %i.ls = or disjoint i64 %.014.i, %i.lr
  %i.lt = lshr i64 %i.ls, %.pre
  %i.lu = trunc i64 %i.lt to i32
  store i32 %i.lu, ptr %i.lp, align 4, !tbaa !7
  %i.lv = add nuw i64 %.017.i, 1                  ; 2 uses
  %exitcond.not.i189 = icmp eq i64 %i.lv, %.0122211
  br i1 %exitcond.not.i189, label %bary_small_rshift.exit, label %scalar.ph, !llvm.loop !437

bary_small_rshift.exit:                           ; preds = %scalar.ph, %middle.block, %.epilog-lcssa, %.thread
  %i.lw = getelementptr [4 x i8], ptr %1, i64 %.0122211 ; 2 uses
  %i.lx = sub i64 %i.hx, %.0122211                ; 2 uses
  %.not130233 = icmp eq i64 %i.lx, 0
  br i1 %.not130233, label %.critedge4, label %.lr.ph235

.lr.ph235:                                        ; preds = %bary_small_rshift.exit, %bb.aw
  %.0120234 = phi i64 [ %i.mc, %bb.aw ], [ %i.lx, %bary_small_rshift.exit ] ; 3 uses
  %i.ly = getelementptr [4 x i8], ptr %i.lw, i64 %.0120234
  %i.lz = getelementptr i8, ptr %i.ly, i64 -4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !7
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.aw, label %.critedge4

bb.aw:                                            ; preds = %.lr.ph235
  %i.mc = add i64 %.0120234, -1                   ; 2 uses
  %.not130 = icmp eq i64 %i.mc, 0
  br i1 %.not130, label %.critedge4, label %.lr.ph235, !llvm.loop !438

.critedge4:                                       ; preds = %.lr.ph235, %bb.aw, %bary_small_rshift.exit
  %.0120.lcssa = phi i64 [ 0, %bary_small_rshift.exit ], [ 0, %bb.aw ], [ %.0120234, %.lr.ph235 ] ; 2 uses
  %i.md = add i64 %3, %2                          ; 2 uses
  %i.me = add i64 %.0122211, %.0120.lcssa
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = load i64, ptr %i.c, align 8, !tbaa !11
end_hunk_9
