Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 157
loop-unroll.NumUnrolled: 185
begin_hunk_0_@bary_sq_fast:bb.a

bb.e:                                             ; preds = %._crit_edge105
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %.idx = shl i64 %i.c, 3
  %i.cu = getelementptr i8, ptr %0, i64 %.idx     ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !44
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.ct, %i.ct
  %i.cy = add nuw i64 %i.cx, %i.cw                ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !44
  %i.da = lshr i64 %i.cy, 32                      ; 2 uses
  %.not87 = icmp eq i64 %i.da, 0
  br i1 %.not87, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.db = trunc nuw i64 %i.da to i32
  %i.dc = getelementptr [4 x i8], ptr %0, i64 %i.c
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %3 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !44
  %i.df = add i32 %i.de, %i.db
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %._crit_edge105, %._crit_edge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_mul_balance(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !145 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !94
  store i64 %1, ptr %i.b, align 8, !tbaa !94
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96   ; 3 uses
  %i.n = and i64 %i.m, 16384
  %.not.i9 = icmp eq i64 %i.n, 0
  br i1 %.not.i9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !97
  br label %BIGNUM_LEN.exit11

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = lshr i64 %i.m, 15
  %i.r = and i64 %i.q, 511
  br label %BIGNUM_LEN.exit11

BIGNUM_LEN.exit11:                                ; preds = %bb.d, %bb.e
  %.0.i10 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.s = add i64 %.0.i10, %.0.i                   ; 2 uses
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !94
  %i.u = xor i64 %i.m, %i.f
  %i.v = and i64 %i.u, 8192
  %.not = icmp eq i64 %i.v, 0
  %i.w = zext i1 %.not to i32
  %i.x = tail call fastcc i64 @bignew_1(i64 noundef %i.t, i64 noundef %i.s, i32 noundef %i.w) ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = and i64 %i.z, 16384
  %.not.i12 = icmp eq i64 %i.aa, 0
  br i1 %.not.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit11
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  br label %BIGNUM_DIGITS.exit

bb.g:                                             ; preds = %BIGNUM_LEN.exit11
  %i.ac = getelementptr i8, ptr %i.y, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.f, %bb.g
  %.0.i13 = phi ptr [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !96
  %i.af = and i64 %i.ae, 16384
  %.not.i14 = icmp eq i64 %i.af, 0
  br i1 %.not.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ag = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit16

bb.i:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ah = getelementptr i8, ptr %i.e, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit16

BIGNUM_DIGITS.exit16:                             ; preds = %bb.h, %bb.i
  %.0.i15 = phi ptr [ %i.ag, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !96
  %i.ak = and i64 %i.aj, 16384
  %.not.i17 = icmp eq i64 %i.ak, 0
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %BIGNUM_DIGITS.exit16
  %i.al = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit19

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit16
  %i.am = getelementptr i8, ptr %i.l, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit19

BIGNUM_DIGITS.exit19:                             ; preds = %bb.j, %bb.k
  %.0.i18 = phi ptr [ %i.al, %bb.j ], [ %i.an, %bb.k ]
  tail call fastcc void @bary_mul_balance_with_mulfunc(ptr noundef %.0.i13, i64 noundef %i.s, ptr noundef %.0.i15, i64 noundef %.0.i, ptr noundef %.0.i18, i64 noundef %.0.i10, ptr noundef null, i64 noundef 0, ptr noundef nonnull @bary_mul_toom3_start)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !101
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !146
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ap = load volatile i64, ptr %i.ao, align 8, !tbaa !94 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !101
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !147
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.ar = load volatile i64, ptr %i.aq, align 8, !tbaa !94 ; 0 uses
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bary_mul_balance_with_mulfunc(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #0 !guid !152 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !94
  %.not131 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not131, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = shl nuw i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.c, i1 false), !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.d = icmp ult i64 %7, %3
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %i.e = urem i64 %5, %3                          ; 2 uses
  %i.f = shl i64 %3, 1
  %i.g = add i64 %5, %i.f
  %i.h = sub nuw i64 %3, %i.e
  %i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.e)
  %i.j = add i64 %i.g, %i.i
  %i.k = icmp ugt i64 %i.j, %1
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ult i64 %3, 256
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !94
  %i.m = shl nuw nsw i64 %3, 2
  %i.n = alloca i8, i64 %i.m, align 16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.o, label %bb.f, label %rb_alloc_tmp_buffer2.exit, !prof !102

bb.f:                                             ; preds = %bb.e
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %3, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.e
  %i.p = shl nuw i64 %3, 2                        ; 2 uses
  %i.q = add i64 %i.p, 4
  %i.r = lshr i64 %i.q, 3
  %i.s = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef %i.r) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %rb_alloc_tmp_buffer2.exit, %bb.d, %._crit_edge
  %.1110 = phi i64 [ %7, %._crit_edge ], [ %7, %bb.b ], [ %3, %rb_alloc_tmp_buffer2.exit ], [ %3, %bb.d ] ; 6 uses
  %.1 = phi ptr [ %6, %._crit_edge ], [ %6, %bb.b ], [ %i.s, %rb_alloc_tmp_buffer2.exit ], [ %i.n, %bb.d ] ; 7 uses
  %.not150 = icmp eq i64 %5, 0
  br i1 %.not150, label %._crit_edge143, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.g
  %i.t = icmp ult i64 %.1110, %3
  %i.u = shl nuw i64 %3, 2
  %i.v = getelementptr [4 x i8], ptr %.1, i64 %3
  %i.w = sub nuw i64 %.1110, %3
  br i1 %i.t, label %.lr.ph142.split.us.preheader, label %.lr.ph142.split.preheader

.lr.ph142.split.us.preheader:                     ; preds = %.lr.ph142
  %9 = add i64 %3, -1
  br label %.lr.ph142.split.us

.lr.ph142.split.preheader:                        ; preds = %.lr.ph142
  %10 = icmp ugt i64 %3, 4611686018427387903
  br i1 %10, label %.lr.ph142.split.us.preheader.a, label %.lr.ph142.split.preheader.a, !prof !102

.lr.ph142.split.preheader.a:                      ; preds = %.lr.ph142.split.preheader
  %11 = add nsw i64 %3, -1
  %i.x = add nsw i64 %3, -1
  br label %.lr.ph142.split

.lr.ph142.split.us.preheader.a:                   ; preds = %.lr.ph142.split.preheader
  %i.y = add i64 %3, -1
  br label %.lr.ph142.split.us155

.lr.ph142.split.us155:                            ; preds = %.lr.ph142.split.us.preheader.a, %bary_add.exit126.us165
  %.0107140.us156 = phi i64 [ %53, %bary_add.exit126.us165 ], [ 0, %.lr.ph142.split.us.preheader.a ] ; 5 uses
  %12 = sub nuw i64 %5, %.0107140.us156
  %13 = call i64 @llvm.umin.i64(i64 %3, i64 %12)  ; 7 uses
  %14 = add i64 %13, %3                           ; 6 uses
  %15 = shl i64 %14, 1
  %16 = sub i64 %1, %.0107140.us156
  %.not118.us157 = icmp ugt i64 %15, %16
  br i1 %.not118.us157, label %.split.us166, label %17

17:                                               ; preds = %.lr.ph142.split.us155
  %18 = getelementptr [4 x i8], ptr %0, i64 %.0107140.us156 ; 4 uses
  %19 = getelementptr [4 x i8], ptr %18, i64 %3   ; 2 uses
  %20 = getelementptr [4 x i8], ptr %19, i64 %13  ; 4 uses
  %21 = getelementptr [4 x i8], ptr %4, i64 %.0107140.us156
  call void %8(ptr noundef %20, i64 noundef %14, ptr noundef %2, i64 noundef %3, ptr noundef %21, i64 noundef %13, ptr noundef %.1, i64 noundef %.1110) #23, !callees !153
  %.not119134.us158 = icmp eq i64 %13, 0
  br i1 %.not119134.us158, label %._crit_edge139.us159, label %.lr.ph138.preheader.us

._crit_edge139.us159:                             ; preds = %.lr.ph138.preheader.us, %17
  %.not.i.i.us160 = icmp eq i64 %14, 0
  br i1 %.not.i.i.us160, label %bary_add.exit126.us165, label %.lr.ph.i.i.us161.preheader

.lr.ph.i.i.us161.preheader:                       ; preds = %._crit_edge139.us159
  %xtraiter210 = and i64 %14, 1
  %22 = sub i64 0, %13
  %23 = icmp eq i64 %i.y, %22
  br i1 %23, label %.lr.ph.i.i.us161.epil.preheader, label %.lr.ph.i.i.us161.preheader.new

.lr.ph.i.i.us161.preheader.new:                   ; preds = %.lr.ph.i.i.us161.preheader
  %unroll_iter213 = and i64 %14, -2
  br label %.lr.ph.i.i.us161

.lr.ph.i.i.us161:                                 ; preds = %.lr.ph.i.i.us161, %.lr.ph.i.i.us161.preheader.new
  %.05779.i.i.us162 = phi i64 [ 0, %.lr.ph.i.i.us161.preheader.new ], [ %45, %.lr.ph.i.i.us161 ] ; 4 uses
  %.05878.i.i.us163 = phi i64 [ 0, %.lr.ph.i.i.us161.preheader.new ], [ %44, %.lr.ph.i.i.us161 ]
  %niter214 = phi i64 [ 0, %.lr.ph.i.i.us161.preheader.new ], [ %niter214.next.1, %.lr.ph.i.i.us161 ]
  %24 = getelementptr [4 x i8], ptr %18, i64 %.05779.i.i.us162 ; 2 uses
  %25 = load i32, ptr %24, align 4, !tbaa !44
  %26 = zext i32 %25 to i64
  %27 = getelementptr [4 x i8], ptr %20, i64 %.05779.i.i.us162
  %28 = load i32, ptr %27, align 4, !tbaa !44
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i64 %.05878.i.i.us163, %26
  %31 = add nuw nsw i64 %30, %29                  ; 2 uses
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr %24, align 4, !tbaa !44
  %33 = lshr i64 %31, 32
  %34 = or disjoint i64 %.05779.i.i.us162, 1      ; 2 uses
  %35 = getelementptr [4 x i8], ptr %18, i64 %34  ; 2 uses
  %36 = load i32, ptr %35, align 4, !tbaa !44
  %37 = zext i32 %36 to i64
  %38 = getelementptr [4 x i8], ptr %20, i64 %34
  %39 = load i32, ptr %38, align 4, !tbaa !44
  %40 = zext i32 %39 to i64
  %41 = add nuw nsw i64 %33, %37
  %42 = add nuw nsw i64 %41, %40                  ; 2 uses
  %43 = trunc i64 %42 to i32
  store i32 %43, ptr %35, align 4, !tbaa !44
  %44 = lshr i64 %42, 32                          ; 2 uses
  %45 = add nuw i64 %.05779.i.i.us162, 2          ; 2 uses
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %bary_add.exit126.us165.loopexit.unr-lcssa, label %.lr.ph.i.i.us161, !llvm.loop !3

.split.us166:                                     ; preds = %.lr.ph142.split.us155
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %3) #25
  unreachable

bary_add.exit126.us165.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i.us161
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %bary_add.exit126.us165, label %.lr.ph.i.i.us161.epil.preheader

.lr.ph.i.i.us161.epil.preheader:                  ; preds = %bary_add.exit126.us165.loopexit.unr-lcssa, %.lr.ph.i.i.us161.preheader
  %.05779.i.i.us162.epil.init = phi i64 [ 0, %.lr.ph.i.i.us161.preheader ], [ %45, %bary_add.exit126.us165.loopexit.unr-lcssa ] ; 2 uses
  %.05878.i.i.us163.epil.init = phi i64 [ 0, %.lr.ph.i.i.us161.preheader ], [ %44, %bary_add.exit126.us165.loopexit.unr-lcssa ]
  %lcmp.mod212 = trunc i64 %14 to i1
  call void @llvm.assume(i1 %lcmp.mod212)
  %46 = getelementptr [4 x i8], ptr %18, i64 %.05779.i.i.us162.epil.init ; 2 uses
  %47 = load i32, ptr %46, align 4, !tbaa !44
  %48 = getelementptr [4 x i8], ptr %20, i64 %.05779.i.i.us162.epil.init
  %49 = load i32, ptr %48, align 4, !tbaa !44
  %50 = trunc nuw nsw i64 %.05878.i.i.us163.epil.init to i32
  %51 = add i32 %47, %50
  %52 = add i32 %51, %49
  store i32 %52, ptr %46, align 4, !tbaa !44
  br label %bary_add.exit126.us165

bary_add.exit126.us165:                           ; preds = %.lr.ph.i.i.us161.epil.preheader, %bary_add.exit126.us165.loopexit.unr-lcssa, %._crit_edge139.us159
  %53 = add i64 %13, %.0107140.us156              ; 2 uses
  %54 = icmp ugt i64 %5, %53
  br i1 %54, label %.lr.ph142.split.us155, label %._crit_edge143, !llvm.loop !148

.lr.ph138.preheader.us:                           ; preds = %17
  %55 = shl nuw i64 %13, 2
  call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %55, i1 false), !tbaa !44
  br label %._crit_edge139.us159

.lr.ph142.split.us:                               ; preds = %.lr.ph142.split.us.preheader, %bary_add.exit126.us
  %.0107140.us = phi i64 [ %i.bo, %bary_add.exit126.us ], [ 0, %.lr.ph142.split.us.preheader ] ; 5 uses
  %i.z = sub nuw i64 %5, %.0107140.us
  %i.aa = call i64 @llvm.umin.i64(i64 %3, i64 %i.z) ; 7 uses
  %i.ab = add i64 %i.aa, %3                       ; 6 uses
  %i.ac = shl i64 %i.ab, 1
  %i.ad = sub i64 %1, %.0107140.us
  %.not118.us = icmp ugt i64 %i.ac, %i.ad
  br i1 %.not118.us, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph142.split.us
  %i.ae = getelementptr [4 x i8], ptr %0, i64 %.0107140.us ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %3 ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.aa ; 4 uses
  %i.ah = getelementptr [4 x i8], ptr %4, i64 %.0107140.us
  call void %8(ptr noundef %i.ag, i64 noundef %i.ab, ptr noundef %2, i64 noundef %3, ptr noundef %i.ah, i64 noundef %i.aa, ptr noundef %.1, i64 noundef %.1110) #23, !callees !153
  %.not119134.us = icmp eq i64 %i.aa, 0
  br i1 %.not119134.us, label %._crit_edge139.us, label %.lr.ph138.us.preheader

.lr.ph138.us.preheader:                           ; preds = %bb.h
  %i.ai = shl nuw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false), !tbaa !44
  br label %._crit_edge139.us

._crit_edge139.us:                                ; preds = %.lr.ph138.us.preheader, %bb.h
  %.not.i.i.us = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.us, label %bary_add.exit126.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %._crit_edge139.us
  %xtraiter189 = and i64 %i.ab, 1
  %i.aj = sub i64 0, %i.aa
  %i.ak = icmp eq i64 %9, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us.preheader.new

.lr.ph.i.i.us.preheader.new:                      ; preds = %.lr.ph.i.i.us.preheader
  %unroll_iter192 = and i64 %i.ab, -2
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph.i.i.us.preheader.new
  %.05779.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us.preheader.new ], [ %i.bg, %.lr.ph.i.i.us ] ; 4 uses
  %.05878.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us.preheader.new ], [ %i.bf, %.lr.ph.i.i.us ]
  %niter193 = phi i64 [ 0, %.lr.ph.i.i.us.preheader.new ], [ %niter193.next.1, %.lr.ph.i.i.us ]
  %i.al = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i.us ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !44
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i.us
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !44
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add nuw nsw i64 %.05878.i.i.us, %i.an
  %i.as = add nuw nsw i64 %i.ar, %i.aq            ; 2 uses
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %i.al, align 4, !tbaa !44
  %i.au = lshr i64 %i.as, 32
  %i.av = or disjoint i64 %.05779.i.i.us, 1       ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.ae, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !44
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr [4 x i8], ptr %i.ag, i64 %i.av
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !44
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.au, %i.ay
  %i.bd = add nuw nsw i64 %i.bc, %i.bb            ; 2 uses
  %i.be = trunc i64 %i.bd to i32
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !44
  %i.bf = lshr i64 %i.bd, 32                      ; 2 uses
  %i.bg = add nuw i64 %.05779.i.i.us, 2           ; 2 uses
  %niter193.next.1 = add i64 %niter193, 2         ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %bary_add.exit126.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !3

bary_add.exit126.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.us
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %bary_add.exit126.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %bary_add.exit126.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.05779.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %i.bg, %bary_add.exit126.us.loopexit.unr-lcssa ] ; 2 uses
  %.05878.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %i.bf, %bary_add.exit126.us.loopexit.unr-lcssa ]
  %lcmp.mod191 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.bh = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i.us.epil.init ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !44
  %i.bj = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i.us.epil.init
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !44
  %i.bl = trunc nuw nsw i64 %.05878.i.i.us.epil.init to i32
  %i.bm = add i32 %i.bi, %i.bl
  %i.bn = add i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bh, align 4, !tbaa !44
  br label %bary_add.exit126.us

bary_add.exit126.us:                              ; preds = %.lr.ph.i.i.us.epil.preheader, %bary_add.exit126.us.loopexit.unr-lcssa, %._crit_edge139.us
  %i.bo = add i64 %i.aa, %.0107140.us             ; 2 uses
  %i.bp = icmp ugt i64 %5, %i.bo
  br i1 %i.bp, label %.lr.ph142.split.us, label %._crit_edge143, !llvm.loop !148

.lr.ph142.split:                                  ; preds = %.lr.ph142.split.preheader.a, %bary_add.exit126
  %.0107140 = phi i64 [ %i.gr, %bary_add.exit126 ], [ 0, %.lr.ph142.split.preheader.a ] ; 7 uses
  %i.bq = sub nuw i64 %5, %.0107140
  %i.br = call i64 @llvm.umin.i64(i64 %3, i64 %i.bq) ; 12 uses
  %i.bs = add nuw nsw i64 %i.br, %3               ; 14 uses
  %i.bt = shl nuw i64 %i.bs, 1
  %i.bu = sub i64 %1, %.0107140
  %.not118 = icmp ugt i64 %i.bt, %i.bu
  %i.bv = getelementptr [4 x i8], ptr %0, i64 %.0107140 ; 21 uses
  br i1 %.not118, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph142.split
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %3 ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %i.br ; 4 uses
  %i.by = getelementptr [4 x i8], ptr %4, i64 %.0107140
  call void %8(ptr noundef %i.bx, i64 noundef %i.bs, ptr noundef %2, i64 noundef %3, ptr noundef %i.by, i64 noundef %i.br, ptr noundef %.1, i64 noundef %.1110) #23, !callees !153
  %.not119134 = icmp eq i64 %i.br, 0
  br i1 %.not119134, label %._crit_edge139, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %bb.i
  %i.bz = shl nuw i64 %i.br, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bw, i8 0, i64 %i.bz, i1 false), !tbaa !44
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %.lr.ph138.preheader, %bb.i
  %.not.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i, label %bary_add.exit126, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge139
  %xtraiter = and i64 %i.bs, 1
  %i.ca = sub nsw i64 0, %i.br
  %i.cb = icmp eq i64 %11, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.bs, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cx, %.lr.ph.i.i ] ; 4 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cw, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.cc = getelementptr [4 x i8], ptr %i.bv, i64 %.05779.i.i ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !44
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %i.bx, i64 %.05779.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %.05878.i.i, %i.ce
  %i.cj = add nuw nsw i64 %i.ci, %i.ch            ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  store i32 %i.ck, ptr %i.cc, align 4, !tbaa !44
  %i.cl = lshr i64 %i.cj, 32
  %i.cm = or disjoint i64 %.05779.i.i, 1          ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %i.bv, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr [4 x i8], ptr %i.bx, i64 %i.cm
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !44
  %i.cs = zext i32 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cl, %i.cp
  %i.cu = add nuw nsw i64 %i.ct, %i.cs            ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !44
  %i.cw = lshr i64 %i.cu, 32                      ; 2 uses
  %i.cx = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bary_add.exit126.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3

bb.j:                                             ; preds = %.lr.ph142.split
  br i1 %.not131, label %ruby_nonempty_memcpy.exit, label %bb.k

.split.us:                                        ; preds = %.lr.ph142.split.us
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.19, i64 noundef %.1110, i64 noundef %3) #27
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.1, ptr noundef nonnull readonly align 1 %i.bv, i64 noundef range(i64 1, 0) %i.u, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.j, %bb.k
  %i.cy = getelementptr [4 x i8], ptr %4, i64 %.0107140
  call void %8(ptr noundef %i.bv, i64 noundef %i.bs, ptr noundef %2, i64 noundef %3, ptr noundef %i.cy, i64 noundef %i.br, ptr noundef %i.v, i64 noundef %i.w) #23, !callees !153
  %.not = icmp eq i64 %i.br, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %ruby_nonempty_memcpy.exit
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %ruby_nonempty_memcpy.exit
  %.064.i.i = phi i64 [ %3, %bb.l ], [ %i.bs, %ruby_nonempty_memcpy.exit ] ; 8 uses
  %.063.i.i = phi ptr [ %i.bv, %bb.l ], [ %.1, %ruby_nonempty_memcpy.exit ] ; 12 uses
  %.062.i.i = phi i64 [ %i.bs, %bb.l ], [ %3, %ruby_nonempty_memcpy.exit ] ; 9 uses
  %.061.i.i = phi ptr [ %.1, %bb.l ], [ %i.bv, %ruby_nonempty_memcpy.exit ] ; 3 uses
  %.063.i.i174 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i120 = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i120, label %.preheader72.i.i, label %.lr.ph.i.i121.preheader

.lr.ph.i.i121.preheader:                          ; preds = %bb.m
  %xtraiter181 = and i64 %.064.i.i, 1
  %i.cz = icmp eq i64 %.064.i.i, 1
  br i1 %i.cz, label %.lr.ph.i.i121.epil.preheader, label %.lr.ph.i.i121.preheader.new

.lr.ph.i.i121.preheader.new:                      ; preds = %.lr.ph.i.i121.preheader
  %unroll_iter185 = and i64 %.064.i.i, -2
  br label %.lr.ph.i.i121

.preheader72.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i121
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.preheader72.i.i, label %.lr.ph.i.i121.epil.preheader

.lr.ph.i.i121.epil.preheader:                     ; preds = %.preheader72.i.i.loopexit.unr-lcssa, %.lr.ph.i.i121.preheader
  %.05779.i.i122.epil.init = phi i64 [ 0, %.lr.ph.i.i121.preheader ], [ %i.ej, %.preheader72.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i123.epil.init = phi i64 [ 0, %.lr.ph.i.i121.preheader ], [ %i.ei, %.preheader72.i.i.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod184)
  %i.da = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i122.epil.init
  %i.db = load i32, ptr %i.da, align 4, !tbaa !44
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i122.epil.init
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !44
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw nsw i64 %.05878.i.i123.epil.init, %i.dc
  %i.dh = add nuw nsw i64 %i.dg, %i.df            ; 2 uses
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr [4 x i8], ptr %i.bv, i64 %.05779.i.i122.epil.init
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !44
  %i.dk = lshr i64 %i.dh, 32
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i121.epil.preheader, %.preheader72.i.i.loopexit.unr-lcssa, %bb.m
  %.058.lcssa.i.i125 = phi i64 [ 0, %bb.m ], [ %i.ei, %.preheader72.i.i.loopexit.unr-lcssa ], [ %i.dk, %.lr.ph.i.i121.epil.preheader ] ; 2 uses
  %i.dl = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.dl, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i121:                                    ; preds = %.lr.ph.i.i121, %.lr.ph.i.i121.preheader.new
  %.05779.i.i122 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %i.ej, %.lr.ph.i.i121 ] ; 5 uses
  %.05878.i.i123 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %i.ei, %.lr.ph.i.i121 ]
  %niter186 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %niter186.next.1, %.lr.ph.i.i121 ]
  %i.dm = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i122
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !44
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i122
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !44
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nuw nsw i64 %.05878.i.i123, %i.do
  %i.dt = add nuw nsw i64 %i.ds, %i.dr            ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = getelementptr [4 x i8], ptr %i.bv, i64 %.05779.i.i122
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !44
  %i.dw = lshr i64 %i.dt, 32
  %i.dx = or disjoint i64 %.05779.i.i122, 1       ; 3 uses
  %i.dy = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !44
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.dx
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !44
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.dw, %i.ea
  %i.ef = add nuw nsw i64 %i.ee, %i.ed            ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr [4 x i8], ptr %i.bv, i64 %i.dx
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !44
  %i.ei = lshr i64 %i.ef, 32                      ; 3 uses
  %i.ej = add nuw i64 %.05779.i.i122, 2           ; 2 uses
  %niter186.next.1 = add nuw i64 %niter186, 2     ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %.preheader72.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i121, !llvm.loop !3

.preheader70.i.i:                                 ; preds = %bb.o, %.preheader72.i.i
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i125, %.preheader72.i.i ], [ %i.ev, %bb.o ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i, %.preheader72.i.i ], [ %.062.i.i, %bb.o ] ; 4 uses
  %i.ek = icmp ult i64 %.1.lcssa.i.i, %i.bs
  br i1 %i.ek, label %.lr.ph88.preheader.i.i, label %bary_add.exit126

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.el = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.el, label %.loopexit71.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.em = getelementptr [4 x i8], ptr %i.bv, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.em, align 4, !tbaa !44
  %i.en = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.en, %i.bs
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit126, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.o
  %.182.i.i = phi i64 [ %i.ew, %bb.o ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.ev, %bb.o ], [ %.058.lcssa.i.i125, %.preheader72.i.i ]
  %i.eo = icmp eq i64 %.15981.i.i, 0
  br i1 %i.eo, label %.loopexit71.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph83.i.i
  %i.ep = getelementptr [4 x i8], ptr %.063.i.i, i64 %.182.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !44
  %i.er = zext i32 %i.eq to i64
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr [4 x i8], ptr %i.bv, i64 %.182.i.i
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !44
  %i.ev = lshr i64 %i.es, 32                      ; 2 uses
  %i.ew = add nuw i64 %.182.i.i, 1                ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.ew, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !4

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.n, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.en, %bb.n ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 7 uses
  %i.ex = icmp eq ptr %.063.i.i, %i.bv
  %i.ey = icmp eq i64 %.062.i.i, %i.bs
  %or.cond.i.i = and i1 %i.ex, %i.ey
  br i1 %or.cond.i.i, label %bary_add.exit126, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.ez = icmp ult i64 %.3.i.i, %.062.i.i
  br i1 %i.ez, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %56 = add nuw nsw i64 %3, %i.br
  %i.fa = sub i64 %56, %.3.i.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fa, 8
  br i1 %min.iters.check, label %.lr.ph91.i.i.preheader176, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph91.i.i.preheader
  %i.fb = shl i64 %.0107140, 2
  %i.fc = add i64 %i.fb, %i.a
  %i.fd = sub i64 %.063.i.i174, %i.fc
  %diff.check = icmp ugt i64 %i.fd, -32
  br i1 %diff.check, label %.lr.ph91.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fa, -8                      ; 3 uses
  %i.fe = add i64 %.3.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = add nuw i64 %.3.i.i, %index             ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  %wide.load = load <4 x i32>, ptr %i.fg, align 4, !tbaa !44
  %wide.load175 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !44
  %i.fi = getelementptr [4 x i8], ptr %i.bv, i64 %i.ff ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  store <4 x i32> %wide.load, ptr %i.fi, align 4, !tbaa !44
  store <4 x i32> %wide.load175, ptr %i.fj, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph91.i.i.preheader176

.lr.ph91.i.i.preheader176:                        ; preds = %vector.memcheck, %.lr.ph91.i.i.preheader, %middle.block
  %.490.i.i.ph = phi i64 [ %.3.i.i, %vector.memcheck ], [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.fe, %middle.block ] ; 4 uses
  %57 = add nuw nsw i64 %3, %i.br
  %58 = sub i64 %57, %.490.i.i.ph
  %59 = add nsw i64 %i.x, %i.br
  %i.fl = sub i64 %59, %.490.i.i.ph
  %xtraiter187 = and i64 %58, 3                   ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader176, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.fp, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader176 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader176 ]
  %i.fm = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !44
  %i.fo = getelementptr [4 x i8], ptr %i.bv, i64 %.490.i.i.prol
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !44
  %i.fp = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !150

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader176
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader176 ], [ %i.fp, %.lr.ph91.i.i.prol ]
  %60 = icmp ult i64 %i.fl, 3
  br i1 %60, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i, %middle.block ], [ %.062.i.i, %.lr.ph91.i.i ], [ %.062.i.i, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.fq = icmp ult i64 %.4.lcssa.i.i, %i.bs
  br i1 %i.fq, label %.lr.ph94.preheader.i.i, label %bary_add.exit126

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.fr = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.bv, i64 %i.fr
  %i.fs = sub nuw i64 %i.bs, %.4.lcssa.i.i
  %i.ft = shl i64 %i.fs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ft, i1 false), !tbaa !44
  br label %bary_add.exit126

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.gj, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.fu = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !44
  %i.fw = getelementptr [4 x i8], ptr %i.bv, i64 %.490.i.i
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !44
  %i.fx = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !44
  %i.ga = getelementptr [4 x i8], ptr %i.bv, i64 %i.fx
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !44
  %i.gb = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !44
  %i.ge = getelementptr [4 x i8], ptr %i.bv, i64 %i.gb
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !44
  %i.gf = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !44
  %i.gi = getelementptr [4 x i8], ptr %i.bv, i64 %i.gf
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !44
  %i.gj = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.gj, %.062.i.i
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !151

bary_add.exit126.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bary_add.exit126, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %bary_add.exit126.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05779.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cx, %bary_add.exit126.loopexit.unr-lcssa ] ; 2 uses
  %.05878.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cw, %bary_add.exit126.loopexit.unr-lcssa ]
  %lcmp.mod180 = trunc i64 %i.bs to i1
  call void @llvm.assume(i1 %lcmp.mod180)
  %i.gk = getelementptr [4 x i8], ptr %i.bv, i64 %.05779.i.i.epil.init ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !44
  %i.gm = getelementptr [4 x i8], ptr %i.bx, i64 %.05779.i.i.epil.init
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !44
  %i.go = trunc nuw nsw i64 %.05878.i.i.epil.init to i32
  %i.gp = add i32 %i.gl, %i.go
  %i.gq = add i32 %i.gp, %i.gn
  store i32 %i.gq, ptr %i.gk, align 4, !tbaa !44
  br label %bary_add.exit126

bary_add.exit126:                                 ; preds = %.lr.ph.i.i.epil.preheader, %bary_add.exit126.loopexit.unr-lcssa, %.preheader70.i.i, %bb.n, %._crit_edge139, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i
  %i.gr = add i64 %i.br, %.0107140                ; 2 uses
  %i.gs = icmp ugt i64 %5, %i.gr
  br i1 %i.gs, label %.lr.ph142.split, label %._crit_edge143, !llvm.loop !148

._crit_edge143:                                   ; preds = %bary_add.exit126, %bary_add.exit126.us165, %bary_add.exit126.us, %bb.g
  %i.gt = add i64 %3, %5                          ; 2 uses
  %.not116144 = icmp eq i64 %1, %i.gt
  br i1 %.not116144, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %._crit_edge143
  %i.gu = getelementptr [4 x i8], ptr %0, i64 %3
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %5
  %i.gw = sub i64 %1, %i.gt
  %i.gx = shl i64 %i.gw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gv, i8 0, i64 %i.gx, i1 false), !tbaa !44
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %.lr.ph148.preheader, %._crit_edge143
  %i.gy = load i64, ptr %i.b, align 8, !tbaa !94
  %.not117 = icmp eq i64 %i.gy, 0
  br i1 %.not117, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge149
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bary_mul_toom3_start(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) #0 !guid !155 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !107
  store i64 %1, ptr %i.b, align 8, !tbaa !94
  store ptr %2, ptr %i.c, align 8, !tbaa !107
  store i64 %3, ptr %i.d, align 8, !tbaa !94
  store ptr %4, ptr %i.e, align 8, !tbaa !107
  store i64 %5, ptr %i.f, align 8, !tbaa !94
  %i.g = call fastcc i32 @bary_mul_precheck(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bary_mul_toom3_branch.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !94   ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !107  ; 3 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !94   ; 5 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !107  ; 3 uses
  %i.m = load i64, ptr %i.f, align 8, !tbaa !94   ; 4 uses
  %i.n = icmp ult i64 %i.k, 150
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @bary_mul_karatsuba_branch(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7), !inline_history !154
  br label %bary_mul_toom3_branch.exit

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.m, 2
  %i.p = udiv i64 %i.o, 3
  %i.q = shl nuw i64 %i.p, 1
  %i.r = icmp ult i64 %i.q, %i.k
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @bary_mul_balance_with_mulfunc(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7, ptr noundef nonnull @bary_mul_toom3_start), !inline_history !154
  br label %bary_mul_toom3_branch.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @bary_mul_toom3(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7), !inline_history !154
  br label %bary_mul_toom3_branch.exit

bary_mul_toom3_branch.exit:                       ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_mul_karatsuba(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !156 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !94
  store i64 %1, ptr %i.b, align 8, !tbaa !94
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96   ; 3 uses
  %i.n = and i64 %i.m, 16384
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !97
  br label %BIGNUM_LEN.exit19

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = lshr i64 %i.m, 15
  %i.r = and i64 %i.q, 511
  br label %BIGNUM_LEN.exit19

BIGNUM_LEN.exit19:                                ; preds = %bb.d, %bb.e
  %.0.i18 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 4 uses
  %i.s = add i64 %.0.i18, %.0.i                   ; 2 uses
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !94
  %i.u = xor i64 %i.m, %i.f
  %i.v = and i64 %i.u, 8192
  %.not = icmp eq i64 %i.v, 0
  %i.w = zext i1 %.not to i32
  %i.x = tail call fastcc i64 @bignew_1(i64 noundef %i.t, i64 noundef %i.s, i32 noundef %i.w) ; 2 uses
  %i.y = icmp ult i64 %.0.i18, 2
  %i.z = lshr i64 %.0.i18, 1
  %i.aa = icmp ult i64 %i.z, %.0.i
  %or.cond16 = or i1 %i.y, %i.aa
  br i1 %or.cond16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit19
  %i.ab = load i64, ptr @rb_eArgError, align 8, !tbaa !94
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str) #25
  unreachable

bb.g:                                             ; preds = %BIGNUM_LEN.exit19
  %i.ac = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96
  %i.ae = and i64 %i.ad, 16384
  %.not.i20 = icmp eq i64 %i.ae, 0
  br i1 %.not.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  br label %BIGNUM_DIGITS.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.ac, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.h, %bb.i
  %.0.i21 = phi ptr [ %i.af, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !96
  %i.aj = and i64 %i.ai, 16384
  %.not.i22 = icmp eq i64 %i.aj, 0
  br i1 %.not.i22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ak = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit24

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.al = getelementptr i8, ptr %i.e, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit24

BIGNUM_DIGITS.exit24:                             ; preds = %bb.j, %bb.k
  %.0.i23 = phi ptr [ %i.ak, %bb.j ], [ %i.am, %bb.k ]
  %i.an = load i64, ptr %i.l, align 8, !tbaa !96
  %i.ao = and i64 %i.an, 16384
  %.not.i25 = icmp eq i64 %i.ao, 0
  br i1 %.not.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %BIGNUM_DIGITS.exit24
  %i.ap = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit27

bb.m:                                             ; preds = %BIGNUM_DIGITS.exit24
  %i.aq = getelementptr i8, ptr %i.l, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !97
  br label %BIGNUM_DIGITS.exit27

BIGNUM_DIGITS.exit27:                             ; preds = %bb.l, %bb.m
  %.0.i26 = phi ptr [ %i.ap, %bb.l ], [ %i.ar, %bb.m ]
  tail call fastcc void @bary_mul_karatsuba(ptr noundef %.0.i21, i64 noundef %i.s, ptr noundef %.0.i23, i64 noundef %.0.i, ptr noundef %.0.i26, i64 noundef %.0.i18, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !101
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !157
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.at = load volatile i64, ptr %i.as, align 8, !tbaa !94 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !101
end_hunk_0
