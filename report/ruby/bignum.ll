Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@bary_mul_toom3_start:bb.a
bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.m, 2
  %i.p = udiv i64 %i.o, 3
  %i.q = shl nuw i64 %i.p, 1
  %i.r = icmp ult i64 %i.q, %i.k
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @bary_mul_balance_with_mulfunc(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7, ptr noundef nonnull @bary_mul_toom3_start), !inline_history !99
  br label %bary_mul_toom3_branch.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @bary_mul_toom3(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7), !inline_history !99
  br label %bary_mul_toom3_branch.exit

bary_mul_toom3_branch.exit:                       ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_mul_karatsuba(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  store i64 %1, ptr %i.b, align 8, !tbaa !46
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %i.n = and i64 %i.m, 16384
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit19

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = lshr i64 %i.m, 15
  %i.r = and i64 %i.q, 511
  br label %BIGNUM_LEN.exit19

BIGNUM_LEN.exit19:                                ; preds = %bb.d, %bb.e
  %.0.i18 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 4 uses
  %i.s = add i64 %.0.i18, %.0.i                   ; 2 uses
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !46
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
  %i.ab = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str) #25
  unreachable

bb.g:                                             ; preds = %BIGNUM_LEN.exit19
  %i.ac = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.ae = and i64 %i.ad, 16384
  %.not.i20 = icmp eq i64 %i.ae, 0
  br i1 %.not.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  br label %BIGNUM_DIGITS.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.ac, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.h, %bb.i
  %.0.i21 = phi ptr [ %i.af, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !48
  %i.aj = and i64 %i.ai, 16384
  %.not.i22 = icmp eq i64 %i.aj, 0
  br i1 %.not.i22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ak = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit24

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.al = getelementptr i8, ptr %i.e, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit24

BIGNUM_DIGITS.exit24:                             ; preds = %bb.j, %bb.k
  %.0.i23 = phi ptr [ %i.ak, %bb.j ], [ %i.am, %bb.k ]
  %i.an = load i64, ptr %i.l, align 8, !tbaa !48
  %i.ao = and i64 %i.an, 16384
  %.not.i25 = icmp eq i64 %i.ao, 0
  br i1 %.not.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %BIGNUM_DIGITS.exit24
  %i.ap = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit27

bb.m:                                             ; preds = %BIGNUM_DIGITS.exit24
  %i.aq = getelementptr i8, ptr %i.l, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit27

BIGNUM_DIGITS.exit27:                             ; preds = %bb.l, %bb.m
  %.0.i26 = phi ptr [ %i.ap, %bb.l ], [ %i.ar, %bb.m ]
  tail call fastcc void @bary_mul_karatsuba(ptr noundef %.0.i21, i64 noundef %i.s, ptr noundef %.0.i23, i64 noundef %.0.i, ptr noundef %.0.i26, i64 noundef %.0.i18, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !100
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.at = load volatile i64, ptr %i.as, align 8, !tbaa !46 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !101
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.av = load volatile i64, ptr %i.au, align 8, !tbaa !46 ; 0 uses
  ret i64 %i.x
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bary_mul_karatsuba(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca ptr, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca ptr, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 6 uses
  %i.ab = alloca i32, align 4                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #23
  store i64 0, ptr %i.aa, align 8, !tbaa !46
  %i.ac = icmp eq ptr %2, %4
  %i.ad = icmp eq i64 %3, %5
  %i.ae = and i1 %i.ac, %i.ad                     ; 2 uses
  %i.af = and i64 %5, 1
  %.not = icmp eq i64 %i.af, 0                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = add nsw i64 %5, -1                      ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %3                  ; 2 uses
  %i.ai = sext i1 %i.ah to i64
  %spec.select = add i64 %3, %i.ai
  %not. = xor i1 %i.ah, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0197 = phi i64 [ %3, %bb.a ], [ %spec.select, %bb.b ] ; 20 uses
  %.0196 = phi i64 [ %5, %bb.a ], [ %i.ag, %bb.b ] ; 20 uses
  %.not215 = phi i1 [ true, %bb.a ], [ %not., %bb.b ]
  %i.aj = lshr i64 %.0196, 1                      ; 72 uses
  %i.ak = icmp ult i64 %7, %i.aj
  %i.al = and i64 %.0196, -2                      ; 17 uses
  br i1 %i.ak, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.am = icmp ult i64 %.0196, 256
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = alloca i8, i64 %i.an, align 16
  br label %._crit_edge

bb.f:                                             ; preds = %bb.d
  %i.ap = icmp ugt i64 %.0196, 4611686018427387903
  br i1 %i.ap, label %bb.g, label %rb_alloc_tmp_buffer2.exit, !prof !54

bb.g:                                             ; preds = %bb.f
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.al, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.f
  %i.aq = shl nuw i64 %i.al, 2
  %i.ar = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.aa, i64 noundef %i.aq, i64 noundef %i.aj) #26
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.e, %rb_alloc_tmp_buffer2.exit
  %.0195 = phi ptr [ %i.ar, %rb_alloc_tmp_buffer2.exit ], [ %i.ao, %bb.e ], [ %6, %bb.c ] ; 21 uses
  %.0194 = phi i64 [ %i.al, %rb_alloc_tmp_buffer2.exit ], [ %i.al, %bb.e ], [ %7, %bb.c ] ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %2, i64 %i.aj ; 9 uses
  %i.at = getelementptr [4 x i8], ptr %4, i64 %i.aj ; 4 uses
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.aj ; 16 uses
  %i.av = getelementptr [4 x i8], ptr %0, i64 %i.al ; 38 uses
  %i.aw = mul i64 %i.aj, 3                        ; 3 uses
  %i.ax = getelementptr [4 x i8], ptr %0, i64 %i.aw ; 14 uses
  %i.ay = sub i64 %.0197, %i.aj                   ; 7 uses
  %i.az = call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ay) ; 11 uses
  %.not97.i.i = icmp eq i64 %i.az, 0
  br i1 %.not97.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %xtraiter = and i64 %i.az, 1
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.az, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.078.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.by, %.lr.ph.i.i ] ; 5 uses
  %.06277.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bx, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bb = getelementptr [4 x i8], ptr %2, i64 %.078.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !44
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.as, i64 %.078.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !44
  %i.bg = zext i32 %i.bf to i64
  %i.bh = sub nsw i64 %i.bd, %i.bg
  %i.bi = add nsw i64 %i.bh, %.06277.i.i          ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr [4 x i8], ptr %0, i64 %.078.i.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !44
  %i.bl = ashr i64 %i.bi, 32
  %i.bm = or disjoint i64 %.078.i.i, 1            ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %2, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !44
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr %i.as, i64 %i.bm
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !44
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nsw i64 %i.bp, %i.bs
  %i.bu = add nsw i64 %i.bt, %i.bl                ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %i.bm
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !44
  %i.bx = ashr i64 %i.bu, 32                      ; 3 uses
  %i.by = add nuw nsw i64 %.078.i.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !5

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.078.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.by, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.06277.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bx, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod800 = trunc i64 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod800)
  %i.bz = getelementptr [4 x i8], ptr %2, i64 %.078.i.i.epil.init
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !44
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %i.as, i64 %.078.i.i.epil.init
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !44
  %i.ce = zext i32 %i.cd to i64
  %i.cf = sub nsw i64 %i.cb, %i.ce
  %i.cg = add nsw i64 %i.cf, %.06277.i.i.epil.init ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = getelementptr [4 x i8], ptr %0, i64 %.078.i.i.epil.init
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !44
  %i.cj = ashr i64 %i.cg, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %._crit_edge
  %.062.lcssa.i.i = phi i64 [ 0, %._crit_edge ], [ %i.bx, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.epil.preheader ] ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ay, %i.aj
  br i1 %.not.i.i, label %.lr.ph87.i.i.preheader, label %.preheader72.i.i

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %8 = add nuw i64 %i.az, %i.aj
  %i.ck = sub i64 %.0197, %8
  %xtraiter801 = and i64 %i.ck, 3                 ; 2 uses
  %lcmp.mod802.not = icmp eq i64 %xtraiter801, 0
  br i1 %lcmp.mod802.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.cs, %.lr.ph87.i.i.prol ], [ %i.az, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26485.i.i.prol = phi i64 [ %i.cr, %.lr.ph87.i.i.prol ], [ %.062.lcssa.i.i, %.lr.ph87.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.cl = getelementptr [4 x i8], ptr %i.as, i64 %.286.i.i.prol
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !44
  %i.cn = zext i32 %i.cm to i64
  %i.co = sub nsw i64 %.26485.i.i.prol, %i.cn     ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = getelementptr [4 x i8], ptr %0, i64 %.286.i.i.prol
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !44
  %i.cr = ashr i64 %i.co, 32                      ; 3 uses
  %i.cs = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter801
  br i1 %prol.iter.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !102

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa794.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.cr, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.az, %.lr.ph87.i.i.preheader ], [ %i.cs, %.lr.ph87.i.i.prol ]
  %.26485.i.i.unr = phi i64 [ %.062.lcssa.i.i, %.lr.ph87.i.i.preheader ], [ %i.cr, %.lr.ph87.i.i.prol ]
  %i.ct = sub i64 %i.az, %.0197
  %i.cu = add i64 %i.ct, %i.aj
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %.loopexit71.i.i, label %.lr.ph87.i.i

.preheader72.i.i:                                 ; preds = %._crit_edge.i.i
  %i.cw = icmp samesign ult i64 %i.ay, %i.aj
  br i1 %i.cw, label %.lr.ph82.i.i, label %.loopexit71.i.i

.lr.ph82.i.i:                                     ; preds = %.preheader72.i.i, %bb.h
  %.181.i.i = phi i64 [ %i.df, %bb.h ], [ %i.az, %.preheader72.i.i ] ; 4 uses
  %.16380.i.i = phi i64 [ %i.de, %bb.h ], [ %.062.lcssa.i.i, %.preheader72.i.i ]
  %i.cx = icmp eq i64 %.16380.i.i, 0
  br i1 %i.cx, label %.loopexit74.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph82.i.i
  %i.cy = getelementptr [4 x i8], ptr %2, i64 %.181.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !44
  %i.da = zext i32 %i.cz to i64
  %i.db = add nsw i64 %i.da, -1                   ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = getelementptr [4 x i8], ptr %0, i64 %.181.i.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !44
  %i.de = ashr i64 %i.db, 32                      ; 2 uses
  %i.df = add i64 %.181.i.i, 1                    ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %i.df, %i.aj
  br i1 %exitcond107.not.i.i, label %.loopexit71.i.i, label %.lr.ph82.i.i, !llvm.loop !6

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.el, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26485.i.i = phi i64 [ %i.ek, %.lr.ph87.i.i ], [ %.26485.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.dg = getelementptr [4 x i8], ptr %i.as, i64 %.286.i.i
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !44
  %i.di = zext i32 %i.dh to i64
  %i.dj = sub nsw i64 %.26485.i.i, %i.di          ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr [4 x i8], ptr %0, i64 %.286.i.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !44
  %i.dm = ashr i64 %i.dj, 32
  %i.dn = add nuw i64 %.286.i.i, 1                ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.as, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !44
  %i.dq = zext i32 %i.dp to i64
  %i.dr = sub nsw i64 %i.dm, %i.dq                ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr [4 x i8], ptr %0, i64 %i.dn
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !44
  %i.du = ashr i64 %i.dr, 32
  %i.dv = add nuw i64 %.286.i.i, 2                ; 2 uses
  %i.dw = getelementptr [4 x i8], ptr %i.as, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !44
  %i.dy = zext i32 %i.dx to i64
  %i.dz = sub nsw i64 %i.du, %i.dy                ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = getelementptr [4 x i8], ptr %0, i64 %i.dv
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !44
  %i.ec = ashr i64 %i.dz, 32
  %i.ed = add nuw i64 %.286.i.i, 3                ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %i.as, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !44
  %i.eg = zext i32 %i.ef to i64
  %i.eh = sub nsw i64 %i.ec, %i.eg                ; 2 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr [4 x i8], ptr %0, i64 %i.ed
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !44
  %i.ek = ashr i64 %i.eh, 32                      ; 2 uses
  %i.el = add nuw i64 %.286.i.i, 4                ; 2 uses
  %exitcond108.not.i.i.3 = icmp eq i64 %i.el, %i.ay
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i, label %.lr.ph87.i.i, !llvm.loop !7

.loopexit71.i.i:                                  ; preds = %bb.h, %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %.preheader72.i.i
  %.365.i.i = phi i64 [ %.062.lcssa.i.i, %.preheader72.i.i ], [ %i.ek, %.lr.ph87.i.i ], [ %.lcssa794.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.de, %bb.h ]
  %.3.i.i = phi i64 [ %i.az, %.preheader72.i.i ], [ %i.ay, %.lr.ph87.i.i.prol.loopexit ], [ %i.ay, %.lr.ph87.i.i ], [ %i.aj, %bb.h ] ; 4 uses
  %i.em = icmp eq i64 %.365.i.i, 0
  br i1 %i.em, label %.loopexit74.i.i, label %.preheader68.i.i

.preheader68.i.i:                                 ; preds = %.loopexit71.i.i
  %i.en = icmp ult i64 %.3.i.i, %i.aj
  br i1 %i.en, label %bary_sub.exit.thread, label %bary_sub.exit

bary_sub.exit.thread:                             ; preds = %.preheader68.i.i
  %i.eo = shl i64 %.3.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.eo
  %i.ep = sub nuw nsw i64 %i.aj, %.3.i.i
  %i.eq = shl i64 %i.ep, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 -1, i64 %i.eq, i1 false), !tbaa !44
  br label %.lr.ph.i.preheader

.loopexit74.i.i:                                  ; preds = %.lr.ph82.i.i, %.loopexit71.i.i
  %.5.i.i = phi i64 [ %.3.i.i, %.loopexit71.i.i ], [ %.181.i.i, %.lr.ph82.i.i ] ; 5 uses
  %i.er = icmp ne ptr %2, %0
  %i.es = icmp ult i64 %.5.i.i, %i.aj
  %or.cond468 = and i1 %i.er, %i.es
  br i1 %or.cond468, label %.lr.ph93.i.i.preheader, label %bary_2comp.exit

.lr.ph93.i.i.preheader:                           ; preds = %.loopexit74.i.i
  %i.et = sub nuw i64 %i.aj, %.5.i.i              ; 3 uses
  %min.iters.check680 = icmp samesign ult i64 %i.et, 8
  %i.eu = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.eu, -32
  %or.cond760 = or i1 %min.iters.check680, %diff.check
  br i1 %or.cond760, label %.lr.ph93.i.i.preheader787, label %vector.ph681

vector.ph681:                                     ; preds = %.lr.ph93.i.i.preheader
  %n.vec682 = and i64 %i.et, 9223372036854775800  ; 3 uses
  %i.ev = add i64 %.5.i.i, %n.vec682
  br label %vector.body683

vector.body683:                                   ; preds = %vector.body683, %vector.ph681
  %index684 = phi i64 [ 0, %vector.ph681 ], [ %index.next687, %vector.body683 ] ; 2 uses
  %i.ew = add nuw i64 %.5.i.i, %index684          ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %2, i64 %i.ew ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  %wide.load685 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !44
  %wide.load686 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !44
  %i.ez = getelementptr [4 x i8], ptr %0, i64 %i.ew ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  store <4 x i32> %wide.load685, ptr %i.ez, align 4, !tbaa !44
  store <4 x i32> %wide.load686, ptr %i.fa, align 4, !tbaa !44
  %index.next687 = add nuw i64 %index684, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next687, %n.vec682
  br i1 %i.fb, label %middle.block688, label %vector.body683, !llvm.loop !103

middle.block688:                                  ; preds = %vector.body683
  %cmp.n689 = icmp eq i64 %i.et, %n.vec682
  br i1 %cmp.n689, label %bary_2comp.exit, label %.lr.ph93.i.i.preheader787

.lr.ph93.i.i.preheader787:                        ; preds = %.lr.ph93.i.i.preheader, %middle.block688
  %.692.i.i.ph = phi i64 [ %.5.i.i, %.lr.ph93.i.i.preheader ], [ %i.ev, %middle.block688 ] ; 4 uses
  %i.fc = sub i64 %i.aj, %.692.i.i.ph
  %xtraiter803 = and i64 %i.fc, 3                 ; 2 uses
  %lcmp.mod804.not = icmp eq i64 %xtraiter803, 0
  br i1 %lcmp.mod804.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol

.lr.ph93.i.i.prol:                                ; preds = %.lr.ph93.i.i.preheader787, %.lr.ph93.i.i.prol
  %.692.i.i.prol = phi i64 [ %i.fg, %.lr.ph93.i.i.prol ], [ %.692.i.i.ph, %.lr.ph93.i.i.preheader787 ] ; 3 uses
  %prol.iter805 = phi i64 [ %prol.iter805.next, %.lr.ph93.i.i.prol ], [ 0, %.lr.ph93.i.i.preheader787 ]
  %i.fd = getelementptr [4 x i8], ptr %2, i64 %.692.i.i.prol
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !44
  %i.ff = getelementptr [4 x i8], ptr %0, i64 %.692.i.i.prol
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !44
  %i.fg = add nuw i64 %.692.i.i.prol, 1           ; 2 uses
  %prol.iter805.next = add i64 %prol.iter805, 1   ; 2 uses
  %prol.iter805.cmp.not = icmp eq i64 %prol.iter805.next, %xtraiter803
  br i1 %prol.iter805.cmp.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol, !llvm.loop !104

.lr.ph93.i.i.prol.loopexit:                       ; preds = %.lr.ph93.i.i.prol, %.lr.ph93.i.i.preheader787
  %.692.i.i.unr = phi i64 [ %.692.i.i.ph, %.lr.ph93.i.i.preheader787 ], [ %i.fg, %.lr.ph93.i.i.prol ]
  %i.fh = sub i64 %.692.i.i.ph, %i.aj
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %bary_2comp.exit, label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i
  %.692.i.i = phi i64 [ %i.fy, %.lr.ph93.i.i ], [ %.692.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr [4 x i8], ptr %2, i64 %.692.i.i
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !44
  %i.fl = getelementptr [4 x i8], ptr %0, i64 %.692.i.i
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !44
  %i.fm = add nuw i64 %.692.i.i, 1                ; 2 uses
  %i.fn = getelementptr [4 x i8], ptr %2, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !44
  %i.fp = getelementptr [4 x i8], ptr %0, i64 %i.fm
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !44
  %i.fq = add nuw i64 %.692.i.i, 2                ; 2 uses
  %i.fr = getelementptr [4 x i8], ptr %2, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !44
  %i.ft = getelementptr [4 x i8], ptr %0, i64 %i.fq
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !44
  %i.fu = add nuw i64 %.692.i.i, 3                ; 2 uses
  %i.fv = getelementptr [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !44
  %i.fx = getelementptr [4 x i8], ptr %0, i64 %i.fu
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !44
  %i.fy = add nuw i64 %.692.i.i, 4                ; 2 uses
  %exitcond111.not.i.i.3 = icmp eq i64 %i.fy, %i.aj
end_hunk_0
begin_hunk_1_@bary_mul_karatsuba:bb.a
  %i.agc = add nuw i64 %i.agb, %.131.i424         ; 2 uses
  %.not.i423.1 = icmp eq i64 %i.agc, 0
  br i1 %.not.i423.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i420.1
  %i.agd = getelementptr [4 x i8], ptr %i.aes, i64 %i.afx ; 2 uses
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !44
  %i.agf = zext i32 %i.age to i64
  %i.agg = add nuw i64 %i.agc, %i.agf             ; 2 uses
  %i.agh = trunc i64 %i.agg to i32
  store i32 %i.agh, ptr %i.agd, align 4, !tbaa !44
  %i.agi = lshr i64 %i.agg, 32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i420.1
  %.131.i424.1 = phi i64 [ %i.agi, %bb.ba ], [ 0, %.lr.ph.i420.1 ] ; 3 uses
  %i.agj = add nuw i64 %.036.i421, 2              ; 2 uses
  %niter874.next.1 = add nuw i64 %niter874, 2     ; 2 uses
  %niter874.ncmp.1 = icmp eq i64 %niter874.next.1, %unroll_iter873
  br i1 %niter874.ncmp.1, label %.preheader.i426.unr-lcssa, label %.lr.ph.i420, !llvm.loop !0

.lr.ph41.i428:                                    ; preds = %.preheader.i426, %.lr.ph41.i428
  %.140.i429 = phi i64 [ %i.agq, %.lr.ph41.i428 ], [ %.0197, %.preheader.i426 ] ; 2 uses
  %.239.i430 = phi i64 [ %i.agp, %.lr.ph41.i428 ], [ %.131.i424.lcssa, %.preheader.i426 ]
  %i.agk = getelementptr [4 x i8], ptr %i.aes, i64 %.140.i429 ; 2 uses
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !44
  %i.agm = zext i32 %i.agl to i64
  %i.agn = add nuw nsw i64 %.239.i430, %i.agm     ; 2 uses
  %i.ago = trunc i64 %i.agn to i32
  store i32 %i.ago, ptr %i.agk, align 4, !tbaa !44
  %i.agp = lshr i64 %i.agn, 32                    ; 2 uses
  %i.agq = add nuw i64 %.140.i429, 1              ; 2 uses
  %i.agr = icmp uge i64 %i.agq, %i.aet
  %i.ags = icmp eq i64 %i.agp, 0
  %or.cond.i431 = select i1 %i.agr, i1 true, i1 %i.ags
  br i1 %or.cond.i431, label %bary_muladd_1xN.exit418, label %.lr.ph41.i428, !llvm.loop !1

bary_muladd_1xN.exit418:                          ; preds = %.lr.ph41.i411, %.lr.ph41.i428, %bb.ax, %.preheader.i426, %.preheader.i409, %bb.aw, %bary_muladd_1xN.exit, %bb.av
  %i.agt = load i64, ptr %i.aa, align 8, !tbaa !46
  %.not217 = icmp eq i64 %i.agt, 0
  br i1 %.not217, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bary_muladd_1xN.exit418
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.aa) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bary_muladd_1xN.exit418
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
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  store i64 %1, ptr %i.b, align 8, !tbaa !46
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %i.n = and i64 %i.m, 16384
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit18

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = lshr i64 %i.m, 15
  %i.r = and i64 %i.q, 511
  br label %BIGNUM_LEN.exit18

BIGNUM_LEN.exit18:                                ; preds = %bb.d, %bb.e
  %.0.i17 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 5 uses
  %i.s = add i64 %.0.i17, %.0.i                   ; 2 uses
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !46
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
  %i.ae = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.1) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ah = and i64 %i.ag, 16384
  %.not.i19 = icmp eq i64 %i.ah, 0
  br i1 %.not.i19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  br label %BIGNUM_DIGITS.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.i, %bb.j
  %.0.i20 = phi ptr [ %i.ai, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = load i64, ptr %i.e, align 8, !tbaa !48
  %i.am = and i64 %i.al, 16384
  %.not.i21 = icmp eq i64 %i.am, 0
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.an = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit23

bb.l:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ao = getelementptr i8, ptr %i.e, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit23

BIGNUM_DIGITS.exit23:                             ; preds = %bb.k, %bb.l
  %.0.i22 = phi ptr [ %i.an, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !48
  %i.ar = and i64 %i.aq, 16384
  %.not.i24 = icmp eq i64 %i.ar, 0
  br i1 %.not.i24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %BIGNUM_DIGITS.exit23
  %i.as = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit26

bb.n:                                             ; preds = %BIGNUM_DIGITS.exit23
  %i.at = getelementptr i8, ptr %i.l, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit26

BIGNUM_DIGITS.exit26:                             ; preds = %bb.m, %bb.n
  %.0.i25 = phi ptr [ %i.as, %bb.m ], [ %i.au, %bb.n ]
  tail call fastcc void @bary_mul_toom3(ptr noundef %.0.i20, i64 noundef %i.s, ptr noundef %.0.i22, i64 noundef %.0.i, ptr noundef %.0.i25, i64 noundef %.0.i17, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !122
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.aw = load volatile i64, ptr %i.av, align 8, !tbaa !46 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !123
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.ay = load volatile i64, ptr %i.ax, align 8, !tbaa !46 ; 0 uses
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bary_mul_toom3(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !46
  %i.c = icmp eq ptr %2, %4
  %i.d = icmp eq i64 %3, %5
  %i.e = and i1 %i.c, %i.d                        ; 2 uses
  %i.f = add i64 %5, 2                            ; 19 uses
  %i.g = udiv i64 %i.f, 3                         ; 116 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 46 uses
  %i.i = mul i64 %i.h, 6
  %i.j = shl nuw i64 %i.g, 1                      ; 94 uses
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

bb.c:                                             ; preds = %bb.b
  %i.t = shl nuw nsw i64 %i.r, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i64 %i.q, 0
  br i1 %i.v, label %bb.e, label %rb_alloc_tmp_buffer2.exit, !prof !54

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.r, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.d
  %i.w = shl nuw i64 %i.r, 2                      ; 2 uses
  %i.x = add i64 %i.w, 4
  %i.y = lshr i64 %i.x, 3
  %i.z = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.w, i64 noundef %i.y) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %rb_alloc_tmp_buffer2.exit, %bb.a
  %.0560 = phi ptr [ %6, %bb.a ], [ %i.u, %bb.c ], [ %i.z, %rb_alloc_tmp_buffer2.exit ] ; 33 uses
  %.0559 = phi i64 [ %7, %bb.a ], [ %i.r, %bb.c ], [ %i.r, %rb_alloc_tmp_buffer2.exit ]
  %.05602838 = ptrtoaddr ptr %.0560 to i64        ; 9 uses
  %.idx1993 = shl i64 %i.h, 2                     ; 4 uses
  %i.aa = getelementptr i8, ptr %.0560, i64 %.idx1993 ; 23 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.idx1993 ; 49 uses
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %i.h ; 33 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.h ; 31 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.h ; 61 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.h ; 7 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.j ; 14 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.k ; 23 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.k ; 8 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.k ; 9 uses
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.j ; 34 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.l ; 57 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %i.l ; 42 uses
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.l ; 8 uses
  %i.ao = sub i64 %.0559, %i.o                    ; 5 uses
  %i.ap = mul i64 %i.g, 6
  %i.aq = or disjoint i64 %i.ap, 1                ; 4 uses
  %i.ar = sub i64 %3, %i.j                        ; 20 uses
  %i.as = getelementptr [4 x i8], ptr %2, i64 %i.g ; 7 uses
  %i.at = getelementptr [4 x i8], ptr %2, i64 %i.j ; 13 uses
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = sub i64 %5, %i.j
  %i.av = getelementptr [4 x i8], ptr %4, i64 %i.g
  %i.aw = getelementptr [4 x i8], ptr %4, i64 %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0557 = phi ptr [ %4, %bb.g ], [ %2, %bb.f ]   ; 9 uses
  %.0555 = phi ptr [ %i.av, %bb.g ], [ %i.as, %bb.f ] ; 6 uses
  %.0554 = phi i64 [ %i.au, %bb.g ], [ %i.ar, %bb.f ] ; 23 uses
  %.0553 = phi ptr [ %i.aw, %bb.g ], [ %i.at, %bb.f ] ; 17 uses
  %.05532946 = ptrtoaddr ptr %.0553 to i64
  %i.ax = icmp ugt i64 %i.g, %i.ar
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.064.i.i = phi i64 [ %i.ar, %bb.i ], [ %i.g, %bb.h ] ; 8 uses
  %.063.i.i = phi ptr [ %2, %bb.i ], [ %i.at, %bb.h ] ; 12 uses
  %.062.i.i = phi i64 [ %i.g, %bb.i ], [ %i.ar, %bb.h ] ; 13 uses
  %.061.i.i = phi ptr [ %i.at, %bb.i ], [ %2, %bb.h ] ; 3 uses
  %.063.i.i2839 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i, label %.preheader72.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %xtraiter = and i64 %.064.i.i, 1
  %i.ay = icmp eq i64 %.064.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.064.i.i, -2
  br label %.lr.ph.i.i

.preheader72.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader72.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader72.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05779.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ci, %.preheader72.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ch, %.preheader72.i.i.loopexit.unr-lcssa ]
  %lcmp.mod3321 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod3321)
  %i.az = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !44
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !44
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %.05878.i.i.epil.init, %i.bb
  %i.bg = add nuw nsw i64 %i.bf, %i.be            ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr [4 x i8], ptr %.0560, i64 %.05779.i.i.epil.init
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !44
  %i.bj = lshr i64 %i.bg, 32
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i.epil.preheader, %.preheader72.i.i.loopexit.unr-lcssa, %bb.j
  %.058.lcssa.i.i = phi i64 [ 0, %bb.j ], [ %i.ch, %.preheader72.i.i.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.bk = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.bk, label %.lr.ph83.i.i, label %.lr.ph88.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ci, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ch, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bl = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !44
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !44
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i64 %.05878.i.i, %i.bn
  %i.bs = add nuw nsw i64 %i.br, %i.bq            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr [4 x i8], ptr %.0560, i64 %.05779.i.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !44
  %i.bv = lshr i64 %i.bs, 32
  %i.bw = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !44
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.bw
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !44
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bv, %i.bz
  %i.ce = add nuw nsw i64 %i.cd, %i.cc            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr [4 x i8], ptr %.0560, i64 %i.bw
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !44
  %i.ch = lshr i64 %i.ce, 32                      ; 3 uses
  %i.ci = add nuw nsw i64 %.05779.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3

.preheader70.i.i:                                 ; preds = %bb.l
  %.not = icmp ugt i64 %.062.i.i, %i.g
  br i1 %.not, label %bary_add.exit, label %.lr.ph88.preheader.i.i

.lr.ph88.preheader.i.i:                           ; preds = %.preheader72.i.i, %.preheader70.i.i
  %.1.lcssa.i.i1943 = phi i64 [ %.062.i.i, %.preheader70.i.i ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.159.lcssa.i.i1942 = phi i64 [ %i.ct, %.preheader70.i.i ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cj = icmp eq i64 %.159.lcssa.i.i1942, 0
  br i1 %i.cj, label %.loopexit71.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.ck = getelementptr [4 x i8], ptr %.0560, i64 %.1.lcssa.i.i1943
  store i32 1, ptr %i.ck, align 4, !tbaa !44
  %i.cl = add nuw nsw i64 %.1.lcssa.i.i1943, 1
  %exitcond103.peel.not.i.i = icmp eq i64 %.1.lcssa.i.i1943, %i.g
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.l
  %.182.i.i = phi i64 [ %i.cu, %bb.l ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.ct, %bb.l ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cm = icmp eq i64 %.15981.i.i, 0
  br i1 %i.cm, label %.loopexit71.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph83.i.i
  %i.cn = getelementptr [4 x i8], ptr %.063.i.i, i64 %.182.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr [4 x i8], ptr %.0560, i64 %.182.i.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !44
  %i.ct = lshr i64 %i.cq, 32                      ; 2 uses
  %i.cu = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.cu, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !4

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.k, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.cl, %bb.k ], [ %.1.lcssa.i.i1943, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
  %i.cv = icmp eq ptr %.063.i.i, %.0560
  %i.cw = icmp eq i64 %.062.i.i, %i.h
  %or.cond.i.i = and i1 %i.cv, %i.cw
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.cx = icmp ult i64 %.3.i.i, %.062.i.i
  br i1 %i.cx, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.cy = sub nuw i64 %.062.i.i, %.3.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 8
  %i.cz = sub i64 %.063.i.i2839, %.05602838
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond3176 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond3176, label %.lr.ph91.i.i.preheader3316, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i.preheader
  %n.vec = and i64 %i.cy, -8                      ; 3 uses
  %i.da = add i64 %.3.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = add nuw i64 %.3.i.i, %index             ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !44
  %wide.load2840 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !44
  %i.de = getelementptr [4 x i8], ptr %.0560, i64 %i.db ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store <4 x i32> %wide.load, ptr %i.de, align 4, !tbaa !44
  store <4 x i32> %wide.load2840, ptr %i.df, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph91.i.i.preheader3316

.lr.ph91.i.i.preheader3316:                       ; preds = %.lr.ph91.i.i.preheader, %middle.block
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.da, %middle.block ] ; 4 uses
  %i.dh = sub i64 %.062.i.i, %.490.i.i.ph
  %xtraiter3322 = and i64 %i.dh, 3                ; 2 uses
  %lcmp.mod3323.not = icmp eq i64 %xtraiter3322, 0
  br i1 %lcmp.mod3323.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader3316, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.dl, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader3316 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader3316 ]
  %i.di = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !44
  %i.dk = getelementptr [4 x i8], ptr %.0560, i64 %.490.i.i.prol
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !44
  %i.dl = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3322
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !125

end_hunk_1
begin_hunk_2_@bary_mul_toom3:bb.a
  %xtraiter3336 = and i64 %i.ln, 1
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %.lr.ph.i.i681.epil.preheader, label %.lr.ph.i.i681.preheader.new

.lr.ph.i.i681.preheader.new:                      ; preds = %.lr.ph.i.i681.preheader
  %unroll_iter3340 = and i64 %i.ln, 9223372036854775806
  br label %.lr.ph.i.i681

.lr.ph.i.i681:                                    ; preds = %.lr.ph.i.i681, %.lr.ph.i.i681.preheader.new
  %.078.i.i682 = phi i64 [ 0, %.lr.ph.i.i681.preheader.new ], [ %i.mm, %.lr.ph.i.i681 ] ; 5 uses
  %.06277.i.i683 = phi i64 [ 0, %.lr.ph.i.i681.preheader.new ], [ %i.ml, %.lr.ph.i.i681 ]
  %niter3341 = phi i64 [ 0, %.lr.ph.i.i681.preheader.new ], [ %niter3341.next.1, %.lr.ph.i.i681 ]
  %i.lp = getelementptr [4 x i8], ptr %i.at, i64 %.078.i.i682
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !44
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr [4 x i8], ptr %i.aa, i64 %.078.i.i682
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !44
  %i.lu = zext i32 %i.lt to i64
  %i.lv = sub nsw i64 %i.lr, %i.lu
  %i.lw = add nsw i64 %i.lv, %.06277.i.i683       ; 2 uses
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr [4 x i8], ptr %i.ab, i64 %.078.i.i682
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !44
  %i.lz = ashr i64 %i.lw, 32
  %i.ma = or disjoint i64 %.078.i.i682, 1         ; 3 uses
  %i.mb = getelementptr [4 x i8], ptr %i.at, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !44
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr [4 x i8], ptr %i.aa, i64 %i.ma
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !44
  %i.mg = zext i32 %i.mf to i64
  %i.mh = sub nsw i64 %i.md, %i.mg
  %i.mi = add nsw i64 %i.mh, %i.lz                ; 2 uses
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = getelementptr [4 x i8], ptr %i.ab, i64 %i.ma
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !44
  %i.ml = ashr i64 %i.mi, 32                      ; 3 uses
  %i.mm = add nuw nsw i64 %.078.i.i682, 2         ; 2 uses
  %niter3341.next.1 = add i64 %niter3341, 2       ; 2 uses
  %niter3341.ncmp.1 = icmp eq i64 %niter3341.next.1, %unroll_iter3340
  br i1 %niter3341.ncmp.1, label %._crit_edge.i.i685.loopexit.unr-lcssa, label %.lr.ph.i.i681, !llvm.loop !5

._crit_edge.i.i685.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i681
  %lcmp.mod3337.not = icmp eq i64 %xtraiter3336, 0
  br i1 %lcmp.mod3337.not, label %._crit_edge.i.i685, label %.lr.ph.i.i681.epil.preheader

.lr.ph.i.i681.epil.preheader:                     ; preds = %._crit_edge.i.i685.loopexit.unr-lcssa, %.lr.ph.i.i681.preheader
  %.078.i.i682.epil.init = phi i64 [ 0, %.lr.ph.i.i681.preheader ], [ %i.mm, %._crit_edge.i.i685.loopexit.unr-lcssa ] ; 3 uses
  %.06277.i.i683.epil.init = phi i64 [ 0, %.lr.ph.i.i681.preheader ], [ %i.ml, %._crit_edge.i.i685.loopexit.unr-lcssa ]
  %lcmp.mod3339 = trunc i64 %i.ln to i1
  call void @llvm.assume(i1 %lcmp.mod3339)
  %i.mn = getelementptr [4 x i8], ptr %i.at, i64 %.078.i.i682.epil.init
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !44
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr [4 x i8], ptr %i.aa, i64 %.078.i.i682.epil.init
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !44
  %i.ms = zext i32 %i.mr to i64
  %i.mt = sub nsw i64 %i.mp, %i.ms
  %i.mu = add nsw i64 %i.mt, %.06277.i.i683.epil.init ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = getelementptr [4 x i8], ptr %i.ab, i64 %.078.i.i682.epil.init
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !44
  %i.mx = ashr i64 %i.mu, 32
  br label %._crit_edge.i.i685

._crit_edge.i.i685:                               ; preds = %.lr.ph.i.i681.epil.preheader, %._crit_edge.i.i685.loopexit.unr-lcssa, %bb.s
  %.062.lcssa.i.i686 = phi i64 [ 0, %bb.s ], [ %i.ml, %._crit_edge.i.i685.loopexit.unr-lcssa ], [ %i.mx, %.lr.ph.i.i681.epil.preheader ] ; 4 uses
  %.not.i.i687.not = icmp ult i64 %i.g, %i.ar
  br i1 %.not.i.i687.not, label %.preheader72.i.i688, label %.lr.ph87.i.i.preheader

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i685
  %i.my = add nuw nsw i64 %i.g, 1
  %i.mz = sub nuw nsw i64 %i.my, %i.ln
  %i.na = sub nuw nsw i64 %i.g, %i.ln
  %xtraiter3342 = and i64 %i.mz, 3                ; 2 uses
  %lcmp.mod3343.not = icmp eq i64 %xtraiter3342, 0
  br i1 %lcmp.mod3343.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.ni, %.lr.ph87.i.i.prol ], [ %i.ln, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26485.i.i.prol = phi i64 [ %i.nh, %.lr.ph87.i.i.prol ], [ %.062.lcssa.i.i686, %.lr.ph87.i.i.preheader ]
  %prol.iter3344 = phi i64 [ %prol.iter3344.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.nb = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i.prol
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !44
  %i.nd = zext i32 %i.nc to i64
  %i.ne = sub nsw i64 %.26485.i.i.prol, %i.nd     ; 2 uses
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i.prol
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !44
  %i.nh = ashr i64 %i.ne, 32                      ; 3 uses
  %i.ni = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter3344.next = add i64 %prol.iter3344, 1 ; 2 uses
  %prol.iter3344.cmp.not = icmp eq i64 %prol.iter3344.next, %xtraiter3342
  br i1 %prol.iter3344.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !132

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa3307.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.ln, %.lr.ph87.i.i.preheader ], [ %i.ni, %.lr.ph87.i.i.prol ]
  %.26485.i.i.unr = phi i64 [ %.062.lcssa.i.i686, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %i.nj = icmp samesign ult i64 %i.na, 3
  br i1 %i.nj, label %.loopexit71.i.i689, label %.lr.ph87.i.i

.preheader72.i.i688:                              ; preds = %._crit_edge.i.i685
  %i.nk = icmp ult i64 %i.h, %i.ar
  br i1 %i.nk, label %.lr.ph82.i.i706, label %.loopexit71.i.i689

.lr.ph82.i.i706:                                  ; preds = %.preheader72.i.i688, %bb.t
  %.181.i.i707 = phi i64 [ %i.nt, %bb.t ], [ %i.ln, %.preheader72.i.i688 ] ; 4 uses
  %.16380.i.i708 = phi i64 [ %i.ns, %bb.t ], [ %.062.lcssa.i.i686, %.preheader72.i.i688 ]
  %i.nl = icmp eq i64 %.16380.i.i708, 0
  br i1 %i.nl, label %.loopexit74.i.i695, label %bb.t

bb.t:                                             ; preds = %.lr.ph82.i.i706
  %i.nm = getelementptr [4 x i8], ptr %i.at, i64 %.181.i.i707
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !44
  %i.no = zext i32 %i.nn to i64
  %i.np = add nsw i64 %i.no, -1                   ; 2 uses
  %i.nq = trunc i64 %i.np to i32
  %i.nr = getelementptr [4 x i8], ptr %i.ab, i64 %.181.i.i707
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !44
  %i.ns = ashr i64 %i.np, 32                      ; 2 uses
  %i.nt = add i64 %.181.i.i707, 1                 ; 2 uses
  %exitcond107.not.i.i709 = icmp eq i64 %i.nt, %i.ar
  br i1 %exitcond107.not.i.i709, label %.loopexit71.i.i689, label %.lr.ph82.i.i706, !llvm.loop !6

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.oz, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26485.i.i = phi i64 [ %i.oy, %.lr.ph87.i.i ], [ %.26485.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.nu = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !44
  %i.nw = zext i32 %i.nv to i64
  %i.nx = sub nsw i64 %.26485.i.i, %i.nw          ; 2 uses
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !44
  %i.oa = ashr i64 %i.nx, 32
  %i.ob = add nuw i64 %.286.i.i, 1                ; 2 uses
  %i.oc = getelementptr [4 x i8], ptr %i.aa, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !44
  %i.oe = zext i32 %i.od to i64
  %i.of = sub nsw i64 %i.oa, %i.oe                ; 2 uses
  %i.og = trunc i64 %i.of to i32
  %i.oh = getelementptr [4 x i8], ptr %i.ab, i64 %i.ob
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !44
  %i.oi = ashr i64 %i.of, 32
  %i.oj = add nuw i64 %.286.i.i, 2                ; 2 uses
  %i.ok = getelementptr [4 x i8], ptr %i.aa, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !44
  %i.om = zext i32 %i.ol to i64
  %i.on = sub nsw i64 %i.oi, %i.om                ; 2 uses
  %i.oo = trunc i64 %i.on to i32
  %i.op = getelementptr [4 x i8], ptr %i.ab, i64 %i.oj
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !44
  %i.oq = ashr i64 %i.on, 32
  %i.or = add nuw i64 %.286.i.i, 3                ; 3 uses
  %i.os = getelementptr [4 x i8], ptr %i.aa, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !44
  %i.ou = zext i32 %i.ot to i64
  %i.ov = sub nsw i64 %i.oq, %i.ou                ; 2 uses
  %i.ow = trunc i64 %i.ov to i32
  %i.ox = getelementptr [4 x i8], ptr %i.ab, i64 %i.or
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !44
  %i.oy = ashr i64 %i.ov, 32                      ; 2 uses
  %i.oz = add nuw i64 %.286.i.i, 4
  %exitcond108.not.i.i.3 = icmp eq i64 %i.or, %i.g
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i689, label %.lr.ph87.i.i, !llvm.loop !7

.loopexit71.i.i689:                               ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %bb.t, %.preheader72.i.i688
  %.365.i.i = phi i64 [ %.062.lcssa.i.i686, %.preheader72.i.i688 ], [ %i.ns, %bb.t ], [ %.lcssa3307.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.oy, %.lr.ph87.i.i ]
  %.3.i.i690 = phi i64 [ %i.ln, %.preheader72.i.i688 ], [ %i.ar, %bb.t ], [ %i.h, %.lr.ph87.i.i ], [ %i.h, %.lr.ph87.i.i.prol.loopexit ] ; 4 uses
  %i.pa = icmp eq i64 %.365.i.i, 0
  br i1 %i.pa, label %.loopexit74.i.i695, label %.preheader68.i.i691

.preheader68.i.i691:                              ; preds = %.loopexit71.i.i689
  %.not1994 = icmp ugt i64 %.3.i.i690, %i.g
  br i1 %.not1994, label %.lr.ph.i711.preheader, label %.lr.ph91.preheader.i.i693

.lr.ph.i711.preheader:                            ; preds = %.lr.ph91.preheader.i.i693, %.preheader68.i.i691
  br label %.lr.ph.i711

.lr.ph91.preheader.i.i693:                        ; preds = %.preheader68.i.i691
  %i.pb = shl i64 %.3.i.i690, 2
  %scevgep.i.i694 = getelementptr i8, ptr %i.ab, i64 %i.pb
  %i.pc = sub nuw nsw i64 %i.h, %.3.i.i690
  %i.pd = shl i64 %i.pc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i694, i8 -1, i64 %i.pd, i1 false), !tbaa !44
  br label %.lr.ph.i711.preheader

.loopexit74.i.i695:                               ; preds = %.lr.ph82.i.i706, %.loopexit71.i.i689
  %.5.i.i696 = phi i64 [ %.3.i.i690, %.loopexit71.i.i689 ], [ %.181.i.i707, %.lr.ph82.i.i706 ] ; 7 uses
  %i.pe = icmp eq ptr %i.at, %i.ab
  %i.pf = icmp eq i64 %i.ar, %i.h
  %or.cond.i.i697 = and i1 %i.pf, %i.pe
  br i1 %or.cond.i.i697, label %.critedge597, label %.preheader67.i.i698

.preheader67.i.i698:                              ; preds = %.loopexit74.i.i695
  %i.pg = icmp ult i64 %.5.i.i696, %i.ar
  br i1 %i.pg, label %.lr.ph93.i.i703.preheader, label %.preheader.i.i699

.lr.ph93.i.i703.preheader:                        ; preds = %.preheader67.i.i698
  %8 = add i64 %.5.i.i696, %i.j
  %i.ph = sub i64 %3, %8                          ; 3 uses
  %min.iters.check2868 = icmp ult i64 %i.ph, 12
  br i1 %min.iters.check2868, label %.lr.ph93.i.i703.preheader3297, label %vector.memcheck2865

vector.memcheck2865:                              ; preds = %.lr.ph93.i.i703.preheader
  %i.pi = sub i64 %.05602838, %i.a
  %i.pj = add i64 %i.pi, 7
  %diff.check2866 = icmp ult i64 %i.pj, 31
  br i1 %diff.check2866, label %.lr.ph93.i.i703.preheader3297, label %vector.ph2869

vector.ph2869:                                    ; preds = %vector.memcheck2865
  %n.vec2870 = and i64 %i.ph, -8                  ; 3 uses
  %i.pk = add i64 %.5.i.i696, %n.vec2870
  br label %vector.body2871

vector.body2871:                                  ; preds = %vector.body2871, %vector.ph2869
  %index2872 = phi i64 [ 0, %vector.ph2869 ], [ %index.next2875, %vector.body2871 ] ; 2 uses
  %i.pl = add nuw i64 %.5.i.i696, %index2872      ; 2 uses
  %i.pm = getelementptr [4 x i8], ptr %i.at, i64 %i.pl ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 16
  %wide.load2873 = load <4 x i32>, ptr %i.pm, align 4, !tbaa !44
  %wide.load2874 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !44
  %i.po = getelementptr [4 x i8], ptr %i.ab, i64 %i.pl ; 2 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 16
  store <4 x i32> %wide.load2873, ptr %i.po, align 4, !tbaa !44
  store <4 x i32> %wide.load2874, ptr %i.pp, align 4, !tbaa !44
  %index.next2875 = add nuw i64 %index2872, 8     ; 2 uses
  %i.pq = icmp eq i64 %index.next2875, %n.vec2870
  br i1 %i.pq, label %middle.block2876, label %vector.body2871, !llvm.loop !133

middle.block2876:                                 ; preds = %vector.body2871
  %cmp.n2877 = icmp eq i64 %i.ph, %n.vec2870
  br i1 %cmp.n2877, label %.preheader.i.i699, label %.lr.ph93.i.i703.preheader3297

.lr.ph93.i.i703.preheader3297:                    ; preds = %vector.memcheck2865, %.lr.ph93.i.i703.preheader, %middle.block2876
  %.692.i.i704.ph = phi i64 [ %.5.i.i696, %vector.memcheck2865 ], [ %.5.i.i696, %.lr.ph93.i.i703.preheader ], [ %i.pk, %middle.block2876 ]
  br label %.lr.ph93.i.i703

.preheader.i.i699:                                ; preds = %.lr.ph93.i.i703, %middle.block2876, %.preheader67.i.i698
  %.6.lcssa.i.i700 = phi i64 [ %.5.i.i696, %.preheader67.i.i698 ], [ %i.ar, %middle.block2876 ], [ %i.ar, %.lr.ph93.i.i703 ] ; 2 uses
  %.not1996 = icmp ugt i64 %.6.lcssa.i.i700, %i.g
  br i1 %.not1996, label %.critedge597, label %.critedge597.sink.split

.lr.ph93.i.i703:                                  ; preds = %.lr.ph93.i.i703.preheader3297, %.lr.ph93.i.i703
  %.692.i.i704 = phi i64 [ %i.pu, %.lr.ph93.i.i703 ], [ %.692.i.i704.ph, %.lr.ph93.i.i703.preheader3297 ] ; 3 uses
  %i.pr = getelementptr [4 x i8], ptr %i.at, i64 %.692.i.i704
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !44
  %i.pt = getelementptr [4 x i8], ptr %i.ab, i64 %.692.i.i704
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !44
  %i.pu = add nuw i64 %.692.i.i704, 1             ; 2 uses
  %exitcond111.not.i.i705 = icmp eq i64 %i.pu, %i.ar
  br i1 %exitcond111.not.i.i705, label %.preheader.i.i699, label %.lr.ph93.i.i703, !llvm.loop !134

.lr.ph.i711:                                      ; preds = %.lr.ph.i711.preheader, %bb.u
  %.023.i712 = phi i64 [ %i.px, %bb.u ], [ 0, %.lr.ph.i711.preheader ] ; 9 uses
  %i.pv = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !44 ; 2 uses
  %.not.i713 = icmp eq i32 %i.pw, 0
  br i1 %.not.i713, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i711
  %i.px = add nuw nsw i64 %.023.i712, 1
  %exitcond.not.i720 = icmp eq i64 %.023.i712, %i.g
  br i1 %exitcond.not.i720, label %bary_2comp.exit721.preheader, label %.lr.ph.i711, !llvm.loop !8

bb.v:                                             ; preds = %.lr.ph.i711
  %i.py = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  %i.pz = sub i32 0, %i.pw
  store i32 %i.pz, ptr %i.py, align 4, !tbaa !44
  %.not1995.not = icmp samesign ult i64 %.023.i712, %i.g
  br i1 %.not1995.not, label %.lr.ph26.i716.preheader, label %bary_2comp.exit721.preheader

.lr.ph26.i716.preheader:                          ; preds = %bb.v
  %i.qa = sub nuw nsw i64 %i.g, %.023.i712        ; 3 uses
  %min.iters.check2854 = icmp samesign ult i64 %i.qa, 8
  br i1 %min.iters.check2854, label %.lr.ph26.i716.preheader3299, label %vector.ph2855

vector.ph2855:                                    ; preds = %.lr.ph26.i716.preheader
  %n.vec2856 = and i64 %i.qa, 9223372036854775800 ; 3 uses
  %i.qb = add nuw i64 %.023.i712, %n.vec2856
  %i.qc = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  br label %vector.body2857

vector.body2857:                                  ; preds = %vector.body2857, %vector.ph2855
  %index2858 = phi i64 [ 0, %vector.ph2855 ], [ %index.next2861, %vector.body2857 ] ; 2 uses
  %i.qd = getelementptr [4 x i8], ptr %i.qc, i64 %index2858 ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 4      ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qd, i64 20     ; 2 uses
  %wide.load2859 = load <4 x i32>, ptr %i.qe, align 4, !tbaa !44
  %wide.load2860 = load <4 x i32>, ptr %i.qf, align 4, !tbaa !44
  %i.qg = xor <4 x i32> %wide.load2859, splat (i32 -1)
  %i.qh = xor <4 x i32> %wide.load2860, splat (i32 -1)
  store <4 x i32> %i.qg, ptr %i.qe, align 4, !tbaa !44
  store <4 x i32> %i.qh, ptr %i.qf, align 4, !tbaa !44
  %index.next2861 = add nuw i64 %index2858, 8     ; 2 uses
  %i.qi = icmp eq i64 %index.next2861, %n.vec2856
  br i1 %i.qi, label %middle.block2862, label %vector.body2857, !llvm.loop !135

middle.block2862:                                 ; preds = %vector.body2857
  %cmp.n2863 = icmp eq i64 %i.qa, %n.vec2856
  br i1 %cmp.n2863, label %bary_2comp.exit721.preheader, label %.lr.ph26.i716.preheader3299

.lr.ph26.i716.preheader3299:                      ; preds = %.lr.ph26.i716.preheader, %middle.block2862
  %.125.i717.in.ph = phi i64 [ %.023.i712, %.lr.ph26.i716.preheader ], [ %i.qb, %middle.block2862 ]
  br label %.lr.ph26.i716

.lr.ph26.i716:                                    ; preds = %.lr.ph26.i716.preheader3299, %.lr.ph26.i716
  %.125.i717.in = phi i64 [ %.125.i717, %.lr.ph26.i716 ], [ %.125.i717.in.ph, %.lr.ph26.i716.preheader3299 ]
  %.125.i717 = add nuw i64 %.125.i717.in, 1       ; 3 uses
  %i.qj = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i717 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !44
  %i.ql = xor i32 %i.qk, -1
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !44
  %exitcond31.not.i719 = icmp eq i64 %.125.i717, %i.g
  br i1 %exitcond31.not.i719, label %bary_2comp.exit721.preheader, label %.lr.ph26.i716, !llvm.loop !136

bary_2comp.exit721.preheader:                     ; preds = %bb.u, %.lr.ph26.i716, %middle.block2862, %bb.v
  %xtraiter3345 = and i64 %i.h, 3                 ; 3 uses
  %i.qm = icmp ult i64 %i.f, 9
  br i1 %i.qm, label %bary_2comp.exit721.epil.preheader, label %bary_2comp.exit721.preheader.new

bary_2comp.exit721.preheader.new:                 ; preds = %bary_2comp.exit721.preheader
  %unroll_iter3348 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit721

bary_2comp.exit721:                               ; preds = %bary_2comp.exit721, %bary_2comp.exit721.preheader.new
  %.015.i = phi i32 [ 0, %bary_2comp.exit721.preheader.new ], [ %i.ra, %bary_2comp.exit721 ]
  %.01013.i = phi ptr [ %i.ab, %bary_2comp.exit721.preheader.new ], [ %i.qx, %bary_2comp.exit721 ] ; 6 uses
  %niter3349 = phi i64 [ 0, %bary_2comp.exit721.preheader.new ], [ %niter3349.next.3, %bary_2comp.exit721 ]
  %i.qn = getelementptr i8, ptr %.01013.i, i64 4  ; 2 uses
  %i.qo = load i32, ptr %.01013.i, align 4, !tbaa !44 ; 2 uses
  %i.qp = shl i32 %i.qo, 1
  %i.qq = or disjoint i32 %i.qp, %.015.i
  store i32 %i.qq, ptr %.01013.i, align 4, !tbaa !44
  %i.qr = getelementptr i8, ptr %.01013.i, i64 8  ; 2 uses
  %i.qs = load i32, ptr %i.qn, align 4, !tbaa !44 ; 2 uses
  %i.qt = call i32 @llvm.fshl.i32(i32 %i.qs, i32 %i.qo, i32 1)
  store i32 %i.qt, ptr %i.qn, align 4, !tbaa !44
  %i.qu = getelementptr i8, ptr %.01013.i, i64 12 ; 2 uses
  %i.qv = load i32, ptr %i.qr, align 4, !tbaa !44 ; 2 uses
  %i.qw = call i32 @llvm.fshl.i32(i32 %i.qv, i32 %i.qs, i32 1)
  store i32 %i.qw, ptr %i.qr, align 4, !tbaa !44
  %i.qx = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  %i.qy = load i32, ptr %i.qu, align 4, !tbaa !44 ; 2 uses
  %i.qz = call i32 @llvm.fshl.i32(i32 %i.qy, i32 %i.qv, i32 1)
  store i32 %i.qz, ptr %i.qu, align 4, !tbaa !44
  %i.ra = lshr i32 %i.qy, 31                      ; 2 uses
  %niter3349.next.3 = add i64 %niter3349, 4       ; 2 uses
  %niter3349.ncmp.3 = icmp eq i64 %niter3349.next.3, %unroll_iter3348
  br i1 %niter3349.ncmp.3, label %bary_small_lshift.exit.unr-lcssa, label %bary_2comp.exit721, !llvm.loop !10

bary_small_lshift.exit.unr-lcssa:                 ; preds = %bary_2comp.exit721
  %lcmp.mod3346.not = icmp eq i64 %xtraiter3345, 0
  br i1 %lcmp.mod3346.not, label %bary_small_lshift.exit, label %bary_2comp.exit721.epil.preheader

bary_2comp.exit721.epil.preheader:                ; preds = %bary_small_lshift.exit.unr-lcssa, %bary_2comp.exit721.preheader
  %.015.i.epil.init = phi i32 [ 0, %bary_2comp.exit721.preheader ], [ %i.ra, %bary_small_lshift.exit.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ab, %bary_2comp.exit721.preheader ], [ %i.qx, %bary_small_lshift.exit.unr-lcssa ]
  %lcmp.mod3347 = icmp ne i64 %xtraiter3345, 0
  call void @llvm.assume(i1 %lcmp.mod3347)
  br label %bary_2comp.exit721.epil

bary_2comp.exit721.epil:                          ; preds = %bary_2comp.exit721.epil, %bary_2comp.exit721.epil.preheader
  %.015.i.epil = phi i32 [ %i.rf, %bary_2comp.exit721.epil ], [ %.015.i.epil.init, %bary_2comp.exit721.epil.preheader ]
  %.01013.i.epil = phi ptr [ %i.rb, %bary_2comp.exit721.epil ], [ %.01013.i.epil.init, %bary_2comp.exit721.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bary_2comp.exit721.epil ], [ 0, %bary_2comp.exit721.epil.preheader ]
  %i.rb = getelementptr i8, ptr %.01013.i.epil, i64 4
  %i.rc = load i32, ptr %.01013.i.epil, align 4, !tbaa !44 ; 2 uses
  %i.rd = shl i32 %i.rc, 1
  %i.re = or disjoint i32 %i.rd, %.015.i.epil
  store i32 %i.re, ptr %.01013.i.epil, align 4, !tbaa !44
  %i.rf = lshr i32 %i.rc, 31
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3345
  br i1 %epil.iter.cmp.not, label %bary_small_lshift.exit, label %bary_2comp.exit721.epil, !llvm.loop !137

bary_small_lshift.exit:                           ; preds = %bary_2comp.exit721.epil, %bary_small_lshift.exit.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit759, label %.lr.ph.i.i730.preheader

.lr.ph.i.i730.preheader:                          ; preds = %bary_small_lshift.exit
  %xtraiter3350 = and i64 %i.g, 1
  %.off3585 = add i64 %5, -1
  %i.rg = icmp ult i64 %.off3585, 3
  br i1 %i.rg, label %.lr.ph.i.i730.epil.preheader, label %.lr.ph.i.i730.preheader.new

.lr.ph.i.i730.preheader.new:                      ; preds = %.lr.ph.i.i730.preheader
  %unroll_iter3355 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i730

.lr.ph.i.i730:                                    ; preds = %.lr.ph.i.i730, %.lr.ph.i.i730.preheader.new
  %.05779.i.i731 = phi i64 [ 0, %.lr.ph.i.i730.preheader.new ], [ %i.sc, %.lr.ph.i.i730 ] ; 4 uses
  %.05878.i.i732 = phi i64 [ 0, %.lr.ph.i.i730.preheader.new ], [ %i.sb, %.lr.ph.i.i730 ]
  %niter3356 = phi i64 [ 0, %.lr.ph.i.i730.preheader.new ], [ %niter3356.next.1, %.lr.ph.i.i730 ]
  %i.rh = getelementptr [4 x i8], ptr %2, i64 %.05779.i.i731
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !44
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr [4 x i8], ptr %i.ab, i64 %.05779.i.i731 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !44
  %i.rm = zext i32 %i.rl to i64
  %i.rn = add nuw nsw i64 %.05878.i.i732, %i.rj
  %i.ro = add nuw nsw i64 %i.rn, %i.rm            ; 2 uses
end_hunk_2
begin_hunk_3_@str2big_normal:bb.a
  br i1 %i.ad, label %._crit_edge, label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %.139 = phi i64 [ %i.as, %.lr.ph40 ], [ %.139.unr, %.lr.ph40.prol.loopexit ] ; 3 uses
  %.13038 = phi i64 [ %i.at, %.lr.ph40 ], [ %.13038.unr, %.lr.ph40.prol.loopexit ]
  %i.ae = getelementptr [4 x i8], ptr %.0.i, i64 %.139 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !44
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ag, %i.k
  %i.ai = add nsw i64 %i.ah, %.13038              ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !44
  %i.ak = lshr i64 %i.ai, 32
  %i.al = getelementptr [4 x i8], ptr %.0.i, i64 %.139
  %i.am = getelementptr i8, ptr %i.al, i64 4      ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, %i.k
  %i.aq = add nsw i64 %i.ap, %i.ak                ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add nuw i64 %.139, 2                    ; 2 uses
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !44
  %i.at = lshr i64 %i.aq, 32                      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.as, %.132
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph40, !llvm.loop !26

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
  br i1 %exitcond47.not, label %._crit_edge45, label %bb.d, !llvm.loop !27

._crit_edge45:                                    ; preds = %.loopexit, %.preheader
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @str2big_karatsuba(i32 noundef range(i32 0, 2) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !46
  %i.b = shl i64 %4, 1                            ; 3 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %4, 3
  %i.e = alloca i8, i64 %i.d, align 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.f, label %bb.d, label %rb_alloc_tmp_buffer2.exit, !prof !54

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
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.f, label %power_cache_get_power.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr [8 x i8], ptr @maxpow64_num, i64 %i.m
  %i.q = load i64, ptr %i.p, align 8, !tbaa !46
  %i.r = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.u = call fastcc i64 @bignew_1(i64 noundef %i.t, i64 noundef 2, i32 noundef 1), !inline_history !64 ; 5 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48
  %i.x = and i64 %i.w, 16384
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.v, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  store i64 %i.q, ptr %.0.i.i, align 4
  %i.ab = sext i32 %i.s to i64
  %i.ac = call i64 @rb_obj_hide(i64 noundef %i.u) #23, !inline_history !64 ; 0 uses
  store i64 %i.u, ptr %i.n, align 8, !tbaa !46
  %i.ad = getelementptr [520 x i8], ptr @base36_numdigits_cache, i64 %i.m
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !46
  call void @rb_vm_register_global_object(i64 noundef %i.u) #23, !inline_history !64
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
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !49
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !49  ; 2 uses
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
  br i1 %i.ax, label %bb.i, label %.preheader203, !llvm.loop !244

.preheader202:                                    ; preds = %.preheader203, %bb.ac
  %.0110223 = phi i32 [ %i.ix, %bb.ac ], [ 0, %.preheader203 ]
  %.0118222 = phi ptr [ %.0119221, %bb.ac ], [ %i.k, %.preheader203 ] ; 8 uses
  %.0119221 = phi ptr [ %.0118222, %bb.ac ], [ %i.j, %.preheader203 ] ; 6 uses
  %.0120220 = phi i64 [ %i.ay, %bb.ac ], [ 2, %.preheader203 ] ; 20 uses
  %.0121219 = phi i64 [ %i.iy, %bb.ac ], [ %.1.i, %.preheader203 ]
  %.0118222284 = ptrtoaddr ptr %.0118222 to i64   ; 2 uses
  %i.ay = shl i64 %.0120220, 1                    ; 13 uses
  %i.az = inttoptr i64 %.0121219 to ptr           ; 4 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 4 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  %i.bc = icmp sgt i64 %.0120220, 0
  %.not.i.i142 = icmp eq i64 %i.ay, 0
  %i.bd = shl i64 %.0120220, 3
  %i.be = mul i64 %.0120220, -2
  %i.bf = shl i64 %.0120220, 3
  %i.bg = mul i64 %.0120220, -2
  br label %bb.m

.preheader:                                       ; preds = %bb.ac, %.preheader203
  %.0119.lcssa = phi ptr [ %i.j, %.preheader203 ], [ %.0118222, %bb.ac ] ; 2 uses
  %.not224 = icmp eq i64 %4, 0
  br i1 %.not224, label %.critedge, label %.lr.ph226

bb.m:                                             ; preds = %.preheader202, %bary_add.exit
  %indvar = phi i64 [ 0, %.preheader202 ], [ %indvar.next, %bary_add.exit ] ; 5 uses
  %.2217 = phi i64 [ 0, %.preheader202 ], [ %i.iv, %bary_add.exit ] ; 11 uses
  %i.bh = mul i64 %i.bg, %indvar
  %i.bi = add i64 %4, %i.bh
  %umin318 = call i64 @llvm.umin.i64(i64 %.0120220, i64 %i.bi)
  %i.bj = mul i64 %i.bf, %indvar
  %i.bk = add i64 %i.bj, %.0118222284
  %i.bl = mul i64 %i.be, %indvar
  %i.bm = add i64 %4, %i.bl                       ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.0120220, i64 %i.bm)
  %umin = call i64 @llvm.umin.i64(i64 %.0120220, i64 %i.bm)
  %i.bn = mul i64 %i.bd, %indvar
  %i.bo = add i64 %i.bn, %.0118222284
  %i.bp = sub nuw i64 %4, %.2217                  ; 10 uses
  %.not136 = icmp ugt i64 %i.ay, %i.bp
  br i1 %.not136, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr [4 x i8], ptr %.0118222, i64 %.2217 ; 14 uses
  %i.br = load i64, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.bs = and i64 %i.br, 16384
  %.not.i139 = icmp eq i64 %i.bs, 0
  br i1 %.not.i139, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.bu = load i64, ptr %i.ba, align 8, !tbaa !49
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
  %.062.i.i263 = phi i64 [ %.0120220, %bb.q ], [ %i.ay, %BIGNUM_LEN.exit ]
  %.063.i.i261 = phi ptr [ %i.bx, %bb.q ], [ %i.bq, %BIGNUM_LEN.exit ] ; 3 uses
  %.064.i.i259 = phi i64 [ %i.ay, %bb.q ], [ %.0120220, %BIGNUM_LEN.exit ] ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %.2217 ; 2 uses
  br label %.lr.ph.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i, %bb.q
  %.062.i.i264 = phi i64 [ %.0120220, %bb.q ], [ %.062.i.i263, %.lr.ph.i.i ] ; 12 uses
  %.063.i.i262 = phi ptr [ %i.bx, %bb.q ], [ %.063.i.i261, %.lr.ph.i.i ] ; 9 uses
  %.064.i.i260 = phi i64 [ 0, %bb.q ], [ %.064.i.i259, %.lr.ph.i.i ] ; 3 uses
  %.058.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.cy, %.lr.ph.i.i ] ; 2 uses
  %.063.i.i262291 = ptrtoaddr ptr %.063.i.i262 to i64
  %i.cb = icmp ult i64 %.064.i.i260, %.062.i.i264
  br i1 %i.cb, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cz, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cy, %.lr.ph.i.i ]
  %i.cc = getelementptr [4 x i8], ptr %i.ca, i64 %.05779.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !44
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %.063.i.i261, i64 %.05779.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %.05878.i.i, %i.ce
  %i.cj = add nuw nsw i64 %i.ci, %i.ch            ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr [4 x i8], ptr %i.bq, i64 %.05779.i.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !44
  %i.cm = lshr i64 %i.cj, 32
  %i.cn = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %.063.i.i261, i64 %i.cn
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.cm, %i.cq
  %i.cv = add nuw nsw i64 %i.cu, %i.ct            ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = getelementptr [4 x i8], ptr %i.bq, i64 %i.cn
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !44
  %i.cy = lshr i64 %i.cv, 32                      ; 2 uses
  %i.cz = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cz, %.064.i.i259
  br i1 %exitcond.not.i.i.1, label %.preheader72.i.i, label %.lr.ph.i.i, !llvm.loop !3

.preheader70.i.i:                                 ; preds = %bb.s, %.preheader72.i.i
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i, %.preheader72.i.i ], [ %i.dl, %bb.s ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i260, %.preheader72.i.i ], [ %.062.i.i264, %bb.s ] ; 4 uses
  %i.da = icmp ult i64 %.1.lcssa.i.i, %i.ay
  br i1 %i.da, label %.lr.ph88.preheader.i.i, label %bary_add.exit

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.db = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.db, label %.loopexit71.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.dc = getelementptr [4 x i8], ptr %i.bq, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.dc, align 4, !tbaa !44
  %i.dd = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.dd, %i.ay
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.s
  %.182.i.i = phi i64 [ %i.dm, %bb.s ], [ %.064.i.i260, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.dl, %bb.s ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.de = icmp eq i64 %.15981.i.i, 0
  br i1 %i.de, label %.loopexit71.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph83.i.i
  %i.df = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.182.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !44
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = getelementptr [4 x i8], ptr %i.bq, i64 %.182.i.i
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !44
  %i.dl = lshr i64 %i.di, 32                      ; 2 uses
  %i.dm = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.dm, %.062.i.i264
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !4

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.r, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.dd, %bb.r ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
  %i.dn = icmp eq ptr %.063.i.i262, %i.bq
  %i.do = icmp eq i64 %.062.i.i264, %i.ay
  %or.cond.i.i = and i1 %i.dn, %i.do
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.dp = icmp ult i64 %.3.i.i, %.062.i.i264
  br i1 %i.dp, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.dq = sub nuw i64 %.062.i.i264, %.3.i.i       ; 3 uses
  %min.iters.check294 = icmp ult i64 %i.dq, 8
  %i.dr = sub i64 %.063.i.i262291, %i.bk
  %diff.check292 = icmp ugt i64 %i.dr, -32
  %or.cond305 = select i1 %min.iters.check294, i1 true, i1 %diff.check292
  br i1 %or.cond305, label %.lr.ph91.i.i.preheader309, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph91.i.i.preheader
  %n.vec296 = and i64 %i.dq, -8                   ; 3 uses
  %i.ds = add i64 %.3.i.i, %n.vec296
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next301, %vector.body297 ] ; 2 uses
  %i.dt = add nuw i64 %.3.i.i, %index298          ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.dt ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  %wide.load299 = load <4 x i32>, ptr %i.du, align 4, !tbaa !44
  %wide.load300 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !44
  %i.dw = getelementptr [4 x i8], ptr %i.bq, i64 %i.dt ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load299, ptr %i.dw, align 4, !tbaa !44
  store <4 x i32> %wide.load300, ptr %i.dx, align 4, !tbaa !44
  %index.next301 = add nuw i64 %index298, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.dy, label %middle.block302, label %vector.body297, !llvm.loop !245

middle.block302:                                  ; preds = %vector.body297
  %cmp.n303 = icmp eq i64 %i.dq, %n.vec296
  br i1 %cmp.n303, label %.preheader.i.i, label %.lr.ph91.i.i.preheader309

.lr.ph91.i.i.preheader309:                        ; preds = %.lr.ph91.i.i.preheader, %middle.block302
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.ds, %middle.block302 ] ; 4 uses
  %i.dz = sub i64 %.062.i.i264, %.490.i.i.ph
  %xtraiter = and i64 %i.dz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader309, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.ed, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader309 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader309 ]
  %i.ea = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.490.i.i.prol
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !44
  %i.ec = getelementptr [4 x i8], ptr %i.bq, i64 %.490.i.i.prol
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !44
  %i.ed = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !246

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader309
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader309 ], [ %i.ed, %.lr.ph91.i.i.prol ]
  %i.ee = sub i64 %.490.i.i.ph, %.062.i.i264
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block302, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i264, %middle.block302 ], [ %.062.i.i264, %.lr.ph91.i.i ], [ %.062.i.i264, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.eg = icmp ult i64 %.4.lcssa.i.i, %i.ay
  br i1 %i.eg, label %.lr.ph94.preheader.i.i, label %bary_add.exit

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.eh = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.bq, i64 %i.eh
  %i.ei = sub nuw i64 %i.ay, %.4.lcssa.i.i
  %i.ej = shl i64 %i.ei, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ej, i1 false), !tbaa !44
  br label %bary_add.exit

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.ez, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.490.i.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !44
  %i.em = getelementptr [4 x i8], ptr %i.bq, i64 %.490.i.i
  store i32 %i.el, ptr %i.em, align 4, !tbaa !44
  %i.en = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.eo = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !44
  %i.eq = getelementptr [4 x i8], ptr %i.bq, i64 %i.en
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !44
  %i.er = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.es = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !44
  %i.eu = getelementptr [4 x i8], ptr %i.bq, i64 %i.er
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !44
  %i.ev = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !44
  %i.ey = getelementptr [4 x i8], ptr %i.bq, i64 %i.ev
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !44
  %i.ez = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.ez, %.062.i.i264
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !247

bb.t:                                             ; preds = %bb.m
  %.not137 = icmp ugt i64 %.0120220, %i.bp
  br i1 %.not137, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr [4 x i8], ptr %.0118222, i64 %.2217 ; 13 uses
  %i.fb = load i64, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.fc = and i64 %i.fb, 16384
  %.not.i144 = icmp eq i64 %i.fc, 0
  br i1 %.not.i144, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fd = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.fe = load i64, ptr %i.ba, align 8, !tbaa !49
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
  %7 = add i64 %.0120220, %.2217
  %i.fj = sub i64 %4, %7
  call fastcc void @bary_mul(ptr noundef %i.fa, i64 noundef %i.bp, ptr noundef %.0.i145198, i64 noundef %.0.i148, ptr noundef %i.fi, i64 noundef %i.fj)
  %i.fk = icmp ugt i64 %i.bp, %.0120220
  br i1 %i.fk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %BIGNUM_LEN.exit149
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %BIGNUM_LEN.exit149
  %.064.i.i150 = phi i64 [ %.0120220, %bb.x ], [ %i.bp, %BIGNUM_LEN.exit149 ] ; 6 uses
  %.063.i.i151 = phi ptr [ %i.fa, %bb.x ], [ %i.fh, %BIGNUM_LEN.exit149 ] ; 12 uses
  %.062.i.i152 = phi i64 [ %i.bp, %bb.x ], [ %.0120220, %BIGNUM_LEN.exit149 ] ; 7 uses
  %i.fl = phi ptr [ %.0119221, %bb.x ], [ %.0118222, %BIGNUM_LEN.exit149 ]
  %.063.i.i151285 = ptrtoaddr ptr %.063.i.i151 to i64
  %.not.i.i154 = icmp eq i64 %.064.i.i150, 0
  br i1 %.not.i.i154, label %.preheader72.i.i159, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %bb.y
  %i.fm = getelementptr [4 x i8], ptr %i.fl, i64 %.2217 ; 3 uses
  %xtraiter319 = and i64 %.064.i.i150, 1
  %i.fn = icmp eq i64 %umin318, 1
  br i1 %i.fn, label %.lr.ph.i.i155.epil.preheader, label %.lr.ph.i.i155.preheader.new

.lr.ph.i.i155.preheader.new:                      ; preds = %.lr.ph.i.i155.preheader
  %unroll_iter = and i64 %.064.i.i150, -2
  br label %.lr.ph.i.i155

.preheader72.i.i159.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i155
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod320.not, label %.preheader72.i.i159, label %.lr.ph.i.i155.epil.preheader

.lr.ph.i.i155.epil.preheader:                     ; preds = %.preheader72.i.i159.loopexit.unr-lcssa, %.lr.ph.i.i155.preheader
  %.05779.i.i156.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.gx, %.preheader72.i.i159.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i157.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.gw, %.preheader72.i.i159.loopexit.unr-lcssa ]
  %lcmp.mod322 = trunc i64 %.064.i.i150 to i1
  call void @llvm.assume(i1 %lcmp.mod322)
  %i.fo = getelementptr [4 x i8], ptr %i.fm, i64 %.05779.i.i156.epil.init
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !44
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156.epil.init
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !44
  %i.ft = zext i32 %i.fs to i64
  %i.fu = add nuw nsw i64 %.05878.i.i157.epil.init, %i.fq
  %i.fv = add nuw nsw i64 %i.fu, %i.ft            ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = getelementptr [4 x i8], ptr %i.fa, i64 %.05779.i.i156.epil.init
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !44
  %i.fy = lshr i64 %i.fv, 32
  br label %.preheader72.i.i159

.preheader72.i.i159:                              ; preds = %.lr.ph.i.i155.epil.preheader, %.preheader72.i.i159.loopexit.unr-lcssa, %bb.y
  %.058.lcssa.i.i160 = phi i64 [ 0, %bb.y ], [ %i.gw, %.preheader72.i.i159.loopexit.unr-lcssa ], [ %i.fy, %.lr.ph.i.i155.epil.preheader ]
  %i.fz = icmp ult i64 %.064.i.i150, %.062.i.i152
  br i1 %i.fz, label %.lr.ph83.i.i180, label %bary_add.exit

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155, %.lr.ph.i.i155.preheader.new
  %.05779.i.i156 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.gx, %.lr.ph.i.i155 ] ; 5 uses
  %.05878.i.i157 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.gw, %.lr.ph.i.i155 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %niter.next.1, %.lr.ph.i.i155 ]
  %i.ga = getelementptr [4 x i8], ptr %i.fm, i64 %.05779.i.i156
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !44
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !44
  %i.gf = zext i32 %i.ge to i64
  %i.gg = add nuw nsw i64 %.05878.i.i157, %i.gc
  %i.gh = add nuw nsw i64 %i.gg, %i.gf            ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = getelementptr [4 x i8], ptr %i.fa, i64 %.05779.i.i156
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !44
  %i.gk = lshr i64 %i.gh, 32
  %i.gl = or disjoint i64 %.05779.i.i156, 1       ; 3 uses
  %i.gm = getelementptr [4 x i8], ptr %i.fm, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !44
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.gl
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !44
  %i.gr = zext i32 %i.gq to i64
  %i.gs = add nuw nsw i64 %i.gk, %i.go
  %i.gt = add nuw nsw i64 %i.gs, %i.gr            ; 2 uses
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = getelementptr [4 x i8], ptr %i.fa, i64 %i.gl
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !44
  %i.gw = lshr i64 %i.gt, 32                      ; 3 uses
  %i.gx = add nuw i64 %.05779.i.i156, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i159.loopexit.unr-lcssa, label %.lr.ph.i.i155, !llvm.loop !3

.lr.ph83.i.i180:                                  ; preds = %.preheader72.i.i159, %bb.z
  %indvar286 = phi i64 [ %indvar.next287, %bb.z ], [ 0, %.preheader72.i.i159 ] ; 2 uses
  %.182.i.i181 = phi i64 [ %i.hg, %bb.z ], [ %.064.i.i150, %.preheader72.i.i159 ] ; 7 uses
  %.15981.i.i182 = phi i64 [ %i.hf, %bb.z ], [ %.058.lcssa.i.i160, %.preheader72.i.i159 ]
  %i.gy = icmp eq i64 %.15981.i.i182, 0
  br i1 %i.gy, label %.loopexit71.i.i169, label %bb.z

bb.z:                                             ; preds = %.lr.ph83.i.i180
  %i.gz = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.182.i.i181
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !44
  %i.hb = zext i32 %i.ha to i64
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr [4 x i8], ptr %i.fa, i64 %.182.i.i181
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !44
  %i.hf = lshr i64 %i.hc, 32
  %i.hg = add i64 %.182.i.i181, 1                 ; 2 uses
  %exitcond102.not.i.i183 = icmp eq i64 %i.hg, %.062.i.i152
  %indvar.next287 = add i64 %indvar286, 1
  br i1 %exitcond102.not.i.i183, label %bary_add.exit, label %.lr.ph83.i.i180, !llvm.loop !4

.loopexit71.i.i169:                               ; preds = %.lr.ph83.i.i180
  %i.hh = icmp ne ptr %.063.i.i151, %i.fa
  %i.hi = icmp ne i64 %.062.i.i152, %i.bp
  %or.cond.i.i171.not275 = or i1 %i.hh, %i.hi
  %i.hj = icmp ult i64 %.182.i.i181, %.062.i.i152
  %or.cond = and i1 %or.cond.i.i171.not275, %i.hj
  br i1 %or.cond, label %.lr.ph91.i.i177.preheader, label %bary_add.exit

.lr.ph91.i.i177.preheader:                        ; preds = %.loopexit71.i.i169
  %i.hk = add i64 %umin, %indvar286
  %i.hl = sub i64 %umax, %i.hk                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hl, 8
  %i.hm = sub i64 %.063.i.i151285, %i.bo
  %diff.check = icmp ugt i64 %i.hm, -32
  %or.cond306 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond306, label %.lr.ph91.i.i177.preheader307, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i177.preheader
  %n.vec = and i64 %i.hl, -8                      ; 3 uses
  %i.hn = add i64 %.182.i.i181, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ho = add nuw i64 %.182.i.i181, %index        ; 2 uses
  %i.hp = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ho ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 16
  %wide.load = load <4 x i32>, ptr %i.hp, align 4, !tbaa !44
  %wide.load288 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !44
  %i.hr = getelementptr [4 x i8], ptr %i.fa, i64 %i.ho ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 16
  store <4 x i32> %wide.load, ptr %i.hr, align 4, !tbaa !44
  store <4 x i32> %wide.load288, ptr %i.hs, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hl, %n.vec
  br i1 %cmp.n, label %bary_add.exit, label %.lr.ph91.i.i177.preheader307

.lr.ph91.i.i177.preheader307:                     ; preds = %.lr.ph91.i.i177.preheader, %middle.block
  %.490.i.i178.ph = phi i64 [ %.182.i.i181, %.lr.ph91.i.i177.preheader ], [ %i.hn, %middle.block ] ; 4 uses
  %i.hu = sub i64 %.062.i.i152, %.490.i.i178.ph
  %xtraiter323 = and i64 %i.hu, 3                 ; 2 uses
  %lcmp.mod324.not = icmp eq i64 %xtraiter323, 0
  br i1 %lcmp.mod324.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol

.lr.ph91.i.i177.prol:                             ; preds = %.lr.ph91.i.i177.preheader307, %.lr.ph91.i.i177.prol
  %.490.i.i178.prol = phi i64 [ %i.hy, %.lr.ph91.i.i177.prol ], [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader307 ] ; 3 uses
  %prol.iter325 = phi i64 [ %prol.iter325.next, %.lr.ph91.i.i177.prol ], [ 0, %.lr.ph91.i.i177.preheader307 ]
  %i.hv = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178.prol
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !44
  %i.hx = getelementptr [4 x i8], ptr %i.fa, i64 %.490.i.i178.prol
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !44
  %i.hy = add nuw i64 %.490.i.i178.prol, 1        ; 2 uses
  %prol.iter325.next = add i64 %prol.iter325, 1   ; 2 uses
  %prol.iter325.cmp.not = icmp eq i64 %prol.iter325.next, %xtraiter323
  br i1 %prol.iter325.cmp.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol, !llvm.loop !249

.lr.ph91.i.i177.prol.loopexit:                    ; preds = %.lr.ph91.i.i177.prol, %.lr.ph91.i.i177.preheader307
  %.490.i.i178.unr = phi i64 [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader307 ], [ %i.hy, %.lr.ph91.i.i177.prol ]
  %i.hz = sub i64 %.490.i.i178.ph, %.062.i.i152
  %i.ia = icmp ugt i64 %i.hz, -4
  br i1 %i.ia, label %bary_add.exit, label %.lr.ph91.i.i177

.lr.ph91.i.i177:                                  ; preds = %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177
  %.490.i.i178 = phi i64 [ %i.iq, %.lr.ph91.i.i177 ], [ %.490.i.i178.unr, %.lr.ph91.i.i177.prol.loopexit ] ; 6 uses
  %i.ib = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !44
  %i.id = getelementptr [4 x i8], ptr %i.fa, i64 %.490.i.i178
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !44
  %i.ie = add nuw i64 %.490.i.i178, 1             ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !44
  %i.ih = getelementptr [4 x i8], ptr %i.fa, i64 %i.ie
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !44
  %i.ii = add nuw i64 %.490.i.i178, 2             ; 2 uses
  %i.ij = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !44
  %i.il = getelementptr [4 x i8], ptr %i.fa, i64 %i.ii
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !44
  %i.im = add nuw i64 %.490.i.i178, 3             ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !44
  %i.ip = getelementptr [4 x i8], ptr %i.fa, i64 %i.im
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !44
  %i.iq = add nuw i64 %.490.i.i178, 4             ; 2 uses
  %exitcond106.not.i.i179.3 = icmp eq i64 %i.iq, %.062.i.i152
  br i1 %exitcond106.not.i.i179.3, label %bary_add.exit, label %.lr.ph91.i.i177, !llvm.loop !250

end_hunk_3
begin_hunk_4_@big_shift3:bb.a
bb.j:                                             ; preds = %._crit_edge
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  br label %BIGNUM_DIGITS.exit58

bb.k:                                             ; preds = %._crit_edge
  %i.ae = getelementptr i8, ptr %i.f, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
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
  %i.ak = load i32, ptr %.01112.i, align 4, !tbaa !44
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, %i.ah            ; 2 uses
  %i.an = or i64 %i.am, %.015.i
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr i8, ptr %.01013.i, i64 4
  store i32 %i.ao, ptr %.01013.i, align 4, !tbaa !44
  %i.aq = lshr i64 %i.am, 32
  %i.ar = getelementptr i8, ptr %.01112.i, i64 8
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !44
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, %i.ah            ; 2 uses
  %i.av = or i64 %i.au, %i.aq
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %.01013.i, i64 8
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !44
  %i.ay = lshr i64 %i.au, 32
  %i.az = getelementptr i8, ptr %.01112.i, i64 12
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !44
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, %i.ah            ; 2 uses
  %i.bd = or i64 %i.bc, %i.ay
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr i8, ptr %.01013.i, i64 12
  store i32 %i.be, ptr %i.ax, align 4, !tbaa !44
  %i.bg = lshr i64 %i.bc, 32
  %i.bh = getelementptr i8, ptr %.01112.i, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.az, align 4, !tbaa !44
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, %i.ah            ; 2 uses
  %i.bl = or i64 %i.bk, %i.bg
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  store i32 %i.bm, ptr %i.bf, align 4, !tbaa !44
  %i.bo = lshr i64 %i.bk, 32                      ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.l, !llvm.loop !10

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bo, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.bn, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %.0.i57, %.lr.ph.i ], [ %i.bh, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod141 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod141)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.015.i.epil = phi i64 [ %.015.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.m ]
  %.01013.i.epil = phi ptr [ %.01013.i.epil.init, %.epil.preheader ], [ %i.bv, %bb.m ] ; 2 uses
  %.01112.i.epil = phi ptr [ %.01112.i.epil.init, %.epil.preheader ], [ %i.bp, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bp = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.bq = load i32, ptr %.01112.i.epil, align 4, !tbaa !44
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, %i.ah            ; 2 uses
  %i.bt = or i64 %i.bs, %.015.i.epil
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.bu, ptr %.01013.i.epil, align 4, !tbaa !44
  %i.bw = lshr i64 %i.bs, 32                      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.m, !llvm.loop !391

._crit_edge.loopexit.i:                           ; preds = %bb.m, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa139 = phi i64 [ %i.bo, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bw, %bb.m ]
  %i.bx = trunc nuw nsw i64 %.lcssa139 to i32
  br label %bary_small_lshift.exit

bary_small_lshift.exit:                           ; preds = %BIGNUM_DIGITS.exit58, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %BIGNUM_DIGITS.exit58 ], [ %i.bx, %._crit_edge.loopexit.i ]
  %i.by = getelementptr [4 x i8], ptr %.0.i55, i64 %.0.i
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %2
  store i32 %.0.lcssa.i, ptr %i.bz, align 4, !tbaa !44
  br label %bary_zero_p.exit.thread87

bb.n:                                             ; preds = %bb.a
  %.pre = inttoptr i64 %0 to ptr                  ; 6 uses
  br i1 %i.d, label %._crit_edge105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %.pre, align 8, !tbaa !48 ; 2 uses
  %i.cb = and i64 %i.ca, 16384
  %.not.i60 = icmp eq i64 %i.cb, 0
  br i1 %.not.i60, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr i8, ptr %.pre, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !49
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
  %i.cg = load i64, ptr %.pre, align 8, !tbaa !48 ; 3 uses
  %i.ch = and i64 %i.cg, 8192
  %.not92 = icmp eq i64 %i.ch, 0
  br i1 %.not92, label %bb.r, label %bary_zero_p.exit

bb.r:                                             ; preds = %._crit_edge105
  %i.ci = and i64 %i.cg, 16384
  %.not.i63 = icmp eq i64 %i.ci, 0
  br i1 %.not.i63, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr i8, ptr %.pre, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !49
  %i.cl = getelementptr i8, ptr %.pre, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !49
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
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !44
  %.not.i70 = icmp eq i32 %i.ct, 0
  br i1 %.not.i70, label %bb.u, label %bary_zero_p.exit

bb.u:                                             ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.cr, 0
  br i1 %.not7.i, label %bary_zero_p.exit, label %.preheader.i, !llvm.loop !14

bb.v:                                             ; preds = %BIGNUM_LEN.exit62
  %i.cu = call fastcc i32 @abs2twocomp(ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !46
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !48
  %i.cy = and i64 %i.cx, 16384
  %.not.i71 = icmp eq i64 %i.cy, 0
  br i1 %.not.i71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %i.cw, i64 16
  br label %BIGNUM_DIGITS.exit73

bb.x:                                             ; preds = %bb.v
  %i.da = getelementptr i8, ptr %i.cw, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit73

BIGNUM_DIGITS.exit73:                             ; preds = %bb.w, %bb.x
  %.0.i72 = phi ptr [ %i.cz, %bb.w ], [ %i.db, %bb.x ] ; 2 uses
  %.0.i72120 = ptrtoaddr ptr %.0.i72 to i64
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !46  ; 4 uses
  %.not50 = icmp sgt i64 %i.dc, %2
  br i1 %.not50, label %bb.z, label %bb.y

bb.y:                                             ; preds = %BIGNUM_DIGITS.exit73
  %.not51 = icmp eq i32 %i.cu, 0
  %i.dd = select i1 %.not51, i64 1, i64 -1
  br label %bary_zero_p.exit

bb.z:                                             ; preds = %BIGNUM_DIGITS.exit73
  %i.de = sub nuw nsw i64 %i.dc, %2               ; 9 uses
  %i.df = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.dg = tail call fastcc i64 @bignew_1(i64 noundef %i.df, i64 noundef %i.de, i32 noundef 0) ; 7 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 12 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !48 ; 4 uses
  %i.dj = and i64 %i.di, 16384
  %.not.i74 = icmp eq i64 %i.dj, 0                ; 3 uses
  br i1 %.not.i74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr i8, ptr %i.dh, i64 16
  br label %BIGNUM_DIGITS.exit76

bb.ab:                                            ; preds = %bb.z
  %i.dl = getelementptr i8, ptr %i.dh, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !49
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
  %wide.load = load <4 x i32>, ptr %i.dw, align 4, !tbaa !44
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dx = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.dy = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.dx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dz = shl nuw <4 x i64> %i.dy, splat (i64 32)
  %i.ea = or disjoint <4 x i64> %i.dz, %i.dx
  %i.eb = lshr <4 x i64> %i.ea, %broadcast.splat
  %i.ec = trunc <4 x i64> %i.eb to <4 x i32>
  %i.ed = getelementptr [4 x i8], ptr %.0.i75, i64 %i.du
  %i.ee = getelementptr i8, ptr %i.ed, i64 -12
  %reverse122 = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %i.ee, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !392

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.dx, i64 3
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %bary_small_rshift.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %BIGNUM_DIGITS.exit76, %middle.block
  %.017.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %BIGNUM_DIGITS.exit76 ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.ph = phi i64 [ %i.do, %vector.memcheck ], [ %i.do, %BIGNUM_DIGITS.exit76 ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %4 = sub i64 %i.dc, %2
  %i.eg = xor i64 %.017.i.ph, -1
  %i.eh = add i64 %i.dc, %i.eg
  %xtraiter142 = and i64 %4, 1
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.prol = shl nuw i64 %.014.in16.i.ph, 32
  %i.ei = xor i64 %.017.i.ph, -1
  %i.ej = add i64 %i.de, %i.ei                    ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %i.dn, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !44
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = or disjoint i64 %.014.i.prol, %i.em
  %i.eo = lshr i64 %i.en, %i.dp
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = getelementptr [4 x i8], ptr %.0.i75, i64 %i.ej
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !44
  %i.er = or disjoint i64 %.017.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %scalar.ph.preheader ], [ %i.er, %scalar.ph.prol ]
  %.014.in16.i.unr = phi i64 [ %.014.in16.i.ph, %scalar.ph.preheader ], [ %i.em, %scalar.ph.prol ]
  %i.es = icmp eq i64 %i.eh, %2
  br i1 %i.es, label %bary_small_rshift.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.fk, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.ff, %scalar.ph ], [ %.014.in16.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.et = xor i64 %.017.i, -1
  %i.eu = add i64 %i.de, %i.et                    ; 2 uses
  %i.ev = getelementptr [4 x i8], ptr %i.dn, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !44
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %i.ey = or disjoint i64 %.014.i, %i.ex
  %i.ez = lshr i64 %i.ey, %i.dp
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = getelementptr [4 x i8], ptr %.0.i75, i64 %i.eu
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !44
  %.014.i.1 = shl nuw i64 %i.ex, 32
  %reass.sub = sub i64 %i.de, %.017.i
  %i.fc = add i64 %reass.sub, -2                  ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %i.dn, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !44
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = or disjoint i64 %.014.i.1, %i.ff
  %i.fh = lshr i64 %i.fg, %i.dp
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = getelementptr [4 x i8], ptr %.0.i75, i64 %i.fc
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !44
  %i.fk = add nuw i64 %.017.i, 2                  ; 2 uses
  %exitcond.not.i79.1 = icmp eq i64 %i.fk, %i.de
  br i1 %exitcond.not.i79.1, label %bary_small_rshift.exit, label %scalar.ph, !llvm.loop !393

bary_small_rshift.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fl = and i64 %i.di, -8193
  %masksel.i.i = select i1 %.not91, i64 8192, i64 0
  %.sink.i.i = or disjoint i64 %i.fl, %masksel.i.i
  store i64 %.sink.i.i, ptr %i.dh, align 8, !tbaa !48
  br i1 %.not91, label %bary_zero_p.exit.thread87, label %bb.ac

bb.ac:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not.i74, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fm = lshr i64 %i.di, 15
  %i.fn = and i64 %i.fm, 511
  %i.fo = getelementptr i8, ptr %i.dh, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.fp = getelementptr i8, ptr %i.dh, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !49
  %i.fr = getelementptr i8, ptr %i.dh, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.ae, %bb.ad
  %.0.i8.i.i = phi i64 [ %i.fn, %bb.ad ], [ %i.fq, %bb.ae ] ; 5 uses
  %.0.i5.i.i = phi ptr [ %i.fo, %bb.ad ], [ %i.fs, %bb.ae ] ; 4 uses
  %.not27.i.i.i = icmp eq i64 %.0.i8.i.i, 0
  br i1 %.not27.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.af
  %.023.i.i.i = phi i64 [ %i.fv, %bb.af ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.ft = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !44 ; 2 uses
  %.not.i6.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not.i6.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.fv = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fv, %.0.i8.i.i
  br i1 %exitcond.not.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

bb.ag:                                            ; preds = %.lr.ph.i.i.i
  %i.fw = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.fx = sub i32 0, %i.fu
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !44
  %.124.i.i.i = add i64 %.023.i.i.i, 1            ; 4 uses
  %i.fy = icmp ult i64 %.124.i.i.i, %.0.i8.i.i
  br i1 %i.fy, label %.lr.ph26.i.i.i.preheader, label %bary_zero_p.exit.thread87

.lr.ph26.i.i.i.preheader:                         ; preds = %bb.ag
  %i.fz = xor i64 %.023.i.i.i, -1
  %i.ga = add i64 %.0.i8.i.i, %i.fz               ; 3 uses
  %min.iters.check124 = icmp ult i64 %i.ga, 8
  br i1 %min.iters.check124, label %.lr.ph26.i.i.i.preheader135, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph26.i.i.i.preheader
  %n.vec126 = and i64 %i.ga, -8                   ; 3 uses
  %i.gb = add i64 %.124.i.i.i, %n.vec126
  %i.gc = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.124.i.i.i
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next131, %vector.body127 ] ; 2 uses
  %i.gd = getelementptr [4 x i8], ptr %i.gc, i64 %index128 ; 3 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 16     ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !44
  %wide.load130 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !44
  %i.gf = xor <4 x i32> %wide.load129, splat (i32 -1)
  %i.gg = xor <4 x i32> %wide.load130, splat (i32 -1)
  store <4 x i32> %i.gf, ptr %i.gd, align 4, !tbaa !44
  store <4 x i32> %i.gg, ptr %i.ge, align 4, !tbaa !44
  %index.next131 = add nuw i64 %index128, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.gh, label %middle.block132, label %vector.body127, !llvm.loop !394

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %i.ga, %n.vec126
  br i1 %cmp.n133, label %bary_zero_p.exit.thread87, label %.lr.ph26.i.i.i.preheader135

.lr.ph26.i.i.i.preheader135:                      ; preds = %.lr.ph26.i.i.i.preheader, %middle.block132
  %.125.i.i.i.ph = phi i64 [ %.124.i.i.i, %.lr.ph26.i.i.i.preheader ], [ %i.gb, %middle.block132 ]
  br label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %.lr.ph26.i.i.i.preheader135, %.lr.ph26.i.i.i
  %.125.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph26.i.i.i ], [ %.125.i.i.i.ph, %.lr.ph26.i.i.i.preheader135 ] ; 2 uses
  %i.gi = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.125.i.i.i ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !44
  %i.gk = xor i32 %i.gj, -1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !44
  %.1.i.i.i = add nuw i64 %.125.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %.1.i.i.i, %.0.i8.i.i
  br i1 %exitcond31.not.i.i.i, label %bary_zero_p.exit.thread87, label %.lr.ph26.i.i.i, !llvm.loop !395

bary_2comp.exit.i.i:                              ; preds = %bb.af, %BIGNUM_DIGITS.exit.i.i
  br i1 %.not.i74, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bary_2comp.exit.i.i
  %i.gl = getelementptr i8, ptr %i.dh, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit.i.i.i

bb.ai:                                            ; preds = %bary_2comp.exit.i.i
  %i.gn = lshr i64 %i.di, 15
  %i.go = and i64 %i.gn, 511
  br label %BIGNUM_LEN.exit.i.i.i

BIGNUM_LEN.exit.i.i.i:                            ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi i64 [ %i.go, %bb.ai ], [ %i.gm, %bb.ah ]
  %i.gp = add i64 %.0.i.i.i.i, 1
  tail call void @rb_big_resize(i64 noundef %i.dg, i64 noundef %i.gp)
  %i.gq = load i64, ptr %i.dh, align 8, !tbaa !48 ; 2 uses
  %i.gr = and i64 %i.gq, 16384
  %.not.i4.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i4.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %BIGNUM_LEN.exit.i.i.i
  %i.gs = getelementptr i8, ptr %i.dh, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !49
  %i.gu = getelementptr i8, ptr %i.dh, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !49
  br label %big_extend_carry.exit.i.i

bb.ak:                                            ; preds = %BIGNUM_LEN.exit.i.i.i
  %i.gw = getelementptr i8, ptr %i.dh, i64 16
  %i.gx = lshr i64 %i.gq, 15
  %i.gy = and i64 %i.gx, 511
  br label %big_extend_carry.exit.i.i

big_extend_carry.exit.i.i:                        ; preds = %bb.ak, %bb.aj
  %.0.i510.i.i.i = phi ptr [ %i.gw, %bb.ak ], [ %i.gt, %bb.aj ]
  %.0.i7.i.i.i = phi i64 [ %i.gy, %bb.ak ], [ %i.gv, %bb.aj ]
  %i.gz = getelementptr [4 x i8], ptr %.0.i510.i.i.i, i64 %.0.i7.i.i.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 -4
  store i32 1, ptr %i.ha, align 4, !tbaa !44
  br label %bary_zero_p.exit.thread87

bary_zero_p.exit.thread87:                        ; preds = %.lr.ph26.i.i.i, %middle.block132, %big_extend_carry.exit.i.i, %bb.ag, %bary_small_rshift.exit, %bary_small_lshift.exit
  %.144 = phi i64 [ %i.t, %bary_small_lshift.exit ], [ %i.dg, %bary_small_rshift.exit ], [ %i.dg, %bb.ag ], [ %i.dg, %big_extend_carry.exit.i.i ], [ %i.dg, %middle.block132 ], [ %i.dg, %.lr.ph26.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !396
  %i.hb = load ptr, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.hc = load volatile i64, ptr %i.hb, align 8, !tbaa !46 ; 0 uses
  br label %bary_zero_p.exit

bary_zero_p.exit:                                 ; preds = %bb.u, %.preheader.i, %BIGNUM_LEN.exit68, %bb.y, %._crit_edge105, %bary_zero_p.exit.thread87
end_hunk_4
begin_hunk_5_@bary_mul_karatsuba_branch:bb.a
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
  %i.ci = load i32, ptr %2, align 4, !tbaa !44
  %i.cj = load i32, ptr %4, align 4, !tbaa !44
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cn, i8 0, i64 %i.cp, i1 false), !tbaa !44
  br label %bary_short_mul.exit78

bb.n:                                             ; preds = %bb.l
  %.not17.i.i52 = icmp eq i64 %1, 0
  br i1 %.not17.i.i52, label %.preheader.i.i54, label %.lr.ph.preheader.i12.i53

.lr.ph.preheader.i12.i53:                         ; preds = %bb.n
  %i.cq = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cq, i1 false), !tbaa !44
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
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !44 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph.i.preheader.i.i60

.lr.ph.i.preheader.i.i60:                         ; preds = %.lr.ph21.split.i.i58
  %i.cx = zext i32 %i.cv to i64                   ; 3 uses
  br i1 %i.cr, label %.lr.ph.i.i.i61.epil.preheader, label %.lr.ph.i.i.i61

.preheader.i.i.i67.unr-lcssa:                     ; preds = %bb.r
  br i1 %lcmp.mod110.not, label %.preheader.i.i.i67, label %.lr.ph.i.i.i61.epil.preheader

.lr.ph.i.i.i61.epil.preheader:                    ; preds = %.preheader.i.i.i67.unr-lcssa, %.lr.ph.i.preheader.i.i60
  %.036.i.i.i62.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i60 ], [ %i.ei, %.preheader.i.i.i67.unr-lcssa ] ; 2 uses
  %.03035.i.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i60 ], [ %.131.i.i.i65.1, %.preheader.i.i.i67.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.cy = getelementptr [4 x i8], ptr %4, i64 %.036.i.i.i62.epil.init
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !44
  %i.da = zext i32 %i.cz to i64
  %i.db = mul nuw i64 %i.da, %i.cx
  %i.dc = add nuw i64 %i.db, %.03035.i.i.i63.epil.init ; 2 uses
  %.not.i.i.i64.epil = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i64.epil, label %.preheader.i.i.i67, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i61.epil.preheader
  %i.dd = getelementptr [4 x i8], ptr %i.cs, i64 %.036.i.i.i62.epil.init ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !44
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw i64 %i.dc, %i.df                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !44
  %i.di = lshr i64 %i.dg, 32
  br label %.preheader.i.i.i67

.preheader.i.i.i67:                               ; preds = %.lr.ph.i.i.i61.epil.preheader, %bb.o, %.preheader.i.i.i67.unr-lcssa
  %.131.i.i.i65.lcssa = phi i64 [ %.131.i.i.i65.1, %.preheader.i.i.i67.unr-lcssa ], [ %i.di, %bb.o ], [ 0, %.lr.ph.i.i.i61.epil.preheader ] ; 2 uses
  %i.dj = icmp uge i64 %5, %i.ct
  %i.dk = icmp eq i64 %.131.i.i.i65.lcssa, 0
  %or.cond38.i.i.i68 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond38.i.i.i68, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph41.i.i.i69

.lr.ph.i.i.i61:                                   ; preds = %.lr.ph.i.preheader.i.i60, %bb.r
  %.036.i.i.i62 = phi i64 [ %i.ei, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ] ; 4 uses
  %.03035.i.i.i63 = phi i64 [ %.131.i.i.i65.1, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ]
  %niter114 = phi i64 [ %niter114.next.1, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ]
  %i.dl = getelementptr [4 x i8], ptr %4, i64 %.036.i.i.i62
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !44
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.cx
  %i.dp = add nuw i64 %i.do, %.03035.i.i.i63      ; 2 uses
  %.not.i.i.i64 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i64, label %.lr.ph.i.i.i61.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i61
  %i.dq = getelementptr [4 x i8], ptr %i.cs, i64 %.036.i.i.i62 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !44
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw i64 %i.dp, %i.ds                ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  store i32 %i.du, ptr %i.dq, align 4, !tbaa !44
  %i.dv = lshr i64 %i.dt, 32
  br label %.lr.ph.i.i.i61.1

.lr.ph.i.i.i61.1:                                 ; preds = %bb.p, %.lr.ph.i.i.i61
  %.131.i.i.i65 = phi i64 [ %i.dv, %bb.p ], [ 0, %.lr.ph.i.i.i61 ]
  %i.dw = or disjoint i64 %.036.i.i.i62, 1        ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %4, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !44
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw i64 %i.dz, %i.cx
  %i.eb = add nuw i64 %i.ea, %.131.i.i.i65        ; 2 uses
  %.not.i.i.i64.1 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i64.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i61.1
  %i.ec = getelementptr [4 x i8], ptr %i.cs, i64 %i.dw ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !44
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw i64 %i.eb, %i.ee                ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !44
  %i.eh = lshr i64 %i.ef, 32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.i61.1
  %.131.i.i.i65.1 = phi i64 [ %i.eh, %bb.q ], [ 0, %.lr.ph.i.i.i61.1 ] ; 3 uses
  %i.ei = add nuw i64 %.036.i.i.i62, 2            ; 2 uses
  %niter114.next.1 = add nuw i64 %niter114, 2     ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %.preheader.i.i.i67.unr-lcssa, label %.lr.ph.i.i.i61, !llvm.loop !0

.lr.ph41.i.i.i69:                                 ; preds = %.preheader.i.i.i67, %.lr.ph41.i.i.i69
  %.140.i.i.i70 = phi i64 [ %i.ep, %.lr.ph41.i.i.i69 ], [ %5, %.preheader.i.i.i67 ] ; 2 uses
  %.239.i.i.i71 = phi i64 [ %i.eo, %.lr.ph41.i.i.i69 ], [ %.131.i.i.i65.lcssa, %.preheader.i.i.i67 ]
  %i.ej = getelementptr [4 x i8], ptr %i.cs, i64 %.140.i.i.i70 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %.239.i.i.i71, %i.el    ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !44
  %i.eo = lshr i64 %i.em, 32                      ; 2 uses
  %i.ep = add nuw i64 %.140.i.i.i70, 1            ; 2 uses
  %i.eq = icmp uge i64 %i.ep, %i.ct
  %i.er = icmp eq i64 %i.eo, 0
  %or.cond.i.i.i72 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond.i.i.i72, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph41.i.i.i69, !llvm.loop !1

bary_muladd_1xN.exit.i.i73:                       ; preds = %.lr.ph41.i.i.i69, %.preheader.i.i.i67, %.lr.ph21.split.i.i58
  %i.es = add nuw i64 %.01620.i.i59, 1            ; 2 uses
  %exitcond.not.i.i74 = icmp eq i64 %i.es, %3
  br i1 %exitcond.not.i.i74, label %bary_mul_normal.exit.i75, label %.lr.ph21.split.i.i58, !llvm.loop !2

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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = add i64 %.0, 1                           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !422

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %i.c, %3
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr %0, i64 %3   ; 7 uses
  %i.f = getelementptr [4 x i8], ptr %0, i64 %.0  ; 9 uses
  %i.g = sub i64 %1, %3                           ; 14 uses
  %i.h = getelementptr [4 x i8], ptr %0, i64 %1
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44   ; 3 uses
  %i.k = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.l = icmp samesign ult i32 %i.k, 2
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %i.b, -1
  %i.n = load i32, ptr %i.f, align 4, !tbaa !44
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
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !44
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
  store <4 x i32> %reverse40, ptr %i.ah, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !423

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.aa, i64 3
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %bigdivrem_single1.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %5 = sub i64 %1, %3
  %i.aj = xor i64 %.017.i.i.ph, -1
  %i.ak = add i64 %1, %i.aj
  %xtraiter46 = and i64 %5, 1
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.prol = shl nuw i64 %.014.in16.i.i.ph, 32
  %i.al = xor i64 %.017.i.i.ph, -1
  %i.am = add i64 %i.g, %i.al                     ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.f, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !44
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = or disjoint i64 %.014.i.i.prol, %i.ap
  %i.ar = lshr i64 %i.aq, %i.s
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr [4 x i8], ptr %i.e, i64 %i.am
  store i32 %i.as, ptr %i.at, align 4, !tbaa !44
  %i.au = or disjoint i64 %.017.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.i.unr = phi i64 [ %.017.i.i.ph, %scalar.ph.preheader ], [ %i.au, %scalar.ph.prol ]
  %.014.in16.i.i.unr = phi i64 [ %.014.in16.i.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.av = icmp eq i64 %i.ak, %3
  br i1 %i.av, label %bigdivrem_single1.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i.i = phi i64 [ %i.bn, %scalar.ph ], [ %.017.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i.i = phi i64 [ %i.bi, %scalar.ph ], [ %.014.in16.i.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i.i = shl nuw i64 %.014.in16.i.i, 32
  %i.aw = xor i64 %.017.i.i, -1
  %i.ax = add i64 %i.g, %i.aw                     ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !44
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = or disjoint i64 %.014.i.i, %i.ba
  %i.bc = lshr i64 %i.bb, %i.s
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr [4 x i8], ptr %i.e, i64 %i.ax
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !44
  %.014.i.i.1 = shl nuw i64 %i.ba, 32
  %reass.sub = sub i64 %i.g, %.017.i.i
  %i.bf = add i64 %reass.sub, -2                  ; 2 uses
  %i.bg = getelementptr [4 x i8], ptr %i.f, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !44
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = or disjoint i64 %.014.i.i.1, %i.bi
  %i.bk = lshr i64 %i.bj, %i.s
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr [4 x i8], ptr %i.e, i64 %i.bf
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !44
  %i.bn = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bn, %i.g
  br i1 %exitcond.not.i.i.1, label %bigdivrem_single1.exit, label %scalar.ph, !llvm.loop !424

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, %3
  br i1 %.not.i, label %bigdivrem_single1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bo = zext i32 %i.j to i64                    ; 2 uses
  %i.bp = zext i32 %i.b to i64                    ; 6 uses
  %.neg = add i64 %3, 1
  %xtraiter = and i64 %i.g, 1
  %i.bq = icmp eq i64 %1, %.neg
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.g, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.030.i = phi i64 [ %i.bo, %.lr.ph.i.new ], [ %i.cm, %bb.g ]
  %.02629.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.cn, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.br = shl nuw i64 %.030.i, 32
  %i.bs = xor i64 %.02629.i, -1
  %i.bt = add i64 %i.g, %i.bs                     ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.f, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.br, %i.bw            ; 2 uses
  %i.by = udiv i64 %i.bx, %i.bp
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr [4 x i8], ptr %i.e, i64 %i.bt
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !44
  %i.cb = urem i64 %i.bx, %i.bp
  %i.cc = shl nuw i64 %i.cb, 32
  %i.cd = xor i64 %.02629.i, -2
  %i.ce = add i64 %i.g, %i.cd                     ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.f, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44
  %i.ch = zext i32 %i.cg to i64
  %i.ci = or disjoint i64 %i.cc, %i.ch            ; 2 uses
  %i.cj = udiv i64 %i.ci, %i.bp
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr [4 x i8], ptr %i.e, i64 %i.ce
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !44
  %i.cm = urem i64 %i.ci, %i.bp                   ; 3 uses
  %i.cn = add nuw i64 %.02629.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.g, !llvm.loop !11

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.030.i.epil.init = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.cm, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02629.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.cn, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod45 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.co = shl nuw i64 %.030.i.epil.init, 32
  %i.cp = xor i64 %.02629.i.epil.init, -1
  %i.cq = add i64 %i.g, %i.cp                     ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.f, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44
  %i.ct = zext i32 %i.cs to i64
  %i.cu = or disjoint i64 %i.co, %i.ct            ; 2 uses
  %i.cv = udiv i64 %i.cu, %i.bp
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = getelementptr [4 x i8], ptr %i.e, i64 %i.cq
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !44
  %i.cy = urem i64 %i.cu, %i.bp
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa41 = phi i64 [ %i.cm, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.cy, %.epil.preheader ]
  %i.cz = trunc nuw i64 %.lcssa41 to i32
  br label %bigdivrem_single1.exit

bigdivrem_single1.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.f, %._crit_edge.loopexit.i
  %.027.i = phi i32 [ %i.cz, %._crit_edge.loopexit.i ], [ %i.o, %bb.e ], [ %i.j, %bb.f ], [ %i.o, %middle.block ], [ %i.o, %scalar.ph ], [ %i.o, %scalar.ph.prol.loopexit ]
  store i32 %.027.i, ptr %i.f, align 4, !tbaa !44
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.da = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.db = sub i64 %3, %.0                         ; 2 uses
  store i64 %i.db, ptr %4, align 8, !tbaa !80
  %i.dc = getelementptr [4 x i8], ptr %0, i64 %.0
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !81
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.da, ptr %i.de, align 8, !tbaa !82
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store volatile i64 0, ptr %i.df, align 8, !tbaa !83
  %i.dg = sub i64 %1, %.0                         ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !84
  %i.di = icmp ugt i64 %i.dg, 10000
  %i.dj = icmp ugt i64 %i.db, 10000
  %or.cond = or i1 %i.di, %i.dj
  br i1 %or.cond, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  store volatile i64 0, ptr %i.df, align 8, !tbaa !83
  %i.dk = call ptr @rb_nogvl(ptr noundef nonnull @bigdivrem1, ptr noundef nonnull %4, ptr noundef nonnull @rb_big_stop, ptr noundef nonnull %4, i32 noundef 6) #23 ; 0 uses
  %i.dl = load volatile i64, ptr %i.df, align 8, !tbaa !83
  %i.dm = icmp eq i64 %i.dl, 20
  br i1 %i.dm, label %.preheader, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.dn = call ptr @bigdivrem1(ptr noundef nonnull %4) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.i, %bigdivrem_single1.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

declare ptr @rb_nogvl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noalias noundef ptr @bigdivrem1(ptr nofree noundef captures(address) %0) #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !80
  %.fr = freeze i64 %i.a                          ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81   ; 4 uses
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
end_hunk_5
