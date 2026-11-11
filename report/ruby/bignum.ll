Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@rb_str2big_karatsuba:bb.a
  %i.aq = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !44 ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = add i64 %.126, -1
  %i.au = add i64 %i.at, %i.as
  %i.av = udiv i64 %i.au, %i.as
  %i.aw = shl i64 %i.av, 1
  %i.ax = call fastcc i64 @str2big_karatsuba(i32 noundef %.036, ptr noundef %.01733, ptr noundef %i.ao, i64 noundef %.126, i64 noundef %i.aw, i32 noundef %i.ar, i32 noundef %1) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !101
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !355
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.az = load volatile i64, ptr %i.ay, align 8, !tbaa !94 ; 0 uses
  %i.ba = icmp eq i64 %i.ax, 0
  %i.bb = and i64 %i.ax, 7
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %str2big_scan_digits.exit
  %i.be = inttoptr i64 %i.ax to ptr               ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !96 ; 4 uses
  %i.bg = and i64 %i.bf, 31
  %i.bh = icmp eq i64 %i.bg, 10
  br i1 %i.bh, label %bb.s, label %bignorm.exit

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bi = and i64 %i.bf, 16384
  %.not.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = lshr i64 %i.bf, 15
  %i.bk = and i64 %i.bj, 511
  %i.bl = getelementptr i8, ptr %i.be, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bm = getelementptr i8, ptr %i.be, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !97
  %i.bo = getelementptr i8, ptr %i.be, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.u, %bb.t
  %.0.i28.i.i = phi i64 [ %i.bk, %bb.t ], [ %i.bn, %bb.u ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.bl, %bb.t ], [ %i.bp, %bb.u ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02232.i.i = phi i64 [ %i.bu, %bb.v ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 7 uses
  %i.bq = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02232.i.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !44
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.bu = add i64 %.02232.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.bu, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !15

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bv = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.bv, label %bb.aa, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.bw = sub i64 %indvar, %.0.i28.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.3, %.lr.ph36.i.i ], [ %.02232.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.i.i.preheader ]
  %indvars.iv.next40.i.i.3 = add nsw i64 %indvars.iv39.i.i, -4 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !16

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.by = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv39.i.i
  %i.bz = getelementptr i8, ptr %i.by, i64 -12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !44
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw i64 %i.cb, 32
  %i.cd = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.3
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !44
  %i.cf = zext i32 %i.ce to i64
  %i.cg = or disjoint i64 %i.cc, %i.cf
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.i.i.preheader
  %indvars.iv39.i.i.epil.init = phi i64 [ %.02232.i.i, %.lr.ph36.i.i.preheader ], [ %indvars.iv.next40.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.i.i.preheader ], [ %i.cg, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %indvars.iv39.i.i.epil = phi i64 [ %indvars.iv.next40.i.i.epil, %.lr.ph36.i.i.epil ], [ %indvars.iv39.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.cl, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %indvars.iv.next40.i.i.epil = add nsw i64 %indvars.iv39.i.i.epil, -1 ; 2 uses
  %i.ch = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.epil
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !44
  %i.ck = zext i32 %i.cj to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck            ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.02232.i.i
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !353

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.cm = icmp ult i64 %i.ch, 4611686018427387904
  %i.cn = and i64 %i.bf, 8192
  %.not.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.cm, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.co = shl nuw nsw i64 %i.cl, 1
  %i.cp = or disjoint i64 %i.co, 1
  br label %bignorm.exit

bb.y:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.cq = icmp ult i64 %i.cl, 4611686018427387905
  br i1 %i.cq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.neg.i.i = mul nsw i64 %i.cl, -2
  %i.cr = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.aa:                                            ; preds = %bb.y, %bb.w, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.ax, i64 noundef %.02232.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.v, %str2big_scan_digits.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %BIGNUM_DIGITS.exit.i.i, %bb.x, %bb.z, %bb.aa
  %.0.i20 = phi i64 [ %i.ax, %str2big_scan_digits.exit ], [ %i.ax, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.cr, %bb.z ], [ %i.ax, %bb.aa ], [ %i.cp, %bb.x ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.v ]
  ret i64 %.0.i20
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_ull2big(i64 noundef %0) local_unnamed_addr #0 !guid !356 {
bb.a:
  %i.a = load i64, ptr @rb_cInteger, align 8, !tbaa !94
  %i.b = tail call fastcc i64 @bignew_1(i64 noundef %i.a, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  br label %BIGNUM_DIGITS.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = trunc i64 %0 to i32                      ; 2 uses
  store i32 %i.i, ptr %.0.i, align 4, !tbaa !44
  %i.j = lshr i64 %0, 32                          ; 2 uses
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = getelementptr i8, ptr %.0.i, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !44
  %.not17 = icmp eq i64 %i.j, 0
  %.not17.1 = icmp ne i32 %i.i, 0
  %spec.select = zext i1 %.not17.1 to i64
  %.1.lcssa = select i1 %.not17, i64 %spec.select, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.m = and i64 %i.d, -16744449
  %i.n = shl nuw nsw i64 %.1.lcssa, 15
  %i.o = or disjoint i64 %i.n, %i.m
  store i64 %i.o, ptr %i.c, align 8, !tbaa !96
  br label %bb.f

bb.e:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.p = getelementptr i8, ptr %i.c, i64 16
  store i64 %.1.lcssa, ptr %i.p, align 8, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_ll2big(i64 noundef %0) local_unnamed_addr #0 !guid !357 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %.0 = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 4 uses
  %i.b = load i64, ptr @rb_cInteger, align 8, !tbaa !94
  %i.c = tail call fastcc i64 @bignew_1(i64 noundef %i.b, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %i.f = and i64 %i.e, 16384
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  store i64 %.0, ptr %i.g, align 8
  %.not17.i = icmp ult i64 %.0, 4294967296
  %.not17.1.i.not = icmp eq i64 %0, 0
  %i.h = and i64 %i.e, -16744449
  %i.i = select i1 %.not17.1.i.not, i64 0, i64 32768
  %i.j = select i1 %.not17.i, i64 %i.i, i64 65536
  %i.k = or disjoint i64 %i.h, %i.j
  store i64 %i.k, ptr %i.d, align 8, !tbaa !96
  br label %rb_ull2big.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  store i64 %.0, ptr %i.m, align 4
  %.not17.i10 = icmp ult i64 %.0, 4294967296
  %.not17.1.i11 = icmp ne i64 %0, 0
  %spec.select.i12 = zext i1 %.not17.1.i11 to i64
  %.1.lcssa.i13 = select i1 %.not17.i10, i64 %spec.select.i12, i64 2
  %i.n = getelementptr i8, ptr %i.d, i64 16
  store i64 %.1.lcssa.i13, ptr %i.n, align 8, !tbaa !97
  br label %rb_ull2big.exit

rb_ull2big.exit:                                  ; preds = %bb.b, %bb.c
  br i1 %i.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_ull2big.exit
  %i.o = load i64, ptr %i.d, align 8, !tbaa !96
  %i.p = and i64 %i.o, -8193
  store i64 %i.p, ptr %i.d, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_ull2big.exit
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ull2inum(i64 noundef %0) local_unnamed_addr #0 !guid !358 {
bb.a:
  %i.a = icmp ult i64 %0, 4611686018427387904
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i64 %0, 1
  %i.c = or disjoint i64 %i.b, 1
  br label %rb_ull2big.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cInteger, align 8, !tbaa !94
  %i.e = tail call fastcc i64 @bignew_1(i64 noundef %i.d, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  %i.h = and i64 %i.g, 16384
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 16
  store i64 %0, ptr %i.i, align 8
  %i.j = and i64 %i.g, -16744449
  %i.k = or disjoint i64 %i.j, 65536
  store i64 %i.k, ptr %i.f, align 8, !tbaa !96
  br label %rb_ull2big.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  store i64 %0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.f, i64 16
  store i64 2, ptr %i.n, align 8, !tbaa !97
  br label %rb_ull2big.exit

rb_ull2big.exit:                                  ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ %i.e, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ll2inum(i64 noundef %0) local_unnamed_addr #0 !guid !359 {
bb.a:
  %i.a = add i64 %0, 4611686018427387904
  %or.cond = icmp sgt i64 %i.a, -1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nsw i64 %0, 1
  %i.c = or disjoint i64 %i.b, 1
  br label %rb_ll2big.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp sgt i64 %0, -1
  %.0.i = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.e = load i64, ptr @rb_cInteger, align 8, !tbaa !94
  %i.f = tail call fastcc i64 @bignew_1(i64 noundef %i.e, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !96   ; 2 uses
  %i.i = and i64 %i.h, 16384
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %.0.i, ptr %i.j, align 8
  %i.k = and i64 %i.h, -16744449
  %i.l = or disjoint i64 %i.k, 65536
  store i64 %i.l, ptr %i.g, align 8, !tbaa !96
  br label %rb_ull2big.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97
  store i64 %.0.i, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.g, i64 16
  store i64 2, ptr %i.o, align 8, !tbaa !97
  br label %rb_ull2big.exit.i

rb_ull2big.exit.i:                                ; preds = %bb.e, %bb.d
  br i1 %i.d, label %rb_ll2big.exit, label %bb.f

bb.f:                                             ; preds = %rb_ull2big.exit.i
  %i.p = load i64, ptr %i.g, align 8, !tbaa !96
  %i.q = and i64 %i.p, -8193
  store i64 %i.q, ptr %i.g, align 8, !tbaa !96
  br label %rb_ll2big.exit

rb_ll2big.exit:                                   ; preds = %bb.f, %rb_ull2big.exit.i, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.f, %rb_ull2big.exit.i ], [ %i.f, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_uint128t2big(i128 noundef %0) local_unnamed_addr #0 !guid !360 {
bb.a:
  %i.a = load i64, ptr @rb_cInteger, align 8, !tbaa !94
  %i.b = tail call fastcc i64 @bignew_1(i64 noundef %i.a, i64 noundef 4, i32 noundef 1) ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  br label %BIGNUM_DIGITS.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.i = trunc i128 %0 to i32                     ; 2 uses
  store i32 %i.i, ptr %.0.i, align 4, !tbaa !44
  %i.j = lshr i128 %0, 32
  %i.k = trunc i128 %i.j to i32                   ; 2 uses
  %i.l = getelementptr i8, ptr %.0.i, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !44
  %i.m = lshr i128 %0, 64
  %i.n = trunc i128 %i.m to i32                   ; 2 uses
  %i.o = getelementptr i8, ptr %.0.i, i64 8
  store i32 %i.n, ptr %i.o, align 4, !tbaa !44
  %i.p = lshr i128 %0, 96                         ; 2 uses
  %i.q = trunc nuw i128 %i.p to i32
  %i.r = getelementptr i8, ptr %.0.i, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !44
  %.not16 = icmp eq i128 %i.p, 0
  br i1 %.not16, label %.preheader.1, label %.critedge

.preheader.1:                                     ; preds = %BIGNUM_DIGITS.exit
  %.not16.1 = icmp eq i32 %i.n, 0
  br i1 %.not16.1, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.preheader.1
  %.not16.2 = icmp eq i32 %i.k, 0
  br i1 %.not16.2, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %.preheader.2
  %.not16.3 = icmp ne i32 %i.i, 0
  %spec.select = zext i1 %.not16.3 to i64
  br label %.critedge

.critedge:                                        ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %BIGNUM_DIGITS.exit
  %.1.lcssa = phi i64 [ 2, %.preheader.2 ], [ 4, %BIGNUM_DIGITS.exit ], [ %spec.select, %.preheader.3 ], [ 3, %.preheader.1 ] ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.s = and i64 %i.d, -16744449
  %i.t = shl nuw nsw i64 %.1.lcssa, 15
  %i.u = or disjoint i64 %i.t, %i.s
  store i64 %i.u, ptr %i.c, align 8, !tbaa !96
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.v = getelementptr i8, ptr %i.c, i64 16
  store i64 %.1.lcssa, ptr %i.v, align 8, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_int128t2big(i128 noundef %0) local_unnamed_addr #0 !guid !361 {
bb.a:
  %i.a = icmp sgt i128 %0, -1
  %.0 = tail call i128 @llvm.abs.i128(i128 %0, i1 false) ; 4 uses
  %i.b = load i64, ptr @rb_cInteger, align 8, !tbaa !94
  %i.c = tail call fastcc i64 @bignew_1(i64 noundef %i.b, i64 noundef 4, i32 noundef 1) ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !96   ; 3 uses
  %i.f = and i64 %i.e, 16384
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
end_hunk_0
