inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@bary_mul_normal:bb.a
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
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw i64 %i.k, %i.h
  %i.m = add nuw i64 %i.l, %.03035.i.epil.init    ; 2 uses
  %.not.i.epil = icmp eq i64 %i.m, 0
  br i1 %.not.i.epil, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.n = getelementptr [4 x i8], ptr %i.c, i64 %.036.i.epil.init ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw i64 %i.m, %i.p                   ; 2 uses
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.n, align 4, !tbaa !7
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
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw i64 %i.x, %i.h
  %i.z = add nuw i64 %i.y, %.03035.i              ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr [4 x i8], ptr %i.c, i64 %.036.i ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw i64 %i.z, %i.ac                 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.aa, align 4, !tbaa !7
  %i.af = lshr i64 %i.ad, 32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.c, %.lr.ph.i
  %.131.i = phi i64 [ %i.af, %bb.c ], [ 0, %.lr.ph.i ]
  %i.ag = or disjoint i64 %.036.i, 1              ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %4, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw i64 %i.aj, %i.h
  %i.al = add nuw i64 %i.ak, %.131.i              ; 2 uses
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
  %.131.i.1 = phi i64 [ %i.ar, %bb.d ], [ 0, %.lr.ph.i.1 ] ; 3 uses
  %i.as = add nuw i64 %.036.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !16

.lr.ph41.i:                                       ; preds = %.preheader.i, %.lr.ph41.i
  %.140.i = phi i64 [ %i.az, %.lr.ph41.i ], [ %5, %.preheader.i ] ; 2 uses
  %.239.i = phi i64 [ %i.ay, %.lr.ph41.i ], [ %.131.i.lcssa, %.preheader.i ]
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
  %.080103 = phi i64 [ 0, %.lr.ph104.preheader ], [ %.pre-phi, %bb.d ] ; 8 uses
  %4 = sub i64 %i.c, %indvar
  %i.e = sub i64 %i.c, %indvar
  %i.f = getelementptr [4 x i8], ptr %2, i64 %.080103
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %.fr = freeze i32 %i.g                          ; 4 uses
  %.not88 = icmp eq i32 %.fr, 0
  br i1 %.not88, label %.lr.ph104._crit_edge, label %.lr.ph101

.lr.ph104._crit_edge:                             ; preds = %.lr.ph104
  %.pre = add nuw i64 %.080103, 1
  br label %bb.d

.lr.ph101:                                        ; preds = %.lr.ph104
  %i.h = zext i32 %.fr to i64                     ; 2 uses
  %.idx89 = shl i64 %.080103, 3
  %i.i = getelementptr i8, ptr %0, i64 %.idx89    ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw i64 %i.h, %i.h
  %i.m = add nuw i64 %i.l, %i.k                   ; 2 uses
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %i.i, align 4, !tbaa !7
  %i.o = lshr i64 %i.m, 32                        ; 4 uses
  %.07997 = add nuw i64 %.080103, 1               ; 9 uses
  %i.p = shl i32 %.fr, 1
  %i.q = getelementptr [4 x i8], ptr %0, i64 %.080103 ; 6 uses
  %i.r = zext i32 %i.p to i64                     ; 6 uses
  %.not9293 = icmp slt i32 %.fr, 0
  br i1 %.not9293, label %.lr.ph101.split.us.preheader, label %.lr.ph101.split.preheader

.lr.ph101.split.preheader:                        ; preds = %.lr.ph101
  %xtraiter = and i64 %i.e, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph101.split.prol.loopexit, label %.lr.ph101.split.prol

.lr.ph101.split.prol:                             ; preds = %.lr.ph101.split.preheader
  %i.s = getelementptr [4 x i8], ptr %2, i64 %.07997
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr [4 x i8], ptr %i.q, i64 %.07997 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw i64 %i.u, %i.r
  %i.z = add nuw nsw i64 %i.o, %i.x
  %i.aa = add nuw i64 %i.z, %i.y                  ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.v, align 4, !tbaa !7
  %i.ac = lshr i64 %i.aa, 32                      ; 2 uses
  %.079.prol = add nuw i64 %.080103, 2
  br label %.lr.ph101.split.prol.loopexit

.lr.ph101.split.prol.loopexit:                    ; preds = %.lr.ph101.split.prol, %.lr.ph101.split.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph101.split.preheader ], [ %i.ac, %.lr.ph101.split.prol ]
  %.07999.unr = phi i64 [ %.07997, %.lr.ph101.split.preheader ], [ %.079.prol, %.lr.ph101.split.prol ]
  %.07898.unr = phi i64 [ %i.o, %.lr.ph101.split.preheader ], [ %i.ac, %.lr.ph101.split.prol ]
  %i.ad = icmp eq i64 %i.d, %indvar
  br i1 %i.ad, label %._crit_edge102, label %.lr.ph101.split

.lr.ph101.split.us.preheader:                     ; preds = %.lr.ph101
  %xtraiter120 = and i64 %4, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph101.split.us.prol.loopexit, label %.lr.ph101.split.us.prol

.lr.ph101.split.us.prol:                          ; preds = %.lr.ph101.split.us.preheader
  %i.ae = getelementptr [4 x i8], ptr %2, i64 %.07997
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.q, i64 %.07997 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw i64 %i.ag, %i.r
  %i.al = add nuw nsw i64 %i.o, %i.aj
  %i.am = add nuw i64 %i.al, %i.ak                ; 2 uses
  %i.an = trunc i64 %i.am to i32
  store i32 %i.an, ptr %i.ah, align 4, !tbaa !7
  %i.ao = lshr i64 %i.am, 32
  %spec.select.us.prol = add nuw nsw i64 %i.ao, %i.ag ; 2 uses
  %.079.us.prol = add nuw i64 %.080103, 2
  br label %.lr.ph101.split.us.prol.loopexit

.lr.ph101.split.us.prol.loopexit:                 ; preds = %.lr.ph101.split.us.prol, %.lr.ph101.split.us.preheader
  %spec.select.us.lcssa.unr = phi i64 [ poison, %.lr.ph101.split.us.preheader ], [ %spec.select.us.prol, %.lr.ph101.split.us.prol ]
  %.07999.us.unr = phi i64 [ %.07997, %.lr.ph101.split.us.preheader ], [ %.079.us.prol, %.lr.ph101.split.us.prol ]
  %.07898.us.unr = phi i64 [ %i.o, %.lr.ph101.split.us.preheader ], [ %spec.select.us.prol, %.lr.ph101.split.us.prol ]
  %i.ap = icmp eq i64 %i.d, %indvar
  br i1 %i.ap, label %._crit_edge102, label %.lr.ph101.split.us

.lr.ph101.split.us:                               ; preds = %.lr.ph101.split.us.prol.loopexit, %.lr.ph101.split.us
  %.07999.us = phi i64 [ %.079.us.1, %.lr.ph101.split.us ], [ %.07999.us.unr, %.lr.ph101.split.us.prol.loopexit ] ; 4 uses
  %.07898.us = phi i64 [ %spec.select.us.1, %.lr.ph101.split.us ], [ %.07898.us.unr, %.lr.ph101.split.us.prol.loopexit ]
  %i.aq = getelementptr [4 x i8], ptr %2, i64 %.07999.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.q, i64 %.07999.us ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = zext i32 %i.au to i64
  %i.aw = mul nuw i64 %i.as, %i.r
  %i.ax = add nuw nsw i64 %.07898.us, %i.av
  %i.ay = add nuw i64 %i.ax, %i.aw                ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.at, align 4, !tbaa !7
  %i.ba = lshr i64 %i.ay, 32
  %spec.select.us = add nuw nsw i64 %i.ba, %i.as
  %.079.us = add nuw i64 %.07999.us, 1            ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %2, i64 %.079.us
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.q, i64 %.079.us ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul nuw i64 %i.bd, %i.r
  %i.bi = add nuw nsw i64 %spec.select.us, %i.bg
  %i.bj = add nuw i64 %i.bi, %i.bh                ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.be, align 4, !tbaa !7
  %i.bl = lshr i64 %i.bj, 32
  %spec.select.us.1 = add nuw nsw i64 %i.bl, %i.bd ; 2 uses
  %.079.us.1 = add nuw i64 %.07999.us, 2          ; 2 uses
  %exitcond110.not.1 = icmp eq i64 %.079.us.1, %3
  br i1 %exitcond110.not.1, label %._crit_edge102, label %.lr.ph101.split.us, !llvm.loop !28

.lr.ph101.split:                                  ; preds = %.lr.ph101.split.prol.loopexit, %.lr.ph101.split
  %.07999 = phi i64 [ %.079.1, %.lr.ph101.split ], [ %.07999.unr, %.lr.ph101.split.prol.loopexit ] ; 4 uses
  %.07898 = phi i64 [ %i.ch, %.lr.ph101.split ], [ %.07898.unr, %.lr.ph101.split.prol.loopexit ]
  %i.bm = getelementptr [4 x i8], ptr %2, i64 %.07999
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %i.q, i64 %.07999 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul nuw i64 %i.bo, %i.r
  %i.bt = add nuw nsw i64 %.07898, %i.br
  %i.bu = add nuw i64 %i.bt, %i.bs                ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  store i32 %i.bv, ptr %i.bp, align 4, !tbaa !7
  %i.bw = lshr i64 %i.bu, 32
  %.079 = add nuw i64 %.07999, 1                  ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %2, i64 %.079
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr [4 x i8], ptr %i.q, i64 %.079 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = zext i32 %i.cb to i64
  %i.cd = mul nuw i64 %i.bz, %i.r
  %i.ce = add nuw nsw i64 %i.bw, %i.cc
  %i.cf = add nuw i64 %i.ce, %i.cd                ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  store i32 %i.cg, ptr %i.ca, align 4, !tbaa !7
  %i.ch = lshr i64 %i.cf, 32                      ; 2 uses
  %.079.1 = add nuw i64 %.07999, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.079.1, %3
  br i1 %exitcond.not.1, label %._crit_edge102, label %.lr.ph101.split, !llvm.loop !28

._crit_edge102:                                   ; preds = %.lr.ph101.split.prol.loopexit, %.lr.ph101.split, %.lr.ph101.split.us.prol.loopexit, %.lr.ph101.split.us
  %.078.lcssa = phi i64 [ %spec.select.us.1, %.lr.ph101.split.us ], [ %spec.select.us.lcssa.unr, %.lr.ph101.split.us.prol.loopexit ], [ %.lcssa.unr, %.lr.ph101.split.prol.loopexit ], [ %i.ch, %.lr.ph101.split ] ; 2 uses
  %.not90 = icmp eq i64 %.078.lcssa, 0
  br i1 %.not90, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge102
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.080103 ; 3 uses
  %i.ci = load i32, ptr %gep, align 4, !tbaa !7
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add nuw nsw i64 %.078.lcssa, %i.cj      ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %gep, align 4, !tbaa !7
  %i.cm = lshr i64 %i.ck, 32                      ; 2 uses
  %.not91 = icmp eq i64 %i.cm, 0
  br i1 %.not91, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = add i32 %i.cp, %i.cn
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph104._crit_edge, %._crit_edge102, %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.pre, %.lr.ph104._crit_edge ], [ %.07997, %._crit_edge102 ], [ %.07997, %bb.c ], [ %.07997, %bb.b ] ; 2 uses
  %exitcond111.not = icmp eq i64 %.pre-phi, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond111.not, label %._crit_edge105, label %.lr.ph104, !llvm.loop !29

._crit_edge105:                                   ; preds = %bb.d, %.preheader
  %i.cr = getelementptr [4 x i8], ptr %2, i64 %i.c
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7  ; 2 uses
  %.not86 = icmp eq i32 %i.cs, 0
  br i1 %.not86, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge105
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %.idx = shl i64 %i.c, 3
  %i.cu = getelementptr i8, ptr %0, i64 %.idx     ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.ct, %i.ct
  %i.cy = add nuw i64 %i.cx, %i.cw                ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !7
  %i.da = lshr i64 %i.cy, 32                      ; 2 uses
  %.not87 = icmp eq i64 %i.da, 0
  br i1 %.not87, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.db = trunc nuw i64 %i.da to i32
  %i.dc = getelementptr [4 x i8], ptr %0, i64 %i.c
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %3 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = add i32 %i.de, %i.db
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %._crit_edge105, %._crit_edge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_mul_balance(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
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
end_hunk_0
begin_hunk_1_@str2big_normal:bb.a
  %i.u = sub nuw i64 %.132, %.028
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader
  %i.v = getelementptr [4 x i8], ptr %.0.i, i64 %.028 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, %i.k
  %i.z = add nsw i64 %i.y, %.029                  ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add nuw i64 %.028, 1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !7
  %i.ac = lshr i64 %i.z, 32                       ; 2 uses
  br label %.lr.ph40.prol.loopexit

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph40.preheader ], [ %i.ac, %.lr.ph40.prol ]
  %.139.unr = phi i64 [ %.028, %.lr.ph40.preheader ], [ %i.ab, %.lr.ph40.prol ]
  %.13038.unr = phi i64 [ %.029, %.lr.ph40.preheader ], [ %i.ac, %.lr.ph40.prol ]
  %i.ad = icmp eq i64 %i.t, %.028
  br i1 %i.ad, label %._crit_edge, label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %.139 = phi i64 [ %i.as, %.lr.ph40 ], [ %.139.unr, %.lr.ph40.prol.loopexit ] ; 3 uses
  %.13038 = phi i64 [ %i.at, %.lr.ph40 ], [ %.13038.unr, %.lr.ph40.prol.loopexit ]
  %i.ae = getelementptr [4 x i8], ptr %.0.i, i64 %.139 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ag, %i.k
  %i.ai = add nsw i64 %i.ah, %.13038              ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !7
  %i.ak = lshr i64 %i.ai, 32
  %i.al = getelementptr [4 x i8], ptr %.0.i, i64 %.139
  %i.am = getelementptr i8, ptr %i.al, i64 4      ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, %i.k
  %i.aq = add nsw i64 %i.ap, %i.ak                ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add nuw i64 %.139, 2                    ; 2 uses
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !7
  %i.at = lshr i64 %i.aq, 32                      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.as, %.132
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph40, !llvm.loop !215

._crit_edge:                                      ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40, %bb.f
  %.130.lcssa = phi i64 [ %.029, %bb.f ], [ %.lcssa.unr, %.lr.ph40.prol.loopexit ], [ %i.at, %.lr.ph40 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.028, %bb.f ], [ %.132, %.lr.ph40 ], [ %.132, %.lr.ph40.prol.loopexit ]
  %.not34 = icmp eq i64 %.130.lcssa, 0
  %i.au = add i64 %.132, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not34, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %._crit_edge, %bb.d
  %.2 = phi i64 [ %.03142, %bb.d ], [ %.132, %._crit_edge ]
  %i.av = getelementptr i8, ptr %.02743, i64 1    ; 2 uses
  %exitcond47.not = icmp eq ptr %i.av, %2
  br i1 %exitcond47.not, label %._crit_edge45, label %bb.d, !llvm.loop !216

._crit_edge45:                                    ; preds = %.loopexit, %.preheader
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @str2big_karatsuba(i32 noundef range(i32 0, 2) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !11
  %i.b = shl i64 %4, 1                            ; 3 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %4, 3
  %i.e = alloca i8, i64 %i.d, align 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.f, label %bb.d, label %rb_alloc_tmp_buffer2.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.b, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.c
  %i.g = shl i64 %4, 3
  %i.h = and i64 %4, 2305843009213693951
  %i.i = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef %i.h) #26
  br label %bb.e

bb.e:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.b
  %i.j = phi ptr [ %i.e, %bb.b ], [ %i.i, %rb_alloc_tmp_buffer2.exit ] ; 4 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %4
  %i.l = add i32 %6, -2
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr [520 x i8], ptr @base36_power_cache, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.f, label %power_cache_get_power.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr [8 x i8], ptr @maxpow64_num, i64 %i.m
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.u = call fastcc i64 @bignew_1(i64 noundef %i.t, i64 noundef 2, i32 noundef 1), !inline_history !217 ; 5 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13
  %i.x = and i64 %i.w, 16384
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.v, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  store i64 %i.q, ptr %.0.i.i, align 4
  %i.ab = sext i32 %i.s to i64
  %i.ac = call i64 @rb_obj_hide(i64 noundef %i.u) #23, !inline_history !217 ; 0 uses
  store i64 %i.u, ptr %i.n, align 8, !tbaa !11
  %i.ad = getelementptr [520 x i8], ptr @base36_numdigits_cache, i64 %i.m
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !11
  call void @rb_vm_register_global_object(i64 noundef %i.u) #23, !inline_history !217
  br label %power_cache_get_power.exit

power_cache_get_power.exit:                       ; preds = %bb.e, %BIGNUM_DIGITS.exit.i
  %.1.i = phi i64 [ %i.o, %bb.e ], [ %i.u, %BIGNUM_DIGITS.exit.i ]
  %i.ae = sext i32 %5 to i64                      ; 2 uses
  %i.af = icmp ult ptr %1, %2
  br i1 %i.af, label %.lr.ph, label %.preheader203

.lr.ph:                                           ; preds = %power_cache_get_power.exit
  %spec.select200 = call i64 @llvm.umin.i64(i64 %3, i64 %i.ae)
  %spec.select = trunc i64 %spec.select200 to i32
  %i.ag = sext i32 %6 to i64
  br label %bb.i

.preheader203:                                    ; preds = %bb.l, %power_cache_get_power.exit
  %i.ah = icmp ugt i64 %4, 2
  br i1 %i.ah, label %.preheader202, label %.preheader

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.0216 = phi ptr [ %2, %.lr.ph ], [ %i.ai, %bb.l ]
  %.0109215 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.l ] ; 4 uses
  %.1112214 = phi i32 [ %spec.select, %.lr.ph ], [ %.3, %bb.l ] ; 2 uses
  %.0114213 = phi i64 [ 1, %.lr.ph ], [ %.1115, %bb.l ] ; 3 uses
  %.0116212 = phi i64 [ 0, %.lr.ph ], [ %.1117, %bb.l ] ; 2 uses
  %.0122211 = phi i64 [ %3, %.lr.ph ], [ %.1123, %bb.l ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.0216, i64 -1    ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15  ; 2 uses
  %i.an = icmp slt i8 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = zext nneg i8 %i.am to i64
  %i.ap = mul i64 %.0114213, %i.ao
  %i.aq = add i64 %i.ap, %.0116212                ; 2 uses
  %i.ar = mul i64 %.0114213, %i.ag
  %i.as = add i64 %.0122211, -1                   ; 3 uses
  %i.at = add i32 %.1112214, -1                   ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr [4 x i8], ptr %i.j, i64 %.0109215
  store i64 %i.aq, ptr %i.av, align 4
  %i.aw = add i64 %.0109215, 2
  %spec.select138201 = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ae)
  %spec.select138 = trunc i64 %spec.select138201 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.1123 = phi i64 [ %.0122211, %bb.i ], [ %i.as, %bb.k ], [ %i.as, %bb.j ]
  %.1117 = phi i64 [ %.0116212, %bb.i ], [ 0, %bb.k ], [ %i.aq, %bb.j ]
  %.1115 = phi i64 [ %.0114213, %bb.i ], [ 1, %bb.k ], [ %i.ar, %bb.j ]
  %.3 = phi i32 [ %.1112214, %bb.i ], [ %spec.select138, %bb.k ], [ %i.at, %bb.j ]
  %.1 = phi i64 [ %.0109215, %bb.i ], [ %i.aw, %bb.k ], [ %.0109215, %bb.j ]
  %i.ax = icmp ult ptr %1, %i.ai
  br i1 %i.ax, label %bb.i, label %.preheader203, !llvm.loop !218

.preheader202:                                    ; preds = %.preheader203, %bb.ac
  %.0110223 = phi i32 [ %i.iy, %bb.ac ], [ 0, %.preheader203 ]
  %.0118222 = phi ptr [ %.0119221, %bb.ac ], [ %i.k, %.preheader203 ] ; 8 uses
  %.0119221 = phi ptr [ %.0118222, %bb.ac ], [ %i.j, %.preheader203 ] ; 6 uses
  %.0120220 = phi i64 [ %i.ay, %bb.ac ], [ 2, %.preheader203 ] ; 22 uses
  %.0121219 = phi i64 [ %i.iz, %bb.ac ], [ %.1.i, %.preheader203 ]
  %.0118222287 = ptrtoaddr ptr %.0118222 to i64   ; 2 uses
  %i.ay = shl i64 %.0120220, 1                    ; 13 uses
  %i.az = inttoptr i64 %.0121219 to ptr           ; 4 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 4 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  %i.bc = icmp sgt i64 %.0120220, 0
  %.not.i.i142 = icmp eq i64 %i.ay, 0
  %i.bd = shl i64 %.0120220, 3
  %i.be = mul i64 %.0120220, -2
  %i.bf = shl i64 %.0120220, 3
  %7 = mul i64 %.0120220, -2
  %i.bg = mul i64 %.0120220, -2
  br label %bb.m

.preheader:                                       ; preds = %bb.ac, %.preheader203
  %.0119.lcssa = phi ptr [ %i.j, %.preheader203 ], [ %.0118222, %bb.ac ] ; 2 uses
  %.not224 = icmp eq i64 %4, 0
  br i1 %.not224, label %.critedge, label %.lr.ph226

bb.m:                                             ; preds = %.preheader202, %bary_add.exit
  %indvar = phi i64 [ 0, %.preheader202 ], [ %indvar.next, %bary_add.exit ] ; 6 uses
  %.2217 = phi i64 [ 0, %.preheader202 ], [ %i.iw, %bary_add.exit ] ; 11 uses
  %8 = mul i64 %i.bg, %indvar
  %9 = add i64 %4, %8
  %umax326 = call i64 @llvm.umax.i64(i64 %.0120220, i64 %9) ; 2 uses
  %i.bh = mul i64 %7, %indvar
  %i.bi = add i64 %4, %i.bh
  %umin321 = call i64 @llvm.umin.i64(i64 %.0120220, i64 %i.bi) ; 4 uses
  %i.bj = mul i64 %i.bf, %indvar
  %i.bk = add i64 %i.bj, %.0118222287
  %i.bl = mul i64 %i.be, %indvar
  %i.bm = add i64 %4, %i.bl                       ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.0120220, i64 %i.bm)
  %umin = call i64 @llvm.umin.i64(i64 %.0120220, i64 %i.bm)
  %i.bn = mul i64 %i.bd, %indvar
  %i.bo = add i64 %i.bn, %.0118222287
  %i.bp = sub nuw i64 %4, %.2217                  ; 10 uses
  %.not136 = icmp ugt i64 %i.ay, %i.bp
  br i1 %.not136, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr [4 x i8], ptr %.0118222, i64 %.2217 ; 14 uses
  %i.br = load i64, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bs = and i64 %i.br, 16384
  %.not.i139 = icmp eq i64 %i.bs, 0
  br i1 %.not.i139, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bu = load i64, ptr %i.ba, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.p:                                             ; preds = %bb.n
  %i.bv = lshr i64 %i.br, 15
  %i.bw = and i64 %i.bv, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.o, %bb.p
  %.0.i195 = phi ptr [ %i.ba, %bb.p ], [ %i.bt, %bb.o ]
  %.0.i141 = phi i64 [ %i.bw, %bb.p ], [ %i.bu, %bb.o ]
  %i.bx = getelementptr [4 x i8], ptr %.0119221, i64 %.2217 ; 3 uses
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %.0120220
  call fastcc void @bary_mul(ptr noundef %i.bq, i64 noundef %i.ay, ptr noundef %.0.i195, i64 noundef %.0.i141, ptr noundef %i.by, i64 noundef %.0120220)
  br i1 %i.bc, label %.lr.ph.i.i.preheader, label %bb.q

bb.q:                                             ; preds = %BIGNUM_LEN.exit
  br i1 %.not.i.i142, label %.preheader72.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %BIGNUM_LEN.exit, %bb.q
  %i.bz = phi ptr [ %.0118222, %bb.q ], [ %.0119221, %BIGNUM_LEN.exit ]
  %.062.i.i266 = phi i64 [ %.0120220, %bb.q ], [ %i.ay, %BIGNUM_LEN.exit ]
  %.063.i.i264 = phi ptr [ %i.bx, %bb.q ], [ %i.bq, %BIGNUM_LEN.exit ] ; 3 uses
  %.064.i.i262 = phi i64 [ %i.ay, %bb.q ], [ %.0120220, %BIGNUM_LEN.exit ] ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %.2217 ; 2 uses
  br label %.lr.ph.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i, %bb.q
  %.062.i.i267 = phi i64 [ %.0120220, %bb.q ], [ %.062.i.i266, %.lr.ph.i.i ] ; 12 uses
  %.063.i.i265 = phi ptr [ %i.bx, %bb.q ], [ %.063.i.i264, %.lr.ph.i.i ] ; 9 uses
  %.064.i.i263 = phi i64 [ 0, %bb.q ], [ %.064.i.i262, %.lr.ph.i.i ] ; 3 uses
  %.058.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.cy, %.lr.ph.i.i ] ; 2 uses
  %.063.i.i265294 = ptrtoaddr ptr %.063.i.i265 to i64
  %i.cb = icmp ult i64 %.064.i.i263, %.062.i.i267
  br i1 %i.cb, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cz, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cy, %.lr.ph.i.i ]
  %i.cc = getelementptr [4 x i8], ptr %i.ca, i64 %.05779.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %.063.i.i264, i64 %.05779.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %.05878.i.i, %i.ce
  %i.cj = add nuw nsw i64 %i.ci, %i.ch            ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr [4 x i8], ptr %i.bq, i64 %.05779.i.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !7
  %i.cm = lshr i64 %i.cj, 32
  %i.cn = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %.063.i.i264, i64 %i.cn
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.cm, %i.cq
  %i.cv = add nuw nsw i64 %i.cu, %i.ct            ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = getelementptr [4 x i8], ptr %i.bq, i64 %i.cn
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !7
  %i.cy = lshr i64 %i.cv, 32                      ; 2 uses
  %i.cz = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cz, %.064.i.i262
  br i1 %exitcond.not.i.i.1, label %.preheader72.i.i, label %.lr.ph.i.i, !llvm.loop !34

.preheader70.i.i:                                 ; preds = %bb.s, %.preheader72.i.i
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i, %.preheader72.i.i ], [ %i.dl, %bb.s ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i263, %.preheader72.i.i ], [ %.062.i.i267, %bb.s ] ; 4 uses
  %i.da = icmp ult i64 %.1.lcssa.i.i, %i.ay
  br i1 %i.da, label %.lr.ph88.preheader.i.i, label %bary_add.exit

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.db = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.db, label %.loopexit71.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.dc = getelementptr [4 x i8], ptr %i.bq, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.dc, align 4, !tbaa !7
  %i.dd = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.dd, %i.ay
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.s
  %.182.i.i = phi i64 [ %i.dm, %bb.s ], [ %.064.i.i263, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.dl, %bb.s ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.de = icmp eq i64 %.15981.i.i, 0
  br i1 %i.de, label %.loopexit71.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph83.i.i
  %i.df = getelementptr [4 x i8], ptr %.063.i.i265, i64 %.182.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = getelementptr [4 x i8], ptr %i.bq, i64 %.182.i.i
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !7
  %i.dl = lshr i64 %i.di, 32                      ; 2 uses
  %i.dm = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.dm, %.062.i.i267
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !36

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.r, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.dd, %bb.r ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
  %i.dn = icmp eq ptr %.063.i.i265, %i.bq
  %i.do = icmp eq i64 %.062.i.i267, %i.ay
  %or.cond.i.i = and i1 %i.dn, %i.do
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.dp = icmp ult i64 %.3.i.i, %.062.i.i267
  br i1 %i.dp, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.dq = sub nuw i64 %.062.i.i267, %.3.i.i       ; 3 uses
  %min.iters.check297 = icmp ult i64 %i.dq, 8
  %i.dr = sub i64 %.063.i.i265294, %i.bk
  %diff.check295 = icmp ugt i64 %i.dr, -32
  %or.cond308 = select i1 %min.iters.check297, i1 true, i1 %diff.check295
  br i1 %or.cond308, label %.lr.ph91.i.i.preheader312, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph91.i.i.preheader
  %n.vec299 = and i64 %i.dq, -8                   ; 3 uses
  %i.ds = add i64 %.3.i.i, %n.vec299
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next304, %vector.body300 ] ; 2 uses
  %i.dt = add nuw i64 %.3.i.i, %index301          ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %.063.i.i265, i64 %i.dt ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  %wide.load302 = load <4 x i32>, ptr %i.du, align 4, !tbaa !7
  %wide.load303 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !7
  %i.dw = getelementptr [4 x i8], ptr %i.bq, i64 %i.dt ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load302, ptr %i.dw, align 4, !tbaa !7
  store <4 x i32> %wide.load303, ptr %i.dx, align 4, !tbaa !7
  %index.next304 = add nuw i64 %index301, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.dy, label %middle.block305, label %vector.body300, !llvm.loop !219

middle.block305:                                  ; preds = %vector.body300
  %cmp.n306 = icmp eq i64 %i.dq, %n.vec299
  br i1 %cmp.n306, label %.preheader.i.i, label %.lr.ph91.i.i.preheader312

.lr.ph91.i.i.preheader312:                        ; preds = %.lr.ph91.i.i.preheader, %middle.block305
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.ds, %middle.block305 ] ; 4 uses
  %i.dz = sub i64 %.062.i.i267, %.490.i.i.ph
  %xtraiter = and i64 %i.dz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader312, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.ed, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader312 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader312 ]
  %i.ea = getelementptr [4 x i8], ptr %.063.i.i265, i64 %.490.i.i.prol
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.ec = getelementptr [4 x i8], ptr %i.bq, i64 %.490.i.i.prol
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !7
  %i.ed = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !220

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader312
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader312 ], [ %i.ed, %.lr.ph91.i.i.prol ]
  %i.ee = sub i64 %.490.i.i.ph, %.062.i.i267
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block305, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i267, %middle.block305 ], [ %.062.i.i267, %.lr.ph91.i.i ], [ %.062.i.i267, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.eg = icmp ult i64 %.4.lcssa.i.i, %i.ay
  br i1 %i.eg, label %.lr.ph94.preheader.i.i, label %bary_add.exit

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.eh = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.bq, i64 %i.eh
  %i.ei = sub nuw i64 %i.ay, %.4.lcssa.i.i
  %i.ej = shl i64 %i.ei, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ej, i1 false), !tbaa !7
  br label %bary_add.exit

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.ez, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr [4 x i8], ptr %.063.i.i265, i64 %.490.i.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !7
  %i.em = getelementptr [4 x i8], ptr %i.bq, i64 %.490.i.i
  store i32 %i.el, ptr %i.em, align 4, !tbaa !7
  %i.en = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.eo = getelementptr [4 x i8], ptr %.063.i.i265, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7
  %i.eq = getelementptr [4 x i8], ptr %i.bq, i64 %i.en
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !7
  %i.er = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.es = getelementptr [4 x i8], ptr %.063.i.i265, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !7
  %i.eu = getelementptr [4 x i8], ptr %i.bq, i64 %i.er
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !7
  %i.ev = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %.063.i.i265, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !7
  %i.ey = getelementptr [4 x i8], ptr %i.bq, i64 %i.ev
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !7
  %i.ez = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.ez, %.062.i.i267
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !221

bb.t:                                             ; preds = %bb.m
  %.not137 = icmp ugt i64 %.0120220, %i.bp
  br i1 %.not137, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr [4 x i8], ptr %.0118222, i64 %.2217 ; 13 uses
  %i.fb = load i64, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.fc = and i64 %i.fb, 16384
  %.not.i144 = icmp eq i64 %i.fc, 0
  br i1 %.not.i144, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fd = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.fe = load i64, ptr %i.ba, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit149

bb.w:                                             ; preds = %bb.u
  %i.ff = lshr i64 %i.fb, 15
  %i.fg = and i64 %i.ff, 511
  br label %BIGNUM_LEN.exit149

BIGNUM_LEN.exit149:                               ; preds = %bb.v, %bb.w
  %.0.i145198 = phi ptr [ %i.ba, %bb.w ], [ %i.fd, %bb.v ]
  %.0.i148 = phi i64 [ %i.fg, %bb.w ], [ %i.fe, %bb.v ]
  %i.fh = getelementptr [4 x i8], ptr %.0119221, i64 %.2217 ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %.0120220
  %i.fj = add i64 %.0120220, %.2217
  %i.fk = sub i64 %4, %i.fj
  call fastcc void @bary_mul(ptr noundef %i.fa, i64 noundef %i.bp, ptr noundef %.0.i145198, i64 noundef %.0.i148, ptr noundef %i.fi, i64 noundef %i.fk)
  %i.fl = icmp ugt i64 %i.bp, %.0120220
  br i1 %i.fl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %BIGNUM_LEN.exit149
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %BIGNUM_LEN.exit149
  %.064.i.i150 = phi i64 [ %.0120220, %bb.x ], [ %i.bp, %BIGNUM_LEN.exit149 ] ; 3 uses
  %.063.i.i151 = phi ptr [ %i.fa, %bb.x ], [ %i.fh, %BIGNUM_LEN.exit149 ] ; 12 uses
  %.062.i.i152 = phi i64 [ %i.bp, %bb.x ], [ %.0120220, %BIGNUM_LEN.exit149 ] ; 5 uses
  %i.fm = phi ptr [ %.0119221, %bb.x ], [ %.0118222, %BIGNUM_LEN.exit149 ]
  %.063.i.i151288 = ptrtoaddr ptr %.063.i.i151 to i64
  %.not.i.i154 = icmp eq i64 %.064.i.i150, 0
  br i1 %.not.i.i154, label %.preheader72.i.i159, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %bb.y
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %.2217 ; 3 uses
  %xtraiter322 = and i64 %umin321, 1
  %i.fo = icmp eq i64 %umin321, 1
  br i1 %i.fo, label %.lr.ph.i.i155.epil.preheader, label %.lr.ph.i.i155.preheader.new

.lr.ph.i.i155.preheader.new:                      ; preds = %.lr.ph.i.i155.preheader
  %unroll_iter = and i64 %umin321, -2
  br label %.lr.ph.i.i155

.preheader72.i.i159.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i155
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.preheader72.i.i159, label %.lr.ph.i.i155.epil.preheader

.lr.ph.i.i155.epil.preheader:                     ; preds = %.preheader72.i.i159.loopexit.unr-lcssa, %.lr.ph.i.i155.preheader
  %.05779.i.i156.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.gy, %.preheader72.i.i159.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i157.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.gx, %.preheader72.i.i159.loopexit.unr-lcssa ]
  %lcmp.mod325 = trunc i64 %umin321 to i1
  call void @llvm.assume(i1 %lcmp.mod325)
  %i.fp = getelementptr [4 x i8], ptr %i.fn, i64 %.05779.i.i156.epil.init
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !7
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7
  %i.fu = zext i32 %i.ft to i64
  %i.fv = add nuw nsw i64 %.05878.i.i157.epil.init, %i.fr
  %i.fw = add nuw nsw i64 %i.fv, %i.fu            ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = getelementptr [4 x i8], ptr %i.fa, i64 %.05779.i.i156.epil.init
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !7
  %i.fz = lshr i64 %i.fw, 32
  br label %.preheader72.i.i159

.preheader72.i.i159:                              ; preds = %.lr.ph.i.i155.epil.preheader, %.preheader72.i.i159.loopexit.unr-lcssa, %bb.y
  %.058.lcssa.i.i160 = phi i64 [ 0, %bb.y ], [ %i.gx, %.preheader72.i.i159.loopexit.unr-lcssa ], [ %i.fz, %.lr.ph.i.i155.epil.preheader ]
  %i.ga = icmp ult i64 %.064.i.i150, %.062.i.i152
  br i1 %i.ga, label %.lr.ph83.i.i180, label %bary_add.exit

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155, %.lr.ph.i.i155.preheader.new
  %.05779.i.i156 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.gy, %.lr.ph.i.i155 ] ; 5 uses
  %.05878.i.i157 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.gx, %.lr.ph.i.i155 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %niter.next.1, %.lr.ph.i.i155 ]
  %i.gb = getelementptr [4 x i8], ptr %i.fn, i64 %.05779.i.i156
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !7
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !7
  %i.gg = zext i32 %i.gf to i64
  %i.gh = add nuw nsw i64 %.05878.i.i157, %i.gd
  %i.gi = add nuw nsw i64 %i.gh, %i.gg            ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = getelementptr [4 x i8], ptr %i.fa, i64 %.05779.i.i156
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !7
  %i.gl = lshr i64 %i.gi, 32
  %i.gm = or disjoint i64 %.05779.i.i156, 1       ; 3 uses
  %i.gn = getelementptr [4 x i8], ptr %i.fn, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !7
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.gm
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !7
  %i.gs = zext i32 %i.gr to i64
  %i.gt = add nuw nsw i64 %i.gl, %i.gp
  %i.gu = add nuw nsw i64 %i.gt, %i.gs            ; 2 uses
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = getelementptr [4 x i8], ptr %i.fa, i64 %i.gm
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !7
  %i.gx = lshr i64 %i.gu, 32                      ; 3 uses
  %i.gy = add nuw i64 %.05779.i.i156, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i159.loopexit.unr-lcssa, label %.lr.ph.i.i155, !llvm.loop !34

.lr.ph83.i.i180:                                  ; preds = %.preheader72.i.i159, %bb.z
  %indvar289 = phi i64 [ %indvar.next290, %bb.z ], [ 0, %.preheader72.i.i159 ] ; 2 uses
  %.182.i.i181 = phi i64 [ %i.hh, %bb.z ], [ %.064.i.i150, %.preheader72.i.i159 ] ; 7 uses
  %.15981.i.i182 = phi i64 [ %i.hg, %bb.z ], [ %.058.lcssa.i.i160, %.preheader72.i.i159 ]
  %i.gz = icmp eq i64 %.15981.i.i182, 0
  br i1 %i.gz, label %.loopexit71.i.i169, label %bb.z

bb.z:                                             ; preds = %.lr.ph83.i.i180
  %i.ha = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.182.i.i181
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !7
  %i.hc = zext i32 %i.hb to i64
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %i.he = trunc i64 %i.hd to i32
  %i.hf = getelementptr [4 x i8], ptr %i.fa, i64 %.182.i.i181
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !7
  %i.hg = lshr i64 %i.hd, 32
  %i.hh = add i64 %.182.i.i181, 1                 ; 2 uses
  %exitcond102.not.i.i183 = icmp eq i64 %i.hh, %.062.i.i152
  %indvar.next290 = add i64 %indvar289, 1
  br i1 %exitcond102.not.i.i183, label %bary_add.exit, label %.lr.ph83.i.i180, !llvm.loop !36

.loopexit71.i.i169:                               ; preds = %.lr.ph83.i.i180
  %i.hi = icmp ne ptr %.063.i.i151, %i.fa
  %i.hj = icmp ne i64 %.062.i.i152, %i.bp
  %or.cond.i.i171.not278 = or i1 %i.hi, %i.hj
  %i.hk = icmp ult i64 %.182.i.i181, %.062.i.i152
  %or.cond = and i1 %or.cond.i.i171.not278, %i.hk
  br i1 %or.cond, label %.lr.ph91.i.i177.preheader, label %bary_add.exit

.lr.ph91.i.i177.preheader:                        ; preds = %.loopexit71.i.i169
  %i.hl = add i64 %umin, %indvar289
  %i.hm = sub i64 %umax, %i.hl                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hm, 8
  %i.hn = sub i64 %.063.i.i151288, %i.bo
  %diff.check = icmp ugt i64 %i.hn, -32
  %or.cond309 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond309, label %.lr.ph91.i.i177.preheader310, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i177.preheader
  %n.vec = and i64 %i.hm, -8                      ; 3 uses
  %i.ho = add i64 %.182.i.i181, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hp = add nuw i64 %.182.i.i181, %index        ; 2 uses
  %i.hq = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.hp ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 16
  %wide.load = load <4 x i32>, ptr %i.hq, align 4, !tbaa !7
  %wide.load291 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !7
  %i.hs = getelementptr [4 x i8], ptr %i.fa, i64 %i.hp ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  store <4 x i32> %wide.load, ptr %i.hs, align 4, !tbaa !7
  store <4 x i32> %wide.load291, ptr %i.ht, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hm, %n.vec
  br i1 %cmp.n, label %bary_add.exit, label %.lr.ph91.i.i177.preheader310

.lr.ph91.i.i177.preheader310:                     ; preds = %.lr.ph91.i.i177.preheader, %middle.block
  %.490.i.i178.ph = phi i64 [ %.182.i.i181, %.lr.ph91.i.i177.preheader ], [ %i.ho, %middle.block ] ; 4 uses
  %i.hv = sub i64 %umax326, %.490.i.i178.ph
  %xtraiter327 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol

.lr.ph91.i.i177.prol:                             ; preds = %.lr.ph91.i.i177.preheader310, %.lr.ph91.i.i177.prol
  %.490.i.i178.prol = phi i64 [ %i.hz, %.lr.ph91.i.i177.prol ], [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader310 ] ; 3 uses
  %prol.iter329 = phi i64 [ %prol.iter329.next, %.lr.ph91.i.i177.prol ], [ 0, %.lr.ph91.i.i177.preheader310 ]
  %i.hw = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178.prol
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !7
  %i.hy = getelementptr [4 x i8], ptr %i.fa, i64 %.490.i.i178.prol
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !7
  %i.hz = add nuw i64 %.490.i.i178.prol, 1        ; 2 uses
  %prol.iter329.next = add i64 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i64 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol, !llvm.loop !223

.lr.ph91.i.i177.prol.loopexit:                    ; preds = %.lr.ph91.i.i177.prol, %.lr.ph91.i.i177.preheader310
  %.490.i.i178.unr = phi i64 [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader310 ], [ %i.hz, %.lr.ph91.i.i177.prol ]
  %i.ia = sub i64 %.490.i.i178.ph, %umax326
  %i.ib = icmp ugt i64 %i.ia, -4
  br i1 %i.ib, label %bary_add.exit, label %.lr.ph91.i.i177

.lr.ph91.i.i177:                                  ; preds = %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177
  %.490.i.i178 = phi i64 [ %i.ir, %.lr.ph91.i.i177 ], [ %.490.i.i178.unr, %.lr.ph91.i.i177.prol.loopexit ] ; 6 uses
  %i.ic = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !7
  %i.ie = getelementptr [4 x i8], ptr %i.fa, i64 %.490.i.i178
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !7
  %i.if = add nuw i64 %.490.i.i178, 1             ; 2 uses
  %i.ig = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !7
  %i.ii = getelementptr [4 x i8], ptr %i.fa, i64 %i.if
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !7
  %i.ij = add nuw i64 %.490.i.i178, 2             ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !7
  %i.im = getelementptr [4 x i8], ptr %i.fa, i64 %i.ij
  store i32 %i.il, ptr %i.im, align 4, !tbaa !7
  %i.in = add nuw i64 %.490.i.i178, 3             ; 2 uses
  %i.io = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !7
  %i.iq = getelementptr [4 x i8], ptr %i.fa, i64 %i.in
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !7
  %i.ir = add nuw i64 %.490.i.i178, 4             ; 2 uses
  %exitcond106.not.i.i179.3 = icmp eq i64 %i.ir, %.062.i.i152
  br i1 %exitcond106.not.i.i179.3, label %bary_add.exit, label %.lr.ph91.i.i177, !llvm.loop !224

bb.aa:                                            ; preds = %bb.t
  %i.is = icmp ugt i64 %i.bp, 4611686018427387903
  br i1 %i.is, label %bb.ab, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.ab:                                            ; preds = %bb.aa
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.bp) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.aa
  %i.it = getelementptr [4 x i8], ptr %.0119221, i64 %.2217
  %i.iu = getelementptr [4 x i8], ptr %.0118222, i64 %.2217
  %i.iv = shl nuw i64 %i.bp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.iu, ptr noundef nonnull readonly align 1 %i.it, i64 noundef range(i64 1, 0) %i.iv, i1 noundef false) #23
  br label %bary_add.exit

bary_add.exit:                                    ; preds = %bb.z, %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177, %middle.block, %.preheader72.i.i159, %.preheader70.i.i, %bb.r, %rbimpl_size_mul_or_raise.exit, %.loopexit71.i.i169, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i
  %i.iw = add i64 %.2217, %i.ay                   ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ix, label %bb.m, label %bb.ac, !llvm.loop !225

bb.ac:                                            ; preds = %bary_add.exit
  %i.iy = add i32 %.0110223, 1                    ; 2 uses
  %i.iz = call fastcc i64 @power_cache_get_power(i32 noundef %6, i32 noundef %i.iy, ptr noundef null)
  %i.ja = icmp ult i64 %i.ay, %4
  br i1 %i.ja, label %.preheader202, label %.preheader, !llvm.loop !226

.lr.ph226:                                        ; preds = %.preheader, %bb.ad
  %.0124225 = phi i64 [ %i.jf, %bb.ad ], [ %4, %.preheader ] ; 3 uses
  %i.jb = getelementptr [4 x i8], ptr %.0119.lcssa, i64 %.0124225
  %i.jc = getelementptr i8, ptr %i.jb, i64 -4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !7
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %.lr.ph226
  %i.jf = add i64 %.0124225, -1                   ; 2 uses
  %.not = icmp eq i64 %i.jf, 0
  br i1 %.not, label %.critedge, label %.lr.ph226, !llvm.loop !227

.critedge:                                        ; preds = %.lr.ph226, %bb.ad, %.preheader
  %.0124.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.ad ], [ %.0124225, %.lr.ph226 ] ; 5 uses
  %i.jg = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.jh = call fastcc i64 @bignew_1(i64 noundef %i.jg, i64 noundef %.0124.lcssa, i32 noundef %0) ; 2 uses
  %i.ji = inttoptr i64 %i.jh to ptr               ; 3 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !13
  %i.jk = and i64 %i.jj, 16384
  %.not.i187 = icmp eq i64 %i.jk, 0
  br i1 %.not.i187, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.jl = getelementptr i8, ptr %i.ji, i64 16
  br label %BIGNUM_DIGITS.exit189

bb.af:                                            ; preds = %.critedge
  %i.jm = getelementptr i8, ptr %i.ji, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit189

BIGNUM_DIGITS.exit189:                            ; preds = %bb.ae, %bb.af
  %.0.i188 = phi ptr [ %i.jl, %bb.ae ], [ %i.jn, %bb.af ]
  %i.jo = icmp ugt i64 %.0124.lcssa, 4611686018427387903
  br i1 %i.jo, label %bb.ag, label %rbimpl_size_mul_or_raise.exit190, !prof !32

bb.ag:                                            ; preds = %BIGNUM_DIGITS.exit189
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.0124.lcssa) #25
  unreachable

rbimpl_size_mul_or_raise.exit190:                 ; preds = %BIGNUM_DIGITS.exit189
  %.not.i191 = icmp eq i64 %.0124.lcssa, 0
  br i1 %.not.i191, label %ruby_nonempty_memcpy.exit193, label %bb.ah

bb.ah:                                            ; preds = %rbimpl_size_mul_or_raise.exit190
  %i.jp = shl nuw i64 %.0124.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i188, ptr noundef nonnull readonly align 1 %.0119.lcssa, i64 noundef range(i64 1, 0) %i.jp, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit193

ruby_nonempty_memcpy.exit193:                     ; preds = %rbimpl_size_mul_or_raise.exit190, %bb.ah
  %i.jq = load i64, ptr %i.a, align 8, !tbaa !11
  %.not135 = icmp eq i64 %i.jq, 0
  br i1 %.not135, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %ruby_nonempty_memcpy.exit193
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ruby_nonempty_memcpy.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.jh
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_str_convert_to_inum(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_must_asciicompat(i64 noundef %i.d) #23
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !228
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.b, ptr null
  %i.n = call i64 @rb_int_parse_cstr(ptr noundef %i.k, i64 noundef %i.m, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.o = icmp ne i64 %i.n, 4                      ; 2 uses
  %brmerge = or i1 %.not, %i.o
  %.mux = select i1 %i.o, i64 %i.n, i64 1
  br i1 %brmerge, label %bb.e, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %.not9 = icmp eq i32 %3, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !tbaa !11
  call fastcc void @invalid_integer(i64 noundef %i.p) #28
  unreachable

bb.e:                                             ; preds = %RSTRING_PTR.exit, %bb.c
  %.08 = phi i64 [ 4, %bb.c ], [ %.mux, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %.08
}

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #5

declare void @rb_must_asciicompat(i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @invalid_integer(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.31, i64 noundef %0) #25
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_to_inum(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_must_asciicompat(i64 noundef %i.d) #23
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 8192
  %.not.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
