Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@str2big_normal:bb.a
  %i.u = sub nuw i64 %.132, %.028
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader
  %i.v = getelementptr [4 x i8], ptr %.0.i, i64 %.028 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = zext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, %i.k
  %i.z = add nsw i64 %i.y, %.029                  ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add nuw i64 %.028, 1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !44
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
  %.0110223 = phi i32 [ %i.iv, %bb.ac ], [ 0, %.preheader203 ]
  %.0118222 = phi ptr [ %.0119221, %bb.ac ], [ %i.k, %.preheader203 ] ; 8 uses
  %.0119221 = phi ptr [ %.0118222, %bb.ac ], [ %i.j, %.preheader203 ] ; 6 uses
  %.0120220 = phi i64 [ %i.ay, %bb.ac ], [ 2, %.preheader203 ] ; 17 uses
  %.0121219 = phi i64 [ %i.iw, %bb.ac ], [ %.1.i, %.preheader203 ]
  %.0118222284 = ptrtoaddr ptr %.0118222 to i64   ; 2 uses
  %i.ay = shl i64 %.0120220, 1                    ; 13 uses
  %i.az = inttoptr i64 %.0121219 to ptr           ; 4 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 4 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  %i.bc = icmp sgt i64 %.0120220, 0
  %.not.i.i142 = icmp eq i64 %i.ay, 0
  %i.bd = shl i64 %.0120220, 3
  %i.be = shl i64 %.0120220, 3
  %i.bf = mul i64 %.0120220, -2
  br label %bb.m

.preheader:                                       ; preds = %bb.ac, %.preheader203
  %.0119.lcssa = phi ptr [ %i.j, %.preheader203 ], [ %.0118222, %bb.ac ] ; 2 uses
  %.not224 = icmp eq i64 %4, 0
  br i1 %.not224, label %.critedge, label %.lr.ph226

bb.m:                                             ; preds = %.preheader202, %bary_add.exit
  %indvar = phi i64 [ 0, %.preheader202 ], [ %indvar.next, %bary_add.exit ] ; 4 uses
  %.2217 = phi i64 [ 0, %.preheader202 ], [ %i.it, %bary_add.exit ] ; 11 uses
  %i.bg = mul i64 %i.bf, %indvar
  %i.bh = add i64 %4, %i.bg
  %umin318 = call i64 @llvm.umin.i64(i64 %.0120220, i64 %i.bh)
  %i.bi = mul i64 %i.be, %indvar
  %i.bj = add i64 %i.bi, %.0118222284
  %i.bk = mul i64 %i.bd, %indvar
  %i.bl = add i64 %i.bk, %.0118222284
  %i.bm = sub nuw i64 %4, %.2217                  ; 10 uses
  %.not136 = icmp ugt i64 %i.ay, %i.bm
  br i1 %.not136, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr [4 x i8], ptr %.0118222, i64 %.2217 ; 14 uses
  %i.bo = load i64, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.bp = and i64 %i.bo, 16384
  %.not.i139 = icmp eq i64 %i.bp, 0
  br i1 %.not.i139, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.br = load i64, ptr %i.ba, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.p:                                             ; preds = %bb.n
  %i.bs = lshr i64 %i.bo, 15
  %i.bt = and i64 %i.bs, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.o, %bb.p
  %.0.i195 = phi ptr [ %i.ba, %bb.p ], [ %i.bq, %bb.o ]
  %.0.i141 = phi i64 [ %i.bt, %bb.p ], [ %i.br, %bb.o ]
  %i.bu = getelementptr [4 x i8], ptr %.0119221, i64 %.2217 ; 3 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %.0120220
  call fastcc void @bary_mul(ptr noundef %i.bn, i64 noundef %i.ay, ptr noundef %.0.i195, i64 noundef %.0.i141, ptr noundef %i.bv, i64 noundef %.0120220)
  br i1 %i.bc, label %.lr.ph.i.i.preheader, label %bb.q

bb.q:                                             ; preds = %BIGNUM_LEN.exit
  br i1 %.not.i.i142, label %.preheader72.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %BIGNUM_LEN.exit, %bb.q
  %i.bw = phi ptr [ %.0118222, %bb.q ], [ %.0119221, %BIGNUM_LEN.exit ]
  %.062.i.i263 = phi i64 [ %.0120220, %bb.q ], [ %i.ay, %BIGNUM_LEN.exit ]
  %.063.i.i261 = phi ptr [ %i.bu, %bb.q ], [ %i.bn, %BIGNUM_LEN.exit ] ; 3 uses
  %.064.i.i259 = phi i64 [ %i.ay, %bb.q ], [ %.0120220, %BIGNUM_LEN.exit ] ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.2217 ; 2 uses
  br label %.lr.ph.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i, %bb.q
  %.062.i.i264 = phi i64 [ %.0120220, %bb.q ], [ %.062.i.i263, %.lr.ph.i.i ] ; 12 uses
  %.063.i.i262 = phi ptr [ %i.bu, %bb.q ], [ %.063.i.i261, %.lr.ph.i.i ] ; 9 uses
  %.064.i.i260 = phi i64 [ 0, %bb.q ], [ %.064.i.i259, %.lr.ph.i.i ] ; 3 uses
  %.058.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.cv, %.lr.ph.i.i ] ; 2 uses
  %.063.i.i262291 = ptrtoaddr ptr %.063.i.i262 to i64
  %i.by = icmp ult i64 %.064.i.i260, %.062.i.i264
  br i1 %i.by, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cw, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cv, %.lr.ph.i.i ]
  %i.bz = getelementptr [4 x i8], ptr %i.bx, i64 %.05779.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !44
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %.063.i.i261, i64 %.05779.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !44
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add nuw nsw i64 %.05878.i.i, %i.cb
  %i.cg = add nuw nsw i64 %i.cf, %i.ce            ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = getelementptr [4 x i8], ptr %i.bn, i64 %.05779.i.i
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !44
  %i.cj = lshr i64 %i.cg, 32
  %i.ck = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.bx, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !44
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %.063.i.i261, i64 %i.ck
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add nuw nsw i64 %i.cj, %i.cn
  %i.cs = add nuw nsw i64 %i.cr, %i.cq            ; 2 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr [4 x i8], ptr %i.bn, i64 %i.ck
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !44
  %i.cv = lshr i64 %i.cs, 32                      ; 2 uses
  %i.cw = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cw, %.064.i.i259
  br i1 %exitcond.not.i.i.1, label %.preheader72.i.i, label %.lr.ph.i.i, !llvm.loop !3

.preheader70.i.i:                                 ; preds = %bb.s, %.preheader72.i.i
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i, %.preheader72.i.i ], [ %i.di, %bb.s ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i260, %.preheader72.i.i ], [ %.062.i.i264, %bb.s ] ; 4 uses
  %i.cx = icmp ult i64 %.1.lcssa.i.i, %i.ay
  br i1 %i.cx, label %.lr.ph88.preheader.i.i, label %bary_add.exit

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.cy = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.cy, label %.loopexit71.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.cz = getelementptr [4 x i8], ptr %i.bn, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.cz, align 4, !tbaa !44
  %i.da = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.da, %i.ay
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.s
  %.182.i.i = phi i64 [ %i.dj, %bb.s ], [ %.064.i.i260, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.di, %bb.s ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.db = icmp eq i64 %.15981.i.i, 0
  br i1 %i.db, label %.loopexit71.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph83.i.i
  %i.dc = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.182.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !44
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr [4 x i8], ptr %i.bn, i64 %.182.i.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !44
  %i.di = lshr i64 %i.df, 32                      ; 2 uses
  %i.dj = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.dj, %.062.i.i264
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !4

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.r, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.da, %bb.r ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
  %i.dk = icmp eq ptr %.063.i.i262, %i.bn
  %i.dl = icmp eq i64 %.062.i.i264, %i.ay
  %or.cond.i.i = and i1 %i.dk, %i.dl
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.dm = icmp ult i64 %.3.i.i, %.062.i.i264
  br i1 %i.dm, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.dn = sub nuw i64 %.062.i.i264, %.3.i.i       ; 3 uses
  %min.iters.check294 = icmp ult i64 %i.dn, 8
  %i.do = sub i64 %.063.i.i262291, %i.bj
  %diff.check292 = icmp ugt i64 %i.do, -32
  %or.cond305 = select i1 %min.iters.check294, i1 true, i1 %diff.check292
  br i1 %or.cond305, label %.lr.ph91.i.i.preheader309, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph91.i.i.preheader
  %n.vec296 = and i64 %i.dn, -8                   ; 3 uses
  %i.dp = add i64 %.3.i.i, %n.vec296
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next301, %vector.body297 ] ; 2 uses
  %i.dq = add nuw i64 %.3.i.i, %index298          ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.dq ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %wide.load299 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !44
  %wide.load300 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !44
  %i.dt = getelementptr [4 x i8], ptr %i.bn, i64 %i.dq ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 16
  store <4 x i32> %wide.load299, ptr %i.dt, align 4, !tbaa !44
  store <4 x i32> %wide.load300, ptr %i.du, align 4, !tbaa !44
  %index.next301 = add nuw i64 %index298, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.dv, label %middle.block302, label %vector.body297, !llvm.loop !245

middle.block302:                                  ; preds = %vector.body297
  %cmp.n303 = icmp eq i64 %i.dn, %n.vec296
  br i1 %cmp.n303, label %.preheader.i.i, label %.lr.ph91.i.i.preheader309

.lr.ph91.i.i.preheader309:                        ; preds = %.lr.ph91.i.i.preheader, %middle.block302
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.dp, %middle.block302 ] ; 4 uses
  %i.dw = sub i64 %.062.i.i264, %.490.i.i.ph
  %xtraiter = and i64 %i.dw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader309, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.ea, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader309 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader309 ]
  %i.dx = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.490.i.i.prol
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !44
  %i.dz = getelementptr [4 x i8], ptr %i.bn, i64 %.490.i.i.prol
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !44
  %i.ea = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !246

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader309
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader309 ], [ %i.ea, %.lr.ph91.i.i.prol ]
  %i.eb = sub i64 %.490.i.i.ph, %.062.i.i264
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block302, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i264, %middle.block302 ], [ %.062.i.i264, %.lr.ph91.i.i ], [ %.062.i.i264, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.ed = icmp ult i64 %.4.lcssa.i.i, %i.ay
  br i1 %i.ed, label %.lr.ph94.preheader.i.i, label %bary_add.exit

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.ee = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.bn, i64 %i.ee
  %i.ef = sub nuw i64 %i.ay, %.4.lcssa.i.i
  %i.eg = shl i64 %i.ef, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.eg, i1 false), !tbaa !44
  br label %bary_add.exit

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.ew, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.490.i.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !44
  %i.ej = getelementptr [4 x i8], ptr %i.bn, i64 %.490.i.i
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !44
  %i.ek = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !44
  %i.en = getelementptr [4 x i8], ptr %i.bn, i64 %i.ek
  store i32 %i.em, ptr %i.en, align 4, !tbaa !44
  %i.eo = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !44
  %i.er = getelementptr [4 x i8], ptr %i.bn, i64 %i.eo
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !44
  %i.es = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.et = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !44
  %i.ev = getelementptr [4 x i8], ptr %i.bn, i64 %i.es
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !44
  %i.ew = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.ew, %.062.i.i264
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !247

bb.t:                                             ; preds = %bb.m
  %.not137 = icmp ugt i64 %.0120220, %i.bm
  br i1 %.not137, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = getelementptr [4 x i8], ptr %.0118222, i64 %.2217 ; 13 uses
  %i.ey = load i64, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.ez = and i64 %i.ey, 16384
  %.not.i144 = icmp eq i64 %i.ez, 0
  br i1 %.not.i144, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fa = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.fb = load i64, ptr %i.ba, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit149

bb.w:                                             ; preds = %bb.u
  %i.fc = lshr i64 %i.ey, 15
  %i.fd = and i64 %i.fc, 511
  br label %BIGNUM_LEN.exit149

BIGNUM_LEN.exit149:                               ; preds = %bb.v, %bb.w
  %.0.i145198 = phi ptr [ %i.ba, %bb.w ], [ %i.fa, %bb.v ]
  %.0.i148 = phi i64 [ %i.fd, %bb.w ], [ %i.fb, %bb.v ]
  %i.fe = getelementptr [4 x i8], ptr %.0119221, i64 %.2217 ; 2 uses
  %i.ff = getelementptr [4 x i8], ptr %i.fe, i64 %.0120220
  %i.fg = add i64 %.0120220, %.2217
  %i.fh = sub i64 %4, %i.fg
  call fastcc void @bary_mul(ptr noundef %i.ex, i64 noundef %i.bm, ptr noundef %.0.i145198, i64 noundef %.0.i148, ptr noundef %i.ff, i64 noundef %i.fh)
  %i.fi = icmp ugt i64 %i.bm, %.0120220
  br i1 %i.fi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %BIGNUM_LEN.exit149
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %BIGNUM_LEN.exit149
  %.064.i.i150 = phi i64 [ %.0120220, %bb.x ], [ %i.bm, %BIGNUM_LEN.exit149 ] ; 7 uses
  %.063.i.i151 = phi ptr [ %i.ex, %bb.x ], [ %i.fe, %BIGNUM_LEN.exit149 ] ; 12 uses
  %.062.i.i152 = phi i64 [ %i.bm, %bb.x ], [ %.0120220, %BIGNUM_LEN.exit149 ] ; 8 uses
  %i.fj = phi ptr [ %.0119221, %bb.x ], [ %.0118222, %BIGNUM_LEN.exit149 ]
  %.063.i.i151285 = ptrtoaddr ptr %.063.i.i151 to i64
  %.not.i.i154 = icmp eq i64 %.064.i.i150, 0
  br i1 %.not.i.i154, label %.preheader72.i.i159, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %bb.y
  %i.fk = getelementptr [4 x i8], ptr %i.fj, i64 %.2217 ; 3 uses
  %xtraiter319 = and i64 %.064.i.i150, 1
  %i.fl = icmp eq i64 %umin318, 1
  br i1 %i.fl, label %.lr.ph.i.i155.epil.preheader, label %.lr.ph.i.i155.preheader.new

.lr.ph.i.i155.preheader.new:                      ; preds = %.lr.ph.i.i155.preheader
  %unroll_iter = and i64 %.064.i.i150, -2
  br label %.lr.ph.i.i155

.preheader72.i.i159.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i155
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod320.not, label %.preheader72.i.i159, label %.lr.ph.i.i155.epil.preheader

.lr.ph.i.i155.epil.preheader:                     ; preds = %.preheader72.i.i159.loopexit.unr-lcssa, %.lr.ph.i.i155.preheader
  %.05779.i.i156.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.gv, %.preheader72.i.i159.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i157.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.gu, %.preheader72.i.i159.loopexit.unr-lcssa ]
  %lcmp.mod322 = trunc i64 %.064.i.i150 to i1
  call void @llvm.assume(i1 %lcmp.mod322)
  %i.fm = getelementptr [4 x i8], ptr %i.fk, i64 %.05779.i.i156.epil.init
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !44
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156.epil.init
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !44
  %i.fr = zext i32 %i.fq to i64
  %i.fs = add nuw nsw i64 %.05878.i.i157.epil.init, %i.fo
  %i.ft = add nuw nsw i64 %i.fs, %i.fr            ; 2 uses
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = getelementptr [4 x i8], ptr %i.ex, i64 %.05779.i.i156.epil.init
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !44
  %i.fw = lshr i64 %i.ft, 32
  br label %.preheader72.i.i159

.preheader72.i.i159:                              ; preds = %.lr.ph.i.i155.epil.preheader, %.preheader72.i.i159.loopexit.unr-lcssa, %bb.y
  %.058.lcssa.i.i160 = phi i64 [ 0, %bb.y ], [ %i.gu, %.preheader72.i.i159.loopexit.unr-lcssa ], [ %i.fw, %.lr.ph.i.i155.epil.preheader ]
  %i.fx = icmp ult i64 %.064.i.i150, %.062.i.i152
  br i1 %i.fx, label %.lr.ph83.i.i180, label %bary_add.exit

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155, %.lr.ph.i.i155.preheader.new
  %.05779.i.i156 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.gv, %.lr.ph.i.i155 ] ; 5 uses
  %.05878.i.i157 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.gu, %.lr.ph.i.i155 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %niter.next.1, %.lr.ph.i.i155 ]
  %i.fy = getelementptr [4 x i8], ptr %i.fk, i64 %.05779.i.i156
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !44
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !44
  %i.gd = zext i32 %i.gc to i64
  %i.ge = add nuw nsw i64 %.05878.i.i157, %i.ga
  %i.gf = add nuw nsw i64 %i.ge, %i.gd            ; 2 uses
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = getelementptr [4 x i8], ptr %i.ex, i64 %.05779.i.i156
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !44
  %i.gi = lshr i64 %i.gf, 32
  %i.gj = or disjoint i64 %.05779.i.i156, 1       ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %i.fk, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !44
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.gj
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !44
  %i.gp = zext i32 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gi, %i.gm
  %i.gr = add nuw nsw i64 %i.gq, %i.gp            ; 2 uses
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = getelementptr [4 x i8], ptr %i.ex, i64 %i.gj
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !44
  %i.gu = lshr i64 %i.gr, 32                      ; 3 uses
  %i.gv = add nuw i64 %.05779.i.i156, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i159.loopexit.unr-lcssa, label %.lr.ph.i.i155, !llvm.loop !3

.lr.ph83.i.i180:                                  ; preds = %.preheader72.i.i159, %bb.z
  %indvar286 = phi i64 [ %indvar.next287, %bb.z ], [ 0, %.preheader72.i.i159 ] ; 2 uses
  %.182.i.i181 = phi i64 [ %i.he, %bb.z ], [ %.064.i.i150, %.preheader72.i.i159 ] ; 7 uses
  %.15981.i.i182 = phi i64 [ %i.hd, %bb.z ], [ %.058.lcssa.i.i160, %.preheader72.i.i159 ]
  %i.gw = icmp eq i64 %.15981.i.i182, 0
  br i1 %i.gw, label %.loopexit71.i.i169, label %bb.z

bb.z:                                             ; preds = %.lr.ph83.i.i180
  %i.gx = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.182.i.i181
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !44
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = getelementptr [4 x i8], ptr %i.ex, i64 %.182.i.i181
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !44
  %i.hd = lshr i64 %i.ha, 32
  %i.he = add i64 %.182.i.i181, 1                 ; 2 uses
  %exitcond102.not.i.i183 = icmp eq i64 %i.he, %.062.i.i152
  %indvar.next287 = add i64 %indvar286, 1
  br i1 %exitcond102.not.i.i183, label %bary_add.exit, label %.lr.ph83.i.i180, !llvm.loop !4

.loopexit71.i.i169:                               ; preds = %.lr.ph83.i.i180
  %i.hf = icmp ne ptr %.063.i.i151, %i.ex
  %i.hg = icmp ne i64 %.062.i.i152, %i.bm
  %or.cond.i.i171.not275 = or i1 %i.hf, %i.hg
  %i.hh = icmp ult i64 %.182.i.i181, %.062.i.i152
  %or.cond = and i1 %or.cond.i.i171.not275, %i.hh
  br i1 %or.cond, label %.lr.ph91.i.i177.preheader, label %bary_add.exit

.lr.ph91.i.i177.preheader:                        ; preds = %.loopexit71.i.i169
  %i.hi = add i64 %.064.i.i150, %indvar286
  %i.hj = sub i64 %.062.i.i152, %i.hi             ; 3 uses
  %min.iters.check = icmp ult i64 %i.hj, 8
  %i.hk = sub i64 %.063.i.i151285, %i.bl
  %diff.check = icmp ugt i64 %i.hk, -32
  %or.cond306 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond306, label %.lr.ph91.i.i177.preheader307, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i177.preheader
  %n.vec = and i64 %i.hj, -8                      ; 3 uses
  %i.hl = add i64 %.182.i.i181, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hm = add nuw i64 %.182.i.i181, %index        ; 2 uses
  %i.hn = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.hm ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 16
  %wide.load = load <4 x i32>, ptr %i.hn, align 4, !tbaa !44
  %wide.load288 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !44
  %i.hp = getelementptr [4 x i8], ptr %i.ex, i64 %i.hm ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 16
  store <4 x i32> %wide.load, ptr %i.hp, align 4, !tbaa !44
  store <4 x i32> %wide.load288, ptr %i.hq, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hj, %n.vec
  br i1 %cmp.n, label %bary_add.exit, label %.lr.ph91.i.i177.preheader307

.lr.ph91.i.i177.preheader307:                     ; preds = %.lr.ph91.i.i177.preheader, %middle.block
  %.490.i.i178.ph = phi i64 [ %.182.i.i181, %.lr.ph91.i.i177.preheader ], [ %i.hl, %middle.block ] ; 4 uses
  %i.hs = sub i64 %.062.i.i152, %.490.i.i178.ph
  %xtraiter323 = and i64 %i.hs, 3                 ; 2 uses
  %lcmp.mod324.not = icmp eq i64 %xtraiter323, 0
  br i1 %lcmp.mod324.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol

.lr.ph91.i.i177.prol:                             ; preds = %.lr.ph91.i.i177.preheader307, %.lr.ph91.i.i177.prol
  %.490.i.i178.prol = phi i64 [ %i.hw, %.lr.ph91.i.i177.prol ], [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader307 ] ; 3 uses
  %prol.iter325 = phi i64 [ %prol.iter325.next, %.lr.ph91.i.i177.prol ], [ 0, %.lr.ph91.i.i177.preheader307 ]
  %i.ht = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178.prol
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !44
  %i.hv = getelementptr [4 x i8], ptr %i.ex, i64 %.490.i.i178.prol
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !44
  %i.hw = add nuw i64 %.490.i.i178.prol, 1        ; 2 uses
  %prol.iter325.next = add i64 %prol.iter325, 1   ; 2 uses
  %prol.iter325.cmp.not = icmp eq i64 %prol.iter325.next, %xtraiter323
  br i1 %prol.iter325.cmp.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol, !llvm.loop !249

.lr.ph91.i.i177.prol.loopexit:                    ; preds = %.lr.ph91.i.i177.prol, %.lr.ph91.i.i177.preheader307
  %.490.i.i178.unr = phi i64 [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader307 ], [ %i.hw, %.lr.ph91.i.i177.prol ]
  %i.hx = sub i64 %.490.i.i178.ph, %.062.i.i152
  %i.hy = icmp ugt i64 %i.hx, -4
  br i1 %i.hy, label %bary_add.exit, label %.lr.ph91.i.i177

.lr.ph91.i.i177:                                  ; preds = %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177
  %.490.i.i178 = phi i64 [ %i.io, %.lr.ph91.i.i177 ], [ %.490.i.i178.unr, %.lr.ph91.i.i177.prol.loopexit ] ; 6 uses
  %i.hz = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !44
  %i.ib = getelementptr [4 x i8], ptr %i.ex, i64 %.490.i.i178
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !44
  %i.ic = add nuw i64 %.490.i.i178, 1             ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !44
  %i.if = getelementptr [4 x i8], ptr %i.ex, i64 %i.ic
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !44
  %i.ig = add nuw i64 %.490.i.i178, 2             ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !44
  %i.ij = getelementptr [4 x i8], ptr %i.ex, i64 %i.ig
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !44
  %i.ik = add nuw i64 %.490.i.i178, 3             ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !44
  %i.in = getelementptr [4 x i8], ptr %i.ex, i64 %i.ik
  store i32 %i.im, ptr %i.in, align 4, !tbaa !44
  %i.io = add nuw i64 %.490.i.i178, 4             ; 2 uses
  %exitcond106.not.i.i179.3 = icmp eq i64 %i.io, %.062.i.i152
  br i1 %exitcond106.not.i.i179.3, label %bary_add.exit, label %.lr.ph91.i.i177, !llvm.loop !250

bb.aa:                                            ; preds = %bb.t
  %i.ip = icmp ugt i64 %i.bm, 4611686018427387903
  br i1 %i.ip, label %bb.ab, label %rbimpl_size_mul_or_raise.exit, !prof !54

bb.ab:                                            ; preds = %bb.aa
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.bm) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.aa
  %i.iq = getelementptr [4 x i8], ptr %.0119221, i64 %.2217
  %i.ir = getelementptr [4 x i8], ptr %.0118222, i64 %.2217
  %i.is = shl nuw i64 %i.bm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ir, ptr noundef nonnull readonly align 1 %i.iq, i64 noundef range(i64 1, 0) %i.is, i1 noundef false) #23
  br label %bary_add.exit

bary_add.exit:                                    ; preds = %bb.z, %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177, %middle.block, %.preheader72.i.i159, %.preheader70.i.i, %bb.r, %rbimpl_size_mul_or_raise.exit, %.loopexit71.i.i169, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i
  %i.it = add i64 %.2217, %i.ay                   ; 2 uses
  %i.iu = icmp ult i64 %i.it, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %i.iu, label %bb.m, label %bb.ac, !llvm.loop !251

bb.ac:                                            ; preds = %bary_add.exit
  %i.iv = add i32 %.0110223, 1                    ; 2 uses
  %i.iw = call fastcc i64 @power_cache_get_power(i32 noundef %6, i32 noundef %i.iv, ptr noundef null)
  %i.ix = icmp ult i64 %i.ay, %4
  br i1 %i.ix, label %.preheader202, label %.preheader, !llvm.loop !252

.lr.ph226:                                        ; preds = %.preheader, %bb.ad
  %.0124225 = phi i64 [ %i.jc, %bb.ad ], [ %4, %.preheader ] ; 3 uses
  %i.iy = getelementptr [4 x i8], ptr %.0119.lcssa, i64 %.0124225
  %i.iz = getelementptr i8, ptr %i.iy, i64 -4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !44
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %.lr.ph226
  %i.jc = add i64 %.0124225, -1                   ; 2 uses
  %.not = icmp eq i64 %i.jc, 0
  br i1 %.not, label %.critedge, label %.lr.ph226, !llvm.loop !253

.critedge:                                        ; preds = %.lr.ph226, %bb.ad, %.preheader
  %.0124.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.ad ], [ %.0124225, %.lr.ph226 ] ; 5 uses
  %i.jd = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.je = call fastcc i64 @bignew_1(i64 noundef %i.jd, i64 noundef %.0124.lcssa, i32 noundef %0) ; 2 uses
  %i.jf = inttoptr i64 %i.je to ptr               ; 3 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !48
  %i.jh = and i64 %i.jg, 16384
  %.not.i187 = icmp eq i64 %i.jh, 0
  br i1 %.not.i187, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.ji = getelementptr i8, ptr %i.jf, i64 16
  br label %BIGNUM_DIGITS.exit189

bb.af:                                            ; preds = %.critedge
  %i.jj = getelementptr i8, ptr %i.jf, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit189

BIGNUM_DIGITS.exit189:                            ; preds = %bb.ae, %bb.af
  %.0.i188 = phi ptr [ %i.ji, %bb.ae ], [ %i.jk, %bb.af ]
  %i.jl = icmp ugt i64 %.0124.lcssa, 4611686018427387903
  br i1 %i.jl, label %bb.ag, label %rbimpl_size_mul_or_raise.exit190, !prof !54

bb.ag:                                            ; preds = %BIGNUM_DIGITS.exit189
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.0124.lcssa) #25
  unreachable

rbimpl_size_mul_or_raise.exit190:                 ; preds = %BIGNUM_DIGITS.exit189
  %.not.i191 = icmp eq i64 %.0124.lcssa, 0
  br i1 %.not.i191, label %ruby_nonempty_memcpy.exit193, label %bb.ah

bb.ah:                                            ; preds = %rbimpl_size_mul_or_raise.exit190
  %i.jm = shl nuw i64 %.0124.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i188, ptr noundef nonnull readonly align 1 %.0119.lcssa, i64 noundef range(i64 1, 0) %i.jm, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit193

ruby_nonempty_memcpy.exit193:                     ; preds = %rbimpl_size_mul_or_raise.exit190, %bb.ah
  %i.jn = load i64, ptr %i.a, align 8, !tbaa !46
  %.not135 = icmp eq i64 %i.jn, 0
  br i1 %.not135, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %ruby_nonempty_memcpy.exit193
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ruby_nonempty_memcpy.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.je
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_str_convert_to_inum(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !46
  call void @rb_must_asciicompat(i64 noundef %i.d) #23
  %i.e = load i64, ptr %i.a, align 8, !tbaa !46
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !66
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.b, ptr null
  %i.n = call i64 @rb_int_parse_cstr(ptr noundef %i.k, i64 noundef %i.m, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
end_hunk_0
begin_hunk_1_@rb_big_plus:bb.a
  %i.bp = and i64 %1, -4
  %i.bq = or i64 %i.bo, %i.bp                     ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bq, i64 range(i64 1, 0) %i.bq, i64 61)
  %i.bs = bitcast i64 %i.br to double
  br label %rb_float_value_inline.exit

bb.s:                                             ; preds = %rb_big2dbl.exit
  %i.bt = inttoptr i64 %1 to ptr
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !76
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.q, %bb.r, %bb.s
  %.0.i28 = phi double [ %i.bv, %bb.s ], [ %i.bs, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.bw = fadd double %.0.i27, %.0.i28            ; 2 uses
  %i.bx = bitcast double %i.bw to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.bx, 3458764513820540928
  br i1 %cond.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %rb_float_value_inline.exit
  %i.by = lshr i64 %i.bx, 60
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = and i32 %i.bz, 7
  %i.cb = add nsw i32 %i.ca, -5
  %i.cc = icmp ult i32 %i.cb, -2
  br i1 %i.cc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.bx, i64 range(i64 3458764513820540929, 3458764513820540928) %i.bx, i64 3)
  %i.ce = and i64 %i.cd, -4
  %i.cf = or disjoint i64 %i.ce, 2
  br label %bignorm.exit

bb.v:                                             ; preds = %bb.t
  %i.cg = icmp eq i64 %i.bx, 0
  br i1 %i.cg, label %bignorm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %rb_float_value_inline.exit
  %i.ch = tail call i64 @rb_float_new_in_heap(double noundef %i.bw) #23
  br label %bignorm.exit

RB_FLOAT_TYPE_P.exit.thread35:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ci = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef 43) #23
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.j, %bb.w, %bb.v, %bb.u, %bb.o, %bb.n, %bb.l, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f, %RB_FLOAT_TYPE_P.exit.thread35, %bb.d, %bb.c
  %.021 = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.ci, %RB_FLOAT_TYPE_P.exit.thread35 ], [ -9223372036854775806, %bb.v ], [ %i.q, %bb.f ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bi, %bb.n ], [ %i.q, %bb.o ], [ %i.bg, %bb.l ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.cf, %bb.u ], [ %i.ch, %bb.w ], [ 1, %bb.j ]
  ret i64 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @bigsub_int(i64 noundef %0, i64 noundef range(i64 0, 4611686018427387905) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48   ; 3 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 16
  %i.k = lshr i64 %i.d, 15
  %i.l = and i64 %i.k, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i92 = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %.0.i83 = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ] ; 10 uses
  %.0.i92201 = ptrtoaddr ptr %.0.i92 to i64
  %i.m = icmp eq i64 %.0.i83, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %.neg = mul nsw i64 %1, -2
  %i.n = or disjoint i64 %.neg, 1
  br label %rb_long2num_inline.exit

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i83, i64 2) ; 5 uses
  %i.o = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.p = trunc i64 %i.d to i32
  %i.q = lshr i32 %i.p, 13
  %i.r = and i32 %i.q, 1
  %i.s = tail call fastcc i64 @bignew_1(i64 noundef %i.o, i64 noundef %spec.store.select, i32 noundef %i.r) ; 8 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 16 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48   ; 6 uses
  %i.v = and i64 %i.u, 16384
  %.not.i85 = icmp eq i64 %i.v, 0                 ; 3 uses
  br i1 %.not.i85, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.t, i64 16
  br label %BIGNUM_DIGITS.exit87

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.t, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit87

BIGNUM_DIGITS.exit87:                             ; preds = %bb.f, %bb.g
  %.0.i86 = phi ptr [ %i.w, %bb.f ], [ %i.y, %bb.g ] ; 10 uses
  %.0.i86200 = ptrtoaddr ptr %.0.i86 to i64
  %i.z = icmp sgt i64 %.0.i83, 0
  br i1 %i.z, label %.lr.ph, label %.lr.ph123

.preheader96:                                     ; preds = %bb.i, %bb.h
  %.lcssa232 = phi i64 [ %i.ah, %bb.h ], [ %i.ar, %bb.i ] ; 2 uses
  %.lcssa231 = phi i64 [ %i.ai, %bb.h ], [ 0, %bb.i ]
  %i.aa = icmp eq i64 %.0.i83, 1
  br i1 %i.aa, label %.lr.ph123, label %.loopexit97

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit87
  %i.ab = icmp eq i64 %1, 0
  br i1 %i.ab, label %.preheader94.preheader, label %bb.h

.preheader94.preheader:                           ; preds = %bb.i, %.lr.ph.1, %.lr.ph
  %.068116.lcssa = phi i64 [ 0, %.lr.ph ], [ 1, %.lr.ph.1 ], [ 2, %bb.i ] ; 3 uses
  %.070115.lcssa = phi i64 [ 0, %.lr.ph ], [ %i.ah, %.lr.ph.1 ], [ %i.ar, %bb.i ]
  br label %.preheader94

bb.h:                                             ; preds = %.lr.ph
  %i.ac = load i32, ptr %.0.i92, align 4, !tbaa !44
  %i.ad = zext i32 %i.ac to i64
  %i.ae = and i64 %1, 4294967295
  %i.af = sub nsw i64 %i.ad, %i.ae                ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %.0.i86, align 4, !tbaa !44
  %i.ah = ashr i64 %i.af, 32                      ; 3 uses
  %i.ai = lshr i64 %1, 32                         ; 3 uses
  %exitcond.not = icmp eq i64 %.0.i83, 1
  br i1 %exitcond.not, label %.preheader96, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.preheader94.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph.1
  %i.ak = getelementptr i8, ptr %.0.i92, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44
  %i.am = zext i32 %i.al to i64
  %i.an = sub nsw i64 %i.am, %i.ai
  %i.ao = add nsw i64 %i.an, %i.ah                ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr i8, ptr %.0.i86, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !44
  %i.ar = ashr i64 %i.ao, 32                      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.0.i83, 2
  br i1 %exitcond.not.1, label %.preheader96, label %.preheader94.preheader

.lr.ph123:                                        ; preds = %.preheader96, %BIGNUM_DIGITS.exit87
  %.1122.ph = phi i64 [ %1, %BIGNUM_DIGITS.exit87 ], [ %.lcssa231, %.preheader96 ] ; 3 uses
  %.169121.ph = phi i64 [ 0, %BIGNUM_DIGITS.exit87 ], [ %.0.i83, %.preheader96 ] ; 4 uses
  %.171120.ph = phi i64 [ 0, %BIGNUM_DIGITS.exit87 ], [ %.lcssa232, %.preheader96 ] ; 2 uses
  %i.as = icmp eq i64 %.1122.ph, 0
  br i1 %i.as, label %.loopexit98, label %bb.j

bb.j:                                             ; preds = %.lr.ph123
  %i.at = and i64 %.1122.ph, 4294967295
  %i.au = sub nsw i64 %.171120.ph, %i.at          ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr [4 x i8], ptr %.0.i86, i64 %.169121.ph
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !44
  %i.ax = ashr i64 %i.au, 32                      ; 3 uses
  %i.ay = lshr i64 %.1122.ph, 32                  ; 2 uses
  %i.az = add nuw nsw i64 %.169121.ph, 1          ; 3 uses
  %exitcond143.not = icmp eq i64 %i.az, %spec.store.select
  br i1 %exitcond143.not, label %.loopexit97, label %.lr.ph123.1

.lr.ph123.1:                                      ; preds = %bb.j
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %.loopexit98, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.1
  %i.bb = sub nsw i64 %i.ax, %i.ay                ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr [4 x i8], ptr %.0.i86, i64 %i.az
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !44
  %i.be = ashr i64 %i.bb, 32                      ; 2 uses
  %i.bf = or disjoint i64 %.169121.ph, 2          ; 2 uses
  %exitcond143.not.1 = icmp eq i64 %i.bf, %spec.store.select
  br i1 %exitcond143.not.1, label %.loopexit97, label %.loopexit98

.preheader94:                                     ; preds = %.preheader94.preheader, %bb.l
  %indvar = phi i64 [ %indvar.next, %bb.l ], [ 0, %.preheader94.preheader ] ; 3 uses
  %.272 = phi i64 [ %i.by, %bb.l ], [ %.070115.lcssa, %.preheader94.preheader ]
  %.2 = phi i64 [ %i.bz, %bb.l ], [ %.068116.lcssa, %.preheader94.preheader ] ; 6 uses
  %i.bg = icmp eq i64 %.272, 0
  br i1 %i.bg, label %.preheader.preheader, label %bb.l

.preheader.preheader:                             ; preds = %.preheader94
  %i.bh = add nuw nsw i64 %.068116.lcssa, 1
  %i.bi = add nuw i64 %indvar, %i.bh
  %2 = tail call i64 @llvm.smax.i64(i64 %.0.i83, i64 %i.bi)
  %3 = add i64 %indvar, %.068116.lcssa
  %i.bj = sub i64 %2, %3                          ; 3 uses
  %min.iters.check203 = icmp ult i64 %i.bj, 8
  %i.bk = sub i64 %.0.i92201, %.0.i86200
  %diff.check = icmp ugt i64 %i.bk, -32
  %or.cond = select i1 %min.iters.check203, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.preheader216, label %vector.ph204

vector.ph204:                                     ; preds = %.preheader.preheader
  %n.vec205 = and i64 %i.bj, -8                   ; 3 uses
  %i.bl = add i64 %.2, %n.vec205                  ; 2 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next210, %vector.body206 ] ; 2 uses
  %i.bm = add nuw i64 %.2, %index207              ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %.0.i92, i64 %i.bm ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %wide.load208 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !44
  %wide.load209 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !44
  %i.bp = getelementptr [4 x i8], ptr %.0.i86, i64 %i.bm ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <4 x i32> %wide.load208, ptr %i.bp, align 4, !tbaa !44
  store <4 x i32> %wide.load209, ptr %i.bq, align 4, !tbaa !44
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.br, label %middle.block211, label %vector.body206, !llvm.loop !290

middle.block211:                                  ; preds = %vector.body206
  %cmp.n212 = icmp eq i64 %i.bj, %n.vec205
  br i1 %cmp.n212, label %.loopexit, label %.preheader.preheader216

.preheader.preheader216:                          ; preds = %.preheader.preheader, %middle.block211
  %.5.ph = phi i64 [ %.2, %.preheader.preheader ], [ %i.bl, %middle.block211 ]
  br label %.preheader

bb.l:                                             ; preds = %.preheader94
  %i.bs = getelementptr [4 x i8], ptr %.0.i92, i64 %.2
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !44
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, -1                   ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = getelementptr [4 x i8], ptr %.0.i86, i64 %.2
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !44
  %i.by = ashr i64 %i.bv, 32                      ; 2 uses
  %i.bz = add nuw nsw i64 %.2, 1                  ; 3 uses
  %i.ca = icmp slt i64 %i.bz, %.0.i83
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ca, label %.preheader94, label %.loopexit95

.loopexit95:                                      ; preds = %bb.l, %bb.m
  %.373 = phi i64 [ -1, %bb.m ], [ %i.by, %bb.l ] ; 2 uses
  %.3 = phi i64 [ %i.ce, %bb.m ], [ %i.bz, %bb.l ] ; 2 uses
  %i.cb = icmp slt i64 %.3, %spec.store.select
  br i1 %i.cb, label %.loopexit98, label %.loopexit97

.loopexit98:                                      ; preds = %.lr.ph123, %.lr.ph123.1, %bb.k, %.loopexit95
  %.474 = phi i64 [ %.373, %.loopexit95 ], [ %.171120.ph, %.lr.ph123 ], [ %i.ax, %.lr.ph123.1 ], [ %i.be, %bb.k ]
  %.4 = phi i64 [ %.3, %.loopexit95 ], [ %.169121.ph, %.lr.ph123 ], [ %i.az, %.lr.ph123.1 ], [ %i.bf, %bb.k ] ; 3 uses
  %i.cc = icmp eq i64 %.474, 0
  br i1 %i.cc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit98
  %i.cd = getelementptr [4 x i8], ptr %.0.i86, i64 %.4
  store i32 -1, ptr %i.cd, align 4, !tbaa !44
  %i.ce = add nsw i64 %.4, 1
  br label %.loopexit95, !llvm.loop !291

.preheader:                                       ; preds = %.preheader.preheader216, %.preheader
  %.5 = phi i64 [ %i.ci, %.preheader ], [ %.5.ph, %.preheader.preheader216 ] ; 3 uses
  %i.cf = getelementptr [4 x i8], ptr %.0.i92, i64 %.5
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44
  %i.ch = getelementptr [4 x i8], ptr %.0.i86, i64 %.5
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !44
  %i.ci = add nuw nsw i64 %.5, 1                  ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %.0.i83
  br i1 %i.cj, label %.preheader, label %.loopexit, !llvm.loop !292

.loopexit:                                        ; preds = %.preheader, %middle.block211, %bb.n
  %.6 = phi i64 [ %i.cm, %bb.n ], [ %i.bl, %middle.block211 ], [ %i.ci, %.preheader ] ; 2 uses
  %i.ck = icmp slt i64 %.6, %spec.store.select
  br i1 %i.ck, label %bb.n, label %.loopexit97.thread

bb.n:                                             ; preds = %.loopexit, %.loopexit98
  %.7 = phi i64 [ %.6, %.loopexit ], [ %.4, %.loopexit98 ] ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %.0.i86, i64 %.7
  store i32 0, ptr %i.cl, align 4, !tbaa !44
  %i.cm = add nsw i64 %.7, 1
  br label %.loopexit, !llvm.loop !293

.loopexit97:                                      ; preds = %bb.j, %bb.k, %.preheader96, %.loopexit95
  %.777 = phi i64 [ %.lcssa232, %.preheader96 ], [ %.373, %.loopexit95 ], [ %i.ax, %bb.j ], [ %i.be, %bb.k ]
  %i.cn = icmp slt i64 %.777, 0
  br i1 %i.cn, label %bb.o, label %.loopexit97.thread

bb.o:                                             ; preds = %.loopexit97
  br i1 %.not.i85, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = lshr i64 %i.u, 15
  %i.cp = and i64 %i.co, 511
  %i.cq = getelementptr i8, ptr %i.t, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cr = getelementptr i8, ptr %i.t, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !49
  %i.ct = getelementptr i8, ptr %i.t, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.q, %bb.p
  %.0.i8.i = phi i64 [ %i.cp, %bb.p ], [ %i.cs, %bb.q ] ; 5 uses
  %.0.i5.i = phi ptr [ %i.cq, %bb.p ], [ %i.cu, %bb.q ] ; 4 uses
  %.not27.i.i = icmp eq i64 %.0.i8.i, 0
  br i1 %.not27.i.i, label %bary_2comp.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i, %bb.r
  %.023.i.i = phi i64 [ %i.cx, %bb.r ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 5 uses
  %i.cv = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.023.i.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !44 ; 2 uses
  %.not.i6.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i6.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cx = add nuw i64 %.023.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cx, %.0.i8.i
  br i1 %exitcond.not.i.i, label %bary_2comp.exit.i, label %.lr.ph.i.i, !llvm.loop !8

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cy = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.023.i.i
  %i.cz = sub i32 0, %i.cw
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !44
  %.124.i.i = add i64 %.023.i.i, 1                ; 4 uses
  %i.da = icmp ult i64 %.124.i.i, %.0.i8.i
  br i1 %i.da, label %.lr.ph26.i.i.preheader, label %get2comp.exit

.lr.ph26.i.i.preheader:                           ; preds = %bb.s
  %i.db = xor i64 %.023.i.i, -1
  %i.dc = add i64 %.0.i8.i, %i.db                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check, label %.lr.ph26.i.i.preheader218, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.i.preheader
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  %i.dd = add i64 %.124.i.i, %n.vec
  %i.de = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.124.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %index ; 3 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.df, align 4, !tbaa !44
  %wide.load199 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !44
  %i.dh = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.di = xor <4 x i32> %wide.load199, splat (i32 -1)
  store <4 x i32> %i.dh, ptr %i.df, align 4, !tbaa !44
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %get2comp.exit, label %.lr.ph26.i.i.preheader218

.lr.ph26.i.i.preheader218:                        ; preds = %.lr.ph26.i.i.preheader, %middle.block
  %.125.i.i.ph = phi i64 [ %.124.i.i, %.lr.ph26.i.i.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.lr.ph26.i.i.preheader218, %.lr.ph26.i.i
  %.125.i.i = phi i64 [ %.1.i.i, %.lr.ph26.i.i ], [ %.125.i.i.ph, %.lr.ph26.i.i.preheader218 ] ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.125.i.i ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !44
  %i.dm = xor i32 %i.dl, -1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !44
  %.1.i.i = add nuw i64 %.125.i.i, 1              ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %.1.i.i, %.0.i8.i
  br i1 %exitcond31.not.i.i, label %get2comp.exit, label %.lr.ph26.i.i, !llvm.loop !295

bary_2comp.exit.i:                                ; preds = %bb.r, %BIGNUM_DIGITS.exit.i
  br i1 %.not.i85, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bary_2comp.exit.i
  %i.dn = getelementptr i8, ptr %i.t, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit.i.i

bb.u:                                             ; preds = %bary_2comp.exit.i
  %i.dp = lshr i64 %i.u, 15
  %i.dq = and i64 %i.dp, 511
  br label %BIGNUM_LEN.exit.i.i

BIGNUM_LEN.exit.i.i:                              ; preds = %bb.u, %bb.t
  %.0.i.i.i = phi i64 [ %i.dq, %bb.u ], [ %i.do, %bb.t ]
  %i.dr = add i64 %.0.i.i.i, 1
  tail call void @rb_big_resize(i64 noundef %i.s, i64 noundef %i.dr)
  %i.ds = load i64, ptr %i.t, align 8, !tbaa !48  ; 3 uses
  %i.dt = and i64 %i.ds, 16384
  %.not.i4.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i4.i.i, label %bb.v, label %bb.w
end_hunk_1
begin_hunk_2_@bigsub_int:bb.a

bb.ad:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.fw = icmp ult i64 %i.fr, 4611686018427387905
  br i1 %i.fw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.neg.i.i = mul nsw i64 %i.fr, -2
  %i.fx = or disjoint i64 %.neg.i.i, 1
  br label %rb_long2num_inline.exit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.s, i64 noundef %.02232.i.i)
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.aa, %bb.af, %bb.ae, %bb.ac, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %.loopexit97.thread, %bb.d
  %.0 = phi i64 [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.n, %bb.d ], [ %i.fv, %bb.ac ], [ %i.s, %.loopexit97.thread ], [ %i.s, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.fx, %bb.ae ], [ %i.s, %bb.af ], [ 1, %bb.aa ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @bigadd_int(i64 noundef %0, i64 noundef range(i64 0, 4611686018427387905) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48   ; 3 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 16
  %i.k = lshr i64 %i.d, 15
  %i.l = and i64 %i.k, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i84 = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %.0.i77 = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ] ; 10 uses
  %.0.i84163 = ptrtoaddr ptr %.0.i84 to i64
  %i.m = icmp eq i64 %.0.i77, 0
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.n = icmp samesign ult i64 %1, 4611686018427387904
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i64 %1, 1
  %i.p = or disjoint i64 %i.o, 1
  br label %rb_long2num_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.r = tail call fastcc i64 @bignew_1(i64 noundef %i.q, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %i.u = and i64 %i.t, 16384
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store i64 4611686018427387904, ptr %i.v, align 8
  %i.w = and i64 %i.t, -16744449
  %i.x = or disjoint i64 %i.w, 65536
  store i64 %i.x, ptr %i.s, align 8, !tbaa !48
  br label %rb_long2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  store i64 4611686018427387904, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %i.s, i64 16
  store i64 2, ptr %i.aa, align 8, !tbaa !49
  br label %rb_long2num_inline.exit

bb.i:                                             ; preds = %BIGNUM_LEN.exit
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i77, i64 2) ; 3 uses
  %i.ab = add nuw i64 %spec.store.select, 1       ; 4 uses
  %i.ac = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.ad = trunc i64 %i.d to i32
  %i.ae = lshr i32 %i.ad, 13
  %i.af = and i32 %i.ae, 1
  %i.ag = tail call fastcc i64 @bignew_1(i64 noundef %i.ac, i64 noundef %i.ab, i32 noundef %i.af) ; 7 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 7 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = and i64 %i.ai, 16384
  %.not.i79 = icmp eq i64 %i.aj, 0
  br i1 %.not.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  br label %BIGNUM_DIGITS.exit81

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ah, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit81

BIGNUM_DIGITS.exit81:                             ; preds = %bb.j, %bb.k
  %.0.i80 = phi ptr [ %i.ak, %bb.j ], [ %i.am, %bb.k ] ; 10 uses
  %.0.i80162 = ptrtoaddr ptr %.0.i80 to i64
  %i.an = icmp sgt i64 %.0.i77, 0
  br i1 %i.an, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %bb.l, %bb.m, %BIGNUM_DIGITS.exit81
  %.070.lcssa = phi i64 [ %1, %BIGNUM_DIGITS.exit81 ], [ %i.aw, %bb.l ], [ 0, %bb.m ] ; 3 uses
  %.065.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit81 ], [ %i.av, %bb.l ], [ %i.bf, %bb.m ] ; 2 uses
  %.064.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit81 ], [ %.0.i77, %bb.m ], [ %.0.i77, %bb.l ] ; 6 uses
  %i.ao = icmp slt i64 %.064.lcssa, %i.ab
  br i1 %i.ao, label %.lr.ph110, label %.loopexit89

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit81
  %i.ap = icmp eq i64 %1, 0
  br i1 %i.ap, label %.preheader86.preheader, label %bb.l

.preheader86.preheader:                           ; preds = %bb.m, %.lr.ph.1, %.lr.ph
  %.064104.lcssa = phi i64 [ 0, %.lr.ph ], [ 1, %.lr.ph.1 ], [ 2, %bb.m ] ; 3 uses
  %.065103.lcssa = phi i64 [ 0, %.lr.ph ], [ %i.av, %.lr.ph.1 ], [ %i.bf, %bb.m ]
  br label %.preheader86

bb.l:                                             ; preds = %.lr.ph
  %i.aq = load i32, ptr %.0.i84, align 4, !tbaa !44
  %i.ar = zext i32 %i.aq to i64
  %i.as = and i64 %1, 4294967295
  %i.at = add nuw nsw i64 %i.as, %i.ar            ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %.0.i80, align 4, !tbaa !44
  %i.av = lshr i64 %i.at, 32                      ; 3 uses
  %i.aw = lshr i64 %1, 32                         ; 3 uses
  %exitcond.not = icmp eq i64 %.0.i77, 1
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.l
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.preheader86.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph.1
  %i.ay = getelementptr i8, ptr %.0.i84, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !44
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.av, %i.aw
  %i.bc = add nuw nsw i64 %i.bb, %i.ba            ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr i8, ptr %.0.i80, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !44
  %i.bf = lshr i64 %i.bc, 32                      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.0.i77, 2
  br i1 %exitcond.not.1, label %.preheader88, label %.preheader86.preheader

.lr.ph110:                                        ; preds = %.preheader88
  %i.bg = icmp eq i64 %.070.lcssa, 0
  br i1 %i.bg, label %.loopexit90, label %bb.n

bb.n:                                             ; preds = %.lr.ph110
  %i.bh = and i64 %.070.lcssa, 4294967295
  %i.bi = add nuw nsw i64 %.065.lcssa, %i.bh      ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr [4 x i8], ptr %.0.i80, i64 %.064.lcssa
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !44
  %i.bl = lshr i64 %i.bi, 32                      ; 2 uses
  %i.bm = lshr i64 %.070.lcssa, 32                ; 2 uses
  %i.bn = add nuw i64 %.064.lcssa, 1              ; 3 uses
  %exitcond124.not = icmp eq i64 %.064.lcssa, %spec.store.select
  br i1 %exitcond124.not, label %.loopexit89, label %.lr.ph110.1

.lr.ph110.1:                                      ; preds = %bb.n
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.loopexit90, label %bb.o

bb.o:                                             ; preds = %.lr.ph110.1
  %i.bp = add nuw nsw i64 %i.bl, %i.bm            ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr [4 x i8], ptr %.0.i80, i64 %i.bn
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !44
  %exitcond124.not.1 = icmp eq i64 %i.bn, %spec.store.select
  br i1 %exitcond124.not.1, label %.loopexit89, label %.lr.ph110.2

.lr.ph110.2:                                      ; preds = %bb.o
  %i.bs = lshr i64 %i.bp, 32
  %i.bt = add nuw i64 %.064.lcssa, 2
  br label %.loopexit90

.preheader86:                                     ; preds = %.preheader86.preheader, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %.preheader86.preheader ] ; 3 uses
  %.267 = phi i64 [ %i.cm, %bb.p ], [ %.065103.lcssa, %.preheader86.preheader ]
  %.2 = phi i64 [ %i.cn, %bb.p ], [ %.064104.lcssa, %.preheader86.preheader ] ; 6 uses
  %i.bu = icmp eq i64 %.267, 0
  br i1 %i.bu, label %.preheader.preheader, label %bb.p

.preheader.preheader:                             ; preds = %.preheader86
  %i.bv = add nuw nsw i64 %.064104.lcssa, 1
  %i.bw = add nuw i64 %indvar, %i.bv
  %2 = tail call i64 @llvm.smax.i64(i64 %.0.i77, i64 %i.bw)
  %3 = add i64 %indvar, %.064104.lcssa
  %i.bx = sub i64 %2, %3                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.bx, 8
  %i.by = sub i64 %.0.i84163, %.0.i80162
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.preheader167, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.bx, -8                      ; 3 uses
  %i.bz = add i64 %.2, %n.vec                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = add nuw i64 %.2, %index                 ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.0.i84, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !44
  %wide.load164 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !44
  %i.cd = getelementptr [4 x i8], ptr %.0.i80, i64 %i.ca ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !44
  store <4 x i32> %wide.load164, ptr %i.ce, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader167

.preheader.preheader167:                          ; preds = %.preheader.preheader, %middle.block
  %.5.ph = phi i64 [ %.2, %.preheader.preheader ], [ %i.bz, %middle.block ]
  br label %.preheader

bb.p:                                             ; preds = %.preheader86
  %i.cg = getelementptr [4 x i8], ptr %.0.i84, i64 %.2
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr [4 x i8], ptr %.0.i80, i64 %.2
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !44
  %i.cm = lshr i64 %i.cj, 32                      ; 2 uses
  %i.cn = add nuw nsw i64 %.2, 1                  ; 3 uses
  %i.co = icmp slt i64 %i.cn, %.0.i77
  %indvar.next = add i64 %indvar, 1
  br i1 %i.co, label %.preheader86, label %.loopexit87

.loopexit87:                                      ; preds = %bb.p, %bb.q
  %.368 = phi i64 [ 0, %bb.q ], [ %i.cm, %bb.p ]
  %.3 = phi i64 [ %i.cs, %bb.q ], [ %i.cn, %bb.p ] ; 2 uses
  %i.cp = icmp slt i64 %.3, %i.ab
  br i1 %i.cp, label %.loopexit90, label %.loopexit89

.loopexit90:                                      ; preds = %.lr.ph110, %.lr.ph110.1, %.lr.ph110.2, %.loopexit87
  %.469 = phi i64 [ %.368, %.loopexit87 ], [ %.065.lcssa, %.lr.ph110 ], [ %i.bl, %.lr.ph110.1 ], [ %i.bs, %.lr.ph110.2 ]
  %.4 = phi i64 [ %.3, %.loopexit87 ], [ %.064.lcssa, %.lr.ph110 ], [ %i.bn, %.lr.ph110.1 ], [ %i.bt, %.lr.ph110.2 ] ; 3 uses
  %i.cq = icmp eq i64 %.469, 0
  br i1 %i.cq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit90
  %i.cr = getelementptr [4 x i8], ptr %.0.i80, i64 %.4
  store i32 1, ptr %i.cr, align 4, !tbaa !44
  %i.cs = add nsw i64 %.4, 1
  br label %.loopexit87, !llvm.loop !299

.preheader:                                       ; preds = %.preheader.preheader167, %.preheader
  %.5 = phi i64 [ %i.cw, %.preheader ], [ %.5.ph, %.preheader.preheader167 ] ; 3 uses
  %i.ct = getelementptr [4 x i8], ptr %.0.i84, i64 %.5
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !44
  %i.cv = getelementptr [4 x i8], ptr %.0.i80, i64 %.5
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !44
  %i.cw = add nuw nsw i64 %.5, 1                  ; 3 uses
  %i.cx = icmp slt i64 %i.cw, %.0.i77
  br i1 %i.cx, label %.preheader, label %.loopexit, !llvm.loop !300

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.r
  %.6 = phi i64 [ %i.da, %bb.r ], [ %i.bz, %middle.block ], [ %i.cw, %.preheader ] ; 2 uses
  %i.cy = icmp slt i64 %.6, %i.ab
  br i1 %i.cy, label %bb.r, label %.loopexit89

bb.r:                                             ; preds = %.loopexit, %.loopexit90
  %.7 = phi i64 [ %.6, %.loopexit ], [ %.4, %.loopexit90 ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %.0.i80, i64 %.7
  store i32 0, ptr %i.cz, align 4, !tbaa !44
  %i.da = add nsw i64 %.7, 1
  br label %.loopexit, !llvm.loop !301

.loopexit89:                                      ; preds = %bb.n, %bb.o, %.preheader88, %.loopexit, %.loopexit87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !303
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.dc = load volatile i64, ptr %i.db, align 8, !tbaa !46 ; 0 uses
  %i.dd = icmp eq i64 %i.ag, 0
  %i.de = and i64 %i.ag, 7
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = or i1 %i.dd, %i.df
  br i1 %i.dg, label %rb_long2num_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %.loopexit89
  %i.dh = load i64, ptr %i.ah, align 8, !tbaa !48 ; 4 uses
  %i.di = and i64 %i.dh, 31
  %i.dj = icmp eq i64 %i.di, 10
  br i1 %i.dj, label %bb.s, label %rb_long2num_inline.exit

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.dk = and i64 %i.dh, 16384
  %.not.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = lshr i64 %i.dh, 15
  %i.dm = and i64 %i.dl, 511
  %i.dn = getelementptr i8, ptr %i.ah, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.do = getelementptr i8, ptr %i.ah, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !49
  %i.dq = getelementptr i8, ptr %i.ah, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.u, %bb.t
  %.0.i28.i.i = phi i64 [ %i.dm, %bb.t ], [ %i.dp, %bb.u ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.dn, %bb.t ], [ %i.dr, %bb.u ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %rb_long2num_inline.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.v
  %indvar179 = phi i64 [ %indvar.next180, %bb.v ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02232.i.i = phi i64 [ %i.dw, %bb.v ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 7 uses
  %i.ds = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02232.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !44
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dw = add i64 %.02232.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.dw, 0
  %indvar.next180 = add i64 %indvar179, 1
  br i1 %cond.i.i, label %rb_long2num_inline.exit, label %.lr.ph.i.i, !llvm.loop !15

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dx = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.dx, label %bb.aa, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.dy = sub i64 %indvar179, %.0.i28.i.i
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.3, %.lr.ph36.i.i ], [ %.02232.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.i.i.preheader ]
  %indvars.iv.next40.i.i.3 = add nsw i64 %indvars.iv39.i.i, -4 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !16

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.ea = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv39.i.i
  %i.eb = getelementptr i8, ptr %i.ea, i64 -12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !44
  %i.ed = zext i32 %i.ec to i64
  %i.ee = shl nuw i64 %i.ed, 32
  %i.ef = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.3
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !44
  %i.eh = zext i32 %i.eg to i64
  %i.ei = or disjoint i64 %i.ee, %i.eh
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.i.i.preheader
  %indvars.iv39.i.i.epil.init = phi i64 [ %.02232.i.i, %.lr.ph36.i.i.preheader ], [ %indvars.iv.next40.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.i.i.preheader ], [ %i.ei, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %indvars.iv39.i.i.epil = phi i64 [ %indvars.iv.next40.i.i.epil, %.lr.ph36.i.i.epil ], [ %indvars.iv39.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.en, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %indvars.iv.next40.i.i.epil = add nsw i64 %indvars.iv39.i.i.epil, -1 ; 2 uses
  %i.ej = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.epil
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !44
  %i.em = zext i32 %i.el to i64
  %i.en = or disjoint i64 %i.ej, %i.em            ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.02232.i.i
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !302

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.eo = icmp ult i64 %i.ej, 4611686018427387904
  %i.ep = and i64 %i.dh, 8192
  %.not.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i, label %bb.y, label %bb.w

end_hunk_2
