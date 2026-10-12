Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 332
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 550
begin_hunk_0_@ec_bignum_to_scalar:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi9 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !80
  %wide.load10 = load <2 x i64>, ptr %i.m, align 8, !tbaa !80
  %i.n = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.o = or <2 x i64> %wide.load10, %vec.phi9     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1668

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.q = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %bn_fits_in_words.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ %i.c, %.lr.ph.i.i ], [ %i.l, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.u, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i.i = phi i64 [ %i.t, %scalar.ph ], [ %.078.i.i.ph, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.09.i.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80
  %i.t = or i64 %i.s, %.078.i.i                   ; 2 uses
  %i.u = add nuw i64 %.09.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not.i.i, label %bn_fits_in_words.exit.i, label %scalar.ph, !llvm.loop !1669

bn_fits_in_words.exit.i:                          ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.q, %middle.block ], [ %i.t, %scalar.ph ]
  %.not16.i = icmp eq i64 %.lcssa, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bn_fits_in_words.exit.i
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 280) #46
  br label %bn_copy_words.exit.thread

bb.e:                                             ; preds = %bn_fits_in_words.exit.i, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.c, %bn_fits_in_words.exit.i ] ; 2 uses
  %i.v = icmp eq i32 %i.b, 0
  br i1 %i.v, label %OPENSSL_memset.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = shl nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.w, i1 false)
  br label %OPENSSL_memset.exit.i

OPENSSL_memset.exit.i:                            ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %.0.i, 0
  br i1 %i.x, label %bn_copy_words.exit, label %bb.g

bb.g:                                             ; preds = %OPENSSL_memset.exit.i
  %i.y = shl nsw i64 %.0.i, 3
  %i.z = load ptr, ptr %2, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %i.z, i64 %i.y, i1 false)
  br label %bn_copy_words.exit

bn_copy_words.exit:                               ; preds = %bb.g, %OPENSSL_memset.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !297
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !296
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef readonly %1, i64 noundef %i.ad, ptr noundef readonly %i.ab, i64 noundef %i.ad)
  %.lobit.i = lshr i32 %i.ae, 31
  %i.af = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.lobit.i) #47, !srcloc !120
  %.not6 = icmp eq i32 %i.af, 0
  br i1 %.not6, label %bn_copy_words.exit.thread, label %bb.h

bn_copy_words.exit.thread:                        ; preds = %bb.d, %bb.b, %bn_copy_words.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 133, ptr noundef nonnull @.str.31, i32 noundef 21) #46
  br label %bb.h

bb.h:                                             ; preds = %bn_copy_words.exit, %bn_copy_words.exit.thread
  %.0 = phi i32 [ 0, %bn_copy_words.exit.thread ], [ 1, %bn_copy_words.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @ec_scalar_to_montgomery_inv_vartime(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !292
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #46
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc void @digest_to_scalar(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93   ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.d, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 4 uses
  %i.g = zext nneg i32 %.05.i.i to i64
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !80
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bn_minimal_width.exit.thread7.i

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.05.i.i, -1
  %i.m = icmp sgt i32 %.05.i.i, 1
  br i1 %i.m, label %bb.b, label %BN_num_bits.exit, !llvm.loop !10

bn_minimal_width.exit.i:                          ; preds = %bb.a
  %i.n = icmp eq i32 %i.d, 0
  br i1 %i.n, label %BN_num_bits.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !92
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.o = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.f, %bb.b ]
  %.0.lcssa.i9.i = phi i32 [ %i.d, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.b ]
  %i.p = add nsw i32 %.0.lcssa.i9.i, -1           ; 2 uses
  %i.q = shl nsw i32 %i.p, 6
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80   ; 3 uses
  %i.u = icmp ne i64 %i.t, 0
  %i.v = lshr i64 %i.t, 32                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, 0                 ; 2 uses
  %i.w = select i1 %.not.i.i, i32 0, i32 32
  %i.x = zext i1 %i.u to i32
  %i.y = select i1 %.not.i.i, i64 %i.t, i64 %i.v  ; 2 uses
  %i.z = lshr i64 %i.y, 16                        ; 2 uses
  %.not52.i.i = icmp eq i64 %i.z, 0               ; 2 uses
  %i.aa = select i1 %.not52.i.i, i32 0, i32 16
  %i.ab = select i1 %.not52.i.i, i64 %i.y, i64 %i.z ; 2 uses
  %i.ac = lshr i64 %i.ab, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ac, 0              ; 2 uses
  %i.ad = select i1 %.not53.i.i, i32 0, i32 8
  %i.ae = select i1 %.not53.i.i, i64 %i.ab, i64 %i.ac ; 2 uses
  %i.af = lshr i64 %i.ae, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.af, 0              ; 2 uses
  %i.ag = select i1 %.not54.i.i, i32 0, i32 4
  %i.ah = select i1 %.not54.i.i, i64 %i.ae, i64 %i.af ; 2 uses
  %i.ai = lshr i64 %i.ah, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.ai, 0              ; 2 uses
  %i.aj = select i1 %.not55.i.i, i32 0, i32 2
  %i.ak = select i1 %.not55.i.i, i64 %i.ah, i64 %i.ai
  %i.al = icmp samesign ugt i64 %i.ak, 1
  %.neg.i.i = zext i1 %i.al to i32
  %i.am = or disjoint i32 %i.q, %i.x
  %i.an = or disjoint i32 %i.am, %i.w
  %i.ao = or disjoint i32 %i.an, %i.aa
  %i.ap = or disjoint i32 %i.ao, %i.ad
  %i.aq = or disjoint i32 %i.ap, %i.ag
  %i.ar = or disjoint i32 %i.aq, %i.aj
  %i.as = add i32 %i.ar, %.neg.i.i
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.c, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread7.i
  %.0.i = phi i32 [ %i.as, %bn_minimal_width.exit.thread7.i ], [ 0, %bn_minimal_width.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.at = zext i32 %.0.i to i64                   ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 7
  %i.av = lshr i64 %i.au, 3
  %spec.select = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.av) ; 7 uses
  %i.aw = sext i32 %i.d to i64                    ; 4 uses
  %i.ax = shl nsw i64 %i.aw, 3
  %.not.i = icmp ugt i64 %spec.select, %i.ax
  br i1 %.not.i, label %bb.d, label %.preheader28.i

.preheader28.i:                                   ; preds = %BN_num_bits.exit
  %i.ay = icmp samesign ugt i64 %spec.select, 7
  br i1 %i.ay, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader28.i
  %i.az = add nsw i64 %spec.select, -8            ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02231.i.prol = phi i64 [ %i.bc, %.lr.ph.i.prol ], [ %spec.select, %.lr.ph.i.preheader ]
  %.02330.i.prol = phi ptr [ %i.bf, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.02429.i.prol = phi i64 [ %i.bg, %.lr.ph.i.prol ], [ %i.aw, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bc = add i64 %.02231.i.prol, -8              ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %.0.copyload.i.i.prol = load i64, ptr %i.bd, align 1
  %i.be = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.prol)
  store i64 %i.be, ptr %.02330.i.prol, align 8, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %.02330.i.prol, i64 8 ; 3 uses
  %i.bg = add nsw i64 %.02429.i.prol, -1          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1670

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.02231.i.unr = phi i64 [ %spec.select, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %.02330.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %.02429.i.unr = phi i64 [ %i.aw, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %.lcssa72.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %.lcssa71.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %.lcssa70.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %i.bh = icmp ult i64 %i.az, 24
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %BN_num_bits.exit
  tail call void @abort() #49
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02231.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %.02231.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.02330.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %.02330.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02429.i = phi i64 [ %i.by, %.lr.ph.i ], [ %.02429.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bi = getelementptr i8, ptr %2, i64 %.02231.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.bj, align 1
  %i.bk = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.bk, ptr %.02330.i, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %.02330.i, i64 8
  %i.bm = getelementptr i8, ptr %2, i64 %.02231.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16
  %.0.copyload.i.i.1 = load i64, ptr %i.bn, align 1
  %i.bo = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.1)
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !80
  %i.bp = getelementptr inbounds nuw i8, ptr %.02330.i, i64 16
  %i.bq = getelementptr i8, ptr %2, i64 %.02231.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %.0.copyload.i.i.2 = load i64, ptr %i.br, align 1
  %i.bs = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.2)
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %.02330.i, i64 24
  %i.bu = add i64 %.02231.i, -32                  ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %i.bu
  %.0.copyload.i.i.3 = load i64, ptr %i.bv, align 1
  %i.bw = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.3)
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %.02330.i, i64 32 ; 2 uses
  %i.by = add nsw i64 %.02429.i, -4               ; 2 uses
  %i.bz = icmp ugt i64 %i.bu, 7
  br i1 %i.bz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader28.i
  %.024.lcssa.i = phi i64 [ %i.aw, %.preheader28.i ], [ %.lcssa70.unr, %.lr.ph.i.prol.loopexit ], [ %i.by, %.lr.ph.i ] ; 2 uses
  %.023.lcssa.i = phi ptr [ %1, %.preheader28.i ], [ %.lcssa71.unr, %.lr.ph.i.prol.loopexit ], [ %i.bx, %.lr.ph.i ] ; 3 uses
  %.022.lcssa.i = phi i64 [ %spec.select, %.preheader28.i ], [ %.lcssa72.unr, %.lr.ph.i.prol.loopexit ], [ %i.bu, %.lr.ph.i ] ; 4 uses
  %.not27.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not27.i, label %bb.e, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %xtraiter74 = and i64 %.022.lcssa.i, 3          ; 3 uses
  %i.ca = icmp ult i64 %.022.lcssa.i, 4
  br i1 %i.ca, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.022.lcssa.i, -4
  br label %.preheader.i

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.035.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.dg, %.unr-lcssa ]
  %.02134.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.df, %.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter74, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.035.i.epil = phi i64 [ %i.cg, %.preheader.i.epil ], [ %.035.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.02134.i.epil = phi i64 [ %i.cf, %.preheader.i.epil ], [ %.02134.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.cb = shl i64 %.02134.i.epil, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i.epil
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !76
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.cb, %i.ce            ; 2 uses
  %i.cg = add nuw nsw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter74
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !1671

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %.lcssa = phi i64 [ %i.df, %.unr-lcssa ], [ %i.cf, %.preheader.i.epil ]
  store i64 %.lcssa, ptr %.023.lcssa.i, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 8
  %i.ci = add i64 %.024.lcssa.i, -1
  br label %bb.e

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.035.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.dg, %.preheader.i ] ; 5 uses
  %.02134.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.df, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !76
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl i64 %.02134.i, 16
  %i.cn = shl nuw nsw i64 %i.cl, 8
  %i.co = or disjoint i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !76
  %i.cs = zext i8 %i.cr to i64
  %i.ct = or disjoint i64 %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !76
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl i64 %i.ct, 16
  %i.cz = shl nuw nsw i64 %i.cx, 8
  %i.da = or disjoint i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !76
  %i.de = zext i8 %i.dd to i64
  %i.df = or disjoint i64 %i.da, %i.de            ; 3 uses
  %i.dg = add nuw nsw i64 %.035.i, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !13

bb.e:                                             ; preds = %.epilog-lcssa, %._crit_edge.i
  %.125.i = phi i64 [ %i.ci, %.epilog-lcssa ], [ %.024.lcssa.i, %._crit_edge.i ]
  %.1.i = phi ptr [ %i.ch, %.epilog-lcssa ], [ %.023.lcssa.i, %._crit_edge.i ]
  %i.dh = shl i64 %.125.i, 3                      ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bn_big_endian_to_words.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %.1.i, i8 0, i64 %i.dh, i1 false)
  %.pre35.pre = load i32, ptr %i.c, align 8, !tbaa !93
  br label %bn_big_endian_to_words.exit

bn_big_endian_to_words.exit:                      ; preds = %bb.e, %bb.f
  %.pre35 = phi i32 [ %i.d, %bb.e ], [ %.pre35.pre, %bb.f ] ; 5 uses
  %i.dj = shl nuw nsw i64 %spec.select, 3
  %i.dk = icmp samesign ugt i64 %i.dj, %i.at
  %.not.i21.not = icmp eq i32 %.pre35, 0          ; 2 uses
  br i1 %i.dk, label %bb.g, label %bn_rshift_words.exit

bb.g:                                             ; preds = %bn_big_endian_to_words.exit
  %i.dl = and i32 %.0.i, 7                        ; 2 uses
  br i1 %.not.i21.not, label %bn_rshift_words.exit.thread, label %.preheader.i22

bn_rshift_words.exit.thread:                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  br label %bn_reduce_once_in_place.exit

.preheader.i22:                                   ; preds = %bb.g
  %i.dm = sub nuw nsw i32 8, %i.dl
  %i.dn = sext i32 %.pre35 to i64
  %i.do = add nsw i64 %i.dn, -1                   ; 5 uses
  %.not = icmp eq i64 %i.do, 0
  %i.dp = zext nneg i32 %i.dm to i64              ; 3 uses
  br i1 %.not, label %bn_rshift_words.exit.thread40, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.preheader.i22
  %i.dq = or disjoint i32 %i.dl, 56
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %.pre = load i64, ptr %1, align 8, !tbaa !80    ; 2 uses
  %min.iters.check = icmp ult i32 %.pre35, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24
  %n.vec = and i64 %i.do, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert49 = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat50 = shufflevector <2 x i64> %broadcast.splatinsert49, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load51, %vector.body ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %wide.load = load <2 x i64>, ptr %i.du, align 8, !tbaa !80 ; 3 uses
  %wide.load51 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !80 ; 4 uses
  %i.dw = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.dx = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load51, <2 x i32> <i32 1, i32 2>
  %i.dy = lshr <2 x i64> %i.dw, %broadcast.splat50
  %i.dz = lshr <2 x i64> %i.dx, %broadcast.splat50
  %i.ea = shl <2 x i64> %wide.load, %broadcast.splat
  %i.eb = shl <2 x i64> %wide.load51, %broadcast.splat
  %i.ec = or <2 x i64> %i.ea, %i.dy
  %i.ed = or <2 x i64> %i.eb, %i.dz
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x i64> %i.ec, ptr %i.ds, align 8, !tbaa !80
  store <2 x i64> %i.ed, ptr %i.ee, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !1672

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load51, i64 1
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %bn_rshift_words.exit.thread40, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i24, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph.i24 ], [ %vector.recur.extract, %middle.block ]
  %.039.i.ph = phi i64 [ 0, %.lr.ph.i24 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.eg = phi i64 [ %i.el, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.039.i = phi i64 [ %i.ej, %scalar.ph ], [ %.039.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.039.i
  %i.ei = lshr i64 %i.eg, %i.dp
  %i.ej = add nuw i64 %.039.i, 1                  ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !80 ; 2 uses
  %i.em = shl i64 %i.el, %i.dr
  %i.en = or i64 %i.em, %i.ei
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !80
  %exitcond.not.i25 = icmp eq i64 %i.ej, %i.do
  br i1 %exitcond.not.i25, label %bn_rshift_words.exit.thread40, label %scalar.ph, !llvm.loop !1673

bn_rshift_words.exit.thread40:                    ; preds = %scalar.ph, %middle.block, %.preheader.i22
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !80
  %i.eq = lshr i64 %i.ep, %i.dp
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  br label %.lr.ph.i.i26

bn_rshift_words.exit:                             ; preds = %bn_big_endian_to_words.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  br i1 %.not.i21.not, label %bn_reduce_once_in_place.exit, label %.lr.ph.i.i26

end_hunk_0
