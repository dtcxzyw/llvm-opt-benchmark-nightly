inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_divmod_normal:bb.a
.lr.ph.i128:                                      ; preds = %bary_small_lshift.exit124.thread184
  %i.eg = zext nneg i32 %i.g to i64               ; 4 uses
  %min.iters.check = icmp ult i64 %7, 4
  %i.eh = sub i64 %.086141186, %i.a
  %diff.check = icmp ult i64 %i.eh, 16
  %or.cond188 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond188, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i128
  %n.vec = and i64 %7, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = xor i64 %index, -1
  %i.ej = add i64 %7, %i.ei                       ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %.086141, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 -12
  %wide.load = load <4 x i32>, ptr %i.el, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.em = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.en = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.em, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.eo = shl nuw <4 x i64> %i.en, splat (i64 32)
  %i.ep = or disjoint <4 x i64> %i.eo, %i.em
  %i.eq = lshr <4 x i64> %i.ep, %broadcast.splat
  %i.er = trunc <4 x i64> %i.eq to <4 x i32>
  %i.es = getelementptr [4 x i8], ptr %2, i64 %i.ej
  %i.et = getelementptr i8, ptr %i.es, i64 -12
  %reverse187 = shufflevector <4 x i32> %i.er, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse187, ptr %i.et, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.em, i64 3
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %bary_small_rshift.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i128, %middle.block
  %.017.i.ph = phi i64 [ 0, %.lr.ph.i128 ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.ph = phi i64 [ 0, %.lr.ph.i128 ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %.017.i.ph, 1
  %xtraiter199 = and i64 %7, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.prol = shl nuw i64 %.014.in16.i.ph, 32
  %i.ev = xor i64 %.017.i.ph, -1
  %i.ew = add i64 %7, %i.ev                       ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %.086141, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = or disjoint i64 %.014.i.prol, %i.ez
  %i.fb = lshr i64 %i.fa, %i.eg
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = getelementptr [4 x i8], ptr %2, i64 %i.ew
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !7
  %i.fe = or disjoint i64 %.017.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %scalar.ph.preheader ], [ %i.fe, %scalar.ph.prol ]
  %.014.in16.i.unr = phi i64 [ %.014.in16.i.ph, %scalar.ph.preheader ], [ %i.ez, %scalar.ph.prol ]
  %i.ff = icmp eq i64 %7, %.neg
  br i1 %i.ff, label %bary_small_rshift.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.fx, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.fs, %scalar.ph ], [ %.014.in16.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.fg = xor i64 %.017.i, -1
  %i.fh = add i64 %7, %i.fg                       ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %.086141, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = or disjoint i64 %.014.i, %i.fk
  %i.fm = lshr i64 %i.fl, %i.eg
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr [4 x i8], ptr %2, i64 %i.fh
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !7
  %.014.i.1 = shl nuw i64 %i.fk, 32
  %reass.sub = sub i64 %7, %.017.i
  %i.fp = add i64 %reass.sub, -2                  ; 2 uses
  %i.fq = getelementptr [4 x i8], ptr %.086141, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = or disjoint i64 %.014.i.1, %i.fs
  %i.fu = lshr i64 %i.ft, %i.eg
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr [4 x i8], ptr %2, i64 %i.fp
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !7
  %i.fx = add nuw i64 %.017.i, 2                  ; 2 uses
  %exitcond.not.i129.1 = icmp eq i64 %i.fx, %7
  br i1 %exitcond.not.i129.1, label %bary_small_rshift.exit, label %scalar.ph, !llvm.loop !157

.thread147:                                       ; preds = %bary_small_lshift.exit124.thread
  %i.fy = icmp ugt i64 %7, 4611686018427387903
  br i1 %i.fy, label %bb.ae, label %rbimpl_size_mul_or_raise.exit130, !prof !32

bb.ae:                                            ; preds = %.thread147
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %7) #25
  unreachable

rbimpl_size_mul_or_raise.exit130:                 ; preds = %.thread147
  %.not.i131 = icmp eq i64 %7, 0
  br i1 %.not.i131, label %bary_small_rshift.exit, label %bb.af

bb.af:                                            ; preds = %rbimpl_size_mul_or_raise.exit130
  %i.fz = shl nuw i64 %7, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %2, ptr noundef nonnull readonly align 1 %.1179183, i64 noundef range(i64 1, 0) %i.fz, i1 noundef false) #23
  br label %bary_small_rshift.exit

bary_small_rshift.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bary_small_lshift.exit124, %bb.af, %rbimpl_size_mul_or_raise.exit130
  %.2145149 = phi ptr [ %.1179183, %bb.af ], [ %.086141, %bary_small_lshift.exit124 ], [ %.1179183, %rbimpl_size_mul_or_raise.exit130 ], [ %.086141, %middle.block ], [ %.086141, %scalar.ph ], [ %.086141, %scalar.ph.prol.loopexit ] ; 2 uses
  %.not108152 = icmp eq i64 %3, %7
  br i1 %.not108152, label %.loopexit151, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bary_small_rshift.exit
  %i.ga = getelementptr [4 x i8], ptr %2, i64 %7
  %i.gb = sub i64 %3, %7
  %i.gc = shl i64 %i.gb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ga, i8 0, i64 %i.gc, i1 false), !tbaa !7
  br label %.loopexit151

.loopexit151:                                     ; preds = %bary_small_lshift.exit124.thread184, %.lr.ph.preheader, %bary_small_rshift.exit, %bary_small_lshift.exit124.thread, %bary_small_lshift.exit124
  %.2146 = phi ptr [ %.1179183, %bary_small_lshift.exit124.thread ], [ %.086141, %bary_small_lshift.exit124 ], [ %.2145149, %bary_small_rshift.exit ], [ %.2145149, %.lr.ph.preheader ], [ %.086141, %bary_small_lshift.exit124.thread184 ]
  %.not109 = icmp eq ptr %0, null
  br i1 %.not109, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %.loopexit151
  %i.gd = sub i64 %i.c, %7                        ; 6 uses
  %i.ge = icmp ugt i64 %i.gd, 4611686018427387903
  br i1 %i.ge, label %bb.ah, label %rbimpl_size_mul_or_raise.exit134, !prof !32

bb.ah:                                            ; preds = %bb.ag
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.gd) #25
  unreachable

rbimpl_size_mul_or_raise.exit134:                 ; preds = %bb.ag
  %i.gf = getelementptr [4 x i8], ptr %.2146, i64 %7
  %i.gg = shl nuw i64 %i.gd, 2
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %i.gf, i64 noundef %i.gg, i1 noundef false) #23
  %.not110155 = icmp eq i64 %1, %i.gd
  br i1 %.not110155, label %.loopexit, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %rbimpl_size_mul_or_raise.exit134
  %i.gh = sub i64 %1, %i.gd
  %i.gi = getelementptr [4 x i8], ptr %0, i64 %i.gd
  %i.gj = shl nuw i64 %i.gh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gi, i8 0, i64 %i.gj, i1 false), !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph158.preheader, %rbimpl_size_mul_or_raise.exit134, %.loopexit151
  %i.gk = load i64, ptr %i.b, align 8, !tbaa !11
  %.not111 = icmp eq i64 %i.gk, 0
  br i1 %.not111, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_bigzero_p(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bigzero_p.exit, label %BIGNUM_DIGITS.exit

BIGNUM_LEN.exit.thread:                           ; preds = %bb.a
  %i.g = and i64 %i.b, 16744448                   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bigzero_p.exit, label %BIGNUM_DIGITS.exit.thread

BIGNUM_DIGITS.exit:                               ; preds = %BIGNUM_LEN.exit
  %i.i = getelementptr i8, ptr %i.a, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %BIGNUM_LEN.exit8, label %bigzero_p.exit

BIGNUM_DIGITS.exit.thread:                        ; preds = %BIGNUM_LEN.exit.thread
  %i.m = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %BIGNUM_LEN.exit8.thread, label %bigzero_p.exit

BIGNUM_LEN.exit8:                                 ; preds = %BIGNUM_DIGITS.exit
  %i.p = icmp eq i64 %i.e, 1
  br i1 %i.p, label %bigzero_p.exit, label %.preheader.i.i.preheader

BIGNUM_LEN.exit8.thread:                          ; preds = %BIGNUM_DIGITS.exit.thread
  %i.q = icmp eq i64 %i.g, 32768
  br i1 %i.q, label %bigzero_p.exit, label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %BIGNUM_LEN.exit8.thread
  %i.r = lshr i64 %i.b, 15
  %i.s = and i64 %i.r, 511                        ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bigzero_p.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %BIGNUM_LEN.exit8, %BIGNUM_LEN.exit.i
  %.0.i3.i19 = phi i64 [ %i.s, %BIGNUM_LEN.exit.i ], [ %i.e, %BIGNUM_LEN.exit8 ]
  %.0.i7.i18 = phi ptr [ %i.m, %BIGNUM_LEN.exit.i ], [ %i.j, %BIGNUM_LEN.exit8 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.b
  %.0.i4.i = phi i64 [ %i.u, %bb.b ], [ %.0.i3.i19, %.preheader.i.i.preheader ]
  %i.u = add i64 %.0.i4.i, -1                     ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %.0.i7.i18, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %.not.i5.i = icmp eq i32 %i.w, 0
  br i1 %.not.i5.i, label %bb.b, label %bigzero_p.exit

bb.b:                                             ; preds = %.preheader.i.i
  %.not7.i.i = icmp eq i64 %i.u, 0
  br i1 %.not7.i.i, label %bigzero_p.exit, label %.preheader.i.i, !llvm.loop !158

bigzero_p.exit:                                   ; preds = %bb.b, %.preheader.i.i, %BIGNUM_LEN.exit.i, %BIGNUM_LEN.exit8.thread, %BIGNUM_DIGITS.exit.thread, %BIGNUM_LEN.exit.thread, %BIGNUM_DIGITS.exit, %BIGNUM_LEN.exit8, %BIGNUM_LEN.exit
  %i.x = phi i32 [ 1, %BIGNUM_LEN.exit ], [ 0, %BIGNUM_DIGITS.exit ], [ 1, %BIGNUM_LEN.exit8 ], [ 1, %BIGNUM_LEN.exit8.thread ], [ 1, %BIGNUM_LEN.exit.thread ], [ 0, %BIGNUM_DIGITS.exit.thread ], [ 1, %BIGNUM_LEN.exit.i ], [ 1, %bb.b ], [ 0, %.preheader.i.i ]
  ret i32 %i.x
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @bigzero_p(i64 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = lshr i64 %i.b, 15
  %i.j = and i64 %i.i, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i7 = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  %.0.i3 = phi i64 [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.k = icmp eq i64 %.0.i3, 0
  br i1 %i.k, label %bary_zero_p.exit, label %.preheader.i

.preheader.i:                                     ; preds = %BIGNUM_LEN.exit, %bb.d
  %.0.i4 = phi i64 [ %i.l, %bb.d ], [ %.0.i3, %BIGNUM_LEN.exit ]
  %i.l = add i64 %.0.i4, -1                       ; 3 uses
  %i.m = getelementptr [4 x i8], ptr %.0.i7, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %.not.i5 = icmp eq i32 %i.n, 0
  br i1 %.not.i5, label %bb.d, label %bary_zero_p.exit

bb.d:                                             ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %bary_zero_p.exit, label %.preheader.i, !llvm.loop !158

bary_zero_p.exit:                                 ; preds = %.preheader.i, %bb.d, %BIGNUM_LEN.exit
  %.04.i = phi i32 [ 1, %BIGNUM_LEN.exit ], [ 0, %.preheader.i ], [ 1, %bb.d ]
  ret i32 %.04.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 2) i32 @rb_cmpint(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_cmperr(i64 noundef %1, i64 noundef %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = icmp sgt i64 %0, 1
  %.lobit = ashr i64 %0, 63
  %. = trunc nsw i64 %.lobit to i32
  %.0 = select i1 %i.c, i32 1, i32 %.
  br label %bigzero_p.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 6
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.e
  %i.h = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 5 uses
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 10
  br i1 %i.k, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.l = and i64 %i.i, 16384
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15   ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bigzero_p.exit.thread, label %BIGNUM_DIGITS.exit

BIGNUM_LEN.exit.thread:                           ; preds = %bb.f
  %i.p = and i64 %i.i, 16744448                   ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bigzero_p.exit.thread, label %BIGNUM_DIGITS.exit.thread

BIGNUM_DIGITS.exit:                               ; preds = %BIGNUM_LEN.exit
  %i.r = getelementptr i8, ptr %i.h, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %BIGNUM_LEN.exit24, label %bigzero_p.exit

BIGNUM_DIGITS.exit.thread:                        ; preds = %BIGNUM_LEN.exit.thread
  %i.v = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %BIGNUM_LEN.exit24.thread, label %bigzero_p.exit

BIGNUM_LEN.exit24:                                ; preds = %BIGNUM_DIGITS.exit
  %i.y = icmp eq i64 %i.n, 1
  br i1 %i.y, label %bigzero_p.exit.thread, label %.preheader.i.i.preheader

BIGNUM_LEN.exit24.thread:                         ; preds = %BIGNUM_DIGITS.exit.thread
  %i.z = icmp eq i64 %i.p, 32768
  br i1 %i.z, label %bigzero_p.exit.thread, label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %BIGNUM_LEN.exit24.thread
  %i.aa = lshr i64 %i.i, 15
  %i.ab = and i64 %i.aa, 511                      ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bigzero_p.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %BIGNUM_LEN.exit24, %BIGNUM_LEN.exit.i
  %.0.i3.i42 = phi i64 [ %i.ab, %BIGNUM_LEN.exit.i ], [ %i.n, %BIGNUM_LEN.exit24 ]
  %.0.i7.i41 = phi ptr [ %i.v, %BIGNUM_LEN.exit.i ], [ %i.s, %BIGNUM_LEN.exit24 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.g
  %.0.i4.i = phi i64 [ %i.ad, %bb.g ], [ %.0.i3.i42, %.preheader.i.i.preheader ]
  %i.ad = add i64 %.0.i4.i, -1                    ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %.0.i7.i41, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %.not.i5.i = icmp eq i32 %i.af, 0
  br i1 %.not.i5.i, label %bb.g, label %bigzero_p.exit

bb.g:                                             ; preds = %.preheader.i.i
  %.not7.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not7.i.i, label %bigzero_p.exit.thread, label %.preheader.i.i, !llvm.loop !158

bigzero_p.exit:                                   ; preds = %.preheader.i.i, %BIGNUM_DIGITS.exit.thread, %BIGNUM_DIGITS.exit
  %i.ag = and i64 %i.i, 8192
  %.not = icmp eq i64 %i.ag, 0
  %.17 = select i1 %.not, i32 -1, i32 1
  br label %bigzero_p.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ah = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 62, i32 noundef 1, i64 noundef 1) #23
  %i.ai = and i64 %i.ah, -5
  %.not33 = icmp eq i64 %i.ai, 0
  br i1 %.not33, label %bb.h, label %bigzero_p.exit.thread

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.aj = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 60, i32 noundef 1, i64 noundef 1) #23
  %i.ak = and i64 %i.aj, -5
  %.not34 = icmp ne i64 %i.ak, 0
  %.18 = sext i1 %.not34 to i32
  br label %bigzero_p.exit.thread

bigzero_p.exit.thread:                            ; preds = %bb.g, %BIGNUM_LEN.exit.i, %BIGNUM_LEN.exit24.thread, %BIGNUM_LEN.exit.thread, %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bigzero_p.exit, %BIGNUM_LEN.exit, %BIGNUM_LEN.exit24, %bb.d
  %.1 = phi i32 [ %.0, %bb.d ], [ 1, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %.17, %bigzero_p.exit ], [ 0, %BIGNUM_LEN.exit ], [ 0, %BIGNUM_LEN.exit24 ], [ %.18, %bb.h ], [ 0, %BIGNUM_LEN.exit24.thread ], [ 0, %BIGNUM_LEN.exit.thread ], [ 0, %BIGNUM_LEN.exit.i ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: cold noreturn
declare void @rb_cmperr(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_big_resize(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #23
  %i.b = add i64 %i.a, -16                        ; 2 uses
  %i.c = lshr i64 %i.b, 2
  %i.d = inttoptr i64 %0 to ptr                   ; 13 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = and i64 %i.e, 16384
  %.not50.i = icmp eq i64 %i.f, 0
  %.not.i = icmp ugt i64 %1, %i.c                 ; 2 uses
  br i1 %.not50.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %rbimpl_size_mul_or_raise.exit.i, label %rb_big_realloc.exit

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.b
  %i.g = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 4) #24 ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 16       ; 3 uses
  %i.i = and i64 %i.b, -4                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.c

bb.c:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.g, ptr noundef nonnull readonly align 1 %i.h, i64 noundef range(i64 1, 0) %i.i, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.c, %rbimpl_size_mul_or_raise.exit.i
  %i.j = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.k = and i64 %i.j, 16384
  %.not.i38.i = icmp eq i64 %i.k, 0
  br i1 %.not.i38.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  %i.l = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i

bb.e:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  %i.m = lshr i64 %i.j, 15
  %i.n = and i64 %i.m, 511
  br label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i39.i = phi i64 [ %i.n, %bb.e ], [ %i.l, %bb.d ]
  store i64 %.0.i39.i, ptr %i.h, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.d, i64 24
  store ptr %i.g, ptr %i.o, align 8, !tbaa !15
  %i.p = and i64 %i.j, -16385
  store i64 %i.p, ptr %i.d, align 8, !tbaa !13
  br label %rb_big_realloc.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  br i1 %.not.i, label %BIGNUM_LEN.exit46.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15   ; 3 uses
  %i.t = and i64 %i.e, -16760833
  %i.u = shl i64 %1, 15
  %i.v = or i64 %i.u, %i.t
  %i.w = or disjoint i64 %i.v, 16384
  store i64 %i.w, ptr %i.d, align 8, !tbaa !13
  %.not37.i = icmp eq ptr %i.s, null
  br i1 %.not37.i, label %rb_big_realloc.exit, label %rbimpl_size_mul_or_raise.exit40.i

rbimpl_size_mul_or_raise.exit40.i:                ; preds = %bb.g
  %.not.i41.i = icmp eq i64 %1, 0
  br i1 %.not.i41.i, label %ruby_nonempty_memcpy.exit43.i, label %bb.h

bb.h:                                             ; preds = %rbimpl_size_mul_or_raise.exit40.i
  %i.x = shl nuw i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.q, ptr noundef nonnull readonly align 1 %i.s, i64 noundef range(i64 1, 0) %i.x, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit43.i

ruby_nonempty_memcpy.exit43.i:                    ; preds = %bb.h, %rbimpl_size_mul_or_raise.exit40.i
  tail call void @ruby_xfree(ptr noundef nonnull %i.s) #23
  br label %rb_big_realloc.exit

BIGNUM_LEN.exit46.i:                              ; preds = %bb.f
  %i.y = load i64, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.i, label %BIGNUM_LEN.exit49.i

bb.i:                                             ; preds = %BIGNUM_LEN.exit46.i
  %i.aa = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 4) #24
  %i.ab = getelementptr i8, ptr %i.d, i64 24
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !15
  br label %rb_big_realloc.exit

BIGNUM_LEN.exit49.i:                              ; preds = %BIGNUM_LEN.exit46.i
  %i.ac = icmp ult i64 %i.y, %1
  br i1 %i.ac, label %bb.j, label %rb_big_realloc.exit

bb.j:                                             ; preds = %BIGNUM_LEN.exit49.i
  %i.ad = getelementptr i8, ptr %i.d, i64 24      ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.af = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ae, i64 noundef %1, i64 noundef 4) #26
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !15
  br label %rb_big_realloc.exit

rb_big_realloc.exit:                              ; preds = %bb.b, %BIGNUM_LEN.exit.i, %bb.g, %ruby_nonempty_memcpy.exit43.i, %bb.i, %BIGNUM_LEN.exit49.i, %bb.j
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %i.ah = and i64 %i.ag, 16384
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_big_realloc.exit
  %i.ai = and i64 %i.ag, -16744449
  %i.aj = shl i64 %1, 15
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !13
  br label %bb.m

bb.l:                                             ; preds = %rb_big_realloc.exit
  %i.al = getelementptr i8, ptr %i.d, i64 16
  store i64 %1, ptr %i.al, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_new(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.b = icmp ne i32 %1, 0
  %i.c = zext i1 %i.b to i32
  %i.d = tail call fastcc i64 @bignew_1(i64 noundef %i.a, i64 noundef %0, i32 noundef %i.c) ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@rb_big_norm:bb.a
  %.035.i.i.epil = phi i32 [ %i.am, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.as, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.am = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.an = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = zext i32 %i.aq to i64
  %i.as = or disjoint i64 %i.an, %i.ar            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.w
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !163

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.at = icmp ult i64 %i.an, 4611686018427387904
  %i.au = and i64 %i.f, 8192
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.av = shl nuw nsw i64 %i.as, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %bignorm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.ax = icmp ult i64 %i.as, 4611686018427387905
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.neg.i.i = mul nsw i64 %i.as, -2
  %i.ay = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.j:                                             ; preds = %bb.h, %bb.f, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %0, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.e, %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %BIGNUM_DIGITS.exit.i.i, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %0, %bb.a ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ay, %bb.i ], [ %0, %bb.j ], [ %i.aw, %bb.g ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.e ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @bignorm(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bigfixize.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 4 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 10
  br i1 %i.h, label %bb.b, label %bigfixize.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = and i64 %i.f, 16384
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  %i.l = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.e, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.d, %bb.c
  %.0.i28.i = phi i64 [ %i.k, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %.0.i26.i = phi ptr [ %i.l, %bb.c ], [ %i.p, %bb.d ] ; 4 uses
  %cond31.i = icmp eq i64 %.0.i28.i, 0
  br i1 %cond31.i, label %bigfixize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %BIGNUM_DIGITS.exit.i, %bb.e
  %indvar = phi i32 [ %indvar.next, %bb.e ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 2 uses
  %.02332.i = phi i64 [ %i.u, %bb.e ], [ %.0.i28.i, %BIGNUM_DIGITS.exit.i ] ; 5 uses
  %i.q = getelementptr [4 x i8], ptr %.0.i26.i, i64 %.02332.i
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = add i64 %.02332.i, -1                    ; 2 uses
  %cond.i = icmp eq i64 %i.u, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i, label %bigfixize.exit, label %.lr.ph.i, !llvm.loop !161

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.v = icmp ugt i64 %.02332.i, 2
  br i1 %i.v, label %bb.j, label %.lr.ph36.preheader.i

.lr.ph36.preheader.i:                             ; preds = %.critedge.i
  %i.w = trunc nuw i64 %.02332.i to i32           ; 3 uses
  %i.x = trunc i64 %.0.i28.i to i32
  %i.y = sub i32 %indvar, %i.x
  %i.z = icmp ugt i32 %i.y, -4
  br i1 %i.z, label %.lr.ph36.i.epil.preheader, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.preheader.i, %.lr.ph36.i
  %.035.i = phi i32 [ %i.aa, %.lr.ph36.i ], [ %i.w, %.lr.ph36.preheader.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i ], [ 0, %.lr.ph36.preheader.i ]
  %i.aa = add i32 %.035.i, -4                     ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph36.i, !llvm.loop !162

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph36.i
  %i.ab = add i32 %.035.i, -3
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %.0.i26.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw i64 %i.af, 32
  %i.ah = sext i32 %i.aa to i64
  %i.ai = getelementptr [4 x i8], ptr %.0.i26.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = zext i32 %i.aj to i64
  %i.al = or disjoint i64 %i.ag, %i.ak
  br label %.lr.ph36.i.epil.preheader

.lr.ph36.i.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph36.preheader.i
  %.035.i.epil.init = phi i32 [ %i.w, %.lr.ph36.preheader.i ], [ %i.aa, %._crit_edge.i.unr-lcssa ]
  %.02134.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i ], [ %i.al, %._crit_edge.i.unr-lcssa ]
  br label %.lr.ph36.i.epil

.lr.ph36.i.epil:                                  ; preds = %.lr.ph36.i.epil, %.lr.ph36.i.epil.preheader
  %.035.i.epil = phi i32 [ %i.am, %.lr.ph36.i.epil ], [ %.035.i.epil.init, %.lr.ph36.i.epil.preheader ]
  %.02134.i.epil = phi i64 [ %i.as, %.lr.ph36.i.epil ], [ %.02134.i.epil.init, %.lr.ph36.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.epil ], [ 0, %.lr.ph36.i.epil.preheader ]
  %i.am = add i32 %.035.i.epil, -1                ; 2 uses
  %i.an = shl i64 %.02134.i.epil, 32              ; 2 uses
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr [4 x i8], ptr %.0.i26.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = zext i32 %i.aq to i64
  %i.as = or disjoint i64 %i.an, %i.ar            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.w
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.epilog-lcssa, label %.lr.ph36.i.epil, !llvm.loop !164

._crit_edge.i.epilog-lcssa:                       ; preds = %.lr.ph36.i.epil
  %i.at = icmp ult i64 %i.an, 4611686018427387904
  %i.au = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.epilog-lcssa
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.av = shl nuw nsw i64 %i.as, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %bigfixize.exit

bb.h:                                             ; preds = %._crit_edge.i.epilog-lcssa
  %i.ax = icmp ult i64 %i.as, 4611686018427387905
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.neg.i = mul nsw i64 %i.as, -2
  %i.ay = or disjoint i64 %.neg.i, 1
  br label %bigfixize.exit

bb.j:                                             ; preds = %bb.h, %bb.f, %.critedge.i
  tail call void @rb_big_resize(i64 noundef %0, i64 noundef %.02332.i)
  br label %bigfixize.exit

bigfixize.exit:                                   ; preds = %bb.e, %bb.a, %bb.j, %bb.i, %bb.g, %BIGNUM_DIGITS.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ %0, %bb.a ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.ay, %bb.i ], [ %0, %bb.j ], [ %i.aw, %bb.g ], [ 1, %BIGNUM_DIGITS.exit.i ], [ 1, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_uint2big(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.b = tail call fastcc i64 @bignew_1(i64 noundef %i.a, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %i.g = trunc i64 %0 to i32
  store i32 %i.g, ptr %i.f, align 4, !tbaa !7
  %i.h = lshr i64 %0, 32                          ; 2 uses
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = getelementptr i8, ptr %i.c, i64 20
  store i32 %i.i, ptr %i.j, align 4, !tbaa !7
  %.not18 = icmp eq i64 %i.h, 0
  %.us-phi = select i1 %.not18, i64 32768, i64 65536
  %i.k = and i64 %i.d, -16744449
  %i.l = or disjoint i64 %.us-phi, %i.k
  store i64 %i.l, ptr %i.c, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.c, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.o = trunc i64 %0 to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !7
  %i.p = lshr i64 %0, 32                          ; 2 uses
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = getelementptr i8, ptr %i.n, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !7
  %.not1824 = icmp eq i64 %i.p, 0
  %.us-phi25 = select i1 %.not1824, i64 1, i64 2
  %i.s = getelementptr i8, ptr %i.c, i64 16
  store i64 %.us-phi25, ptr %i.s, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_int2big(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %.07 = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 4 uses
  %i.b = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.c = tail call fastcc i64 @bignew_1(i64 noundef %i.b, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = and i64 %i.e, 16384
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  store i64 %.07, ptr %i.g, align 4
  %.not18.i = icmp ult i64 %.07, 4294967296
  %.us-phi.i = select i1 %.not18.i, i64 32768, i64 65536
  %i.h = and i64 %i.e, -16744449
  %i.i = or disjoint i64 %i.h, %.us-phi.i
  store i64 %i.i, ptr %i.d, align 8, !tbaa !13
  br label %rb_uint2big.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  store i64 %.07, ptr %i.k, align 4
  %.not1824.i = icmp ult i64 %.07, 4294967296
  %.us-phi25.i = select i1 %.not1824.i, i64 1, i64 2
  %i.l = getelementptr i8, ptr %i.d, i64 16
  store i64 %.us-phi25.i, ptr %i.l, align 8, !tbaa !15
  br label %rb_uint2big.exit

rb_uint2big.exit:                                 ; preds = %bb.b, %bb.c
  br i1 %i.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_uint2big.exit
  %i.m = load i64, ptr %i.d, align 8, !tbaa !13
  %i.n = and i64 %i.m, -8193
  store i64 %i.n, ptr %i.d, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_uint2big.exit
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_uint2inum(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 4611686018427387904
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i64 %0, 1
  %i.c = or disjoint i64 %i.b, 1
  br label %rb_uint2big.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.e = tail call fastcc i64 @bignew_1(i64 noundef %i.d, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = and i64 %i.g, 16384
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 16
  store i64 %0, ptr %i.i, align 4
  %i.j = and i64 %i.g, -16744449
  %i.k = or disjoint i64 %i.j, 65536
  store i64 %i.k, ptr %i.f, align 8, !tbaa !13
  br label %rb_uint2big.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  store i64 %0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.f, i64 16
  store i64 2, ptr %i.n, align 8, !tbaa !15
  br label %rb_uint2big.exit

rb_uint2big.exit:                                 ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ %i.e, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_int2inum(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 4611686018427387904
  %or.cond = icmp sgt i64 %i.a, -1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nsw i64 %0, 1
  %i.c = or disjoint i64 %i.b, 1
  br label %rb_int2big.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp sgt i64 %0, -1
  %.07.i = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.e = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.f = tail call fastcc i64 @bignew_1(i64 noundef %i.e, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = and i64 %i.h, 16384
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %.07.i, ptr %i.j, align 4
  %i.k = and i64 %i.h, -16744449
  %i.l = or disjoint i64 %i.k, 65536
  store i64 %i.l, ptr %i.g, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  store i64 %.07.i, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.g, i64 16
  store i64 2, ptr %i.o, align 8, !tbaa !15
  br label %rb_uint2big.exit.i

rb_uint2big.exit.i:                               ; preds = %bb.e, %bb.d
  br i1 %i.d, label %rb_int2big.exit, label %bb.f

bb.f:                                             ; preds = %rb_uint2big.exit.i
  %i.p = load i64, ptr %i.g, align 8, !tbaa !13
  %i.q = and i64 %i.p, -8193
  store i64 %i.q, ptr %i.g, align 8, !tbaa !13
  br label %rb_int2big.exit

rb_int2big.exit:                                  ; preds = %bb.f, %rb_uint2big.exit.i, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.f, %rb_uint2big.exit.i ], [ %i.f, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_big_pack(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.d = tail call i64 @rb_to_int(i64 noundef %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !165
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  store volatile i64 %i.d, ptr %i.e, align 8, !tbaa !11
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %BIGNUM_LEN.exit.loopexit.i, label %bb.b

BIGNUM_LEN.exit.loopexit.i:                       ; preds = %bb.a
  %i.h = ashr i64 %i.f, 1                         ; 2 uses
  %.015.i = call i64 @llvm.abs.i64(i64 %i.h, i1 true)
  store i64 %.015.i, ptr %i.b, align 8
  %i.i = icmp slt i64 %i.h, 0
  %.016.i = select i1 %i.i, i32 -1, i32 1
  br label %rb_integer_pack.exit

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 3 uses
  %i.l = and i64 %i.k, 8192
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = select i1 %.not.i, i32 -1, i32 1         ; 2 uses
  %i.n = and i64 %i.k, 16384
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.j, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = getelementptr i8, ptr %i.j, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  br label %rb_integer_pack.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.j, i64 16
  %i.t = lshr i64 %i.k, 15
  %i.u = and i64 %i.t, 511
  br label %rb_integer_pack.exit

rb_integer_pack.exit:                             ; preds = %BIGNUM_LEN.exit.loopexit.i, %bb.c, %bb.d
  %.019.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %bb.d ], [ %i.b, %BIGNUM_LEN.exit.loopexit.i ]
  %.018.i = phi i64 [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ 2, %BIGNUM_LEN.exit.loopexit.i ]
  %.117.i = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.016.i, %BIGNUM_LEN.exit.loopexit.i ]
  %i.v = call fastcc i32 @bary_pack(i32 noundef %.117.i, ptr noundef %.019.i, i64 noundef %.018.i, ptr noundef nonnull %1, i64 noundef %2, i64 noundef 8, i64 noundef 0, i32 noundef 194) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_integer_pack(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.d = tail call i64 @rb_to_int(i64 noundef %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !165
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  store volatile i64 %i.d, ptr %i.e, align 8, !tbaa !11
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %BIGNUM_LEN.exit.loopexit, label %bb.b

BIGNUM_LEN.exit.loopexit:                         ; preds = %bb.a
  %i.h = ashr i64 %i.f, 1                         ; 2 uses
  %.015 = call i64 @llvm.abs.i64(i64 %i.h, i1 true) ; 2 uses
  %i.i = trunc i64 %.015 to i32
  store i32 %i.i, ptr %i.b, align 4, !tbaa !7
  %i.j = lshr i64 %.015, 32
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !7
  %i.m = icmp slt i64 %i.h, 0
  %.016 = select i1 %i.m, i32 -1, i32 1
  br label %BIGNUM_LEN.exit

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 3 uses
  %i.p = and i64 %i.o, 8192
  %.not = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not, i32 -1, i32 1           ; 2 uses
  %i.r = and i64 %i.o, 16384
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.n, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr i8, ptr %i.n, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.n, i64 16
  %i.x = lshr i64 %i.o, 15
  %i.y = and i64 %i.x, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %BIGNUM_LEN.exit.loopexit, %bb.d, %bb.c
  %.019 = phi ptr [ %i.t, %bb.c ], [ %i.w, %bb.d ], [ %i.b, %BIGNUM_LEN.exit.loopexit ]
  %.018 = phi i64 [ %i.v, %bb.c ], [ %i.y, %bb.d ], [ 2, %BIGNUM_LEN.exit.loopexit ]
  %.117 = phi i32 [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %.016, %BIGNUM_LEN.exit.loopexit ]
  %i.z = call fastcc i32 @bary_pack(i32 noundef %.117, ptr noundef %.019, i64 noundef %.018, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i32 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_unpack(ptr noundef nonnull %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_integer_unpack(ptr noundef %0, i64 noundef %1, i64 noundef 8, i64 noundef 0, i32 noundef 194)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_integer_unpack(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8
  tail call fastcc void @validate_integer_pack_format(i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef 2035)
  %i.b = udiv i64 2305843009213693948, %2
  %.not.i = icmp ugt i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %integer_unpack_num_bdigits.exit.thread

integer_unpack_num_bdigits.exit.thread:           ; preds = %bb.a
  %i.c = shl i64 %2, 3
  %i.d = sub i64 %i.c, %3
  %i.e = mul i64 %i.d, %1                         ; 2 uses
  %i.f = add i64 %i.e, 31                         ; 2 uses
  %i.g = lshr i64 %i.f, 5
  %i.h = and i64 %i.f, 4294967264
  %i.i = sub i64 %i.h, %i.e
  %i.j = trunc i64 %i.i to i32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = mul i64 %2, %1
  %i.l = lshr i64 %1, 3
  %i.m = and i64 %1, 7                            ; 2 uses
  %i.n = lshr i64 %3, 3
  %i.o = and i64 %3, 7
  %.neg41.i.neg.i.neg = mul i64 %3, %i.l
  %.neg42.i.neg.i.neg = mul nuw i64 %i.n, %i.m
  %reass.add = add i64 %.neg42.i.neg.i.neg, %.neg41.i.neg.i.neg
  %i.p = sub i64 %i.k, %reass.add                 ; 2 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = and i64 %i.q, 4611686018427387896        ; 2 uses
  %i.s = shl i64 %i.p, 3
  %i.t = and i64 %i.s, 248                        ; 2 uses
  %i.u = mul nuw nsw i64 %i.o, %i.m               ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.t, %i.u
  %i.v = sub nsw i64 %i.u, %i.t                   ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

end_hunk_1
begin_hunk_2_@rb_str2big_karatsuba:bb.a
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %str2big_scan_digits.exit
  %i.be = inttoptr i64 %i.ax to ptr               ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !13 ; 4 uses
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
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bo = getelementptr i8, ptr %i.be, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.u, %bb.t
  %.0.i28.i.i = phi i64 [ %i.bk, %bb.t ], [ %i.bn, %bb.u ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.bl, %bb.t ], [ %i.bp, %bb.u ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.v
  %indvar = phi i32 [ %indvar.next, %bb.v ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.bu, %bb.v ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.bq = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.bu = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.bu, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bv = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.bv, label %bb.aa, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.bw = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.bx = trunc i64 %.0.i28.i.i to i32
  %i.by = sub i32 %indvar, %i.bx
  %i.bz = icmp ugt i32 %i.by, -4
  br i1 %i.bz, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.ca, %.lr.ph36.i.i ], [ %i.bw, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.ca = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.cb = add i32 %.035.i.i, -3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw i64 %i.cf, 32
  %i.ch = sext i32 %i.ca to i64
  %i.ci = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = zext i32 %i.cj to i64
  %i.cl = or disjoint i64 %i.cg, %i.ck
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.bw, %.lr.ph36.preheader.i.i ], [ %i.ca, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.cl, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.cm, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.cs, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.cm = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.cn = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = zext i32 %i.cq to i64
  %i.cs = or disjoint i64 %i.cn, %i.cr            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.bw
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !235

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.ct = icmp ult i64 %i.cn, 4611686018427387904
  %i.cu = and i64 %i.bf, 8192
  %.not.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.ct, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cv = shl nuw nsw i64 %i.cs, 1
  %i.cw = or disjoint i64 %i.cv, 1
  br label %bignorm.exit

bb.y:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.cx = icmp ult i64 %i.cs, 4611686018427387905
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.neg.i.i = mul nsw i64 %i.cs, -2
  %i.cy = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.aa:                                            ; preds = %bb.y, %bb.w, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.ax, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.v, %str2big_scan_digits.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %BIGNUM_DIGITS.exit.i.i, %bb.x, %bb.z, %bb.aa
  %.0.i20 = phi i64 [ %i.ax, %str2big_scan_digits.exit ], [ %i.ax, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.cy, %bb.z ], [ %i.ax, %bb.aa ], [ %i.cw, %bb.x ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.v ]
  ret i64 %.0.i20
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_ull2big(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.b = tail call fastcc i64 @bignew_1(i64 noundef %i.a, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  br label %BIGNUM_DIGITS.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = trunc i64 %0 to i32                      ; 2 uses
  store i32 %i.i, ptr %.0.i, align 4, !tbaa !7
  %i.j = lshr i64 %0, 32                          ; 2 uses
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = getelementptr i8, ptr %.0.i, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !7
  %.not17 = icmp eq i64 %i.j, 0
  %.not17.1 = icmp ne i32 %i.i, 0
  %spec.select = zext i1 %.not17.1 to i64
  %.1.lcssa = select i1 %.not17, i64 %spec.select, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.m = and i64 %i.d, -16744449
  %i.n = shl nuw nsw i64 %.1.lcssa, 15
  %i.o = or disjoint i64 %i.n, %i.m
  store i64 %i.o, ptr %i.c, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.p = getelementptr i8, ptr %i.c, i64 16
  store i64 %.1.lcssa, ptr %i.p, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_ll2big(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %.07 = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 6 uses
  %i.b = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.c = tail call fastcc i64 @bignew_1(i64 noundef %i.b, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = and i64 %i.e, 16384
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  store i64 %.07, ptr %i.g, align 4
  %.not17.i = icmp ult i64 %.07, 4294967296
  %i.h = and i64 %.07, 4294967295
  %.not17.1.i.not = icmp eq i64 %i.h, 0
  %i.i = and i64 %i.e, -16744449
  %i.j = select i1 %.not17.1.i.not, i64 0, i64 32768
  %i.k = select i1 %.not17.i, i64 %i.j, i64 65536
  %i.l = or disjoint i64 %i.i, %i.k
  store i64 %i.l, ptr %i.d, align 8, !tbaa !13
  br label %rb_ull2big.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  store i64 %.07, ptr %i.n, align 4
  %.not17.i10 = icmp ult i64 %.07, 4294967296
  %i.o = and i64 %.07, 4294967295
  %.not17.1.i11 = icmp ne i64 %i.o, 0
  %spec.select.i12 = zext i1 %.not17.1.i11 to i64
  %.1.lcssa.i13 = select i1 %.not17.i10, i64 %spec.select.i12, i64 2
  %i.p = getelementptr i8, ptr %i.d, i64 16
  store i64 %.1.lcssa.i13, ptr %i.p, align 8, !tbaa !15
  br label %rb_ull2big.exit

rb_ull2big.exit:                                  ; preds = %bb.b, %bb.c
  br i1 %i.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_ull2big.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !13
  %i.r = and i64 %i.q, -8193
  store i64 %i.r, ptr %i.d, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_ull2big.exit
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ull2inum(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 4611686018427387904
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i64 %0, 1
  %i.c = or disjoint i64 %i.b, 1
  br label %rb_ull2big.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.e = tail call fastcc i64 @bignew_1(i64 noundef %i.d, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = and i64 %i.g, 16384
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 16
  store i64 %0, ptr %i.i, align 4
  %i.j = and i64 %i.g, -16744449
  %i.k = or disjoint i64 %i.j, 65536
  store i64 %i.k, ptr %i.f, align 8, !tbaa !13
  br label %rb_ull2big.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  store i64 %0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.f, i64 16
  store i64 2, ptr %i.n, align 8, !tbaa !15
  br label %rb_ull2big.exit

rb_ull2big.exit:                                  ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ %i.e, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ll2inum(i64 noundef %0) local_unnamed_addr #0 {
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
  %.07.i = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.e = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.f = tail call fastcc i64 @bignew_1(i64 noundef %i.e, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = and i64 %i.h, 16384
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %.07.i, ptr %i.j, align 4
  %i.k = and i64 %i.h, -16744449
  %i.l = or disjoint i64 %i.k, 65536
  store i64 %i.l, ptr %i.g, align 8, !tbaa !13
  br label %rb_ull2big.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  store i64 %.07.i, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.g, i64 16
  store i64 2, ptr %i.o, align 8, !tbaa !15
  br label %rb_ull2big.exit.i

rb_ull2big.exit.i:                                ; preds = %bb.e, %bb.d
  br i1 %i.d, label %rb_ll2big.exit, label %bb.f

bb.f:                                             ; preds = %rb_ull2big.exit.i
  %i.p = load i64, ptr %i.g, align 8, !tbaa !13
  %i.q = and i64 %i.p, -8193
  store i64 %i.q, ptr %i.g, align 8, !tbaa !13
  br label %rb_ll2big.exit

rb_ll2big.exit:                                   ; preds = %bb.f, %rb_ull2big.exit.i, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.f, %rb_ull2big.exit.i ], [ %i.f, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_uint128t2big(i128 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.b = tail call fastcc i64 @bignew_1(i64 noundef %i.a, i64 noundef 4, i32 noundef 1) ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  br label %BIGNUM_DIGITS.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.i = trunc i128 %0 to i32                     ; 2 uses
  store i32 %i.i, ptr %.0.i, align 4, !tbaa !7
  %i.j = lshr i128 %0, 32
  %i.k = trunc i128 %i.j to i32                   ; 2 uses
  %i.l = getelementptr i8, ptr %.0.i, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !7
  %i.m = lshr i128 %0, 64
  %i.n = trunc i128 %i.m to i32                   ; 2 uses
  %i.o = getelementptr i8, ptr %.0.i, i64 8
  store i32 %i.n, ptr %i.o, align 4, !tbaa !7
  %i.p = lshr i128 %0, 96                         ; 2 uses
  %i.q = trunc nuw i128 %i.p to i32
  %i.r = getelementptr i8, ptr %.0.i, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !7
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
  store i64 %i.u, ptr %i.c, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.v = getelementptr i8, ptr %i.c, i64 16
  store i64 %.1.lcssa, ptr %i.v, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_int128t2big(i128 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i128 %0, -1
  %.07 = tail call i128 @llvm.abs.i128(i128 %0, i1 false) ; 4 uses
  %i.b = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.c = tail call fastcc i64 @bignew_1(i64 noundef %i.b, i64 noundef 4, i32 noundef 1) ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = and i64 %i.e, 16384
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  %i.j = trunc i128 %.07 to i32                   ; 2 uses
  store i32 %i.j, ptr %.0.i.i, align 4, !tbaa !7
  %i.k = lshr i128 %.07, 32
  %i.l = trunc i128 %i.k to i32                   ; 2 uses
  %i.m = getelementptr i8, ptr %.0.i.i, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  %i.n = lshr i128 %.07, 64
  %i.o = trunc i128 %i.n to i32                   ; 2 uses
  %i.p = getelementptr i8, ptr %.0.i.i, i64 8
  store i32 %i.o, ptr %i.p, align 4, !tbaa !7
  %i.q = lshr i128 %.07, 96                       ; 2 uses
  %i.r = trunc nuw i128 %i.q to i32
  %i.s = getelementptr i8, ptr %.0.i.i, i64 12
  store i32 %i.r, ptr %i.s, align 4, !tbaa !7
  %.not16.i = icmp eq i128 %i.q, 0
  br i1 %.not16.i, label %.preheader.1.i, label %.critedge.i

.preheader.1.i:                                   ; preds = %BIGNUM_DIGITS.exit.i
  %.not16.1.i = icmp eq i32 %i.o, 0
  br i1 %.not16.1.i, label %.preheader.2.i, label %.critedge.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %.not16.2.i = icmp eq i32 %i.l, 0
  br i1 %.not16.2.i, label %.preheader.3.i, label %.critedge.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %.not16.3.i = icmp ne i32 %i.j, 0
  %spec.select.i = zext i1 %.not16.3.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %BIGNUM_DIGITS.exit.i
  %.1.lcssa.i = phi i64 [ 2, %.preheader.2.i ], [ 4, %BIGNUM_DIGITS.exit.i ], [ %spec.select.i, %.preheader.3.i ], [ 3, %.preheader.1.i ] ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.t = and i64 %i.e, -16744449
  %i.u = shl nuw nsw i64 %.1.lcssa.i, 15
  %i.v = or disjoint i64 %i.u, %i.t               ; 2 uses
  store i64 %i.v, ptr %i.d, align 8, !tbaa !13
  br label %rb_uint128t2big.exit

bb.e:                                             ; preds = %.critedge.i
  %i.w = getelementptr i8, ptr %i.d, i64 16
  store i64 %.1.lcssa.i, ptr %i.w, align 8, !tbaa !15
  br label %rb_uint128t2big.exit

rb_uint128t2big.exit:                             ; preds = %bb.d, %bb.e
  %i.x = phi i64 [ %i.v, %bb.d ], [ %i.e, %bb.e ]
  br i1 %i.a, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_uint128t2big.exit
  %i.y = and i64 %i.x, -8193
  store i64 %i.y, ptr %i.d, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_uint128t2big.exit
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cstr2inum(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = icmp ne i32 %1, 0                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %..i = select i1 %i.b, ptr %i.a, ptr null
  %i.c = call i64 @rb_int_parse_cstr(ptr noundef nonnull %0, i64 noundef -1, ptr noundef %..i, ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.d = icmp ne i64 %i.c, 4                      ; 2 uses
  %brmerge.i = or i1 %i.b, %i.d
  br i1 %brmerge.i, label %rb_cstr_to_inum.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_invalid_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #25
  unreachable

rb_cstr_to_inum.exit:                             ; preds = %bb.a
  %.mux.i = select i1 %i.d, i64 %i.c, i64 1
end_hunk_2
begin_hunk_3_@bigsub_int:bb.a
  %i.dt = phi i64 [ %i.di, %big_extend_carry.exit.i ], [ %i.u, %bb.q ], [ %i.u, %middle.block ], [ %i.u, %.lr.ph26.i.i ]
  %i.du = xor i64 %i.dt, 8192
  store i64 %i.du, ptr %i.t, align 8, !tbaa !13
  br label %.loopexit97.thread

.loopexit97.thread:                               ; preds = %.loopexit, %get2comp.exit, %.loopexit97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !291
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.dw = load volatile i64, ptr %i.dv, align 8, !tbaa !11 ; 0 uses
  %i.dx = icmp eq i64 %i.s, 0
  %i.dy = and i64 %i.s, 7
  %i.dz = icmp ne i64 %i.dy, 0
  %i.ea = or i1 %i.dx, %i.dz
  br i1 %i.ea, label %rb_long2num_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %.loopexit97.thread
  %i.eb = load i64, ptr %i.t, align 8, !tbaa !13  ; 4 uses
  %i.ec = and i64 %i.eb, 31
  %i.ed = icmp eq i64 %i.ec, 10
  br i1 %i.ed, label %bb.v, label %rb_long2num_inline.exit

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ee = and i64 %i.eb, 16384
  %.not.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = lshr i64 %i.eb, 15
  %i.eg = and i64 %i.ef, 511
  %i.eh = getelementptr i8, ptr %i.t, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.ei = getelementptr i8, ptr %i.t, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !15
  %i.ek = getelementptr i8, ptr %i.t, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.x, %bb.w
  %.0.i28.i.i = phi i64 [ %i.eg, %bb.w ], [ %i.ej, %bb.x ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.eh, %bb.w ], [ %i.el, %bb.x ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %rb_long2num_inline.exit, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.y
  %indvar234 = phi i32 [ %indvar.next235, %bb.y ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.eq, %bb.y ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.em = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.en = getelementptr i8, ptr %i.em, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !7
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.y, label %.critedge.i.i

bb.y:                                             ; preds = %.lr.ph.i.i89
  %i.eq = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.eq, 0
  %indvar.next235 = add i32 %indvar234, 1
  br i1 %cond.i.i, label %rb_long2num_inline.exit, label %.lr.ph.i.i89, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i89
  %i.er = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.er, label %bb.ad, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.es = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.et = trunc i64 %.0.i28.i.i to i32
  %i.eu = sub i32 %indvar234, %i.et
  %i.ev = icmp ugt i32 %i.eu, -4
  br i1 %i.ev, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.ew, %.lr.ph36.i.i ], [ %i.es, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.ew = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.ex = add i32 %.035.i.i, -3
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !7
  %i.fb = zext i32 %i.fa to i64
  %i.fc = shl nuw i64 %i.fb, 32
  %i.fd = sext i32 %i.ew to i64
  %i.fe = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !7
  %i.fg = zext i32 %i.ff to i64
  %i.fh = or disjoint i64 %i.fc, %i.fg
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.es, %.lr.ph36.preheader.i.i ], [ %i.ew, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.fh, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.fi, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.fo, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.fi = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.fj = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !7
  %i.fn = zext i32 %i.fm to i64
  %i.fo = or disjoint i64 %i.fj, %i.fn            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.es
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !292

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.fp = icmp ult i64 %i.fj, 4611686018427387904
  %i.fq = and i64 %i.eb, 8192
  %.not.i.i90 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i90, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.fp, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fr = shl nuw nsw i64 %i.fo, 1
  %i.fs = or disjoint i64 %i.fr, 1
  br label %rb_long2num_inline.exit

bb.ab:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.ft = icmp ult i64 %i.fo, 4611686018427387905
  br i1 %i.ft, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.neg.i.i = mul nsw i64 %i.fo, -2
  %i.fu = or disjoint i64 %.neg.i.i, 1
  br label %rb_long2num_inline.exit

bb.ad:                                            ; preds = %bb.ab, %bb.z, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.s, i64 noundef %.02332.i.i)
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.y, %bb.ad, %bb.ac, %bb.aa, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %.loopexit97.thread, %bb.d
  %.0 = phi i64 [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.n, %bb.d ], [ %i.fs, %bb.aa ], [ %i.s, %.loopexit97.thread ], [ %i.s, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.fu, %bb.ac ], [ %i.s, %bb.ad ], [ 1, %bb.y ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @bigadd_int(i64 noundef %0, i64 noundef range(i64 0, 4611686018427387905) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 16
  %i.k = lshr i64 %i.d, 15
  %i.l = and i64 %i.k, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i84 = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  %.0.i77 = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ] ; 8 uses
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
  %i.q = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.r = tail call fastcc i64 @bignew_1(i64 noundef %i.q, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = and i64 %i.t, 16384
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store i64 4611686018427387904, ptr %i.v, align 4
  %i.w = and i64 %i.t, -16744449
  %i.x = or disjoint i64 %i.w, 65536
  store i64 %i.x, ptr %i.s, align 8, !tbaa !13
  br label %rb_long2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  store i64 4611686018427387904, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %i.s, i64 16
  store i64 2, ptr %i.aa, align 8, !tbaa !15
  br label %rb_long2num_inline.exit

bb.i:                                             ; preds = %BIGNUM_LEN.exit
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i77, i64 2) ; 2 uses
  %i.ab = add nuw i64 %spec.store.select, 1       ; 4 uses
  %i.ac = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ad = trunc i64 %i.d to i32
  %i.ae = lshr i32 %i.ad, 13
  %i.af = and i32 %i.ae, 1
  %i.ag = tail call fastcc i64 @bignew_1(i64 noundef %i.ac, i64 noundef %i.ab, i32 noundef %i.af) ; 7 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 7 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = and i64 %i.ai, 16384
  %.not.i79 = icmp eq i64 %i.aj, 0
  br i1 %.not.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  br label %BIGNUM_DIGITS.exit81

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ah, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit81

BIGNUM_DIGITS.exit81:                             ; preds = %bb.j, %bb.k
  %.0.i80 = phi ptr [ %i.ak, %bb.j ], [ %i.am, %bb.k ] ; 8 uses
  %.0.i80162 = ptrtoaddr ptr %.0.i80 to i64
  %i.an = icmp sgt i64 %.0.i77, 0
  br i1 %i.an, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %bb.l, %BIGNUM_DIGITS.exit81
  %.070.lcssa = phi i64 [ %1, %BIGNUM_DIGITS.exit81 ], [ %i.az, %bb.l ]
  %.065.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit81 ], [ %i.ay, %bb.l ]
  %.064.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit81 ], [ %.0.i77, %bb.l ] ; 2 uses
  %i.ao = icmp slt i64 %.064.lcssa, %i.ab
  br i1 %i.ao, label %.lr.ph110, label %.loopexit89

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit81, %bb.l
  %.064104 = phi i64 [ %i.ba, %bb.l ], [ 0, %BIGNUM_DIGITS.exit81 ] ; 6 uses
  %.065103 = phi i64 [ %i.ay, %bb.l ], [ 0, %BIGNUM_DIGITS.exit81 ] ; 2 uses
  %.070102 = phi i64 [ %i.az, %bb.l ], [ %1, %BIGNUM_DIGITS.exit81 ] ; 3 uses
  %i.ap = icmp eq i64 %.070102, 0
  br i1 %i.ap, label %.preheader86, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aq = getelementptr [4 x i8], ptr %.0.i84, i64 %.064104
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = zext i32 %i.ar to i64
  %i.at = and i64 %.070102, 4294967295
  %i.au = add nuw nsw i64 %.065103, %i.at
  %i.av = add nuw nsw i64 %i.au, %i.as            ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr [4 x i8], ptr %.0.i80, i64 %.064104
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !7
  %i.ay = lshr i64 %i.av, 32                      ; 2 uses
  %i.az = lshr i64 %.070102, 32                   ; 2 uses
  %i.ba = add nuw nsw i64 %.064104, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %.0.i77
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph, !llvm.loop !293

.lr.ph110:                                        ; preds = %.preheader88, %bb.m
  %.1109 = phi i64 [ %i.bi, %bb.m ], [ %.064.lcssa, %.preheader88 ] ; 4 uses
  %.166108 = phi i64 [ %i.bg, %bb.m ], [ %.065.lcssa, %.preheader88 ] ; 2 uses
  %.171107 = phi i64 [ %i.bh, %bb.m ], [ %.070.lcssa, %.preheader88 ] ; 3 uses
  %i.bb = icmp eq i64 %.171107, 0
  br i1 %i.bb, label %.loopexit90, label %bb.m

bb.m:                                             ; preds = %.lr.ph110
  %i.bc = and i64 %.171107, 4294967295
  %i.bd = add nuw nsw i64 %.166108, %i.bc         ; 2 uses
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr [4 x i8], ptr %.0.i80, i64 %.1109
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !7
  %i.bg = lshr i64 %i.bd, 32
  %i.bh = lshr i64 %.171107, 32
  %i.bi = add nuw i64 %.1109, 1
  %exitcond124.not = icmp eq i64 %.1109, %spec.store.select
  br i1 %exitcond124.not, label %.loopexit89, label %.lr.ph110, !llvm.loop !294

.preheader86:                                     ; preds = %.lr.ph, %bb.n
  %indvar = phi i64 [ %indvar.next, %bb.n ], [ 0, %.lr.ph ] ; 3 uses
  %.267 = phi i64 [ %i.cc, %bb.n ], [ %.065103, %.lr.ph ]
  %.2 = phi i64 [ %i.cd, %bb.n ], [ %.064104, %.lr.ph ] ; 6 uses
  %i.bj = icmp eq i64 %.267, 0
  br i1 %i.bj, label %.preheader.preheader, label %bb.n

.preheader.preheader:                             ; preds = %.preheader86
  %i.bk = add nuw i64 %.064104, 1
  %i.bl = add i64 %i.bk, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %.0.i77, i64 %i.bl)
  %i.bm = add i64 %indvar, %.064104
  %i.bn = sub i64 %smax, %i.bm                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bn, 8
  %i.bo = sub i64 %.0.i80162, %.0.i84163
  %diff.check = icmp ult i64 %i.bo, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.preheader167, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.bn, -8                      ; 3 uses
  %i.bp = add i64 %.2, %n.vec                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = add i64 %.2, %index                     ; 2 uses
  %i.br = getelementptr [4 x i8], ptr %.0.i84, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !7
  %wide.load164 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !7
  %i.bt = getelementptr [4 x i8], ptr %.0.i80, i64 %i.bq ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store <4 x i32> %wide.load, ptr %i.bt, align 4, !tbaa !7
  store <4 x i32> %wide.load164, ptr %i.bu, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader167

.preheader.preheader167:                          ; preds = %.preheader.preheader, %middle.block
  %.5.ph = phi i64 [ %.2, %.preheader.preheader ], [ %i.bp, %middle.block ]
  br label %.preheader

bb.n:                                             ; preds = %.preheader86
  %i.bw = getelementptr [4 x i8], ptr %.0.i84, i64 %.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = zext i32 %i.bx to i64
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr [4 x i8], ptr %.0.i80, i64 %.2
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = lshr i64 %i.bz, 32                      ; 2 uses
  %i.cd = add nuw nsw i64 %.2, 1                  ; 3 uses
  %i.ce = icmp slt i64 %i.cd, %.0.i77
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ce, label %.preheader86, label %.loopexit87

.loopexit87:                                      ; preds = %bb.n, %bb.o
  %.368 = phi i64 [ 0, %bb.o ], [ %i.cc, %bb.n ]
  %.3 = phi i64 [ %i.ci, %bb.o ], [ %i.cd, %bb.n ] ; 2 uses
  %i.cf = icmp slt i64 %.3, %i.ab
  br i1 %i.cf, label %.loopexit90, label %.loopexit89

.loopexit90:                                      ; preds = %.lr.ph110, %.loopexit87
  %.469 = phi i64 [ %.368, %.loopexit87 ], [ %.166108, %.lr.ph110 ]
  %.4 = phi i64 [ %.3, %.loopexit87 ], [ %.1109, %.lr.ph110 ] ; 3 uses
  %i.cg = icmp eq i64 %.469, 0
  br i1 %i.cg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit90
  %i.ch = getelementptr [4 x i8], ptr %.0.i80, i64 %.4
  store i32 1, ptr %i.ch, align 4, !tbaa !7
  %i.ci = add nsw i64 %.4, 1
  br label %.loopexit87, !llvm.loop !296

.preheader:                                       ; preds = %.preheader.preheader167, %.preheader
  %.5 = phi i64 [ %i.cm, %.preheader ], [ %.5.ph, %.preheader.preheader167 ] ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %.0.i84, i64 %.5
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7
  %i.cl = getelementptr [4 x i8], ptr %.0.i80, i64 %.5
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !7
  %i.cm = add nuw nsw i64 %.5, 1                  ; 3 uses
  %i.cn = icmp slt i64 %i.cm, %.0.i77
  br i1 %i.cn, label %.preheader, label %.loopexit, !llvm.loop !297

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.p
  %.6 = phi i64 [ %i.cq, %bb.p ], [ %i.bp, %middle.block ], [ %i.cm, %.preheader ] ; 2 uses
  %i.co = icmp slt i64 %.6, %i.ab
  br i1 %i.co, label %bb.p, label %.loopexit89

bb.p:                                             ; preds = %.loopexit, %.loopexit90
  %.7 = phi i64 [ %.6, %.loopexit ], [ %.4, %.loopexit90 ] ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %.0.i80, i64 %.7
  store i32 0, ptr %i.cp, align 4, !tbaa !7
  %i.cq = add nsw i64 %.7, 1
  br label %.loopexit, !llvm.loop !298

.loopexit89:                                      ; preds = %bb.m, %.preheader88, %.loopexit, %.loopexit87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !299
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.cs = load volatile i64, ptr %i.cr, align 8, !tbaa !11 ; 0 uses
  %i.ct = icmp eq i64 %i.ag, 0
end_hunk_3
begin_hunk_4_@rb_big_minus:bb.a

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.i, %bb.h
  %.0.i28.i.i = phi i64 [ %i.ab, %bb.h ], [ %i.ae, %bb.i ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.ag, %bb.i ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.j
  %indvar = phi i32 [ %indvar.next, %bb.j ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.al, %bb.j ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.ah = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.al = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.al, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.am, label %bb.o, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.an = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.ao = trunc i64 %.0.i28.i.i to i32
  %i.ap = sub i32 %indvar, %i.ao
  %i.aq = icmp ugt i32 %i.ap, -4
  br i1 %i.aq, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.ar, %.lr.ph36.i.i ], [ %i.an, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.ar = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.as = add i32 %.035.i.i, -3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw i64 %i.aw, 32
  %i.ay = sext i32 %i.ar to i64
  %i.az = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.ax, %i.bb
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.an, %.lr.ph36.preheader.i.i ], [ %i.ar, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.bc, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.bd, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.bj, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.bd = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.be = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = zext i32 %i.bh to i64
  %i.bj = or disjoint i64 %i.be, %i.bi            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.an
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !304

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.bk = icmp ult i64 %i.be, 4611686018427387904
  %i.bl = and i64 %i.w, 8192
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.bk, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bm = shl nuw nsw i64 %i.bj, 1
  %i.bn = or disjoint i64 %i.bm, 1
  br label %bignorm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.bo = icmp ult i64 %i.bj, 4611686018427387905
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.neg.i.i = mul nsw i64 %i.bj, -2
  %i.bp = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.o:                                             ; preds = %bb.m, %bb.k, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %i.q, i64 noundef %.02332.i.i)
  br label %bignorm.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.e
  %i.bq = and i64 %1, 2
  %.not37 = icmp eq i64 %i.bq, 0
  br i1 %.not37, label %RB_FLOAT_TYPE_P.exit.thread35, label %RB_FLOAT_TYPE_P.exit.thread

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.br = tail call fastcc double @big2dbl(i64 noundef %0) ; 3 uses
  %i.bs = tail call double @llvm.fabs.f64(double %i.br) #29
  %i.bt = fcmp oeq double %i.bs, +inf
  br i1 %i.bt, label %bb.p, label %rb_big2dbl.exit

bb.p:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.12) #23
  %i.bu = fcmp olt double %i.br, 0.000000e+00
  %..i = select i1 %i.bu, double -inf, double +inf
  br label %rb_big2dbl.exit

rb_big2dbl.exit:                                  ; preds = %RB_FLOAT_TYPE_P.exit.thread, %bb.p
  %.0.i27 = phi double [ %..i, %bb.p ], [ %i.br, %RB_FLOAT_TYPE_P.exit.thread ]
  br i1 %i.m, label %bb.q, label %bb.s

bb.q:                                             ; preds = %rb_big2dbl.exit
  %.not.i.i29 = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i29, label %rb_float_value_inline.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg.i.i30 = ashr i64 %1, 63
  %i.bv = add nsw i64 %.neg.i.i30, 2
  %i.bw = and i64 %1, -4
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bx, i64 range(i64 1, 0) %i.bx, i64 61)
  %i.bz = bitcast i64 %i.by to double
  br label %rb_float_value_inline.exit

bb.s:                                             ; preds = %rb_big2dbl.exit
  %i.ca = inttoptr i64 %1 to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !265
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.q, %bb.r, %bb.s
  %.0.i28 = phi double [ %i.cc, %bb.s ], [ %i.bz, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.cd = fsub double %.0.i27, %.0.i28            ; 2 uses
  %i.ce = bitcast double %i.cd to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.ce, 3458764513820540928
  br i1 %cond.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %rb_float_value_inline.exit
  %i.cf = lshr i64 %i.ce, 60
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 7
  %i.ci = add nsw i32 %i.ch, -5
  %i.cj = icmp ult i32 %i.ci, -2
  br i1 %i.cj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ce, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ce, i64 3)
  %i.cl = and i64 %i.ck, -4
  %i.cm = or disjoint i64 %i.cl, 2
  br label %bignorm.exit

bb.v:                                             ; preds = %bb.t
  %i.cn = icmp eq i64 %i.ce, 0
  br i1 %i.cn, label %bignorm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %rb_float_value_inline.exit
  %i.co = tail call i64 @rb_float_new_in_heap(double noundef %i.cd) #23
  br label %bignorm.exit

RB_FLOAT_TYPE_P.exit.thread35:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cp = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef 45) #23
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.j, %bb.w, %bb.v, %bb.u, %bb.o, %bb.n, %bb.l, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f, %RB_FLOAT_TYPE_P.exit.thread35, %bb.d, %bb.c
  %.021 = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.cp, %RB_FLOAT_TYPE_P.exit.thread35 ], [ -9223372036854775806, %bb.v ], [ %i.q, %bb.f ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bp, %bb.n ], [ %i.q, %bb.o ], [ %i.bn, %bb.l ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.cm, %bb.u ], [ %i.co, %bb.w ], [ 1, %bb.j ]
  ret i64 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_mul(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1                           ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  %.07.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 4 uses
  %i.d = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.e = tail call fastcc i64 @bignew_1(i64 noundef %i.d, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = and i64 %i.g, 16384
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 16
  store i64 %.07.i, ptr %i.i, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %i.j = and i64 %i.g, -16744449
  %i.k = or disjoint i64 %i.j, %.us-phi.i.i
  store i64 %i.k, ptr %i.f, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  store i64 %.07.i, ptr %i.m, align 4
  %.not1824.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi25.i.i = select i1 %.not1824.i.i, i64 1, i64 2
  %i.n = getelementptr i8, ptr %i.f, i64 16
  store i64 %.us-phi25.i.i, ptr %i.n, align 8, !tbaa !15
  br label %rb_uint2big.exit.i

rb_uint2big.exit.i:                               ; preds = %bb.d, %bb.c
  br i1 %i.c, label %rb_int2big.exit, label %bb.e

bb.e:                                             ; preds = %rb_uint2big.exit.i
  %i.o = load i64, ptr %i.f, align 8, !tbaa !13
  %i.p = and i64 %i.o, -8193
  store i64 %i.p, ptr %i.f, align 8, !tbaa !13
  br label %rb_int2big.exit

bb.f:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %1, 0
  %i.r = and i64 %1, 6
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s                         ; 2 uses
  br i1 %i.t, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.u = inttoptr i64 %1 to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, 31
  switch i64 %i.w, label %RB_FLOAT_TYPE_P.exit.thread23 [
    i64 10, label %rb_int2big.exit
    i64 4, label %RB_FLOAT_TYPE_P.exit.thread
  ]

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f
  %i.x = and i64 %1, 2
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %RB_FLOAT_TYPE_P.exit.thread23, label %RB_FLOAT_TYPE_P.exit.thread

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.y = tail call fastcc double @big2dbl(i64 noundef %0) ; 3 uses
  %i.z = tail call double @llvm.fabs.f64(double %i.y) #29
  %i.aa = fcmp oeq double %i.z, +inf
  br i1 %i.aa, label %bb.g, label %rb_big2dbl.exit

bb.g:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.12) #23
  %i.ab = fcmp olt double %i.y, 0.000000e+00
  %..i = select i1 %i.ab, double -inf, double +inf
  br label %rb_big2dbl.exit

rb_big2dbl.exit:                                  ; preds = %RB_FLOAT_TYPE_P.exit.thread, %bb.g
  %.0.i13 = phi double [ %..i, %bb.g ], [ %i.y, %RB_FLOAT_TYPE_P.exit.thread ]
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %rb_big2dbl.exit
  %.not.i.i = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.neg.i.i = ashr i64 %1, 63
  %i.ac = add nsw i64 %.neg.i.i, 2
  %i.ad = and i64 %1, -4
  %i.ae = or i64 %i.ac, %i.ad                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.ae, i64 range(i64 1, 0) %i.ae, i64 61)
  %i.ag = bitcast i64 %i.af to double
  br label %rb_float_value_inline.exit

bb.j:                                             ; preds = %rb_big2dbl.exit
  %i.ah = inttoptr i64 %1 to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !265
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.h, %bb.i, %bb.j
  %.0.i14 = phi double [ %i.aj, %bb.j ], [ %i.ag, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.ak = fmul double %.0.i13, %.0.i14            ; 2 uses
  %i.al = bitcast double %i.ak to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.al, 3458764513820540928
  br i1 %cond.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %rb_float_value_inline.exit
  %i.am = lshr i64 %i.al, 60
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = and i32 %i.an, 7
  %i.ap = add nsw i32 %i.ao, -5
  %i.aq = icmp ult i32 %i.ap, -2
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.al, i64 range(i64 3458764513820540929, 3458764513820540928) %i.al, i64 3)
  %i.as = and i64 %i.ar, -4
  %i.at = or disjoint i64 %i.as, 2
  br label %rb_float_new_inline.exit

bb.m:                                             ; preds = %bb.k
  %i.au = icmp eq i64 %i.al, 0
  br i1 %i.au, label %rb_float_new_inline.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %rb_float_value_inline.exit
  %i.av = tail call i64 @rb_float_new_in_heap(double noundef %i.ak) #23
  br label %rb_float_new_inline.exit

RB_FLOAT_TYPE_P.exit.thread23:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.aw = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef 42) #23
  br label %rb_float_new_inline.exit

rb_int2big.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.e, %rb_uint2big.exit.i
  %.0 = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.e, %rb_uint2big.exit.i ], [ %i.e, %bb.e ]
  %i.ax = tail call fastcc i64 @bigmul0(i64 noundef %0, i64 noundef %.0) ; 7 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %rb_float_new_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_int2big.exit
  %i.bc = inttoptr i64 %i.ax to ptr               ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13 ; 4 uses
  %i.be = and i64 %i.bd, 31
  %i.bf = icmp eq i64 %i.be, 10
  br i1 %i.bf, label %bb.o, label %rb_float_new_inline.exit

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bg = and i64 %i.bd, 16384
  %.not.i.i.i17 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = lshr i64 %i.bd, 15
  %i.bi = and i64 %i.bh, 511
  %i.bj = getelementptr i8, ptr %i.bc, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %i.bc, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.bm = getelementptr i8, ptr %i.bc, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.q, %bb.p
  %.0.i28.i.i = phi i64 [ %i.bi, %bb.p ], [ %i.bl, %bb.q ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.bj, %bb.p ], [ %i.bn, %bb.q ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %rb_float_new_inline.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.r
  %indvar = phi i32 [ %indvar.next, %bb.r ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.bs, %bb.r ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.bo = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.r, label %.critedge.i.i

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.bs = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.bs, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %rb_float_new_inline.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bt = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.bt, label %bb.w, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.bu = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.bv = trunc i64 %.0.i28.i.i to i32
  %i.bw = sub i32 %indvar, %i.bv
  %i.bx = icmp ugt i32 %i.bw, -4
  br i1 %i.bx, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.by, %.lr.ph36.i.i ], [ %i.bu, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.by = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.bz = add i32 %.035.i.i, -3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw i64 %i.cd, 32
  %i.cf = sext i32 %i.by to i64
  %i.cg = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = zext i32 %i.ch to i64
end_hunk_4
begin_hunk_5_@rb_big_mul:bb.a
._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.cr = icmp ult i64 %i.cl, 4611686018427387904
  %i.cs = and i64 %i.bd, 8192
  %.not.i.i18 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i18, label %bb.u, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.cr, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ct = shl nuw nsw i64 %i.cq, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %rb_float_new_inline.exit

bb.u:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.cv = icmp ult i64 %i.cq, 4611686018427387905
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.neg.i.i19 = mul nsw i64 %i.cq, -2
  %i.cw = or disjoint i64 %.neg.i.i19, 1
  br label %rb_float_new_inline.exit

bb.w:                                             ; preds = %bb.u, %bb.s, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %i.ax, i64 noundef %.02332.i.i)
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.r, %bb.w, %bb.v, %bb.t, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_int2big.exit, %bb.n, %bb.m, %bb.l, %RB_FLOAT_TYPE_P.exit.thread23
  %.011 = phi i64 [ -9223372036854775806, %bb.m ], [ %i.aw, %RB_FLOAT_TYPE_P.exit.thread23 ], [ %i.at, %bb.l ], [ %i.av, %bb.n ], [ %i.ax, %rb_int2big.exit ], [ %i.ax, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.cw, %bb.v ], [ %i.ax, %bb.w ], [ %i.cu, %bb.t ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.r ]
  ret i64 %.011
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @bigmul0(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.e = icmp eq i64 %0, %1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i64 @bigsq(i64 noundef %0)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %i.i = and i64 %i.h, 16384
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.e:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.h, 15
  %i.m = and i64 %i.l, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.m, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.n = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 3 uses
  %i.p = and i64 %i.o, 16384
  %.not.i17 = icmp eq i64 %i.p, 0
  br i1 %.not.i17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit19

bb.g:                                             ; preds = %BIGNUM_LEN.exit
  %i.s = lshr i64 %i.o, 15
  %i.t = and i64 %i.s, 511
  br label %BIGNUM_LEN.exit19

BIGNUM_LEN.exit19:                                ; preds = %bb.f, %bb.g
  %.0.i18 = phi i64 [ %i.t, %bb.g ], [ %i.r, %bb.f ] ; 3 uses
  %i.u = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.0.i, i64 %.0.i18)
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %BIGNUM_LEN.exit19
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.39) #25
  unreachable

bb.i:                                             ; preds = %BIGNUM_LEN.exit19
  %i.x = add i64 %.0.i18, %.0.i                   ; 2 uses
  %i.y = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.z = xor i64 %i.o, %i.h
  %i.aa = and i64 %i.z, 8192
  %.not = icmp eq i64 %i.aa, 0
  %i.ab = zext i1 %.not to i32
  %i.ac = tail call fastcc i64 @bignew_1(i64 noundef %i.y, i64 noundef %i.x, i32 noundef %i.ab) ; 2 uses
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !13
  %i.ae = and i64 %i.ad, 16384
  %.not.i20 = icmp eq i64 %i.ae, 0
  br i1 %.not.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.g, i64 16
  br label %BIGNUM_DIGITS.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.g, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.j, %bb.k
  %.0.i21 = phi ptr [ %i.af, %bb.j ], [ %i.ah, %bb.k ]
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !13
  %i.aj = and i64 %i.ai, 16384
  %.not.i22 = icmp eq i64 %i.aj, 0
  br i1 %.not.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ak = getelementptr i8, ptr %i.n, i64 16
  br label %BIGNUM_DIGITS.exit24

bb.m:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.al = getelementptr i8, ptr %i.n, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit24

BIGNUM_DIGITS.exit24:                             ; preds = %bb.l, %bb.m
  %.0.i23 = phi ptr [ %i.ak, %bb.l ], [ %i.am, %bb.m ]
  %i.an = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = and i64 %i.ao, 16384
  %.not.i25 = icmp eq i64 %i.ap, 0
  br i1 %.not.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %BIGNUM_DIGITS.exit24
  %i.aq = getelementptr i8, ptr %i.an, i64 16
  br label %BIGNUM_DIGITS.exit27

bb.o:                                             ; preds = %BIGNUM_DIGITS.exit24
  %i.ar = getelementptr i8, ptr %i.an, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit27

BIGNUM_DIGITS.exit27:                             ; preds = %bb.n, %bb.o
  %.0.i26 = phi ptr [ %i.aq, %bb.n ], [ %i.as, %bb.o ]
  tail call fastcc void @bary_mul(ptr noundef %.0.i26, i64 noundef %i.x, ptr noundef %.0.i21, i64 noundef %.0.i, ptr noundef %.0.i23, i64 noundef %.0.i18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !306
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.au = load volatile i64, ptr %i.at, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !307
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.aw = load volatile i64, ptr %i.av, align 8, !tbaa !11 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %BIGNUM_DIGITS.exit27, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.ac, %BIGNUM_DIGITS.exit27 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_div(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_big_divide(i64 noundef %0, i64 noundef %1, i64 noundef 47)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_big_divide(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 47, 3586) %2) unnamed_addr #0 {
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
  store i64 %.07.i, ptr %i.j, align 4
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
  switch i64 %i.x, label %RB_FLOAT_TYPE_P.exit.thread34 [
    i64 10, label %rb_int2big.exit
    i64 4, label %RB_FLOAT_TYPE_P.exit.thread.thread
  ]

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f
  %i.y = and i64 %1, 2
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %RB_FLOAT_TYPE_P.exit.thread34, label %RB_FLOAT_TYPE_P.exit.thread

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.z = icmp eq i64 %2, 47
  br i1 %i.z, label %bb.g, label %bb.m

RB_FLOAT_TYPE_P.exit.thread.thread:               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aa = icmp eq i64 %2, 47
  br i1 %i.aa, label %bb.g, label %bb.o

bb.g:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread.thread, %RB_FLOAT_TYPE_P.exit.thread
  %i.ab = tail call fastcc double @big2dbl(i64 noundef %0) ; 3 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab) #29
  %i.ad = fcmp oeq double %i.ac, +inf
  br i1 %i.ad, label %bb.h, label %rb_big2dbl.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.12) #23
  %i.ae = fcmp olt double %i.ab, 0.000000e+00
  %..i = select i1 %i.ae, double -inf, double +inf
  br label %rb_big2dbl.exit

rb_big2dbl.exit:                                  ; preds = %bb.g, %bb.h
  %.0.i20 = phi double [ %..i, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.af = bitcast double %.0.i20 to i64           ; 5 uses
  %cond.i = icmp eq i64 %i.af, 3458764513820540928
  br i1 %cond.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %rb_big2dbl.exit
  %i.ag = lshr i64 %i.af, 60
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 7
  %i.aj = add nsw i32 %i.ai, -5
  %i.ak = icmp ult i32 %i.aj, -2
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.af, i64 range(i64 3458764513820540929, 3458764513820540928) %i.af, i64 3)
  %i.am = and i64 %i.al, -4
  %i.an = or disjoint i64 %i.am, 2
  br label %rb_float_new_inline.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = icmp eq i64 %i.af, 0
  br i1 %i.ao, label %rb_float_new_inline.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %rb_big2dbl.exit
  %i.ap = tail call i64 @rb_float_new_in_heap(double noundef %.0.i20) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.j, %bb.k, %bb.l
  %.0.i21 = phi i64 [ %i.an, %bb.j ], [ %i.ap, %bb.l ], [ -9223372036854775806, %bb.k ]
  %i.aq = tail call i64 @rb_flo_div_flo(i64 noundef %.0.i21, i64 noundef %1) #23
  br label %bignorm.exit

bb.m:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %.not.i.i = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg.i.i = ashr i64 %1, 63
  %i.ar = add nsw i64 %.neg.i.i, 2
  %i.as = and i64 %1, -4
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.at, i64 range(i64 1, 0) %i.at, i64 61)
  %i.av = bitcast i64 %i.au to double
  br label %rb_float_value_inline.exit

bb.o:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread.thread
  %i.aw = inttoptr i64 %1 to ptr
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !265
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.n, %bb.o
  %.0.i22 = phi double [ %i.ay, %bb.o ], [ %i.av, %bb.n ]
  %i.az = fcmp oeq double %.0.i22, 0.000000e+00
  br i1 %i.az, label %rb_float_value_inline.exit.thread, label %bb.p

rb_float_value_inline.exit.thread:                ; preds = %bb.m, %rb_float_value_inline.exit
  tail call void @rb_num_zerodiv() #27
  unreachable

bb.p:                                             ; preds = %rb_float_value_inline.exit
  %i.ba = tail call fastcc i64 @rb_big_divide(i64 noundef %0, i64 noundef %1, i64 noundef 47) ; 5 uses
  %i.bb = and i64 %i.ba, 3
  %i.bc = icmp eq i64 %i.bb, 2
  br i1 %i.bc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.not.i.i24 = icmp eq i64 %i.ba, -9223372036854775806
  br i1 %.not.i.i24, label %rb_float_value_inline.exit26, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg.i.i25 = ashr i64 %i.ba, 63
  %i.bd = add nsw i64 %.neg.i.i25, 2
  %i.be = and i64 %i.ba, -4
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bf, i64 range(i64 1, 0) %i.bf, i64 61)
  %i.bh = bitcast i64 %i.bg to double
  br label %rb_float_value_inline.exit26

bb.s:                                             ; preds = %bb.p
  %i.bi = inttoptr i64 %i.ba to ptr
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !265
  br label %rb_float_value_inline.exit26

rb_float_value_inline.exit26:                     ; preds = %bb.q, %bb.r, %bb.s
  %.0.i23 = phi double [ %i.bk, %bb.s ], [ %i.bh, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.bl = tail call i64 @rb_dbl2big(double noundef %.0.i23)
  br label %bignorm.exit

RB_FLOAT_TYPE_P.exit.thread34:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bm = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef %2) #23
  br label %bignorm.exit

rb_int2big.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.e, %rb_uint2big.exit.i
  %.018 = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.f, %rb_uint2big.exit.i ], [ %i.f, %bb.e ]
  call fastcc void @bigdivmod(i64 noundef %0, i64 noundef %.018, ptr noundef nonnull %i.a, ptr noundef null)
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !11  ; 7 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = and i64 %i.bn, 7
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = or i1 %i.bo, %i.bq
  br i1 %i.br, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_int2big.exit
  %i.bs = inttoptr i64 %i.bn to ptr               ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !13 ; 4 uses
  %i.bu = and i64 %i.bt, 31
  %i.bv = icmp eq i64 %i.bu, 10
  br i1 %i.bv, label %bb.t, label %bignorm.exit

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bw = and i64 %i.bt, 16384
  %.not.i.i.i28 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = lshr i64 %i.bt, 15
  %i.by = and i64 %i.bx, 511
  %i.bz = getelementptr i8, ptr %i.bs, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.ca = getelementptr i8, ptr %i.bs, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.cc = getelementptr i8, ptr %i.bs, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.v, %bb.u
  %.0.i28.i.i = phi i64 [ %i.by, %bb.u ], [ %i.cb, %bb.v ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.bz, %bb.u ], [ %i.cd, %bb.v ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.w
  %indvar = phi i32 [ %indvar.next, %bb.w ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.ci, %bb.w ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.ce = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.w, label %.critedge.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.ci = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.ci, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.cj = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.cj, label %bb.ab, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ck = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.cl = trunc i64 %.0.i28.i.i to i32
  %i.cm = sub i32 %indvar, %i.cl
  %i.cn = icmp ugt i32 %i.cm, -4
  br i1 %i.cn, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.co, %.lr.ph36.i.i ], [ %i.ck, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.co = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.cp = add i32 %.035.i.i, -3
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw i64 %i.ct, 32
  %i.cv = sext i32 %i.co to i64
  %i.cw = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = zext i32 %i.cx to i64
  %i.cz = or disjoint i64 %i.cu, %i.cy
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.ck, %.lr.ph36.preheader.i.i ], [ %i.co, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.cz, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.da, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.dg, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.da = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.db = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = zext i32 %i.de to i64
  %i.dg = or disjoint i64 %i.db, %i.df            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.ck
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !308

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.dh = icmp ult i64 %i.db, 4611686018427387904
  %i.di = and i64 %i.bt, 8192
  %.not.i.i29 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i29, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.dh, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dj = shl nuw nsw i64 %i.dg, 1
  %i.dk = or disjoint i64 %i.dj, 1
  br label %bignorm.exit

bb.z:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.dl = icmp ult i64 %i.dg, 4611686018427387905
  br i1 %i.dl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.neg.i.i30 = mul nsw i64 %i.dg, -2
  %i.dm = or disjoint i64 %.neg.i.i30, 1
  br label %bignorm.exit

bb.ab:                                            ; preds = %bb.z, %bb.x, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.bn, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.w, %bb.ab, %bb.aa, %bb.y, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_int2big.exit, %RB_FLOAT_TYPE_P.exit.thread34, %rb_float_value_inline.exit26, %rb_float_new_inline.exit
  %.0 = phi i64 [ %i.bm, %RB_FLOAT_TYPE_P.exit.thread34 ], [ %i.aq, %rb_float_new_inline.exit ], [ %i.bl, %rb_float_value_inline.exit26 ], [ %i.bn, %rb_int2big.exit ], [ %i.bn, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.dm, %bb.aa ], [ %i.bn, %bb.ab ], [ %i.dk, %bb.y ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_idiv(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_big_divide(i64 noundef %0, i64 noundef %1, i64 noundef 3585)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_modulo(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  store i64 %.07.i, ptr %i.j, align 4
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
define internal fastcc void @bigdivmod(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
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
  %i.h = load i64, ptr %i.a, align 8, !tbaa !11
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
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
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
  store i64 1, ptr %i.al, align 4
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
  %i.as = load i64, ptr %i.a, align 8, !tbaa !11
  %i.at = call fastcc i64 @bigadd(i64 noundef %i.as, i64 noundef %1, i32 noundef 1)
  br label %.sink.split

bigzero_p.exit.thread:                            ; preds = %bb.c, %BIGNUM_LEN.exit.i, %BIGNUM_LEN.exit20.thread, %BIGNUM_LEN.exit.thread, %BIGNUM_LEN.exit20, %BIGNUM_LEN.exit, %bb.a
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bigzero_p.exit.thread
  %i.au = load i64, ptr %i.a, align 8, !tbaa !11
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ %i.au, %bb.i ], [ %i.at, %bb.h ]
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
  store i64 %.07.i, ptr %i.j, align 4
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
define internal fastcc void @bigdivrem(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
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
  store i64 0, ptr %i.ax, align 4
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
  %i.bw = sub nsw i32 31, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64              ; 4 uses
  %min.iters.check = icmp ult i64 %.0101.lcssa, 4
  %i.by = sub i64 %.0.i12611, %.0.i12912
  %diff.check = icmp ult i64 %i.by, 16
  %or.cond14 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %.0101.lcssa, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph ], [ %i.cd, %vector.body ]
  %i.bz = xor i64 %index, -1
  %i.ca = add i64 %.0101.lcssa, %i.bz             ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.0.i126, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cd = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.ce = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.cd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cf = shl nuw <4 x i64> %i.ce, splat (i64 32)
  %i.cg = or disjoint <4 x i64> %i.cf, %i.cd
  %i.ch = lshr <4 x i64> %i.cg, %broadcast.splat
  %i.ci = trunc <4 x i64> %i.ch to <4 x i32>
  %i.cj = getelementptr [4 x i8], ptr %.0.i129, i64 %i.ca
  %i.ck = getelementptr i8, ptr %i.cj, i64 -12
  %reverse13 = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse13, ptr %i.ck, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.cd, i64 3
  %cmp.n = icmp eq i64 %.0101.lcssa, %n.vec
  br i1 %cmp.n, label %bigdivrem_single.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.017.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %.017.i.i.i.ph, 1
  %xtraiter = and i64 %.0101.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.i.prol = shl nuw i64 %.014.in16.i.i.i.ph, 32
  %i.cm = xor i64 %.017.i.i.i.ph, -1
  %i.cn = add i64 %.0101.lcssa, %i.cm             ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %.0.i126, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = or disjoint i64 %.014.i.i.i.prol, %i.cq
  %i.cs = lshr i64 %i.cr, %i.bx
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr [4 x i8], ptr %.0.i129, i64 %i.cn
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !7
  %i.cv = or disjoint i64 %.017.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.i.i.unr = phi i64 [ %.017.i.i.i.ph, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %.014.in16.i.i.i.unr = phi i64 [ %.014.in16.i.i.i.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %i.cw = icmp eq i64 %.0101.lcssa, %.neg
  br i1 %i.cw, label %bigdivrem_single.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i.i.i = phi i64 [ %i.do, %scalar.ph ], [ %.017.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i.i.i = phi i64 [ %i.dj, %scalar.ph ], [ %.014.in16.i.i.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i.i.i = shl nuw i64 %.014.in16.i.i.i, 32
  %i.cx = xor i64 %.017.i.i.i, -1
  %i.cy = add i64 %.0101.lcssa, %i.cx             ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %.0.i126, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = or disjoint i64 %.014.i.i.i, %i.db
  %i.dd = lshr i64 %i.dc, %i.bx
  %i.de = trunc i64 %i.dd to i32
  %i.df = getelementptr [4 x i8], ptr %.0.i129, i64 %i.cy
  store i32 %i.de, ptr %i.df, align 4, !tbaa !7
  %.014.i.i.i.1 = shl nuw i64 %i.db, 32
  %reass.sub = sub i64 %.0101.lcssa, %.017.i.i.i
  %i.dg = add i64 %reass.sub, -2                  ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %.0.i126, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = or disjoint i64 %.014.i.i.i.1, %i.dj
  %i.dl = lshr i64 %i.dk, %i.bx
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = getelementptr [4 x i8], ptr %.0.i129, i64 %i.dg
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %i.do = add nuw i64 %.017.i.i.i, 2              ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.do, %.0101.lcssa
  br i1 %exitcond.not.i.i.i.1, label %bigdivrem_single.exit, label %scalar.ph, !llvm.loop !315

bb.w:                                             ; preds = %BIGNUM_DIGITS.exit130
  %.not.i.i = icmp eq i64 %.0101.lcssa, 0
  br i1 %.not.i.i, label %bigdivrem_single.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.dp = zext i32 %i.be to i64                   ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i
  %.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ea, %bb.x ]
  %.02629.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eb, %bb.x ] ; 2 uses
  %i.dq = shl nuw i64 %.030.i.i, 32
  %i.dr = xor i64 %.02629.i.i, -1
  %i.ds = add i64 %.0101.lcssa, %i.dr             ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %.0.i126, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = zext i32 %i.du to i64
  %i.dw = or disjoint i64 %i.dq, %i.dv            ; 2 uses
  %i.dx = udiv i64 %i.dw, %i.dp
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr [4 x i8], ptr %.0.i129, i64 %i.ds
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !7
  %i.ea = urem i64 %i.dw, %i.dp                   ; 2 uses
  %i.eb = add nuw i64 %.02629.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.eb, %.0101.lcssa
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.x, !llvm.loop !113

._crit_edge.loopexit.i.i:                         ; preds = %bb.x
  %i.ec = trunc nuw i64 %i.ea to i32
  br label %bigdivrem_single.exit

bigdivrem_single.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.v, %bb.w, %._crit_edge.loopexit.i.i
  %.027.i.i = phi i32 [ %i.ec, %._crit_edge.loopexit.i.i ], [ %i.bu, %bb.v ], [ 0, %bb.w ], [ %i.bu, %middle.block ], [ %i.bu, %scalar.ph ], [ %i.bu, %scalar.ph.prol.loopexit ] ; 2 uses
  %.not116 = icmp eq ptr %3, null
  br i1 %.not116, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bigdivrem_single.exit
  %i.ed = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ee = tail call fastcc i64 @bignew_1(i64 noundef %i.ed, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.ef = inttoptr i64 %i.ee to ptr               ; 6 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !13 ; 2 uses
  %i.eh = and i64 %i.eg, 16384
  %.not.i.i132 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr i8, ptr %i.ef, i64 16
  store i32 %.027.i.i, ptr %i.ei, align 4, !tbaa !7
  %i.ej = getelementptr i8, ptr %i.ef, i64 20
  store i32 0, ptr %i.ej, align 4, !tbaa !7
  %i.ek = and i64 %i.eg, -16744449
  %i.el = or disjoint i64 %i.ek, 32768
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !13
  br label %rb_uint2big.exit

bb.aa:                                            ; preds = %bb.y
  %i.em = getelementptr i8, ptr %i.ef, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !15 ; 2 uses
  store i32 %.027.i.i, ptr %i.en, align 4, !tbaa !7
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  store i32 0, ptr %i.eo, align 4, !tbaa !7
  %i.ep = getelementptr i8, ptr %i.ef, i64 16
  store i64 1, ptr %i.ep, align 8, !tbaa !15
  br label %rb_uint2big.exit

rb_uint2big.exit:                                 ; preds = %bb.z, %bb.aa
  store volatile i64 %i.ee, ptr %3, align 8, !tbaa !11
  %i.eq = load volatile i64, ptr %3, align 8, !tbaa !11
  %i.er = load i64, ptr %i.a, align 8, !tbaa !13
  %i.es = and i64 %i.er, 8192
  %i.et = inttoptr i64 %i.eq to ptr               ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !13
  %i.ev = and i64 %i.eu, -8193
  %.sink.i = or disjoint i64 %i.ev, %i.es
  store i64 %.sink.i, ptr %i.et, align 8, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %rb_uint2big.exit, %bigdivrem_single.exit
  %.not117 = icmp eq ptr %2, null
  br i1 %.not117, label %bb.bg, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store volatile i64 %i.bj, ptr %2, align 8, !tbaa !11
  br label %bb.bg

bb.ad:                                            ; preds = %bb.r
  %i.ew = icmp eq i64 %.0101.lcssa, 2
  %i.ex = icmp eq i64 %.0102169, 2
  %or.cond = and i1 %i.ex, %i.ew
  br i1 %or.cond, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load i64, ptr %.0.i126, align 4         ; 2 uses
  %i.ez = load i64, ptr %.0.i124, align 4         ; 2 uses
  %i.fa = urem i64 %i.ey, %i.ez
  %i.fb = udiv i64 %i.ey, %i.ez
  %.not114 = icmp eq ptr %2, null
  br i1 %.not114, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.fd = xor i64 %i.i, %i.b
  %i.fe = and i64 %i.fd, 8192
  %.not165 = icmp eq i64 %i.fe, 0
  %i.ff = zext i1 %.not165 to i32
  %i.fg = tail call fastcc i64 @bignew_1(i64 noundef %i.fc, i64 noundef 2, i32 noundef %i.ff) ; 2 uses
  %i.fh = inttoptr i64 %i.fg to ptr               ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !13
  %i.fj = and i64 %i.fi, 16384
  %.not.i135 = icmp eq i64 %i.fj, 0
  br i1 %.not.i135, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr i8, ptr %i.fh, i64 16
  br label %BIGNUM_DIGITS.exit137

bb.ah:                                            ; preds = %bb.af
  %i.fl = getelementptr i8, ptr %i.fh, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit137

BIGNUM_DIGITS.exit137:                            ; preds = %bb.ag, %bb.ah
  %.0.i136 = phi ptr [ %i.fk, %bb.ag ], [ %i.fm, %bb.ah ]
  store i64 %i.fb, ptr %.0.i136, align 4
  store volatile i64 %i.fg, ptr %2, align 8, !tbaa !11
  br label %bb.ai

bb.ai:                                            ; preds = %BIGNUM_DIGITS.exit137, %bb.ae
  %.not115 = icmp eq ptr %3, null
  br i1 %.not115, label %bb.bg, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fn = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !13
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = lshr i32 %i.fp, 13
  %i.fr = and i32 %i.fq, 1
  %i.fs = tail call fastcc i64 @bignew_1(i64 noundef %i.fn, i64 noundef 2, i32 noundef %i.fr) ; 2 uses
  %i.ft = inttoptr i64 %i.fs to ptr               ; 3 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fv = and i64 %i.fu, 16384
  %.not.i138 = icmp eq i64 %i.fv, 0
  br i1 %.not.i138, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = getelementptr i8, ptr %i.ft, i64 16
  br label %BIGNUM_DIGITS.exit140

bb.al:                                            ; preds = %bb.aj
  %i.fx = getelementptr i8, ptr %i.ft, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit140

BIGNUM_DIGITS.exit140:                            ; preds = %bb.ak, %bb.al
  %.0.i139 = phi ptr [ %i.fw, %bb.ak ], [ %i.fy, %bb.al ]
  store i64 %i.fa, ptr %.0.i139, align 4
  store volatile i64 %i.fs, ptr %3, align 8, !tbaa !11
  br label %bb.bg

bb.am:                                            ; preds = %bb.ad
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %BIGNUM_DIGITS.exit143, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fz = add i64 %.0101.lcssa, 1                 ; 3 uses
  %i.ga = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.gb = xor i64 %i.i, %i.b
  %i.gc = and i64 %i.gb, 8192
  %.not164 = icmp eq i64 %i.gc, 0
  %i.gd = zext i1 %.not164 to i32
  %i.ge = tail call fastcc i64 @bignew_1(i64 noundef %i.ga, i64 noundef %i.fz, i32 noundef %i.gd) ; 3 uses
  %i.gf = inttoptr i64 %i.ge to ptr               ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !13
  %i.gh = and i64 %i.gg, 16384
  %.not.i141 = icmp eq i64 %i.gh, 0
  br i1 %.not.i141, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = getelementptr i8, ptr %i.gf, i64 16
  br label %BIGNUM_DIGITS.exit143

bb.ap:                                            ; preds = %bb.an
  %i.gj = getelementptr i8, ptr %i.gf, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit143

BIGNUM_DIGITS.exit143:                            ; preds = %bb.ap, %bb.ao, %bb.am
  %.0108 = phi i64 [ 4, %bb.am ], [ %i.ge, %bb.ao ], [ %i.ge, %bb.ap ] ; 3 uses
  %.0106 = phi ptr [ null, %bb.am ], [ %i.gi, %bb.ao ], [ %i.gk, %bb.ap ]
  %.0104 = phi i64 [ 0, %bb.am ], [ %i.fz, %bb.ao ], [ %i.fz, %bb.ap ]
  %.not113 = icmp eq ptr %3, null                 ; 2 uses
  br i1 %.not113, label %BIGNUM_DIGITS.exit146, label %bb.aq

bb.aq:                                            ; preds = %BIGNUM_DIGITS.exit143
  %i.gl = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !13
  %i.gn = trunc i64 %i.gm to i32
  %i.go = lshr i32 %i.gn, 13
  %i.gp = and i32 %i.go, 1
  %i.gq = tail call fastcc i64 @bignew_1(i64 noundef %i.gl, i64 noundef %.0102169, i32 noundef %i.gp) ; 3 uses
  %i.gr = inttoptr i64 %i.gq to ptr               ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !13
  %i.gt = and i64 %i.gs, 16384
  %.not.i144 = icmp eq i64 %i.gt, 0
  br i1 %.not.i144, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gu = getelementptr i8, ptr %i.gr, i64 16
  br label %BIGNUM_DIGITS.exit146

bb.as:                                            ; preds = %bb.aq
  %i.gv = getelementptr i8, ptr %i.gr, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit146

BIGNUM_DIGITS.exit146:                            ; preds = %bb.as, %bb.ar, %BIGNUM_DIGITS.exit143
  %.0107 = phi i64 [ 4, %BIGNUM_DIGITS.exit143 ], [ %i.gq, %bb.ar ], [ %i.gq, %bb.as ] ; 3 uses
  %.0105 = phi ptr [ null, %BIGNUM_DIGITS.exit143 ], [ %i.gu, %bb.ar ], [ %i.gw, %bb.as ]
  %.0103 = phi i64 [ 0, %BIGNUM_DIGITS.exit143 ], [ %.0102169, %bb.ar ], [ %.0102169, %bb.as ]
  tail call fastcc void @bary_divmod_normal(ptr noundef %.0106, i64 noundef %.0104, ptr noundef %.0105, i64 noundef range(i64 2, 1) %.0103, ptr noundef readonly %.0.i126, i64 noundef %.0101.lcssa, ptr noundef %.0.i124, i64 noundef %.0102169)
  br i1 %.not, label %bb.az, label %bb.at

bb.at:                                            ; preds = %BIGNUM_DIGITS.exit146
  %i.gx = inttoptr i64 %.0108 to ptr              ; 5 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !13 ; 3 uses
  %i.gz = and i64 %i.gy, 16384
  %.not.i.i147 = icmp eq i64 %i.gz, 0             ; 2 uses
  br i1 %.not.i.i147, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ha = lshr i64 %i.gy, 15
  %i.hb = and i64 %i.ha, 511
  %i.hc = getelementptr i8, ptr %i.gx, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.av:                                            ; preds = %bb.at
  %i.hd = getelementptr i8, ptr %i.gx, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !15
  %i.hf = getelementptr i8, ptr %i.gx, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.av, %bb.au
  %.0.i21.i = phi i64 [ %i.hb, %bb.au ], [ %i.he, %bb.av ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.hc, %bb.au ], [ %i.hg, %bb.av ]
  %i.hh = icmp eq i64 %.0.i21.i, 0
  br i1 %i.hh, label %bigtrunc.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %BIGNUM_DIGITS.exit.i
  %i.hi = add i64 %.0.i21.i, -1                   ; 2 uses
  %.not.i1482 = icmp eq i64 %i.hi, 0
  br i1 %.not.i1482, label %.critedge.i, label %.lr.ph4

.preheader.i:                                     ; preds = %.lr.ph4
  %i.hj = add i64 %i.hk, -1                       ; 2 uses
  %.not.i148 = icmp eq i64 %i.hj, 0
  br i1 %.not.i148, label %.critedge.i, label %.lr.ph4, !llvm.loop !150

.lr.ph4:                                          ; preds = %.preheader.i.preheader, %.preheader.i
  %i.hk = phi i64 [ %i.hj, %.preheader.i ], [ %i.hi, %.preheader.i.preheader ] ; 4 uses
  %.012.i3 = phi i64 [ %i.hk, %.preheader.i ], [ %.0.i21.i, %.preheader.i.preheader ]
  %i.hl = getelementptr [4 x i8], ptr %.0.i16.i, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !7
  %.not14.i = icmp eq i32 %i.hm, 0
  br i1 %.not14.i, label %.preheader.i, label %..critedge.i_crit_edge, !llvm.loop !150

..critedge.i_crit_edge:                           ; preds = %.lr.ph4
  br label %.critedge.i, !llvm.loop !150

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.012.i.lcssa = phi i64 [ %.012.i3, %..critedge.i_crit_edge ], [ %.0.i21.i, %.preheader.i.preheader ], [ %i.hk, %.preheader.i ] ; 2 uses
  br i1 %.not.i.i147, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.critedge.i
  %i.hn = getelementptr i8, ptr %i.gx, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit19.i

bb.ax:                                            ; preds = %.critedge.i
  %i.hp = lshr i64 %i.gy, 15
  %i.hq = and i64 %i.hp, 511
  br label %BIGNUM_LEN.exit19.i

BIGNUM_LEN.exit19.i:                              ; preds = %bb.ax, %bb.aw
  %.0.i18.i = phi i64 [ %i.hq, %bb.ax ], [ %i.ho, %bb.aw ]
  %i.hr = icmp ugt i64 %.0.i18.i, %.012.i.lcssa
  br i1 %i.hr, label %bb.ay, label %bigtrunc.exit

bb.ay:                                            ; preds = %BIGNUM_LEN.exit19.i
  tail call void @rb_big_resize(i64 noundef %.0108, i64 noundef %.012.i.lcssa)
  br label %bigtrunc.exit

bigtrunc.exit:                                    ; preds = %BIGNUM_DIGITS.exit.i, %BIGNUM_LEN.exit19.i, %bb.ay
  store volatile i64 %.0108, ptr %2, align 8, !tbaa !11
  br label %bb.az

bb.az:                                            ; preds = %bigtrunc.exit, %BIGNUM_DIGITS.exit146
  br i1 %.not113, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hs = inttoptr i64 %.0107 to ptr              ; 5 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !13 ; 3 uses
  %i.hu = and i64 %i.ht, 16384
  %.not.i.i149 = icmp eq i64 %i.hu, 0             ; 2 uses
  br i1 %.not.i.i149, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hv = lshr i64 %i.ht, 15
  %i.hw = and i64 %i.hv, 511
  %i.hx = getelementptr i8, ptr %i.hs, i64 16
  br label %BIGNUM_DIGITS.exit.i150

bb.bc:                                            ; preds = %bb.ba
  %i.hy = getelementptr i8, ptr %i.hs, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !15
  %i.ia = getelementptr i8, ptr %i.hs, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i150

BIGNUM_DIGITS.exit.i150:                          ; preds = %bb.bc, %bb.bb
  %.0.i21.i151 = phi i64 [ %i.hw, %bb.bb ], [ %i.hz, %bb.bc ] ; 4 uses
  %.0.i16.i152 = phi ptr [ %i.hx, %bb.bb ], [ %i.ib, %bb.bc ]
  %i.ic = icmp eq i64 %.0.i21.i151, 0
  br i1 %i.ic, label %bigtrunc.exit160, label %.preheader.i153.preheader

.preheader.i153.preheader:                        ; preds = %BIGNUM_DIGITS.exit.i150
  %i.id = add i64 %.0.i21.i151, -1                ; 2 uses
  %.not.i1556 = icmp eq i64 %i.id, 0
  br i1 %.not.i1556, label %.critedge.i157, label %.lr.ph8

.preheader.i153:                                  ; preds = %.lr.ph8
  %i.ie = add i64 %i.if, -1                       ; 2 uses
  %.not.i155 = icmp eq i64 %i.ie, 0
  br i1 %.not.i155, label %.critedge.i157, label %.lr.ph8, !llvm.loop !150

.lr.ph8:                                          ; preds = %.preheader.i153.preheader, %.preheader.i153
  %i.if = phi i64 [ %i.ie, %.preheader.i153 ], [ %i.id, %.preheader.i153.preheader ] ; 4 uses
  %.012.i1547 = phi i64 [ %i.if, %.preheader.i153 ], [ %.0.i21.i151, %.preheader.i153.preheader ]
  %i.ig = getelementptr [4 x i8], ptr %.0.i16.i152, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !7
  %.not14.i156 = icmp eq i32 %i.ih, 0
  br i1 %.not14.i156, label %.preheader.i153, label %..critedge.i157_crit_edge, !llvm.loop !150

..critedge.i157_crit_edge:                        ; preds = %.lr.ph8
  br label %.critedge.i157, !llvm.loop !150

.critedge.i157:                                   ; preds = %.preheader.i153, %..critedge.i157_crit_edge, %.preheader.i153.preheader
  %.012.i154.lcssa = phi i64 [ %.012.i1547, %..critedge.i157_crit_edge ], [ %.0.i21.i151, %.preheader.i153.preheader ], [ %i.if, %.preheader.i153 ] ; 2 uses
  br i1 %.not.i.i149, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge.i157
  %i.ii = getelementptr i8, ptr %i.hs, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit19.i158

bb.be:                                            ; preds = %.critedge.i157
  %i.ik = lshr i64 %i.ht, 15
  %i.il = and i64 %i.ik, 511
  br label %BIGNUM_LEN.exit19.i158

BIGNUM_LEN.exit19.i158:                           ; preds = %bb.be, %bb.bd
  %.0.i18.i159 = phi i64 [ %i.il, %bb.be ], [ %i.ij, %bb.bd ]
  %i.im = icmp ugt i64 %.0.i18.i159, %.012.i154.lcssa
  br i1 %i.im, label %bb.bf, label %bigtrunc.exit160

bb.bf:                                            ; preds = %BIGNUM_LEN.exit19.i158
  tail call void @rb_big_resize(i64 noundef %.0107, i64 noundef %.012.i154.lcssa)
  br label %bigtrunc.exit160

bigtrunc.exit160:                                 ; preds = %BIGNUM_DIGITS.exit.i150, %BIGNUM_LEN.exit19.i158, %bb.bf
  store volatile i64 %.0107, ptr %3, align 8, !tbaa !11
  br label %bb.bg

bb.bg:                                            ; preds = %bb.az, %bigtrunc.exit160, %bb.ai, %BIGNUM_DIGITS.exit140, %bb.ab, %bb.ac, %bb.p, %bb.q
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_divmod(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = trunc i64 %1 to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %1, 1                           ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  %.07.i = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 4 uses
  %i.f = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.g = tail call fastcc i64 @bignew_1(i64 noundef %i.f, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = and i64 %i.i, 16384
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 16
  store i64 %.07.i, ptr %i.k, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %i.l = and i64 %i.i, -16744449
  %i.m = or disjoint i64 %i.l, %.us-phi.i.i
  store i64 %i.m, ptr %i.h, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.h, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  store i64 %.07.i, ptr %i.o, align 4
  %.not1824.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi25.i.i = select i1 %.not1824.i.i, i64 1, i64 2
  %i.p = getelementptr i8, ptr %i.h, i64 16
  store i64 %.us-phi25.i.i, ptr %i.p, align 8, !tbaa !15
  br label %rb_uint2big.exit.i

rb_uint2big.exit.i:                               ; preds = %bb.d, %bb.c
  br i1 %i.e, label %rb_int2big.exit, label %bb.e

bb.e:                                             ; preds = %rb_uint2big.exit.i
  %i.q = load i64, ptr %i.h, align 8, !tbaa !13
  %i.r = and i64 %i.q, -8193
  store i64 %i.r, ptr %i.h, align 8, !tbaa !13
  br label %rb_int2big.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq i64 %1, 0
  %i.t = and i64 %1, 6
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.w = inttoptr i64 %1 to ptr
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13
  %i.y = and i64 %i.x, 31
  %i.z = icmp eq i64 %i.y, 10
  br i1 %i.z, label %rb_int2big.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aa = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef 3601) #23
  br label %bb.y

rb_int2big.exit:                                  ; preds = %bb.e, %rb_uint2big.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.g, %rb_uint2big.exit.i ], [ %i.g, %bb.e ]
  call fastcc void @bigdivmod(i64 noundef %0, i64 noundef %.0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
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
  %.not.i.i.i10 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i10, label %bb.i, label %bb.h

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
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !316

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

bignorm.exit:                                     ; preds = %bb.j, %rb_int2big.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %BIGNUM_DIGITS.exit.i.i, %bb.l, %bb.n, %bb.o
  %.0.i9 = phi i64 [ %i.ab, %rb_int2big.exit ], [ %i.ab, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ca, %bb.n ], [ %i.ab, %bb.o ], [ %i.by, %bb.l ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.j ]
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !11  ; 7 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = and i64 %i.cb, 7
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = or i1 %i.cc, %i.ce
  br i1 %i.cf, label %bignorm.exit30, label %rbimpl_RB_TYPE_P_fastpath.exit.i11

rbimpl_RB_TYPE_P_fastpath.exit.i11:               ; preds = %bignorm.exit
  %i.cg = inttoptr i64 %i.cb to ptr               ; 4 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !13 ; 4 uses
  %i.ci = and i64 %i.ch, 31
  %i.cj = icmp eq i64 %i.ci, 10
  br i1 %i.cj, label %bb.p, label %bignorm.exit30

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i11
  %i.ck = and i64 %i.ch, 16384
  %.not.i.i.i13 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i13, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = lshr i64 %i.ch, 15
  %i.cm = and i64 %i.cl, 511
  %i.cn = getelementptr i8, ptr %i.cg, i64 16
  br label %BIGNUM_DIGITS.exit.i.i14

bb.r:                                             ; preds = %bb.p
  %i.co = getelementptr i8, ptr %i.cg, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !15
  %i.cq = getelementptr i8, ptr %i.cg, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i14

BIGNUM_DIGITS.exit.i.i14:                         ; preds = %bb.r, %bb.q
  %.0.i28.i.i15 = phi i64 [ %i.cm, %bb.q ], [ %i.cp, %bb.r ] ; 3 uses
  %.0.i26.i.i16 = phi ptr [ %i.cn, %bb.q ], [ %i.cr, %bb.r ] ; 4 uses
  %cond31.i.i17 = icmp eq i64 %.0.i28.i.i15, 0
  br i1 %cond31.i.i17, label %bignorm.exit30, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %BIGNUM_DIGITS.exit.i.i14, %bb.s
  %indvar68 = phi i32 [ %indvar.next69, %bb.s ], [ 0, %BIGNUM_DIGITS.exit.i.i14 ] ; 2 uses
  %.02332.i.i19 = phi i64 [ %i.cw, %bb.s ], [ %.0.i28.i.i15, %BIGNUM_DIGITS.exit.i.i14 ] ; 5 uses
  %i.cs = getelementptr [4 x i8], ptr %.0.i26.i.i16, i64 %.02332.i.i19
  %i.ct = getelementptr i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.s, label %.critedge.i.i20

bb.s:                                             ; preds = %.lr.ph.i.i18
  %i.cw = add i64 %.02332.i.i19, -1               ; 2 uses
  %cond.i.i29 = icmp eq i64 %i.cw, 0
  %indvar.next69 = add i32 %indvar68, 1
  br i1 %cond.i.i29, label %bignorm.exit30, label %.lr.ph.i.i18, !llvm.loop !161

.critedge.i.i20:                                  ; preds = %.lr.ph.i.i18
  %i.cx = icmp ugt i64 %.02332.i.i19, 2
  br i1 %i.cx, label %bb.x, label %.lr.ph36.preheader.i.i21

.lr.ph36.preheader.i.i21:                         ; preds = %.critedge.i.i20
  %i.cy = trunc nuw i64 %.02332.i.i19 to i32      ; 3 uses
  %i.cz = trunc i64 %.0.i28.i.i15 to i32
  %i.da = sub i32 %indvar68, %i.cz
  %i.db = icmp ugt i32 %i.da, -4
  br i1 %i.db, label %.lr.ph36.i.i22.epil.preheader, label %.lr.ph36.i.i22

.lr.ph36.i.i22:                                   ; preds = %.lr.ph36.preheader.i.i21, %.lr.ph36.i.i22
  %.035.i.i23 = phi i32 [ %i.dc, %.lr.ph36.i.i22 ], [ %i.cy, %.lr.ph36.preheader.i.i21 ] ; 2 uses
  %niter78 = phi i32 [ %niter78.next.3, %.lr.ph36.i.i22 ], [ 0, %.lr.ph36.preheader.i.i21 ]
  %i.dc = add i32 %.035.i.i23, -4                 ; 3 uses
  %niter78.next.3 = add i32 %niter78, 4           ; 2 uses
  %niter78.ncmp.3 = icmp eq i32 %niter78.next.3, 0
  br i1 %niter78.ncmp.3, label %._crit_edge.i.i26.unr-lcssa, label %.lr.ph36.i.i22, !llvm.loop !162

._crit_edge.i.i26.unr-lcssa:                      ; preds = %.lr.ph36.i.i22
  %i.dd = add i32 %.035.i.i23, -3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr %.0.i26.i.i16, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw i64 %i.dh, 32
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr [4 x i8], ptr %.0.i26.i.i16, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = zext i32 %i.dl to i64
  %i.dn = or disjoint i64 %i.di, %i.dm
  br label %.lr.ph36.i.i22.epil.preheader

.lr.ph36.i.i22.epil.preheader:                    ; preds = %._crit_edge.i.i26.unr-lcssa, %.lr.ph36.preheader.i.i21
  %.035.i.i23.epil.init = phi i32 [ %i.cy, %.lr.ph36.preheader.i.i21 ], [ %i.dc, %._crit_edge.i.i26.unr-lcssa ]
  %.02134.i.i24.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i21 ], [ %i.dn, %._crit_edge.i.i26.unr-lcssa ]
  br label %.lr.ph36.i.i22.epil

.lr.ph36.i.i22.epil:                              ; preds = %.lr.ph36.i.i22.epil, %.lr.ph36.i.i22.epil.preheader
  %.035.i.i23.epil = phi i32 [ %i.do, %.lr.ph36.i.i22.epil ], [ %.035.i.i23.epil.init, %.lr.ph36.i.i22.epil.preheader ]
  %.02134.i.i24.epil = phi i64 [ %i.du, %.lr.ph36.i.i22.epil ], [ %.02134.i.i24.epil.init, %.lr.ph36.i.i22.epil.preheader ]
  %epil.iter72 = phi i32 [ %epil.iter72.next, %.lr.ph36.i.i22.epil ], [ 0, %.lr.ph36.i.i22.epil.preheader ]
  %i.do = add i32 %.035.i.i23.epil, -1            ; 2 uses
  %i.dp = shl i64 %.02134.i.i24.epil, 32          ; 2 uses
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr [4 x i8], ptr %.0.i26.i.i16, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.dt = zext i32 %i.ds to i64
  %i.du = or disjoint i64 %i.dp, %i.dt            ; 4 uses
  %epil.iter72.next = add i32 %epil.iter72, 1     ; 2 uses
  %epil.iter72.cmp.not = icmp eq i32 %epil.iter72.next, %i.cy
  br i1 %epil.iter72.cmp.not, label %._crit_edge.i.i26.epilog-lcssa, label %.lr.ph36.i.i22.epil, !llvm.loop !317

._crit_edge.i.i26.epilog-lcssa:                   ; preds = %.lr.ph36.i.i22.epil
  %i.dv = icmp ult i64 %i.dp, 4611686018427387904
  %i.dw = and i64 %i.ch, 8192
  %.not.i.i27 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i27, label %bb.v, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i26.epilog-lcssa
  br i1 %i.dv, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.dx = shl nuw nsw i64 %i.du, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %bignorm.exit30

bb.v:                                             ; preds = %._crit_edge.i.i26.epilog-lcssa
  %i.dz = icmp ult i64 %i.du, 4611686018427387905
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.neg.i.i28 = mul nsw i64 %i.du, -2
  %i.ea = or disjoint i64 %.neg.i.i28, 1
  br label %bignorm.exit30

bb.x:                                             ; preds = %bb.v, %bb.t, %.critedge.i.i20
  call void @rb_big_resize(i64 noundef %i.cb, i64 noundef %.02332.i.i19)
  br label %bignorm.exit30

bignorm.exit30:                                   ; preds = %bb.s, %bignorm.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i11, %BIGNUM_DIGITS.exit.i.i14, %bb.u, %bb.w, %bb.x
  %.0.i12 = phi i64 [ %i.cb, %bignorm.exit ], [ %i.cb, %rbimpl_RB_TYPE_P_fastpath.exit.i11 ], [ %i.ea, %bb.w ], [ %i.cb, %bb.x ], [ %i.dy, %bb.u ], [ 1, %BIGNUM_DIGITS.exit.i.i14 ], [ 1, %bb.s ]
  %i.eb = call i64 @rb_assoc_new(i64 noundef %.0.i9, i64 noundef %.0.i12) #23
  br label %bb.y

bb.y:                                             ; preds = %bignorm.exit30, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.08 = phi i64 [ %i.eb, %bignorm.exit30 ], [ %i.aa, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.08
}

; Function Attrs: nounwind sspstrong uwtable
define hidden double @rb_big_fdiv_double(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call fastcc double @big2dbl(i64 noundef %0) ; 5 uses
  %i.c = trunc i64 %1 to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %1, 1                           ; 3 uses
  %i.e = sitofp i64 %i.d to double
  %i.f = tail call double @llvm.fabs.f64(double %i.b) #29
  %i.g = fcmp oeq double %i.f, +inf
  br i1 %i.g, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.h = icmp sgt i64 %i.d, -1
  %.07.i = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 4 uses
  %i.i = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.j = tail call fastcc i64 @bignew_1(i64 noundef %i.i, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 7 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %i.m = and i64 %i.l, 16384
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store i64 %.07.i, ptr %i.n, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %i.o = and i64 %i.l, -16744449
  %i.p = or disjoint i64 %i.o, %.us-phi.i.i
  store i64 %i.p, ptr %i.k, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.k, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  store i64 %.07.i, ptr %i.r, align 4
  %.not1824.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi25.i.i = select i1 %.not1824.i.i, i64 1, i64 2
  %i.s = getelementptr i8, ptr %i.k, i64 16
  store i64 %.us-phi25.i.i, ptr %i.s, align 8, !tbaa !15
  br label %rb_uint2big.exit.i

rb_uint2big.exit.i:                               ; preds = %bb.e, %bb.d
  br i1 %i.h, label %rb_int2big.exit, label %bb.f

bb.f:                                             ; preds = %rb_uint2big.exit.i
  %i.t = load i64, ptr %i.k, align 8, !tbaa !13
  %i.u = and i64 %i.t, -8193
  store i64 %i.u, ptr %i.k, align 8, !tbaa !13
  br label %rb_int2big.exit

rb_int2big.exit:                                  ; preds = %rb_uint2big.exit.i, %bb.f
  %i.v = tail call fastcc double @big_fdiv_int(i64 noundef %0, i64 noundef %i.j)
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.w = icmp eq i64 %1, 0
  %i.x = and i64 %1, 6
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y                         ; 2 uses
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.g
  %i.aa = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
  %i.ac = and i64 %i.ab, 31
  switch i64 %i.ac, label %RB_FLOAT_TYPE_P.exit.thread32 [
    i64 10, label %bb.h
    i64 4, label %bb.k
  ]

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ad = tail call fastcc double @big_fdiv_int(i64 noundef %0, i64 noundef %1)
  br label %bb.y

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.g
  %i.ae = and i64 %1, 2
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %RB_FLOAT_TYPE_P.exit.thread32, label %bb.i

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.not.i.i = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.neg.i.i = ashr i64 %1, 63
  %i.af = add nsw i64 %.neg.i.i, 2
  %i.ag = and i64 %1, -4
  %i.ah = or i64 %i.af, %i.ag                     ; 2 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.ah, i64 range(i64 1, 0) %i.ah, i64 61)
  %i.aj = bitcast i64 %i.ai to double
  br label %rb_float_value_inline.exit

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ak = getelementptr i8, ptr %i.aa, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !265
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.j, %bb.k
  %.0.i23 = phi double [ %i.al, %bb.k ], [ %i.aj, %bb.j ] ; 3 uses
  %i.am = fcmp uno double %.0.i23, 0.000000e+00
  br i1 %i.am, label %bb.y, label %rb_float_value_inline.exit.thread

rb_float_value_inline.exit.thread:                ; preds = %rb_float_value_inline.exit
  %i.an = tail call double @llvm.fabs.f64(double %i.b) #29
  %i.ao = fcmp oeq double %i.an, +inf
  br i1 %i.ao, label %bb.l, label %bb.p

rb_float_value_inline.exit.thread.thread:         ; preds = %bb.i
  %i.ap = tail call double @llvm.fabs.f64(double %i.b) #29
  %i.aq = fcmp oeq double %i.ap, +inf
  br i1 %i.aq, label %.thread42, label %bb.p

.thread42:                                        ; preds = %rb_float_value_inline.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br label %big_fdiv_float.exit

bb.l:                                             ; preds = %rb_float_value_inline.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br i1 %i.z, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i24 = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i.i24, label %big_fdiv_float.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg.i.i.i = ashr i64 %1, 63
  %i.ar = add nsw i64 %.neg.i.i.i, 2
  %i.as = and i64 %1, -4
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.at, i64 range(i64 1, 0) %i.at, i64 61)
  %i.av = bitcast i64 %i.au to double
  br label %big_fdiv_float.exit

bb.o:                                             ; preds = %bb.l
  %i.aw = inttoptr i64 %1 to ptr
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !265
  br label %big_fdiv_float.exit

big_fdiv_float.exit:                              ; preds = %.thread42, %bb.m, %bb.n, %bb.o
  %.0.i.i = phi double [ %i.ay, %bb.o ], [ %i.av, %bb.n ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %.thread42 ]
  %i.az = call double @frexp(double noundef %.0.i.i, ptr noundef nonnull %i.a) #23
  %i.ba = tail call double @ldexp(double noundef %i.az, i32 noundef 53) #23, !tbaa !7
  %i.bb = tail call fastcc i64 @dbl2big(double noundef %i.ba)
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bd = add i32 %i.bc, -53
  %i.be = sext i32 %i.bd to i64
  %i.bf = tail call fastcc double @big_fdiv(i64 noundef %0, i64 noundef %i.bb, i64 noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.y

RB_FLOAT_TYPE_P.exit.thread32:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bg = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef 3617) #23
  %i.bh = tail call double @rb_num2dbl(i64 noundef %i.bg) #23
  br label %bb.y

bb.p:                                             ; preds = %rb_float_value_inline.exit.thread.thread, %rb_float_value_inline.exit.thread, %bb.b
  %.021 = phi double [ %i.e, %bb.b ], [ %.0.i23, %rb_float_value_inline.exit.thread ], [ 0.000000e+00, %rb_float_value_inline.exit.thread.thread ] ; 2 uses
  %i.bi = bitcast double %i.b to i64              ; 5 uses
  %cond.i = icmp eq i64 %i.bi, 3458764513820540928
  br i1 %cond.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = lshr i64 %i.bi, 60
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 7
  %i.bm = add nsw i32 %i.bl, -5
  %i.bn = icmp ult i32 %i.bm, -2
  br i1 %i.bn, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.bi, i64 range(i64 3458764513820540929, 3458764513820540928) %i.bi, i64 3)
  %i.bp = and i64 %i.bo, -4
  %i.bq = or disjoint i64 %i.bp, 2
  br label %rb_float_new_inline.exit

bb.s:                                             ; preds = %bb.q
  %i.br = icmp eq i64 %i.bi, 0
  br i1 %i.br, label %rb_float_new_inline.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bs = tail call i64 @rb_float_new_in_heap(double noundef %i.b) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.r, %bb.s, %bb.t
  %.0.i25 = phi i64 [ %i.bq, %bb.r ], [ %i.bs, %bb.t ], [ -9223372036854775806, %bb.s ]
  %i.bt = bitcast double %.021 to i64             ; 5 uses
  %cond.i26 = icmp eq i64 %i.bt, 3458764513820540928
  br i1 %cond.i26, label %bb.x, label %bb.u

bb.u:                                             ; preds = %rb_float_new_inline.exit
  %i.bu = lshr i64 %i.bt, 60
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = and i32 %i.bv, 7
  %i.bx = add nsw i32 %i.bw, -5
  %i.by = icmp ult i32 %i.bx, -2
  br i1 %i.by, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.bt, i64 range(i64 3458764513820540929, 3458764513820540928) %i.bt, i64 3)
  %i.ca = and i64 %i.bz, -4
  %i.cb = or disjoint i64 %i.ca, 2
  br label %rb_float_new_inline.exit28

bb.w:                                             ; preds = %bb.u
  %i.cc = icmp eq i64 %i.bt, 0
  br i1 %i.cc, label %rb_float_new_inline.exit28, label %bb.x

bb.x:                                             ; preds = %bb.w, %rb_float_new_inline.exit
  %i.cd = tail call i64 @rb_float_new_in_heap(double noundef %.021) #23
  br label %rb_float_new_inline.exit28

rb_float_new_inline.exit28:                       ; preds = %bb.v, %bb.w, %bb.x
  %.0.i27 = phi i64 [ %i.cb, %bb.v ], [ %i.cd, %bb.x ], [ -9223372036854775806, %bb.w ]
  %i.ce = tail call i64 @rb_flo_div_flo(i64 noundef %.0.i25, i64 noundef %.0.i27) #23
  %i.cf = tail call double @rb_num2dbl(i64 noundef %i.ce) #23
  br label %bb.y

bb.y:                                             ; preds = %rb_float_value_inline.exit, %rb_float_new_inline.exit28, %RB_FLOAT_TYPE_P.exit.thread32, %big_fdiv_float.exit, %bb.h, %rb_int2big.exit
  %.0 = phi double [ %i.v, %rb_int2big.exit ], [ %i.cf, %rb_float_new_inline.exit28 ], [ %i.ad, %bb.h ], [ %i.bh, %RB_FLOAT_TYPE_P.exit.thread32 ], [ %i.bf, %big_fdiv_float.exit ], [ %.0.i23, %rb_float_value_inline.exit ]
  ret double %.0
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_5
begin_hunk_6_@big_fdiv_int:bb.a
.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.012.i.lcssa = phi i64 [ %.012.i25, %..critedge.i_crit_edge ], [ %.0.i21.i, %.preheader.i.preheader ], [ %i.n, %.preheader.i ] ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit19.i

bb.e:                                             ; preds = %.critedge.i
  %i.s = lshr i64 %i.b, 15
  %i.t = and i64 %i.s, 511
  br label %BIGNUM_LEN.exit19.i

BIGNUM_LEN.exit19.i:                              ; preds = %bb.e, %bb.d
  %.0.i18.i = phi i64 [ %i.t, %bb.e ], [ %i.r, %bb.d ]
  %i.u = icmp ugt i64 %.0.i18.i, %.012.i.lcssa
  br i1 %i.u, label %bb.f, label %bigtrunc.exit

bb.f:                                             ; preds = %BIGNUM_LEN.exit19.i
  tail call void @rb_big_resize(i64 noundef %1, i64 noundef %.012.i.lcssa)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bigtrunc.exit

bigtrunc.exit:                                    ; preds = %BIGNUM_DIGITS.exit.i, %BIGNUM_LEN.exit19.i, %bb.f
  %i.v = phi i64 [ %i.b, %BIGNUM_DIGITS.exit.i ], [ %i.b, %BIGNUM_LEN.exit19.i ], [ %.pre, %bb.f ] ; 2 uses
  %i.w = and i64 %i.v, 16384
  %.not.i14 = icmp eq i64 %i.w, 0
  br i1 %.not.i14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bigtrunc.exit
  %i.x = lshr i64 %i.v, 15
  %i.y = and i64 %i.x, 511
  %i.z = getelementptr i8, ptr %i.a, i64 16
  br label %BIGNUM_DIGITS.exit

bb.h:                                             ; preds = %bigtrunc.exit
  %i.aa = getelementptr i8, ptr %i.a, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr i8, ptr %i.a, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.g, %bb.h
  %.0.i20 = phi i64 [ %i.y, %bb.g ], [ %i.ab, %bb.h ] ; 2 uses
  %.0.i16 = phi ptr [ %i.z, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = shl i64 %.0.i20, 5
  %i.af = getelementptr [4 x i8], ptr %.0.i16, i64 %.0.i20
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ah, i1 false)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = sub i64 %i.ae, %i.aj                    ; 2 uses
  %i.al = add i64 %i.ak, -64                      ; 5 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %.split, label %.split13

.split:                                           ; preds = %BIGNUM_DIGITS.exit
  %i.am = tail call fastcc double @big_fdiv(i64 noundef %0, i64 noundef %1, i64 noundef 0)
  br label %bb.i

.split13:                                         ; preds = %BIGNUM_DIGITS.exit
  %i.an = icmp slt i64 %i.al, 0
  %i.ao = sub i64 64, %i.ak
  %spec.select = select i1 %i.an, i64 %i.ao, i64 %i.al ; 2 uses
  %.lobit = lshr i64 %i.al, 63
  %spec.select22 = trunc nuw nsw i64 %.lobit to i32
  %i.ap = lshr i64 %spec.select, 5
  %i.aq = trunc i64 %spec.select to i32
  %i.ar = and i32 %i.aq, 31
  %i.as = tail call fastcc i64 @big_shift3(i64 noundef %1, i32 noundef %spec.select22, i64 noundef %i.ap, i32 noundef %i.ar)
  %i.at = tail call fastcc double @big_fdiv(i64 noundef %0, i64 noundef %i.as, i64 noundef %i.al)
  br label %bb.i

bb.i:                                             ; preds = %.split, %.split13
  %phi.call = phi double [ %i.am, %.split ], [ %i.at, %.split13 ]
  ret double %phi.call
}

declare double @rb_num2dbl(i64 noundef) local_unnamed_addr #5

declare i64 @rb_flo_div_flo(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_big_fdiv(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @rb_big_fdiv_double(i64 noundef %0, i64 noundef %1) ; 2 uses
  %i.b = bitcast double %i.a to i64               ; 5 uses
  %cond.i = icmp eq i64 %i.b, 3458764513820540928
  br i1 %cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.b, 60
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 7
  %i.f = add nsw i32 %i.e, -5
  %i.g = icmp ult i32 %i.f, -2
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.b, i64 range(i64 3458764513820540929, 3458764513820540928) %i.b, i64 3)
  %i.i = and i64 %i.h, -4
  %i.j = or disjoint i64 %i.i, 2
  br label %rb_float_new_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.b, 0
  br i1 %i.k, label %rb_float_new_inline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = tail call i64 @rb_float_new_in_heap(double noundef %i.a) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ -9223372036854775806, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_pow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bignorm.exit, %bb.a
  %.048 = phi i64 [ %1, %bb.a ], [ %.0.i69, %bignorm.exit ] ; 14 uses
  switch i64 %.048, label %bb.c [
    i64 1, label %rb_float_new_inline.exit.loopexit193
    i64 3, label %rb_float_new_inline.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = and i64 %.048, 3
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %.048, 0
  %i.d = and i64 %.048, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.d
  %i.g = inttoptr i64 %.048 to ptr                ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i64 %.048, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.neg.i.i = ashr i64 %.048, 63
  %i.k = add nsw i64 %.neg.i.i, 2
  %i.l = and i64 %.048, -4
  %i.m = or i64 %i.k, %i.l                        ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.m, i64 range(i64 1, 0) %i.m, i64 61)
  %i.o = bitcast i64 %i.n to double
  br label %rb_float_value_inline.exit

bb.g:                                             ; preds = %RB_FLOAT_TYPE_P.exit
  %i.p = getelementptr i8, ptr %i.g, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !265
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.e, %bb.f, %bb.g
  %.0.i60 = phi double [ %i.q, %bb.g ], [ %i.o, %bb.f ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %i.r = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13   ; 4 uses
  %i.t = and i64 %i.s, 8192
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.h, label %bb.bb

bb.h:                                             ; preds = %rb_float_value_inline.exit
  %i.u = and i64 %i.s, 16384
  %.not.i61 = icmp eq i64 %i.u, 0
  br i1 %.not.i61, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.r, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.bb, label %BIGNUM_DIGITS.exit

BIGNUM_LEN.exit.thread:                           ; preds = %bb.h
  %i.y = and i64 %i.s, 16744448
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.bb, label %BIGNUM_DIGITS.exit.thread

BIGNUM_DIGITS.exit:                               ; preds = %BIGNUM_LEN.exit
  %i.aa = getelementptr i8, ptr %i.r, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %BIGNUM_LEN.exit67, label %bb.j

BIGNUM_DIGITS.exit.thread:                        ; preds = %BIGNUM_LEN.exit.thread
  %i.ae = getelementptr i8, ptr %i.r, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread109, label %bb.j

.thread109:                                       ; preds = %BIGNUM_DIGITS.exit.thread
  %i.ah = lshr i64 %i.s, 15
  %i.ai = and i64 %i.ah, 511
  br label %BIGNUM_LEN.exit67

BIGNUM_LEN.exit67:                                ; preds = %BIGNUM_DIGITS.exit, %.thread109
  %.0.i66 = phi i64 [ %i.ai, %.thread109 ], [ %i.w, %BIGNUM_DIGITS.exit ]
  %i.aj = icmp eq i64 %.0.i66, 1
  br i1 %i.aj, label %bb.bb, label %bb.i

bb.i:                                             ; preds = %BIGNUM_LEN.exit67
  %i.ak = tail call fastcc i32 @bigzero_p(i64 noundef %0)
  %.not57 = icmp eq i32 %i.ak, 0
  br i1 %.not57, label %bb.j, label %bb.bb

bb.j:                                             ; preds = %BIGNUM_DIGITS.exit.thread, %bb.i, %BIGNUM_DIGITS.exit
  %i.al = tail call fastcc double @big2dbl(i64 noundef %0) ; 3 uses
  %i.am = tail call double @llvm.fabs.f64(double %i.al) #29
  %i.an = fcmp oeq double %i.am, +inf
  br i1 %i.an, label %bb.k, label %rb_big2dbl.exit

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.12) #23
  %i.ao = fcmp olt double %i.al, 0.000000e+00
  %..i = select i1 %i.ao, double -inf, double +inf
  br label %rb_big2dbl.exit

rb_big2dbl.exit:                                  ; preds = %bb.j, %bb.k
  %.0.i68 = phi double [ %..i, %bb.k ], [ %i.al, %bb.j ]
  %i.ap = fneg double %.0.i68
  %i.aq = tail call double @pow(double noundef %i.ap, double noundef %.0.i60) #23, !tbaa !7
  %i.ar = tail call i64 @rb_dbl_complex_new_polar_pi(double noundef %i.aq, double noundef %.0.i60) #23
  br label %rb_float_new_inline.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_FLOAT_TYPE_P.exit
  %i.as = inttoptr i64 %.048 to ptr               ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13 ; 4 uses
  %i.au = and i64 %i.at, 31
  %i.av = icmp eq i64 %i.au, 10
  br i1 %i.av, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aw = and i64 %i.at, 16384
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ax = lshr i64 %i.at, 15
  %i.ay = and i64 %i.ax, 511
  %i.az = getelementptr i8, ptr %i.as, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ba = getelementptr i8, ptr %i.as, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.bc = getelementptr i8, ptr %i.as, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.m, %bb.l
  %.0.i28.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.bb, %bb.m ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.az, %bb.l ], [ %i.bd, %bb.m ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.n
  %indvar = phi i32 [ %indvar.next, %bb.n ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.bi, %bb.n ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.be = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bi = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.bi, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bj = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.bj, label %bb.s, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.bk = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.bl = trunc i64 %.0.i28.i.i to i32
  %i.bm = sub i32 %indvar, %i.bl
  %i.bn = icmp ugt i32 %i.bm, -4
  br i1 %i.bn, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.bo, %.lr.ph36.i.i ], [ %i.bk, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.bo = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.bp = add i32 %.035.i.i, -3
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 32
  %i.bv = sext i32 %i.bo to i64
  %i.bw = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = zext i32 %i.bx to i64
  %i.bz = or disjoint i64 %i.bu, %i.by
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.bk, %.lr.ph36.preheader.i.i ], [ %i.bo, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.bz, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.ca, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.cg, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.ca = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.cb = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = zext i32 %i.ce to i64
  %i.cg = or disjoint i64 %i.cb, %i.cf            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.bk
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !318

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.ch = icmp ult i64 %i.cb, 4611686018427387904
  %i.ci = and i64 %i.at, 8192
  %.not.i.i70 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i70, label %bb.q, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.ch, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cj = shl nuw nsw i64 %i.cg, 1
  %i.ck = or disjoint i64 %i.cj, 1
  br label %bignorm.exit

bb.q:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.cl = icmp ult i64 %i.cg, 4611686018427387905
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.neg.i.i71 = mul nsw i64 %i.cg, -2
  %i.cm = or disjoint i64 %.neg.i.i71, 1
  br label %bignorm.exit

bb.s:                                             ; preds = %bb.q, %bb.o, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %.048, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.n, %BIGNUM_DIGITS.exit.i.i, %bb.p, %bb.r, %bb.s
  %.0.i69 = phi i64 [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.ck, %bb.p ], [ %i.cm, %bb.r ], [ %.048, %bb.s ], [ 1, %bb.n ] ; 2 uses
  %i.cn = trunc i64 %.0.i69 to i1
  br i1 %i.cn, label %bb.b, label %bb.t

bb.t:                                             ; preds = %bignorm.exit
  %i.co = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.co, ptr noundef nonnull @.str.14) #25
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cp = trunc i64 %.048 to i1
  br i1 %i.cp, label %bb.u, label %bb.ba

bb.u:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cq = ashr i64 %.048, 1                       ; 5 uses
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.cs = sub nsw i64 0, %i.cq                    ; 2 uses
  %i.ct = icmp samesign ult i64 %i.cs, 4611686018427387904
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = shl nuw nsw i64 %i.cs, 1
  %i.cv = or disjoint i64 %i.cu, 1
  br label %rb_long2num_inline.exit

bb.x:                                             ; preds = %bb.v
  %i.cw = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.cx = tail call fastcc i64 @bignew_1(i64 noundef %i.cw, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.cy = inttoptr i64 %i.cx to ptr               ; 5 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.da = and i64 %i.cz, 16384
  %.not.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr i8, ptr %i.cy, i64 16
  store i64 4611686018427387904, ptr %i.db, align 4
  %i.dc = and i64 %i.cz, -16744449
  %i.dd = or disjoint i64 %i.dc, 65536
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !13
  br label %rb_long2num_inline.exit

bb.z:                                             ; preds = %bb.x
  %i.de = getelementptr i8, ptr %i.cy, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15
  store i64 4611686018427387904, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %i.cy, i64 16
  store i64 2, ptr %i.dg, align 8, !tbaa !15
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.w, %bb.y, %bb.z
  %.0.i72 = phi i64 [ %i.cv, %bb.w ], [ %i.cx, %bb.y ], [ %i.cx, %bb.z ]
  %i.dh = tail call i64 @rb_big_pow(i64 noundef %0, i64 noundef %.0.i72) ; 6 uses
  %i.di = trunc i64 %i.dh to i1
  br i1 %i.di, label %rb_integer_type_p.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %rb_long2num_inline.exit
  %i.dj = icmp eq i64 %i.dh, 0
  %i.dk = and i64 %i.dh, 6
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = or i1 %i.dj, %i.dl
  br i1 %i.dm, label %rb_integer_type_p.exit.thread112, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.aa
  %i.dn = inttoptr i64 %i.dh to ptr
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !13
  %i.dp = and i64 %i.do, 31
  %i.dq = icmp eq i64 %i.dp, 10
  br i1 %i.dq, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread112

rb_integer_type_p.exit.thread:                    ; preds = %rb_long2num_inline.exit, %rb_integer_type_p.exit
  %i.dr = tail call i64 @rb_rational_raw(i64 noundef 3, i64 noundef %i.dh) #23
  br label %rb_float_new_inline.exit

rb_integer_type_p.exit.thread112:                 ; preds = %bb.aa, %rb_integer_type_p.exit
  %i.ds = tail call double @rb_num2dbl(i64 noundef %i.dh) #23
  %i.dt = fdiv double 1.000000e+00, %i.ds         ; 2 uses
  %i.du = bitcast double %i.dt to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.du, 3458764513820540928
  br i1 %cond.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %rb_integer_type_p.exit.thread112
  %i.dv = lshr i64 %i.du, 60
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = and i32 %i.dw, 7
  %i.dy = add nsw i32 %i.dx, -5
  %i.dz = icmp ult i32 %i.dy, -2
  br i1 %i.dz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.du, i64 range(i64 3458764513820540929, 3458764513820540928) %i.du, i64 3)
  %i.eb = and i64 %i.ea, -4
  %i.ec = or disjoint i64 %i.eb, 2
  br label %rb_float_new_inline.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ed = icmp eq i64 %i.du, 0
  br i1 %i.ed, label %rb_float_new_inline.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %rb_integer_type_p.exit.thread112
  %i.ee = tail call i64 @rb_float_new_in_heap(double noundef %i.dt) #23
  br label %rb_float_new_inline.exit

bb.af:                                            ; preds = %bb.u
  %i.ef = tail call i64 @rb_absint_numwords(i64 noundef %0, i64 noundef 1, ptr noundef null) ; 2 uses
  %i.eg = icmp ugt i64 %i.ef, 17179869184
  br i1 %i.eg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cq, i64 %i.ef) ; 2 uses
  %i.ei = extractvalue { i64, i1 } %i.eh, 1
  %i.ej = extractvalue { i64, i1 } %i.eh, 0
  %i.ek = icmp ugt i64 %i.ej, 17179869184
  %or.cond = or i1 %i.ei, %i.ek
  br i1 %or.cond, label %bb.ah, label %.preheader

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.el = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.el, ptr noundef nonnull @.str.14) #25
  unreachable

.preheader:                                       ; preds = %bb.ag, %bigtrunc.exit
  %.049133 = phi i64 [ %i.fl, %bigtrunc.exit ], [ 4611686018427387904, %bb.ag ] ; 3 uses
  %.050132 = phi i64 [ %.2, %bigtrunc.exit ], [ 0, %bb.ag ] ; 2 uses
  %.not54 = icmp eq i64 %.050132, 0
  br i1 %.not54, label %.thread114, label %bb.ai

bb.ai:                                            ; preds = %.preheader
  %i.em = tail call fastcc i64 @bigsq(i64 noundef %.050132) ; 3 uses
  %i.en = and i64 %.049133, %i.cq
  %.not55 = icmp eq i64 %i.en, 0
  br i1 %.not55, label %bigtrunc.exit, label %bb.aj

.thread114:                                       ; preds = %.preheader
  %i.eo = and i64 %.049133, %i.cq
  %.not55116 = icmp eq i64 %i.eo, 0
  %spec.select = select i1 %.not55116, i64 0, i64 %0
  br label %bigtrunc.exit

bb.aj:                                            ; preds = %bb.ai
  %.not56 = icmp eq i64 %i.em, 0
  br i1 %.not56, label %bigtrunc.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = tail call fastcc i64 @bigmul0(i64 noundef %i.em, i64 noundef %0) ; 5 uses
  %i.eq = inttoptr i64 %i.ep to ptr               ; 5 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !13 ; 3 uses
  %i.es = and i64 %i.er, 16384
  %.not.i.i75 = icmp eq i64 %i.es, 0              ; 2 uses
  br i1 %.not.i.i75, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = lshr i64 %i.er, 15
  %i.eu = and i64 %i.et, 511
  %i.ev = getelementptr i8, ptr %i.eq, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.ew = getelementptr i8, ptr %i.eq, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !15
  %i.ey = getelementptr i8, ptr %i.eq, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.am, %bb.al
  %.0.i21.i = phi i64 [ %i.eu, %bb.al ], [ %i.ex, %bb.am ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.ev, %bb.al ], [ %i.ez, %bb.am ]
  %i.fa = icmp eq i64 %.0.i21.i, 0
  br i1 %i.fa, label %bigtrunc.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %BIGNUM_DIGITS.exit.i
  %i.fb = add i64 %.0.i21.i, -1                   ; 2 uses
  %.not.i76185 = icmp eq i64 %i.fb, 0
  br i1 %.not.i76185, label %.critedge.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.fc = add i64 %i.fd, -1                       ; 2 uses
  %.not.i76 = icmp eq i64 %i.fc, 0
  br i1 %.not.i76, label %.critedge.i, label %.lr.ph, !llvm.loop !150

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.fd = phi i64 [ %i.fc, %.preheader.i ], [ %i.fb, %.preheader.i.preheader ] ; 4 uses
  %.012.i186 = phi i64 [ %i.fd, %.preheader.i ], [ %.0.i21.i, %.preheader.i.preheader ]
  %i.fe = getelementptr [4 x i8], ptr %.0.i16.i, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !7
  %.not14.i = icmp eq i32 %i.ff, 0
  br i1 %.not14.i, label %.preheader.i, label %..critedge.i_crit_edge, !llvm.loop !150

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !150

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.012.i.lcssa = phi i64 [ %.012.i186, %..critedge.i_crit_edge ], [ %.0.i21.i, %.preheader.i.preheader ], [ %i.fd, %.preheader.i ] ; 2 uses
  br i1 %.not.i.i75, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.critedge.i
  %i.fg = getelementptr i8, ptr %i.eq, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit19.i

bb.ao:                                            ; preds = %.critedge.i
  %i.fi = lshr i64 %i.er, 15
  %i.fj = and i64 %i.fi, 511
  br label %BIGNUM_LEN.exit19.i

BIGNUM_LEN.exit19.i:                              ; preds = %bb.ao, %bb.an
  %.0.i18.i = phi i64 [ %i.fj, %bb.ao ], [ %i.fh, %bb.an ]
  %i.fk = icmp ugt i64 %.0.i18.i, %.012.i.lcssa
  br i1 %i.fk, label %bb.ap, label %bigtrunc.exit

bb.ap:                                            ; preds = %BIGNUM_LEN.exit19.i
  tail call void @rb_big_resize(i64 noundef %i.ep, i64 noundef %.012.i.lcssa)
  br label %bigtrunc.exit

bigtrunc.exit:                                    ; preds = %.thread114, %bb.ap, %BIGNUM_LEN.exit19.i, %BIGNUM_DIGITS.exit.i, %bb.aj, %bb.ai
  %.2 = phi i64 [ %i.em, %bb.ai ], [ %i.ep, %bb.ap ], [ %0, %bb.aj ], [ %spec.select, %.thread114 ], [ %i.ep, %BIGNUM_DIGITS.exit.i ], [ %i.ep, %BIGNUM_LEN.exit19.i ] ; 8 uses
  %i.fl = lshr i64 %.049133, 1                    ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  br i1 %.not, label %bb.aq, label %.preheader, !llvm.loop !319

bb.aq:                                            ; preds = %bigtrunc.exit
  %i.fm = icmp eq i64 %.2, 0
  %i.fn = and i64 %.2, 7
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = or i1 %i.fm, %i.fo
  br i1 %i.fp, label %rb_float_new_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i77

rbimpl_RB_TYPE_P_fastpath.exit.i77:               ; preds = %bb.aq
  %i.fq = inttoptr i64 %.2 to ptr                 ; 4 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !13 ; 4 uses
  %i.fs = and i64 %i.fr, 31
  %i.ft = icmp eq i64 %i.fs, 10
  br i1 %i.ft, label %bb.ar, label %rb_float_new_inline.exit

bb.ar:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i77
  %i.fu = and i64 %i.fr, 16384
  %.not.i.i.i79 = icmp eq i64 %i.fu, 0
end_hunk_6
begin_hunk_7_@big_shift3:bb.a
  %reass.sub = sub i64 %i.de, %.017.i
  %i.fd = add i64 %reass.sub, -2                  ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.dn, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !7
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = or disjoint i64 %.014.i.1, %i.fg
  %i.fi = lshr i64 %i.fh, %i.dp
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = getelementptr [4 x i8], ptr %.0.i75, i64 %i.fd
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !7
  %i.fl = add nuw i64 %.017.i, 2                  ; 2 uses
  %exitcond.not.i79.1 = icmp eq i64 %i.fl, %i.de
  br i1 %exitcond.not.i79.1, label %bary_small_rshift.exit, label %scalar.ph, !llvm.loop !395

bary_small_rshift.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fm = and i64 %i.di, -8193
  %masksel.i.i = select i1 %.not91, i64 8192, i64 0
  %.sink.i.i = or disjoint i64 %i.fm, %masksel.i.i
  store i64 %.sink.i.i, ptr %i.dh, align 8, !tbaa !13
  br i1 %.not91, label %bary_zero_p.exit.thread87, label %bb.ac

bb.ac:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not.i74, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = lshr i64 %i.di, 15
  %i.fo = and i64 %i.fn, 511
  %i.fp = getelementptr i8, ptr %i.dh, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.fq = getelementptr i8, ptr %i.dh, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !15
  %i.fs = getelementptr i8, ptr %i.dh, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.ae, %bb.ad
  %.0.i8.i.i = phi i64 [ %i.fo, %bb.ad ], [ %i.fr, %bb.ae ] ; 5 uses
  %.0.i5.i.i = phi ptr [ %i.fp, %bb.ad ], [ %i.ft, %bb.ae ] ; 4 uses
  %.not27.i.i.i = icmp eq i64 %.0.i8.i.i, 0
  br i1 %.not27.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.af
  %.023.i.i.i = phi i64 [ %i.fw, %bb.af ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.fu = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i6.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.fw = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fw, %.0.i8.i.i
  br i1 %exitcond.not.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !55

bb.ag:                                            ; preds = %.lr.ph.i.i.i
  %i.fx = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.fy = sub i32 0, %i.fv
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !7
  %.124.i.i.i = add i64 %.023.i.i.i, 1            ; 4 uses
  %i.fz = icmp ult i64 %.124.i.i.i, %.0.i8.i.i
  br i1 %i.fz, label %.lr.ph26.i.i.i.preheader, label %bary_zero_p.exit.thread87

.lr.ph26.i.i.i.preheader:                         ; preds = %bb.ag
  %i.ga = xor i64 %.023.i.i.i, -1
  %i.gb = add i64 %.0.i8.i.i, %i.ga               ; 3 uses
  %min.iters.check124 = icmp ult i64 %i.gb, 8
  br i1 %min.iters.check124, label %.lr.ph26.i.i.i.preheader136, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph26.i.i.i.preheader
  %n.vec127 = and i64 %i.gb, -8                   ; 3 uses
  %i.gc = add i64 %.124.i.i.i, %n.vec127
  %i.gd = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.124.i.i.i
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph125
  %index129 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body128 ] ; 2 uses
  %i.ge = getelementptr [4 x i8], ptr %i.gd, i64 %index129 ; 3 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 16     ; 2 uses
  %wide.load130 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !7
  %wide.load131 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !7
  %i.gg = xor <4 x i32> %wide.load130, splat (i32 -1)
  %i.gh = xor <4 x i32> %wide.load131, splat (i32 -1)
  store <4 x i32> %i.gg, ptr %i.ge, align 4, !tbaa !7
  store <4 x i32> %i.gh, ptr %i.gf, align 4, !tbaa !7
  %index.next132 = add nuw i64 %index129, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.gi, label %middle.block133, label %vector.body128, !llvm.loop !396

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.gb, %n.vec127
  br i1 %cmp.n134, label %bary_zero_p.exit.thread87, label %.lr.ph26.i.i.i.preheader136

.lr.ph26.i.i.i.preheader136:                      ; preds = %.lr.ph26.i.i.i.preheader, %middle.block133
  %.125.i.i.i.ph = phi i64 [ %.124.i.i.i, %.lr.ph26.i.i.i.preheader ], [ %i.gc, %middle.block133 ]
  br label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %.lr.ph26.i.i.i.preheader136, %.lr.ph26.i.i.i
  %.125.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph26.i.i.i ], [ %.125.i.i.i.ph, %.lr.ph26.i.i.i.preheader136 ] ; 2 uses
  %i.gj = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.125.i.i.i ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !7
  %i.gl = xor i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !7
  %.1.i.i.i = add nuw i64 %.125.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %.1.i.i.i, %.0.i8.i.i
  br i1 %exitcond31.not.i.i.i, label %bary_zero_p.exit.thread87, label %.lr.ph26.i.i.i, !llvm.loop !397

bary_2comp.exit.i.i:                              ; preds = %bb.af, %BIGNUM_DIGITS.exit.i.i
  br i1 %.not.i74, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bary_2comp.exit.i.i
  %i.gm = getelementptr i8, ptr %i.dh, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i.i.i

bb.ai:                                            ; preds = %bary_2comp.exit.i.i
  %i.go = lshr i64 %i.di, 15
  %i.gp = and i64 %i.go, 511
  br label %BIGNUM_LEN.exit.i.i.i

BIGNUM_LEN.exit.i.i.i:                            ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi i64 [ %i.gp, %bb.ai ], [ %i.gn, %bb.ah ]
  %i.gq = add i64 %.0.i.i.i.i, 1
  tail call void @rb_big_resize(i64 noundef %i.dg, i64 noundef %i.gq)
  %i.gr = load i64, ptr %i.dh, align 8, !tbaa !13 ; 2 uses
  %i.gs = and i64 %i.gr, 16384
  %.not.i4.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i4.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %BIGNUM_LEN.exit.i.i.i
  %i.gt = getelementptr i8, ptr %i.dh, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !15
  %i.gv = getelementptr i8, ptr %i.dh, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !15
  br label %big_extend_carry.exit.i.i

bb.ak:                                            ; preds = %BIGNUM_LEN.exit.i.i.i
  %i.gx = getelementptr i8, ptr %i.dh, i64 16
  %i.gy = lshr i64 %i.gr, 15
  %i.gz = and i64 %i.gy, 511
  br label %big_extend_carry.exit.i.i

big_extend_carry.exit.i.i:                        ; preds = %bb.ak, %bb.aj
  %.0.i510.i.i.i = phi ptr [ %i.gx, %bb.ak ], [ %i.gu, %bb.aj ]
  %.0.i7.i.i.i = phi i64 [ %i.gz, %bb.ak ], [ %i.gw, %bb.aj ]
  %i.ha = getelementptr [4 x i8], ptr %.0.i510.i.i.i, i64 %.0.i7.i.i.i
  %i.hb = getelementptr i8, ptr %i.ha, i64 -4
  store i32 1, ptr %i.hb, align 4, !tbaa !7
  br label %bary_zero_p.exit.thread87

bary_zero_p.exit.thread87:                        ; preds = %.lr.ph26.i.i.i, %middle.block133, %big_extend_carry.exit.i.i, %bb.ag, %bary_small_rshift.exit, %bary_small_lshift.exit
  %.144 = phi i64 [ %i.t, %bary_small_lshift.exit ], [ %i.dg, %bary_small_rshift.exit ], [ %i.dg, %bb.ag ], [ %i.dg, %big_extend_carry.exit.i.i ], [ %i.dg, %middle.block133 ], [ %i.dg, %.lr.ph26.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !398
  %i.hc = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.hd = load volatile i64, ptr %i.hc, align 8, !tbaa !11 ; 0 uses
  br label %bary_zero_p.exit

bary_zero_p.exit:                                 ; preds = %bb.u, %.preheader.i, %BIGNUM_LEN.exit68, %bb.y, %._crit_edge105, %bary_zero_p.exit.thread87
  %.1 = phi i64 [ %.144, %bary_zero_p.exit.thread87 ], [ 1, %BIGNUM_LEN.exit68 ], [ 1, %._crit_edge105 ], [ %i.dd, %bb.y ], [ 1, %bb.u ], [ -1, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @big_shift2(i64 noundef %0, i32 noundef range(i32 0, 2) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [2 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bigzero_p.exit.thread, label %BIGNUM_DIGITS.exit

BIGNUM_LEN.exit.thread:                           ; preds = %bb.a
  %i.k = and i64 %i.f, 16744448                   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bigzero_p.exit.thread, label %BIGNUM_DIGITS.exit.thread

BIGNUM_DIGITS.exit:                               ; preds = %BIGNUM_LEN.exit
  %i.m = getelementptr i8, ptr %i.e, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %BIGNUM_LEN.exit31, label %bigzero_p.exit

BIGNUM_DIGITS.exit.thread:                        ; preds = %BIGNUM_LEN.exit.thread
  %i.q = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %BIGNUM_LEN.exit31.thread, label %bigzero_p.exit

BIGNUM_LEN.exit31:                                ; preds = %BIGNUM_DIGITS.exit
  %i.t = icmp eq i64 %i.i, 1
  br i1 %i.t, label %bigzero_p.exit.thread, label %.preheader.i.i.preheader

BIGNUM_LEN.exit31.thread:                         ; preds = %BIGNUM_DIGITS.exit.thread
  %i.u = icmp eq i64 %i.k, 32768
  br i1 %i.u, label %bigzero_p.exit.thread, label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %BIGNUM_LEN.exit31.thread
  %i.v = lshr i64 %i.f, 15
  %i.w = and i64 %i.v, 511                        ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bigzero_p.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %BIGNUM_LEN.exit31, %BIGNUM_LEN.exit.i
  %.0.i3.i54 = phi i64 [ %i.w, %BIGNUM_LEN.exit.i ], [ %i.i, %BIGNUM_LEN.exit31 ]
  %.0.i7.i53 = phi ptr [ %i.q, %BIGNUM_LEN.exit.i ], [ %i.n, %BIGNUM_LEN.exit31 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.b
  %.0.i4.i = phi i64 [ %i.y, %bb.b ], [ %.0.i3.i54, %.preheader.i.i.preheader ]
  %i.y = add i64 %.0.i4.i, -1                     ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %.0.i7.i53, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %.not.i5.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i5.i, label %bb.b, label %bigzero_p.exit

bb.b:                                             ; preds = %.preheader.i.i
  %.not7.i.i = icmp eq i64 %i.y, 0
  br i1 %.not7.i.i, label %bigzero_p.exit.thread, label %.preheader.i.i, !llvm.loop !158

bigzero_p.exit:                                   ; preds = %.preheader.i.i, %BIGNUM_DIGITS.exit.thread, %BIGNUM_DIGITS.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ab = tail call i64 @rb_to_int(i64 noundef %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !165
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  store volatile i64 %i.ab, ptr %i.ac, align 8, !tbaa !11
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %BIGNUM_LEN.exit.loopexit.i, label %bb.c

BIGNUM_LEN.exit.loopexit.i:                       ; preds = %bigzero_p.exit
  %i.af = ashr i64 %i.ad, 1                       ; 2 uses
  %.015.i = call i64 @llvm.abs.i64(i64 %i.af, i1 true)
  store i64 %.015.i, ptr %i.b, align 8
  %i.ag = icmp slt i64 %i.af, 0
  %.016.i = select i1 %i.ag, i32 -1, i32 1
  br label %rb_integer_pack.exit

bb.c:                                             ; preds = %bigzero_p.exit
  %i.ah = inttoptr i64 %i.ad to ptr               ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13 ; 3 uses
  %i.aj = and i64 %i.ai, 8192
  %.not.i32 = icmp eq i64 %i.aj, 0
  %i.ak = select i1 %.not.i32, i32 -1, i32 1      ; 2 uses
  %i.al = and i64 %i.ai, 16384
  %.not.i.i33 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i33, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr i8, ptr %i.ah, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.ao = getelementptr i8, ptr %i.ah, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15
  br label %rb_integer_pack.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr i8, ptr %i.ah, i64 16
  %i.ar = lshr i64 %i.ai, 15
  %i.as = and i64 %i.ar, 511
  br label %rb_integer_pack.exit

rb_integer_pack.exit:                             ; preds = %BIGNUM_LEN.exit.loopexit.i, %bb.d, %bb.e
  %.019.i = phi ptr [ %i.an, %bb.d ], [ %i.aq, %bb.e ], [ %i.b, %BIGNUM_LEN.exit.loopexit.i ] ; 7 uses
  %.018.i = phi i64 [ %i.ap, %bb.d ], [ %i.as, %bb.e ], [ 2, %BIGNUM_LEN.exit.loopexit.i ]
  %.117.i = phi i32 [ %i.ak, %bb.d ], [ %i.ak, %bb.e ], [ %.016.i, %BIGNUM_LEN.exit.loopexit.i ]
  %i.at = getelementptr [4 x i8], ptr %.019.i, i64 %.018.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %rb_integer_pack.exit
  %.0476.i = phi ptr [ %i.at, %rb_integer_pack.exit ], [ %i.av, %bb.g ] ; 4 uses
  %i.au = icmp ult ptr %.019.i, %.0476.i
  br i1 %i.au, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr i8, ptr %.0476.i, i64 -4  ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.f, label %.critedge.i, !llvm.loop !174

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.ay = icmp eq ptr %.019.i, %.0476.i           ; 2 uses
  %spec.select.i = select i1 %i.ay, i32 0, i32 %.117.i ; 2 uses
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 noundef 0, i64 noundef 16, i1 noundef false) #23
  br label %bary_pack.exit

bb.i:                                             ; preds = %.critedge.i
  %i.az = ptrtoint ptr %.0476.i to i64
  %i.ba = ptrtoint ptr %.019.i to i64
  %i.bb = sub i64 %i.az, %i.ba
  br label %.lr.ph605.i

.lr.ph605.i:                                      ; preds = %bb.i, %bb.j
  %.0289603.i = phi i64 [ %i.bg, %bb.j ], [ %i.bb, %bb.i ] ; 5 uses
  %i.bc = getelementptr i8, ptr %.019.i, i64 %.0289603.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.j, label %.critedge5.thread.i

bb.j:                                             ; preds = %.lr.ph605.i
  %i.bg = add i64 %.0289603.i, -1                 ; 2 uses
  %.not323.i = icmp eq i64 %i.bg, 0
  br i1 %.not323.i, label %.thread530.i, label %.lr.ph605.i, !llvm.loop !177

.critedge5.thread.i:                              ; preds = %.lr.ph605.i
  %.not324501.i = icmp ugt i64 %.0289603.i, 16
  br i1 %.not324501.i, label %ruby_nonempty_memcpy.exit364.i, label %bb.k

bb.k:                                             ; preds = %.critedge5.thread.i
  %i.bh = call ptr @__memcpy_chk(ptr noundef nonnull %i.d, ptr noundef nonnull readonly %.019.i, i64 noundef range(i64 1, 0) %.0289603.i, i64 noundef 16) #23, !alias.scope !399 ; 0 uses
  br label %.thread530.i

ruby_nonempty_memcpy.exit364.i:                   ; preds = %.critedge5.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(16) %.019.i, i64 noundef range(i64 1, 0) 16, i1 noundef false) #23
  %i.bi = shl nsw i32 %spec.select.i, 1
  br label %bary_pack.exit

.thread530.i:                                     ; preds = %bb.j, %bb.k
  %.0289559.i = phi i64 [ %.0289603.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %.0289559.i
  %i.bk = sub nuw nsw i64 16, %.0289559.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bj, i8 noundef 0, i64 noundef %i.bk, i1 noundef false) #23
  br label %bary_pack.exit

bary_pack.exit:                                   ; preds = %ruby_nonempty_memcpy.exit364.i, %bb.h, %.thread530.i
  %.4.i = phi i32 [ %i.bi, %ruby_nonempty_memcpy.exit364.i ], [ 0, %bb.h ], [ %spec.select.i, %.thread530.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = lshr i32 %.4.i, 31                      ; 2 uses
  %.022 = xor i32 %i.bl, %1
  %.not26 = icmp eq i32 %1, %i.bl
  %i.bm = add nsw i32 %.4.i, -2
  %i.bn = icmp ult i32 %i.bm, -3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 7
  %or.cond5 = select i1 %i.bn, i1 true, i1 %i.bq  ; 2 uses
  br i1 %.not26, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bary_pack.exit
  br i1 %or.cond5, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.br = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.br, ptr noundef nonnull @.str.41) #25
  unreachable

bb.n:                                             ; preds = %bary_pack.exit
  br i1 %or.cond5, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bt = and i64 %i.bs, 8192
  %.not = icmp eq i64 %i.bt, 0
  %i.bu = select i1 %.not, i64 -1, i64 1
  br label %bigzero_p.exit.thread

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.bv = load i64, ptr %i.d, align 16, !tbaa !11 ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 31
  %i.by = call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bv, i64 59)
  %i.bz = call fastcc i64 @big_shift3(i64 noundef %0, i32 noundef %.022, i64 noundef %i.by, i32 noundef %i.bx)
  br label %bigzero_p.exit.thread

bigzero_p.exit.thread:                            ; preds = %bb.b, %BIGNUM_LEN.exit.i, %BIGNUM_LEN.exit31.thread, %BIGNUM_LEN.exit.thread, %BIGNUM_LEN.exit, %BIGNUM_LEN.exit31, %bb.p, %bb.o
  %.0 = phi i64 [ %i.bu, %bb.o ], [ %i.bz, %bb.p ], [ 1, %BIGNUM_LEN.exit31.thread ], [ 1, %BIGNUM_LEN.exit31 ], [ 1, %BIGNUM_LEN.exit ], [ 1, %BIGNUM_LEN.exit.thread ], [ 1, %BIGNUM_LEN.exit.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_rshift(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.a
end_hunk_7
begin_hunk_8_@rb_big_aref2:bb.a
BIGNUM_DIGITS.exit88:                             ; preds = %bb.n, %bb.o
  %.0.i87 = phi ptr [ %i.au, %bb.n ], [ %i.aw, %bb.o ] ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %.0.i85, i64 %i.ai
  %i.ay = icmp ugt i64 %i.ap, 4611686018427387903
  br i1 %i.ay, label %bb.p, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.p:                                             ; preds = %BIGNUM_DIGITS.exit88
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.ap) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %BIGNUM_DIGITS.exit88
  %.not.i89 = icmp eq i64 %i.an, %i.ai
  br i1 %.not.i89, label %ruby_nonempty_memcpy.exit, label %bb.q

bb.q:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.az = shl nuw nsw i64 %i.ap, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i87, ptr noundef nonnull readonly align 1 %i.ax, i64 noundef range(i64 1, 0) %i.az, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.q
  %i.ba = load i32, ptr %.0.i87, align 4, !tbaa !7
  %i.bb = trunc nuw nsw i64 %i.ak to i32
  %notmask = shl nsw i32 -1, %i.bb
  %i.bc = xor i32 %notmask, -1
  %i.bd = and i32 %i.ba, %i.bc
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  %i.bf = icmp eq i64 %i.aq, 0
  %i.bg = and i64 %i.aq, 7
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = or i1 %i.bf, %i.bh
  br i1 %i.bi, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %ruby_nonempty_memcpy.exit
  %i.bj = load i64, ptr %i.ar, align 8, !tbaa !13 ; 4 uses
  %i.bk = and i64 %i.bj, 31
  %i.bl = icmp eq i64 %i.bk, 10
  br i1 %i.bl, label %bb.r, label %bignorm.exit

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bm = and i64 %i.bj, 16384
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = lshr i64 %i.bj, 15
  %i.bo = and i64 %i.bn, 511
  %i.bp = getelementptr i8, ptr %i.ar, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = getelementptr i8, ptr %i.ar, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.bs = getelementptr i8, ptr %i.ar, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.t, %bb.s
  %.0.i28.i.i = phi i64 [ %i.bo, %bb.s ], [ %i.br, %bb.t ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.bp, %bb.s ], [ %i.bt, %bb.t ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.u
  %indvar = phi i32 [ %indvar.next, %bb.u ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.by, %bb.u ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.bu = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %.critedge.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.by = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.by, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bz = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.bz, label %bb.z, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ca = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.cb = trunc i64 %.0.i28.i.i to i32
  %i.cc = sub i32 %indvar, %i.cb
  %i.cd = icmp ugt i32 %i.cc, -4
  br i1 %i.cd, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.ce, %.lr.ph36.i.i ], [ %i.ca, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.ce = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.cf = add i32 %.035.i.i, -3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw i64 %i.cj, 32
  %i.cl = sext i32 %i.ce to i64
  %i.cm = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = zext i32 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.ca, %.lr.ph36.preheader.i.i ], [ %i.ce, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.cp, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.cq, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.cw, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.cq = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.cr = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.cv = zext i32 %i.cu to i64
  %i.cw = or disjoint i64 %i.cr, %i.cv            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.ca
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !406

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.cx = icmp ult i64 %i.cr, 4611686018427387904
  %i.cy = and i64 %i.bj, 8192
  %.not.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.cx, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cz = shl nuw nsw i64 %i.cw, 1
  %i.da = or disjoint i64 %i.cz, 1
  br label %bignorm.exit

bb.x:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.db = icmp ult i64 %i.cw, 4611686018427387905
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.neg.i.i = mul nsw i64 %i.cw, -2
  %i.dc = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.z:                                             ; preds = %bb.x, %bb.v, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %i.aq, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.u, %ruby_nonempty_memcpy.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %BIGNUM_DIGITS.exit.i.i, %bb.w, %bb.y, %bb.z
  %.0.i91 = phi i64 [ %i.aq, %ruby_nonempty_memcpy.exit ], [ %i.aq, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.dc, %bb.y ], [ %i.aq, %bb.z ], [ %i.da, %bb.w ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.u ] ; 2 uses
  %.not75 = icmp eq i64 %i.ak, 0
  br i1 %.not75, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bignorm.exit
  %i.dd = shl nuw nsw i64 %i.ak, 1
  %i.de = or disjoint i64 %i.dd, 1
  %i.df = tail call i64 @rb_int_rshift(i64 noundef %.0.i91, i64 noundef %i.de) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.l, %bignorm.exit, %bb.aa
  %.067.shrunk = phi i1 [ %i.be, %bignorm.exit ], [ %i.be, %bb.aa ], [ false, %bb.l ] ; 2 uses
  %.166 = phi i64 [ %spec.select, %bignorm.exit ], [ %spec.select, %bb.aa ], [ 0, %bb.l ]
  %.064 = phi i64 [ %spec.store.select, %bignorm.exit ], [ %spec.store.select, %bb.aa ], [ 0, %bb.l ]
  %.063 = phi i64 [ %i.ai, %bignorm.exit ], [ %i.ai, %bb.aa ], [ 0, %bb.l ] ; 2 uses
  %.1 = phi i64 [ %.0.i91, %bignorm.exit ], [ %i.df, %bb.aa ], [ 1, %bb.l ] ; 2 uses
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !13
  %i.dh = and i64 %i.dg, 8192
  %.not.i93 = icmp eq i64 %i.dh, 0
  br i1 %.not.i93, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.di = sub i64 %.0.i, %i.q                     ; 4 uses
  %i.dj = icmp ult i64 %i.di, 4611686018427387904
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dk = shl nuw nsw i64 %i.di, 1
  %i.dl = or disjoint i64 %i.dk, 1
  br label %rb_ull2num_inline.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dm = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.dn = tail call fastcc i64 @bignew_1(i64 noundef %i.dm, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.do = inttoptr i64 %i.dn to ptr               ; 5 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !13 ; 2 uses
  %i.dq = and i64 %i.dp, 16384
  %.not.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr i8, ptr %i.do, i64 16
  store i64 %i.di, ptr %i.dr, align 4
  %i.ds = and i64 %i.dp, -16744449
  %i.dt = or disjoint i64 %i.ds, 65536
  store i64 %i.dt, ptr %i.do, align 8, !tbaa !13
  br label %rb_ull2num_inline.exit

bb.ag:                                            ; preds = %bb.ae
  %i.du = getelementptr i8, ptr %i.do, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !15
  store i64 %i.di, ptr %i.dv, align 4
  %i.dw = getelementptr i8, ptr %i.do, i64 16
  store i64 2, ptr %i.dw, align 8, !tbaa !15
  br label %rb_ull2num_inline.exit

rb_ull2num_inline.exit:                           ; preds = %bb.ad, %bb.af, %bb.ag
  %.0.i94 = phi i64 [ %i.dl, %bb.ad ], [ %i.dn, %bb.af ], [ %i.dn, %bb.ag ]
  %i.dx = tail call i64 @rb_int_lshift(i64 noundef 3, i64 noundef %.0.i94) #23
  %i.dy = tail call i64 @rb_int_minus(i64 noundef %i.dx, i64 noundef 3) #23 ; 2 uses
  %i.dz = tail call i64 @rb_int_xor(i64 noundef %.1, i64 noundef %i.dy) #23 ; 2 uses
  %i.ea = icmp ne i64 %.063, 0
  %i.eb = and i1 %.067.shrunk, %i.ea
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %rb_ull2num_inline.exit
  %.168.lcssa = phi i1 [ %.067.shrunk, %rb_ull2num_inline.exit ], [ %.not77, %.lr.ph ]
  br i1 %.168.lcssa, label %bb.ah, label %bb.ai

.lr.ph:                                           ; preds = %rb_ull2num_inline.exit, %.lr.ph
  %.062105 = phi i64 [ %i.ee, %.lr.ph ], [ 0, %rb_ull2num_inline.exit ] ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %.0.i85, i64 %.062105
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %.not77 = icmp eq i32 %i.ed, 0                  ; 2 uses
  %i.ee = add nuw nsw i64 %.062105, 1             ; 2 uses
  %i.ef = icmp samesign ult i64 %i.ee, %.063
  %i.eg = select i1 %.not77, i1 %i.ef, i1 false
  br i1 %i.eg, label %.lr.ph, label %._crit_edge, !llvm.loop !407

bb.ah:                                            ; preds = %._crit_edge
  %i.eh = tail call i64 @rb_int_plus(i64 noundef %i.dz, i64 noundef 3) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
  %.2 = phi i64 [ %i.eh, %bb.ah ], [ %i.dz, %._crit_edge ]
  %i.ei = tail call i64 @rb_int_and(i64 noundef %.2, i64 noundef %i.dy) #23
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ab
  %i.ej = sub i64 %.166, %.064                    ; 4 uses
  %i.ek = icmp ult i64 %i.ej, 4611686018427387904
  br i1 %i.ek, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = or disjoint i64 %i.el, 1
  br label %rb_ull2num_inline.exit97

bb.al:                                            ; preds = %bb.aj
  %i.en = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.eo = tail call fastcc i64 @bignew_1(i64 noundef %i.en, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.ep = inttoptr i64 %i.eo to ptr               ; 5 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !13 ; 2 uses
  %i.er = and i64 %i.eq, 16384
  %.not.i.i.i.i95 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i.i95, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = getelementptr i8, ptr %i.ep, i64 16
  store i64 %i.ej, ptr %i.es, align 4
  %i.et = and i64 %i.eq, -16744449
  %i.eu = or disjoint i64 %i.et, 65536
  store i64 %i.eu, ptr %i.ep, align 8, !tbaa !13
  br label %rb_ull2num_inline.exit97

bb.an:                                            ; preds = %bb.al
  %i.ev = getelementptr i8, ptr %i.ep, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !15
  store i64 %i.ej, ptr %i.ew, align 4
  %i.ex = getelementptr i8, ptr %i.ep, i64 16
  store i64 2, ptr %i.ex, align 8, !tbaa !15
  br label %rb_ull2num_inline.exit97

rb_ull2num_inline.exit97:                         ; preds = %bb.ak, %bb.am, %bb.an
  %.0.i96 = phi i64 [ %i.em, %bb.ak ], [ %i.eo, %bb.am ], [ %i.eo, %bb.an ]
  %i.ey = tail call i64 @rb_int_lshift(i64 noundef 3, i64 noundef %.0.i96) #23
  %i.ez = tail call i64 @rb_int_minus(i64 noundef %i.ey, i64 noundef 3) #23
  %i.fa = tail call i64 @rb_int_and(i64 noundef %.1, i64 noundef %i.ez) #23
  br label %bb.ao

bb.ao:                                            ; preds = %rb_ull2num_inline.exit97, %bb.ai
  %.3 = phi i64 [ %i.ei, %bb.ai ], [ %i.fa, %rb_ull2num_inline.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !408
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.fc = load volatile i64, ptr %i.fb, align 8, !tbaa !11 ; 0 uses
  %.not76 = icmp eq i64 %i.q, 0
  br i1 %.not76, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = add i64 %i.q, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.fd, -1
  br i1 %or.cond.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fe = shl nsw i64 %i.q, 1
  %i.ff = or disjoint i64 %i.fe, 1
  br label %rb_ll2num_inline.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fg = icmp sgt i64 %i.q, -1
  %.07.i.i.i = call i64 @llvm.abs.i64(i64 range(i64 1, 0) %i.q, i1 false) ; 2 uses
  %i.fh = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.fi = call fastcc i64 @bignew_1(i64 noundef %i.fh, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.fj = inttoptr i64 %i.fi to ptr               ; 7 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !13 ; 2 uses
  %i.fl = and i64 %i.fk, 16384
  %.not.i.i.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fm = getelementptr i8, ptr %i.fj, i64 16
  store i64 %.07.i.i.i, ptr %i.fm, align 4
  %i.fn = and i64 %i.fk, -16744449
  %i.fo = or disjoint i64 %i.fn, 65536
  store i64 %i.fo, ptr %i.fj, align 8, !tbaa !13
  br label %rb_ull2big.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fp = getelementptr i8, ptr %i.fj, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !15
  store i64 %.07.i.i.i, ptr %i.fq, align 4
  %i.fr = getelementptr i8, ptr %i.fj, i64 16
  store i64 2, ptr %i.fr, align 8, !tbaa !15
  br label %rb_ull2big.exit.i.i.i

rb_ull2big.exit.i.i.i:                            ; preds = %bb.at, %bb.as
  br i1 %i.fg, label %rb_ll2num_inline.exit, label %bb.au

bb.au:                                            ; preds = %rb_ull2big.exit.i.i.i
  %i.fs = load i64, ptr %i.fj, align 8, !tbaa !13
  %i.ft = and i64 %i.fs, -8193
  store i64 %i.ft, ptr %i.fj, align 8, !tbaa !13
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.aq, %rb_ull2big.exit.i.i.i, %bb.au
  %.0.i98 = phi i64 [ %i.ff, %bb.aq ], [ %i.fi, %rb_ull2big.exit.i.i.i ], [ %i.fi, %bb.au ]
  %i.fu = call i64 @rb_int_lshift(i64 noundef %.3, i64 noundef %.0.i98) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.ao, %rb_ll2num_inline.exit, %bb.k, %bb.j
  %.0 = phi i64 [ %i.ac, %bb.j ], [ 1, %bb.k ], [ %i.fu, %rb_ll2num_inline.exit ], [ %.3, %bb.ao ]
  ret i64 %.0
}

declare i64 @rb_int_plus(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_rshift(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_minus(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_lshift(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_xor(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_and(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 1, 0) i64 @rb_big_hash(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = lshr i64 %i.b, 15
  %i.j = and i64 %i.i, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i8 = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  %.0.i5 = phi i64 [ %i.j, %bb.c ], [ %i.g, %bb.b ]
  %i.k = shl i64 %.0.i5, 2
  %i.l = tail call i64 @rb_memhash(ptr noundef %.0.i8, i64 noundef %i.k) #23 ; 2 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !13
  %i.n = lshr i64 %i.m, 13
  %.lobit = and i64 %i.n, 1
  %.masked = and i64 %i.l, 4611686018427387903
  %i.o = xor i64 %.lobit, %.masked
  %i.p = icmp slt i64 %i.l, 0
  %masksel.i = select i1 %i.p, i64 -4611686018427387904, i64 0
  %.0.i6 = or disjoint i64 %i.o, %masksel.i
  %i.q = shl nsw i64 %.0.i6, 1
  %i.r = or disjoint i64 %i.q, 1
  ret i64 %i.r
}

declare i64 @rb_memhash(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_big_abs(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_big_clone(i64 noundef %0) ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %.sink.i = or i64 %i.f, 8192
  store i64 %.sink.i, ptr %i.e, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.d, %bb.b ], [ %0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_big_sign(i64 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 13
  %i.e = and i32 %i.d, 1
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_big_size(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = and i64 %i.c, 16384
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.l, label %BIGNUM_LEN.exit11

BIGNUM_LEN.exit.thread:                           ; preds = %bb.a
  %i.h = and i64 %i.c, 16744448
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.l, label %BIGNUM_LEN.exit11.thread

BIGNUM_LEN.exit11:                                ; preds = %BIGNUM_LEN.exit
  %i.j = getelementptr i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %i.f
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

BIGNUM_LEN.exit11.thread:                         ; preds = %BIGNUM_LEN.exit.thread
  %i.o = lshr i64 %i.c, 15
  %i.p = and i64 %i.o, 511
  %i.q = getelementptr [4 x i8], ptr %i.b, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %.not27 = icmp eq i32 %i.s, 0
  br i1 %.not27, label %bb.c, label %.thread28

bb.b:                                             ; preds = %BIGNUM_LEN.exit11
  %i.t = shl i64 %i.f, 2
  br label %BIGNUM_LEN.exit20

.thread28:                                        ; preds = %BIGNUM_LEN.exit11.thread
  %i.u = lshr i64 %i.c, 13
  %i.v = and i64 %i.u, 2044
  br label %BIGNUM_LEN.exit20

BIGNUM_LEN.exit20:                                ; preds = %bb.b, %.thread28
  %i.w = phi i32 [ %i.s, %.thread28 ], [ %i.n, %bb.b ]
  %i.x = phi i64 [ %i.v, %.thread28 ], [ %i.t, %bb.b ]
  %i.y = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.z = lshr i32 %i.y, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = sub i64 %i.x, %i.aa
  br label %bb.l

bb.c:                                             ; preds = %BIGNUM_LEN.exit11.thread, %BIGNUM_LEN.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ac = tail call i64 @rb_to_int(i64 noundef %0) #23 ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = ashr i64 %i.ac, 1
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.ae, i1 true)
  store i64 %spec.select.i, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ag = inttoptr i64 %i.ac to ptr               ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ai = and i64 %i.ah, 16384
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %i.ag, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr i8, ptr %i.ag, i64 16
  %i.ao = lshr i64 %i.ah, 15
  %i.ap = and i64 %i.ao, 511
  br label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i41.i = phi ptr [ %i.an, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  %.0.i39.i = phi i64 [ %i.ap, %bb.g ], [ %i.am, %bb.f ]
  %i.aq = getelementptr [4 x i8], ptr %.0.i41.i, i64 %.0.i39.i
  br label %bb.h

bb.h:                                             ; preds = %BIGNUM_LEN.exit.i, %bb.d
  %.032.i = phi ptr [ %i.a, %bb.d ], [ %.0.i41.i, %BIGNUM_LEN.exit.i ] ; 3 uses
  %.030.i = phi ptr [ %i.af, %bb.d ], [ %i.aq, %BIGNUM_LEN.exit.i ]
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.131.i = phi ptr [ %.030.i, %bb.h ], [ %i.as, %bb.j ] ; 5 uses
  %i.ar = icmp ult ptr %.032.i, %.131.i
  br i1 %i.ar, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %.131.i, i64 -4   ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %.critedge.i, !llvm.loop !167

.critedge.i:                                      ; preds = %bb.j, %bb.i
  %i.av = icmp eq ptr %.032.i, %.131.i
  br i1 %i.av, label %rb_absint_size.exit, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.aw = getelementptr i8, ptr %.131.i, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ax, i1 false)
  %i.az = ptrtoint ptr %.131.i to i64
  %i.ba = ptrtoint ptr %.032.i to i64
  %i.bb = lshr i32 %i.ay, 3
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %i.ba, %i.bc
  %i.be = sub i64 %i.az, %i.bd
  br label %rb_absint_size.exit

rb_absint_size.exit:                              ; preds = %.critedge.i, %bb.k
  %.029.i = phi i64 [ %i.be, %bb.k ], [ 0, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.l

bb.l:                                             ; preds = %BIGNUM_LEN.exit.thread, %BIGNUM_LEN.exit20, %rb_absint_size.exit, %BIGNUM_LEN.exit
  %i.bf = phi i64 [ 0, %BIGNUM_LEN.exit ], [ %i.ab, %BIGNUM_LEN.exit20 ], [ %.029.i, %rb_absint_size.exit ], [ 0, %BIGNUM_LEN.exit.thread ]
  ret i64 %i.bf
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_big_size_m(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_big_size(i64 noundef %0) ; 4 uses
  %i.b = icmp ult i64 %i.a, 4611686018427387904
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 1
  %i.d = or disjoint i64 %i.c, 1
  br label %rb_ull2num_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.f = tail call fastcc i64 @bignew_1(i64 noundef %i.e, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = and i64 %i.h, 16384
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %i.a, ptr %i.j, align 4
  %i.k = and i64 %i.h, -16744449
  %i.l = or disjoint i64 %i.k, 65536
  store i64 %i.l, ptr %i.g, align 8, !tbaa !13
  br label %rb_ull2num_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  store i64 %i.a, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.g, i64 16
  store i64 2, ptr %i.o, align 8, !tbaa !15
  br label %rb_ull2num_inline.exit

rb_ull2num_inline.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_big_bit_length(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 6 uses
  %i.b = alloca [2 x i32], align 8                ; 6 uses
  %i.c = alloca [3 x i32], align 4                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.d = tail call i64 @rb_to_int(i64 noundef %0) #23 ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = ashr i64 %i.d, 1
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  store i64 %spec.select.i, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = and i64 %i.i, 16384
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.h, i64 16
  %i.p = lshr i64 %i.i, 15
  %i.q = and i64 %i.p, 511
  br label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i41.i = phi ptr [ %i.o, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %.0.i39.i = phi i64 [ %i.q, %bb.e ], [ %i.n, %bb.d ]
  %i.r = getelementptr [4 x i8], ptr %.0.i41.i, i64 %.0.i39.i
  br label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit.i, %bb.b
  %.032.i = phi ptr [ %i.b, %bb.b ], [ %.0.i41.i, %BIGNUM_LEN.exit.i ] ; 3 uses
  %.030.i = phi ptr [ %i.g, %bb.b ], [ %i.r, %BIGNUM_LEN.exit.i ]
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.131.i = phi ptr [ %.030.i, %bb.f ], [ %i.t, %bb.h ] ; 5 uses
  %i.s = icmp ult ptr %.032.i, %.131.i
  br i1 %i.s, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %.131.i, i64 -4    ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %.critedge.i, !llvm.loop !167

.critedge.i:                                      ; preds = %bb.h, %bb.g
  %i.w = icmp eq ptr %.032.i, %.131.i
  br i1 %i.w, label %rb_absint_size.exit.thread, label %rb_absint_size.exit

rb_absint_size.exit.thread:                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %rb_ull2num_inline.exit

rb_absint_size.exit:                              ; preds = %.critedge.i
  %i.x = getelementptr i8, ptr %.131.i, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.y, i1 false) ; 2 uses
  %i.aa = and i32 %i.z, 7                         ; 5 uses
  %i.ab = ptrtoint ptr %.131.i to i64
  %i.ac = ptrtoint ptr %.032.i to i64
  %i.ad = lshr i32 %i.z, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %i.ac, %i.ae
  %i.ag = sub i64 %i.ab, %i.af                    ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %rb_ull2num_inline.exit, label %bb.i

bb.i:                                             ; preds = %rb_absint_size.exit
  %i.ai = inttoptr i64 %0 to ptr
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.ak = and i64 %i.aj, 8192
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.al = call i64 @rb_to_int(i64 noundef %0) #23 ; 3 uses
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = ashr i64 %i.al, 1
  %spec.select.i13 = call i64 @llvm.abs.i64(i64 %i.an, i1 true)
  store i64 %spec.select.i13, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ap = inttoptr i64 %i.al to ptr               ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13 ; 2 uses
  %i.ar = and i64 %i.aq, 16384
  %.not.i.i7 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %i.ap, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr i8, ptr %i.ap, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i8

bb.n:                                             ; preds = %bb.l
  %i.aw = getelementptr i8, ptr %i.ap, i64 16
  %i.ax = lshr i64 %i.aq, 15
  %i.ay = and i64 %i.ax, 511
  br label %BIGNUM_LEN.exit.i8

BIGNUM_LEN.exit.i8:                               ; preds = %bb.n, %bb.m
  %.0.i41.i9 = phi ptr [ %i.aw, %bb.n ], [ %i.at, %bb.m ] ; 2 uses
  %.0.i39.i10 = phi i64 [ %i.ay, %bb.n ], [ %i.av, %bb.m ]
  %i.az = getelementptr [4 x i8], ptr %.0.i41.i9, i64 %.0.i39.i10
  br label %bb.o

bb.o:                                             ; preds = %BIGNUM_LEN.exit.i8, %bb.k
  %.034.i = phi ptr [ %i.a, %bb.k ], [ %.0.i41.i9, %BIGNUM_LEN.exit.i8 ] ; 3 uses
  %.032.i11 = phi ptr [ %i.ao, %bb.k ], [ %i.az, %BIGNUM_LEN.exit.i8 ]
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.133.i = phi ptr [ %.032.i11, %bb.o ], [ %i.bb, %bb.q ] ; 4 uses
  %i.ba = icmp ult ptr %.034.i, %.133.i
  br i1 %i.ba, label %bb.q, label %.critedge2.i

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr i8, ptr %.133.i, i64 -4   ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %.lr.ph.i, !llvm.loop !172

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.13545.i = phi ptr [ %i.bg, %bb.r ], [ %.034.i, %bb.q ] ; 3 uses
  %i.be = load i32, ptr %.13545.i, align 4, !tbaa !7
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr i8, ptr %.13545.i, i64 4  ; 3 uses
  %i.bh = icmp ult ptr %i.bg, %.133.i
  br i1 %i.bh, label %.lr.ph.i, label %.critedge2.i, !llvm.loop !173

.critedge2.i:                                     ; preds = %bb.p, %bb.r, %.lr.ph.i
  %.135.lcssa.i = phi ptr [ %.13545.i, %.lr.ph.i ], [ %i.bg, %bb.r ], [ %.034.i, %bb.p ] ; 2 uses
  %i.bi = getelementptr i8, ptr %.133.i, i64 -4
  %.not.i12 = icmp eq ptr %.135.lcssa.i, %i.bi
  br i1 %.not.i12, label %rb_absint_singlebit_p.exit, label %rb_absint_singlebit_p.exit.thread

rb_absint_singlebit_p.exit.thread:                ; preds = %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.v

rb_absint_singlebit_p.exit:                       ; preds = %.critedge2.i
  %i.bj = load i32, ptr %.135.lcssa.i, align 4, !tbaa !7
  %i.bk = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bj)
  %i.bl = icmp samesign ugt i32 %i.bk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %i.bl, label %bb.v, label %bb.s

bb.s:                                             ; preds = %rb_absint_singlebit_p.exit
  %.not6 = icmp eq i32 %i.aa, 7
  br i1 %.not6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = add nuw nsw i32 %i.aa, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bn = add i64 %i.ag, -1
  br label %bb.v

bb.v:                                             ; preds = %rb_absint_singlebit_p.exit.thread, %bb.t, %bb.u, %rb_absint_singlebit_p.exit, %bb.i
  %.034 = phi i64 [ %i.ag, %rb_absint_singlebit_p.exit ], [ %i.bn, %bb.u ], [ %i.ag, %bb.t ], [ %i.ag, %rb_absint_singlebit_p.exit.thread ], [ %i.ag, %bb.i ] ; 5 uses
  %.018 = phi i32 [ %i.aa, %rb_absint_singlebit_p.exit ], [ 0, %bb.u ], [ %i.bm, %bb.t ], [ %i.aa, %rb_absint_singlebit_p.exit.thread ], [ %i.aa, %bb.i ] ; 2 uses
  %i.bo = icmp ult i64 %.034, 2305843009213693952
  br i1 %i.bo, label %bb.w, label %.lr.ph21.split.i.i

bb.w:                                             ; preds = %bb.v
  %i.bp = shl nuw i64 %.034, 3
  %i.bq = zext nneg i32 %.018 to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 4 uses
  %i.bs = icmp ult i64 %i.br, 4611686018427387904
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bt = shl nuw nsw i64 %i.br, 1
  %i.bu = or disjoint i64 %i.bt, 1
  br label %rb_ull2num_inline.exit

bb.y:                                             ; preds = %bb.w
  %i.bv = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.bw = call fastcc i64 @bignew_1(i64 noundef %i.bv, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.bx = inttoptr i64 %i.bw to ptr               ; 5 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !13 ; 2 uses
  %i.bz = and i64 %i.by, 16384
  %.not.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr i8, ptr %i.bx, i64 16
  store i64 %i.br, ptr %i.ca, align 4
  %i.cb = and i64 %i.by, -16744449
  %i.cc = or disjoint i64 %i.cb, 65536
  store i64 %i.cc, ptr %i.bx, align 8, !tbaa !13
  br label %rb_ull2num_inline.exit

bb.aa:                                            ; preds = %bb.y
  %i.cd = getelementptr i8, ptr %i.bx, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !15
  store i64 %i.br, ptr %i.ce, align 4
  %i.cf = getelementptr i8, ptr %i.bx, i64 16
  store i64 2, ptr %i.cf, align 8, !tbaa !15
  br label %rb_ull2num_inline.exit

.lr.ph21.split.i.i:                               ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !7
  %i.cg = and i64 %.034, 4294967295
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.preheader.i.i.1, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph21.split.i.i
  %i.ci = shl i64 %.034, 3                        ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  store i32 %i.cj, ptr %i.c, align 4, !tbaa !7
  %i.ck = lshr i64 %i.ci, 32
  %i.cl = and i64 %i.ck, 7                        ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.preheader.i.i.1, label %.lr.ph41.i.i.i

.lr.ph41.i.i.i:                                   ; preds = %.lr.ph.i.preheader.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cl, %i.cp            ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !7
  %i.cs = lshr i64 %i.cq, 32                      ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.preheader.i.i.1, label %.lr.ph41.i.i.i.1

.lr.ph41.i.i.i.1:                                 ; preds = %.lr.ph41.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = trunc nuw nsw i64 %i.cs to i32
  %i.cx = add i32 %i.cv, %i.cw
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !7
  br label %.lr.ph.i.preheader.i.i.1

.lr.ph.i.preheader.i.i.1:                         ; preds = %.lr.ph41.i.i.i, %.lr.ph41.i.i.i.1, %.lr.ph21.split.i.i, %.lr.ph.i.preheader.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.cz = lshr i64 %.034, 29
  %i.da = and i64 %i.cz, 34359738360
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw nsw i64 %i.da, %i.dc            ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %i.cy, align 4, !tbaa !7
  %i.df = lshr i64 %i.dd, 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7
  %i.di = trunc nuw nsw i64 %i.df to i32
  %i.dj = add i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !7
  call void @rb_thread_check_ints() #23
  %i.dk = zext nneg i32 %.018 to i64
  %i.dl = load i32, ptr %i.c, align 4, !tbaa !7
  %i.dm = zext i32 %i.dl to i64
  %i.dn = sub nsw i64 %i.dm, %i.dk                ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr %i.c, align 4, !tbaa !7
  %i.dp = icmp ult i64 %i.dn, 4294967296
  br i1 %i.dp, label %bary_sub.exit, label %.lr.ph82.i.i.1

.lr.ph82.i.i.1:                                   ; preds = %.lr.ph.i.preheader.i.i.1
  %i.dq = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  store i32 %i.dt, ptr %i.cy, align 4, !tbaa !7
  %i.du = icmp ult i64 %i.ds, 4294967296
  br i1 %i.du, label %bary_sub.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph82.i.i.1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  %i.dx = add i32 %i.dw, -1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !7
  br label %bary_sub.exit

bary_sub.exit:                                    ; preds = %bb.ab, %.lr.ph82.i.i.1, %.lr.ph.i.preheader.i.i.1
  %i.dy = call i64 @rb_integer_unpack(ptr noundef %i.c, i64 noundef 3, i64 noundef 4, i64 noundef 0, i32 noundef 66)
  br label %rb_ull2num_inline.exit

rb_ull2num_inline.exit:                           ; preds = %bb.aa, %bb.z, %bb.x, %rb_absint_size.exit, %rb_absint_size.exit.thread, %bary_sub.exit
  %.0 = phi i64 [ %i.dy, %bary_sub.exit ], [ 1, %rb_absint_size.exit ], [ 1, %rb_absint_size.exit.thread ], [ %i.bu, %bb.x ], [ %i.bw, %bb.z ], [ %i.bw, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 21) i64 @rb_big_odd_p(i64 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

BIGNUM_LEN.exit.thread:                           ; preds = %bb.a
  %i.f = and i64 %i.b, 16744448
  %.not5 = icmp eq i64 %i.f, 0
  br i1 %.not5, label %bb.c, label %.thread

.thread:                                          ; preds = %BIGNUM_LEN.exit.thread
  %i.g = getelementptr i8, ptr %i.a, i64 16
  br label %BIGNUM_DIGITS.exit

bb.b:                                             ; preds = %BIGNUM_LEN.exit
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %.thread, %bb.b
  %.0.i3 = phi ptr [ %i.g, %.thread ], [ %i.i, %bb.b ]
  %i.j = load i32, ptr %.0.i3, align 4, !tbaa !7
  %i.k = trunc i32 %i.j to i1
  %i.l = select i1 %i.k, i64 20, i64 0
  br label %bb.c

bb.c:                                             ; preds = %BIGNUM_LEN.exit.thread, %BIGNUM_DIGITS.exit, %BIGNUM_LEN.exit
  %i.m = phi i64 [ 0, %BIGNUM_LEN.exit ], [ %i.l, %BIGNUM_DIGITS.exit ], [ 0, %BIGNUM_LEN.exit.thread ]
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 21) i64 @rb_big_even_p(i64 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

BIGNUM_LEN.exit.thread:                           ; preds = %bb.a
  %i.f = and i64 %i.b, 16744448
  %.not7 = icmp eq i64 %i.f, 0
  br i1 %.not7, label %bb.c, label %.thread

.thread:                                          ; preds = %BIGNUM_LEN.exit.thread
  %i.g = getelementptr i8, ptr %i.a, i64 16
  br label %BIGNUM_DIGITS.exit

bb.b:                                             ; preds = %BIGNUM_LEN.exit
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %.thread, %bb.b
  %.0.i5 = phi ptr [ %i.g, %.thread ], [ %i.i, %bb.b ]
  %i.j = load i32, ptr %.0.i5, align 4, !tbaa !7
  %i.k = and i32 %i.j, 1
  %.not3 = icmp eq i32 %i.k, 0
  br i1 %.not3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %BIGNUM_LEN.exit.thread, %BIGNUM_DIGITS.exit, %BIGNUM_LEN.exit
  br label %bb.d

bb.d:                                             ; preds = %BIGNUM_DIGITS.exit, %bb.c
  %.0 = phi i64 [ 20, %bb.c ], [ 0, %BIGNUM_DIGITS.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_big_isqrt(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = lshr i64 %i.b, 15
  %i.j = and i64 %i.i, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i40 = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.0.i30 = phi i64 [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.k = icmp ult i64 %.0.i30, 3
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  switch i64 %.0.i30, label %bary2bdigitdbl.exit [
    i64 2, label %bb.e
    i64 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %.0.i40, align 4
  br label %bary2bdigitdbl.exit

bb.f:                                             ; preds = %bb.d
  %i.m = load i32, ptr %.0.i40, align 4, !tbaa !7
  %i.n = zext i32 %i.m to i64
  br label %bary2bdigitdbl.exit

bary2bdigitdbl.exit:                              ; preds = %bb.d, %bb.e, %bb.f
  %.0.i31 = phi i64 [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ 0, %bb.d ]
  %i.o = tail call i64 @rb_ulong_isqrt(i64 noundef %.0.i31) #23
  %i.p = shl i64 %i.o, 1
  %i.q = and i64 %i.p, 8589934590
  %i.r = or disjoint i64 %i.q, 1
  br label %.loopexit

bb.g:                                             ; preds = %BIGNUM_LEN.exit
  %i.s = tail call i64 @rb_big_bit_length(i64 noundef %0)
  %i.t = ashr i64 %i.s, 1
  %i.u = sdiv i64 %i.t, 4                         ; 5 uses
  %i.v = shl nsw i64 %i.u, 1                      ; 3 uses
  %i.w = icmp ult i64 %i.v, 4611686018427387904
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = shl nsw i64 %i.u, 2
  %i.y = or disjoint i64 %i.x, 1
  br label %rb_ull2num_inline.exit

bb.i:                                             ; preds = %bb.g
  %i.z = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.aa = tail call fastcc i64 @bignew_1(i64 noundef %i.z, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 5 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = and i64 %i.ac, 16384
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.ab, i64 16
  store i64 %i.v, ptr %i.ae, align 4
  %i.af = and i64 %i.ac, -16744449
  %i.ag = or disjoint i64 %i.af, 65536
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !13
  br label %rb_ull2num_inline.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.ab, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  store i64 %i.v, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %i.ab, i64 16
  store i64 2, ptr %i.aj, align 8, !tbaa !15
  br label %rb_ull2num_inline.exit

rb_ull2num_inline.exit:                           ; preds = %bb.h, %bb.j, %bb.k
  %.0.i32 = phi i64 [ %i.y, %bb.h ], [ %i.aa, %bb.j ], [ %i.aa, %bb.k ]
  %i.ak = tail call i64 @rb_int_rshift(i64 noundef %0, i64 noundef %.0.i32) #23 ; 3 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %rb_ull2num_inline.exit
  %i.am = ashr i64 %i.ak, 1
  %i.an = tail call i64 @rb_ulong_isqrt(i64 noundef %i.am) #23
  %i.ao = shl i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %bb.n

bb.m:                                             ; preds = %rb_ull2num_inline.exit
  %i.aq = tail call i64 @rb_big_isqrt(i64 noundef %i.ak)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi i64 [ %i.ap, %bb.l ], [ %i.aq, %bb.m ] ; 3 uses
  %i.as = add nsw i64 %i.u, -1                    ; 4 uses
  %i.at = icmp ult i64 %i.as, 4611686018427387904
  br i1 %i.at, label %rb_ull2num_inline.exit35.thread, label %bb.o

rb_ull2num_inline.exit35.thread:                  ; preds = %bb.n
  %i.au = shl nuw nsw i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = tail call i64 @rb_int_lshift(i64 noundef %i.ar, i64 noundef %i.av) #23
  %i.ax = add nuw nsw i64 %i.u, 1
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.az = tail call fastcc i64 @bignew_1(i64 noundef %i.ay, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr               ; 5 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = and i64 %i.bb, 16384
  %.not.i.i.i.i33 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  store i64 %i.as, ptr %i.bd, align 4
  %i.be = and i64 %i.bb, -16744449
  %i.bf = or disjoint i64 %i.be, 65536
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !13
  br label %rb_ull2num_inline.exit35

bb.q:                                             ; preds = %bb.o
  %i.bg = getelementptr i8, ptr %i.ba, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15
  store i64 %i.as, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %i.ba, i64 16
  store i64 2, ptr %i.bi, align 8, !tbaa !15
  br label %rb_ull2num_inline.exit35

rb_ull2num_inline.exit35:                         ; preds = %bb.p, %bb.q
  %i.bj = tail call i64 @rb_int_lshift(i64 noundef %i.ar, i64 noundef %i.az) #23 ; 3 uses
  %i.bk = add nsw i64 %i.u, 1                     ; 4 uses
  %i.bl = icmp ult i64 %i.bk, 4611686018427387904
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_ull2num_inline.exit35.thread, %rb_ull2num_inline.exit35
  %i.bm = phi i64 [ %i.ax, %rb_ull2num_inline.exit35.thread ], [ %i.bk, %rb_ull2num_inline.exit35 ]
  %i.bn = phi i64 [ %i.aw, %rb_ull2num_inline.exit35.thread ], [ %i.bj, %rb_ull2num_inline.exit35 ]
  %i.bo = shl nuw nsw i64 %i.bm, 1
  %i.bp = or disjoint i64 %i.bo, 1
  br label %rb_ull2num_inline.exit38

bb.s:                                             ; preds = %rb_ull2num_inline.exit35
  %i.bq = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.br = tail call fastcc i64 @bignew_1(i64 noundef %i.bq, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 5 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.bu = and i64 %i.bt, 16384
  %.not.i.i.i.i36 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i36, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr i8, ptr %i.bs, i64 16
  store i64 %i.bk, ptr %i.bv, align 4
  %i.bw = and i64 %i.bt, -16744449
  %i.bx = or disjoint i64 %i.bw, 65536
  store i64 %i.bx, ptr %i.bs, align 8, !tbaa !13
  br label %rb_ull2num_inline.exit38

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr i8, ptr %i.bs, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15
  store i64 %i.bk, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %i.bs, i64 16
  store i64 2, ptr %i.ca, align 8, !tbaa !15
  br label %rb_ull2num_inline.exit38

rb_ull2num_inline.exit38:                         ; preds = %bb.r, %bb.t, %bb.u
  %i.cb = phi i64 [ %i.bn, %bb.r ], [ %i.bj, %bb.t ], [ %i.bj, %bb.u ]
  %.0.i37 = phi i64 [ %i.bp, %bb.r ], [ %i.br, %bb.t ], [ %i.br, %bb.u ]
  %i.cc = tail call i64 @rb_int_rshift(i64 noundef %0, i64 noundef %.0.i37) #23
  %i.cd = tail call i64 @rb_int_idiv(i64 noundef %i.cc, i64 noundef %i.ar) #23
  %i.ce = tail call i64 @rb_int_plus(i64 noundef %i.cb, i64 noundef %i.cd) #23 ; 4 uses
  %i.cf = tail call i64 @rb_int_mul(i64 noundef %i.ce, i64 noundef %i.ce) #23 ; 2 uses
  %i.cg = tail call i64 @rb_int_gt(i64 noundef %i.cf, i64 noundef %0) #23
  %.not43 = icmp eq i64 %i.cg, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %rb_ull2num_inline.exit38, %.lr.ph
  %.045 = phi i64 [ %i.cj, %.lr.ph ], [ %i.cf, %rb_ull2num_inline.exit38 ]
  %.02644 = phi i64 [ %i.ck, %.lr.ph ], [ %i.ce, %rb_ull2num_inline.exit38 ] ; 3 uses
  %i.ch = tail call i64 @rb_int_plus(i64 noundef %.02644, i64 noundef %.02644) #23
  %i.ci = tail call i64 @rb_int_minus(i64 noundef %i.ch, i64 noundef 3) #23
  %i.cj = tail call i64 @rb_int_minus(i64 noundef %.045, i64 noundef %i.ci) #23 ; 2 uses
  %i.ck = tail call i64 @rb_int_minus(i64 noundef %.02644, i64 noundef 3) #23 ; 2 uses
  %i.cl = tail call i64 @rb_int_gt(i64 noundef %i.cj, i64 noundef %0) #23
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !409

.loopexit:                                        ; preds = %.lr.ph, %rb_ull2num_inline.exit38, %bary2bdigitdbl.exit
  %.027 = phi i64 [ %i.r, %bary2bdigitdbl.exit ], [ %i.ce, %rb_ull2num_inline.exit38 ], [ %i.ck, %.lr.ph ]
  ret i64 %.027
}

declare i64 @rb_ulong_isqrt(i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_idiv(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_mul(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_gt(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_powm(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -3
  %or.cond.i = icmp ult i32 %i.a, -2
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #25
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.b = icmp eq i32 %0, 1
  %i.c = load i64, ptr %1, align 8, !tbaa !11     ; 13 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.d = tail call i64 @rb_int_pow(i64 noundef %2, i64 noundef %i.c) #23
  br label %int_pow_tmp3.exit

bb.d:                                             ; preds = %rb_check_arity.exit
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 7 uses
  %i.g = trunc i64 %i.c to i1                     ; 4 uses
  br i1 %i.g, label %rb_integer_type_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %i.c, 0
  %i.i = and i64 %i.c, 6
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rb_integer_type_p.exit.thread69, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.e
  %i.l = inttoptr i64 %i.c to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 10
  br i1 %i.o, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread69

rb_integer_type_p.exit.thread69:                  ; preds = %bb.e, %rb_integer_type_p.exit
  %i.p = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.15) #25
  unreachable

rb_integer_type_p.exit.thread:                    ; preds = %bb.d, %rb_integer_type_p.exit
  %i.q = tail call i32 @rb_int_negative_p(i64 noundef %i.c) #23
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_integer_type_p.exit.thread
  %i.r = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.16) #25
  unreachable

bb.g:                                             ; preds = %rb_integer_type_p.exit.thread
  %i.s = trunc i64 %i.f to i1
  br i1 %i.s, label %rb_integer_type_p.exit45.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq i64 %i.f, 0
  %i.u = and i64 %i.f, 6
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %rb_integer_type_p.exit45.thread72, label %rb_integer_type_p.exit45

rb_integer_type_p.exit45:                         ; preds = %bb.h
  %i.x = inttoptr i64 %i.f to ptr
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 10
  br i1 %i.aa, label %rb_integer_type_p.exit45.thread, label %rb_integer_type_p.exit45.thread72

rb_integer_type_p.exit45.thread72:                ; preds = %bb.h, %rb_integer_type_p.exit45
  %i.ab = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.17) #25
  unreachable

rb_integer_type_p.exit45.thread:                  ; preds = %bb.g, %rb_integer_type_p.exit45
  %i.ac = tail call i64 @rb_int_zero_p(i64 noundef %2) #23
  %.not39 = icmp eq i64 %i.ac, 0
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %rb_integer_type_p.exit45.thread
  %i.ad = tail call i64 @rb_int_zero_p(i64 noundef %i.c) #23
  %.not40 = icmp eq i64 %i.ad, 0
  br i1 %.not40, label %int_pow_tmp3.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %rb_integer_type_p.exit45.thread
  %i.ae = tail call i32 @rb_int_negative_p(i64 noundef %i.f) #23
  %.not41 = icmp ne i32 %i.ae, 0                  ; 4 uses
  br i1 %.not41, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i64 @rb_int_uminus(i64 noundef %i.f) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.036 = phi i64 [ %i.af, %bb.k ], [ %i.f, %bb.j ] ; 15 uses
  %i.ag = trunc i64 %.036 to i1
  br i1 %i.ag, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.ah = ashr i64 %.036, 1                       ; 10 uses
  switch i64 %i.ah, label %bb.o [
    i64 0, label %bb.n
    i64 1, label %int_pow_tmp3.exit
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @rb_num_zerodiv() #27
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ai = icmp slt i64 %i.ah, 2147483649
  %i.aj = tail call i64 @rb_int_modulo(i64 noundef %2, i64 noundef %.036) #23 ; 2 uses
  br i1 %i.ai, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ak = ashr i64 %i.aj, 1                       ; 2 uses
  br i1 %i.g, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.r, %bb.p
  %.029.lcssa.i = phi i64 [ %i.c, %bb.p ], [ %i.ar, %bb.r ] ; 2 uses
  %.027.lcssa.i = phi i64 [ %i.ak, %bb.p ], [ %i.aq, %bb.r ]
  %.026.lcssa.i = phi i64 [ 1, %bb.p ], [ %.1.i, %bb.r ] ; 2 uses
  %.037.i = ashr i64 %.029.lcssa.i, 1             ; 2 uses
  %.not38.i = icmp eq i64 %.037.i, 0
  br i1 %.not38.i, label %int_pow_tmp1.exit, label %.lr.ph43.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.r
  %.02634.i = phi i64 [ %.1.i, %bb.r ], [ 1, %bb.p ] ; 2 uses
  %.02733.i = phi i64 [ %i.aq, %bb.r ], [ %i.ak, %bb.p ] ; 3 uses
  %.02932.i = phi i64 [ %i.ar, %bb.r ], [ %i.c, %bb.p ] ; 2 uses
  %i.al = tail call i64 @rb_int_odd_p(i64 noundef %.02932.i) #23
  %i.am = and i64 %i.al, -5
  %.not31.i = icmp eq i64 %i.am, 0
  br i1 %.not31.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.an = mul i64 %.02733.i, %.02634.i
  %i.ao = srem i64 %i.an, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %.1.i = phi i64 [ %i.ao, %bb.q ], [ %.02634.i, %.lr.ph.i ] ; 2 uses
  %i.ap = mul i64 %.02733.i, %.02733.i
  %i.aq = srem i64 %i.ap, %i.ah                   ; 2 uses
  %i.ar = tail call i64 @rb_big_rshift(i64 noundef %.02932.i, i64 noundef 3) ; 3 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %.preheader.i, label %.lr.ph.i, !llvm.loop !410

.lr.ph43.i:                                       ; preds = %.preheader.i, %bb.t
  %.042.i = phi i64 [ %.0.i46, %bb.t ], [ %.037.i, %.preheader.i ] ; 2 uses
  %.0.in41.i = phi i64 [ %.042.i, %bb.t ], [ %.029.lcssa.i, %.preheader.i ]
  %.240.i = phi i64 [ %.3.i, %bb.t ], [ %.026.lcssa.i, %.preheader.i ] ; 2 uses
  %.12839.i = phi i64 [ %i.ax, %bb.t ], [ %.027.lcssa.i, %.preheader.i ] ; 3 uses
  %i.at = and i64 %.0.in41.i, 2
  %.not30.i = icmp eq i64 %i.at, 0
  br i1 %.not30.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph43.i
  %i.au = mul i64 %.12839.i, %.240.i
  %i.av = srem i64 %i.au, %i.ah
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph43.i
  %.3.i = phi i64 [ %i.av, %bb.s ], [ %.240.i, %.lr.ph43.i ] ; 2 uses
  %i.aw = mul i64 %.12839.i, %.12839.i
  %i.ax = srem i64 %i.aw, %i.ah
  %.0.i46 = ashr i64 %.042.i, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.0.i46, 0
  br i1 %.not.i, label %int_pow_tmp1.exit, label %.lr.ph43.i, !llvm.loop !411

int_pow_tmp1.exit:                                ; preds = %bb.t, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.026.lcssa.i, %.preheader.i ], [ %.3.i, %bb.t ] ; 2 uses
  %i.ay = icmp ne i64 %.2.lcssa.i, 0
  %or.cond.i47 = select i1 %.not41, i1 %i.ay, i1 false
  %i.az = select i1 %or.cond.i47, i64 %i.ah, i64 0
  %spec.select.i = sub nsw i64 %.2.lcssa.i, %i.az
  %i.ba = shl i64 %spec.select.i, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %int_pow_tmp3.exit

bb.u:                                             ; preds = %bb.o
  %i.bc = zext nneg i64 %i.ah to i128             ; 4 uses
  %i.bd = ashr i64 %i.aj, 1                       ; 2 uses
  br i1 %i.g, label %.preheader.i49, label %.lr.ph.i48

.preheader.i49:                                   ; preds = %bb.w, %bb.u
  %.031.lcssa.i = phi i64 [ %i.c, %bb.u ], [ %i.bo, %bb.w ] ; 2 uses
  %.029.lcssa.i50 = phi i64 [ 1, %bb.u ], [ %.130.i, %bb.w ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.bd, %bb.u ], [ %i.bn, %bb.w ]
  %.03241.i = ashr i64 %.031.lcssa.i, 1           ; 2 uses
  %.not42.i = icmp eq i64 %.03241.i, 0
  br i1 %.not42.i, label %int_pow_tmp2.exit, label %.lr.ph47.i

.lr.ph.i48:                                       ; preds = %bb.u, %bb.w
  %.038.i = phi i64 [ %i.bn, %bb.w ], [ %i.bd, %bb.u ] ; 2 uses
  %.02937.i = phi i64 [ %.130.i, %bb.w ], [ 1, %bb.u ] ; 2 uses
  %.03136.i = phi i64 [ %i.bo, %bb.w ], [ %i.c, %bb.u ] ; 2 uses
  %i.be = tail call i64 @rb_int_odd_p(i64 noundef %.03136.i) #23
  %i.bf = and i64 %i.be, -5
  %.not35.i = icmp eq i64 %i.bf, 0
  br i1 %.not35.i, label %.lr.ph._crit_edge.i, label %bb.v

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i48
  %.pre50.i = sext i64 %.038.i to i128
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.i48
  %i.bg = sext i64 %.02937.i to i128
  %i.bh = sext i64 %.038.i to i128                ; 2 uses
  %i.bi = mul nsw i128 %i.bg, %i.bh
  %i.bj = srem i128 %i.bi, %i.bc
  %i.bk = trunc nsw i128 %i.bj to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph._crit_edge.i
  %.pre-phi51.i = phi i128 [ %.pre50.i, %.lr.ph._crit_edge.i ], [ %i.bh, %bb.v ] ; 2 uses
  %.130.i = phi i64 [ %.02937.i, %.lr.ph._crit_edge.i ], [ %i.bk, %bb.v ] ; 2 uses
  %i.bl = mul nsw i128 %.pre-phi51.i, %.pre-phi51.i
  %i.bm = urem i128 %i.bl, %i.bc
  %i.bn = trunc nuw nsw i128 %i.bm to i64         ; 2 uses
  %i.bo = tail call i64 @rb_big_rshift(i64 noundef %.03136.i, i64 noundef 3) ; 3 uses
  %i.bp = trunc i64 %i.bo to i1
  br i1 %i.bp, label %.preheader.i49, label %.lr.ph.i48, !llvm.loop !412

.lr.ph47.i:                                       ; preds = %.preheader.i49, %bb.y
  %.03246.i = phi i64 [ %.032.i, %bb.y ], [ %.03241.i, %.preheader.i49 ] ; 2 uses
  %.145.i = phi i64 [ %i.by, %bb.y ], [ %.0.lcssa.i, %.preheader.i49 ] ; 2 uses
  %.244.i = phi i64 [ %.3.i51, %bb.y ], [ %.029.lcssa.i50, %.preheader.i49 ] ; 2 uses
  %.032.in43.i = phi i64 [ %.03246.i, %bb.y ], [ %.031.lcssa.i, %.preheader.i49 ]
  %i.bq = and i64 %.032.in43.i, 2
  %.not34.i = icmp eq i64 %i.bq, 0
  br i1 %.not34.i, label %.lr.ph47._crit_edge.i, label %bb.x

.lr.ph47._crit_edge.i:                            ; preds = %.lr.ph47.i
  %.pre.i = sext i64 %.145.i to i128
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph47.i
  %i.br = sext i64 %.244.i to i128
  %i.bs = sext i64 %.145.i to i128                ; 2 uses
  %i.bt = mul nsw i128 %i.br, %i.bs
  %i.bu = srem i128 %i.bt, %i.bc
  %i.bv = trunc nsw i128 %i.bu to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph47._crit_edge.i
  %.pre-phi.i = phi i128 [ %.pre.i, %.lr.ph47._crit_edge.i ], [ %i.bs, %bb.x ] ; 2 uses
  %.3.i51 = phi i64 [ %.244.i, %.lr.ph47._crit_edge.i ], [ %i.bv, %bb.x ] ; 2 uses
  %i.bw = mul nsw i128 %.pre-phi.i, %.pre-phi.i
  %i.bx = urem i128 %i.bw, %i.bc
  %i.by = trunc nuw nsw i128 %i.bx to i64
  %.032.i = ashr i64 %.03246.i, 1                 ; 2 uses
  %.not.i52 = icmp eq i64 %.032.i, 0
  br i1 %.not.i52, label %int_pow_tmp2.exit, label %.lr.ph47.i, !llvm.loop !413

int_pow_tmp2.exit:                                ; preds = %bb.y, %.preheader.i49
  %.2.lcssa.i53 = phi i64 [ %.029.lcssa.i50, %.preheader.i49 ], [ %.3.i51, %bb.y ] ; 2 uses
  %i.bz = icmp ne i64 %.2.lcssa.i53, 0
  %or.cond.i54 = select i1 %.not41, i1 %i.bz, i1 false
  %i.ca = select i1 %or.cond.i54, i64 %i.ah, i64 0
  %spec.select.i55 = sub nsw i64 %.2.lcssa.i53, %i.ca
  %i.cb = shl i64 %spec.select.i55, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %int_pow_tmp3.exit

bb.z:                                             ; preds = %bb.l
  %i.cd = inttoptr i64 %.036 to ptr               ; 7 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !13 ; 6 uses
  %i.cf = and i64 %i.ce, 16384
  %.not.i.i = icmp eq i64 %i.cf, 0                ; 2 uses
  br i1 %.not.i.i, label %BIGNUM_LEN.exit.i, label %BIGNUM_LEN.exit.thread.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.z
  %i.cg = getelementptr i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !15 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %BIGNUM_DIGITS.exit.i

BIGNUM_LEN.exit.thread.i:                         ; preds = %bb.z
  %i.cj = and i64 %i.ce, 16744448                 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.loopexit, label %BIGNUM_DIGITS.exit.thread.i

BIGNUM_DIGITS.exit.i:                             ; preds = %BIGNUM_LEN.exit.i
  %i.cl = getelementptr i8, ptr %i.cd, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !15 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %BIGNUM_LEN.exit8.i, label %rb_bigzero_p.exit

BIGNUM_DIGITS.exit.thread.i:                      ; preds = %BIGNUM_LEN.exit.thread.i
  %i.cp = getelementptr i8, ptr %i.cd, i64 16     ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %BIGNUM_LEN.exit8.thread.i, label %rb_bigzero_p.exit

BIGNUM_LEN.exit8.i:                               ; preds = %BIGNUM_DIGITS.exit.i
  %i.cs = icmp eq i64 %i.ch, 1
  br i1 %i.cs, label %.loopexit, label %.preheader.i.i.preheader.i

BIGNUM_LEN.exit8.thread.i:                        ; preds = %BIGNUM_DIGITS.exit.thread.i
  %i.ct = icmp eq i64 %i.cj, 32768
  br i1 %i.ct, label %.loopexit, label %BIGNUM_LEN.exit.i.i

BIGNUM_LEN.exit.i.i:                              ; preds = %BIGNUM_LEN.exit8.thread.i
  %i.cu = lshr i64 %i.ce, 15
  %i.cv = and i64 %i.cu, 511                      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.loopexit, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %BIGNUM_LEN.exit.i.i, %BIGNUM_LEN.exit8.i
  %.0.i3.i19.i = phi i64 [ %i.cv, %BIGNUM_LEN.exit.i.i ], [ %i.ch, %BIGNUM_LEN.exit8.i ]
  %.0.i7.i18.i = phi ptr [ %i.cp, %BIGNUM_LEN.exit.i.i ], [ %i.cm, %BIGNUM_LEN.exit8.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.aa, %.preheader.i.i.preheader.i
  %.0.i4.i.i = phi i64 [ %i.cx, %bb.aa ], [ %.0.i3.i19.i, %.preheader.i.i.preheader.i ]
  %i.cx = add i64 %.0.i4.i.i, -1                  ; 3 uses
  %i.cy = getelementptr [4 x i8], ptr %.0.i7.i18.i, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %.not.i5.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i5.i.i, label %bb.aa, label %rb_bigzero_p.exit

bb.aa:                                            ; preds = %.preheader.i.i.i
  %.not7.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not7.i.i.i, label %.loopexit, label %.preheader.i.i.i, !llvm.loop !158

.loopexit:                                        ; preds = %bb.aa, %BIGNUM_LEN.exit.i, %BIGNUM_LEN.exit8.i, %BIGNUM_LEN.exit8.thread.i, %BIGNUM_LEN.exit.thread.i, %BIGNUM_LEN.exit.i.i
  tail call void @rb_num_zerodiv() #27
  unreachable

rb_bigzero_p.exit:                                ; preds = %.preheader.i.i.i, %BIGNUM_DIGITS.exit.thread.i, %BIGNUM_DIGITS.exit.i
  %i.da = icmp ne i64 %.036, 0
  %i.db = and i64 %.036, 6
  %i.dc = icmp eq i64 %i.db, 0
  %.not80 = and i1 %i.da, %i.dc
  %i.dd = and i64 %i.ce, 31
  %i.de = icmp eq i64 %i.dd, 10
  %or.cond = and i1 %.not80, %i.de
  br i1 %or.cond, label %bb.ab, label %bignorm.exit

bb.ab:                                            ; preds = %rb_bigzero_p.exit
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = lshr i64 %i.ce, 15
  %i.dg = and i64 %i.df, 511
  %i.dh = getelementptr i8, ptr %i.cd, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.di = getelementptr i8, ptr %i.cd, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dk = getelementptr i8, ptr %i.cd, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.ad, %bb.ac
  %.0.i28.i.i = phi i64 [ %i.dg, %bb.ac ], [ %i.dj, %bb.ad ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.dh, %bb.ac ], [ %i.dl, %bb.ad ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.ae
  %indvar = phi i32 [ %indvar.next, %bb.ae ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.dq, %bb.ae ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.dm = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %.critedge.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.dq = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.dq, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit.thread, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dr = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.dr, label %bb.aj, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ds = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.dt = trunc i64 %.0.i28.i.i to i32
  %i.du = sub i32 %indvar, %i.dt
  %i.dv = icmp ugt i32 %i.du, -4
  br i1 %i.dv, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.dw, %.lr.ph36.i.i ], [ %i.ds, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.dw = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.dx = add i32 %.035.i.i, -3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7
  %i.eb = zext i32 %i.ea to i64
  %i.ec = shl nuw i64 %i.eb, 32
  %i.ed = sext i32 %i.dw to i64
  %i.ee = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.eg = zext i32 %i.ef to i64
  %i.eh = or disjoint i64 %i.ec, %i.eg
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.ds, %.lr.ph36.preheader.i.i ], [ %i.dw, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.eh, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.ei, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.eo, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.ei = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.ej = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = zext i32 %i.em to i64
  %i.eo = or disjoint i64 %i.ej, %i.en            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.ds
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !414

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.ep = icmp ult i64 %i.ej, 4611686018427387904
  %i.eq = and i64 %i.ce, 8192
  %.not.i.i57 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i57, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.ep, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.er = shl nuw nsw i64 %i.eo, 1
  %i.es = or disjoint i64 %i.er, 1
  br label %bignorm.exit

bb.ah:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.et = icmp ult i64 %i.eo, 4611686018427387905
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.neg.i.i = mul nsw i64 %i.eo, -2
  %i.eu = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.aj:                                            ; preds = %bb.ah, %bb.af, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %.036, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %rb_bigzero_p.exit, %bb.ag, %bb.ai, %bb.aj
  %.0.i56 = phi i64 [ %.036, %rb_bigzero_p.exit ], [ %i.es, %bb.ag ], [ %i.eu, %bb.ai ], [ %.036, %bb.aj ]
  %i.ev = icmp eq i64 %.0.i56, 3
  br i1 %i.ev, label %int_pow_tmp3.exit, label %bignorm.exit.thread

bignorm.exit.thread:                              ; preds = %bb.ae, %BIGNUM_DIGITS.exit.i.i, %bignorm.exit
  %i.ew = tail call i64 @rb_int_modulo(i64 noundef %2, i64 noundef %.036) #23 ; 2 uses
  br i1 %i.g, label %.preheader.i60, label %.lr.ph.i58

.preheader.i60:                                   ; preds = %bb.al, %bignorm.exit.thread
  %.032.lcssa.i = phi i64 [ %i.c, %bignorm.exit.thread ], [ %i.fd, %bb.al ] ; 2 uses
  %.030.lcssa.i = phi i64 [ %i.ew, %bignorm.exit.thread ], [ %i.fc, %bb.al ]
  %.029.lcssa.i61 = phi i64 [ 3, %bignorm.exit.thread ], [ %.1.i59, %bb.al ] ; 2 uses
  %.043.i = ashr i64 %.032.lcssa.i, 1             ; 2 uses
  %.not44.i = icmp eq i64 %.043.i, 0
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph49.i

.lr.ph.i58:                                       ; preds = %bignorm.exit.thread, %bb.al
  %.02940.i = phi i64 [ %.1.i59, %bb.al ], [ 3, %bignorm.exit.thread ] ; 2 uses
  %.03039.i = phi i64 [ %i.fc, %bb.al ], [ %i.ew, %bignorm.exit.thread ] ; 3 uses
  %.03238.i = phi i64 [ %i.fd, %bb.al ], [ %i.c, %bignorm.exit.thread ] ; 2 uses
  %i.ex = tail call i64 @rb_int_odd_p(i64 noundef %.03238.i) #23
  %i.ey = and i64 %i.ex, -5
  %.not37.i = icmp eq i64 %i.ey, 0
  br i1 %.not37.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i58
  %i.ez = tail call i64 @rb_int_mul(i64 noundef %.02940.i, i64 noundef %.03039.i) #23
  %i.fa = tail call i64 @rb_int_modulo(i64 noundef %i.ez, i64 noundef %.036) #23
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i58
  %.1.i59 = phi i64 [ %i.fa, %bb.ak ], [ %.02940.i, %.lr.ph.i58 ] ; 2 uses
  %i.fb = tail call i64 @rb_int_mul(i64 noundef %.03039.i, i64 noundef %.03039.i) #23
  %i.fc = tail call i64 @rb_int_modulo(i64 noundef %i.fb, i64 noundef %.036) #23 ; 2 uses
end_hunk_8
