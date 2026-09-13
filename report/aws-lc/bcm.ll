Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 332
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 550
begin_hunk_0_@BN_mod_mul_reciprocal:bb.a
  br label %bb.bt

bb.bt:                                            ; preds = %bn_minimal_width.exit.thread.i.i121.1.i, %bn_minimal_width.exit.i.i116.1.i
  store i32 0, ptr %i.ic, align 8, !tbaa !91
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bn_minimal_width.exit.thread5.i.i120.1.i, %bn_minimal_width.exit.i.i116.1.i
  %i.jr = tail call i32 @BN_add_word(ptr noundef %i.ce, i64 noundef 1)
  %.not91.1.i = icmp eq i32 %i.jr, 0
  br i1 %.not91.1.i, label %BN_mul.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.js = load ptr, ptr %.0.i36, align 8, !tbaa !92 ; 2 uses
  %i.jt = load i32, ptr %i.hp, align 8, !tbaa !93 ; 2 uses
  %i.ju = sext i32 %i.jt to i64                   ; 2 uses
  %i.jv = load ptr, ptr %3, align 8, !tbaa !92
  %i.jw = load i32, ptr %i.cr, align 8, !tbaa !93
  %i.jx = sext i32 %i.jw to i64
  %i.jy = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.js, i64 noundef %i.ju, ptr noundef %i.jv, i64 noundef %i.jx)
  %i.jz = icmp sgt i32 %i.jy, -1
  br i1 %i.jz, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  %i.ka = tail call i32 @bn_usub_consttime(ptr noundef nonnull %.0.i36, ptr noundef nonnull readonly %.0.i36, ptr noundef nonnull readonly %3)
  %.not.i115.2.i = icmp eq i32 %i.ka, 0
  br i1 %.not.i115.2.i, label %BN_mul.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kb = load i32, ptr %i.hp, align 8, !tbaa !93 ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph.i.i.i118.2.i, label %bn_minimal_width.exit.i.i116.2.i

bn_minimal_width.exit.i.i116.2.i:                 ; preds = %bb.bx
  %i.kd = icmp eq i32 %i.kb, 0
  br i1 %i.kd, label %bb.ca, label %bb.cb

.lr.ph.i.i.i118.2.i:                              ; preds = %bb.bx
  %i.ke = load ptr, ptr %.0.i36, align 8, !tbaa !92
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.lr.ph.i.i.i118.2.i
  %.05.i.i.i119.2.i = phi i32 [ %i.kb, %.lr.ph.i.i.i118.2.i ], [ %i.kk, %bb.bz ] ; 4 uses
  %i.kf = zext nneg i32 %.05.i.i.i119.2.i to i64
  %i.kg = getelementptr [8 x i8], ptr %i.ke, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 -8
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !80
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %bb.bz, label %bn_minimal_width.exit.thread5.i.i120.2.i

bn_minimal_width.exit.thread5.i.i120.2.i:         ; preds = %bb.by
  store i32 %.05.i.i.i119.2.i, ptr %i.hp, align 8, !tbaa !93
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.kk = add nsw i32 %.05.i.i.i119.2.i, -1
  %i.kl = icmp sgt i32 %.05.i.i.i119.2.i, 1
  br i1 %i.kl, label %bb.by, label %bn_minimal_width.exit.thread.i.i121.2.i, !llvm.loop !10

bn_minimal_width.exit.thread.i.i121.2.i:          ; preds = %bb.bz
  store i32 0, ptr %i.hp, align 8, !tbaa !93
  br label %bb.ca

bb.ca:                                            ; preds = %bn_minimal_width.exit.thread.i.i121.2.i, %bn_minimal_width.exit.i.i116.2.i
  store i32 0, ptr %i.ic, align 8, !tbaa !91
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bn_minimal_width.exit.thread5.i.i120.2.i, %bn_minimal_width.exit.i.i116.2.i
  %i.km = tail call i32 @BN_add_word(ptr noundef %i.ce, i64 noundef 1)
  %.not91.2.i = icmp eq i32 %i.km, 0
  br i1 %.not91.2.i, label %BN_mul.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kn = load ptr, ptr %.0.i36, align 8, !tbaa !92 ; 2 uses
  %i.ko = load i32, ptr %i.hp, align 8, !tbaa !93 ; 2 uses
  %i.kp = sext i32 %i.ko to i64                   ; 2 uses
  %i.kq = load ptr, ptr %3, align 8, !tbaa !92
  %i.kr = load i32, ptr %i.cr, align 8, !tbaa !93
  %i.ks = sext i32 %i.kr to i64
  %i.kt = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.kn, i64 noundef %i.kp, ptr noundef %i.kq, i64 noundef %i.ks)
  %i.ku = icmp sgt i32 %i.kt, -1
  br i1 %i.ku, label %bb.bi, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bv, %bb.bo, %bb.bg
  %.lcssa33.i = phi ptr [ %i.id, %bb.bg ], [ %i.ix, %bb.bo ], [ %i.js, %bb.bv ], [ %i.kn, %bb.cc ] ; 2 uses
  %.lcssa30.i = phi i32 [ %i.ib, %bb.bg ], [ %i.iy, %bb.bo ], [ %i.jt, %bb.bv ], [ %i.ko, %bb.cc ]
  %.lcssa27.i = phi i64 [ %i.ie, %bb.bg ], [ %i.iz, %bb.bo ], [ %i.ju, %bb.bv ], [ %i.kp, %bb.cc ] ; 4 uses
  %.not.i123.i = icmp eq i32 %.lcssa30.i, 0
  br i1 %.not.i123.i, label %BN_is_zero.exit.thread.i, label %.lr.ph.i.i124.i.preheader

.lr.ph.i.i124.i.preheader:                        ; preds = %bb.cd
  %min.iters.check = icmp ult i64 %.lcssa27.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i124.i.preheader128, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i124.i.preheader
  %n.vec = and i64 %.lcssa27.i, -4                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.kx, %vector.body ]
  %vec.phi125 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ky, %vector.body ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.lcssa33.i, i64 %index ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %wide.load = load <2 x i64>, ptr %i.kv, align 8, !tbaa !80
  %wide.load126 = load <2 x i64>, ptr %i.kw, align 8, !tbaa !80
  %i.kx = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.ky = or <2 x i64> %wide.load126, %vec.phi125 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kz = icmp eq i64 %index.next, %n.vec
  br i1 %i.kz, label %middle.block, label %vector.body, !llvm.loop !2514

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.ky, %i.kx
  %i.la = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.lcssa27.i, %n.vec
  br i1 %cmp.n, label %BN_is_zero.exit.i, label %.lr.ph.i.i124.i.preheader128

.lr.ph.i.i124.i.preheader128:                     ; preds = %.lr.ph.i.i124.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i124.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i124.i.preheader ], [ %i.la, %middle.block ]
  br label %.lr.ph.i.i124.i

.lr.ph.i.i124.i:                                  ; preds = %.lr.ph.i.i124.i.preheader128, %.lr.ph.i.i124.i
  %.09.i.i.i = phi i64 [ %i.le, %.lr.ph.i.i124.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i124.i.preheader128 ] ; 2 uses
  %.078.i.i.i = phi i64 [ %i.ld, %.lr.ph.i.i124.i ], [ %.078.i.i.i.ph, %.lr.ph.i.i124.i.preheader128 ]
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.lcssa33.i, i64 %.09.i.i.i
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !80
  %i.ld = or i64 %i.lc, %.078.i.i.i               ; 2 uses
  %i.le = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.le, %.lcssa27.i
  br i1 %exitcond.not.i.i.i, label %BN_is_zero.exit.i, label %.lr.ph.i.i124.i, !llvm.loop !2515

BN_is_zero.exit.i:                                ; preds = %.lr.ph.i.i124.i, %middle.block
  %.lcssa = phi i64 [ %i.la, %middle.block ], [ %i.ld, %.lr.ph.i.i124.i ]
  %.not11.i = icmp eq i64 %.lcssa, 0
  br i1 %.not11.i, label %BN_is_zero.exit.thread.i, label %bb.ce

bb.ce:                                            ; preds = %BN_is_zero.exit.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !91
  br label %BN_is_zero.exit.thread.i

BN_is_zero.exit.thread.i:                         ; preds = %bb.ce, %BN_is_zero.exit.i, %bb.cd
  %i.lh = phi i32 [ %i.lg, %bb.ce ], [ 0, %BN_is_zero.exit.i ], [ 0, %bb.cd ]
  store i32 %i.lh, ptr %i.ic, align 8, !tbaa !91
  %i.li = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !91
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !2516
  %i.lm = xor i32 %i.ll, %i.lj
  store i32 %i.lm, ptr %i.ha, align 8, !tbaa !91
  br label %BN_mul.exit.i

BN_mul.exit.i:                                    ; preds = %BN_is_zero.exit.thread.i, %bb.cb, %bb.bw, %bb.bu, %bb.bp, %bb.bn, %bb.bi, %bb.bh, %bb.bb, %bb.aw, %bb.av, %bb.aq, %bb.ap, %bb.ao, %bb.aa, %bb.y
  %.073.i = phi i32 [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ao ], [ 0, %bb.bi ], [ 0, %bb.ap ], [ 0, %bb.bb ], [ 1, %BN_is_zero.exit.thread.i ], [ 0, %bb.aw ], [ 0, %bb.aq ], [ 0, %bb.av ], [ 0, %bb.cb ], [ 0, %bb.bw ], [ 0, %bb.bu ], [ 0, %bb.bp ], [ 0, %bb.bn ], [ 0, %bb.bh ] ; 2 uses
  %i.ln = load i8, ptr %i.a, align 8, !tbaa !110
  %.not.i125.i = icmp eq i8 %i.ln, 0
  br i1 %.not.i125.i, label %BN_CTX_end.exit.sink.split.i, label %BN_CTX_end.exit

BN_CTX_end.exit.sink.split.i:                     ; preds = %BN_mul.exit.i, %bb.ab
  %.076.ph.i = phi i32 [ 1, %bb.ab ], [ %.073.i, %BN_mul.exit.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !112
  %i.lr = add i64 %i.lq, -1                       ; 2 uses
  store i64 %i.lr, ptr %i.lp, align 8, !tbaa !112
  %i.ls = load ptr, ptr %i.lo, align 8, !tbaa !109
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lr
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !80
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !111
  br label %BN_sqr.exit

BN_sqr.exit:                                      ; preds = %BN_CTX_end.exit.sink.split.i, %bb.n, %bb.i, %BN_CTX_start.exit
  %.020.ph = phi i32 [ %.076.ph.i, %BN_CTX_end.exit.sink.split.i ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %BN_CTX_start.exit ] ; 2 uses
  %.pr = load i8, ptr %i.a, align 8, !tbaa !110
  %.not.i40 = icmp eq i8 %.pr, 0
  br i1 %.not.i40, label %bb.cf, label %BN_CTX_end.exit

bb.cf:                                            ; preds = %BN_sqr.exit
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !112
  %i.lz = add i64 %i.ly, -1                       ; 2 uses
  store i64 %i.lz, ptr %i.lx, align 8, !tbaa !112
  %i.ma = load ptr, ptr %i.lw, align 8, !tbaa !109
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.lz
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !80
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !111
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.ab, %BN_mul.exit.i, %BN_sqr.exit, %bb.cf
  %.02050 = phi i32 [ %.020.ph, %bb.cf ], [ %.020.ph, %BN_sqr.exit ], [ %.073.i, %BN_mul.exit.i ], [ 1, %bb.ab ]
  ret i32 %.02050
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bn_mul_part_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 5 uses
  %i.b = icmp slt i32 %3, 8
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %4, %3
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i32 %5, %3
  %i.f = sext i32 %i.e to i64
  tail call fastcc void @bn_mul_normal(ptr noundef %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %2, i64 noundef %i.f)
  %i.g = add i32 %5, %4                           ; 2 uses
  %i.h = icmp eq i32 %i.a, %i.g
  br i1 %i.h, label %OPENSSL_memset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sub i32 %i.a, %i.g
  %i.j = sext i32 %i.i to i64
  %i.k = sext i32 %i.a to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = sext i32 %4 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = sext i32 %5 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 0, i64 %i.j, i1 false)
  br label %OPENSSL_memset.exit

bb.d:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %3 to i64                  ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q ; 5 uses
  %i.s = sub nsw i32 %3, %4
  %i.t = zext nneg i32 %i.a to i64                ; 14 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t ; 12 uses
  %i.v = tail call fastcc i64 @bn_abs_sub_part_words(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %i.r, i32 noundef %4, i32 noundef %i.s, ptr noundef nonnull %i.u)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.q ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q ; 5 uses
  %i.y = sub nsw i32 %5, %3
  %i.z = tail call fastcc i64 @bn_abs_sub_part_words(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef %2, i32 noundef %5, i32 noundef %i.y, ptr noundef nonnull %i.u)
  %i.aa = xor i64 %i.z, %i.v                      ; 2 uses
  %i.ab = icmp eq i32 %3, 8
  br i1 %i.ab, label %bb.e, label %OPENSSL_memset.exit185

bb.e:                                             ; preds = %bb.d
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.w)
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.ad = sext i32 %4 to i64
  %i.ae = sext i32 %5 to i64
  tail call fastcc void @bn_mul_normal(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.r, i64 noundef %i.ad, ptr noundef nonnull %i.x, i64 noundef %i.ae)
  %i.af = add i32 %5, %4                          ; 3 uses
  %i.ag = icmp eq i32 %i.af, 16
  br i1 %i.ag, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i32 16, %i.af
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = add i32 %i.af, %i.a
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %i.aj, i1 false)
  br label %.lr.ph.i

OPENSSL_memset.exit185:                           ; preds = %bb.d
  %i.an = shl nuw nsw i32 %3, 2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ao ; 4 uses
  tail call fastcc void @bn_mul_recursive(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.w, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.ap)
  tail call fastcc void @bn_mul_recursive(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.ar = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  %i.as = icmp slt i32 %4, 16
  %i.at = icmp slt i32 %5, 16
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %OPENSSL_memset.exit185
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  br label %bb.h

bb.g:                                             ; preds = %OPENSSL_memset.exit185
  %i.au = sext i32 %4 to i64
  %i.av = sext i32 %5 to i64
  tail call fastcc void @bn_mul_normal(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.r, i64 noundef %i.au, ptr noundef nonnull %i.x, i64 noundef %i.av)
  br label %.lr.ph.i

bb.h:                                             ; preds = %.preheader, %bb.j
  %.0175 = phi i32 [ %i.aw, %bb.j ], [ %3, %.preheader ]
  %i.aw = sdiv i32 %.0175, 2                      ; 10 uses
  %or.cond182 = icmp slt i32 %i.aw, %invariant.smax
  br i1 %or.cond182, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nsw i32 %4, %i.aw
  %i.ay = sub nsw i32 %5, %i.aw
  tail call fastcc void @bn_mul_part_recursive(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.r, ptr noundef nonnull %i.x, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef nonnull %i.ap)
  br label %.lr.ph.i

bb.j:                                             ; preds = %bb.h
  %i.az = icmp eq i32 %i.aw, %4
  %i.ba = icmp eq i32 %i.aw, %5
  %or.cond183 = or i1 %i.az, %i.ba
  br i1 %or.cond183, label %bb.k, label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.bb = sub nsw i32 %4, %i.aw
  %i.bc = sub nsw i32 %5, %i.aw
  tail call fastcc void @bn_mul_recursive(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.r, ptr noundef nonnull %i.x, i32 noundef %i.aw, i32 noundef %i.bb, i32 noundef %i.bc, ptr noundef nonnull %i.ap)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.k, %bb.g, %bb.e, %bb.f
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.be = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %6, ptr nonnull %0, ptr nonnull %i.bd, i64 %i.t, i64 0) #46, !srcloc !96
  %i.bf = shl i32 %3, 2                           ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 4 uses
  %i.bh = getelementptr [8 x i8], ptr %6, i64 %i.bg ; 5 uses
  %i.bi = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09sbbq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.bh, ptr nonnull %6, ptr nonnull %i.u, i64 %i.t, i64 0) #46, !srcloc !97
  %i.bj = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.u, ptr nonnull %6, ptr nonnull %i.u, i64 %i.t, i64 0) #46, !srcloc !96
  %i.bk = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #47 ; 4 uses
  %i.bl = xor i64 %i.aa, -1
  %i.bm = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bl) #47 ; 4 uses
  %7 = shl nuw nsw i64 %i.t, 4
  %scevgep = getelementptr i8, ptr %6, i64 %7
  %8 = add nuw nsw i64 %i.bg, %i.t
  %9 = shl nuw nsw i64 %8, 3
  %scevgep207 = getelementptr i8, ptr %6, i64 %9
  %bound0 = icmp ult ptr %i.u, %scevgep207
  %min.iters.check = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %min.iters.check
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.t, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert208 = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %broadcast.splat209 = shufflevector <2 x i64> %broadcast.splatinsert208, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <2 x i64>, ptr %i.bn, align 8, !tbaa !80, !alias.scope !2523
  %wide.load210 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !80, !alias.scope !2523
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load211 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !80, !alias.scope !2524, !noalias !2523
  %wide.load212 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !80, !alias.scope !2524, !noalias !2523
  %i.br = and <2 x i64> %wide.load, %broadcast.splat
  %i.bs = and <2 x i64> %wide.load210, %broadcast.splat
  %i.bt = and <2 x i64> %wide.load211, %broadcast.splat209
  %i.bu = and <2 x i64> %wide.load212, %broadcast.splat209
  %i.bv = or <2 x i64> %i.bt, %i.br
  %i.bw = or <2 x i64> %i.bu, %i.bs
  store <2 x i64> %i.bv, ptr %i.bp, align 8, !tbaa !80, !alias.scope !2524, !noalias !2523
  store <2 x i64> %i.bw, ptr %i.bq, align 8, !tbaa !80, !alias.scope !2524, !noalias !2523
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !2520

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.t
  br i1 %cmp.n, label %bn_add_words.exit190, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %.09.i = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph ] ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.09.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !80
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !80
  %i.cc = and i64 %i.bz, %i.bk
  %i.cd = and i64 %i.cb, %i.bm
  %i.ce = or i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !80
  %i.cf = or disjoint i64 %.09.i, 1               ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !80
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cf ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !80
  %i.ck = and i64 %i.ch, %i.bk
  %i.cl = and i64 %i.cj, %i.bm
  %i.cm = or i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %i.ci, align 8, !tbaa !80
  %i.cn = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.cn, %i.t
  br i1 %exitcond.not.i.1, label %bn_add_words.exit190, label %scalar.ph, !llvm.loop !2521

bn_add_words.exit190:                             ; preds = %scalar.ph, %middle.block
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.cp = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.co, ptr nonnull %i.co, ptr nonnull %i.u, i64 %i.t, i64 0) #46, !srcloc !96
  %i.cq = mul nuw nsw i32 %3, 3                   ; 2 uses
  %i.cr = icmp samesign ult i32 %i.cq, %i.bf
  br i1 %i.cr, label %.lr.ph.preheader, label %OPENSSL_memset.exit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit190
  %i.cs = extractvalue { i64, i64, i64 } %i.cp, 0
  %i.ct = and i64 %i.cs, 1
  %i.cu = extractvalue { i64, i64, i64 } %i.bj, 0
  %i.cv = and i64 %i.cu, 1
  %i.cw = extractvalue { i64, i64, i64 } %i.be, 0
  %i.cx = and i64 %i.cw, 1                        ; 2 uses
  %i.cy = add nuw nsw i64 %i.cv, %i.cx
  %i.cz = and i64 %i.bm, %i.cy
  %i.da = extractvalue { i64, i64, i64 } %i.bi, 0
  %i.db = and i64 %i.da, 1
  %i.dc = sub nsw i64 %i.cx, %i.db
  %i.dd = and i64 %i.bk, %i.dc
  %i.de = or i64 %i.cz, %i.dd
  %i.df = add i64 %i.ct, %i.de                    ; 2 uses
  %i.dg = zext nneg i32 %i.cq to i64              ; 5 uses
  %xtraiter = and i64 %i.dg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dg ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !80 ; 2 uses
  %i.dj = add i64 %i.di, %i.df                    ; 2 uses
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !80
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = zext i1 %i.dk to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.dg, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.dg, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0174192.unr = phi i64 [ %i.df, %.lr.ph.preheader ], [ %i.dl, %.lr.ph.prol ]
  %i.dm = add nsw i64 %i.bg, -1
  %i.dn = icmp eq i64 %i.dm, %i.dg
  br i1 %i.dn, label %OPENSSL_memset.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0174192 = phi i64 [ %i.dy, %.lr.ph ], [ %.0174192.unr, %.lr.ph.prol.loopexit ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !80 ; 2 uses
  %i.dq = add i64 %i.dp, %.0174192                ; 2 uses
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !80
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = zext i1 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !80 ; 2 uses
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !80
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = zext i1 %i.dx to i64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bg
  br i1 %exitcond.not.1, label %OPENSSL_memset.exit, label %.lr.ph, !llvm.loop !2522

OPENSSL_memset.exit:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit190, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bn_mul_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -1073741824, -2147483648) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 8
  %i.b = or i32 %5, %4
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %3, 16
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %4, %3
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i32 %5, %3
  %i.h = sext i32 %i.g to i64
  tail call fastcc void @bn_mul_normal(ptr noundef %0, ptr noundef %1, i64 noundef %i.f, ptr noundef %2, i64 noundef %i.h)
  %i.i = add nsw i32 %5, %4                       ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %OPENSSL_memset.exit, label %.loopexit

OPENSSL_memset.exit:                              ; preds = %bb.d
  %i.k = shl nsw i32 %3, 1
  %i.l = add nsw i32 %i.k, %4
  %i.m = add nsw i32 %i.l, %5
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = sub nsw i32 0, %i.i
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.r, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = lshr i32 %3, 1                           ; 10 uses
  %i.t = add nsw i32 %i.s, %4
  %i.u = add nsw i32 %5, %i.s
  %i.v = zext nneg i32 %i.s to i64                ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 3 uses
  %i.x = sub i32 0, %4
  %i.y = zext nneg i32 %3 to i64                  ; 15 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.y ; 13 uses
  %i.aa = tail call fastcc i64 @bn_abs_sub_part_words(ptr noundef %6, ptr noundef %1, ptr noundef %i.w, i32 noundef %i.t, i32 noundef %i.x, ptr noundef nonnull %i.z)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.v ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v ; 3 uses
  %i.ad = tail call fastcc i64 @bn_abs_sub_part_words(ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %2, i32 noundef %i.u, i32 noundef %5, ptr noundef nonnull %i.z)
  %i.ae = xor i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = icmp eq i32 %i.s, 8
  %or.cond11 = and i1 %i.af, %i.c
  br i1 %or.cond11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.z, ptr noundef nonnull %6, ptr noundef nonnull %i.ab)
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ac)
  %.pre = shl nuw nsw i32 %3, 1                   ; 2 uses
  %.pre179 = zext nneg i32 %.pre to i64
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.e
  %i.ah = shl nuw nsw i32 %3, 1                   ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ai ; 3 uses
  tail call fastcc void @bn_mul_recursive(ptr noundef nonnull %i.z, ptr noundef nonnull %6, ptr noundef nonnull %i.ab, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.aj)
  tail call fastcc void @bn_mul_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.aj)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y
  tail call fastcc void @bn_mul_recursive(ptr noundef nonnull %i.ak, ptr noundef %i.w, ptr noundef %i.ac, i32 noundef %i.s, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.aj)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.f
  %.pre-phi180 = phi i64 [ %i.ai, %bb.g ], [ %.pre179, %bb.f ] ; 2 uses
  %.pre-phi = phi i32 [ %i.ah, %bb.g ], [ %.pre, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y
  %i.am = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %6, ptr nonnull %0, ptr nonnull %i.al, i64 %i.y, i64 0) #46, !srcloc !96
  %i.an = getelementptr [8 x i8], ptr %6, i64 %.pre-phi180 ; 6 uses
  %i.ao = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09sbbq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.an, ptr nonnull %6, ptr nonnull %i.z, i64 %i.y, i64 0) #46, !srcloc !97
  %i.ap = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z, ptr nonnull %6, ptr nonnull %i.z, i64 %i.y, i64 0) #46, !srcloc !96
  %i.aq = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ae) #47 ; 5 uses
  %i.ar = xor i64 %i.ae, -1
  %i.as = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ar) #47 ; 5 uses
  %i.at = shl nuw nsw i64 %i.y, 4
  %scevgep = getelementptr i8, ptr %6, i64 %i.at
  %i.au = add nuw nsw i64 %.pre-phi180, %i.y
  %i.av = shl nuw nsw i64 %i.au, 3
  %scevgep184 = getelementptr i8, ptr %6, i64 %i.av
  %bound0 = icmp ult ptr %i.z, %scevgep184
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.y, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert185 = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat186 = shufflevector <2 x i64> %broadcast.splatinsert185, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x i64>, ptr %i.aw, align 8, !tbaa !80, !alias.scope !2531
  %wide.load187 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !80, !alias.scope !2531
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load188 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !80, !alias.scope !2532, !noalias !2531
  %wide.load189 = load <2 x i64>, ptr %i.az, align 8, !tbaa !80, !alias.scope !2532, !noalias !2531
  %i.ba = and <2 x i64> %wide.load, %broadcast.splat
  %i.bb = and <2 x i64> %wide.load187, %broadcast.splat
  %i.bc = and <2 x i64> %wide.load188, %broadcast.splat186
  %i.bd = and <2 x i64> %wide.load189, %broadcast.splat186
  %i.be = or <2 x i64> %i.bc, %i.ba
  %i.bf = or <2 x i64> %i.bd, %i.bb
  store <2 x i64> %i.be, ptr %i.ay, align 8, !tbaa !80, !alias.scope !2532, !noalias !2531
  store <2 x i64> %i.bf, ptr %i.az, align 8, !tbaa !80, !alias.scope !2532, !noalias !2531
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !2528

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br i1 %cmp.n, label %bn_add_words.exit175, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.09.i.ph
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.ph ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !80
  %i.bl = and i64 %i.bi, %i.aq
  %i.bm = and i64 %i.bk, %i.as
  %i.bn = or i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !80
  %i.bo = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bo, %scalar.ph.prol ]
  %i.bp = add nsw i64 %i.y, -1
  %i.bq = icmp eq i64 %.09.i.ph, %i.bp
  br i1 %i.bq, label %bn_add_words.exit175, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.cg, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.09.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !80
  %i.bv = and i64 %i.bs, %i.aq
  %i.bw = and i64 %i.bu, %i.as
  %i.bx = or i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %i.bt, align 8, !tbaa !80
  %i.by = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.by ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !80
  %i.cd = and i64 %i.ca, %i.aq
  %i.ce = and i64 %i.cc, %i.as
  %i.cf = or i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !80
  %i.cg = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.cg, %i.y
  br i1 %exitcond.not.i.1, label %bn_add_words.exit175, label %scalar.ph, !llvm.loop !2529

bn_add_words.exit175:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.ci = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ch, ptr %i.ch, ptr nonnull %i.z, i64 %i.y, i64 0) #46, !srcloc !96
  %i.cj = add nuw nsw i32 %i.s, %3                ; 2 uses
  %i.ck = icmp samesign ult i32 %i.cj, %.pre-phi
  br i1 %i.ck, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit175
  %i.cl = extractvalue { i64, i64, i64 } %i.ci, 0
  %i.cm = and i64 %i.cl, 1
  %i.cn = extractvalue { i64, i64, i64 } %i.ap, 0
  %i.co = and i64 %i.cn, 1
  %i.cp = extractvalue { i64, i64, i64 } %i.am, 0
  %i.cq = and i64 %i.cp, 1                        ; 2 uses
  %i.cr = add nuw nsw i64 %i.co, %i.cq
  %i.cs = and i64 %i.as, %i.cr
  %i.ct = extractvalue { i64, i64, i64 } %i.ao, 0
  %i.cu = and i64 %i.ct, 1
  %i.cv = sub nsw i64 %i.cq, %i.cu
  %i.cw = and i64 %i.aq, %i.cv
  %i.cx = or i64 %i.cs, %i.cw
  %i.cy = add i64 %i.cm, %i.cx                    ; 2 uses
  %i.cz = zext nneg i32 %i.cj to i64              ; 3 uses
  %i.da = sub nsw i32 %3, %i.s
  %.neg = add nuw nsw i32 %i.s, 1
  %xtraiter190 = and i32 %i.da, 1
  %lcmp.mod191.not = icmp eq i32 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cz ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !80 ; 2 uses
  %i.dd = add i64 %i.dc, %i.cy                    ; 2 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !80
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = zext i1 %i.de to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.cz, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.cz, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0168176.unr = phi i64 [ %i.cy, %.lr.ph.preheader ], [ %i.df, %.lr.ph.prol ]
  %i.dg = icmp eq i32 %3, %.neg
  br i1 %i.dg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0168176 = phi i64 [ %i.dr, %.lr.ph ], [ %.0168176.unr, %.lr.ph.prol.loopexit ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !80 ; 2 uses
  %i.dj = add i64 %i.di, %.0168176                ; 2 uses
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !80
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !80 ; 2 uses
  %i.dp = add i64 %i.do, %i.dl                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !80
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = zext i1 %i.dq to i64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ds = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.dt = icmp sgt i32 %.pre-phi, %i.ds
  br i1 %i.dt, label %.lr.ph, label %.loopexit, !llvm.loop !2530

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit175, %bb.d, %OPENSSL_memset.exit, %bb.b
  ret void
}

declare void @rsaz_amm52x20_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @extract_multiplier_2x20_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @rsaz_amm52x30_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @extract_multiplier_2x30_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @rsaz_amm52x40_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @extract_multiplier_2x40_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_init_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !169
  %i.f = and i32 %i.e, 63                         ; 4 uses
  %i.g = icmp eq i32 %i.f, 2                      ; 6 uses
  %i.h = add nsw i32 %i.f, -3
  %or.cond = icmp ult i32 %i.h, -2
  %i.i = icmp ne i32 %3, 0
  %or.cond3 = or i1 %i.i, %or.cond
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 3 uses
  %i.k = and i32 %i.j, 33554432
  %.not69 = icmp eq i32 %i.k, 0                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 4 uses
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !173
  %i.o = shl i32 %i.n, 3
  %i.p = tail call i32 @aes_hw_set_decrypt_key(ptr noundef %1, i32 noundef %i.o, ptr noundef %i.b) #46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_hw_decrypt, ptr %i.q, align 8, !tbaa !562
  %spec.store.select = select i1 %i.g, ptr @aes_hw_cbc_encrypt, ptr null
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = and i32 %i.j, 512
  %.not68 = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !173
  %i.u = shl i32 %i.t, 3                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  br i1 %.not68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @vpaes_set_decrypt_key(ptr noundef %1, i32 noundef %i.u, ptr noundef %i.b) #46
  store ptr @vpaes_decrypt, ptr %i.v, align 8, !tbaa !562
  %spec.store.select71 = select i1 %i.g, ptr @vpaes_cbc_encrypt, ptr null
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.x = tail call range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr noundef readonly %1, i32 noundef %i.u, ptr noundef %i.b) ; 0 uses
  store ptr @aes_nohw_decrypt, ptr %i.v, align 8, !tbaa !562
  %spec.store.select72 = select i1 %i.g, ptr @aes_nohw_cbc_encrypt, ptr null
  store ptr %spec.store.select72, ptr %i.l, align 8
  br label %.thread

bb.g:                                             ; preds = %bb.a
  br i1 %.not69, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !173
  %i.aa = shl i32 %i.z, 3
  %i.ab = tail call i32 @aes_hw_set_encrypt_key(ptr noundef %1, i32 noundef %i.aa, ptr noundef %i.b) #46 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_hw_encrypt, ptr %i.ac, align 8, !tbaa !562
  store ptr null, ptr %i.l, align 8, !tbaa !76
  br i1 %i.g, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq i32 %i.f, 5
  br i1 %i.ad, label %.sink.split, label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.ae = and i32 %i.j, 512
  %.not70 = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !173
  %i.ah = shl i32 %i.ag, 3                        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  br i1 %.not70, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call i32 @vpaes_set_encrypt_key(ptr noundef %1, i32 noundef %i.ah, ptr noundef %i.b) #46
  store ptr @vpaes_encrypt, ptr %i.ai, align 8, !tbaa !562
  %spec.select = select i1 %i.g, ptr @vpaes_cbc_encrypt, ptr null
  %i.ak = icmp eq i32 %i.f, 5
  %spec.store.select74 = select i1 %i.ak, ptr @vpaes_ctr32_encrypt_blocks, ptr %spec.select
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.al = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %1, i32 noundef %i.ah, ptr noundef %i.b) ; 0 uses
  store ptr @aes_nohw_encrypt, ptr %i.ai, align 8, !tbaa !562
  %spec.store.select73 = select i1 %i.g, ptr @aes_nohw_cbc_encrypt, ptr null
  store ptr %spec.store.select73, ptr %i.l, align 8
  br label %.thread

.sink.split:                                      ; preds = %bb.i, %bb.h, %bb.c, %bb.e, %bb.k
  %spec.store.select74.sink = phi ptr [ %spec.store.select74, %bb.k ], [ %spec.store.select71, %bb.e ], [ %spec.store.select, %bb.c ], [ @aes_hw_cbc_encrypt, %bb.h ], [ @aes_hw_ctr32_encrypt_blocks, %bb.i ]
  %.0.ph = phi i32 [ %i.aj, %bb.k ], [ %i.w, %bb.e ], [ %i.p, %bb.c ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ]
  store ptr %spec.store.select74.sink, ptr %i.l, align 8
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  %.0 = phi i32 [ %i.ab, %bb.i ], [ %.0.ph, %.sink.split ]
  %i.am = icmp slt i32 %.0, 0
  br i1 %i.am, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.61, i32 noundef 180) #46
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.f, %bb.m, %bb.n
  %.066 = phi i32 [ 0, %bb.n ], [ 1, %bb.m ], [ 1, %bb.f ], [ 1, %bb.l ]
  ret i32 %.066
}
end_hunk_0
begin_hunk_1_@ec_group_set_a_minus3:bb.a
  store <2 x i64> %i.cf, ptr %i.bz, align 8, !tbaa !80
  store <2 x i64> %i.cg, ptr %i.ca, align 8, !tbaa !80
  %index.next64 = add nuw i64 %index59, 4         ; 2 uses
  %i.ch = icmp eq i64 %index.next64, %n.vec53
  br i1 %i.ch, label %middle.block65, label %vector.body58, !llvm.loop !2637

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %n.vec53, %i.bl
  br i1 %cmp.n66, label %ec_felem_sub.exit16, label %scalar.ph50.preheader

scalar.ph50.preheader:                            ; preds = %.lr.ph.i.i.i13, %middle.block65
  %.09.i.i.i14.ph = phi i64 [ 0, %.lr.ph.i.i.i13 ], [ %n.vec53, %middle.block65 ]
  br label %scalar.ph50

scalar.ph50:                                      ; preds = %scalar.ph50.preheader, %scalar.ph50
  %.09.i.i.i14 = phi i64 [ %i.cp, %scalar.ph50 ], [ %.09.i.i.i14.ph, %scalar.ph50.preheader ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i.i.i14
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !80
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.09.i.i.i14 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !80
  %i.cm = and i64 %i.cj, %i.bu
  %i.cn = and i64 %i.cl, %i.bw
  %i.co = or i64 %i.cn, %i.cm
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !80
  %i.cp = add nuw nsw i64 %.09.i.i.i14, 1         ; 2 uses
  %exitcond.not.i.i.i15 = icmp eq i64 %i.cp, %i.bl
  br i1 %exitcond.not.i.i.i15, label %ec_felem_sub.exit16, label %scalar.ph50, !llvm.loop !2638

ec_felem_sub.exit16:                              ; preds = %scalar.ph50, %middle.block65, %ec_felem_sub.exit.thread, %ec_felem_sub.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ec_GFp_mont_point_get_affine_coordinates(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 8 uses
  %4 = alloca %struct.EC_FELEM, align 8           ; 7 uses
  %5 = alloca %struct.EC_FELEM, align 8           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !277  ; 7 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !80
  %wide.load24 = load <2 x i64>, ptr %i.g, align 8, !tbaa !80
  %i.h = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.i = or <2 x i64> %wide.load24, %vec.phi23    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !2639

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.i, %i.h
  %i.k = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.k, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.k, %middle.block ], [ %i.o, %.lr.ph.i.i ]
  %.not.i = icmp eq i64 %.lcssa, 0
  %i.l = zext i1 %.not.i to i32
  br label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !80
  %i.o = or i64 %i.n, %.067.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !2640

ec_GFp_simple_is_at_infinity.exit:                ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.06.lcssa.i.i = phi i32 [ 1, %bb.a ], [ %i.l, %._crit_edge.loopexit.i.i ]
  %i.p = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.06.lcssa.i.i) #47, !srcloc !120
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.73, i32 noundef 93) #46
  br label %bb.l

bb.c:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.q = sext i32 %i.d to i64                     ; 4 uses
  %i.r = icmp ugt i32 %i.d, 9
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #49
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.s = icmp eq i32 %i.d, 0
  br i1 %i.s, label %.loopexit.sink.split.i.i, label %OPENSSL_memcpy.exit.i.i

OPENSSL_memcpy.exit.i.i:                          ; preds = %bb.e
  %i.t = shl nuw nsw i64 %i.q, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.v, i64 %i.t, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 16, !tbaa !80 ; 3 uses
  %i.w = icmp ugt i64 %.pre.i.i, 1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %OPENSSL_memcpy.exit.i.i
  %i.x = add i64 %.pre.i.i, -2
  br label %.loopexit.sink.split.i.i

bb.g:                                             ; preds = %OPENSSL_memcpy.exit.i.i
  %i.y = or disjoint i64 %.pre.i.i, -2
  store i64 %i.y, ptr %i.a, align 16, !tbaa !80
  %.not22.i.i = icmp eq i32 %i.d, 1
  br i1 %.not22.i.i, label %ec_GFp_mont_felem_inv0.exit, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.g, %.lr.ph.i.i18
  %.017.i.i = phi i64 [ %i.ac, %.lr.ph.i.i18 ], [ 1, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.017.i.i ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80  ; 2 uses
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !80
  %.not.i.i = icmp ne i64 %i.aa, 0
  %i.ac = add nuw nsw i64 %.017.i.i, 1            ; 2 uses
  %exitcond.not.i.i19 = icmp eq i64 %i.ac, %i.q
  %or.cond21.i.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i19
  br i1 %or.cond21.i.i, label %ec_GFp_mont_felem_inv0.exit, label %.lr.ph.i.i18, !llvm.loop !23

.loopexit.sink.split.i.i:                         ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i64 [ %i.x, %bb.f ], [ -1, %bb.e ]
  store i64 %.sink.i.i, ptr %i.a, align 16, !tbaa !80
  br label %ec_GFp_mont_felem_inv0.exit

ec_GFp_mont_felem_inv0.exit:                      ; preds = %.lr.ph.i.i18, %bb.g, %.loopexit.sink.split.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  call void @bn_mod_exp_mont_small(ptr noundef nonnull %5, ptr noundef nonnull readonly %i.b, i64 noundef %i.q, ptr noundef nonnull %i.a, i64 noundef %i.q, ptr noundef nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.ae = load i32, ptr %i.c, align 8, !tbaa !277
  %i.af = sext i32 %i.ae to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef %i.af, ptr noundef nonnull %i.ad)
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ec_GFp_mont_felem_inv0.exit
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !277
  %i.ah = sext i32 %i.ag to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef %i.ah, ptr noundef nonnull %i.ad)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %ec_GFp_mont_felem_inv0.exit
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !277
  %i.aj = sext i32 %i.ai to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef %i.aj, ptr noundef nonnull %i.ad)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i32, ptr %i.c, align 8, !tbaa !277
  %i.am = sext i32 %i.al to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %3, ptr noundef nonnull %i.ak, ptr noundef nonnull %4, i64 noundef %i.am, ptr noundef nonnull %i.ad)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ec_GFp_mont_jacobian_to_affine_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 15 uses
  %4 = alloca %struct.EC_FELEM, align 8           ; 7 uses
  %5 = alloca %struct.EC_FELEM, align 8           ; 7 uses
  %6 = alloca %struct.EC_FELEM, align 8           ; 5 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !tbaa.struct !313
  %.not54 = icmp eq i64 %3, 1
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.f = add i64 %3, -1                           ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !277  ; 12 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i, label %ec_felem_non_zero_mask.exit.thread

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi57 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !tbaa !80
  %wide.load58 = load <2 x i64>, ptr %i.l, align 8, !tbaa !80
  %i.m = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.n = or <2 x i64> %wide.load58, %vec.phi57    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !2641

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %ec_felem_non_zero_mask.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !80
  %i.s = or i64 %i.r, %.067.i                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ec_felem_non_zero_mask.exit, label %.lr.ph.i, !llvm.loop !2642

ec_felem_non_zero_mask.exit:                      ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i64 [ %i.p, %middle.block ], [ %i.s, %.lr.ph.i ]
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %ec_felem_non_zero_mask.exit.thread, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.04650 = phi i64 [ 1, %.lr.ph ], [ %i.z, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %.04650 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -144
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %2, i64 %.04650
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.x = load i32, ptr %i.e, align 8, !tbaa !277
  %i.y = sext i32 %i.x to i64
  tail call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %i.t, ptr noundef %i.u, ptr noundef nonnull %i.w, i64 noundef %i.y, ptr noundef nonnull %i.d)
  %i.z = add nuw i64 %.04650, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !2643

ec_felem_non_zero_mask.exit.thread:               ; preds = %._crit_edge, %ec_felem_non_zero_mask.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.73, i32 noundef 132) #46
  br label %bb.j

bb.d:                                             ; preds = %ec_felem_non_zero_mask.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.aa = icmp samesign ugt i32 %i.i, 9
  br i1 %i.aa, label %bb.e, label %OPENSSL_memcpy.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #49
  unreachable

OPENSSL_memcpy.exit.i.i:                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.ab = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.ad, i64 %i.ab, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 16, !tbaa !80 ; 3 uses
  %i.ae = icmp ugt i64 %.pre.i.i, 1
  br i1 %i.ae, label %.loopexit.sink.split.i.i, label %bb.f

bb.f:                                             ; preds = %OPENSSL_memcpy.exit.i.i
  %i.af = or disjoint i64 %.pre.i.i, -2
  store i64 %i.af, ptr %i.a, align 16, !tbaa !80
  %.not22.i.i = icmp eq i32 %i.i, 1
  br i1 %.not22.i.i, label %.lr.ph52.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %8 = load i64, ptr %7, align 8, !tbaa !80       ; 2 uses
  %9 = add i64 %8, -1
  store i64 %9, ptr %7, align 8, !tbaa !80
  %.not.i.i = icmp ne i64 %8, 0
  %exitcond.not.i.i = icmp eq i32 %i.i, 2
  %or.cond21.i.i = or i1 %.not.i.i, %exitcond.not.i.i
  br i1 %or.cond21.i.i, label %.lr.ph52.preheader, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %11 = load i64, ptr %10, align 16, !tbaa !80    ; 2 uses
  %12 = add i64 %11, -1
  store i64 %12, ptr %10, align 16, !tbaa !80
  %.not.i.i.1 = icmp ne i64 %11, 0
  %exitcond.not.i.i.1 = icmp eq i32 %i.i, 3
  %or.cond21.i.i.1 = or i1 %.not.i.i.1, %exitcond.not.i.i.1
  br i1 %or.cond21.i.i.1, label %.lr.ph52.preheader, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %14 = load i64, ptr %13, align 8, !tbaa !80     ; 2 uses
  %15 = add i64 %14, -1
  store i64 %15, ptr %13, align 8, !tbaa !80
  %.not.i.i.2 = icmp ne i64 %14, 0
  %exitcond.not.i.i.2 = icmp eq i32 %i.i, 4
  %or.cond21.i.i.2 = or i1 %.not.i.i.2, %exitcond.not.i.i.2
  br i1 %or.cond21.i.i.2, label %.lr.ph52.preheader, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %17 = load i64, ptr %16, align 16, !tbaa !80    ; 2 uses
  %18 = add i64 %17, -1
  store i64 %18, ptr %16, align 16, !tbaa !80
  %.not.i.i.3 = icmp ne i64 %17, 0
  %exitcond.not.i.i.3 = icmp eq i32 %i.i, 5
  %or.cond21.i.i.3 = or i1 %.not.i.i.3, %exitcond.not.i.i.3
  br i1 %or.cond21.i.i.3, label %.lr.ph52.preheader, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %20 = load i64, ptr %19, align 8, !tbaa !80     ; 2 uses
  %21 = add i64 %20, -1
  store i64 %21, ptr %19, align 8, !tbaa !80
  %.not.i.i.4 = icmp ne i64 %20, 0
  %exitcond.not.i.i.4 = icmp eq i32 %i.i, 6
  %or.cond21.i.i.4 = or i1 %.not.i.i.4, %exitcond.not.i.i.4
  br i1 %or.cond21.i.i.4, label %.lr.ph52.preheader, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %23 = load i64, ptr %22, align 16, !tbaa !80    ; 2 uses
  %24 = add i64 %23, -1
  store i64 %24, ptr %22, align 16, !tbaa !80
  %.not.i.i.5 = icmp ne i64 %23, 0
  %exitcond.not.i.i.5 = icmp eq i32 %i.i, 7
  %or.cond21.i.i.5 = or i1 %.not.i.i.5, %exitcond.not.i.i.5
  br i1 %or.cond21.i.i.5, label %.lr.ph52.preheader, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %.lr.ph.i.i.5
  %25 = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.ag = load i64, ptr %25, align 8, !tbaa !80   ; 2 uses
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %25, align 8, !tbaa !80
  %.not.i.i.a = icmp ne i64 %i.ag, 0
  %exitcond.not.i.i.a = icmp eq i32 %i.i, 8
  %or.cond21.i.i.6 = or i1 %.not.i.i.a, %exitcond.not.i.i.a
  br i1 %or.cond21.i.i.6, label %.lr.ph52.preheader, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %.lr.ph.i.i.a
  %26 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %27 = load i64, ptr %26, align 16, !tbaa !80
  %28 = add i64 %27, -1
  store i64 %28, ptr %26, align 16, !tbaa !80
  br label %.lr.ph52.preheader

.loopexit.sink.split.i.i:                         ; preds = %OPENSSL_memcpy.exit.i.i
  %i.ai = add i64 %.pre.i.i, -2
  store i64 %i.ai, ptr %i.a, align 16, !tbaa !80
  br label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.a, %.lr.ph.i.i.7, %.loopexit.sink.split.i.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 7 uses
  call void @bn_mod_exp_mont_small(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.g, i64 noundef %wide.trip.count.i, ptr noundef nonnull %i.a, i64 noundef %wide.trip.count.i, ptr noundef nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %.lr.ph52

._crit_edge53:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.j

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %bb.i
  %.051 = phi i64 [ %i.bf, %bb.i ], [ %i.f, %.lr.ph52.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.ak = icmp eq i64 %.051, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !313
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph52
  %i.al = getelementptr [144 x i8], ptr %1, i64 %.051
  %i.am = getelementptr i8, ptr %i.al, i64 -144
  %i.an = load i32, ptr %i.h, align 8, !tbaa !277
  %i.ao = sext i32 %i.an to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %i.am, i64 noundef %i.ao, ptr noundef nonnull %i.aj)
  %i.ap = getelementptr inbounds nuw [216 x i8], ptr %2, i64 %.051
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !277
  %i.as = sext i32 %i.ar to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %i.aq, i64 noundef %i.as, ptr noundef nonnull %i.aj)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = load i32, ptr %i.h, align 8, !tbaa !277
  %i.au = sext i32 %i.at to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef %i.au, ptr noundef nonnull %i.aj)
  %i.av = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %.051 ; 2 uses
  %i.aw = getelementptr inbounds nuw [216 x i8], ptr %2, i64 %.051 ; 2 uses
  %i.ax = load i32, ptr %i.h, align 8, !tbaa !277
  %i.ay = sext i32 %i.ax to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %i.av, ptr noundef %i.aw, ptr noundef nonnull %6, i64 noundef %i.ay, ptr noundef nonnull %i.aj)
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 72 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bb = load i32, ptr %i.h, align 8, !tbaa !277
  %i.bc = sext i32 %i.bb to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, ptr noundef nonnull %6, i64 noundef %i.bc, ptr noundef nonnull %i.aj)
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !277
  %i.be = sext i32 %i.bd to i64
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %i.az, ptr noundef nonnull %i.az, ptr noundef nonnull %5, i64 noundef %i.be, ptr noundef nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.bf = add i64 %.051, -1                       ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %3
  br i1 %i.bg, label %.lr.ph52, label %._crit_edge53, !llvm.loop !2644

bb.j:                                             ; preds = %bb.a, %._crit_edge53, %ec_felem_non_zero_mask.exit.thread
  %.047 = phi i32 [ 1, %._crit_edge53 ], [ 0, %ec_felem_non_zero_mask.exit.thread ], [ 1, %bb.a ]
  ret i32 %.047
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ec_GFp_mont_cmp_x_coordinate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 6 uses
  %3 = alloca %struct.EC_SCALAR, align 8          ; 4 uses
  %4 = alloca %struct.EC_FELEM, align 8           ; 11 uses
  %5 = alloca %struct.EC_FELEM, align 8           ; 5 uses
  %6 = alloca %struct.EC_FELEM, align 8           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.c = load i32, ptr %i.b, align 8, !tbaa !312
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.pre40 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !277
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !277  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load i32, ptr %i.h, align 8, !tbaa !296
  %.not25 = icmp eq i32 %i.f, %i.i
  br i1 %.not25, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.j = phi i32 [ %.pre40, %._crit_edge ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %ec_GFp_simple_cmp_x_coordinate.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %wide.trip.count.i.i.i = zext nneg i32 %i.j to i64 ; 3 uses
  %min.iters.check53 = icmp ult i32 %i.j, 4
  br i1 %min.iters.check53, label %.lr.ph.i.i.i.preheader, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph.preheader.i.i.i
  %n.vec55 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %vec.phi58 = phi <2 x i64> [ zeroinitializer, %vector.ph54 ], [ %i.o, %vector.body56 ]
  %vec.phi59 = phi <2 x i64> [ zeroinitializer, %vector.ph54 ], [ %i.p, %vector.body56 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index57 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load60 = load <2 x i64>, ptr %i.m, align 8, !tbaa !80
  %wide.load61 = load <2 x i64>, ptr %i.n, align 8, !tbaa !80
  %i.o = or <2 x i64> %wide.load60, %vec.phi58    ; 2 uses
  %i.p = or <2 x i64> %wide.load61, %vec.phi59    ; 2 uses
  %index.next62 = add nuw i64 %index57, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.q, label %middle.block63, label %vector.body56, !llvm.loop !2645

middle.block63:                                   ; preds = %vector.body56
  %bin.rdx64 = or <2 x i64> %i.p, %i.o
  %i.r = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx64) ; 2 uses
  %cmp.n65 = icmp eq i64 %n.vec55, %wide.trip.count.i.i.i
  br i1 %cmp.n65, label %ec_GFp_simple_is_at_infinity.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block63
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec55, %middle.block63 ]
  %.067.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.r, %middle.block63 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.067.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %.067.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80
  %i.u = or i64 %i.t, %.067.i.i.i                 ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %ec_GFp_simple_is_at_infinity.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2646

ec_GFp_simple_is_at_infinity.exit.i:              ; preds = %.lr.ph.i.i.i, %middle.block63
  %.lcssa48 = phi i64 [ %i.r, %middle.block63 ], [ %i.u, %.lr.ph.i.i.i ]
  %.not.i.not.i = icmp eq i64 %.lcssa48, 0
  br i1 %.not.i.not.i, label %ec_GFp_simple_cmp_x_coordinate.exit, label %bb.d

bb.d:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.v = call i32 @ec_get_x_coordinate_as_scalar(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %1)
  %.not6.i = icmp eq i32 %i.v, 0
  br i1 %.not6.i, label %ec_scalar_equal_vartime.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.x = load i32, ptr %i.w, align 8, !tbaa !296  ; 2 uses
  %.not16.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not16.i.i.i, label %ec_scalar_equal_vartime.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.e
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  br label %.lr.ph.i.i7.i

._crit_edge.loopexit.i.i8.i:                      ; preds = %.lr.ph.i.i7.i
  %i.aa = and i64 %i.ar, 4294967295
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  br label %ec_scalar_equal_vartime.exit.i

.lr.ph.i.i7.i:                                    ; preds = %.lr.ph.i.i7.i, %.lr.ph.i.preheader.i.i
  %.018.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i7.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %.01517.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i7.i ], [ %i.z, %.lr.ph.i.preheader.i.i ]
  %i.ad = add i64 %.01517.i.i.i, -1               ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !76  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !76  ; 2 uses
  %i.ai = zext i8 %i.af to i64
  %i.aj = zext i8 %i.ah to i64
  %i.ak = icmp eq i8 %i.af, %i.ah
  %.neg.i.i.i.i.i = sext i1 %i.ak to i64          ; 2 uses
  %i.al = xor i64 %.neg.i.i.i.i.i, -1
  %i.am = sub nsw i64 %i.ai, %i.aj
  %i.an = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.al) #47, !srcloc !81
  %i.ao = and i64 %i.am, %i.an
  %i.ap = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i.i) #47, !srcloc !81
  %i.aq = and i64 %i.ap, %.018.i.i.i
  %i.ar = or i64 %i.aq, %i.ao                     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i8.i, label %.lr.ph.i.i7.i, !llvm.loop !20

ec_scalar_equal_vartime.exit.i:                   ; preds = %._crit_edge.loopexit.i.i8.i, %bb.e, %bb.d
  %i.as = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ %i.ac, %._crit_edge.loopexit.i.i8.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %ec_GFp_simple_cmp_x_coordinate.exit

bb.f:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.au = icmp sgt i32 %i.f, 0
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_cmp_x_coordinate.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.f
end_hunk_1
