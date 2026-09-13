Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@dbl2big:bb.a
  %.020.lcssa = phi i64 [ 0, %.preheader ], [ %i.l, %.lr.ph ] ; 6 uses
  %.0.lcssa = phi double [ %i.h, %.preheader ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.n = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.o = fcmp oge double %0, 0.000000e+00
  %i.p = zext i1 %i.o to i32
  %i.q = tail call fastcc i64 @bignew_1(i64 noundef %i.n, i64 noundef %.020.lcssa, i32 noundef %i.p) ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !48
  %i.t = and i64 %i.s, 16384
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.u = getelementptr i8, ptr %i.r, i64 16
  br label %BIGNUM_DIGITS.exit

bb.f:                                             ; preds = %._crit_edge
  %i.v = getelementptr i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.u, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %.not25 = icmp eq i64 %.020.lcssa, 0
  br i1 %.not25, label %._crit_edge29, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %BIGNUM_DIGITS.exit
  %xtraiter = and i64 %.020.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol

.lr.ph28.prol:                                    ; preds = %.lr.ph28.preheader
  %i.x = add nsw i64 %.020.lcssa, -1              ; 2 uses
  %i.y = fmul nnan double %.0.lcssa, f0x41F0000000000000 ; 2 uses
  %i.z = fptoui double %i.y to i32                ; 2 uses
  %i.aa = uitofp i32 %i.z to double
  %i.ab = fsub nnan double %i.y, %i.aa
  %i.ac = getelementptr [4 x i8], ptr %.0.i, i64 %i.x
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !44
  br label %.lr.ph28.prol.loopexit

.lr.ph28.prol.loopexit:                           ; preds = %.lr.ph28.prol, %.lr.ph28.preheader
  %.127.unr = phi double [ %.0.lcssa, %.lr.ph28.preheader ], [ %i.ab, %.lr.ph28.prol ]
  %.12126.unr = phi i64 [ %.020.lcssa, %.lr.ph28.preheader ], [ %i.x, %.lr.ph28.prol ]
  %i.ad = icmp eq i64 %.020.lcssa, 1
  br i1 %i.ad, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %.127 = phi double [ %i.ao, %.lr.ph28 ], [ %.127.unr, %.lr.ph28.prol.loopexit ]
  %.12126 = phi i64 [ %i.ak, %.lr.ph28 ], [ %.12126.unr, %.lr.ph28.prol.loopexit ] ; 2 uses
  %i.ae = fmul double %.127, f0x41F0000000000000  ; 2 uses
  %i.af = fptoui double %i.ae to i32              ; 2 uses
  %i.ag = uitofp i32 %i.af to double
  %i.ah = fsub double %i.ae, %i.ag
  %i.ai = getelementptr [4 x i8], ptr %.0.i, i64 %.12126
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  store i32 %i.af, ptr %i.aj, align 4, !tbaa !44
  %i.ak = add i64 %.12126, -2                     ; 3 uses
  %i.al = fmul double %i.ah, f0x41F0000000000000  ; 2 uses
  %i.am = fptoui double %i.al to i32              ; 2 uses
  %i.an = uitofp i32 %i.am to double
  %i.ao = fsub double %i.al, %i.an
  %i.ap = getelementptr [4 x i8], ptr %.0.i, i64 %i.ak
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !44
  %.not.1 = icmp eq i64 %i.ak, 0
  br i1 %.not.1, label %._crit_edge29, label %.lr.ph28, !llvm.loop !276

._crit_edge29:                                    ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28, %BIGNUM_DIGITS.exit
  ret i64 %i.q
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @rb_big2dbl(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc double @big2dbl(i64 noundef %0) ; 3 uses
  %i.b = tail call double @llvm.fabs.f64(double %i.a) #29
  %i.c = fcmp oeq double %i.b, +inf
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.12) #23
  %i.d = fcmp olt double %i.a, 0.000000e+00
  %. = select i1 %i.d, double -inf, double +inf
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %., %bb.b ], [ %i.a, %bb.a ]
  ret double %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @big2dbl(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 5 uses
  %i.c = and i64 %i.b, 16384
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 511
  %i.f = getelementptr i8, ptr %i.a, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr i8, ptr %i.a, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i22.i = phi i64 [ %i.e, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %.0.i17.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  %i.k = icmp eq i64 %.0.i22.i, 0
  br i1 %i.k, label %bigtrunc.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %BIGNUM_DIGITS.exit.i
  %i.l = add i64 %.0.i22.i, -1                    ; 2 uses
  %.not.i86 = icmp eq i64 %i.l, 0
  br i1 %.not.i86, label %.critedge.i, label %.lr.ph88

.preheader.i:                                     ; preds = %.lr.ph88
  %i.m = add i64 %i.n, -1                         ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph88, !llvm.loop !13

.lr.ph88:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %i.n = phi i64 [ %i.m, %.preheader.i ], [ %i.l, %.preheader.i.preheader ] ; 4 uses
  %.0.i87 = phi i64 [ %i.n, %.preheader.i ], [ %.0.i22.i, %.preheader.i.preheader ]
  %i.o = getelementptr [4 x i8], ptr %.0.i17.i, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %.not15.i = icmp eq i32 %i.p, 0
  br i1 %.not15.i, label %.preheader.i, label %..critedge.i_crit_edge, !llvm.loop !13

..critedge.i_crit_edge:                           ; preds = %.lr.ph88
  br label %.critedge.i, !llvm.loop !13

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.0.i.lcssa = phi i64 [ %.0.i87, %..critedge.i_crit_edge ], [ %.0.i22.i, %.preheader.i.preheader ], [ %i.n, %.preheader.i ] ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit20.i

bb.e:                                             ; preds = %.critedge.i
  %i.s = lshr i64 %i.b, 15
  %i.t = and i64 %i.s, 511
  br label %BIGNUM_LEN.exit20.i

BIGNUM_LEN.exit20.i:                              ; preds = %bb.e, %bb.d
  %.0.i19.i = phi i64 [ %i.t, %bb.e ], [ %i.r, %bb.d ]
  %i.u = icmp ugt i64 %.0.i19.i, %.0.i.lcssa
  br i1 %i.u, label %bb.f, label %bigtrunc.exit

bb.f:                                             ; preds = %BIGNUM_LEN.exit20.i
  tail call void @rb_big_resize(i64 noundef %0, i64 noundef %.0.i.lcssa)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !48
  br label %bigtrunc.exit

bigtrunc.exit:                                    ; preds = %BIGNUM_DIGITS.exit.i, %BIGNUM_LEN.exit20.i, %bb.f
  %i.v = phi i64 [ %i.b, %BIGNUM_DIGITS.exit.i ], [ %i.b, %BIGNUM_LEN.exit20.i ], [ %.pre, %bb.f ] ; 3 uses
  %i.w = and i64 %i.v, 16384
  %.not.i65 = icmp eq i64 %i.w, 0
  br i1 %.not.i65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bigtrunc.exit
  %i.x = lshr i64 %i.v, 15
  %i.y = and i64 %i.x, 511
  %i.z = getelementptr i8, ptr %i.a, i64 16
  br label %BIGNUM_DIGITS.exit

bb.h:                                             ; preds = %bigtrunc.exit
  %i.aa = getelementptr i8, ptr %i.a, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  %i.ac = getelementptr i8, ptr %i.a, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.g, %bb.h
  %.0.i6671 = phi i64 [ %i.y, %bb.g ], [ %i.ab, %bb.h ] ; 4 uses
  %.0.i68 = phi ptr [ %i.z, %bb.g ], [ %i.ad, %bb.h ] ; 4 uses
  %.not = icmp eq i64 %.0.i6671, 0
  br i1 %.not, label %bb.n, label %bb.i

bb.i:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ae = shl i64 %.0.i6671, 5
  %i.af = getelementptr [4 x i8], ptr %.0.i68, i64 %.0.i6671
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !44
  %i.ai = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ah, i1 false)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = sub i64 %i.ae, %i.aj                    ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 1077
  br i1 %i.al, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %1 = icmp slt i64 %i.ak, 55                     ; 2 uses
  %i.am = add nsw i64 %i.ak, -54                  ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %.050 = select i1 %1, i64 0, i64 %i.an          ; 5 uses
  %i.ao = add i64 %.0.i6671, -1                   ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, %.050
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %i.aq = phi i64 [ %i.av, %.lr.ph ], [ %i.ao, %bb.j ] ; 2 uses
  %.05478 = phi double [ %i.au, %.lr.ph ], [ 0.000000e+00, %bb.j ]
  %i.ar = getelementptr [4 x i8], ptr %.0.i68, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !44
  %i.at = uitofp i32 %i.as to double
  %i.au = tail call double @llvm.fmuladd.f64(double %.05478, double f0x41F0000000000000, double %i.at) ; 2 uses
  %i.av = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.av, %.050
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !277

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %.054.lcssa = phi double [ 0.000000e+00, %bb.j ], [ %i.au, %.lr.ph ] ; 6 uses
  %.lcssa = phi i64 [ %i.ao, %bb.j ], [ %.050, %.lr.ph ] ; 3 uses
  %i.ax = getelementptr [4 x i8], ptr %.0.i68, i64 %.lcssa
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !44 ; 7 uses
  br i1 %1, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.az = trunc nuw nsw i64 %i.am to i32
  %i.ba = and i32 %i.az, 31                       ; 2 uses
  %i.bb = shl nuw i32 1, %i.ba                    ; 2 uses
  %i.bc = and i32 %i.ay, %i.bb
  %.not61 = icmp eq i32 %i.bc, 0
  br i1 %.not61, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = shl nsw i32 -1, %i.ba                   ; 2 uses
  %i.be = xor i32 %i.bd, -1
  %i.bf = and i32 %i.ay, %i.be
  %.not75 = icmp eq i32 %i.bf, 0
  br i1 %.not75, label %.preheader.preheader, label %.loopexit77

.preheader.preheader:                             ; preds = %bb.l
  %i.bg = icmp sgt i64 %.lcssa, 0
  br i1 %i.bg, label %.lr.ph91, label %.loopexit

.preheader:                                       ; preds = %.lr.ph91
  %i.bh = icmp sgt i64 %.15390, 1
  br i1 %i.bh, label %.lr.ph91, label %.loopexit, !llvm.loop !278

.lr.ph91:                                         ; preds = %.preheader.preheader, %.preheader
  %.15390 = phi i64 [ %i.bi, %.preheader ], [ %.lcssa, %.preheader.preheader ] ; 2 uses
  %i.bi = add nsw i64 %.15390, -1                 ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %.0.i68, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !44
  %.not76 = icmp eq i32 %i.bk, 0
  br i1 %.not76, label %.preheader, label %.loopexit77, !llvm.loop !278

.loopexit77:                                      ; preds = %.lr.ph91, %bb.l
  %i.bl = and i32 %i.ay, %i.bd
  %i.bm = add i32 %i.bl, %i.bb                    ; 2 uses
  %.not63 = icmp eq i32 %i.bm, 0
  %i.bn = fadd double %.054.lcssa, 1.000000e+00
  %.155 = select i1 %.not63, double %i.bn, double %.054.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %.loopexit77, %bb.k, %._crit_edge
  %.3 = phi double [ %.054.lcssa, %._crit_edge ], [ %.054.lcssa, %bb.k ], [ %.155, %.loopexit77 ], [ %.054.lcssa, %.preheader.preheader ], [ %.054.lcssa, %.preheader ]
  %.149 = phi i32 [ %i.ay, %._crit_edge ], [ %i.ay, %bb.k ], [ %i.bm, %.loopexit77 ], [ %i.ay, %.preheader.preheader ], [ %i.ay, %.preheader ]
  %i.bo = uitofp i32 %.149 to double
  %i.bp = tail call double @llvm.fmuladd.f64(double %.3, double f0x41F0000000000000, double %i.bo) ; 2 uses
  %.not64 = icmp eq i64 %.050, 0
  br i1 %.not64, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %.051.tr = trunc nuw nsw i64 %.050 to i32
  %i.bq = shl nuw nsw i32 %.051.tr, 5
  %i.br = tail call double @ldexp(double noundef %i.bp, i32 noundef %i.bq) #23, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %.loopexit, %BIGNUM_DIGITS.exit
  %.4 = phi double [ %i.br, %bb.m ], [ 0.000000e+00, %BIGNUM_DIGITS.exit ], [ %i.bp, %.loopexit ], [ +inf, %bb.i ] ; 2 uses
  %i.bs = and i64 %i.v, 8192
  %.not.i69 = icmp eq i64 %i.bs, 0
  %i.bt = fneg double %.4
  %.5 = select i1 %.not.i69, double %i.bt, double %.4
  ret double %.5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_integer_float_cmp(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 3
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg.i.i = ashr i64 %1, 63
  %i.c = add nsw i64 %.neg.i.i, 2
  %i.d = and i64 %1, -4
  %i.e = or i64 %i.c, %i.d                        ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.e, i64 range(i64 1, 0) %i.e, i64 61)
  %i.g = bitcast i64 %i.f to double
  br label %rb_float_value_inline.exit

bb.d:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %1 to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !76
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.c, %bb.d
  %.0.i = phi double [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = fcmp uno double %.0.i, 0.000000e+00
  br i1 %i.k, label %bb.n, label %rb_float_value_inline.exit.thread

rb_float_value_inline.exit.thread:                ; preds = %bb.b, %rb_float_value_inline.exit
  %.0.i33 = phi double [ %.0.i, %rb_float_value_inline.exit ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %i.l = tail call double @llvm.fabs.f64(double %.0.i33) #29
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_float_value_inline.exit.thread
  %i.n = fcmp ogt double %.0.i33, 0.000000e+00
  %. = select i1 %i.n, i64 -1, i64 3
  br label %bb.n

bb.f:                                             ; preds = %rb_float_value_inline.exit.thread
  %i.o = tail call { double, double } @llvm.modf.f64(double %.0.i33) ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0  ; 4 uses
  %i.q = extractvalue { double, double } %i.o, 1  ; 4 uses
  %i.r = trunc i64 %0 to i1
  br i1 %i.r, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.s = fcmp olt double %i.q, f0xC3D0000000000000
  br i1 %i.s, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = fcmp ult double %i.q, f0x43D0000000000000
  br i1 %i.t, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.u = ashr i64 %0, 1                           ; 2 uses
  %i.v = fptosi double %i.q to i64                ; 2 uses
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.u, %i.v
  %i.y = fcmp olt double %i.p, 0.000000e+00
  %or.cond31 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond31, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = fcmp ogt double %i.p, 0.000000e+00
  %.29 = select i1 %i.z, i64 -1, i64 1
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.aa = tail call i64 @rb_dbl2big(double noundef %i.q)
  %i.ab = tail call i64 @rb_big_cmp(i64 noundef %0, i64 noundef %i.aa) ; 2 uses
  %i.ac = fcmp oeq double %i.p, 0.000000e+00
  %i.ad = icmp ne i64 %i.ab, 1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = fcmp olt double %i.p, 0.000000e+00
  %.30 = select i1 %i.ae, i64 3, i64 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.e, %rb_float_value_inline.exit
  %.1 = phi i64 [ %i.ab, %bb.l ], [ %., %bb.e ], [ 4, %rb_float_value_inline.exit ], [ %.30, %bb.m ], [ %.29, %bb.k ], [ 3, %bb.j ], [ 3, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_cmp(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %i.d = and i64 %i.c, 16384
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.c, 15
  %i.f = and i64 %i.e, 511
  %i.g = getelementptr i8, ptr %i.b, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.d, %bb.c
  %.0.i28.i = phi i64 [ %i.f, %bb.c ], [ %i.i, %bb.d ] ; 3 uses
  %.0.i26.i = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 4 uses
  %cond31.i = icmp eq i64 %.0.i28.i, 0
  br i1 %cond31.i, label %bigfixize.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %BIGNUM_DIGITS.exit.i, %bb.e
  %indvar = phi i64 [ %indvar.next, %bb.e ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 2 uses
  %.02232.i = phi i64 [ %i.p, %bb.e ], [ %.0.i28.i, %BIGNUM_DIGITS.exit.i ] ; 7 uses
  %i.l = getelementptr [4 x i8], ptr %.0.i26.i, i64 %.02232.i
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = add i64 %.02232.i, -1                    ; 2 uses
  %cond.i = icmp eq i64 %i.p, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cond.i, label %bigfixize.exit.thread, label %.lr.ph.i, !llvm.loop !15

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.q = icmp ugt i64 %.02232.i, 2
  br i1 %i.q, label %bb.j, label %.lr.ph36.i.preheader

.lr.ph36.i.preheader:                             ; preds = %.critedge.i
  %i.r = sub i64 %indvar, %.0.i28.i
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.lr.ph36.i.epil.preheader, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.preheader, %.lr.ph36.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i.3, %.lr.ph36.i ], [ %.02232.i, %.lr.ph36.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph36.i ], [ 0, %.lr.ph36.i.preheader ]
  %indvars.iv.next40.i.3 = add nsw i64 %indvars.iv39.i, -4 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph36.i, !llvm.loop !16

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph36.i
  %i.t = getelementptr [4 x i8], ptr %.0.i26.i, i64 %indvars.iv39.i
  %i.u = getelementptr i8, ptr %i.t, i64 -12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !44
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw i64 %i.w, 32
  %i.y = getelementptr [4 x i8], ptr %.0.i26.i, i64 %indvars.iv.next40.i.3
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44
  %i.aa = zext i32 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa
  br label %.lr.ph36.i.epil.preheader

.lr.ph36.i.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph36.i.preheader
  %indvars.iv39.i.epil.init = phi i64 [ %.02232.i, %.lr.ph36.i.preheader ], [ %indvars.iv.next40.i.3, %._crit_edge.i.unr-lcssa ]
  %.02134.i.epil.init = phi i64 [ 0, %.lr.ph36.i.preheader ], [ %i.ab, %._crit_edge.i.unr-lcssa ]
  br label %.lr.ph36.i.epil

.lr.ph36.i.epil:                                  ; preds = %.lr.ph36.i.epil, %.lr.ph36.i.epil.preheader
  %indvars.iv39.i.epil = phi i64 [ %indvars.iv.next40.i.epil, %.lr.ph36.i.epil ], [ %indvars.iv39.i.epil.init, %.lr.ph36.i.epil.preheader ]
  %.02134.i.epil = phi i64 [ %i.ag, %.lr.ph36.i.epil ], [ %.02134.i.epil.init, %.lr.ph36.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph36.i.epil ], [ 0, %.lr.ph36.i.epil.preheader ]
  %indvars.iv.next40.i.epil = add nsw i64 %indvars.iv39.i.epil, -1 ; 2 uses
  %i.ac = shl i64 %.02134.i.epil, 32              ; 2 uses
end_hunk_0
