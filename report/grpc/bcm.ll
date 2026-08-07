inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@_ZL17bn_sub_part_wordsPmPKmS1_ii:bb.a
  %.158.i.ph = phi i64 [ %i.a, %.preheader42.i ], [ %i.bc, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.ba, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %1, %.preheader42.i ], [ %i.az, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %0, %.preheader42.i ], [ %i.bb, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.ax, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.bc, 0
  br i1 %.not3453.i, label %bn_sub_words.exit, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %i.a, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.az, %.lr.ph.i ], [ %1, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.c = load i64, ptr %.02846.i, align 8, !tbaa !94
  %i.d = load i64, ptr %.02647.i, align 8, !tbaa !94
  %i.e = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.c, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.g, i64 %.04044.i) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = or i1 %i.f, %i.i
  %i.l = zext i1 %i.k to i64
  store i64 %i.j, ptr %.03045.i, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !94
  %i.q = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.n, i64 %i.p) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.s, i64 %i.l) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = or i1 %i.r, %i.u
  %i.x = zext i1 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.v, ptr %i.y, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !94
  %i.ad = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.af, i64 %i.x) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  %i.ai = extractvalue { i64, i1 } %i.ag, 0
  %i.aj = or i1 %i.ae, %i.ah
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ai, ptr %i.al, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !94
  %i.aq = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.an, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = extractvalue { i64, i1 } %i.aq, 0
  %i.at = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.as, i64 %i.ak) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  %i.av = extractvalue { i64, i1 } %i.at, 0
  %i.aw = or i1 %i.ar, %i.au
  %i.ax = zext i1 %i.aw to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bc = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bc, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !219

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.bq, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.bo, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.bn, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.bp, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.bm, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.bd = load i64, ptr %.12956.i, align 8, !tbaa !94
  %i.be = load i64, ptr %.12757.i, align 8, !tbaa !94
  %i.bf = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bd, i64 %i.be) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  %i.bh = extractvalue { i64, i1 } %i.bf, 0
  %i.bi = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bh, i64 %.14154.i) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  %i.bl = or i1 %i.bg, %i.bj
  %i.bm = zext i1 %i.bl to i64                    ; 2 uses
  store i64 %i.bk, ptr %.13155.i, align 8, !tbaa !94
  %i.bn = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.bq = add i64 %.158.i, -1                     ; 2 uses
  %.not34.i = icmp eq i64 %i.bq, 0
  br i1 %.not34.i, label %bn_sub_words.exit, label %.lr.ph59.i, !llvm.loop !220

bn_sub_words.exit:                                ; preds = %.lr.ph59.i, %bb.a, %.preheader.i
  %.032.i = phi i64 [ 0, %bb.a ], [ %i.ax, %.preheader.i ], [ %i.bm, %.lr.ph59.i ] ; 4 uses
  %i.br = icmp eq i32 %4, 0
  br i1 %i.br, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bn_sub_words.exit
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 4 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a ; 3 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.bv = icmp slt i32 %4, 0
  br i1 %i.bv, label %bb.c, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bw = icmp eq i32 %4, 1
  br i1 %i.bw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.bx = sub nsw i32 0, %4
  %wide.trip.count55 = zext nneg i32 %i.bx to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv52 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next53, %bb.d ] ; 3 uses
  %.03241 = phi i64 [ %.032.i, %bb.c ], [ %i.ch, %bb.d ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv52
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !94
  %i.ca = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.bz) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  %i.cd = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cc, i64 %.03241) ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  %i.cf = extractvalue { i64, i1 } %i.cd, 0
  %i.cg = or i1 %i.cb, %i.ce
  %i.ch = zext i1 %i.cg to i64                    ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv52
  store i64 %i.cf, ptr %i.ci, align 8, !tbaa !94
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit, label %bb.d, !llvm.loop !1444

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.139 = phi i64 [ %.032.i, %.lr.ph.preheader.new ], [ %i.cv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !94
  %i.cl = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ck, i64 %.139) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  %i.cn = extractvalue { i64, i1 } %i.cl, 0
  %i.co = zext i1 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !94
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !94
  %i.cs = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cr, i64 %i.co) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0
  %i.cv = zext i1 %i.ct to i64                    ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !94
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit75.unr-lcssa, label %.lr.ph, !llvm.loop !1445

.loopexit.loopexit75.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit75.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit75.unr-lcssa ] ; 2 uses
  %.139.epil.init = phi i64 [ %.032.i, %.lr.ph.preheader ], [ %i.cv, %.loopexit.loopexit75.unr-lcssa ]
  %lcmp.mod84 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.epil.init
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !94
  %i.cz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cy, i64 %.139.epil.init) ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  %i.db = extractvalue { i64, i1 } %i.cz, 0
  %i.dc = zext i1 %i.da to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.epil.init
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !94
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit75.unr-lcssa, %bb.d, %bn_sub_words.exit
  %.028 = phi i64 [ %.032.i, %bn_sub_words.exit ], [ %i.ch, %bb.d ], [ %i.cv, %.loopexit.loopexit75.unr-lcssa ], [ %i.dc, %.lr.ph.epil.preheader ]
  ret i64 %.028
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL21bn_mul_part_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 6 uses
  %i.b = icmp slt i32 %3, 8
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %4, %3
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i32 %5, %3
  %i.f = sext i32 %i.e to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %2, i64 noundef %i.f)
  %i.g = add i32 %5, %4                           ; 2 uses
  %i.h = icmp eq i32 %i.a, %i.g
  br i1 %i.h, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.c

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
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.d:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %3 to i64                  ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q ; 6 uses
  %i.s = sub nsw i32 %3, %4                       ; 3 uses
  %i.t = zext nneg i32 %i.a to i64                ; 15 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t ; 18 uses
  %i.v = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.u, ptr noundef readonly %1, ptr noundef nonnull readonly %i.r, i32 noundef %4, i32 noundef %i.s)
  %i.w = sub nsw i32 0, %i.s
  %i.x = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %6, ptr noundef nonnull readonly %i.r, ptr noundef readonly %1, i32 noundef %4, i32 noundef %i.w) ; 0 uses
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.z = add nsw i32 %i.y, %4                     ; 3 uses
  %i.aa = sub nsw i64 0, %i.v                     ; 2 uses
  %i.ab = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ac = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #38, !srcloc !156 ; 3 uses
  %i.ad = xor i64 %i.ac, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert388 = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat389 = shufflevector <2 x i64> %broadcast.splatinsert388, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !94
  %wide.load390 = load <2 x i64>, ptr %i.af, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load391 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !94
  %wide.load392 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !94
  %i.ai = and <2 x i64> %wide.load, %broadcast.splat
  %i.aj = and <2 x i64> %wide.load390, %broadcast.splat
  %i.ak = and <2 x i64> %wide.load391, %broadcast.splat389
  %i.al = and <2 x i64> %wide.load392, %broadcast.splat389
  %i.am = or disjoint <2 x i64> %i.ak, %i.ai
  %i.an = or disjoint <2 x i64> %i.al, %i.aj
  store <2 x i64> %i.am, ptr %i.ae, align 8, !tbaa !94
  store <2 x i64> %i.an, ptr %i.af, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  br i1 %cmp.n, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.aw, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !94
  %i.at = and i64 %i.aq, %i.ac
  %i.au = and i64 %i.as, %i.ad
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !94
  %i.aw = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.ab
  br i1 %exitcond.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph, !llvm.loop !1447

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit:      ; preds = %scalar.ph, %middle.block, %bb.d
  %i.ax = getelementptr [8 x i8], ptr %6, i64 %i.q ; 8 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q ; 6 uses
  %i.az = sub nsw i32 %5, %3                      ; 3 uses
  %i.ba = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.u, ptr noundef nonnull readonly %i.ay, ptr noundef readonly %2, i32 noundef %5, i32 noundef %i.az)
  %i.bb = sub nsw i32 0, %i.az
  %i.bc = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.ax, ptr noundef readonly %2, ptr noundef nonnull readonly %i.ay, i32 noundef %5, i32 noundef %i.bb) ; 0 uses
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.be = add nsw i32 %i.bd, %5                   ; 4 uses
  %i.bf = sub nsw i64 0, %i.ba                    ; 2 uses
  %i.bg = sext i32 %i.be to i64                   ; 6 uses
  %.not.i.i184 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i184, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.bh = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bf) #38, !srcloc !156 ; 5 uses
  %i.bi = xor i64 %i.bh, -1                       ; 4 uses
  %min.iters.check395 = icmp ult i32 %i.be, 10
  br i1 %min.iters.check395, label %scalar.ph394.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i185
  %i.bj = add nsw i64 %i.bg, %i.q
  %i.bk = shl nsw i64 %i.bj, 3
  %scevgep = getelementptr i8, ptr %6, i64 %i.bk
  %i.bl = add nsw i64 %i.bg, %i.t
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep393 = getelementptr i8, ptr %6, i64 %i.bm
  %bound0 = icmp ult ptr %i.ax, %scevgep393
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph394.preheader, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck
  %n.vec397 = and i64 %i.bg, -4                   ; 3 uses
  %broadcast.splatinsert398 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splat399 = shufflevector <2 x i64> %broadcast.splatinsert398, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert400 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat401 = shufflevector <2 x i64> %broadcast.splatinsert400, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph396
  %index403 = phi i64 [ 0, %vector.ph396 ], [ %index.next408, %vector.body402 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index403 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load404 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %wide.load405 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index403 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load406 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !94, !alias.scope !1451
  %wide.load407 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !94, !alias.scope !1451
  %i.br = and <2 x i64> %wide.load404, %broadcast.splat399
  %i.bs = and <2 x i64> %wide.load405, %broadcast.splat399
  %i.bt = and <2 x i64> %wide.load406, %broadcast.splat401
  %i.bu = and <2 x i64> %wide.load407, %broadcast.splat401
  %i.bv = or disjoint <2 x i64> %i.bt, %i.br
  %i.bw = or disjoint <2 x i64> %i.bu, %i.bs
  store <2 x i64> %i.bv, ptr %i.bn, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  store <2 x i64> %i.bw, ptr %i.bo, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %index.next408 = add nuw i64 %index403, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next408, %n.vec397
  br i1 %i.bx, label %middle.block409, label %vector.body402, !llvm.loop !1453

middle.block409:                                  ; preds = %vector.body402
  %cmp.n410 = icmp eq i64 %n.vec397, %i.bg
  br i1 %cmp.n410, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph394.preheader

scalar.ph394.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i185, %middle.block409
  %.09.i.i186.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i185 ], [ %n.vec397, %middle.block409 ] ; 5 uses
  %i.by = and i32 %i.be, 1
  %lcmp.mod.not = icmp eq i32 %i.by, 0
  br i1 %lcmp.mod.not, label %scalar.ph394.prol.loopexit, label %scalar.ph394.prol

scalar.ph394.prol:                                ; preds = %scalar.ph394.preheader
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.09.i.i186.ph ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !94
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i186.ph
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !94
  %i.cd = and i64 %i.ca, %i.bh
  %i.ce = and i64 %i.cc, %i.bi
  %i.cf = or disjoint i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !94
  %i.cg = or disjoint i64 %.09.i.i186.ph, 1
  br label %scalar.ph394.prol.loopexit

scalar.ph394.prol.loopexit:                       ; preds = %scalar.ph394.prol, %scalar.ph394.preheader
  %.09.i.i186.unr = phi i64 [ %.09.i.i186.ph, %scalar.ph394.preheader ], [ %i.cg, %scalar.ph394.prol ]
  %i.ch = add nsw i64 %i.bg, -1
  %i.ci = icmp eq i64 %.09.i.i186.ph, %i.ch
  br i1 %i.ci, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph394

scalar.ph394:                                     ; preds = %scalar.ph394.prol.loopexit, %scalar.ph394
  %.09.i.i186 = phi i64 [ %i.cy, %scalar.ph394 ], [ %.09.i.i186.unr, %scalar.ph394.prol.loopexit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.09.i.i186 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !94
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i186
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !94
  %i.cn = and i64 %i.ck, %i.bh
  %i.co = and i64 %i.cm, %i.bi
  %i.cp = or disjoint i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !94
  %i.cq = add nuw i64 %.09.i.i186, 1              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cq ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !94
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cq
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !94
  %i.cv = and i64 %i.cs, %i.bh
  %i.cw = and i64 %i.cu, %i.bi
  %i.cx = or disjoint i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !94
  %i.cy = add nuw i64 %.09.i.i186, 2              ; 2 uses
  %exitcond.not.i.i187.1 = icmp eq i64 %i.cy, %i.bg
  br i1 %exitcond.not.i.i187.1, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph394, !llvm.loop !1454

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188:   ; preds = %scalar.ph394.prol.loopexit, %scalar.ph394, %middle.block409, %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.cz = xor i64 %i.bf, %i.aa
  %i.da = icmp eq i32 %3, 8
  br i1 %i.da, label %bb.e, label %_ZL14OPENSSL_memsetPvim.exit190

bb.e:                                             ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.ax)
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.dc = sext i32 %4 to i64
  %i.dd = sext i32 %5 to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.db, ptr noundef nonnull %i.r, i64 noundef %i.dc, ptr noundef nonnull %i.ay, i64 noundef %i.dd)
  %i.de = add i32 %5, %4                          ; 3 uses
  %i.df = icmp eq i32 %i.de, 16
  br i1 %i.df, label %.preheader42.i.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = sub i32 16, %i.de
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 3
  %i.dj = add i32 %i.de, %i.a
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dl, i8 0, i64 %i.di, i1 false)
  br label %.preheader42.i.thread

_ZL14OPENSSL_memsetPvim.exit190:                  ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188
  %i.dm = shl nsw i32 %3, 2
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dn ; 4 uses
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.ax, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.do)
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.do)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.dq = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dp, i8 0, i64 %i.dq, i1 false)
  %i.dr = icmp slt i32 %4, 16
  %i.ds = icmp slt i32 %5, 16
  %or.cond = and i1 %i.dr, %i.ds
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZL14OPENSSL_memsetPvim.exit190
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  br label %bb.h

bb.g:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit190
  %i.dt = sext i32 %4 to i64
  %i.du = sext i32 %5 to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, i64 noundef %i.dt, ptr noundef nonnull %i.ay, i64 noundef %i.du)
  br label %.preheader42.i.thread

bb.h:                                             ; preds = %.preheader, %bb.j
  %.0174 = phi i32 [ %i.dv, %bb.j ], [ %3, %.preheader ]
  %i.dv = sdiv i32 %.0174, 2                      ; 10 uses
  %or.cond182 = icmp slt i32 %i.dv, %invariant.smax
  br i1 %or.cond182, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dw = sub nsw i32 %4, %i.dv
  %i.dx = sub nsw i32 %5, %i.dv
  tail call fastcc void @_ZL21bn_mul_part_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ay, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef %i.dx, ptr noundef nonnull %i.do)
  br label %.preheader42.i.thread

bb.j:                                             ; preds = %bb.h
  %i.dy = icmp eq i32 %i.dv, %4
  %i.dz = icmp eq i32 %i.dv, %5
  %or.cond183 = or i1 %i.dy, %i.dz
  br i1 %or.cond183, label %bb.k, label %bb.h, !llvm.loop !1455

bb.k:                                             ; preds = %bb.j
  %i.ea = sub nsw i32 %4, %i.dv
  %i.eb = sub nsw i32 %5, %i.dv
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ay, i32 noundef %i.dv, i32 noundef %i.ea, i32 noundef %i.eb, ptr noundef nonnull %i.do)
  br label %.preheader42.i.thread

.preheader42.i.thread:                            ; preds = %bb.i, %bb.k, %bb.g, %bb.e, %bb.f
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.gd, 0
  br i1 %.not3453.i, label %.preheader42.i191, label %.lr.ph59.i

.lr.ph.i:                                         ; preds = %.preheader42.i.thread, %.lr.ph.i
  %.048.i = phi i64 [ %i.gd, %.lr.ph.i ], [ %i.t, %.preheader42.i.thread ]
  %.02647.i = phi ptr [ %i.gb, %.lr.ph.i ], [ %i.ec, %.preheader42.i.thread ] ; 5 uses
  %.02846.i = phi ptr [ %i.ga, %.lr.ph.i ], [ %0, %.preheader42.i.thread ] ; 5 uses
  %.03045.i = phi ptr [ %i.gc, %.lr.ph.i ], [ %6, %.preheader42.i.thread ] ; 5 uses
  %.04044.i = phi i64 [ %i.fy, %.lr.ph.i ], [ 0, %.preheader42.i.thread ]
  %i.ed = load i64, ptr %.02846.i, align 8, !tbaa !94
  %i.ee = load i64, ptr %.02647.i, align 8, !tbaa !94
  %i.ef = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ed, i64 %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  %i.eh = extractvalue { i64, i1 } %i.ef, 0
  %i.ei = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eh, i64 %.04044.i) ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  %i.ek = extractvalue { i64, i1 } %i.ei, 0
  %i.el = or i1 %i.eg, %i.ej
  %i.em = zext i1 %i.el to i64
  store i64 %i.ek, ptr %.03045.i, align 8, !tbaa !94
  %i.en = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !94
  %i.ep = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !94
  %i.er = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eo, i64 %i.eq) ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  %i.et = extractvalue { i64, i1 } %i.er, 0
  %i.eu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.et, i64 %i.em) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  %i.ew = extractvalue { i64, i1 } %i.eu, 0
  %i.ex = or i1 %i.es, %i.ev
  %i.ey = zext i1 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.ew, ptr %i.ez, align 8, !tbaa !94
  %i.fa = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !94
  %i.fc = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !94
  %i.fe = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fb, i64 %i.fd) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  %i.fg = extractvalue { i64, i1 } %i.fe, 0
  %i.fh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fg, i64 %i.ey) ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  %i.fj = extractvalue { i64, i1 } %i.fh, 0
  %i.fk = or i1 %i.ff, %i.fi
  %i.fl = zext i1 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.fj, ptr %i.fm, align 8, !tbaa !94
  %i.fn = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !94
  %i.fp = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !94
  %i.fr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fo, i64 %i.fq) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %i.fu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ft, i64 %i.fl) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 1
  %i.fw = extractvalue { i64, i1 } %i.fu, 0
  %i.fx = or i1 %i.fs, %i.fv
  %i.fy = zext i1 %i.fx to i64                    ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.fw, ptr %i.fz, align 8, !tbaa !94
  %i.ga = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.gd = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.gd, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !199

.lr.ph59.i:                                       ; preds = %.preheader.i, %.lr.ph59.i
  %.158.i = phi i64 [ %i.gr, %.lr.ph59.i ], [ %i.gd, %.preheader.i ]
  %.12757.i = phi ptr [ %i.gp, %.lr.ph59.i ], [ %i.gb, %.preheader.i ] ; 2 uses
  %.12956.i = phi ptr [ %i.go, %.lr.ph59.i ], [ %i.ga, %.preheader.i ] ; 2 uses
  %.13155.i = phi ptr [ %i.gq, %.lr.ph59.i ], [ %i.gc, %.preheader.i ] ; 2 uses
  %.14154.i = phi i64 [ %i.gn, %.lr.ph59.i ], [ %i.fy, %.preheader.i ]
  %i.ge = load i64, ptr %.12956.i, align 8, !tbaa !94
  %i.gf = load i64, ptr %.12757.i, align 8, !tbaa !94
  %i.gg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ge, i64 %i.gf) ; 2 uses
  %i.gh = extractvalue { i64, i1 } %i.gg, 1
  %i.gi = extractvalue { i64, i1 } %i.gg, 0
  %i.gj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gi, i64 %.14154.i) ; 2 uses
  %i.gk = extractvalue { i64, i1 } %i.gj, 1
  %i.gl = extractvalue { i64, i1 } %i.gj, 0
  %i.gm = or i1 %i.gh, %i.gk
  %i.gn = zext i1 %i.gm to i64                    ; 2 uses
  store i64 %i.gl, ptr %.13155.i, align 8, !tbaa !94
  %i.go = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.gr = add i64 %.158.i, -1                     ; 2 uses
  %.not34.i = icmp eq i64 %i.gr, 0
  br i1 %.not34.i, label %.preheader42.i191, label %.lr.ph59.i, !llvm.loop !200

.preheader42.i191:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.fy, %.preheader.i ], [ %i.gn, %.lr.ph59.i ] ; 2 uses
  %i.gs = shl i32 %3, 2                           ; 3 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr [8 x i8], ptr %6, i64 %i.gt ; 5 uses
  br label %.lr.ph.i193

.preheader.i200:                                  ; preds = %.lr.ph.i193
  %.not3453.i201 = icmp eq i64 %i.iv, 0
  br i1 %.not3453.i201, label %.lr.ph.i218.preheader, label %.lr.ph59.i208

.lr.ph.i193:                                      ; preds = %.preheader42.i191, %.lr.ph.i193
  %.048.i194 = phi i64 [ %i.iv, %.lr.ph.i193 ], [ %i.t, %.preheader42.i191 ]
  %.02647.i195 = phi ptr [ %i.it, %.lr.ph.i193 ], [ %i.u, %.preheader42.i191 ] ; 5 uses
  %.02846.i196 = phi ptr [ %i.is, %.lr.ph.i193 ], [ %6, %.preheader42.i191 ] ; 5 uses
  %.03045.i197 = phi ptr [ %i.iu, %.lr.ph.i193 ], [ %i.gu, %.preheader42.i191 ] ; 5 uses
  %.04044.i198 = phi i64 [ %i.iq, %.lr.ph.i193 ], [ 0, %.preheader42.i191 ]
  %i.gv = load i64, ptr %.02846.i196, align 8, !tbaa !94
  %i.gw = load i64, ptr %.02647.i195, align 8, !tbaa !94
  %i.gx = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gv, i64 %i.gw) ; 2 uses
  %i.gy = extractvalue { i64, i1 } %i.gx, 1
  %i.gz = extractvalue { i64, i1 } %i.gx, 0
  %i.ha = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gz, i64 %.04044.i198) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 1
  %i.hc = extractvalue { i64, i1 } %i.ha, 0
  %i.hd = or i1 %i.gy, %i.hb
  %i.he = zext i1 %i.hd to i64
  store i64 %i.hc, ptr %.03045.i197, align 8, !tbaa !94
  %i.hf = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !94
  %i.hh = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !94
  %i.hj = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hg, i64 %i.hi) ; 2 uses
  %i.hk = extractvalue { i64, i1 } %i.hj, 1
  %i.hl = extractvalue { i64, i1 } %i.hj, 0
  %i.hm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hl, i64 %i.he) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 1
  %i.ho = extractvalue { i64, i1 } %i.hm, 0
  %i.hp = or i1 %i.hk, %i.hn
  %i.hq = zext i1 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 8
  store i64 %i.ho, ptr %i.hr, align 8, !tbaa !94
  %i.hs = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !94
  %i.hu = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !94
  %i.hw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ht, i64 %i.hv) ; 2 uses
  %i.hx = extractvalue { i64, i1 } %i.hw, 1
  %i.hy = extractvalue { i64, i1 } %i.hw, 0
  %i.hz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hy, i64 %i.hq) ; 2 uses
  %i.ia = extractvalue { i64, i1 } %i.hz, 1
  %i.ib = extractvalue { i64, i1 } %i.hz, 0
  %i.ic = or i1 %i.hx, %i.ia
  %i.id = zext i1 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 16
  store i64 %i.ib, ptr %i.ie, align 8, !tbaa !94
  %i.if = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 24
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !94
  %i.ih = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !94
  %i.ij = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ig, i64 %i.ii) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 1
  %i.il = extractvalue { i64, i1 } %i.ij, 0
  %i.im = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.il, i64 %i.id) ; 2 uses
  %i.in = extractvalue { i64, i1 } %i.im, 1
  %i.io = extractvalue { i64, i1 } %i.im, 0
  %i.ip = or i1 %i.ik, %i.in
  %i.iq = zext i1 %i.ip to i64                    ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 24
  store i64 %i.io, ptr %i.ir, align 8, !tbaa !94
  %i.is = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 32 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 32 ; 2 uses
  %i.iv = add i64 %.048.i194, -4                  ; 4 uses
  %.not.i199 = icmp ult i64 %i.iv, 4
  br i1 %.not.i199, label %.preheader.i200, label %.lr.ph.i193, !llvm.loop !219

.lr.ph59.i208:                                    ; preds = %.preheader.i200, %.lr.ph59.i208
  %.158.i209 = phi i64 [ %i.jj, %.lr.ph59.i208 ], [ %i.iv, %.preheader.i200 ]
  %.12757.i210 = phi ptr [ %i.jh, %.lr.ph59.i208 ], [ %i.it, %.preheader.i200 ] ; 2 uses
  %.12956.i211 = phi ptr [ %i.jg, %.lr.ph59.i208 ], [ %i.is, %.preheader.i200 ] ; 2 uses
  %.13155.i212 = phi ptr [ %i.ji, %.lr.ph59.i208 ], [ %i.iu, %.preheader.i200 ] ; 2 uses
  %.14154.i213 = phi i64 [ %i.jf, %.lr.ph59.i208 ], [ %i.iq, %.preheader.i200 ]
  %i.iw = load i64, ptr %.12956.i211, align 8, !tbaa !94
  %i.ix = load i64, ptr %.12757.i210, align 8, !tbaa !94
  %i.iy = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.iw, i64 %i.ix) ; 2 uses
  %i.iz = extractvalue { i64, i1 } %i.iy, 1
  %i.ja = extractvalue { i64, i1 } %i.iy, 0
  %i.jb = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ja, i64 %.14154.i213) ; 2 uses
  %i.jc = extractvalue { i64, i1 } %i.jb, 1
  %i.jd = extractvalue { i64, i1 } %i.jb, 0
  %i.je = or i1 %i.iz, %i.jc
  %i.jf = zext i1 %i.je to i64                    ; 2 uses
  store i64 %i.jd, ptr %.13155.i212, align 8, !tbaa !94
  %i.jg = getelementptr inbounds nuw i8, ptr %.12956.i211, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.12757.i210, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.13155.i212, i64 8
  %i.jj = add i64 %.158.i209, -1                  ; 2 uses
  %.not34.i214 = icmp eq i64 %i.jj, 0
  br i1 %.not34.i214, label %.lr.ph.i218.preheader, label %.lr.ph59.i208, !llvm.loop !220

.lr.ph.i218.preheader:                            ; preds = %.lr.ph59.i208, %.preheader.i200
  %i.jk = phi i64 [ %i.iq, %.preheader.i200 ], [ %i.jf, %.lr.ph59.i208 ]
  br label %.lr.ph.i218

.lr.ph59.preheader.i227:                          ; preds = %.lr.ph.i218
  %7 = sub nsw i64 %.032.i, %i.jk
  %.not3453.i226 = icmp eq i64 %i.lh, 0
  br i1 %.not3453.i226, label %.lr.ph.i243, label %.lr.ph59.i233

.lr.ph.i218:                                      ; preds = %.lr.ph.i218.preheader, %.lr.ph.i218
  %.048.i219 = phi i64 [ %i.lh, %.lr.ph.i218 ], [ %i.t, %.lr.ph.i218.preheader ]
  %.02647.i220 = phi ptr [ %i.lg, %.lr.ph.i218 ], [ %i.u, %.lr.ph.i218.preheader ] ; 6 uses
  %.02846.i221 = phi ptr [ %i.lf, %.lr.ph.i218 ], [ %6, %.lr.ph.i218.preheader ] ; 5 uses
  %.04044.i223 = phi i64 [ %i.le, %.lr.ph.i218 ], [ 0, %.lr.ph.i218.preheader ]
  %i.jl = load i64, ptr %.02846.i221, align 8, !tbaa !94
  %i.jm = load i64, ptr %.02647.i220, align 8, !tbaa !94
  %i.jn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jl, i64 %i.jm) ; 2 uses
  %i.jo = extractvalue { i64, i1 } %i.jn, 1
  %i.jp = extractvalue { i64, i1 } %i.jn, 0
  %i.jq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jp, i64 %.04044.i223) ; 2 uses
  %i.jr = extractvalue { i64, i1 } %i.jq, 1
  %i.js = extractvalue { i64, i1 } %i.jq, 0
  %i.jt = or i1 %i.jo, %i.jr
  %i.ju = zext i1 %i.jt to i64
  store i64 %i.js, ptr %.02647.i220, align 8, !tbaa !94
  %i.jv = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !94
  %i.jx = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 8 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !94
  %i.jz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jw, i64 %i.jy) ; 2 uses
  %i.ka = extractvalue { i64, i1 } %i.jz, 1
  %i.kb = extractvalue { i64, i1 } %i.jz, 0
  %i.kc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kb, i64 %i.ju) ; 2 uses
  %i.kd = extractvalue { i64, i1 } %i.kc, 1
  %i.ke = extractvalue { i64, i1 } %i.kc, 0
  %i.kf = or i1 %i.ka, %i.kd
  %i.kg = zext i1 %i.kf to i64
  store i64 %i.ke, ptr %i.jx, align 8, !tbaa !94
  %i.kh = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 16
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !94
  %i.kj = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 16 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !94
  %i.kl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ki, i64 %i.kk) ; 2 uses
  %i.km = extractvalue { i64, i1 } %i.kl, 1
  %i.kn = extractvalue { i64, i1 } %i.kl, 0
  %i.ko = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kn, i64 %i.kg) ; 2 uses
  %i.kp = extractvalue { i64, i1 } %i.ko, 1
  %i.kq = extractvalue { i64, i1 } %i.ko, 0
  %i.kr = or i1 %i.km, %i.kp
  %i.ks = zext i1 %i.kr to i64
  store i64 %i.kq, ptr %i.kj, align 8, !tbaa !94
  %i.kt = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 24
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !94
  %i.kv = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 24 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !94
  %i.kx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ku, i64 %i.kw) ; 2 uses
  %i.ky = extractvalue { i64, i1 } %i.kx, 1
  %i.kz = extractvalue { i64, i1 } %i.kx, 0
  %i.la = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kz, i64 %i.ks) ; 2 uses
  %i.lb = extractvalue { i64, i1 } %i.la, 1
  %i.lc = extractvalue { i64, i1 } %i.la, 0
  %i.ld = or i1 %i.ky, %i.lb
  %i.le = zext i1 %i.ld to i64                    ; 3 uses
  store i64 %i.lc, ptr %i.kv, align 8, !tbaa !94
  %i.lf = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 32 ; 2 uses
  %i.lg = getelementptr i8, ptr %.02647.i220, i64 32 ; 2 uses
  %i.lh = add i64 %.048.i219, -4                  ; 4 uses
  %.not.i224 = icmp ult i64 %i.lh, 4
  br i1 %.not.i224, label %.lr.ph59.preheader.i227, label %.lr.ph.i218, !llvm.loop !199

.lr.ph59.i233:                                    ; preds = %.lr.ph59.preheader.i227, %.lr.ph59.i233
  %.158.i234 = phi i64 [ %i.lu, %.lr.ph59.i233 ], [ %i.lh, %.lr.ph59.preheader.i227 ]
  %.12956.i236.a = phi ptr [ %i.lt, %.lr.ph59.i233 ], [ %i.lg, %.lr.ph59.preheader.i227 ] ; 3 uses
  %.13155.i237 = phi ptr [ %i.ls, %.lr.ph59.i233 ], [ %i.lf, %.lr.ph59.preheader.i227 ] ; 2 uses
  %.14154.i238 = phi i64 [ %i.lr, %.lr.ph59.i233 ], [ %i.le, %.lr.ph59.preheader.i227 ]
  %i.li = load i64, ptr %.13155.i237, align 8, !tbaa !94
  %i.lj = load i64, ptr %.12956.i236.a, align 8, !tbaa !94
  %i.lk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.li, i64 %i.lj) ; 2 uses
  %i.ll = extractvalue { i64, i1 } %i.lk, 1
  %i.lm = extractvalue { i64, i1 } %i.lk, 0
  %i.ln = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lm, i64 %.14154.i238) ; 2 uses
  %i.lo = extractvalue { i64, i1 } %i.ln, 1
  %i.lp = extractvalue { i64, i1 } %i.ln, 0
  %i.lq = or i1 %i.ll, %i.lo
  %i.lr = zext i1 %i.lq to i64                    ; 2 uses
  store i64 %i.lp, ptr %.12956.i236.a, align 8, !tbaa !94
  %i.ls = getelementptr inbounds nuw i8, ptr %.13155.i237, i64 8
  %i.lt = getelementptr i8, ptr %.12956.i236.a, i64 8
  %i.lu = add i64 %.158.i234, -1                  ; 2 uses
  %.not34.i239 = icmp eq i64 %i.lu, 0
  br i1 %.not34.i239, label %.lr.ph.i243, label %.lr.ph59.i233, !llvm.loop !200

.lr.ph.i243:                                      ; preds = %.lr.ph59.i233, %.lr.ph59.preheader.i227
  %.032.i240 = phi i64 [ %i.le, %.lr.ph59.preheader.i227 ], [ %i.lr, %.lr.ph59.i233 ]
  %i.lv = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cz) #38 ; 5 uses
  %i.lw = xor i64 %i.lv, -1                       ; 4 uses
  %min.iters.check419 = icmp ult i32 %i.a, 10
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph.i243
  %i.lx = shl nuw nsw i64 %i.t, 4
  %scevgep413 = getelementptr i8, ptr %6, i64 %i.lx
  %i.ly = add nuw nsw i64 %i.gt, %i.t
  %i.lz = shl nuw nsw i64 %i.ly, 3
  %scevgep414 = getelementptr i8, ptr %6, i64 %i.lz
  %bound0415 = icmp ult ptr %i.u, %scevgep414
  %bound1416 = icmp ult ptr %i.gu, %scevgep413
  %found.conflict417 = and i1 %bound0415, %bound1416
  br i1 %found.conflict417, label %scalar.ph418.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %vector.memcheck412
  %n.vec421 = and i64 %i.t, 2147483644            ; 3 uses
  %broadcast.splatinsert422 = insertelement <2 x i64> poison, i64 %i.lv, i64 0
  %broadcast.splat423 = shufflevector <2 x i64> %broadcast.splatinsert422, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert424 = insertelement <2 x i64> poison, i64 %i.lw, i64 0
  %broadcast.splat425 = shufflevector <2 x i64> %broadcast.splatinsert424, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph420
  %index427 = phi i64 [ 0, %vector.ph420 ], [ %index.next432, %vector.body426 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index427 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load428 = load <2 x i64>, ptr %i.ma, align 8, !tbaa !94, !alias.scope !1456
  %wide.load429 = load <2 x i64>, ptr %i.mb, align 8, !tbaa !94, !alias.scope !1456
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index427 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %wide.load430 = load <2 x i64>, ptr %i.mc, align 8, !tbaa !94, !alias.scope !1459, !noalias !1456
  %wide.load431 = load <2 x i64>, ptr %i.md, align 8, !tbaa !94, !alias.scope !1459, !noalias !1456
  %i.me = and <2 x i64> %wide.load428, %broadcast.splat423
  %i.mf = and <2 x i64> %wide.load429, %broadcast.splat423
  %i.mg = and <2 x i64> %wide.load430, %broadcast.splat425
  %i.mh = and <2 x i64> %wide.load431, %broadcast.splat425
  %i.mi = or disjoint <2 x i64> %i.mg, %i.me
  %i.mj = or disjoint <2 x i64> %i.mh, %i.mf
  store <2 x i64> %i.mi, ptr %i.mc, align 8, !tbaa !94, !alias.scope !1459, !noalias !1456
  store <2 x i64> %i.mj, ptr %i.md, align 8, !tbaa !94, !alias.scope !1459, !noalias !1456
  %index.next432 = add nuw i64 %index427, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next432, %n.vec421
  br i1 %i.mk, label %middle.block433, label %vector.body426, !llvm.loop !1461

middle.block433:                                  ; preds = %vector.body426
  %cmp.n434 = icmp eq i64 %n.vec421, %i.t
  br i1 %cmp.n434, label %.preheader42.i244, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %vector.memcheck412, %.lr.ph.i243, %middle.block433
  %.09.i.ph = phi i64 [ 0, %vector.memcheck412 ], [ 0, %.lr.ph.i243 ], [ %n.vec421, %middle.block433 ]
  br label %scalar.ph418

scalar.ph418:                                     ; preds = %scalar.ph418, %scalar.ph418.preheader
  %.09.i = phi i64 [ %.09.i.ph, %scalar.ph418.preheader ], [ %i.na, %scalar.ph418 ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.09.i
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !94
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !94
  %i.mp = and i64 %i.mm, %i.lv
  %i.mq = and i64 %i.mo, %i.lw
  %i.mr = or disjoint i64 %i.mq, %i.mp
  store i64 %i.mr, ptr %i.mn, align 8, !tbaa !94
  %i.ms = or disjoint i64 %.09.i, 1               ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !94
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ms ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !94
  %i.mx = and i64 %i.mu, %i.lv
  %i.my = and i64 %i.mw, %i.lw
  %i.mz = or disjoint i64 %i.my, %i.mx
  store i64 %i.mz, ptr %i.mv, align 8, !tbaa !94
  %i.na = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.na, %i.t
  br i1 %exitcond.not.i.1, label %.preheader42.i244, label %scalar.ph418, !llvm.loop !1462

.preheader42.i244:                                ; preds = %scalar.ph418, %middle.block433
  %8 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  br label %.lr.ph.i246

.preheader42.i244.a:                              ; preds = %.lr.ph.i246
  %i.nb = add nuw nsw i64 %.032.i240, %.032.i
  %i.nc = and i64 %i.lv, %7
  %i.nd = and i64 %i.nb, %i.lw
  %i.ne = or disjoint i64 %i.nc, %i.nd
  %.not3453.i254 = icmp eq i64 %i.pb, 0
  br i1 %.not3453.i254, label %bn_add_words.exit269, label %.lr.ph59.i261

.lr.ph.i246:                                      ; preds = %.preheader42.i244, %.lr.ph.i246
  %.048.i247 = phi i64 [ %i.pb, %.lr.ph.i246 ], [ %i.t, %.preheader42.i244 ]
  %.02647.i248 = phi ptr [ %i.pa, %.lr.ph.i246 ], [ %i.u, %.preheader42.i244 ] ; 5 uses
  %.02846.i249 = phi ptr [ %i.oz, %.lr.ph.i246 ], [ %8, %.preheader42.i244 ] ; 6 uses
  %.04044.i251 = phi i64 [ %i.oy, %.lr.ph.i246 ], [ 0, %.preheader42.i244 ]
  %i.nf = load i64, ptr %.02846.i249, align 8, !tbaa !94
  %i.ng = load i64, ptr %.02647.i248, align 8, !tbaa !94
  %i.nh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nf, i64 %i.ng) ; 2 uses
  %i.ni = extractvalue { i64, i1 } %i.nh, 1
  %i.nj = extractvalue { i64, i1 } %i.nh, 0
  %i.nk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nj, i64 %.04044.i251) ; 2 uses
  %i.nl = extractvalue { i64, i1 } %i.nk, 1
  %i.nm = extractvalue { i64, i1 } %i.nk, 0
  %i.nn = or i1 %i.ni, %i.nl
  %i.no = zext i1 %i.nn to i64
  store i64 %i.nm, ptr %.02846.i249, align 8, !tbaa !94
  %i.np = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 8 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !94
  %i.nr = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 8
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !94
  %i.nt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nq, i64 %i.ns) ; 2 uses
  %i.nu = extractvalue { i64, i1 } %i.nt, 1
  %i.nv = extractvalue { i64, i1 } %i.nt, 0
  %i.nw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nv, i64 %i.no) ; 2 uses
  %i.nx = extractvalue { i64, i1 } %i.nw, 1
  %i.ny = extractvalue { i64, i1 } %i.nw, 0
  %i.nz = or i1 %i.nu, %i.nx
  %i.oa = zext i1 %i.nz to i64
  store i64 %i.ny, ptr %i.np, align 8, !tbaa !94
  %i.ob = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 16 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !94
  %i.od = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 16
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !94
  %i.of = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oc, i64 %i.oe) ; 2 uses
  %i.og = extractvalue { i64, i1 } %i.of, 1
  %i.oh = extractvalue { i64, i1 } %i.of, 0
  %i.oi = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oh, i64 %i.oa) ; 2 uses
  %i.oj = extractvalue { i64, i1 } %i.oi, 1
  %i.ok = extractvalue { i64, i1 } %i.oi, 0
  %i.ol = or i1 %i.og, %i.oj
  %i.om = zext i1 %i.ol to i64
  store i64 %i.ok, ptr %i.ob, align 8, !tbaa !94
  %i.on = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 24 ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !94
  %i.op = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 24
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !94
  %i.or = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oo, i64 %i.oq) ; 2 uses
  %i.os = extractvalue { i64, i1 } %i.or, 1
  %i.ot = extractvalue { i64, i1 } %i.or, 0
  %i.ou = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ot, i64 %i.om) ; 2 uses
  %i.ov = extractvalue { i64, i1 } %i.ou, 1
  %i.ow = extractvalue { i64, i1 } %i.ou, 0
  %i.ox = or i1 %i.os, %i.ov
  %i.oy = zext i1 %i.ox to i64                    ; 3 uses
  store i64 %i.ow, ptr %i.on, align 8, !tbaa !94
  %i.oz = getelementptr i8, ptr %.02846.i249, i64 32 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 32 ; 2 uses
  %i.pb = add i64 %.048.i247, -4                  ; 4 uses
  %.not.i252 = icmp ult i64 %i.pb, 4
  br i1 %.not.i252, label %.preheader42.i244.a, label %.lr.ph.i246, !llvm.loop !199

.lr.ph59.i261:                                    ; preds = %.preheader42.i244.a, %.lr.ph59.i261
  %.158.i262 = phi i64 [ %i.po, %.lr.ph59.i261 ], [ %i.pb, %.preheader42.i244.a ]
  %.12956.i264.a = phi ptr [ %i.pn, %.lr.ph59.i261 ], [ %i.pa, %.preheader42.i244.a ] ; 2 uses
  %.13155.i265 = phi ptr [ %i.pm, %.lr.ph59.i261 ], [ %i.oz, %.preheader42.i244.a ] ; 3 uses
  %.14154.i266 = phi i64 [ %i.pl, %.lr.ph59.i261 ], [ %i.oy, %.preheader42.i244.a ]
  %i.pc = load i64, ptr %.13155.i265, align 8, !tbaa !94
  %i.pd = load i64, ptr %.12956.i264.a, align 8, !tbaa !94
  %i.pe = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pc, i64 %i.pd) ; 2 uses
  %i.pf = extractvalue { i64, i1 } %i.pe, 1
  %i.pg = extractvalue { i64, i1 } %i.pe, 0
  %i.ph = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pg, i64 %.14154.i266) ; 2 uses
  %i.pi = extractvalue { i64, i1 } %i.ph, 1
  %i.pj = extractvalue { i64, i1 } %i.ph, 0
  %i.pk = or i1 %i.pf, %i.pi
  %i.pl = zext i1 %i.pk to i64                    ; 2 uses
  store i64 %i.pj, ptr %.13155.i265, align 8, !tbaa !94
  %i.pm = getelementptr i8, ptr %.13155.i265, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %.12956.i264.a, i64 8
  %i.po = add i64 %.158.i262, -1                  ; 2 uses
  %.not34.i267 = icmp eq i64 %i.po, 0
  br i1 %.not34.i267, label %bn_add_words.exit269, label %.lr.ph59.i261, !llvm.loop !200

bn_add_words.exit269:                             ; preds = %.lr.ph59.i261, %.preheader42.i244.a
  %.032.i268 = phi i64 [ %i.oy, %.preheader42.i244.a ], [ %i.pl, %.lr.ph59.i261 ]
  %i.pp = mul nuw nsw i32 %3, 3                   ; 2 uses
  %i.pq = icmp slt i32 %i.pp, %i.gs
  br i1 %i.pq, label %.lr.ph.preheader, label %_ZL14OPENSSL_memsetPvim.exit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit269
  %i.pr = add i64 %i.ne, %.032.i268               ; 2 uses
  %i.ps = zext nneg i32 %i.pp to i64              ; 3 uses
  %xtraiter459 = and i32 %3, 1
  %lcmp.mod460.not = icmp eq i32 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.lr.ph.preheader.new, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ps ; 2 uses
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !94 ; 2 uses
  %i.pv = add i64 %i.pu, %i.pr                    ; 2 uses
  store i64 %i.pv, ptr %i.pt, align 8, !tbaa !94
  %i.pw = icmp ult i64 %i.pv, %i.pu
  %i.px = zext i1 %i.pw to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.ps, 1
  br label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.unr = phi i64 [ %i.ps, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0175295.unr = phi i64 [ %i.pr, %.lr.ph.preheader ], [ %i.px, %.lr.ph.prol ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0175295 = phi i64 [ %.0175295.unr, %.lr.ph.preheader.new ], [ %i.qi, %.lr.ph ]
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !94 ; 2 uses
  %i.qa = add i64 %i.pz, %.0175295                ; 2 uses
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !94
  %i.qb = icmp ult i64 %i.qa, %i.pz
  %i.qc = zext i1 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !94 ; 2 uses
  %i.qg = add i64 %i.qf, %i.qc                    ; 2 uses
  store i64 %i.qg, ptr %i.qe, align 8, !tbaa !94
  %i.qh = icmp ult i64 %i.qg, %i.qf
  %i.qi = zext i1 %i.qh to i64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qj = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.qk = icmp sgt i32 %i.gs, %i.qj
  br i1 %i.qk, label %.lr.ph, label %_ZL14OPENSSL_memsetPvim.exit, !llvm.loop !1463

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %.lr.ph, %bn_add_words.exit269, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -1073741824, -2147483648) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #23 {
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
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %0, ptr noundef %1, i64 noundef %i.f, ptr noundef %2, i64 noundef %i.h)
  %i.i = add nsw i32 %5, %4                       ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %_ZL14OPENSSL_memsetPvim.exit, label %.loopexit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.d
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
  %i.t = add nsw i32 %i.s, %4                     ; 3 uses
  %i.u = add nsw i32 %5, %i.s                     ; 3 uses
  %i.v = zext nneg i32 %i.s to i64                ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 4 uses
  %i.x = sub i32 0, %4
  %i.y = zext nneg i32 %3 to i64                  ; 16 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.y ; 19 uses
  %i.aa = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.z, ptr noundef readonly %1, ptr noundef readonly %i.w, i32 noundef %i.t, i32 noundef %i.x)
  %i.ab = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %6, ptr noundef readonly %i.w, ptr noundef readonly %1, i32 noundef %i.t, i32 noundef %4) ; 0 uses
  %i.ac = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %i.ad = add nsw i32 %i.ac, %i.t                 ; 3 uses
  %i.ae = sub nsw i64 0, %i.aa                    ; 2 uses
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ag = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ae) #38, !srcloc !156 ; 3 uses
  %i.ah = xor i64 %i.ag, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert354 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat355 = shufflevector <2 x i64> %broadcast.splatinsert354, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !tbaa !94
  %wide.load356 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load357 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !94
  %wide.load358 = load <2 x i64>, ptr %i.al, align 8, !tbaa !94
  %i.am = and <2 x i64> %wide.load, %broadcast.splat
  %i.an = and <2 x i64> %wide.load356, %broadcast.splat
  %i.ao = and <2 x i64> %wide.load357, %broadcast.splat355
  %i.ap = and <2 x i64> %wide.load358, %broadcast.splat355
  %i.aq = or disjoint <2 x i64> %i.ao, %i.am
  %i.ar = or disjoint <2 x i64> %i.ap, %i.an
  store <2 x i64> %i.aq, ptr %i.ai, align 8, !tbaa !94
  store <2 x i64> %i.ar, ptr %i.aj, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br i1 %cmp.n, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.ba, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !94
  %i.ax = and i64 %i.au, %i.ag
  %i.ay = and i64 %i.aw, %i.ah
  %i.az = or disjoint i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.at, align 8, !tbaa !94
  %i.ba = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.af
  br i1 %exitcond.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph, !llvm.loop !1465

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit:      ; preds = %scalar.ph, %middle.block, %bb.e
  %i.bb = getelementptr [8 x i8], ptr %6, i64 %i.v ; 8 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.bd = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.z, ptr noundef readonly %i.bc, ptr noundef readonly %2, i32 noundef %i.u, i32 noundef %5)
  %i.be = sub nsw i32 0, %5
  %i.bf = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %i.bb, ptr noundef readonly %2, ptr noundef readonly %i.bc, i32 noundef %i.u, i32 noundef %i.be) ; 0 uses
  %i.bg = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %i.bh = add nsw i32 %i.bg, %i.u                 ; 4 uses
  %i.bi = sub nsw i64 0, %i.bd                    ; 2 uses
  %i.bj = sext i32 %i.bh to i64                   ; 6 uses
  %.not.i.i171 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i171, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175, label %.lr.ph.i.i172

.lr.ph.i.i172:                                    ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.bk = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bi) #38, !srcloc !156 ; 5 uses
  %i.bl = xor i64 %i.bk, -1                       ; 4 uses
  %min.iters.check361 = icmp ult i32 %i.bh, 10
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i172
  %i.bm = add nsw i64 %i.v, %i.bj
  %i.bn = shl nsw i64 %i.bm, 3
  %scevgep = getelementptr i8, ptr %6, i64 %i.bn
  %i.bo = add nsw i64 %i.bj, %i.y
  %i.bp = shl nsw i64 %i.bo, 3
  %scevgep359 = getelementptr i8, ptr %6, i64 %i.bp
  %bound0 = icmp ult ptr %i.bb, %scevgep359
  %bound1 = icmp ult ptr %i.z, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck
  %n.vec363 = and i64 %i.bj, -4                   ; 3 uses
  %broadcast.splatinsert364 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
end_hunk_0
