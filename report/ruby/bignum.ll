inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@rb_big_modulo:bb.a
  %i.d = icmp sgt i64 %i.c, -1
  %.07.i = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true) ; 4 uses
  %i.e = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.f = tail call fastcc i64 @bignew_1(i64 noundef %i.e, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = and i64 %i.h, 16384
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %.07.i, ptr %i.j, align 8
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %i.k = and i64 %i.h, -16744449
  %i.l = or disjoint i64 %i.k, %.us-phi.i.i
  store i64 %i.l, ptr %i.g, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  store i64 %.07.i, ptr %i.n, align 4
  %.not1824.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi25.i.i = select i1 %.not1824.i.i, i64 1, i64 2
  %i.o = getelementptr i8, ptr %i.g, i64 16
  store i64 %.us-phi25.i.i, ptr %i.o, align 8, !tbaa !15
  br label %rb_uint2big.exit.i

rb_uint2big.exit.i:                               ; preds = %bb.d, %bb.c
  br i1 %i.d, label %rb_int2big.exit, label %bb.e

bb.e:                                             ; preds = %rb_uint2big.exit.i
  %i.p = load i64, ptr %i.g, align 8, !tbaa !13
  %i.q = and i64 %i.p, -8193
  store i64 %i.q, ptr %i.g, align 8, !tbaa !13
  br label %rb_int2big.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %1, 0
  %i.s = and i64 %1, 6
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.v = inttoptr i64 %1 to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13
  %i.x = and i64 %i.w, 31
  %i.y = icmp eq i64 %i.x, 10
  br i1 %i.y, label %rb_int2big.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.z = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef 37) #23
  br label %bignorm.exit

rb_int2big.exit:                                  ; preds = %bb.e, %rb_uint2big.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.f, %rb_uint2big.exit.i ], [ %i.f, %bb.e ]
  call fastcc void @bigdivmod(i64 noundef %0, i64 noundef %.0, ptr noundef null, ptr noundef nonnull %i.a)
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !11  ; 7 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = and i64 %i.aa, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_int2big.exit
  %i.af = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13 ; 4 uses
  %i.ah = and i64 %i.ag, 31
  %i.ai = icmp eq i64 %i.ah, 10
  br i1 %i.ai, label %bb.g, label %bignorm.exit

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aj = and i64 %i.ag, 16384
  %.not.i.i.i10 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr i64 %i.ag, 15
  %i.al = and i64 %i.ak, 511
  %i.am = getelementptr i8, ptr %i.af, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.af, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr i8, ptr %i.af, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.i, %bb.h
  %.0.i28.i.i = phi i64 [ %i.al, %bb.h ], [ %i.ao, %bb.i ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.am, %bb.h ], [ %i.aq, %bb.i ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.j
  %indvar = phi i32 [ %indvar.next, %bb.j ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.av, %bb.j ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.ar = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.av = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.av, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aw = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.aw, label %bb.o, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ax = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.ay = trunc i64 %.0.i28.i.i to i32
  %i.az = sub i32 %indvar, %i.ay
  %i.ba = icmp ugt i32 %i.az, -4
  br i1 %i.ba, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.bb, %.lr.ph36.i.i ], [ %i.ax, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.bb = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.bc = add i32 %.035.i.i, -3
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw i64 %i.bg, 32
  %i.bi = sext i32 %i.bb to i64
  %i.bj = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = zext i32 %i.bk to i64
  %i.bm = or disjoint i64 %i.bh, %i.bl
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.ax, %.lr.ph36.preheader.i.i ], [ %i.bb, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.bm, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.bn, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.bt, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.bn = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.bo = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = zext i32 %i.br to i64
  %i.bt = or disjoint i64 %i.bo, %i.bs            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.ax
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !309

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.bu = icmp ult i64 %i.bo, 4611686018427387904
  %i.bv = and i64 %i.ag, 8192
  %.not.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.bu, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bw = shl nuw nsw i64 %i.bt, 1
  %i.bx = or disjoint i64 %i.bw, 1
  br label %bignorm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.by = icmp ult i64 %i.bt, 4611686018427387905
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.neg.i.i = mul nsw i64 %i.bt, -2
  %i.bz = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.o:                                             ; preds = %bb.m, %bb.k, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.aa, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.j, %bb.o, %bb.n, %bb.l, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_int2big.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.08 = phi i64 [ %i.z, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.aa, %rb_int2big.exit ], [ %i.aa, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bz, %bb.n ], [ %i.aa, %bb.o ], [ %i.bx, %bb.l ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.08
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bigdivmod(i64 noundef %0, i64 noundef %1, ptr noundef captures(address) %2, ptr noundef captures(address) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call fastcc void @bigdivrem(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = inttoptr i64 %1 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = xor i64 %i.e, %i.c
  %i.g = and i64 %i.f, 8192
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bigzero_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13   ; 3 uses
  %i.k = and i64 %i.j, 16384
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15   ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bigzero_p.exit.thread, label %BIGNUM_DIGITS.exit

BIGNUM_LEN.exit.thread:                           ; preds = %bb.b
  %i.o = and i64 %i.j, 16744448                   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bigzero_p.exit.thread, label %BIGNUM_DIGITS.exit.thread

BIGNUM_DIGITS.exit:                               ; preds = %BIGNUM_LEN.exit
  %i.q = getelementptr i8, ptr %i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %BIGNUM_LEN.exit20, label %bigzero_p.exit

BIGNUM_DIGITS.exit.thread:                        ; preds = %BIGNUM_LEN.exit.thread
  %i.u = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !7
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %BIGNUM_LEN.exit20.thread, label %bigzero_p.exit

BIGNUM_LEN.exit20:                                ; preds = %BIGNUM_DIGITS.exit
  %i.x = icmp eq i64 %i.m, 1
  br i1 %i.x, label %bigzero_p.exit.thread, label %.preheader.i.i.preheader

BIGNUM_LEN.exit20.thread:                         ; preds = %BIGNUM_DIGITS.exit.thread
  %i.y = icmp eq i64 %i.o, 32768
  br i1 %i.y, label %bigzero_p.exit.thread, label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %BIGNUM_LEN.exit20.thread
  %i.z = lshr i64 %i.j, 15
  %i.aa = and i64 %i.z, 511                       ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bigzero_p.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %BIGNUM_LEN.exit20, %BIGNUM_LEN.exit.i
  %.0.i3.i35 = phi i64 [ %i.aa, %BIGNUM_LEN.exit.i ], [ %i.m, %BIGNUM_LEN.exit20 ]
  %.0.i7.i34 = phi ptr [ %i.u, %BIGNUM_LEN.exit.i ], [ %i.r, %BIGNUM_LEN.exit20 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.c
  %.0.i4.i = phi i64 [ %i.ac, %bb.c ], [ %.0.i3.i35, %.preheader.i.i.preheader ]
  %i.ac = add i64 %.0.i4.i, -1                    ; 3 uses
  %i.ad = getelementptr [4 x i8], ptr %.0.i7.i34, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %.not.i5.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i5.i, label %bb.c, label %bigzero_p.exit

bb.c:                                             ; preds = %.preheader.i.i
  %.not7.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not7.i.i, label %bigzero_p.exit.thread, label %.preheader.i.i, !llvm.loop !158

bigzero_p.exit:                                   ; preds = %.preheader.i.i, %BIGNUM_DIGITS.exit.thread, %BIGNUM_DIGITS.exit
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bigzero_p.exit
  %i.af = load volatile i64, ptr %2, align 8, !tbaa !11
  %i.ag = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ah = call fastcc i64 @bignew_1(i64 noundef %i.ag, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 5 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = and i64 %i.aj, 16384
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  store i64 1, ptr %i.al, align 8
  %i.am = and i64 %i.aj, -16744449
  %i.an = or disjoint i64 %i.am, 32768
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !13
  br label %rb_int2big.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.ai, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  store i64 1, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %i.ai, i64 16
  store i64 1, ptr %i.aq, align 8, !tbaa !15
  br label %rb_int2big.exit

rb_int2big.exit:                                  ; preds = %bb.e, %bb.f
  %i.ar = call fastcc i64 @bigadd(i64 noundef %i.af, i64 noundef %i.ah, i32 noundef 0)
  store volatile i64 %i.ar, ptr %2, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %rb_int2big.exit, %bigzero_p.exit
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = call fastcc i64 @bigadd(i64 noundef %i.h, i64 noundef %1, i32 noundef 1)
  br label %.sink.split

bigzero_p.exit.thread:                            ; preds = %bb.c, %BIGNUM_LEN.exit.i, %BIGNUM_LEN.exit20.thread, %BIGNUM_LEN.exit.thread, %BIGNUM_LEN.exit20, %BIGNUM_LEN.exit, %bb.a
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bigzero_p.exit.thread
  %i.at = load i64, ptr %i.a, align 8, !tbaa !11
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ %i.at, %bb.i ], [ %i.as, %bb.h ]
  store volatile i64 %.sink, ptr %3, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bigzero_p.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_big_remainder(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = trunc i64 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %1, 1                           ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  %.07.i = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true) ; 4 uses
  %i.e = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.f = tail call fastcc i64 @bignew_1(i64 noundef %i.e, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = and i64 %i.h, 16384
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %.07.i, ptr %i.j, align 8
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %i.k = and i64 %i.h, -16744449
  %i.l = or disjoint i64 %i.k, %.us-phi.i.i
  store i64 %i.l, ptr %i.g, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  store i64 %.07.i, ptr %i.n, align 4
  %.not1824.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi25.i.i = select i1 %.not1824.i.i, i64 1, i64 2
  %i.o = getelementptr i8, ptr %i.g, i64 16
  store i64 %.us-phi25.i.i, ptr %i.o, align 8, !tbaa !15
  br label %rb_uint2big.exit.i

rb_uint2big.exit.i:                               ; preds = %bb.d, %bb.c
  br i1 %i.d, label %rb_int2big.exit, label %bb.e

bb.e:                                             ; preds = %rb_uint2big.exit.i
  %i.p = load i64, ptr %i.g, align 8, !tbaa !13
  %i.q = and i64 %i.p, -8193
  store i64 %i.q, ptr %i.g, align 8, !tbaa !13
  br label %rb_int2big.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %1, 0
  %i.s = and i64 %1, 6
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.v = inttoptr i64 %1 to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13
  %i.x = and i64 %i.w, 31
  %i.y = icmp eq i64 %i.x, 10
  br i1 %i.y, label %rb_int2big.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit
  %.pr.i = load i64, ptr @rb_big_remainder.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %.lr.ph.i
  %i.z = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 9) #23 ; 3 uses
  store i64 %i.z, ptr @rb_big_remainder.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !310

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.lcssa.i = phi i64 [ %.pr.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.z, %.lr.ph.i ]
  %i.aa = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef %.lcssa.i) #23
  br label %bignorm.exit

rb_int2big.exit:                                  ; preds = %bb.e, %rb_uint2big.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit
  %.09 = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.f, %rb_uint2big.exit.i ], [ %i.f, %bb.e ]
  call fastcc void @bigdivrem(i64 noundef %0, i64 noundef %.09, ptr noundef null, ptr noundef nonnull %i.a)
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !11  ; 7 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = and i64 %i.ab, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_int2big.exit
  %i.ag = inttoptr i64 %i.ab to ptr               ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13 ; 4 uses
  %i.ai = and i64 %i.ah, 31
  %i.aj = icmp eq i64 %i.ai, 10
  br i1 %i.aj, label %bb.g, label %bignorm.exit

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ak = and i64 %i.ah, 16384
  %.not.i.i.i11 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = lshr i64 %i.ah, 15
  %i.am = and i64 %i.al, 511
  %i.an = getelementptr i8, ptr %i.ag, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %i.ag, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr i8, ptr %i.ag, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.i, %bb.h
  %.0.i28.i.i = phi i64 [ %i.am, %bb.h ], [ %i.ap, %bb.i ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.an, %bb.h ], [ %i.ar, %bb.i ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.j
  %indvar = phi i32 [ %indvar.next, %bb.j ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.aw, %bb.j ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.as = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.aw = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.aw, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ax = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.ax, label %bb.o, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ay = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.az = trunc i64 %.0.i28.i.i to i32
  %i.ba = sub i32 %indvar, %i.az
  %i.bb = icmp ugt i32 %i.ba, -4
  br i1 %i.bb, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.bc, %.lr.ph36.i.i ], [ %i.ay, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.bc = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.bd = add i32 %.035.i.i, -3
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw i64 %i.bh, 32
  %i.bj = sext i32 %i.bc to i64
  %i.bk = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = zext i32 %i.bl to i64
  %i.bn = or disjoint i64 %i.bi, %i.bm
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.ay, %.lr.ph36.preheader.i.i ], [ %i.bc, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.bn, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.bo, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.bu, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.bo = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.bp = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = zext i32 %i.bs to i64
  %i.bu = or disjoint i64 %i.bp, %i.bt            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.ay
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !311

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.bv = icmp ult i64 %i.bp, 4611686018427387904
  %i.bw = and i64 %i.ah, 8192
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.bv, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bx = shl nuw nsw i64 %i.bu, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %bignorm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.bz = icmp ult i64 %i.bu, 4611686018427387905
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.neg.i.i = mul nsw i64 %i.bu, -2
  %i.ca = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.o:                                             ; preds = %bb.m, %bb.k, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.ab, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.j, %bb.o, %bb.n, %bb.l, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_int2big.exit, %rbimpl_intern_const.exit
  %.0 = phi i64 [ %i.aa, %rbimpl_intern_const.exit ], [ %i.ab, %rb_int2big.exit ], [ %i.ab, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ca, %bb.n ], [ %i.ab, %bb.o ], [ %i.by, %bb.l ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bigdivrem(i64 noundef %0, i64 noundef %1, ptr noundef captures(address) %2, ptr noundef captures(address) %3) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 15
  %i.g = and i64 %i.f, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 5 uses
  %i.j = and i64 %i.i, 16384
  %.not.i120 = icmp eq i64 %i.j, 0
  br i1 %.not.i120, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.k = lshr i64 %i.i, 15
  %i.l = and i64 %i.k, 511
  %i.m = getelementptr i8, ptr %i.h, i64 16
  br label %BIGNUM_DIGITS.exit

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.d, %bb.e
  %.0.i121162 = phi i64 [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 4 uses
  %.0.i124 = phi ptr [ %i.m, %bb.d ], [ %i.q, %bb.e ] ; 5 uses
  %i.r = icmp sgt i64 %.0.i121162, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit, %bb.f
  %.0102170 = phi i64 [ %i.w, %bb.f ], [ %.0.i121162, %BIGNUM_DIGITS.exit ] ; 4 uses
  %i.s = getelementptr [4 x i8], ptr %.0.i124, i64 %.0102170
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.lr.ph
  %i.w = add nsw i64 %.0102170, -1
  %i.x = icmp sgt i64 %.0102170, 1
  br i1 %i.x, label %.lr.ph, label %.critedge.thread184, !llvm.loop !312

.critedge:                                        ; preds = %BIGNUM_DIGITS.exit
  %i.y = icmp eq i64 %.0.i121162, 0
  br i1 %i.y, label %.critedge.thread184, label %.critedge.thread

.critedge.thread184:                              ; preds = %bb.f, %.critedge
  tail call void @rb_num_zerodiv() #27
  unreachable

.critedge.thread:                                 ; preds = %.lr.ph, %.critedge
  %.0102169 = phi i64 [ %.0.i121162, %.critedge ], [ %.0102170, %.lr.ph ] ; 10 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.thread
  %i.z = getelementptr i8, ptr %i.a, i64 16
  br label %BIGNUM_DIGITS.exit127

bb.h:                                             ; preds = %.critedge.thread
  %i.aa = getelementptr i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit127

BIGNUM_DIGITS.exit127:                            ; preds = %bb.g, %bb.h
  %.0.i126 = phi ptr [ %i.z, %bb.g ], [ %i.ab, %bb.h ] ; 11 uses
  %.0.i12611 = ptrtoaddr ptr %.0.i126 to i64
  %i.ac = icmp sgt i64 %.0.i, 0
  br i1 %i.ac, label %.lr.ph172, label %.critedge2

.lr.ph172:                                        ; preds = %BIGNUM_DIGITS.exit127, %bb.i
  %.0101171 = phi i64 [ %i.ah, %bb.i ], [ %.0.i, %BIGNUM_DIGITS.exit127 ] ; 4 uses
  %i.ad = getelementptr [4 x i8], ptr %.0.i126, i64 %.0101171
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph172
  %i.ah = add nsw i64 %.0101171, -1
  %i.ai = icmp sgt i64 %.0101171, 1
  br i1 %i.ai, label %.lr.ph172, label %.critedge2, !llvm.loop !313

.critedge2:                                       ; preds = %.lr.ph172, %bb.i, %BIGNUM_DIGITS.exit127
  %.0101.lcssa = phi i64 [ %.0.i, %BIGNUM_DIGITS.exit127 ], [ 0, %bb.i ], [ %.0101171, %.lr.ph172 ] ; 20 uses
  %i.aj = icmp slt i64 %.0101.lcssa, %.0102169
  br i1 %i.aj, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge2
  %i.ak = icmp eq i64 %.0101.lcssa, %.0102169
  br i1 %i.ak, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr [4 x i8], ptr %.0.i126, i64 %.0102169
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = getelementptr [4 x i8], ptr %.0.i124, i64 %.0102169
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = icmp ult i32 %i.an, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k, %.critedge2
  %.not118 = icmp eq ptr %2, null
  br i1 %.not118, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.at = tail call fastcc i64 @bignew_1(i64 noundef %i.as, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 5 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %i.aw = and i64 %i.av, 16384
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %i.au, i64 16
  store i64 0, ptr %i.ax, align 8
  %i.ay = and i64 %i.av, -16744449
  %i.az = or disjoint i64 %i.ay, 32768
  store i64 %i.az, ptr %i.au, align 8, !tbaa !13
  br label %rb_int2big.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %i.au, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15
  store i64 0, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %i.au, i64 16
  store i64 1, ptr %i.bc, align 8, !tbaa !15
  br label %rb_int2big.exit

rb_int2big.exit:                                  ; preds = %bb.n, %bb.o
  store volatile i64 %i.at, ptr %2, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %rb_int2big.exit, %bb.l
  %.not119 = icmp eq ptr %3, null
  br i1 %.not119, label %bb.bg, label %bb.q

bb.q:                                             ; preds = %bb.p
  store volatile i64 %0, ptr %3, align 8, !tbaa !11
  br label %bb.bg

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bd = icmp eq i64 %.0102169, 1
  br i1 %i.bd, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %.0.i124, align 4, !tbaa !7 ; 4 uses
  %i.bf = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.bg = xor i64 %i.i, %i.b
  %i.bh = and i64 %i.bg, 8192
  %.not166 = icmp eq i64 %i.bh, 0
  %i.bi = zext i1 %.not166 to i32
  %i.bj = tail call fastcc i64 @bignew_1(i64 noundef %i.bf, i64 noundef %.0101.lcssa, i32 noundef %i.bi) ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bm = and i64 %i.bl, 16384
  %.not.i128 = icmp eq i64 %i.bm, 0
  br i1 %.not.i128, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  br label %BIGNUM_DIGITS.exit130

bb.u:                                             ; preds = %bb.s
  %i.bo = getelementptr i8, ptr %i.bk, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit130

BIGNUM_DIGITS.exit130:                            ; preds = %bb.t, %bb.u
  %.0.i129 = phi ptr [ %i.bn, %bb.t ], [ %i.bp, %bb.u ] ; 6 uses
  %.0.i12912 = ptrtoaddr ptr %.0.i129 to i64
  %i.bq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.be)
  %i.br = icmp samesign ult i32 %i.bq, 2
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %BIGNUM_DIGITS.exit130
  %i.bs = add i32 %i.be, -1
  %i.bt = load i32, ptr %.0.i126, align 4, !tbaa !7
  %i.bu = and i32 %i.bt, %i.bs                    ; 4 uses
  %.not.i.i.i131 = icmp eq i64 %.0101.lcssa, 0
  br i1 %.not.i.i.i131, label %bigdivrem_single.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %i.bv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 false)
end_hunk_0
begin_hunk_1_@bigdivrem_restoring:bb.a
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
  %i.u = and i64 %i.t, 4611686018427387900
  %diff.check = icmp eq i64 %i.u, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x i64> poison, i64 %i.r, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %vector.ph ], [ %i.z, %vector.body ]
  %i.v = xor i64 %index, -1
  %i.w = add i64 %i.g, %i.v                       ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.f, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.z = zext <4 x i32> %reverse to <4 x i64>     ; 4 uses
  %i.aa = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.z, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ab = shl nuw <4 x i64> %i.aa, splat (i64 32)
  %i.ac = or disjoint <4 x i64> %i.ab, %i.z
  %i.ad = lshr <4 x i64> %i.ac, %broadcast.splat
  %i.ae = trunc <4 x i64> %i.ad to <4 x i32>
  %i.af = getelementptr [4 x i8], ptr %i.e, i64 %i.w
  %i.ag = getelementptr i8, ptr %i.af, i64 -12
  %reverse40 = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse40, ptr %i.ag, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !425

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.z, i64 3
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %bigdivrem_single1.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %i.ai = sub i64 %1, %3
  %i.aj = xor i64 %.017.i.i.ph, -1
  %i.ak = add i64 %1, %i.aj
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.prol = shl nuw i64 %.014.in16.i.i.ph, 32
  %i.al = xor i64 %.017.i.i.ph, -1
  %i.am = add i64 %i.g, %i.al                     ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.f, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = or disjoint i64 %.014.i.i.prol, %i.ap
  %i.ar = lshr i64 %i.aq, %i.s
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr [4 x i8], ptr %i.e, i64 %i.am
  store i32 %i.as, ptr %i.at, align 4, !tbaa !7
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
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = or disjoint i64 %.014.i.i, %i.ba
  %i.bc = lshr i64 %i.bb, %i.s
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr [4 x i8], ptr %i.e, i64 %i.ax
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  %.014.i.i.1 = shl nuw i64 %i.ba, 32
  %reass.sub = sub i64 %i.g, %.017.i.i
  %i.bf = add i64 %reass.sub, -2                  ; 2 uses
  %i.bg = getelementptr [4 x i8], ptr %i.f, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = or disjoint i64 %.014.i.i.1, %i.bi
  %i.bk = lshr i64 %i.bj, %i.s
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr [4 x i8], ptr %i.e, i64 %i.bf
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !7
  %i.bn = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bn, %i.g
  br i1 %exitcond.not.i.i.1, label %bigdivrem_single1.exit, label %scalar.ph, !llvm.loop !426

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, %3
  br i1 %.not.i, label %bigdivrem_single1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bo = zext i32 %i.j to i64
  %i.bp = zext i32 %i.b to i64                    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.030.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.ca, %bb.g ]
  %.02629.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cb, %bb.g ] ; 2 uses
  %i.bq = shl nuw i64 %.030.i, 32
  %i.br = xor i64 %.02629.i, -1
  %i.bs = add i64 %i.g, %i.br                     ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.f, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = or disjoint i64 %i.bq, %i.bv            ; 2 uses
  %i.bx = udiv i64 %i.bw, %i.bp
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr [4 x i8], ptr %i.e, i64 %i.bs
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !7
  %i.ca = urem i64 %i.bw, %i.bp                   ; 2 uses
  %i.cb = add nuw i64 %.02629.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !113

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.cc = trunc nuw i64 %i.ca to i32
  br label %bigdivrem_single1.exit

bigdivrem_single1.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.f, %._crit_edge.loopexit.i
  %.027.i = phi i32 [ %i.cc, %._crit_edge.loopexit.i ], [ %i.o, %bb.e ], [ %i.j, %bb.f ], [ %i.o, %middle.block ], [ %i.o, %scalar.ph ], [ %i.o, %scalar.ph.prol.loopexit ]
  store i32 %.027.i, ptr %i.f, align 4, !tbaa !7
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.cd = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.ce = sub i64 %3, %.0                         ; 2 uses
  store i64 %i.ce, ptr %4, align 8, !tbaa !427
  %i.cf = getelementptr [4 x i8], ptr %0, i64 %.0
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !429
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cd, ptr %i.ch, align 8, !tbaa !430
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store volatile i64 0, ptr %i.ci, align 8, !tbaa !431
  %i.cj = sub i64 %1, %.0                         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !432
  %i.cl = icmp ugt i64 %i.cj, 10000
  %i.cm = icmp ugt i64 %i.ce, 10000
  %or.cond = or i1 %i.cl, %i.cm
  br i1 %or.cond, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  store volatile i64 0, ptr %i.ci, align 8, !tbaa !431
  %i.cn = call ptr @rb_nogvl(ptr noundef nonnull @bigdivrem1, ptr noundef nonnull %4, ptr noundef nonnull @rb_big_stop, ptr noundef nonnull %4, i32 noundef 6) #23 ; 0 uses
  %i.co = load volatile i64, ptr %i.ci, align 8, !tbaa !431
  %i.cp = icmp eq i64 %i.co, 20
  br i1 %i.cp, label %.preheader, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.cq = call ptr @bigdivrem1(ptr noundef nonnull %4) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.i, %bigdivrem_single1.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

declare ptr @rb_nogvl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noalias noundef ptr @bigdivrem1(ptr noundef captures(address) %0) #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !427
  %.fr = freeze i64 %i.a                          ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !430  ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !429  ; 4 uses
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
  %i.m = load volatile i64, ptr %i.h, align 8, !tbaa !431
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
  br i1 %.not85, label %.loopexit57, label %.split.us, !llvm.loop !433

.split:                                           ; preds = %.split.preheader, %.loopexit
  %.047 = phi i64 [ %i.dk, %.loopexit ], [ %i.c, %.split.preheader ] ; 3 uses
  %i.at = load volatile i64, ptr %i.h, align 8, !tbaa !431
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.e, label %.split64.us

.split64.us:                                      ; preds = %.split, %.split.us
  %.us-phi65 = phi i64 [ %.047.us, %.split.us ], [ %.047, %.split ]
  store i64 %.us-phi65, ptr %i.b, align 8, !tbaa !432
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
  br i1 %.not56.not, label %.lr.ph.i.i.preheader, label %.loopexit, !llvm.loop !434

.loopexit:                                        ; preds = %bary_add.exit.loopexit, %bigdivrem_mulsub.exit, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ %.055, %bigdivrem_mulsub.exit ], [ %i.dj, %bary_add.exit.loopexit ]
  %i.dk = add i64 %.047, -1                       ; 3 uses
  %i.dl = getelementptr [4 x i8], ptr %i.g, i64 %i.dk
  store i32 %.2, ptr %i.dl, align 4, !tbaa !7
  %i.dm = icmp ugt i64 %i.dk, %.fr
  br i1 %i.dm, label %.split, label %.loopexit57, !llvm.loop !433

.loopexit57:                                      ; preds = %.loopexit, %.loopexit.us, %.split64.us
  ret ptr null
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @rb_big_stop(ptr noundef captures(address) %0) #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  store volatile i64 20, ptr %i.a, align 8, !tbaa !431
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
define internal fastcc i64 @power_cache_get_power(i32 noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #20 {
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
  br label %BIGNUM_LEN.exit19.i

bb.l:                                             ; preds = %.critedge.i
  %i.ar = lshr i64 %i.aa, 15
  %i.as = and i64 %i.ar, 511
  br label %BIGNUM_LEN.exit19.i

BIGNUM_LEN.exit19.i:                              ; preds = %bb.l, %bb.k
  %.0.i18.i = phi i64 [ %i.as, %bb.l ], [ %i.aq, %bb.k ]
  %i.at = icmp ugt i64 %.0.i18.i, %.012.i.lcssa
  br i1 %i.at, label %bb.m, label %bigtrunc.exit

bb.m:                                             ; preds = %BIGNUM_LEN.exit19.i
  call void @rb_big_resize(i64 noundef %i.y, i64 noundef %.012.i.lcssa)
  br label %bigtrunc.exit

bigtrunc.exit:                                    ; preds = %BIGNUM_DIGITS.exit.i, %BIGNUM_LEN.exit19.i, %bb.m
  %i.au = load i64, ptr %i.a, align 8, !tbaa !11
  %i.av = shl i64 %i.au, 1
  br label %bb.n

bb.n:                                             ; preds = %bigtrunc.exit, %BIGNUM_DIGITS.exit
  %storemerge = phi i64 [ %i.av, %bigtrunc.exit ], [ %i.v, %BIGNUM_DIGITS.exit ]
  %.0 = phi i64 [ %i.y, %bigtrunc.exit ], [ %i.o, %BIGNUM_DIGITS.exit ] ; 4 uses
  %i.aw = call i64 @rb_obj_hide(i64 noundef %.0) #23 ; 0 uses
  store i64 %.0, ptr %i.g, align 8, !tbaa !11
  %i.ax = getelementptr [520 x i8], ptr @base36_numdigits_cache, i64 %i.d
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %i.f
  store i64 %storemerge, ptr %i.ay, align 8, !tbaa !11
  call void @rb_vm_register_global_object(i64 noundef %.0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %.1 = phi i64 [ %i.h, %bb.c ], [ %.0, %bb.n ]
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr [520 x i8], ptr @base36_numdigits_cache, i64 %i.d
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.f
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11
  store i64 %i.bb, ptr %2, align 8, !tbaa !11
end_hunk_1
