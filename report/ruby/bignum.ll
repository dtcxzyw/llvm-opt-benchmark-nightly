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
  %.0110223 = phi i32 [ %i.in, %bb.ac ], [ 0, %.preheader203 ]
  %.0118222 = phi ptr [ %.0119221, %bb.ac ], [ %i.k, %.preheader203 ] ; 8 uses
  %.0119221 = phi ptr [ %.0118222, %bb.ac ], [ %i.j, %.preheader203 ] ; 6 uses
  %.0120220 = phi i64 [ %i.ay, %bb.ac ], [ 2, %.preheader203 ] ; 16 uses
  %.0121219 = phi i64 [ %i.io, %bb.ac ], [ %.1.i, %.preheader203 ]
  %.0118222284 = ptrtoaddr ptr %.0118222 to i64   ; 2 uses
  %i.ay = shl i64 %.0120220, 1                    ; 13 uses
  %i.az = inttoptr i64 %.0121219 to ptr           ; 4 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 4 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  %i.bc = icmp sgt i64 %.0120220, 0
  %.not.i.i142 = icmp eq i64 %i.ay, 0
  %i.bd = shl i64 %.0120220, 3                    ; 2 uses
  %i.be = mul i64 %.0120220, -2
  br label %bb.m

.preheader:                                       ; preds = %bb.ac, %.preheader203
  %.0119.lcssa = phi ptr [ %i.j, %.preheader203 ], [ %.0118222, %bb.ac ] ; 2 uses
  %.not224 = icmp eq i64 %4, 0
  br i1 %.not224, label %.critedge, label %.lr.ph226

bb.m:                                             ; preds = %.preheader202, %bary_add.exit
  %indvar.a = phi i64 [ 0, %.preheader202 ], [ %indvar.next, %bary_add.exit ] ; 4 uses
  %.2217 = phi i64 [ 0, %.preheader202 ], [ %i.il, %bary_add.exit ] ; 11 uses
  %i.bf = mul i64 %i.be, %indvar.a
  %i.bg = add i64 %4, %i.bf
  %umin = call i64 @llvm.umin.i64(i64 %.0120220, i64 %i.bg)
  %i.bh = sub nuw i64 %4, %.2217                  ; 10 uses
  %.not136 = icmp ugt i64 %i.ay, %i.bh
  br i1 %.not136, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr [4 x i8], ptr %.0118222, i64 %.2217 ; 14 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.bk = and i64 %i.bj, 16384
  %.not.i139 = icmp eq i64 %i.bk, 0
  br i1 %.not.i139, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.bm = load i64, ptr %i.ba, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.p:                                             ; preds = %bb.n
  %i.bn = lshr i64 %i.bj, 15
  %i.bo = and i64 %i.bn, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.o, %bb.p
  %.0.i195 = phi ptr [ %i.ba, %bb.p ], [ %i.bl, %bb.o ]
  %.0.i141 = phi i64 [ %i.bo, %bb.p ], [ %i.bm, %bb.o ]
  %i.bp = getelementptr [4 x i8], ptr %.0119221, i64 %.2217 ; 3 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %.0120220
  call fastcc void @bary_mul(ptr noundef %i.bi, i64 noundef %i.ay, ptr noundef %.0.i195, i64 noundef %.0.i141, ptr noundef %i.bq, i64 noundef %.0120220)
  br i1 %i.bc, label %.lr.ph.i.i.preheader, label %bb.q

bb.q:                                             ; preds = %BIGNUM_LEN.exit
  br i1 %.not.i.i142, label %.preheader72.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %BIGNUM_LEN.exit, %bb.q
  %i.br = phi ptr [ %.0118222, %bb.q ], [ %.0119221, %BIGNUM_LEN.exit ]
  %.062.i.i263 = phi i64 [ %.0120220, %bb.q ], [ %i.ay, %BIGNUM_LEN.exit ]
  %.063.i.i261 = phi ptr [ %i.bp, %bb.q ], [ %i.bi, %BIGNUM_LEN.exit ] ; 3 uses
  %.064.i.i259 = phi i64 [ %i.ay, %bb.q ], [ %.0120220, %BIGNUM_LEN.exit ] ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %.2217 ; 2 uses
  br label %.lr.ph.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i, %bb.q
  %.062.i.i264 = phi i64 [ %.0120220, %bb.q ], [ %.062.i.i263, %.lr.ph.i.i ] ; 12 uses
  %.063.i.i262 = phi ptr [ %i.bp, %bb.q ], [ %.063.i.i261, %.lr.ph.i.i ] ; 9 uses
  %.064.i.i260 = phi i64 [ 0, %bb.q ], [ %.064.i.i259, %.lr.ph.i.i ] ; 3 uses
  %.058.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.cq, %.lr.ph.i.i ] ; 2 uses
  %.063.i.i262291 = ptrtoaddr ptr %.063.i.i262 to i64
  %i.bt = icmp ult i64 %.064.i.i260, %.062.i.i264
  br i1 %i.bt, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cr, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cq, %.lr.ph.i.i ]
  %i.bu = getelementptr [4 x i8], ptr %i.bs, i64 %.05779.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr %.063.i.i261, i64 %.05779.i.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !44
  %i.bz = zext i32 %i.by to i64
  %i.ca = add nuw nsw i64 %.05878.i.i, %i.bw
  %i.cb = add nuw nsw i64 %i.ca, %i.bz            ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr [4 x i8], ptr %i.bi, i64 %.05779.i.i
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !44
  %i.ce = lshr i64 %i.cb, 32
  %i.cf = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.bs, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr [4 x i8], ptr %.063.i.i261, i64 %i.cf
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !44
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add nuw nsw i64 %i.ce, %i.ci
  %i.cn = add nuw nsw i64 %i.cm, %i.cl            ; 2 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = getelementptr [4 x i8], ptr %i.bi, i64 %i.cf
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !44
  %i.cq = lshr i64 %i.cn, 32                      ; 2 uses
  %i.cr = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cr, %.064.i.i259
  br i1 %exitcond.not.i.i.1, label %.preheader72.i.i, label %.lr.ph.i.i, !llvm.loop !3

.preheader70.i.i:                                 ; preds = %bb.s, %.preheader72.i.i
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i, %.preheader72.i.i ], [ %i.dd, %bb.s ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i260, %.preheader72.i.i ], [ %.062.i.i264, %bb.s ] ; 4 uses
  %i.cs = icmp ult i64 %.1.lcssa.i.i, %i.ay
  br i1 %i.cs, label %.lr.ph88.preheader.i.i, label %bary_add.exit

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.ct = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.ct, label %.loopexit71.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.cu = getelementptr [4 x i8], ptr %i.bi, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.cu, align 4, !tbaa !44
  %i.cv = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.cv, %i.ay
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.s
  %.182.i.i = phi i64 [ %i.de, %bb.s ], [ %.064.i.i260, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.dd, %bb.s ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cw = icmp eq i64 %.15981.i.i, 0
  br i1 %i.cw, label %.loopexit71.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph83.i.i
  %i.cx = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.182.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !44
  %i.cz = zext i32 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr [4 x i8], ptr %i.bi, i64 %.182.i.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !44
  %i.dd = lshr i64 %i.da, 32                      ; 2 uses
  %i.de = add nuw i64 %.182.i.i, 1                ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.de, %.062.i.i264
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !4

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.r, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.cv, %bb.r ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 7 uses
  %i.df = icmp eq ptr %.063.i.i262, %i.bi
  %i.dg = icmp eq i64 %.062.i.i264, %i.ay
  %or.cond.i.i = and i1 %i.df, %i.dg
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %7 = icmp ult i64 %.3.i.i, %.062.i.i264
  br i1 %7, label %.preheader69.i.i.a, label %.preheader.i.i

.preheader69.i.i.a:                               ; preds = %.preheader69.i.i
  %8 = sub nuw i64 %.062.i.i264, %.3.i.i          ; 3 uses
  %i.dh = icmp ult i64 %8, 8
  br i1 %i.dh, label %.lr.ph91.i.i.preheader309, label %.lr.ph91.i.i.preheader

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i.a
  %9 = mul i64 %indvar.a, %i.bd
  %10 = add i64 %9, %.0118222284
  %i.di = sub i64 %.063.i.i262291, %10
  %diff.check292 = icmp ugt i64 %i.di, -32
  br i1 %diff.check292, label %.lr.ph91.i.i.preheader309, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph91.i.i.preheader
  %n.vec296 = and i64 %8, -8                      ; 3 uses
  %i.dj = add i64 %.3.i.i, %n.vec296
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next301, %vector.body297 ] ; 2 uses
  %i.dk = add nuw i64 %.3.i.i, %index298          ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %wide.load299 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !44
  %wide.load300 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !44
  %i.dn = getelementptr [4 x i8], ptr %i.bi, i64 %i.dk ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store <4 x i32> %wide.load299, ptr %i.dn, align 4, !tbaa !44
  store <4 x i32> %wide.load300, ptr %i.do, align 4, !tbaa !44
  %index.next301 = add nuw i64 %index298, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.dp, label %middle.block302, label %vector.body297, !llvm.loop !245

middle.block302:                                  ; preds = %vector.body297
  %cmp.n303 = icmp eq i64 %8, %n.vec296
  br i1 %cmp.n303, label %.preheader.i.i, label %.lr.ph91.i.i.preheader309

.lr.ph91.i.i.preheader309:                        ; preds = %.lr.ph91.i.i.preheader, %.preheader69.i.i.a, %middle.block302
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %.3.i.i, %.preheader69.i.i.a ], [ %i.dj, %middle.block302 ] ; 4 uses
  %i.dq = sub i64 %.062.i.i264, %.490.i.i.ph
  %xtraiter = and i64 %i.dq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader309, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.du, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader309 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader309 ]
  %i.dr = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.490.i.i.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.dt = getelementptr [4 x i8], ptr %i.bi, i64 %.490.i.i.prol
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !44
  %i.du = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !246

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader309
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader309 ], [ %i.du, %.lr.ph91.i.i.prol ]
  %i.dv = sub i64 %.490.i.i.ph, %.062.i.i264
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block302, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i264, %middle.block302 ], [ %.062.i.i264, %.lr.ph91.i.i ], [ %.062.i.i264, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.dx = icmp ult i64 %.4.lcssa.i.i, %i.ay
  br i1 %i.dx, label %.lr.ph94.preheader.i.i, label %bary_add.exit

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.dy = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.bi, i64 %i.dy
  %i.dz = sub nuw i64 %i.ay, %.4.lcssa.i.i
  %i.ea = shl i64 %i.dz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ea, i1 false), !tbaa !44
  br label %bary_add.exit

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.eq, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.eb = getelementptr [4 x i8], ptr %.063.i.i262, i64 %.490.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !44
  %i.ed = getelementptr [4 x i8], ptr %i.bi, i64 %.490.i.i
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !44
  %i.ee = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !44
  %i.eh = getelementptr [4 x i8], ptr %i.bi, i64 %i.ee
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !44
  %i.ei = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.el = getelementptr [4 x i8], ptr %i.bi, i64 %i.ei
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !44
  %i.em = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %.063.i.i262, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !44
  %i.ep = getelementptr [4 x i8], ptr %i.bi, i64 %i.em
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !44
  %i.eq = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.eq, %.062.i.i264
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !247

bb.t:                                             ; preds = %bb.m
  %.not137 = icmp ugt i64 %.0120220, %i.bh
  br i1 %.not137, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = getelementptr [4 x i8], ptr %.0118222, i64 %.2217 ; 13 uses
  %i.es = load i64, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.et = and i64 %i.es, 16384
  %.not.i144 = icmp eq i64 %i.et, 0
  br i1 %.not.i144, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eu = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.ev = load i64, ptr %i.ba, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit149

bb.w:                                             ; preds = %bb.u
  %i.ew = lshr i64 %i.es, 15
  %i.ex = and i64 %i.ew, 511
  br label %BIGNUM_LEN.exit149

BIGNUM_LEN.exit149:                               ; preds = %bb.v, %bb.w
  %.0.i145198 = phi ptr [ %i.ba, %bb.w ], [ %i.eu, %bb.v ]
  %.0.i148 = phi i64 [ %i.ex, %bb.w ], [ %i.ev, %bb.v ]
  %i.ey = getelementptr [4 x i8], ptr %.0119221, i64 %.2217 ; 2 uses
  %i.ez = getelementptr [4 x i8], ptr %i.ey, i64 %.0120220
  %i.fa = add i64 %.0120220, %.2217
  %i.fb = sub i64 %4, %i.fa
  call fastcc void @bary_mul(ptr noundef %i.er, i64 noundef %i.bh, ptr noundef %.0.i145198, i64 noundef %.0.i148, ptr noundef %i.ez, i64 noundef %i.fb)
  %i.fc = icmp ugt i64 %i.bh, %.0120220
  br i1 %i.fc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %BIGNUM_LEN.exit149
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %BIGNUM_LEN.exit149
  %.064.i.i150 = phi i64 [ %.0120220, %bb.x ], [ %i.bh, %BIGNUM_LEN.exit149 ] ; 7 uses
  %.063.i.i151 = phi ptr [ %i.er, %bb.x ], [ %i.ey, %BIGNUM_LEN.exit149 ] ; 12 uses
  %.062.i.i152 = phi i64 [ %i.bh, %bb.x ], [ %.0120220, %BIGNUM_LEN.exit149 ] ; 8 uses
  %i.fd = phi ptr [ %.0119221, %bb.x ], [ %.0118222, %BIGNUM_LEN.exit149 ]
  %.063.i.i151285 = ptrtoaddr ptr %.063.i.i151 to i64
  %.not.i.i154 = icmp eq i64 %.064.i.i150, 0
  br i1 %.not.i.i154, label %.preheader72.i.i159, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %bb.y
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %.2217 ; 3 uses
  %xtraiter318 = and i64 %.064.i.i150, 1
  %i.ff = icmp eq i64 %umin, 1
  br i1 %i.ff, label %.lr.ph.i.i155.epil.preheader, label %.lr.ph.i.i155.preheader.new

.lr.ph.i.i155.preheader.new:                      ; preds = %.lr.ph.i.i155.preheader
  %unroll_iter = and i64 %.064.i.i150, -2
  br label %.lr.ph.i.i155

.preheader72.i.i159.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i155
  %lcmp.mod319.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod319.not, label %.preheader72.i.i159, label %.lr.ph.i.i155.epil.preheader

.lr.ph.i.i155.epil.preheader:                     ; preds = %.preheader72.i.i159.loopexit.unr-lcssa, %.lr.ph.i.i155.preheader
  %.05779.i.i156.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.gp, %.preheader72.i.i159.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i157.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.go, %.preheader72.i.i159.loopexit.unr-lcssa ]
  %lcmp.mod321 = trunc i64 %.064.i.i150 to i1
  call void @llvm.assume(i1 %lcmp.mod321)
  %i.fg = getelementptr [4 x i8], ptr %i.fe, i64 %.05779.i.i156.epil.init
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !44
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156.epil.init
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !44
  %i.fl = zext i32 %i.fk to i64
  %i.fm = add nuw nsw i64 %.05878.i.i157.epil.init, %i.fi
  %i.fn = add nuw nsw i64 %i.fm, %i.fl            ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = getelementptr [4 x i8], ptr %i.er, i64 %.05779.i.i156.epil.init
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !44
  %i.fq = lshr i64 %i.fn, 32
  br label %.preheader72.i.i159

.preheader72.i.i159:                              ; preds = %.lr.ph.i.i155.epil.preheader, %.preheader72.i.i159.loopexit.unr-lcssa, %bb.y
  %.058.lcssa.i.i160 = phi i64 [ 0, %bb.y ], [ %i.go, %.preheader72.i.i159.loopexit.unr-lcssa ], [ %i.fq, %.lr.ph.i.i155.epil.preheader ]
  %i.fr = icmp ult i64 %.064.i.i150, %.062.i.i152
  br i1 %i.fr, label %.lr.ph83.i.i180, label %bary_add.exit

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155, %.lr.ph.i.i155.preheader.new
  %.05779.i.i156 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.gp, %.lr.ph.i.i155 ] ; 5 uses
  %.05878.i.i157 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.go, %.lr.ph.i.i155 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %niter.next.1, %.lr.ph.i.i155 ]
  %i.fs = getelementptr [4 x i8], ptr %i.fe, i64 %.05779.i.i156
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !44
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !44
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add nuw nsw i64 %.05878.i.i157, %i.fu
  %i.fz = add nuw nsw i64 %i.fy, %i.fx            ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = getelementptr [4 x i8], ptr %i.er, i64 %.05779.i.i156
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !44
  %i.gc = lshr i64 %i.fz, 32
  %i.gd = or disjoint i64 %.05779.i.i156, 1       ; 3 uses
  %i.ge = getelementptr [4 x i8], ptr %i.fe, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !44
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.gd
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !44
  %i.gj = zext i32 %i.gi to i64
  %i.gk = add nuw nsw i64 %i.gc, %i.gg
  %i.gl = add nuw nsw i64 %i.gk, %i.gj            ; 2 uses
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = getelementptr [4 x i8], ptr %i.er, i64 %i.gd
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !44
  %i.go = lshr i64 %i.gl, 32                      ; 3 uses
  %i.gp = add nuw i64 %.05779.i.i156, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i159.loopexit.unr-lcssa, label %.lr.ph.i.i155, !llvm.loop !3

.lr.ph83.i.i180:                                  ; preds = %.preheader72.i.i159, %bb.z
  %indvar286 = phi i64 [ %indvar.next287.a, %bb.z ], [ 0, %.preheader72.i.i159 ] ; 2 uses
  %.182.i.i181 = phi i64 [ %i.gy, %bb.z ], [ %.064.i.i150, %.preheader72.i.i159 ] ; 8 uses
  %.15981.i.i182 = phi i64 [ %i.gx, %bb.z ], [ %.058.lcssa.i.i160, %.preheader72.i.i159 ]
  %i.gq = icmp eq i64 %.15981.i.i182, 0
  br i1 %i.gq, label %.loopexit71.i.i169, label %bb.z

bb.z:                                             ; preds = %.lr.ph83.i.i180
  %i.gr = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.182.i.i181
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !44
  %i.gt = zext i32 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = getelementptr [4 x i8], ptr %i.er, i64 %.182.i.i181
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !44
  %i.gx = lshr i64 %i.gu, 32
  %i.gy = add nuw i64 %.182.i.i181, 1             ; 2 uses
  %exitcond102.not.i.i183 = icmp eq i64 %i.gy, %.062.i.i152
  %indvar.next287.a = add i64 %indvar286, 1
  br i1 %exitcond102.not.i.i183, label %bary_add.exit, label %.lr.ph83.i.i180, !llvm.loop !4

.loopexit71.i.i169:                               ; preds = %.lr.ph83.i.i180
  %i.gz = icmp ne ptr %.063.i.i151, %i.er
  %i.ha = icmp ne i64 %.062.i.i152, %i.bh
  %or.cond.i.i171.not275 = or i1 %i.gz, %i.ha
  %i.hb = icmp ult i64 %.182.i.i181, %.062.i.i152
  %or.cond = and i1 %or.cond.i.i171.not275, %i.hb
  br i1 %or.cond, label %.lr.ph91.i.i177.preheader, label %bary_add.exit

.lr.ph91.i.i177.preheader:                        ; preds = %.loopexit71.i.i169
  %11 = add i64 %.064.i.i150, %indvar286
  %12 = sub i64 %.062.i.i152, %11                 ; 3 uses
  %min.iters.check = icmp ult i64 %12, 8
  br i1 %min.iters.check, label %.lr.ph91.i.i177.preheader307, label %.lr.ph91.i.i177.preheader.a

.lr.ph91.i.i177.preheader.a:                      ; preds = %.lr.ph91.i.i177.preheader
  %13 = mul i64 %indvar.a, %i.bd
  %14 = add i64 %13, %.0118222284
  %i.hc = sub i64 %.063.i.i151285, %14
  %diff.check = icmp ugt i64 %i.hc, -32
  br i1 %diff.check, label %.lr.ph91.i.i177.preheader307, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i177.preheader.a
  %n.vec = and i64 %12, -8                        ; 3 uses
  %i.hd = add i64 %.182.i.i181, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = add nuw i64 %.182.i.i181, %index        ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.he ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  %wide.load = load <4 x i32>, ptr %i.hf, align 4, !tbaa !44
  %wide.load288 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !44
  %i.hh = getelementptr [4 x i8], ptr %i.er, i64 %i.he ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  store <4 x i32> %wide.load, ptr %i.hh, align 4, !tbaa !44
  store <4 x i32> %wide.load288, ptr %i.hi, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %bary_add.exit, label %.lr.ph91.i.i177.preheader307

.lr.ph91.i.i177.preheader307:                     ; preds = %.lr.ph91.i.i177.preheader.a, %.lr.ph91.i.i177.preheader, %middle.block
  %.490.i.i178.ph = phi i64 [ %.182.i.i181, %.lr.ph91.i.i177.preheader.a ], [ %.182.i.i181, %.lr.ph91.i.i177.preheader ], [ %i.hd, %middle.block ] ; 4 uses
  %i.hk = sub i64 %.062.i.i152, %.490.i.i178.ph
  %xtraiter322 = and i64 %i.hk, 3                 ; 2 uses
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol

.lr.ph91.i.i177.prol:                             ; preds = %.lr.ph91.i.i177.preheader307, %.lr.ph91.i.i177.prol
  %.490.i.i178.prol = phi i64 [ %i.ho, %.lr.ph91.i.i177.prol ], [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader307 ] ; 3 uses
  %prol.iter324 = phi i64 [ %prol.iter324.next, %.lr.ph91.i.i177.prol ], [ 0, %.lr.ph91.i.i177.preheader307 ]
  %i.hl = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178.prol
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !44
  %i.hn = getelementptr [4 x i8], ptr %i.er, i64 %.490.i.i178.prol
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !44
  %i.ho = add nuw i64 %.490.i.i178.prol, 1        ; 2 uses
  %prol.iter324.next = add i64 %prol.iter324, 1   ; 2 uses
  %prol.iter324.cmp.not = icmp eq i64 %prol.iter324.next, %xtraiter322
  br i1 %prol.iter324.cmp.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol, !llvm.loop !249

.lr.ph91.i.i177.prol.loopexit:                    ; preds = %.lr.ph91.i.i177.prol, %.lr.ph91.i.i177.preheader307
  %.490.i.i178.unr = phi i64 [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader307 ], [ %i.ho, %.lr.ph91.i.i177.prol ]
  %i.hp = sub i64 %.490.i.i178.ph, %.062.i.i152
  %i.hq = icmp ugt i64 %i.hp, -4
  br i1 %i.hq, label %bary_add.exit, label %.lr.ph91.i.i177

.lr.ph91.i.i177:                                  ; preds = %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177
  %.490.i.i178 = phi i64 [ %i.ig, %.lr.ph91.i.i177 ], [ %.490.i.i178.unr, %.lr.ph91.i.i177.prol.loopexit ] ; 6 uses
  %i.hr = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !44
  %i.ht = getelementptr [4 x i8], ptr %i.er, i64 %.490.i.i178
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !44
  %i.hu = add nuw i64 %.490.i.i178, 1             ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !44
  %i.hx = getelementptr [4 x i8], ptr %i.er, i64 %i.hu
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !44
  %i.hy = add nuw i64 %.490.i.i178, 2             ; 2 uses
  %i.hz = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !44
  %i.ib = getelementptr [4 x i8], ptr %i.er, i64 %i.hy
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !44
  %i.ic = add nuw i64 %.490.i.i178, 3             ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !44
  %i.if = getelementptr [4 x i8], ptr %i.er, i64 %i.ic
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !44
  %i.ig = add nuw i64 %.490.i.i178, 4             ; 2 uses
  %exitcond106.not.i.i179.3 = icmp eq i64 %i.ig, %.062.i.i152
  br i1 %exitcond106.not.i.i179.3, label %bary_add.exit, label %.lr.ph91.i.i177, !llvm.loop !250

bb.aa:                                            ; preds = %bb.t
  %i.ih = icmp ugt i64 %i.bh, 4611686018427387903
  br i1 %i.ih, label %bb.ab, label %rbimpl_size_mul_or_raise.exit, !prof !54

bb.ab:                                            ; preds = %bb.aa
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.bh) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.aa
  %i.ii = getelementptr [4 x i8], ptr %.0119221, i64 %.2217
  %i.ij = getelementptr [4 x i8], ptr %.0118222, i64 %.2217
  %i.ik = shl nuw i64 %i.bh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ij, ptr noundef nonnull readonly align 1 %i.ii, i64 noundef range(i64 1, 0) %i.ik, i1 noundef false) #23
  br label %bary_add.exit

bary_add.exit:                                    ; preds = %bb.z, %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177, %middle.block, %.preheader72.i.i159, %.preheader70.i.i, %bb.r, %rbimpl_size_mul_or_raise.exit, %.loopexit71.i.i169, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i
  %i.il = add i64 %.2217, %i.ay                   ; 2 uses
  %i.im = icmp ult i64 %i.il, %4
  %indvar.next = add i64 %indvar.a, 1
  br i1 %i.im, label %bb.m, label %bb.ac, !llvm.loop !251

bb.ac:                                            ; preds = %bary_add.exit
  %i.in = add i32 %.0110223, 1                    ; 2 uses
  %i.io = call fastcc i64 @power_cache_get_power(i32 noundef %6, i32 noundef %i.in, ptr noundef null)
  %i.ip = icmp ult i64 %i.ay, %4
  br i1 %i.ip, label %.preheader202, label %.preheader, !llvm.loop !252

.lr.ph226:                                        ; preds = %.preheader, %bb.ad
  %.0124225 = phi i64 [ %i.iu, %bb.ad ], [ %4, %.preheader ] ; 3 uses
  %i.iq = getelementptr [4 x i8], ptr %.0119.lcssa, i64 %.0124225
  %i.ir = getelementptr i8, ptr %i.iq, i64 -4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !44
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %.lr.ph226
  %i.iu = add i64 %.0124225, -1                   ; 2 uses
  %.not = icmp eq i64 %i.iu, 0
  br i1 %.not, label %.critedge, label %.lr.ph226, !llvm.loop !253

.critedge:                                        ; preds = %.lr.ph226, %bb.ad, %.preheader
  %.0124.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.ad ], [ %.0124225, %.lr.ph226 ] ; 5 uses
  %i.iv = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.iw = call fastcc i64 @bignew_1(i64 noundef %i.iv, i64 noundef %.0124.lcssa, i32 noundef %0) ; 2 uses
  %i.ix = inttoptr i64 %i.iw to ptr               ; 3 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !48
  %i.iz = and i64 %i.iy, 16384
  %.not.i187 = icmp eq i64 %i.iz, 0
  br i1 %.not.i187, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.ja = getelementptr i8, ptr %i.ix, i64 16
  br label %BIGNUM_DIGITS.exit189

bb.af:                                            ; preds = %.critedge
  %i.jb = getelementptr i8, ptr %i.ix, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit189

BIGNUM_DIGITS.exit189:                            ; preds = %bb.ae, %bb.af
  %.0.i188 = phi ptr [ %i.ja, %bb.ae ], [ %i.jc, %bb.af ]
  %i.jd = icmp ugt i64 %.0124.lcssa, 4611686018427387903
  br i1 %i.jd, label %bb.ag, label %rbimpl_size_mul_or_raise.exit190, !prof !54

bb.ag:                                            ; preds = %BIGNUM_DIGITS.exit189
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.0124.lcssa) #25
  unreachable

rbimpl_size_mul_or_raise.exit190:                 ; preds = %BIGNUM_DIGITS.exit189
  %.not.i191 = icmp eq i64 %.0124.lcssa, 0
  br i1 %.not.i191, label %ruby_nonempty_memcpy.exit193, label %bb.ah

bb.ah:                                            ; preds = %rbimpl_size_mul_or_raise.exit190
  %i.je = shl nuw i64 %.0124.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i188, ptr noundef nonnull readonly align 1 %.0119.lcssa, i64 noundef range(i64 1, 0) %i.je, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit193

ruby_nonempty_memcpy.exit193:                     ; preds = %rbimpl_size_mul_or_raise.exit190, %bb.ah
  %i.jf = load i64, ptr %i.a, align 8, !tbaa !46
  %.not135 = icmp eq i64 %i.jf, 0
  br i1 %.not135, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %ruby_nonempty_memcpy.exit193
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ruby_nonempty_memcpy.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.iw
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
  %i.o = icmp ne i64 %i.n, 4                      ; 2 uses
  %brmerge = or i1 %.not, %i.o
  %.mux = select i1 %i.o, i64 %i.n, i64 1
  br i1 %brmerge, label %bb.e, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %.not9 = icmp eq i32 %3, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !tbaa !46
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
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.31, i64 noundef %0) #25
  unreachable
}

end_hunk_0
