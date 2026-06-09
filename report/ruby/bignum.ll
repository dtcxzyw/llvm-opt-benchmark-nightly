inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_divmod_normal:bb.a
  %i.dp = alloca i8, i64 %i.do, align 16
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.dq = icmp ugt i64 %i.c, 4611686018427387903
  br i1 %i.dq, label %bb.z, label %rbimpl_size_mul_or_raise.exit.thread, !prof !32

bb.z:                                             ; preds = %bb.y
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.c, i64 noundef 4) #25
  unreachable

rbimpl_size_mul_or_raise.exit.thread:             ; preds = %bb.y
  %i.dr = shl nuw i64 %i.c, 2                     ; 2 uses
  %i.ds = add i64 %i.dr, 4
  %i.dt = lshr i64 %i.ds, 3
  %i.du = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.dr, i64 noundef %i.dt) #26
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x, %bb.v
  %.1 = phi ptr [ %0, %bb.v ], [ %i.dp, %bb.x ]   ; 2 uses
  %i.dv = icmp ugt i64 %5, 4611686018427387903
  br i1 %i.dv, label %bb.ab, label %rbimpl_size_mul_or_raise.exit, !prof !154

bb.ab:                                            ; preds = %bb.aa
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %5) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.aa
  %.not.i126 = icmp eq i64 %5, 0
  br i1 %.not.i126, label %bary_small_lshift.exit124.thread, label %bb.ac

bb.ac:                                            ; preds = %rbimpl_size_mul_or_raise.exit.thread, %rbimpl_size_mul_or_raise.exit
  %.1179182 = phi ptr [ %i.du, %rbimpl_size_mul_or_raise.exit.thread ], [ %.1, %rbimpl_size_mul_or_raise.exit ] ; 2 uses
  %i.dw = shl nuw i64 %5, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.1179182, ptr noundef nonnull readonly align 1 %4, i64 noundef range(i64 1, 0) %i.dw, i1 noundef false) #23
  br label %bary_small_lshift.exit124.thread

bary_small_lshift.exit124:                        ; preds = %bary_small_lshift.exit
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.086141, i64 noundef %i.c, ptr noundef nonnull %.089139, i64 noundef %7)
  br i1 %.not105, label %.loopexit151, label %bary_small_rshift.exit

bary_small_lshift.exit124.thread184.unr-lcssa:    ; preds = %bb.u
  %lcmp.mod195.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod195.not, label %bary_small_lshift.exit124.thread184, label %.epil.preheader192

.epil.preheader192:                               ; preds = %bary_small_lshift.exit124.thread184.unr-lcssa, %.lr.ph.i116
  %.015.i117.epil.init = phi i64 [ 0, %.lr.ph.i116 ], [ %i.dm, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %.01013.i119.epil.init = phi ptr [ %.089139, %.lr.ph.i116 ], [ %i.dl, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %.01112.i120.epil.init = phi ptr [ %6, %.lr.ph.i116 ], [ %i.df, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %lcmp.mod196 = icmp ne i64 %xtraiter193, 0
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader192
  %.015.i117.epil = phi i64 [ %.015.i117.epil.init, %.epil.preheader192 ], [ %i.ee, %bb.ad ]
  %.01013.i119.epil = phi ptr [ %.01013.i119.epil.init, %.epil.preheader192 ], [ %i.ed, %bb.ad ] ; 2 uses
  %.01112.i120.epil = phi ptr [ %.01112.i120.epil.init, %.epil.preheader192 ], [ %i.dx, %bb.ad ] ; 2 uses
  %epil.iter194 = phi i64 [ 0, %.epil.preheader192 ], [ %epil.iter194.next, %bb.ad ]
  %i.dx = getelementptr i8, ptr %.01112.i120.epil, i64 4
  %i.dy = load i32, ptr %.01112.i120.epil, align 4, !tbaa !7
  %i.dz = zext i32 %i.dy to i64
  %i.ea = shl nuw i64 %i.dz, %i.ce                ; 2 uses
  %i.eb = or i64 %i.ea, %.015.i117.epil
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr i8, ptr %.01013.i119.epil, i64 4
  store i32 %i.ec, ptr %.01013.i119.epil, align 4, !tbaa !7
  %i.ee = lshr i64 %i.ea, 32
  %epil.iter194.next = add i64 %epil.iter194, 1   ; 2 uses
  %epil.iter194.cmp.not = icmp eq i64 %epil.iter194.next, %xtraiter193
  br i1 %epil.iter194.cmp.not, label %bary_small_lshift.exit124.thread184, label %bb.ad, !llvm.loop !155

bary_small_lshift.exit124.thread184:              ; preds = %bb.ad, %bary_small_lshift.exit124.thread184.unr-lcssa
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.086141, i64 noundef %i.c, ptr noundef nonnull %.089139, i64 noundef %7)
  br i1 %.not105, label %.loopexit151, label %.lr.ph.i128

bary_small_lshift.exit124.thread:                 ; preds = %bb.ac, %rbimpl_size_mul_or_raise.exit
  %.1179183 = phi ptr [ %.1179182, %bb.ac ], [ %.1, %rbimpl_size_mul_or_raise.exit ] ; 6 uses
  %i.ef = getelementptr [4 x i8], ptr %.1179183, i64 %5
  store i32 0, ptr %i.ef, align 4, !tbaa !7
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.1179183, i64 noundef %i.c, ptr noundef nonnull %6, i64 noundef %7)
  %.not107144 = icmp eq ptr %2, null
  br i1 %.not107144, label %.loopexit151, label %.thread147

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
  %i.n = load i32, ptr %i.m, align 8, !tbaa !7
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
end_hunk_0
begin_hunk_1_@rb_integer_unpack:bb.a
  store i64 %.sink.i, ptr %i.dc, align 8, !tbaa !13
  br i1 %i.da, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bary_zero_p.exit.thread128.thread, %bary_zero_p.exit.thread128
  %.in156 = phi i64 [ %.in153, %bary_zero_p.exit.thread128.thread ], [ %.in, %bary_zero_p.exit.thread128 ] ; 3 uses
  %i.dt = and i64 %.in156, 16384
  %.not.i.i94 = icmp eq i64 %i.dt, 0              ; 2 uses
  br i1 %.not.i.i94, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = lshr i64 %.in156, 15
  %i.dv = and i64 %i.du, 511
  %i.dw = getelementptr i8, ptr %i.dc, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dx = getelementptr i8, ptr %i.dc, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !15
  %i.dz = getelementptr i8, ptr %i.dc, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.al, %bb.ak
  %.0.i21.i = phi i64 [ %i.dv, %bb.ak ], [ %i.dy, %bb.al ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.dw, %bb.ak ], [ %i.ea, %bb.al ]
  %i.eb = icmp eq i64 %.0.i21.i, 0
  br i1 %i.eb, label %bigtrunc.exit, label %.preheader.i95.preheader

.preheader.i95.preheader:                         ; preds = %BIGNUM_DIGITS.exit.i
  %i.ec = add i64 %.0.i21.i, -1                   ; 2 uses
  %.not.i96161 = icmp eq i64 %i.ec, 0
  br i1 %.not.i96161, label %.critedge.i, label %.lr.ph

.preheader.i95:                                   ; preds = %.lr.ph
  %i.ed = add i64 %i.ee, -1                       ; 2 uses
  %.not.i96 = icmp eq i64 %i.ed, 0
  br i1 %.not.i96, label %.critedge.i, label %.lr.ph, !llvm.loop !150

.lr.ph:                                           ; preds = %.preheader.i95.preheader, %.preheader.i95
  %i.ee = phi i64 [ %i.ed, %.preheader.i95 ], [ %i.ec, %.preheader.i95.preheader ] ; 4 uses
  %.012.i162 = phi i64 [ %i.ee, %.preheader.i95 ], [ %.0.i21.i, %.preheader.i95.preheader ]
  %i.ef = getelementptr [4 x i8], ptr %.0.i16.i, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  %.not14.i = icmp eq i32 %i.eg, 0
  br i1 %.not14.i, label %.preheader.i95, label %..critedge.i_crit_edge, !llvm.loop !150

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !150

.critedge.i:                                      ; preds = %.preheader.i95, %..critedge.i_crit_edge, %.preheader.i95.preheader
  %.012.i.lcssa = phi i64 [ %.012.i162, %..critedge.i_crit_edge ], [ %.0.i21.i, %.preheader.i95.preheader ], [ %i.ee, %.preheader.i95 ] ; 2 uses
  br i1 %.not.i.i94, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge.i
  %i.eh = getelementptr i8, ptr %i.dc, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit19.i

bb.an:                                            ; preds = %.critedge.i
  %i.ej = lshr i64 %.in156, 15
  %i.ek = and i64 %i.ej, 511
  br label %BIGNUM_LEN.exit19.i

BIGNUM_LEN.exit19.i:                              ; preds = %bb.an, %bb.am
  %.0.i18.i = phi i64 [ %i.ek, %bb.an ], [ %i.ei, %bb.am ]
  %i.el = icmp ugt i64 %.0.i18.i, %.012.i.lcssa
  br i1 %i.el, label %bb.ao, label %bigtrunc.exit

bb.ao:                                            ; preds = %BIGNUM_LEN.exit19.i
  call void @rb_big_resize(i64 noundef %.3, i64 noundef %.012.i.lcssa)
  br label %bigtrunc.exit

bb.ap:                                            ; preds = %bary_zero_p.exit.thread128
  %i.em = icmp ne i64 %.3, 0
  %i.en = and i64 %.3, 7
  %i.eo = icmp eq i64 %i.en, 0
  %.not136 = and i1 %i.em, %i.eo
  %i.ep = and i64 %.in, 31
  %i.eq = icmp eq i64 %i.ep, 10
  %or.cond133 = select i1 %.not136, i1 %i.eq, i1 false
  br i1 %or.cond133, label %bb.aq, label %bigtrunc.exit

bb.aq:                                            ; preds = %bb.ap
  %i.er = and i64 %.in, 16384
  %.not.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.es = lshr i64 %.in, 15
  %i.et = and i64 %i.es, 511
  %i.eu = getelementptr i8, ptr %i.dc, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ev = getelementptr i8, ptr %i.dc, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !15
  %i.ex = getelementptr i8, ptr %i.dc, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.as, %bb.ar
  %.0.i28.i.i = phi i64 [ %i.et, %bb.ar ], [ %i.ew, %bb.as ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.eu, %bb.ar ], [ %i.ey, %bb.as ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bigtrunc.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.at
  %indvar = phi i32 [ %indvar.next, %bb.at ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.fd, %bb.at ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.ez = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.fa = getelementptr i8, ptr %i.ez, i64 -4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.at, label %.critedge.i.i

bb.at:                                            ; preds = %.lr.ph.i.i
  %i.fd = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.fd, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bigtrunc.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.fe = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.fe, label %bb.ay, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ff = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.fg = trunc i64 %.0.i28.i.i to i32
  %i.fh = sub i32 %indvar, %i.fg
  %i.fi = icmp ugt i32 %i.fh, -4
  br i1 %i.fi, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.fj, %.lr.ph36.i.i ], [ %i.ff, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.fj = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.fk = add i32 %.035.i.i, -3
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = zext i32 %i.fn to i64
  %i.fp = shl nuw i64 %i.fo, 32
  %i.fq = sext i32 %i.fj to i64
  %i.fr = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !7
  %i.ft = zext i32 %i.fs to i64
  %i.fu = or disjoint i64 %i.fp, %i.ft
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.ff, %.lr.ph36.preheader.i.i ], [ %i.fj, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.fu, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.fv, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.gb, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.fv = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.fw = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.fx = sext i32 %i.fv to i64
  %i.fy = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !7
  %i.ga = zext i32 %i.fz to i64
  %i.gb = or disjoint i64 %i.fw, %i.ga            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.ff
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !166

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.gc = icmp ult i64 %i.fw, 4611686018427387904
  %.not.i.i98 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i98, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.gc, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.gd = shl nuw nsw i64 %i.gb, 1
  %i.ge = or disjoint i64 %i.gd, 1
  br label %bigtrunc.exit

bb.aw:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.gf = icmp ult i64 %i.gb, 4611686018427387905
  br i1 %i.gf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.neg.i.i = mul nsw i64 %i.gb, -2
  %i.gg = or disjoint i64 %.neg.i.i, 1
  br label %bigtrunc.exit

bb.ay:                                            ; preds = %bb.aw, %bb.au, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %.3, i64 noundef %.02332.i.i)
  br label %bigtrunc.exit

bigtrunc.exit:                                    ; preds = %bb.at, %bb.z, %bb.x, %.thread111, %bb.ay, %bb.ax, %bb.av, %BIGNUM_DIGITS.exit.i.i, %bb.ap, %bb.ao, %BIGNUM_LEN.exit19.i, %BIGNUM_DIGITS.exit.i
  %.1 = phi i64 [ %i.cj, %bb.x ], [ %.3, %bb.ao ], [ %.3, %BIGNUM_DIGITS.exit.i ], [ %.3, %BIGNUM_LEN.exit19.i ], [ %.3, %bb.ap ], [ 1, %.thread111 ], [ %i.gg, %bb.ax ], [ %.3, %bb.ay ], [ %i.ge, %bb.av ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.cm, %bb.z ], [ 1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_absint_size(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i64 @rb_to_int(i64 noundef %0) #23 ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %i.b, 1
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %i.e = trunc i64 %spec.select to i32
  store i32 %i.e, ptr %i.a, align 4, !tbaa !7
  %i.f = lshr i64 %spec.select, 32
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = and i64 %i.k, 16384
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.j, i64 16
  %i.r = lshr i64 %i.k, 15
  %i.s = and i64 %i.r, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i41 = phi ptr [ %i.q, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %.0.i39 = phi i64 [ %i.s, %bb.e ], [ %i.p, %bb.d ]
  %i.t = getelementptr [4 x i8], ptr %.0.i41, i64 %.0.i39
  br label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit, %bb.b
  %.032 = phi ptr [ %i.a, %bb.b ], [ %.0.i41, %BIGNUM_LEN.exit ] ; 3 uses
  %.030 = phi ptr [ %i.i, %bb.b ], [ %i.t, %BIGNUM_LEN.exit ]
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.131 = phi ptr [ %.030, %bb.f ], [ %i.v, %bb.h ] ; 5 uses
  %i.u = icmp ult ptr %.032, %.131
  br i1 %i.u, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.131, i64 -4      ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %.critedge, !llvm.loop !167

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.y = icmp eq ptr %.032, %.131
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.critedge
  %.not37 = icmp eq ptr %1, null
  br i1 %.not37, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %1, align 4, !tbaa !7
  br label %bb.n

bb.k:                                             ; preds = %.critedge
  %i.z = getelementptr i8, ptr %.131, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 false) ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = and i32 %i.ab, 7
  store i32 %i.ac, ptr %1, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = ptrtoint ptr %.131 to i64
  %i.ae = ptrtoint ptr %.032 to i64
  %i.af = lshr i32 %i.ab, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = sub i64 %i.ad, %i.ah
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.m
  %.029 = phi i64 [ %i.ai, %bb.m ], [ 0, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.029
}

declare i64 @rb_to_int(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_absint_numwords(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 17 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  %i.c = alloca [4 x i32], align 16               ; 19 uses
  %i.d = alloca [2 x i32], align 8                ; 13 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca [2 x i32], align 8                ; 6 uses
  %i.h = icmp eq i64 %1, 0
  %.140.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.140.i.i.i.i.sroa.gep19 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.i = tail call i64 @rb_to_int(i64 noundef %0) #23 ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = ashr i64 %i.i, 1
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.k, i1 true)
  store i64 %spec.select.i, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %i.o = and i64 %i.n, 16384
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.m, i64 16
  %i.u = lshr i64 %i.n, 15
  %i.v = and i64 %i.u, 511
  br label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.f, %bb.e
  %.0.i41.i = phi ptr [ %i.t, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.0.i39.i = phi i64 [ %i.v, %bb.f ], [ %i.s, %bb.e ]
  %i.w = getelementptr [4 x i8], ptr %.0.i41.i, i64 %.0.i39.i
  br label %bb.g

bb.g:                                             ; preds = %BIGNUM_LEN.exit.i, %bb.c
  %.032.i = phi ptr [ %i.g, %bb.c ], [ %.0.i41.i, %BIGNUM_LEN.exit.i ] ; 3 uses
  %.030.i = phi ptr [ %i.l, %bb.c ], [ %i.w, %BIGNUM_LEN.exit.i ]
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.131.i = phi ptr [ %.030.i, %bb.g ], [ %i.y, %bb.i ] ; 5 uses
  %i.x = icmp ult ptr %.032.i, %.131.i
  br i1 %i.x, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %.131.i, i64 -4    ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.critedge.i, !llvm.loop !167

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %i.ab = icmp eq ptr %.032.i, %.131.i
  br i1 %i.ab, label %rb_absint_size.exit.thread, label %rb_absint_size.exit

rb_absint_size.exit.thread:                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.j

rb_absint_size.exit:                              ; preds = %.critedge.i
  %i.ac = getelementptr i8, ptr %.131.i, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 false) ; 2 uses
  %i.af = and i32 %i.ae, 7                        ; 3 uses
  %i.ag = ptrtoint ptr %.131.i to i64
  %i.ah = ptrtoint ptr %.032.i to i64
  %i.ai = lshr i32 %i.ae, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add i64 %i.ah, %i.aj
  %i.al = sub i64 %i.ag, %i.ak                    ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.am = icmp ult i64 %i.al, 2305843009213693952
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_absint_size.exit.thread, %rb_absint_size.exit
  %.029.i25 = phi i64 [ 0, %rb_absint_size.exit.thread ], [ %i.al, %rb_absint_size.exit ]
  %.02124 = phi i32 [ 0, %rb_absint_size.exit.thread ], [ %i.af, %rb_absint_size.exit ]
  %i.an = shl nuw i64 %.029.i25, 3
  %i.ao = zext nneg i32 %.02124 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = udiv i64 %i.ap, %1
  %i.ar = urem i64 %i.ap, %1                      ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0                    ; 2 uses
  %i.at = zext i1 %i.as to i64
  %i.au = add i64 %i.aq, %i.at
  %i.av = sub i64 %1, %i.ar
  %i.aw = select i1 %i.as, i64 %i.av, i64 0
  br label %bb.v

bb.k:                                             ; preds = %rb_absint_size.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i32 0, ptr %i.a, align 8
  %.0103142.lcssa172180183.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.0103142.lcssa172180183.i.sroa.gep33.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %.0103142.lcssa172180183.i.sroa.gep34.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.ax = and i64 %i.al, 4294967295
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bary_muladd_1xN.exit.i.i.1.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.k
  %i.az = shl i64 %i.al, 3                        ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !7
  %i.bb = lshr i64 %i.az, 32
  %i.bc = and i64 %i.bb, 7
  br label %bary_muladd_1xN.exit.i.i.1.i

bary_muladd_1xN.exit.i.i.1.i:                     ; preds = %.lr.ph.i.preheader.i.i.i, %bb.k
  %i.bd = phi i32 [ 0, %bb.k ], [ %i.ba, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.be = phi i64 [ 0, %bb.k ], [ %i.bc, %.lr.ph.i.preheader.i.i.i ]
  %i.bf = lshr i64 %i.al, 29
  %i.bg = and i64 %i.bf, 34359738360
  %i.bh = or disjoint i64 %i.bg, %i.be            ; 2 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  store i32 %i.bi, ptr %.140.i.i.i.i.sroa.gep19, align 4, !tbaa !7
  %i.bj = lshr i64 %i.al, 61
  %i.bk = trunc nuw nsw i64 %i.bj to i32          ; 5 uses
  store i32 %i.bk, ptr %.140.i.i.i.i.sroa.gep, align 8, !tbaa !7
  call void @rb_thread_check_ints() #23
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bary_sub.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bary_muladd_1xN.exit.i.i.1.i
  %i.bl = zext nneg i32 %i.af to i64
  %i.bm = zext i32 %i.bd to i64
  %i.bn = sub nsw i64 %i.bm, %i.bl                ; 2 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 4 uses
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !7
  %i.bp = icmp ult i64 %i.bn, 4294967296
  br i1 %i.bp, label %bary_sub.exit.i, label %.lr.ph82.i.i.1.i

.lr.ph82.i.i.1.i:                                 ; preds = %.lr.ph.i.i.preheader.i
  %i.bq = and i64 %i.bh, 4294967295
  %i.br = add nsw i64 %i.bq, -1                   ; 2 uses
  %i.bs = trunc i64 %i.br to i32                  ; 3 uses
  store i32 %i.bs, ptr %.140.i.i.i.i.sroa.gep19, align 4, !tbaa !7
  %i.bt = icmp ult i64 %i.br, 4294967296
  br i1 %i.bt, label %bary_sub.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph82.i.i.1.i
  %i.bu = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bu, ptr %.140.i.i.i.i.sroa.gep, align 8, !tbaa !7
  br label %bary_sub.exit.i

bary_sub.exit.i:                                  ; preds = %bb.l, %.lr.ph82.i.i.1.i, %.lr.ph.i.i.preheader.i, %bary_muladd_1xN.exit.i.i.1.i
  %i.bv = phi i32 [ %i.bo, %bb.l ], [ %i.bo, %.lr.ph82.i.i.1.i ], [ %i.bo, %.lr.ph.i.i.preheader.i ], [ %i.bd, %bary_muladd_1xN.exit.i.i.1.i ] ; 4 uses
  %i.bw = phi i32 [ %i.bs, %bb.l ], [ %i.bs, %.lr.ph82.i.i.1.i ], [ %i.bi, %.lr.ph.i.i.preheader.i ], [ %i.bi, %bary_muladd_1xN.exit.i.i.1.i ] ; 2 uses
  %i.bx = phi i32 [ %i.bu, %bb.l ], [ %i.bk, %.lr.ph82.i.i.1.i ], [ %i.bk, %.lr.ph.i.i.preheader.i ], [ %i.bk, %bary_muladd_1xN.exit.i.i.1.i ] ; 2 uses
  store i64 %1, ptr %i.b, align 8
  %i.by = lshr i64 %1, 32                         ; 2 uses
  %.not.i.i16 = icmp ne i64 %i.by, 0              ; 4 uses
  %i.bz = trunc i64 %1 to i32                     ; 5 uses
  br i1 %.not.i.i16, label %.critedge.preheader.thread.i.i, label %bb.m

.critedge.preheader.i.i:                          ; preds = %bb.m
  %i.ca = icmp eq i32 %i.bx, 0
  br i1 %i.ca, label %.critedge.i.i, label %._crit_edge.i.i

.critedge.preheader.thread.i.i:                   ; preds = %bary_sub.exit.i
  %i.cb = trunc nuw i64 %i.by to i32
  %i.cc = icmp eq i32 %i.bx, 0
  br i1 %i.cc, label %.critedge.i.i, label %.thread184.i.i

bb.m:                                             ; preds = %bary_sub.exit.i
  %i.cd = icmp eq i32 %i.bz, 0
  br i1 %i.cd, label %bb.n, label %.critedge.preheader.i.i

bb.n:                                             ; preds = %bb.m
  call void @rb_num_zerodiv() #27
  unreachable

.critedge.i.i:                                    ; preds = %.critedge.preheader.thread.i.i, %.critedge.preheader.i.i
  %.lcssa163190.i.i = phi i32 [ %i.cb, %.critedge.preheader.thread.i.i ], [ %i.bz, %.critedge.preheader.i.i ] ; 2 uses
  %.not191.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not191.i.i, label %.critedge.1.i.i, label %.critedge2.thread.i.i

.critedge.1.i.i:                                  ; preds = %.critedge.i.i
  %i.ce = icmp eq i32 %i.bv, 0
  br i1 %i.ce, label %.preheader.i.1.thread.i, label %.critedge2.i.i

.preheader.i.1.thread.i:                          ; preds = %.critedge.1.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !tbaa !7
  store i64 0, ptr %i.d, align 8
  br label %bary_zero_p.exit.i

.critedge2.i.i:                                   ; preds = %.critedge.1.i.i
  %i.cf = icmp ult i32 %i.bv, %.lcssa163190.i.i
  %or.cond.not.i = or i1 %.not.i.i16, %i.cf
  br i1 %or.cond.not.i, label %.lr.ph152.preheader.i.i, label %._crit_edge.i.i

.critedge2.thread.i.i:                            ; preds = %.critedge.i.i
  %i.cg = icmp ult i32 %i.bw, %.lcssa163190.i.i
  %or.cond132.i.i = and i1 %.not.i.i16, %i.cg
  br i1 %or.cond132.i.i, label %rbimpl_size_mul_or_raise.exit.i.i, label %bb.o

rbimpl_size_mul_or_raise.exit.i.i:                ; preds = %.critedge2.thread.i.i
  %i.ch = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ch, ptr %i.d, align 8
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = trunc nuw i64 %i.ci to i32
  br label %.preheader134.i.i

.lr.ph152.preheader.i.i:                          ; preds = %.critedge2.i.i
  store i32 %i.bv, ptr %i.d, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.ck, align 4
  br label %.preheader134.i.i

.preheader134.i.i:                                ; preds = %.lr.ph152.preheader.i.i, %rbimpl_size_mul_or_raise.exit.i.i
  %i.cl = phi i32 [ %i.cj, %rbimpl_size_mul_or_raise.exit.i.i ], [ 0, %.lr.ph152.preheader.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !tbaa !7
  br label %bary_divmod.exit.i

bb.o:                                             ; preds = %.critedge2.thread.i.i
  br i1 %.not.i.i16, label %bb.t, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %.critedge2.i.i, %.critedge.preheader.i.i
  %.0103142.lcssa172180183.i.sroa.phi.i = phi ptr [ %.0103142.lcssa172180183.i.sroa.gep.i, %bb.o ], [ %.0103142.lcssa172180183.i.sroa.gep33.i, %.critedge.preheader.i.i ], [ %.0103142.lcssa172180183.i.sroa.gep34.i, %.critedge2.i.i ]
  %exitcond.not.i.i.i9.i = phi i1 [ false, %bb.o ], [ false, %.critedge.preheader.i.i ], [ true, %.critedge2.i.i ] ; 2 uses
  %exitcond.not.i.i.i9.i.1 = phi i1 [ true, %bb.o ], [ false, %.critedge.preheader.i.i ], [ false, %.critedge2.i.i ] ; 2 uses
  %.0103142.lcssa172180183.i.i = phi i64 [ 2, %bb.o ], [ 3, %.critedge.preheader.i.i ], [ 1, %.critedge2.i.i ] ; 7 uses
  %i.cm = shl nuw nsw i64 %.0103142.lcssa172180183.i.i, 2 ; 2 uses
  %i.cn = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.a, i64 noundef range(i64 1, 0) %i.cm, i64 noundef 16) #23, !alias.scope !168 ; 0 uses
  %i.co = sub nuw nsw i64 16, %i.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0103142.lcssa172180183.i.sroa.phi.i, i8 0, i64 %i.co, i1 false), !tbaa !7
  %i.cp = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bz)
  %i.cq = icmp samesign ult i32 %i.cp, 2
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i8.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i
  %i.cr = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 false)
  %i.cs = sub nsw i32 31, %i.cr
  %i.ct = zext nneg i32 %i.cs to i64              ; 3 uses
  %i.cu = add nsw i64 %.0103142.lcssa172180183.i.i, -1 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, %i.ct
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = getelementptr [4 x i8], ptr %i.c, i64 %i.cu
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !7
  br i1 %exitcond.not.i.i.i9.i, label %bigdivrem_single.exit.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i.1 = shl nuw i64 %i.cx, 32
  %i.db = add nsw i64 %.0103142.lcssa172180183.i.i, -2 ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %i.a, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = or disjoint i64 %.014.i.i.i.i.i.1, %i.de
  %i.dg = lshr i64 %i.df, %i.ct
  %i.dh = trunc i64 %i.dg to i32
  %i.di = getelementptr [4 x i8], ptr %i.c, i64 %i.db
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !7
  br i1 %exitcond.not.i.i.i9.i.1, label %bigdivrem_single.exit.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.014.i.i.i.i.i.2 = shl nuw i64 %i.de, 32
  %i.dj = add nsw i64 %.0103142.lcssa172180183.i.i, -3 ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %i.a, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = zext i32 %i.dl to i64
  %i.dn = or disjoint i64 %.014.i.i.i.i.i.2, %i.dm
  %i.do = lshr i64 %i.dn, %i.ct
  %i.dp = trunc i64 %i.do to i32
  %i.dq = getelementptr [4 x i8], ptr %i.c, i64 %i.dj
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !7
  br label %bigdivrem_single.exit.loopexit.i.i

.lr.ph.i.i.i8.i:                                  ; preds = %._crit_edge.i.i
  %i.dr = and i64 %1, 4294967295                  ; 6 uses
  %i.ds = add nsw i64 %.0103142.lcssa172180183.i.i, -1 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.a, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = udiv i64 %i.dv, %i.dr
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = getelementptr [4 x i8], ptr %i.c, i64 %i.ds
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !7
  %i.dz = urem i64 %i.dv, %i.dr                   ; 2 uses
  br i1 %exitcond.not.i.i.i9.i, label %._crit_edge.loopexit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i8.i
  %i.ea = shl nuw i64 %i.dz, 32
  %i.eb = add nsw i64 %.0103142.lcssa172180183.i.i, -2 ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.a, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = zext i32 %i.ed to i64
  %i.ef = or disjoint i64 %i.ea, %i.ee            ; 2 uses
  %i.eg = udiv i64 %i.ef, %i.dr
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr [4 x i8], ptr %i.c, i64 %i.eb
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !7
  %i.ej = urem i64 %i.ef, %i.dr                   ; 2 uses
  br i1 %exitcond.not.i.i.i9.i.1, label %._crit_edge.loopexit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = shl nuw i64 %i.ej, 32
  %i.el = add nsw i64 %.0103142.lcssa172180183.i.i, -3 ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %i.a, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = zext i32 %i.en to i64
  %i.ep = or disjoint i64 %i.ek, %i.eo            ; 2 uses
  %i.eq = udiv i64 %i.ep, %i.dr
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr [4 x i8], ptr %i.c, i64 %i.el
  store i32 %i.er, ptr %i.es, align 4, !tbaa !7
  %i.et = urem i64 %i.ep, %i.dr
  br label %._crit_edge.loopexit.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i8.i
  %.lcssa = phi i64 [ %i.dz, %.lr.ph.i.i.i8.i ], [ %i.ej, %bb.r ], [ %i.et, %bb.s ]
  %i.eu = trunc nuw i64 %.lcssa to i32
  br label %bigdivrem_single.exit.i.i

bigdivrem_single.exit.loopexit.i.i:               ; preds = %bb.q, %bb.p, %.lr.ph.i.i.i.i.i
  %i.ev = add i32 %i.bz, -1
  %i.ew = and i32 %i.bv, %i.ev
  br label %bigdivrem_single.exit.i.i

bigdivrem_single.exit.i.i:                        ; preds = %bigdivrem_single.exit.loopexit.i.i, %._crit_edge.loopexit.i.i.i.i
  %.027.i.i.i.i = phi i32 [ %i.eu, %._crit_edge.loopexit.i.i.i.i ], [ %i.ew, %bigdivrem_single.exit.loopexit.i.i ] ; 2 uses
  store i32 %.027.i.i.i.i, ptr %i.d, align 8, !tbaa !7
  %.0108.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %.0108.i.i, align 4, !tbaa !7
  br label %.preheader.i.1.i

bb.t:                                             ; preds = %bb.o
  %i.ex = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ey = udiv i64 %i.ex, %1
  store i64 %i.ey, ptr %i.c, align 16
  store i64 0, ptr %.0103142.lcssa172180183.i.sroa.gep.i, align 8
  %i.ez = urem i64 %i.ex, %1                      ; 2 uses
  store i64 %i.ez, ptr %i.d, align 8
  %i.fa = lshr i64 %i.ez, 32
  %i.fb = trunc nuw i64 %i.fa to i32
  br label %bary_divmod.exit.i

.thread184.i.i:                                   ; preds = %.critedge.preheader.thread.i.i
  call fastcc void @bary_divmod_normal(ptr noundef nonnull %i.c, i64 noundef 4, ptr noundef nonnull %i.d, i64 noundef 2, ptr noundef nonnull readonly %i.a, i64 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !7
  br label %bary_divmod.exit.i

bary_divmod.exit.i:                               ; preds = %.thread184.i.i, %bb.t, %.preheader134.i.i
  %i.fc = phi i32 [ %i.fb, %bb.t ], [ %i.cl, %.preheader134.i.i ], [ %.pre.i, %.thread184.i.i ]
  %.not.i10.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i10.i, label %.preheader.i.1thread-pre-split.i, label %.lr.ph.i.i11.preheader.i

.lr.ph.i.i11.preheader.i:                         ; preds = %.preheader.i.1.i, %bary_divmod.exit.i
  %i.fd = load i32, ptr %i.c, align 16, !tbaa !7  ; 2 uses
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.c, align 16, !tbaa !7
  %.not45.i = icmp eq i32 %i.fd, -1
  br i1 %.not45.i, label %.lr.ph83.i.i.1.i, label %bary_add.exit.i

.preheader.i.1thread-pre-split.i:                 ; preds = %bary_divmod.exit.i
  %.pr.i = load i32, ptr %i.d, align 8, !tbaa !7
  br label %.preheader.i.1.i

.preheader.i.1.i:                                 ; preds = %.preheader.i.1thread-pre-split.i, %bigdivrem_single.exit.i.i
  %i.ff = phi i32 [ %.pr.i, %.preheader.i.1thread-pre-split.i ], [ %.027.i.i.i.i, %bigdivrem_single.exit.i.i ]
  %.not.i10.1.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i10.1.i, label %bary_zero_p.exit.i, label %.lr.ph.i.i11.preheader.i

.lr.ph83.i.i.1.i:                                 ; preds = %.lr.ph.i.i11.preheader.i
  %i.fg = load i32, ptr %.0103142.lcssa172180183.i.sroa.gep34.i, align 4, !tbaa !7 ; 2 uses
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %.0103142.lcssa172180183.i.sroa.gep34.i, align 4, !tbaa !7
  %.not46.i = icmp eq i32 %i.fg, -1
  br i1 %.not46.i, label %.lr.ph83.i.i.2.i, label %bary_add.exit.i

.lr.ph83.i.i.2.i:                                 ; preds = %.lr.ph83.i.i.1.i
  %i.fi = load i32, ptr %.0103142.lcssa172180183.i.sroa.gep.i, align 8, !tbaa !7 ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %.0103142.lcssa172180183.i.sroa.gep.i, align 8, !tbaa !7
  %.not47.i = icmp eq i32 %i.fi, -1
  br i1 %.not47.i, label %bb.u, label %bary_add.exit.i

bb.u:                                             ; preds = %.lr.ph83.i.i.2.i
  %i.fk = load i32, ptr %.0103142.lcssa172180183.i.sroa.gep33.i, align 4, !tbaa !7
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %.0103142.lcssa172180183.i.sroa.gep33.i, align 4, !tbaa !7
  br label %bary_add.exit.i

bary_add.exit.i:                                  ; preds = %bb.u, %.lr.ph83.i.i.2.i, %.lr.ph83.i.i.1.i, %.lr.ph.i.i11.preheader.i
  %i.fm = call fastcc i32 @bary_pack(i32 noundef 1, ptr noundef nonnull %i.d, i64 noundef 2, ptr noundef %i.e, i64 noundef 1, i64 noundef 8, i64 noundef 0, i32 noundef 64) ; 0 uses
  %i.fn = load i64, ptr %i.e, align 8, !tbaa !11
  %i.fo = sub i64 %1, %i.fn
  br label %bary_zero_p.exit.i

bary_zero_p.exit.i:                               ; preds = %bary_add.exit.i, %.preheader.i.1.i, %.preheader.i.1.thread.i
  %.05.i = phi i64 [ %i.fo, %bary_add.exit.i ], [ 0, %.preheader.i.1.i ], [ 0, %.preheader.i.1.thread.i ]
  %i.fp = call fastcc i32 @bary_pack(i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 4, ptr noundef %i.f, i64 noundef 1, i64 noundef 8, i64 noundef 0, i32 noundef 64)
  %i.fq = icmp eq i32 %i.fp, 2
  %i.fr = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %i.fq, label %.thread, label %bb.v

bb.v:                                             ; preds = %bary_zero_p.exit.i, %bb.j
  %.020 = phi i64 [ %i.aw, %bb.j ], [ %.05.i, %bary_zero_p.exit.i ]
  %.0 = phi i64 [ %i.au, %bb.j ], [ %i.fr, %bary_zero_p.exit.i ] ; 3 uses
  %i.fs = icmp eq i64 %.0, -1
  br i1 %i.fs, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.020, ptr %2, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bary_zero_p.exit.i, %bb.w, %bb.x, %bb.v, %bb.a
  %.012 = phi i64 [ -1, %bb.v ], [ -1, %bb.a ], [ %.0, %bb.x ], [ %.0, %bb.w ], [ -1, %bary_zero_p.exit.i ]
  ret i64 %.012
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_absint_singlebit_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i64 @rb_to_int(i64 noundef %0) #23 ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %i.b, 1
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %i.e = trunc i64 %spec.select to i32
  store i32 %i.e, ptr %i.a, align 4, !tbaa !7
  %i.f = lshr i64 %spec.select, 32
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = and i64 %i.k, 16384
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.j, i64 16
  %i.r = lshr i64 %i.k, 15
  %i.s = and i64 %i.r, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i41 = phi ptr [ %i.q, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %.0.i39 = phi i64 [ %i.s, %bb.e ], [ %i.p, %bb.d ]
  %i.t = getelementptr [4 x i8], ptr %.0.i41, i64 %.0.i39
  br label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit, %bb.b
  %.034 = phi ptr [ %i.a, %bb.b ], [ %.0.i41, %BIGNUM_LEN.exit ] ; 3 uses
  %.032 = phi ptr [ %i.i, %bb.b ], [ %i.t, %BIGNUM_LEN.exit ]
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.133 = phi ptr [ %.032, %bb.f ], [ %i.v, %bb.h ] ; 4 uses
  %i.u = icmp ult ptr %.034, %.133
  br i1 %i.u, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.133, i64 -4      ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %.lr.ph, !llvm.loop !172

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.13545 = phi ptr [ %i.aa, %bb.i ], [ %.034, %bb.h ] ; 3 uses
  %i.y = load i32, ptr %.13545, align 4, !tbaa !7
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.13545, i64 4    ; 3 uses
  %i.ab = icmp ult ptr %i.aa, %.133
  br i1 %i.ab, label %.lr.ph, label %.critedge2, !llvm.loop !173

.critedge2:                                       ; preds = %bb.g, %.lr.ph, %bb.i
  %.135.lcssa = phi ptr [ %.13545, %.lr.ph ], [ %i.aa, %bb.i ], [ %.034, %bb.g ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.133, i64 -4
  %.not = icmp eq ptr %.135.lcssa, %i.ac
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge2
  %i.ad = load i32, ptr %.135.lcssa, align 4, !tbaa !7
  %i.ae = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = icmp samesign ult i32 %i.ae, 2
  %i.ag = zext i1 %i.af to i32
  br label %bb.k

bb.k:                                             ; preds = %.critedge2, %bb.j
  %.031 = phi i32 [ %i.ag, %bb.j ], [ 0, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.031
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @bary_pack(i32 noundef range(i32 -1, 2) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr [4 x i8], ptr %1, i64 %2
  tail call fastcc void @validate_integer_pack_format(i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef 1267)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0476 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.c ] ; 20 uses
  %i.b = icmp ult ptr %1, %.0476                  ; 3 uses
  br i1 %i.b, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0476, i64 -4     ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !174

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.f = icmp eq ptr %1, %.0476                   ; 3 uses
  %spec.select = select i1 %i.f, i32 0, i32 %0    ; 19 uses
  %i.g = and i32 %7, 1024
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.as

bb.d:                                             ; preds = %.critedge
  %i.h = icmp eq i32 %spec.select, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = mul i64 %5, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %3, i8 noundef 0, i64 noundef %i.i, i1 noundef false) #23
  br label %.thread494

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %6, 0                        ; 2 uses
  %i.k = icmp eq i64 %4, 1
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.g, label %..thread498_crit_edge

..thread498_crit_edge:                            ; preds = %bb.f
  %.pre = and i32 %7, 112
  br label %.thread498

bb.g:                                             ; preds = %bb.f
  %.not311 = icmp eq i64 %5, 1
  %i.l = and i32 %7, 112                          ; 7 uses
  %.not312 = icmp eq i32 %i.l, 64
  %or.cond329 = or i1 %.not311, %.not312
  br i1 %or.cond329, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = and i32 %7, 16
  %i.n = icmp ne i32 %i.m, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = phi i1 [ %i.n, %bb.h ], [ false, %bb.g ] ; 4 uses
  %i.p = icmp sgt i32 %spec.select, 0
  %i.q = and i32 %7, 128
  %.not313 = icmp eq i32 %i.q, 0
  %or.cond330 = or i1 %.not313, %i.p
  br i1 %or.cond330, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  switch i64 %5, label %.thread498 [
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.r = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.s = trunc i32 %i.r to i8
  store i8 %i.s, ptr %3, align 1, !tbaa !15
  %i.t = ptrtoint ptr %.0476 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp sgt i64 %i.v, 4
  %i.x = icmp ugt i32 %i.r, 255
  %i.y = select i1 %i.w, i1 true, i1 %i.x
  %i.z = zext i1 %i.y to i32
  %i.aa = shl nsw i32 %spec.select, %i.z
  br label %.thread494

bb.l:                                             ; preds = %bb.j
  %i.ab = ptrtoint ptr %3 to i64
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %.thread498

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %1, align 4, !tbaa !7     ; 2 uses
  %i.af = trunc i32 %i.ae to i16                  ; 2 uses
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %i.af)
  %spec.select536 = select i1 %i.o, i16 %i.ag, i16 %i.af
  store i16 %spec.select536, ptr %3, align 2, !tbaa !175
  %i.ah = ptrtoint ptr %.0476 to i64
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp sgt i64 %i.aj, 4
  %i.al = icmp ugt i32 %i.ae, 65535
  %i.am = select i1 %i.ak, i1 true, i1 %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = shl nsw i32 %spec.select, %i.an
  br label %.thread494

bb.n:                                             ; preds = %bb.j
  %.old = ptrtoint ptr %3 to i64
  %.old331 = and i64 %.old, 3
  %.old332 = icmp eq i64 %.old331, 0
  br i1 %.old332, label %bb.o, label %.thread498

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %1, align 4, !tbaa !7     ; 2 uses
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  %spec.select537 = select i1 %i.o, i32 %i.aq, i32 %i.ap
  store i32 %spec.select537, ptr %3, align 4, !tbaa !7
  %i.ar = ptrtoint ptr %.0476 to i64
  %i.as = ptrtoint ptr %1 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp sgt i64 %i.at, 4
  %i.av = zext i1 %i.au to i32
  %i.aw = shl nsw i32 %spec.select, %i.av
  br label %.thread494

bb.p:                                             ; preds = %bb.i
  switch i64 %5, label %.thread498 [
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 4, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.ax = load i32, ptr %1, align 4, !tbaa !7
  %i.ay = zext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay                    ; 2 uses
  %i.ba = trunc i64 %i.az to i8
  store i8 %i.ba, ptr %3, align 1, !tbaa !15
  %i.bb = ptrtoint ptr %.0476 to i64
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp sgt i64 %i.bd, 4
  %i.bf = icmp ult i64 %i.az, -256
  %i.bg = select i1 %i.be, i1 true, i1 %i.bf
  %i.bh = select i1 %i.bg, i32 -2, i32 -1
  br label %.thread494

bb.r:                                             ; preds = %bb.p
  %i.bi = ptrtoint ptr %3 to i64
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %.thread498

bb.s:                                             ; preds = %bb.r
  %i.bl = load i32, ptr %1, align 4, !tbaa !7
  %i.bm = zext i32 %i.bl to i64
  %i.bn = sub nsw i64 0, %i.bm                    ; 2 uses
  %i.bo = trunc i64 %i.bn to i16                  ; 2 uses
  %i.bp = tail call i16 @llvm.bswap.i16(i16 %i.bo)
  %spec.select538 = select i1 %i.o, i16 %i.bp, i16 %i.bo
  store i16 %spec.select538, ptr %3, align 2, !tbaa !175
  %i.bq = ptrtoint ptr %.0476 to i64
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp sgt i64 %i.bs, 4
  %i.bu = icmp ult i64 %i.bn, -65536
  %i.bv = select i1 %i.bt, i1 true, i1 %i.bu
  %i.bw = select i1 %i.bv, i32 -2, i32 -1
  br label %.thread494

bb.t:                                             ; preds = %bb.p
  %.old334 = ptrtoint ptr %3 to i64
  %.old335 = and i64 %.old334, 3
  %.old336 = icmp eq i64 %.old335, 0
  br i1 %.old336, label %bb.u, label %.thread498

bb.u:                                             ; preds = %bb.t
  %i.bx = load i32, ptr %1, align 4, !tbaa !7
  %i.by = zext i32 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by                    ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %spec.select539 = select i1 %i.o, i32 %i.cb, i32 %i.ca
  store i32 %spec.select539, ptr %3, align 4, !tbaa !7
  %i.cc = ptrtoint ptr %.0476 to i64
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 8
  br i1 %i.cf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr i8, ptr %1, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %1, align 4, !tbaa !7
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.thread494, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cl = icmp sgt i64 %i.ce, 4
  %i.cm = icmp ult i64 %i.bz, -4294967296
  %i.cn = select i1 %i.cl, i1 true, i1 %i.cm
  %i.co = select i1 %i.cn, i32 -2, i32 -1
  br label %.thread494

.thread498:                                       ; preds = %..thread498_crit_edge, %bb.r, %bb.l, %bb.n, %bb.j, %bb.t, %bb.p
  %.pre-phi = phi i32 [ %.pre, %..thread498_crit_edge ], [ %i.l, %bb.r ], [ %i.l, %bb.l ], [ %i.l, %bb.n ], [ %i.l, %bb.j ], [ %i.l, %bb.t ], [ %i.l, %bb.p ]
  %i.cp = and i32 %7, 3
  %i.cq = icmp eq i32 %i.cp, 2
  %.not314 = icmp ne i32 %.pre-phi, 16
  %i.cr = and i1 %i.cq, %.not314
  %or.cond342.not = and i1 %i.j, %i.cr
  br i1 %or.cond342.not, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %.thread498
  %i.cs = ptrtoint ptr %.0476 to i64
  %i.ct = ptrtoint ptr %1 to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = mul i64 %5, %4                          ; 16 uses
  %.not323602 = icmp eq i64 %i.cu, 0
  br i1 %.not323602, label %ruby_nonempty_memcpy.exit, label %.lr.ph605

.lr.ph605:                                        ; preds = %bb.y, %bb.z
  %.0289603 = phi i64 [ %i.da, %bb.z ], [ %i.cu, %bb.y ] ; 7 uses
  %i.cw = getelementptr i8, ptr %1, i64 %.0289603
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !15
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %.critedge5.thread

bb.z:                                             ; preds = %.lr.ph605
  %i.da = add i64 %.0289603, -1                   ; 2 uses
  %.not323 = icmp eq i64 %i.da, 0
  br i1 %.not323, label %ruby_nonempty_memcpy.exit, label %.lr.ph605, !llvm.loop !177

.critedge5.thread:                                ; preds = %.lr.ph605
  %.not324501 = icmp ugt i64 %.0289603, %i.cv
  br i1 %.not324501, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge5.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 noundef range(i64 1, 0) %.0289603, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.z, %bb.y, %bb.aa
  %.0289559 = phi i64 [ %.0289603, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.z ] ; 3 uses
  %i.db = getelementptr i8, ptr %3, i64 %.0289559
  %i.dc = sub nuw i64 %i.cv, %.0289559
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.db, i8 noundef 0, i64 noundef %i.dc, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit364

bb.ab:                                            ; preds = %.critedge5.thread
  %.not.i362 = icmp eq i64 %i.cv, 0
  br i1 %.not.i362, label %ruby_nonempty_memcpy.exit364.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.cv, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit364

ruby_nonempty_memcpy.exit364:                     ; preds = %bb.ac, %ruby_nonempty_memcpy.exit
  %.0289558 = phi i64 [ %.0289559, %ruby_nonempty_memcpy.exit ], [ %.0289603, %bb.ac ]
  %.not324502 = phi i1 [ false, %ruby_nonempty_memcpy.exit ], [ true, %bb.ac ]
  %.not326 = phi i1 [ true, %ruby_nonempty_memcpy.exit ], [ false, %bb.ac ]
  %i.dd = icmp sgt i32 %spec.select, -1
  %i.de = and i32 %7, 128
  %.not325 = icmp eq i32 %i.de, 0
  %or.cond344 = or i1 %.not325, %i.dd
  br i1 %or.cond344, label %bytes_2comp.exit.thread, label %bb.ad

ruby_nonempty_memcpy.exit364.thread:              ; preds = %bb.ab
  %8 = icmp sgt i32 %spec.select, -1
  %9 = and i32 %7, 128
  %.not325511 = icmp eq i32 %9, 0
  %or.cond344512 = or i1 %.not325511, %8
  br i1 %or.cond344512, label %.thread526, label %bytes_2comp.exit.thread651

bb.ad:                                            ; preds = %ruby_nonempty_memcpy.exit364
  %.not24.i = icmp eq i64 %i.cv, 0
  br i1 %.not24.i, label %bytes_2comp.exit, label %iter.check

iter.check:                                       ; preds = %bb.ad
  %min.iters.check710 = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check710, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check711 = icmp ult i64 %i.cv, 32
  br i1 %min.iters.check711, label %vec.epilog.ph, label %vector.ph712

vector.ph712:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf713 = and i64 %i.cv, 28
  %n.vec714 = and i64 %i.cv, -32                  ; 4 uses
  br label %vector.body715

vector.body715:                                   ; preds = %vector.body715, %vector.ph712
  %index716 = phi i64 [ 0, %vector.ph712 ], [ %index.next719, %vector.body715 ] ; 2 uses
  %i.df = getelementptr i8, ptr %3, i64 %index716 ; 3 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16     ; 2 uses
  %wide.load717 = load <16 x i8>, ptr %i.df, align 1, !tbaa !15
  %wide.load718 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !15
  %i.dh = xor <16 x i8> %wide.load717, splat (i8 -1)
  %i.di = xor <16 x i8> %wide.load718, splat (i8 -1)
  store <16 x i8> %i.dh, ptr %i.df, align 1, !tbaa !15
  store <16 x i8> %i.di, ptr %i.dg, align 1, !tbaa !15
  %index.next719 = add nuw i64 %index716, 32      ; 2 uses
  %i.dj = icmp eq i64 %index.next719, %n.vec714
  br i1 %i.dj, label %middle.block720, label %vector.body715, !llvm.loop !178

middle.block720:                                  ; preds = %vector.body715
  %cmp.n721 = icmp eq i64 %i.cv, %n.vec714
  br i1 %cmp.n721, label %.lr.ph21.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block720
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf713, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec714, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec723 = and i64 %i.cv, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index724 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next726, %vec.epilog.vector.body ] ; 2 uses
  %i.dk = getelementptr i8, ptr %3, i64 %index724 ; 2 uses
  %wide.load725 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !15
  %i.dl = xor <4 x i8> %wide.load725, splat (i8 -1)
  store <4 x i8> %i.dl, ptr %i.dk, align 1, !tbaa !15
  %index.next726 = add nuw i64 %index724, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next726, %n.vec723
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n727 = icmp eq i64 %i.cv, %n.vec723
  br i1 %cmp.n727, label %.lr.ph21.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01719.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec714, %vec.epilog.iter.check ], [ %n.vec723, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01719.i = phi i64 [ %i.dq, %.lr.ph.i ], [ %.01719.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dn = getelementptr i8, ptr %3, i64 %.01719.i ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = xor i8 %i.do, -1
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !15
  %i.dq = add nuw i64 %.01719.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dq, %i.cv
  br i1 %exitcond.not.i, label %.lr.ph21.i.preheader, label %.lr.ph.i, !llvm.loop !181

.lr.ph21.i.preheader:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block720
  br label %.lr.ph21.i

bb.ae:                                            ; preds = %.lr.ph21.i
  %i.dr = add nuw i64 %.120.i, 1                  ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.dr, %i.cv
  br i1 %exitcond26.not.i, label %bytes_2comp.exit, label %.lr.ph21.i, !llvm.loop !182

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader, %bb.ae
  %.120.i = phi i64 [ %i.dr, %bb.ae ], [ 0, %.lr.ph21.i.preheader ] ; 2 uses
  %i.ds = getelementptr i8, ptr %3, i64 %.120.i   ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %i.du = add i8 %i.dt, 1                         ; 2 uses
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !15
  %.not.i365 = icmp eq i8 %i.du, 0
  br i1 %.not.i365, label %bb.ae, label %bytes_2comp.exit.thread

bytes_2comp.exit:                                 ; preds = %bb.ae, %bb.ad
  br i1 %.not324502, label %bytes_2comp.exit.thread651, label %bytes_2comp.exit.thread

bytes_2comp.exit.thread651:                       ; preds = %ruby_nonempty_memcpy.exit364.thread, %bytes_2comp.exit
  %.0289557655 = phi i64 [ %.0289558, %bytes_2comp.exit ], [ %.0289603, %ruby_nonempty_memcpy.exit364.thread ]
  %i.dv = add i64 %.0289557655, -1
  %i.dw = icmp eq i64 %i.cv, %i.dv
  br i1 %i.dw, label %bb.af, label %.thread526

bb.af:                                            ; preds = %bytes_2comp.exit.thread651
  %i.dx = getelementptr i8, ptr %1, i64 %i.cv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !15
  %i.dz = icmp eq i8 %i.dy, 1
  br i1 %i.dz, label %.thread530, label %.thread526

.thread526:                                       ; preds = %bytes_2comp.exit.thread651, %bb.af, %ruby_nonempty_memcpy.exit364.thread
  %10 = shl nsw i32 %spec.select, 1
  br label %.thread494

bytes_2comp.exit.thread:                          ; preds = %.lr.ph21.i, %bytes_2comp.exit, %ruby_nonempty_memcpy.exit364
  %i.ea = shl nsw i32 %spec.select, 1
  br i1 %.not326, label %.thread530, label %.thread494

.thread530:                                       ; preds = %bb.af, %bytes_2comp.exit.thread
  br label %.thread494

bb.ag:                                            ; preds = %.thread498
  %i.eb = ptrtoint ptr %3 to i64
  %i.ec = or i64 %5, %i.eb
  %i.ed = and i64 %i.ec, 3
  %i.ee = or i64 %i.ed, %6
  %or.cond353 = icmp eq i64 %i.ee, 0
  br i1 %or.cond353, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.ef = lshr exact i64 %5, 2
  %i.eg = ptrtoint ptr %.0476 to i64
  %i.eh = ptrtoint ptr %1 to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 4 uses
  %i.ej = ashr exact i64 %i.ei, 2                 ; 5 uses
  %i.ek = mul i64 %i.ef, %4                       ; 20 uses
  %i.el = and i32 %7, 1
  %.not315 = icmp eq i32 %i.el, 0                 ; 2 uses
  %.not317 = icmp ugt i64 %i.ej, %i.ek            ; 2 uses
  br i1 %.not317, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = icmp ugt i64 %i.ej, 4611686018427387903
  br i1 %i.em, label %bb.aj, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.aj:                                            ; preds = %bb.ai
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.ej) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.ai
  br i1 %i.f, label %ruby_nonempty_memcpy.exit369, label %bb.ak

bb.ak:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.ei, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit369

ruby_nonempty_memcpy.exit369:                     ; preds = %rbimpl_size_mul_or_raise.exit, %bb.ak
  %.not318592 = icmp eq i64 %i.ek, %i.ej
  br i1 %.not318592, label %ruby_nonempty_memcpy.exit373, label %.lr.ph595.preheader

.lr.ph595.preheader:                              ; preds = %ruby_nonempty_memcpy.exit369
  %i.en = getelementptr i8, ptr %3, i64 %i.ei
  %i.eo = shl i64 %i.ek, 2
  %i.ep = sub i64 %i.eo, %i.ei
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.en, i8 0, i64 %i.ep, i1 false), !tbaa !7
  br label %ruby_nonempty_memcpy.exit373

bb.al:                                            ; preds = %bb.ah
  %i.eq = icmp ugt i64 %i.ek, 4611686018427387903
  br i1 %i.eq, label %bb.am, label %rbimpl_size_mul_or_raise.exit370, !prof !32

bb.am:                                            ; preds = %bb.al
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.ek) #25
  unreachable

rbimpl_size_mul_or_raise.exit370:                 ; preds = %bb.al
  %.not.i371 = icmp eq i64 %i.ek, 0
  br i1 %.not.i371, label %ruby_nonempty_memcpy.exit373.thread, label %bb.an

bb.an:                                            ; preds = %rbimpl_size_mul_or_raise.exit370
  %i.er = shl nuw i64 %i.ek, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.er, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit373

ruby_nonempty_memcpy.exit373:                     ; preds = %.lr.ph595.preheader, %ruby_nonempty_memcpy.exit369, %bb.an
  %.0284 = phi i32 [ 1, %bb.an ], [ 0, %.lr.ph595.preheader ], [ 0, %ruby_nonempty_memcpy.exit369 ] ; 5 uses
  %i.es = icmp sgt i32 %spec.select, -1
  %i.et = and i32 %7, 128
  %.not319 = icmp eq i32 %i.et, 0
  %or.cond355 = or i1 %.not319, %i.es
  br i1 %or.cond355, label %bary_2comp.exit.thread, label %bb.ao

ruby_nonempty_memcpy.exit373.thread:              ; preds = %rbimpl_size_mul_or_raise.exit370
  %11 = icmp sgt i32 %spec.select, -1
  %12 = and i32 %7, 128
  %.not319657 = icmp eq i32 %12, 0
  %or.cond355658 = or i1 %.not319657, %11
  br i1 %or.cond355658, label %bary_2comp.exit.thread.thread, label %bary_2comp.exit.thread663

bary_2comp.exit.thread.thread:                    ; preds = %ruby_nonempty_memcpy.exit373.thread
  %13 = and i32 %7, 80
  %.not320.not666 = icmp eq i32 %13, 16
  br label %.loopexit554

bb.ao:                                            ; preds = %ruby_nonempty_memcpy.exit373
  %.not27.i = icmp eq i64 %i.ek, 0
  br i1 %.not27.i, label %bary_2comp.exit, label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %bb.ao, %bb.ap
  %.023.i = phi i64 [ %i.ew, %bb.ap ], [ 0, %bb.ao ] ; 5 uses
  %i.eu = getelementptr [4 x i8], ptr %3, i64 %.023.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7  ; 2 uses
  %.not.i375 = icmp eq i32 %i.ev, 0
  br i1 %.not.i375, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i374
  %i.ew = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i376 = icmp eq i64 %i.ew, %i.ek
  br i1 %exitcond.not.i376, label %bary_2comp.exit, label %.lr.ph.i374, !llvm.loop !55

bb.aq:                                            ; preds = %.lr.ph.i374
  %i.ex = getelementptr [4 x i8], ptr %3, i64 %.023.i
  %i.ey = sub i32 0, %i.ev
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !7
  %.124.i = add i64 %.023.i, 1                    ; 4 uses
  %i.ez = icmp ult i64 %.124.i, %i.ek
  br i1 %i.ez, label %.lr.ph26.i.preheader, label %bary_2comp.exit.thread

.lr.ph26.i.preheader:                             ; preds = %bb.aq
  %i.fa = xor i64 %.023.i, -1
  %i.fb = add i64 %i.ek, %i.fa                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fb, 8
  br i1 %min.iters.check, label %.lr.ph26.i.preheader731, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.preheader
  %n.vec = and i64 %i.fb, -8                      ; 3 uses
  %i.fc = add i64 %.124.i, %n.vec
  %i.fd = getelementptr [4 x i8], ptr %3, i64 %.124.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %index ; 3 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fe, align 4, !tbaa !7
  %wide.load695 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !7
  %i.fg = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.fh = xor <4 x i32> %wide.load695, splat (i32 -1)
  store <4 x i32> %i.fg, ptr %i.fe, align 4, !tbaa !7
  store <4 x i32> %i.fh, ptr %i.ff, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit.thread, label %.lr.ph26.i.preheader731

.lr.ph26.i.preheader731:                          ; preds = %.lr.ph26.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.fc, %middle.block ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader731, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader731 ] ; 2 uses
  %i.fj = getelementptr [4 x i8], ptr %3, i64 %.125.i ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !7
  %i.fl = xor i32 %i.fk, -1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %i.ek
  br i1 %exitcond31.not.i, label %bary_2comp.exit.thread, label %.lr.ph26.i, !llvm.loop !184

bary_2comp.exit:                                  ; preds = %bb.ap, %bb.ao
  br i1 %.not317, label %bary_2comp.exit.thread663, label %bary_2comp.exit.thread

bary_2comp.exit.thread663:                        ; preds = %ruby_nonempty_memcpy.exit373.thread, %bary_2comp.exit
  %i.fm = add nsw i64 %i.ej, -1
  %i.fn = icmp eq i64 %i.ek, %i.fm
  br i1 %i.fn, label %bb.ar, label %bary_2comp.exit.thread

bb.ar:                                            ; preds = %bary_2comp.exit.thread663
  %i.fo = getelementptr [4 x i8], ptr %1, i64 %i.ek
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.fq = icmp ne i32 %i.fp, 1
  %spec.select356 = zext i1 %i.fq to i32
  br label %bary_2comp.exit.thread

bary_2comp.exit.thread:                           ; preds = %.lr.ph26.i, %middle.block, %bb.aq, %bb.ar, %bary_2comp.exit, %bary_2comp.exit.thread663, %ruby_nonempty_memcpy.exit373
  %.2286 = phi i32 [ %.0284, %ruby_nonempty_memcpy.exit373 ], [ %.0284, %bary_2comp.exit ], [ %spec.select356, %bb.ar ], [ 1, %bary_2comp.exit.thread663 ], [ %.0284, %bb.aq ], [ %.0284, %middle.block ], [ %.0284, %.lr.ph26.i ] ; 3 uses
  %i.fr = and i32 %7, 80
  %.not320.not = icmp eq i32 %i.fr, 16            ; 4 uses
  %i.fs = icmp ne i64 %i.ek, 0
  %or.cond608 = and i1 %.not320.not, %i.fs
  br i1 %or.cond608, label %.lr.ph598.preheader, label %.loopexit554

.lr.ph598.preheader:                              ; preds = %bary_2comp.exit.thread
  %min.iters.check697 = icmp ult i64 %i.ek, 8
  br i1 %min.iters.check697, label %.lr.ph598.preheader730, label %vector.ph698

vector.ph698:                                     ; preds = %.lr.ph598.preheader
  %n.vec700 = and i64 %i.ek, -8                   ; 3 uses
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph698
  %index702 = phi i64 [ 0, %vector.ph698 ], [ %index.next705, %vector.body701 ] ; 2 uses
  %i.ft = getelementptr [4 x i8], ptr %3, i64 %index702 ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 16     ; 2 uses
  %wide.load703 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !7
  %wide.load704 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !7
  %i.fv = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load703)
  %i.fw = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load704)
  store <4 x i32> %i.fv, ptr %i.ft, align 4, !tbaa !7
  store <4 x i32> %i.fw, ptr %i.fu, align 4, !tbaa !7
  %index.next705 = add nuw i64 %index702, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next705, %n.vec700
  br i1 %i.fx, label %middle.block706, label %vector.body701, !llvm.loop !185

middle.block706:                                  ; preds = %vector.body701
  %cmp.n707 = icmp eq i64 %i.ek, %n.vec700
  br i1 %cmp.n707, label %.loopexit554, label %.lr.ph598.preheader730

.lr.ph598.preheader730:                           ; preds = %.lr.ph598.preheader, %middle.block706
  %.0279597.ph = phi i64 [ 0, %.lr.ph598.preheader ], [ %n.vec700, %middle.block706 ]
  br label %.lr.ph598

.lr.ph598:                                        ; preds = %.lr.ph598.preheader730, %.lr.ph598
  %.0279597 = phi i64 [ %i.gb, %.lr.ph598 ], [ %.0279597.ph, %.lr.ph598.preheader730 ] ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %3, i64 %.0279597 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !7
  %i.ga = tail call noundef i32 @llvm.bswap.i32(i32 %i.fz)
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !7
  %i.gb = add nuw i64 %.0279597, 1                ; 2 uses
  %exitcond628.not = icmp eq i64 %i.gb, %i.ek
  br i1 %exitcond628.not, label %.loopexit554, label %.lr.ph598, !llvm.loop !186

.loopexit554:                                     ; preds = %.lr.ph598, %middle.block706, %bary_2comp.exit.thread.thread, %bary_2comp.exit.thread
  %.not320.not669 = phi i1 [ %.not320.not666, %bary_2comp.exit.thread.thread ], [ %.not320.not, %bary_2comp.exit.thread ], [ %.not320.not, %middle.block706 ], [ %.not320.not, %.lr.ph598 ]
  %.2286668 = phi i32 [ 1, %bary_2comp.exit.thread.thread ], [ %.2286, %bary_2comp.exit.thread ], [ %.2286, %middle.block706 ], [ %.2286, %.lr.ph598 ]
  %i.gc = xor i1 %.not315, %.not320.not669
  %i.gd = icmp eq i64 %4, 0
  %or.cond611.not = or i1 %i.gd, %i.gc
  br i1 %or.cond611.not, label %.loopexit, label %.lr.ph601.preheader

.lr.ph601.preheader:                              ; preds = %.loopexit554
  %xtraiter745 = and i64 %4, 1
  %i.ge = icmp eq i64 %4, 1
  br i1 %i.ge, label %.lr.ph601.epil.preheader, label %.lr.ph601.preheader.new

.lr.ph601.preheader.new:                          ; preds = %.lr.ph601.preheader
  %unroll_iter748 = and i64 %4, -2
  br label %.lr.ph601

.lr.ph601:                                        ; preds = %bary_swap.exit.1, %.lr.ph601.preheader.new
  %.0272600 = phi ptr [ %3, %.lr.ph601.preheader.new ], [ %i.gl, %bary_swap.exit.1 ] ; 3 uses
  %niter749 = phi i64 [ 0, %.lr.ph601.preheader.new ], [ %niter749.next.1, %bary_swap.exit.1 ]
  %i.gf = getelementptr i8, ptr %.0272600, i64 %5 ; 4 uses
  %.01112.i = getelementptr i8, ptr %i.gf, i64 -4 ; 2 uses
  %i.gg = icmp ult ptr %.0272600, %.01112.i
  br i1 %i.gg, label %.lr.ph.i377, label %bary_swap.exit

.lr.ph.i377:                                      ; preds = %.lr.ph601, %.lr.ph.i377
  %.01114.i = phi ptr [ %.011.i, %.lr.ph.i377 ], [ %.01112.i, %.lr.ph601 ] ; 3 uses
  %.013.i = phi ptr [ %i.gj, %.lr.ph.i377 ], [ %.0272600, %.lr.ph601 ] ; 3 uses
  %i.gh = load i32, ptr %.013.i, align 4, !tbaa !7
  %i.gi = load i32, ptr %.01114.i, align 4, !tbaa !7
  store i32 %i.gi, ptr %.013.i, align 4, !tbaa !7
  store i32 %i.gh, ptr %.01114.i, align 4, !tbaa !7
  %i.gj = getelementptr i8, ptr %.013.i, i64 4    ; 2 uses
  %.011.i = getelementptr i8, ptr %.01114.i, i64 -4 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %.011.i
  br i1 %i.gk, label %.lr.ph.i377, label %bary_swap.exit, !llvm.loop !187

bary_swap.exit:                                   ; preds = %.lr.ph.i377, %.lr.ph601
  %i.gl = getelementptr i8, ptr %i.gf, i64 %5     ; 3 uses
  %.01112.i.1 = getelementptr i8, ptr %i.gl, i64 -4 ; 2 uses
  %i.gm = icmp ult ptr %i.gf, %.01112.i.1
  br i1 %i.gm, label %.lr.ph.i377.1, label %bary_swap.exit.1

.lr.ph.i377.1:                                    ; preds = %bary_swap.exit, %.lr.ph.i377.1
  %.01114.i.1 = phi ptr [ %.011.i.1, %.lr.ph.i377.1 ], [ %.01112.i.1, %bary_swap.exit ] ; 3 uses
  %.013.i.1 = phi ptr [ %i.gp, %.lr.ph.i377.1 ], [ %i.gf, %bary_swap.exit ] ; 3 uses
  %i.gn = load i32, ptr %.013.i.1, align 4, !tbaa !7
  %i.go = load i32, ptr %.01114.i.1, align 4, !tbaa !7
  store i32 %i.go, ptr %.013.i.1, align 4, !tbaa !7
  store i32 %i.gn, ptr %.01114.i.1, align 4, !tbaa !7
  %i.gp = getelementptr i8, ptr %.013.i.1, i64 4  ; 2 uses
  %.011.i.1 = getelementptr i8, ptr %.01114.i.1, i64 -4 ; 2 uses
  %i.gq = icmp ult ptr %i.gp, %.011.i.1
  br i1 %i.gq, label %.lr.ph.i377.1, label %bary_swap.exit.1, !llvm.loop !187

bary_swap.exit.1:                                 ; preds = %.lr.ph.i377.1, %bary_swap.exit
  %niter749.next.1 = add i64 %niter749, 2         ; 2 uses
  %niter749.ncmp.1 = icmp eq i64 %niter749.next.1, %unroll_iter748
  br i1 %niter749.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph601, !llvm.loop !188

.loopexit.loopexit.unr-lcssa:                     ; preds = %bary_swap.exit.1
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %.loopexit, label %.lr.ph601.epil.preheader

.lr.ph601.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph601.preheader
  %.0272600.epil.init = phi ptr [ %3, %.lr.ph601.preheader ], [ %i.gl, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod747 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod747)
  %i.gr = getelementptr i8, ptr %.0272600.epil.init, i64 %5
  %.01112.i.epil = getelementptr i8, ptr %i.gr, i64 -4 ; 2 uses
  %i.gs = icmp ult ptr %.0272600.epil.init, %.01112.i.epil
  br i1 %i.gs, label %.lr.ph.i377.epil, label %.loopexit

.lr.ph.i377.epil:                                 ; preds = %.lr.ph601.epil.preheader, %.lr.ph.i377.epil
  %.01114.i.epil = phi ptr [ %.011.i.epil, %.lr.ph.i377.epil ], [ %.01112.i.epil, %.lr.ph601.epil.preheader ] ; 3 uses
  %.013.i.epil = phi ptr [ %i.gv, %.lr.ph.i377.epil ], [ %.0272600.epil.init, %.lr.ph601.epil.preheader ] ; 3 uses
  %i.gt = load i32, ptr %.013.i.epil, align 4, !tbaa !7
  %i.gu = load i32, ptr %.01114.i.epil, align 4, !tbaa !7
  store i32 %i.gu, ptr %.013.i.epil, align 4, !tbaa !7
  store i32 %i.gt, ptr %.01114.i.epil, align 4, !tbaa !7
  %i.gv = getelementptr i8, ptr %.013.i.epil, i64 4 ; 2 uses
  %.011.i.epil = getelementptr i8, ptr %.01114.i.epil, i64 -4 ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %.011.i.epil
  br i1 %i.gw, label %.lr.ph.i377.epil, label %.loopexit, !llvm.loop !187

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i377.epil, %.lr.ph601.epil.preheader, %.loopexit554
  %i.gx = getelementptr [4 x i8], ptr %3, i64 %i.ek
  %.01112.i378 = getelementptr i8, ptr %i.gx, i64 -4 ; 2 uses
  %i.gy = icmp uge ptr %3, %.01112.i378
  %or.cond542.not = or i1 %.not315, %i.gy
  br i1 %or.cond542.not, label %bary_swap.exit383, label %.lr.ph.i379

.lr.ph.i379:                                      ; preds = %.loopexit, %.lr.ph.i379
  %.01114.i380 = phi ptr [ %.011.i382, %.lr.ph.i379 ], [ %.01112.i378, %.loopexit ] ; 3 uses
  %.013.i381 = phi ptr [ %i.hb, %.lr.ph.i379 ], [ %3, %.loopexit ] ; 3 uses
  %i.gz = load i32, ptr %.013.i381, align 4, !tbaa !7
  %i.ha = load i32, ptr %.01114.i380, align 4, !tbaa !7
  store i32 %i.ha, ptr %.013.i381, align 4, !tbaa !7
  store i32 %i.gz, ptr %.01114.i380, align 4, !tbaa !7
  %i.hb = getelementptr i8, ptr %.013.i381, i64 4 ; 2 uses
  %.011.i382 = getelementptr i8, ptr %.01114.i380, i64 -4 ; 2 uses
  %i.hc = icmp ult ptr %i.hb, %.011.i382
  br i1 %i.hc, label %.lr.ph.i379, label %bary_swap.exit383, !llvm.loop !187

bary_swap.exit383:                                ; preds = %.lr.ph.i379, %.loopexit
  %.not322 = icmp ne i32 %.2286668, 0
  %i.hd = zext i1 %.not322 to i32
  %spec.select357 = shl nsw i32 %spec.select, %i.hd
  br label %.thread494

bb.as:                                            ; preds = %bb.ag, %.critedge
  %i.he = mul i64 %5, %4                          ; 3 uses
  %i.hf = getelementptr i8, ptr %3, i64 %i.he
  %i.hg = icmp eq i64 %i.he, 0
  br i1 %i.hg, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.hh = and i32 %7, 128
  %i.hi = icmp eq i32 %i.hh, 0
  %i.hj = icmp sgt i32 %spec.select, -1
  %or.cond11 = or i1 %i.hi, %i.hj
  br i1 %or.cond11, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hk = shl nsw i32 %spec.select, 1
  br label %bb.bq

bb.av:                                            ; preds = %bb.at
  %i.hl = ptrtoint ptr %.0476 to i64
  %i.hm = ptrtoint ptr %1 to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = icmp eq i64 %i.hn, 4
  br i1 %i.ho, label %bb.aw, label %bb.bp

bb.aw:                                            ; preds = %bb.av
  %i.hp = load i32, ptr %1, align 4, !tbaa !7
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.bq, label %bb.bp

bb.ax:                                            ; preds = %bb.as
  br i1 %i.f, label %.thread670, label %bb.ay

.thread670:                                       ; preds = %bb.ax
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %3, i8 noundef 0, i64 noundef %i.he, i1 noundef false) #23
  br label %.thread494

bb.ay:                                            ; preds = %bb.ax
  %i.hr = icmp ult ptr %3, %i.hf
  %or.cond359 = and i1 %i.hr, %i.b
  br i1 %or.cond359, label %bb.az, label %bb.bq

bb.az:                                            ; preds = %bb.ay
  %i.hs = and i32 %7, 3
  %i.ht = icmp eq i32 %i.hs, 1                    ; 3 uses
  %i.hu = add i64 %4, -1
  %i.hv = mul i64 %5, %i.hu                       ; 2 uses
  %i.hw = sub i64 0, %5
  %.035.i = select i1 %i.ht, i64 %i.hv, i64 0
  %.034.i = select i1 %i.ht, i64 %i.hw, i64 %5
  %.033.i = select i1 %i.ht, i64 0, i64 %i.hv
  %i.hx = trunc i64 %6 to i32
  %i.hy = and i32 %i.hx, 7                        ; 2 uses
  %i.hz = icmp ne i32 %i.hy, 0                    ; 3 uses
  %i.ia = lshr i64 %6, 3
  %i.ib = sub i64 %5, %i.ia
  %i.ic = sext i1 %i.hz to i64
  %spec.select.i = add i64 %i.ib, %i.ic           ; 4 uses
  %i.id = and i32 %7, 112
  %i.ie = icmp eq i32 %i.id, 16                   ; 2 uses
  %i.if = add i64 %5, -1
  %.032.i = select i1 %i.ie, i64 %i.if, i64 0
  %.0.i384 = select i1 %i.ie, i64 -1, i64 1       ; 11 uses
  %i.ig = sub nuw nsw i32 8, %i.hy                ; 2 uses
  %spec.store.select.i = select i1 %i.hz, i32 %i.ig, i32 0
  %i.ih = getelementptr i8, ptr %3, i64 %.035.i
  %i.ii = getelementptr i8, ptr %3, i64 %.033.i
  %.not612 = icmp eq i64 %spec.select.i, 0
  %i.ij = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ij
  %i.ik = xor i64 %notmask.i, -1
  %i.il = add i64 %spec.select.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge578, %bb.az
  %.0486 = phi i32 [ 0, %bb.az ], [ %.2488, %._crit_edge578 ] ; 2 uses
  %.0477 = phi i64 [ 0, %bb.az ], [ %.2479, %._crit_edge578 ] ; 2 uses
  %.0471 = phi ptr [ %1, %bb.az ], [ %.2473, %._crit_edge578 ] ; 2 uses
  %.0270 = phi ptr [ %i.ih, %bb.az ], [ %i.kh, %._crit_edge578 ] ; 3 uses
  %i.im = getelementptr i8, ptr %.0270, i64 %.032.i ; 2 uses
  br i1 %.not612, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba, %integer_pack_fill_dd.exit
  %.0264569 = phi ptr [ %i.ja, %integer_pack_fill_dd.exit ], [ %i.im, %bb.ba ] ; 2 uses
  %.0267568 = phi i64 [ %i.jb, %integer_pack_fill_dd.exit ], [ 0, %bb.ba ]
  %.1472567 = phi ptr [ %.4475, %integer_pack_fill_dd.exit ], [ %.0471, %bb.ba ] ; 5 uses
  %.1478566 = phi i64 [ %i.ix, %integer_pack_fill_dd.exit ], [ %.0477, %bb.ba ] ; 2 uses
  %.1487565 = phi i32 [ %i.iy, %integer_pack_fill_dd.exit ], [ %.0486, %bb.ba ] ; 4 uses
  %i.in = icmp ult ptr %.1472567, %.0476
  %notsub.i = add i32 %.1487565, -65
  %i.io = icmp slt i32 %notsub.i, -32
  %or.cond544 = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond544, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph
  %i.ip = getelementptr i8, ptr %.1472567, i64 4
  %i.iq = load i32, ptr %.1472567, align 4, !tbaa !7
  %i.ir = zext i32 %i.iq to i64
  %i.is = zext nneg i32 %.1487565 to i64
  %i.it = shl i64 %i.ir, %i.is
  %i.iu = or i64 %i.it, %.1478566
  %i.iv = add nsw i32 %.1487565, 32
  br label %integer_pack_fill_dd.exit

bb.bc:                                            ; preds = %.lr.ph
  %i.iw = icmp eq ptr %.1472567, %.0476
  %spec.select545 = select i1 %i.iw, i32 64, i32 %.1487565
  br label %integer_pack_fill_dd.exit

integer_pack_fill_dd.exit:                        ; preds = %bb.bc, %bb.bb
  %.3489 = phi i32 [ %spec.select545, %bb.bc ], [ %i.iv, %bb.bb ]
  %.4481 = phi i64 [ %.1478566, %bb.bc ], [ %i.iu, %bb.bb ] ; 2 uses
  %.4475 = phi ptr [ %.1472567, %bb.bc ], [ %i.ip, %bb.bb ] ; 2 uses
  %i.ix = lshr i64 %.4481, 8                      ; 2 uses
  %i.iy = add i32 %.3489, -8                      ; 2 uses
  %i.iz = trunc i64 %.4481 to i8
  store i8 %i.iz, ptr %.0264569, align 1, !tbaa !15
  %i.ja = getelementptr i8, ptr %.0264569, i64 %.0.i384 ; 2 uses
  %i.jb = add nuw i64 %.0267568, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jb, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %integer_pack_fill_dd.exit, %bb.ba
  %.1487.lcssa = phi i32 [ %.0486, %bb.ba ], [ %i.iy, %integer_pack_fill_dd.exit ] ; 5 uses
  %.1478.lcssa = phi i64 [ %.0477, %bb.ba ], [ %i.ix, %integer_pack_fill_dd.exit ] ; 3 uses
  %.1472.lcssa = phi ptr [ %.0471, %bb.ba ], [ %.4475, %integer_pack_fill_dd.exit ] ; 6 uses
  %.0264.lcssa = phi ptr [ %i.im, %bb.ba ], [ %i.ja, %integer_pack_fill_dd.exit ] ; 3 uses
  br i1 %i.hz, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %._crit_edge
  %i.jc = icmp ult ptr %.1472.lcssa, %.0476
  %notsub.i387 = add i32 %.1487.lcssa, -65
  %i.jd = icmp slt i32 %notsub.i387, -32
  %or.cond547 = select i1 %i.jc, i1 %i.jd, i1 false
  br i1 %or.cond547, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.je = getelementptr i8, ptr %.1472.lcssa, i64 4
  %i.jf = load i32, ptr %.1472.lcssa, align 4, !tbaa !7
  %i.jg = zext i32 %i.jf to i64
  %i.jh = zext nneg i32 %.1487.lcssa to i64
  %i.ji = shl i64 %i.jg, %i.jh
  %i.jj = or i64 %i.ji, %.1478.lcssa
  %i.jk = add nsw i32 %.1487.lcssa, 32
  br label %integer_pack_fill_dd.exit388

bb.bf:                                            ; preds = %bb.bd
  %i.jl = icmp eq ptr %.1472.lcssa, %.0476
  %spec.select548 = select i1 %i.jl, i32 64, i32 %.1487.lcssa
  br label %integer_pack_fill_dd.exit388

integer_pack_fill_dd.exit388:                     ; preds = %bb.bf, %bb.be
  %.4490 = phi i32 [ %spec.select548, %bb.bf ], [ %i.jk, %bb.be ]
  %.6483 = phi i64 [ %.1478.lcssa, %bb.bf ], [ %i.jj, %bb.be ] ; 2 uses
  %.6 = phi ptr [ %.1472.lcssa, %bb.bf ], [ %i.je, %bb.be ]
  %i.jm = and i64 %.6483, %i.ik
  %i.jn = lshr i64 %.6483, %i.ij
  %i.jo = sub i32 %.4490, %i.ig
  %i.jp = trunc nuw i64 %i.jm to i8
  store i8 %i.jp, ptr %.0264.lcssa, align 1, !tbaa !15
  %i.jq = getelementptr i8, ptr %.0264.lcssa, i64 %.0.i384
  br label %bb.bg

bb.bg:                                            ; preds = %integer_pack_fill_dd.exit388, %._crit_edge
  %.2488 = phi i32 [ %.1487.lcssa, %._crit_edge ], [ %i.jo, %integer_pack_fill_dd.exit388 ] ; 3 uses
  %.2479 = phi i64 [ %.1478.lcssa, %._crit_edge ], [ %i.jn, %integer_pack_fill_dd.exit388 ] ; 3 uses
  %.2473 = phi ptr [ %.1472.lcssa, %._crit_edge ], [ %.6, %integer_pack_fill_dd.exit388 ] ; 5 uses
  %.1268 = phi i64 [ %spec.select.i, %._crit_edge ], [ %i.il, %integer_pack_fill_dd.exit388 ] ; 5 uses
  %.1265 = phi ptr [ %.0264.lcssa, %._crit_edge ], [ %i.jq, %integer_pack_fill_dd.exit388 ] ; 2 uses
  %i.jr = icmp ult i64 %.1268, %5
  br i1 %i.jr, label %.lr.ph577.preheader, label %._crit_edge578

.lr.ph577.preheader:                              ; preds = %bb.bg
  %i.js = sub nuw i64 %5, %.1268
  %xtraiter = and i64 %i.js, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph577.prol.loopexit, label %.lr.ph577.prol

.lr.ph577.prol:                                   ; preds = %.lr.ph577.preheader, %.lr.ph577.prol
  %.2266575.prol = phi ptr [ %i.jt, %.lr.ph577.prol ], [ %.1265, %.lr.ph577.preheader ] ; 2 uses
  %.2269574.prol = phi i64 [ %i.ju, %.lr.ph577.prol ], [ %.1268, %.lr.ph577.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph577.prol ], [ 0, %.lr.ph577.preheader ]
  store i8 0, ptr %.2266575.prol, align 1, !tbaa !15
  %i.jt = getelementptr i8, ptr %.2266575.prol, i64 %.0.i384 ; 2 uses
  %i.ju = add nuw i64 %.2269574.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph577.prol.loopexit, label %.lr.ph577.prol, !llvm.loop !190

.lr.ph577.prol.loopexit:                          ; preds = %.lr.ph577.prol, %.lr.ph577.preheader
  %.2266575.unr = phi ptr [ %.1265, %.lr.ph577.preheader ], [ %i.jt, %.lr.ph577.prol ]
  %.2269574.unr = phi i64 [ %.1268, %.lr.ph577.preheader ], [ %i.ju, %.lr.ph577.prol ]
  %i.jv = sub i64 %.1268, %5
  %i.jw = icmp ugt i64 %i.jv, -8
  br i1 %i.jw, label %._crit_edge578, label %.lr.ph577

.lr.ph577:                                        ; preds = %.lr.ph577.prol.loopexit, %.lr.ph577
end_hunk_1
begin_hunk_2_@bary_pack:bb.a
  br i1 %exitcond626.not.7, label %._crit_edge578, label %.lr.ph577, !llvm.loop !191

._crit_edge578:                                   ; preds = %.lr.ph577.prol.loopexit, %.lr.ph577, %bb.bg
  %i.kg = icmp eq ptr %.0270, %i.ii
  %i.kh = getelementptr i8, ptr %.0270, i64 %.034.i
  br i1 %i.kg, label %bb.bh, label %bb.ba

bb.bh:                                            ; preds = %._crit_edge578
  %i.ki = icmp ult ptr %.2473, %.0476
  %notsub.i391 = add i32 %.2488, -65
  %i.kj = icmp slt i32 %notsub.i391, -32
  %or.cond550 = select i1 %i.ki, i1 %i.kj, i1 false
  br i1 %or.cond550, label %bb.bi, label %integer_pack_fill_dd.exit392

bb.bi:                                            ; preds = %bb.bh
  %i.kk = getelementptr i8, ptr %.2473, i64 4
  %i.kl = load i32, ptr %.2473, align 4, !tbaa !7
  %i.km = zext i32 %i.kl to i64
  %i.kn = zext nneg i32 %.2488 to i64
  %i.ko = shl i64 %i.km, %i.kn
  %i.kp = or i64 %i.ko, %.2479
  br label %integer_pack_fill_dd.exit392

integer_pack_fill_dd.exit392:                     ; preds = %bb.bh, %bb.bi
  %.8485 = phi i64 [ %i.kp, %bb.bi ], [ %.2479, %bb.bh ] ; 2 uses
  %.8 = phi ptr [ %i.kk, %bb.bi ], [ %.2473, %bb.bh ]
  %i.kq = icmp ne ptr %.8, %.0476
  %i.kr = icmp ugt i64 %.8485, 1
  %or.cond13 = select i1 %i.kq, i1 true, i1 %i.kr
  br i1 %or.cond13, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %integer_pack_fill_dd.exit392
  %i.ks = shl nsw i32 %spec.select, 1
  br label %bb.bq

bb.bk:                                            ; preds = %integer_pack_fill_dd.exit392
  %i.kt = icmp eq i64 %.8485, 1
  br i1 %i.kt, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.ku = and i32 %7, 128
  %i.kv = icmp eq i32 %i.ku, 0
  %i.kw = icmp sgt i32 %spec.select, -1
  %or.cond15 = or i1 %i.kv, %i.kw
  br i1 %or.cond15, label %bb.bm, label %.preheader555

.preheader555:                                    ; preds = %bb.bl
  br i1 %i.b, label %.lr.ph580, label %.critedge17

bb.bm:                                            ; preds = %bb.bl
  %i.kx = shl nsw i32 %spec.select, 1
  br label %bb.bq

.lr.ph580:                                        ; preds = %.preheader555, %bb.bn
  %storemerge579 = phi ptr [ %i.la, %bb.bn ], [ %1, %.preheader555 ] ; 3 uses
  %i.ky = load i32, ptr %storemerge579, align 4, !tbaa !7
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.bn, label %.critedge17

bb.bn:                                            ; preds = %.lr.ph580
  %i.la = getelementptr i8, ptr %storemerge579, i64 4 ; 3 uses
  %i.lb = icmp ult ptr %i.la, %.0476
  br i1 %i.lb, label %.lr.ph580, label %.critedge17, !llvm.loop !192

.critedge17:                                      ; preds = %.lr.ph580, %bb.bn, %.preheader555
  %storemerge.lcssa = phi ptr [ %1, %.preheader555 ], [ %i.la, %bb.bn ], [ %storemerge579, %.lr.ph580 ] ; 2 uses
  %i.lc = ptrtoint ptr %.0476 to i64
  %i.ld = ptrtoint ptr %storemerge.lcssa to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = icmp eq i64 %i.le, 4
  br i1 %i.lf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.critedge17
  %i.lg = load i32, ptr %storemerge.lcssa, align 4, !tbaa !7
  %i.lh = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.lg)
  %i.li = icmp samesign ult i32 %i.lh, 2
  br i1 %i.li, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.av, %bb.aw, %bb.bo, %.critedge17
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bj, %bb.bm, %bb.bp, %bb.bk, %bb.bo, %bb.aw, %bb.ay, %bb.au
  %.4261 = phi i32 [ %i.hk, %bb.au ], [ %0, %bb.ay ], [ -2, %bb.bp ], [ -1, %bb.bo ], [ -1, %bb.aw ], [ %i.ks, %bb.bj ], [ %i.kx, %bb.bm ], [ %spec.select, %bb.bk ] ; 3 uses
  %i.lj = and i32 %7, 128
  %i.lk = icmp ne i32 %i.lj, 0
  %i.ll = icmp slt i32 %.4261, 0
  %or.cond19 = select i1 %i.lk, i1 %i.ll, i1 false
  %i.lm = icmp ne i64 %4, 0
  %or.cond21 = and i1 %i.lm, %or.cond19
  br i1 %or.cond21, label %bb.br, label %.thread494

bb.br:                                            ; preds = %bb.bq
  %i.ln = and i32 %7, 3
  %i.lo = icmp eq i32 %i.ln, 1                    ; 3 uses
  %i.lp = add i64 %4, -1
  %i.lq = mul i64 %5, %i.lp                       ; 2 uses
  %i.lr = sub i64 0, %5
  %.035.i393 = select i1 %i.lo, i64 %i.lq, i64 0
  %.034.i394 = select i1 %i.lo, i64 %i.lr, i64 %5
  %.033.i395 = select i1 %i.lo, i64 0, i64 %i.lq
  %i.ls = trunc i64 %6 to i32
  %i.lt = and i32 %i.ls, 7                        ; 3 uses
  %i.lu = icmp ne i32 %i.lt, 0                    ; 3 uses
  %i.lv = lshr i64 %6, 3                          ; 2 uses
  %i.lw = sub i64 %5, %i.lv
  %i.lx = sext i1 %i.lu to i64                    ; 2 uses
  %spec.select.i396 = add i64 %i.lw, %i.lx        ; 4 uses
  %i.ly = and i32 %7, 112
  %i.lz = icmp eq i32 %i.ly, 16                   ; 2 uses
  %i.ma = add i64 %5, -1
  %.032.i397 = select i1 %i.lz, i64 %i.ma, i64 0
  %.0.i398 = select i1 %i.lz, i64 -1, i64 1       ; 3 uses
  %i.mb = sub nuw nsw i32 8, %i.lt
  %i.mc = lshr i32 255, %i.lt
  %i.md = select i1 %i.lu, i32 %i.mc, i32 0       ; 2 uses
  %i.me = getelementptr i8, ptr %3, i64 %.035.i393
  %i.mf = getelementptr i8, ptr %3, i64 %.033.i395
  %.not613 = icmp eq i64 %spec.select.i396, 0
  %i.mg = add i64 %5, %i.lx
  %.neg = add nuw nsw i64 %i.lv, 1
  %xtraiter740 = and i64 %spec.select.i396, 1
  %i.mh = icmp eq i64 %i.mg, %.neg
  %unroll_iter = and i64 %spec.select.i396, -2
  %lcmp.mod741.not = icmp eq i64 %xtraiter740, 0
  %lcmp.mod744 = trunc i64 %spec.select.i396 to i1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.0262 = phi ptr [ %i.me, %bb.br ], [ %i.nn, %bb.bu ] ; 3 uses
  %.0253 = phi i32 [ 1, %bb.br ], [ %.2, %bb.bu ] ; 3 uses
  %i.mi = getelementptr i8, ptr %.0262, i64 %.032.i397 ; 3 uses
  br i1 %.not613, label %._crit_edge589, label %.lr.ph588.preheader

.lr.ph588.preheader:                              ; preds = %bb.bs
  br i1 %i.mh, label %.lr.ph588.epil.preheader, label %.lr.ph588

.lr.ph588:                                        ; preds = %.lr.ph588.preheader, %.lr.ph588
  %.0586 = phi ptr [ %i.mw, %.lr.ph588 ], [ %i.mi, %.lr.ph588.preheader ] ; 3 uses
  %.1584 = phi i32 [ %i.mv, %.lr.ph588 ], [ %.0253, %.lr.ph588.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph588 ], [ 0, %.lr.ph588.preheader ]
  %i.mj = load i8, ptr %.0586, align 1, !tbaa !15
  %i.mk = xor i8 %i.mj, -1
  %i.ml = zext i8 %i.mk to i32
  %i.mm = add i32 %.1584, %i.ml                   ; 2 uses
  %i.mn = trunc i32 %i.mm to i8
  store i8 %i.mn, ptr %.0586, align 1, !tbaa !15
  %i.mo = ashr i32 %i.mm, 8
  %i.mp = getelementptr i8, ptr %.0586, i64 %.0.i398 ; 3 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !15
  %i.mr = xor i8 %i.mq, -1
  %i.ms = zext i8 %i.mr to i32
  %i.mt = add nsw i32 %i.mo, %i.ms                ; 2 uses
  %i.mu = trunc i32 %i.mt to i8
  store i8 %i.mu, ptr %i.mp, align 1, !tbaa !15
  %i.mv = ashr i32 %i.mt, 8                       ; 3 uses
  %i.mw = getelementptr i8, ptr %i.mp, i64 %.0.i398 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge589.loopexit.unr-lcssa, label %.lr.ph588, !llvm.loop !193

._crit_edge589.loopexit.unr-lcssa:                ; preds = %.lr.ph588
  br i1 %lcmp.mod741.not, label %._crit_edge589, label %.lr.ph588.epil.preheader

.lr.ph588.epil.preheader:                         ; preds = %._crit_edge589.loopexit.unr-lcssa, %.lr.ph588.preheader
  %.0586.epil.init = phi ptr [ %i.mi, %.lr.ph588.preheader ], [ %i.mw, %._crit_edge589.loopexit.unr-lcssa ] ; 3 uses
  %.1584.epil.init = phi i32 [ %.0253, %.lr.ph588.preheader ], [ %i.mv, %._crit_edge589.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod744)
  %i.mx = load i8, ptr %.0586.epil.init, align 1, !tbaa !15
  %i.my = xor i8 %i.mx, -1
  %i.mz = zext i8 %i.my to i32
  %i.na = add i32 %.1584.epil.init, %i.mz         ; 2 uses
  %i.nb = trunc i32 %i.na to i8
  store i8 %i.nb, ptr %.0586.epil.init, align 1, !tbaa !15
  %i.nc = ashr i32 %i.na, 8
  %i.nd = getelementptr i8, ptr %.0586.epil.init, i64 %.0.i398
  br label %._crit_edge589

._crit_edge589:                                   ; preds = %.lr.ph588.epil.preheader, %._crit_edge589.loopexit.unr-lcssa, %bb.bs
  %.1.lcssa = phi i32 [ %.0253, %bb.bs ], [ %i.mv, %._crit_edge589.loopexit.unr-lcssa ], [ %i.nc, %.lr.ph588.epil.preheader ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.mi, %bb.bs ], [ %i.mw, %._crit_edge589.loopexit.unr-lcssa ], [ %i.nd, %.lr.ph588.epil.preheader ] ; 2 uses
  br i1 %i.lu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %._crit_edge589
  %i.ne = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.nf = zext i8 %i.ne to i32
  %i.ng = xor i32 %i.nf, -1
  %i.nh = and i32 %i.md, %i.ng
  %i.ni = add i32 %i.nh, %.1.lcssa                ; 2 uses
  %i.nj = and i32 %i.ni, %i.md
  %i.nk = trunc nuw nsw i32 %i.nj to i8
  store i8 %i.nk, ptr %.0.lcssa, align 1, !tbaa !15
  %i.nl = ashr i32 %i.ni, %i.mb
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge589
  %.2 = phi i32 [ %i.nl, %bb.bt ], [ %.1.lcssa, %._crit_edge589 ]
  %i.nm = icmp eq ptr %.0262, %i.mf
  %i.nn = getelementptr i8, ptr %.0262, i64 %.034.i394
  br i1 %i.nm, label %.thread494, label %bb.bs

.thread494:                                       ; preds = %bb.bu, %.thread670, %bb.w, %bb.x, %bb.s, %bb.q, %.thread530, %bytes_2comp.exit.thread, %.thread526, %bb.o, %bb.m, %bb.k, %bb.bq, %bary_swap.exit383, %bb.e
  %.4 = phi i32 [ %.4261, %bb.bq ], [ 0, %bb.e ], [ %i.ao, %bb.m ], [ %spec.select357, %bary_swap.exit383 ], [ %10, %.thread526 ], [ %i.aw, %bb.o ], [ %i.bh, %bb.q ], [ %i.aa, %bb.k ], [ %spec.select, %.thread530 ], [ %i.ea, %bytes_2comp.exit.thread ], [ %i.co, %bb.x ], [ -1, %bb.w ], [ %i.bw, %bb.s ], [ 0, %.thread670 ], [ %.4261, %bb.bu ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @validate_integer_pack_format(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef range(i32 1267, 2036) %4) unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %4, -1
  %i.b = and i32 %3, %i.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.20) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %3, 3
  switch i32 %i.d, label %bb.g [
    i32 0, label %bb.d
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i64 %0, 1
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.21) #25
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.22) #25
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.d
  %i.h = lshr i32 %3, 4
  %i.i = and i32 %i.h, 7
  switch i32 %i.i, label %bb.i [
    i32 0, label %bb.h
    i32 4, label %bb.j
    i32 2, label %bb.j
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.23) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.24) #25
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.25, i64 noundef 0) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.n = icmp slt i64 %1, 0
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.o = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.26, i64 noundef %1) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.p = lshr i64 %2, 3
  %.not31 = icmp samesign ugt i64 %1, %i.p
  br i1 %.not31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.27, i64 noundef %2) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.28, i64 noundef %0, i64 noundef %1) #25
  unreachable

bb.r:                                             ; preds = %bb.p
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2, 2) i32 @bary_unpack_internal(ptr noundef %0, i64 noundef range(i64 -576460752303423487, 9223372036854775807) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %0, i64 %1   ; 9 uses
  %i.c = and i32 %6, 1024
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0                        ; 2 uses
  %i.e = icmp eq i64 %3, 1
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.b
  %.pre397 = and i32 %6, 112
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %.not154 = icmp eq i64 %4, 1
  %i.f = and i32 %6, 112                          ; 4 uses
  %.not155 = icmp eq i32 %i.f, 64
  %or.cond182 = or i1 %.not154, %.not155
  br i1 %or.cond182, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %6, 16
  %i.h = icmp ne i32 %i.g, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i1 [ %i.h, %bb.d ], [ false, %bb.c ] ; 2 uses
  switch i64 %4, label %.thread [
    i64 1, label %integer_unpack_single_bdigit.exit
    i64 2, label %bb.f
    i64 4, label %bb.g
  ]

integer_unpack_single_bdigit.exit:                ; preds = %bb.e
  %i.j = load i8, ptr %2, align 1, !tbaa !15      ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %6, 128
  %.not.i = icmp eq i32 %i.l, 0                   ; 2 uses
  %i.m = and i32 %6, 512
  %.not18.i = icmp eq i32 %i.m, 0                 ; 2 uses
  %.not20.i = icmp sgt i8 %i.j, -1
  %or.cond311 = select i1 %.not18.i, i1 %.not20.i, i1 false ; 2 uses
  %i.n = sub nuw nsw i32 256, %i.k
  %or.cond311.sink = select i1 %.not.i, i1 %.not18.i, i1 %or.cond311
  %i.o = select i1 %.not.i, i1 true, i1 %or.cond311
  %.015.i = select i1 %i.o, i32 %i.k, i32 %i.n
  %spec.select317 = select i1 %or.cond311.sink, i32 1, i32 -1
  store i32 %.015.i, ptr %0, align 4, !tbaa !7
  br label %bary_2comp.exit

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %2 to i64
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %integer_unpack_single_bdigit.exit201, label %.thread

integer_unpack_single_bdigit.exit201:             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 2) ]
  %i.s = load i16, ptr %2, align 2, !tbaa !175    ; 2 uses
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.s)
  %spec.select = select i1 %i.i, i16 %i.t, i16 %i.s ; 2 uses
  %i.u = zext i16 %spec.select to i32             ; 2 uses
  %i.v = and i32 %6, 128
  %.not.i196 = icmp eq i32 %i.v, 0                ; 2 uses
  %i.w = and i32 %6, 512
  %.not18.i197 = icmp eq i32 %i.w, 0              ; 2 uses
  %.not20.i200 = icmp sgt i16 %spec.select, -1
  %or.cond313 = select i1 %.not18.i197, i1 %.not20.i200, i1 false ; 2 uses
  %i.x = sub nuw nsw i32 65536, %i.u
  %or.cond313.sink = select i1 %.not.i196, i1 %.not18.i197, i1 %or.cond313
  %i.y = select i1 %.not.i196, i1 true, i1 %or.cond313
  %.015.i198 = select i1 %i.y, i32 %i.u, i32 %i.x
  %spec.select319 = select i1 %or.cond313.sink, i32 1, i32 -1
  store i32 %.015.i198, ptr %0, align 4, !tbaa !7
  br label %bary_2comp.exit

bb.g:                                             ; preds = %bb.e
  %.old = ptrtoint ptr %2 to i64
  %.old183 = and i64 %.old, 3
  %.old184 = icmp eq i64 %.old183, 0
  br i1 %.old184, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 4) ]
  %i.z = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %spec.select314 = select i1 %i.i, i32 %i.aa, i32 %i.z ; 5 uses
  %i.ab = and i32 %6, 128
  %.not.i202 = icmp eq i32 %i.ab, 0
  %i.ac = and i32 %6, 512
  %.not18.i203 = icmp eq i32 %i.ac, 0             ; 2 uses
  br i1 %.not.i202, label %bb.m, label %bb.i
end_hunk_2
begin_hunk_3_@str2big_karatsuba:bb.a

.lr.ph.i.i155.preheader:                          ; preds = %bb.y
  %i.fq = getelementptr [4 x i8], ptr %i.fp, i64 %.2217 ; 3 uses
  %xtraiter323 = and i64 %umin322, 1
  %i.fr = icmp eq i64 %umin322, 1
  br i1 %i.fr, label %.lr.ph.i.i155.epil.preheader, label %.lr.ph.i.i155.preheader.new

.lr.ph.i.i155.preheader.new:                      ; preds = %.lr.ph.i.i155.preheader
  %unroll_iter = and i64 %umin322, -2
  br label %.lr.ph.i.i155

.preheader72.i.i159.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i155
  %lcmp.mod324.not = icmp eq i64 %xtraiter323, 0
  br i1 %lcmp.mod324.not, label %.preheader72.i.i159, label %.lr.ph.i.i155.epil.preheader

.lr.ph.i.i155.epil.preheader:                     ; preds = %.preheader72.i.i159.loopexit.unr-lcssa, %.lr.ph.i.i155.preheader
  %.05779.i.i156.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.hb, %.preheader72.i.i159.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i157.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.ha, %.preheader72.i.i159.loopexit.unr-lcssa ]
  %lcmp.mod326 = trunc i64 %umin322 to i1
  call void @llvm.assume(i1 %lcmp.mod326)
  %i.fs = getelementptr [4 x i8], ptr %i.fq, i64 %.05779.i.i156.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156.epil.init
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !7
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add nuw nsw i64 %.05878.i.i157.epil.init, %i.fu
  %i.fz = add nuw nsw i64 %i.fy, %i.fx            ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = getelementptr [4 x i8], ptr %i.fd, i64 %.05779.i.i156.epil.init
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !7
  %i.gc = lshr i64 %i.fz, 32
  br label %.preheader72.i.i159

.preheader72.i.i159:                              ; preds = %.lr.ph.i.i155.epil.preheader, %.preheader72.i.i159.loopexit.unr-lcssa, %bb.y
  %.058.lcssa.i.i160 = phi i64 [ 0, %bb.y ], [ %i.ha, %.preheader72.i.i159.loopexit.unr-lcssa ], [ %i.gc, %.lr.ph.i.i155.epil.preheader ]
  %i.gd = icmp ult i64 %.064.i.i150, %.062.i.i152
  br i1 %i.gd, label %.lr.ph83.i.i180, label %bary_add.exit

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155, %.lr.ph.i.i155.preheader.new
  %.05779.i.i156 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.hb, %.lr.ph.i.i155 ] ; 5 uses
  %.05878.i.i157 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.ha, %.lr.ph.i.i155 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %niter.next.1, %.lr.ph.i.i155 ]
  %i.ge = getelementptr [4 x i8], ptr %i.fq, i64 %.05779.i.i156
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !7
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !7
  %i.gj = zext i32 %i.gi to i64
  %i.gk = add nuw nsw i64 %.05878.i.i157, %i.gg
  %i.gl = add nuw nsw i64 %i.gk, %i.gj            ; 2 uses
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = getelementptr [4 x i8], ptr %i.fd, i64 %.05779.i.i156
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !7
  %i.go = lshr i64 %i.gl, 32
  %i.gp = or disjoint i64 %.05779.i.i156, 1       ; 3 uses
  %i.gq = getelementptr [4 x i8], ptr %i.fq, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !7
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.gp
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !7
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.go, %i.gs
  %i.gx = add nuw nsw i64 %i.gw, %i.gv            ; 2 uses
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = getelementptr [4 x i8], ptr %i.fd, i64 %i.gp
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !7
  %i.ha = lshr i64 %i.gx, 32                      ; 3 uses
  %i.hb = add nuw i64 %.05779.i.i156, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i159.loopexit.unr-lcssa, label %.lr.ph.i.i155, !llvm.loop !34

.lr.ph83.i.i180:                                  ; preds = %.preheader72.i.i159, %bb.z
  %indvar289 = phi i64 [ %indvar.next290, %bb.z ], [ 0, %.preheader72.i.i159 ] ; 2 uses
  %.182.i.i181 = phi i64 [ %i.hk, %bb.z ], [ %.064.i.i150, %.preheader72.i.i159 ] ; 7 uses
  %.15981.i.i182 = phi i64 [ %i.hj, %bb.z ], [ %.058.lcssa.i.i160, %.preheader72.i.i159 ]
  %i.hc = icmp eq i64 %.15981.i.i182, 0
  br i1 %i.hc, label %.loopexit71.i.i169, label %bb.z

bb.z:                                             ; preds = %.lr.ph83.i.i180
  %i.hd = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.182.i.i181
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !7
  %i.hf = zext i32 %i.he to i64
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = getelementptr [4 x i8], ptr %i.fd, i64 %.182.i.i181
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !7
  %i.hj = lshr i64 %i.hg, 32
  %i.hk = add i64 %.182.i.i181, 1                 ; 2 uses
  %exitcond102.not.i.i183 = icmp eq i64 %i.hk, %.062.i.i152
  %indvar.next290 = add i64 %indvar289, 1
  br i1 %exitcond102.not.i.i183, label %bary_add.exit, label %.lr.ph83.i.i180, !llvm.loop !36

.loopexit71.i.i169:                               ; preds = %.lr.ph83.i.i180
  %i.hl = icmp ne ptr %.063.i.i151, %i.fd
  %i.hm = icmp ne i64 %.062.i.i152, %i.bs
  %or.cond.i.i171.not278 = or i1 %i.hl, %i.hm
  %i.hn = icmp ult i64 %.182.i.i181, %.062.i.i152
  %or.cond = and i1 %or.cond.i.i171.not278, %i.hn
  br i1 %or.cond, label %.lr.ph91.i.i177.preheader, label %bary_add.exit

.lr.ph91.i.i177.preheader:                        ; preds = %.loopexit71.i.i169
  %i.ho = add i64 %umin, %indvar289
  %i.hp = sub i64 %umax, %i.ho                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hp, 8
  %i.hq = sub i64 %i.br, %.063.i.i151288
  %diff.check = icmp ult i64 %i.hq, 32
  %or.cond310 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond310, label %.lr.ph91.i.i177.preheader311, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i177.preheader
  %n.vec = and i64 %i.hp, -8                      ; 3 uses
  %i.hr = add i64 %.182.i.i181, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hs = add i64 %.182.i.i181, %index            ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.hs ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 16
  %wide.load = load <4 x i32>, ptr %i.ht, align 4, !tbaa !7
  %wide.load291 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !7
  %i.hv = getelementptr [4 x i8], ptr %i.fd, i64 %i.hs ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16
  store <4 x i32> %wide.load, ptr %i.hv, align 4, !tbaa !7
  store <4 x i32> %wide.load291, ptr %i.hw, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hp, %n.vec
  br i1 %cmp.n, label %bary_add.exit, label %.lr.ph91.i.i177.preheader311

.lr.ph91.i.i177.preheader311:                     ; preds = %.lr.ph91.i.i177.preheader, %middle.block
  %.490.i.i178.ph = phi i64 [ %.182.i.i181, %.lr.ph91.i.i177.preheader ], [ %i.hr, %middle.block ] ; 4 uses
  %i.hy = sub i64 %umax327, %.490.i.i178.ph
  %xtraiter328 = and i64 %i.hy, 3                 ; 2 uses
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol

.lr.ph91.i.i177.prol:                             ; preds = %.lr.ph91.i.i177.preheader311, %.lr.ph91.i.i177.prol
  %.490.i.i178.prol = phi i64 [ %i.ic, %.lr.ph91.i.i177.prol ], [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader311 ] ; 3 uses
  %prol.iter330 = phi i64 [ %prol.iter330.next, %.lr.ph91.i.i177.prol ], [ 0, %.lr.ph91.i.i177.preheader311 ]
  %i.hz = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178.prol
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !7
  %i.ib = getelementptr [4 x i8], ptr %i.fd, i64 %.490.i.i178.prol
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !7
  %i.ic = add nuw i64 %.490.i.i178.prol, 1        ; 2 uses
  %prol.iter330.next = add i64 %prol.iter330, 1   ; 2 uses
  %prol.iter330.cmp.not = icmp eq i64 %prol.iter330.next, %xtraiter328
  br i1 %prol.iter330.cmp.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol, !llvm.loop !223

.lr.ph91.i.i177.prol.loopexit:                    ; preds = %.lr.ph91.i.i177.prol, %.lr.ph91.i.i177.preheader311
  %.490.i.i178.unr = phi i64 [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader311 ], [ %i.ic, %.lr.ph91.i.i177.prol ]
  %i.id = sub i64 %.490.i.i178.ph, %umax327
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %bary_add.exit, label %.lr.ph91.i.i177

.lr.ph91.i.i177:                                  ; preds = %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177
  %.490.i.i178 = phi i64 [ %i.iu, %.lr.ph91.i.i177 ], [ %.490.i.i178.unr, %.lr.ph91.i.i177.prol.loopexit ] ; 6 uses
  %i.if = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !7
  %i.ih = getelementptr [4 x i8], ptr %i.fd, i64 %.490.i.i178
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !7
  %i.ii = add nuw i64 %.490.i.i178, 1             ; 2 uses
  %i.ij = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !7
  %i.il = getelementptr [4 x i8], ptr %i.fd, i64 %i.ii
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !7
  %i.im = add nuw i64 %.490.i.i178, 2             ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !7
  %i.ip = getelementptr [4 x i8], ptr %i.fd, i64 %i.im
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !7
  %i.iq = add nuw i64 %.490.i.i178, 3             ; 2 uses
  %i.ir = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !7
  %i.it = getelementptr [4 x i8], ptr %i.fd, i64 %i.iq
  store i32 %i.is, ptr %i.it, align 4, !tbaa !7
  %i.iu = add nuw i64 %.490.i.i178, 4             ; 2 uses
  %exitcond106.not.i.i179.3 = icmp eq i64 %i.iu, %.062.i.i152
  br i1 %exitcond106.not.i.i179.3, label %bary_add.exit, label %.lr.ph91.i.i177, !llvm.loop !224

bb.aa:                                            ; preds = %bb.t
  %i.iv = icmp ugt i64 %i.bs, 4611686018427387903
  br i1 %i.iv, label %bb.ab, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.ab:                                            ; preds = %bb.aa
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.bs) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.aa
  %i.iw = getelementptr [4 x i8], ptr %.0123220, i64 %.2217
  %i.ix = getelementptr [4 x i8], ptr %.0122221, i64 %.2217
  %i.iy = shl nuw i64 %i.bs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ix, ptr noundef nonnull readonly align 1 %i.iw, i64 noundef range(i64 1, 0) %i.iy, i1 noundef false) #23
  br label %bary_add.exit

bary_add.exit:                                    ; preds = %bb.z, %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177, %middle.block, %.preheader72.i.i159, %.preheader70.i.i, %bb.r, %rbimpl_size_mul_or_raise.exit, %.loopexit71.i.i169, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i
  %i.iz = add i64 %.2217, %i.ay                   ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ja, label %bb.m, label %bb.ac, !llvm.loop !225

bb.ac:                                            ; preds = %bary_add.exit
  %i.jb = add i32 %.0113223, 1                    ; 2 uses
  %i.jc = call fastcc i64 @power_cache_get_power(i32 noundef %6, i32 noundef %i.jb, ptr noundef null)
  %i.jd = icmp ult i64 %i.ay, %4
  br i1 %i.jd, label %.preheader202, label %.preheader, !llvm.loop !226

.lr.ph226:                                        ; preds = %.preheader, %bb.ad
  %.0109225 = phi i64 [ %i.ji, %bb.ad ], [ %4, %.preheader ] ; 3 uses
  %i.je = getelementptr [4 x i8], ptr %.0123.lcssa, i64 %.0109225
  %i.jf = getelementptr i8, ptr %i.je, i64 -4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !7
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %.lr.ph226
  %i.ji = add i64 %.0109225, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ji, 0
  br i1 %.not, label %.critedge, label %.lr.ph226, !llvm.loop !227

.critedge:                                        ; preds = %.lr.ph226, %bb.ad, %.preheader
  %.0109.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.ad ], [ %.0109225, %.lr.ph226 ] ; 5 uses
  %i.jj = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.jk = call fastcc i64 @bignew_1(i64 noundef %i.jj, i64 noundef %.0109.lcssa, i32 noundef %0) ; 2 uses
  %i.jl = inttoptr i64 %i.jk to ptr               ; 3 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !13
  %i.jn = and i64 %i.jm, 16384
  %.not.i187 = icmp eq i64 %i.jn, 0
  br i1 %.not.i187, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.jo = getelementptr i8, ptr %i.jl, i64 16
  br label %BIGNUM_DIGITS.exit189

bb.af:                                            ; preds = %.critedge
  %i.jp = getelementptr i8, ptr %i.jl, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit189

BIGNUM_DIGITS.exit189:                            ; preds = %bb.ae, %bb.af
  %.0.i188 = phi ptr [ %i.jo, %bb.ae ], [ %i.jq, %bb.af ]
  %i.jr = icmp ugt i64 %.0109.lcssa, 4611686018427387903
  br i1 %i.jr, label %bb.ag, label %rbimpl_size_mul_or_raise.exit190, !prof !32

bb.ag:                                            ; preds = %BIGNUM_DIGITS.exit189
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.0109.lcssa) #25
  unreachable

rbimpl_size_mul_or_raise.exit190:                 ; preds = %BIGNUM_DIGITS.exit189
  %.not.i191 = icmp eq i64 %.0109.lcssa, 0
  br i1 %.not.i191, label %ruby_nonempty_memcpy.exit193, label %bb.ah

bb.ah:                                            ; preds = %rbimpl_size_mul_or_raise.exit190
  %i.js = shl nuw i64 %.0109.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i188, ptr noundef nonnull readonly align 1 %.0123.lcssa, i64 noundef range(i64 1, 0) %i.js, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit193

ruby_nonempty_memcpy.exit193:                     ; preds = %rbimpl_size_mul_or_raise.exit190, %bb.ah
  %i.jt = load i64, ptr %i.a, align 8, !tbaa !11
  %.not135 = icmp eq i64 %i.jt, 0
  br i1 %.not135, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %ruby_nonempty_memcpy.exit193
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ruby_nonempty_memcpy.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.jk
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_str_convert_to_inum(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_must_asciicompat(i64 noundef %i.d) #23
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !228
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
  %i.p = load i64, ptr %i.a, align 8, !tbaa !11
  call fastcc void @invalid_integer(i64 noundef %i.p) #28
  unreachable

bb.e:                                             ; preds = %RSTRING_PTR.exit, %bb.c
  %.0 = phi i64 [ 4, %bb.c ], [ %.mux, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %.0
}

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #5

declare void @rb_must_asciicompat(i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @invalid_integer(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.31, i64 noundef %0) #25
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_to_inum(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_must_asciicompat(i64 noundef %i.d) #23
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 8192
  %.not.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !228
  %.not.i = icmp eq i32 %2, 0                     ; 2 uses
  %..i = select i1 %.not.i, ptr %i.b, ptr null
  %i.n = call i64 @rb_int_parse_cstr(ptr noundef %i.k, i64 noundef %i.m, ptr noundef %..i, ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.o = icmp ne i64 %i.n, 4                      ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.o
  br i1 %brmerge.i, label %rb_str_convert_to_inum.exit, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !11
  call fastcc void @invalid_integer(i64 noundef %i.p) #28
  unreachable

rb_str_convert_to_inum.exit:                      ; preds = %RSTRING_PTR.exit.i
  %.mux.i = select i1 %i.o, i64 %i.n, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.mux.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str2big_poweroftwo(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = add i32 %1, -2
  %i.d = icmp ult i32 %i.c, 35
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.f = icmp samesign ult i32 %i.e, 2
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @invalid_radix(i32 noundef %1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@big2str_generic:bb.a
  %i.aa = getelementptr [520 x i8], ptr @base36_power_cache, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %.not.i54 = icmp eq i64 %i.ab, 0
  br i1 %.not.i54, label %bb.i, label %power_cache_get_power.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr [8 x i8], ptr @maxpow64_num, i64 %i.z
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.z
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ah = tail call fastcc i64 @bignew_1(i64 noundef %i.ag, i64 noundef 2, i32 noundef 1), !inline_history !217 ; 5 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.ak = and i64 %i.aj, 16384
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.ai, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.al, %bb.j ], [ %i.an, %bb.k ]
  store i64 %i.ad, ptr %.0.i.i, align 4
  %i.ao = sext i32 %i.af to i64
  %i.ap = tail call i64 @rb_obj_hide(i64 noundef %i.ah) #23, !inline_history !217 ; 0 uses
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !11
  %i.aq = getelementptr [520 x i8], ptr @base36_numdigits_cache, i64 %i.z
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !11
  tail call void @rb_vm_register_global_object(i64 noundef %i.ah) #23, !inline_history !217
  br label %power_cache_get_power.exit

power_cache_get_power.exit:                       ; preds = %bb.h, %BIGNUM_DIGITS.exit.i
  %.1.i = phi i64 [ %i.ab, %bb.h ], [ %i.ah, %BIGNUM_DIGITS.exit.i ]
  %i.ar = add nuw nsw i64 %.04379, 1
  %i.as = lshr i64 %i.ar, 1
  br label %bb.l

bb.l:                                             ; preds = %power_cache_get_power.exit, %bb.o
  %.04481 = phi i32 [ 0, %power_cache_get_power.exit ], [ %i.ba, %bb.o ] ; 2 uses
  %.04580 = phi i64 [ %.1.i, %power_cache_get_power.exit ], [ %i.bb, %bb.o ]
  %i.at = inttoptr i64 %.04580 to ptr             ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !13 ; 3 uses
  %i.av = and i64 %i.au, 16384
  %.not.i56 = icmp eq i64 %i.av, 0
  br i1 %.not.i56, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit58

bb.n:                                             ; preds = %bb.l
  %i.ay = lshr i64 %i.au, 15
  %i.az = and i64 %i.ay, 511
  br label %BIGNUM_LEN.exit58

BIGNUM_LEN.exit58:                                ; preds = %bb.m, %bb.n
  %.0.i57 = phi i64 [ %i.az, %bb.n ], [ %i.ax, %bb.m ]
  %.not49 = icmp ugt i64 %.0.i57, %i.as
  br i1 %.not49, label %.critedge2, label %bb.o

bb.o:                                             ; preds = %BIGNUM_LEN.exit58
  %i.ba = add nuw nsw i32 %.04481, 1              ; 3 uses
  %i.bb = tail call fastcc i64 @power_cache_get_power(i32 noundef %1, i32 noundef %i.ba, ptr noundef null) ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, 65
  br i1 %exitcond.not, label %..critedge2_crit_edge, label %bb.l, !llvm.loop !241

..critedge2_crit_edge:                            ; preds = %bb.o
  %.phi.trans.insert = inttoptr i64 %i.bb to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %.critedge2, !llvm.loop !241

.critedge2:                                       ; preds = %BIGNUM_LEN.exit58, %..critedge2_crit_edge
  %.pre-phi = phi ptr [ %.phi.trans.insert, %..critedge2_crit_edge ], [ %i.at, %BIGNUM_LEN.exit58 ] ; 2 uses
  %i.bc = phi i64 [ %.pre, %..critedge2_crit_edge ], [ %i.au, %BIGNUM_LEN.exit58 ] ; 3 uses
  %.044.lcssa = phi i32 [ 65, %..critedge2_crit_edge ], [ %.04481, %BIGNUM_LEN.exit58 ]
  %i.bd = and i64 %i.bc, 16384
  %.not.i59 = icmp eq i64 %i.bd, 0                ; 2 uses
  br i1 %.not.i59, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge2
  %i.be = getelementptr i8, ptr %.pre-phi, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit61

bb.q:                                             ; preds = %.critedge2
  %i.bg = lshr i64 %i.bc, 15
  %i.bh = and i64 %i.bg, 511
  br label %BIGNUM_LEN.exit61

BIGNUM_LEN.exit61:                                ; preds = %bb.p, %bb.q
  %.0.i60 = phi i64 [ %i.bh, %bb.q ], [ %i.bf, %bb.p ]
  %.not50 = icmp ule i64 %.0.i60, %.04379
  %i.bi = zext i1 %.not50 to i32
  %spec.select = add nuw nsw i32 %.044.lcssa, %i.bi ; 3 uses
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !13
  %i.bk = and i64 %i.bj, 8192
  %.not.i62 = icmp eq i64 %i.bk, 0                ; 2 uses
  %i.bl = zext i1 %.not.i62 to i32
  store i32 %i.bl, ptr %2, align 8, !tbaa !242
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %1, ptr %i.bm, align 4, !tbaa !245
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = getelementptr [8 x i8], ptr @maxpow64_num, i64 %i.z
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.z
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  store i32 %i.br, ptr %i.bn, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bp, ptr %i.bs, align 8, !tbaa !246
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i64 4, ptr %i.bt, align 8, !tbaa !247
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !248
  %i.bv = icmp eq i32 %spec.select, 0
  br i1 %i.bv, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %BIGNUM_LEN.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  switch i64 %.04379, label %big2str_2bdigits.exit [
    i64 2, label %bb.s
    i64 1, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bw = load i64, ptr %.0.i75, align 4
  br label %bary2bdigitdbl.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bx = load i32, ptr %.0.i75, align 4, !tbaa !7
  %i.by = zext i32 %i.bx to i64
  br label %bary2bdigitdbl.exit.i

bary2bdigitdbl.exit.i:                            ; preds = %bb.s, %bb.t
  %.0.i.i64 = phi i64 [ %i.bw, %bb.s ], [ %i.by, %bb.t ] ; 2 uses
  %i.bz = icmp eq i64 %.0.i.i64, 0
  br i1 %i.bz, label %big2str_2bdigits.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bary2bdigitdbl.exit.i
  %i.ca = zext nneg i32 %1 to i64                 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.i
  %.032.i = phi i64 [ %i.cc, %bb.u ], [ %.0.i.i64, %.preheader.i ] ; 3 uses
  %.0.i66 = phi i64 [ %i.cf, %bb.u ], [ 64, %.preheader.i ] ; 4 uses
  %i.cb = urem i64 %.032.i, %i.ca
  %i.cc = udiv i64 %.032.i, %i.ca
  %i.cd = getelementptr i8, ptr @ruby_digitmap, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %i.cf = add i64 %.0.i66, -1                     ; 3 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !15
  %.not37.i = icmp ult i64 %.032.i, %i.ca
  br i1 %.not37.i, label %bb.v, label %bb.u, !llvm.loop !249

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ci = sub i64 65, %.0.i66                     ; 3 uses
  %i.cj = icmp ugt i64 %i.ci, 9223372036854775806
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ck, ptr noundef nonnull @.str.32) #25
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cl = sub i64 66, %.0.i66
  %i.cm = tail call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %i.cl) #23, !callees !236, !inline_history !250 ; 2 uses
  store i64 %i.cm, ptr %i.bt, align 8, !tbaa !247
  %i.cn = inttoptr i64 %i.cm to ptr               ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !13
  %i.cp = and i64 %i.co, 8192
  %.not.i.i.i = icmp eq i64 %i.cp, 0
  %i.cq = getelementptr i8, ptr %i.cn, i64 24     ; 2 uses
  br i1 %.not.i.i.i, label %RSTRING_PTR.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.y, %bb.x
  %i.cs = phi ptr [ %i.cr, %bb.y ], [ %i.cq, %bb.x ] ; 4 uses
  store ptr %i.cs, ptr %i.bu, align 8, !tbaa !248
  br i1 %.not.i62, label %bb.z, label %big2str_alloc.exit.i

bb.z:                                             ; preds = %RSTRING_PTR.exit.i.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 1      ; 2 uses
  store ptr %i.ct, ptr %i.bu, align 8, !tbaa !248
  store i8 45, ptr %i.cs, align 1, !tbaa !15
  br label %big2str_alloc.exit.i

big2str_alloc.exit.i:                             ; preds = %bb.z, %RSTRING_PTR.exit.i.i
  %i.cu = phi ptr [ %i.ct, %bb.z ], [ %i.cs, %RSTRING_PTR.exit.i.i ] ; 2 uses
  %.not.i38.i = icmp eq i64 %.0.i66, 65
  br i1 %.not.i38.i, label %ruby_nonempty_memcpy.exit.i, label %bb.aa

bb.aa:                                            ; preds = %big2str_alloc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cu, ptr noundef nonnull readonly align 1 %i.ch, i64 noundef range(i64 1, 0) %i.ci, i1 noundef false) #23
  %.pre84 = load ptr, ptr %i.bu, align 8, !tbaa !248
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.aa, %big2str_alloc.exit.i
  %i.cv = phi ptr [ %.pre84, %bb.aa ], [ %i.cu, %big2str_alloc.exit.i ]
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.ci
  store ptr %i.cw, ptr %i.bu, align 8, !tbaa !248
  br label %big2str_2bdigits.exit

big2str_2bdigits.exit:                            ; preds = %bb.r, %bary2bdigitdbl.exit.i, %ruby_nonempty_memcpy.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

bb.ab:                                            ; preds = %BIGNUM_LEN.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.cx = zext nneg i32 %spec.select to i64
  br i1 %.not.i59, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cy = getelementptr i8, ptr %.pre-phi, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit70

bb.ad:                                            ; preds = %bb.ab
  %i.da = lshr i64 %i.bc, 15
  %i.db = and i64 %i.da, 511
  br label %BIGNUM_LEN.exit70

BIGNUM_LEN.exit70:                                ; preds = %bb.ac, %bb.ad
  %.0.i69 = phi i64 [ %i.db, %bb.ad ], [ %i.cz, %bb.ac ]
  %i.dc = add i64 %.0.i69, %i.cx                  ; 2 uses
  %i.dd = add i64 %i.dc, %.04379                  ; 5 uses
  %i.de = icmp ult i64 %i.dd, 256
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %BIGNUM_LEN.exit70
  %i.df = shl nuw nsw i64 %i.dd, 2
  %i.dg = alloca i8, i64 %i.df, align 16
  br label %rbimpl_size_mul_or_raise.exit

bb.af:                                            ; preds = %BIGNUM_LEN.exit70
  %i.dh = icmp ugt i64 %i.dd, 4611686018427387903
  br i1 %i.dh, label %bb.ag, label %rb_alloc_tmp_buffer2.exit, !prof !32

bb.ag:                                            ; preds = %bb.af
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.dd, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.af
  %i.di = shl nuw i64 %i.dd, 2                    ; 2 uses
  %i.dj = add i64 %i.di, 4
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.c, i64 noundef %i.di, i64 noundef %i.dk) #26
  br label %rbimpl_size_mul_or_raise.exit

rbimpl_size_mul_or_raise.exit:                    ; preds = %rb_alloc_tmp_buffer2.exit, %bb.ae
  %i.dm = phi ptr [ %i.dg, %bb.ae ], [ %i.dl, %rb_alloc_tmp_buffer2.exit ] ; 2 uses
  %i.dn = shl nuw nsw i64 %.04379, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dm, ptr noundef nonnull readonly align 1 dereferenceable(1) %.0.i75, i64 noundef range(i64 1, 0) %i.dn, i1 noundef false) #23
  call fastcc void @big2str_karatsuba(ptr noundef %2, ptr noundef nonnull %i.dm, i64 noundef %.04379, i64 noundef %i.dc, i32 noundef %spec.select, i64 noundef 0)
  %i.do = load i64, ptr %i.c, align 8, !tbaa !11
  %.not51 = icmp eq i64 %i.do, 0
  br i1 %.not51, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.c) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %rbimpl_size_mul_or_raise.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %big2str_2bdigits.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !251
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.dq = load volatile i64, ptr %i.dp, align 8, !tbaa !11 ; 0 uses
  %i.dr = load ptr, ptr %i.bu, align 8, !tbaa !248
  store i8 0, ptr %i.dr, align 1, !tbaa !15
  %i.ds = load i64, ptr %i.bt, align 8, !tbaa !247 ; 2 uses
  %i.dt = load ptr, ptr %i.bu, align 8, !tbaa !248
  %i.du = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !13
  %i.dw = and i64 %i.dv, 8192
  %.not.i73 = icmp eq i64 %i.dw, 0
  %i.dx = getelementptr i8, ptr %i.du, i64 24     ; 2 uses
  br i1 %.not.i73, label %RSTRING_PTR.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.aj, %bb.ak
  %i.dz = phi ptr [ %i.dy, %bb.ak ], [ %i.dx, %bb.aj ]
  %i.ea = ptrtoint ptr %i.dt to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = call i64 @rb_str_resize(i64 noundef %i.ds, i64 noundef %i.ec) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.b, ptr %i.e, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #23, !srcloc !252
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.ef = load volatile i64, ptr %i.ee, align 8, !tbaa !11 ; 0 uses
  %i.eg = load i64, ptr %i.bt, align 8, !tbaa !247
  br label %bb.al

bb.al:                                            ; preds = %RSTRING_PTR.exit, %._crit_edge
  %.0 = phi i64 [ %i.u, %._crit_edge ], [ %i.eg, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big2str(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = trunc i64 %0 to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_fix2str(i64 noundef %0, i32 noundef %1) #23
  br label %rb_big2str1.exit

bb.c:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 11 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 5 uses
  %i.h = and i64 %i.g, 16384
  %.not.i.i.i = icmp eq i64 %i.h, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %i.g, 15
  %i.j = and i64 %i.i, 511
  %i.k = getelementptr i8, ptr %i.f, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr i8, ptr %i.f, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.e, %bb.d
  %.0.i21.i.i = phi i64 [ %i.j, %bb.d ], [ %i.m, %bb.e ] ; 4 uses
  %.0.i16.i.i = phi ptr [ %i.k, %bb.d ], [ %i.o, %bb.e ]
  %i.p = icmp eq i64 %.0.i21.i.i, 0
  br i1 %i.p, label %bigtrunc.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %BIGNUM_DIGITS.exit.i.i
  %i.q = add i64 %.0.i21.i.i, -1                  ; 2 uses
  %.not.i.i8 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i8, label %.critedge.i.i, label %.lr.ph

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.r = add i64 %i.s, -1                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph, !llvm.loop !150

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %i.s = phi i64 [ %i.r, %.preheader.i.i ], [ %i.q, %.preheader.i.i.preheader ] ; 4 uses
  %.012.i.i9 = phi i64 [ %i.s, %.preheader.i.i ], [ %.0.i21.i.i, %.preheader.i.i.preheader ]
  %i.t = getelementptr [4 x i8], ptr %.0.i16.i.i, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %.not14.i.i = icmp eq i32 %i.u, 0
  br i1 %.not14.i.i, label %.preheader.i.i, label %..critedge.i.i_crit_edge, !llvm.loop !150

..critedge.i.i_crit_edge:                         ; preds = %.lr.ph
  br label %.critedge.i.i, !llvm.loop !150

.critedge.i.i:                                    ; preds = %.preheader.i.i, %..critedge.i.i_crit_edge, %.preheader.i.i.preheader
  %.012.i.i.lcssa = phi i64 [ %.012.i.i9, %..critedge.i.i_crit_edge ], [ %.0.i21.i.i, %.preheader.i.i.preheader ], [ %i.s, %.preheader.i.i ] ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge.i.i
  %i.v = getelementptr i8, ptr %i.f, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit19.i.i

bb.g:                                             ; preds = %.critedge.i.i
  %i.x = lshr i64 %i.g, 15
  %i.y = and i64 %i.x, 511
  br label %BIGNUM_LEN.exit19.i.i

BIGNUM_LEN.exit19.i.i:                            ; preds = %bb.g, %bb.f
  %.0.i18.i.i = phi i64 [ %i.y, %bb.g ], [ %i.w, %bb.f ]
  %i.z = icmp ugt i64 %.0.i18.i.i, %.012.i.i.lcssa
  br i1 %i.z, label %bb.h, label %bigtrunc.exit.i

bb.h:                                             ; preds = %BIGNUM_LEN.exit19.i.i
  tail call void @rb_big_resize(i64 noundef %0, i64 noundef %.012.i.i.lcssa)
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !13
  br label %bigtrunc.exit.i

bigtrunc.exit.i:                                  ; preds = %bb.h, %BIGNUM_LEN.exit19.i.i, %BIGNUM_DIGITS.exit.i.i
  %i.aa = phi i64 [ %i.g, %BIGNUM_DIGITS.exit.i.i ], [ %i.g, %BIGNUM_LEN.exit19.i.i ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.ab = and i64 %i.aa, 16384
  %.not.i22.i = icmp eq i64 %i.ab, 0
end_hunk_4
begin_hunk_5_@big_shift3:bb.a
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
  %i.r = load i32, ptr %i.q, align 8, !tbaa !7
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
  %.017.lcssa = phi i64 [ %1, %bb.a ], [ %i.dn, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %i.b = ashr i64 %.017.lcssa, 1                  ; 2 uses
  %.lobit = lshr i64 %i.b, 63
  %.018 = trunc nuw nsw i64 %.lobit to i32
  %.0 = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  %i.c = trunc i64 %.0 to i32
  %i.d = and i32 %i.c, 31
  %i.e = lshr i64 %.0, 5
  %i.f = tail call fastcc i64 @big_shift3(i64 noundef %0, i32 noundef %.018, i64 noundef %i.e, i32 noundef %i.d) ; 7 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %i.f, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %._crit_edge
  %i.k = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13   ; 4 uses
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 10
  br i1 %i.n, label %bb.b, label %bignorm.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.o = and i64 %i.l, 16384
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.l, 15
  %i.q = and i64 %i.p, 511
  %i.r = getelementptr i8, ptr %i.k, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr i8, ptr %i.k, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.d, %bb.c
  %.0.i28.i.i = phi i64 [ %i.q, %bb.c ], [ %i.t, %bb.d ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.r, %bb.c ], [ %i.v, %bb.d ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.e
  %indvar92 = phi i32 [ %indvar.next93, %bb.e ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.aa, %bb.e ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.w = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aa = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.aa, 0
  %indvar.next93 = add i32 %indvar92, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ab = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.ab, label %bb.j, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ac = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.ad = trunc i64 %.0.i28.i.i to i32
  %i.ae = sub i32 %indvar92, %i.ad
  %i.af = icmp ugt i32 %i.ae, -4
  br i1 %i.af, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.ag, %.lr.ph36.i.i ], [ %i.ac, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter102 = phi i32 [ %niter102.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.ag = add i32 %.035.i.i, -4                   ; 3 uses
  %niter102.next.3 = add i32 %niter102, 4         ; 2 uses
  %niter102.ncmp.3 = icmp eq i32 %niter102.next.3, 0
  br i1 %niter102.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.ah = add i32 %.035.i.i, -3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw i64 %i.al, 32
  %i.an = sext i32 %i.ag to i64
  %i.ao = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = zext i32 %i.ap to i64
  %i.ar = or disjoint i64 %i.am, %i.aq
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.ac, %.lr.ph36.preheader.i.i ], [ %i.ag, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.ar, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.as, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.ay, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter96 = phi i32 [ %epil.iter96.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.as = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.at = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64
  %i.ay = or disjoint i64 %i.at, %i.ax            ; 4 uses
  %epil.iter96.next = add i32 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i32 %epil.iter96.next, %i.ac
  br i1 %epil.iter96.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !403

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.az = icmp ult i64 %i.at, 4611686018427387904
  %i.ba = and i64 %i.l, 8192
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.az, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bb = shl nuw nsw i64 %i.ay, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bignorm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.bd = icmp ult i64 %i.ay, 4611686018427387905
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.neg.i.i = mul nsw i64 %i.ay, -2
  %i.be = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.j:                                             ; preds = %bb.h, %bb.f, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %i.f, i64 noundef %.02332.i.i)
  br label %bignorm.exit

.lr.ph:                                           ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.01749 = phi i64 [ %i.dn, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %1, %bb.a ] ; 5 uses
  %i.bf = icmp eq i64 %.01749, 0
  %i.bg = and i64 %.01749, 6
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = or i1 %i.bf, %i.bh
  br i1 %i.bi, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit
end_hunk_5
begin_hunk_6_@bary_mul:bb.a
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %i.ce, align 4, !tbaa !7
  %i.cj = lshr i64 %i.ch, 32
  br label %.preheader.i.i.i47

.preheader.i.i.i47:                               ; preds = %.lr.ph.i.i.i41.epil.preheader, %bb.n, %.preheader.i.i.i47.unr-lcssa
  %.132.i.i.i45.lcssa = phi i64 [ %.132.i.i.i45.1, %.preheader.i.i.i47.unr-lcssa ], [ %i.cj, %bb.n ], [ 0, %.lr.ph.i.i.i41.epil.preheader ] ; 2 uses
  %i.ck = icmp uge i64 %3, %i.bu
  %i.cl = icmp eq i64 %.132.i.i.i45.lcssa, 0
  %or.cond38.i.i.i48 = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond38.i.i.i48, label %bary_muladd_1xN.exit.i.i53, label %.lr.ph41.i.i.i49

.lr.ph.i.i.i41:                                   ; preds = %.lr.ph.i.preheader.i.i40, %bb.q
  %.03036.i.i.i42 = phi i64 [ %i.dj, %bb.q ], [ 0, %.lr.ph.i.preheader.i.i40 ] ; 4 uses
  %.03135.i.i.i43 = phi i64 [ %.132.i.i.i45.1, %bb.q ], [ 0, %.lr.ph.i.preheader.i.i40 ]
  %niter80 = phi i64 [ %niter80.next.1, %bb.q ], [ 0, %.lr.ph.i.preheader.i.i40 ]
  %i.cm = getelementptr [4 x i8], ptr %2, i64 %.03036.i.i.i42
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul nuw i64 %i.co, %i.by
  %i.cq = add nuw i64 %i.cp, %.03135.i.i.i43      ; 2 uses
  %.not.i.i.i44 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i44, label %.lr.ph.i.i.i41.1, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i41
  %i.cr = getelementptr [4 x i8], ptr %i.bt, i64 %.03036.i.i.i42 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw i64 %i.cq, %i.ct                ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  store i32 %i.cv, ptr %i.cr, align 4, !tbaa !7
  %i.cw = lshr i64 %i.cu, 32
  br label %.lr.ph.i.i.i41.1

.lr.ph.i.i.i41.1:                                 ; preds = %bb.o, %.lr.ph.i.i.i41
  %.132.i.i.i45 = phi i64 [ %i.cw, %bb.o ], [ 0, %.lr.ph.i.i.i41 ]
  %i.cx = or disjoint i64 %.03036.i.i.i42, 1      ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %2, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = zext i32 %i.cz to i64
  %i.db = mul nuw i64 %i.da, %i.by
  %i.dc = add nuw i64 %i.db, %.132.i.i.i45        ; 2 uses
  %.not.i.i.i44.1 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i44.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i41.1
  %i.dd = getelementptr [4 x i8], ptr %i.bt, i64 %i.cx ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw i64 %i.dc, %i.df                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !7
  %i.di = lshr i64 %i.dg, 32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i41.1
  %.132.i.i.i45.1 = phi i64 [ %i.di, %bb.p ], [ 0, %.lr.ph.i.i.i41.1 ] ; 3 uses
  %i.dj = add nuw i64 %.03036.i.i.i42, 2          ; 2 uses
  %niter80.next.1 = add i64 %niter80, 2           ; 2 uses
  %niter80.ncmp.1 = icmp eq i64 %niter80.next.1, %unroll_iter79
  br i1 %niter80.ncmp.1, label %.preheader.i.i.i47.unr-lcssa, label %.lr.ph.i.i.i41, !llvm.loop !16

.lr.ph41.i.i.i49:                                 ; preds = %.preheader.i.i.i47, %.lr.ph41.i.i.i49
  %.140.i.i.i50 = phi i64 [ %i.dq, %.lr.ph41.i.i.i49 ], [ %3, %.preheader.i.i.i47 ] ; 2 uses
  %.239.i.i.i51 = phi i64 [ %i.dp, %.lr.ph41.i.i.i49 ], [ %.132.i.i.i45.lcssa, %.preheader.i.i.i47 ]
  %i.dk = getelementptr [4 x i8], ptr %i.bt, i64 %.140.i.i.i50 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %.239.i.i.i51, %i.dm    ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr %i.dk, align 4, !tbaa !7
  %i.dp = lshr i64 %i.dn, 32                      ; 2 uses
  %i.dq = add nuw i64 %.140.i.i.i50, 1            ; 2 uses
  %i.dr = icmp uge i64 %i.dq, %i.bu
  %i.ds = icmp eq i64 %i.dp, 0
  %or.cond.i.i.i52 = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond.i.i.i52, label %bary_muladd_1xN.exit.i.i53, label %.lr.ph41.i.i.i49, !llvm.loop !18

bary_muladd_1xN.exit.i.i53:                       ; preds = %.lr.ph41.i.i.i49, %.preheader.i.i.i47, %.lr.ph21.split.i.i38
  %i.dt = add nuw i64 %.01620.i.i39, 1            ; 2 uses
  %exitcond.not.i.i54 = icmp eq i64 %i.dt, %5
  br i1 %exitcond.not.i.i54, label %bary_mul_normal.exit.i55, label %.lr.ph21.split.i.i38, !llvm.loop !19

bary_mul_normal.exit.i55:                         ; preds = %bary_muladd_1xN.exit.i.i53, %.preheader.i.i34
  tail call void @rb_thread_check_ints() #23
  br label %bary_short_mul.exit

bb.r:                                             ; preds = %bb.l, %bb.b
  tail call void @bary_mul_toom3_start(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef null, i64 noundef 0)
  br label %bary_short_mul.exit

bary_short_mul.exit:                              ; preds = %bary_mul_normal.exit.i55, %bary_mul_normal.exit.i, %.lr.ph.preheader.i.i, %bb.f, %bb.d, %bb.r
  ret void
}

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #5

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #5

declare i64 @rb_usascii_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_usascii_str_new(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @big2str_karatsuba(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bary_zero_p.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.f = add i64 %.0.i, -1                        ; 3 uses
  %i.g = getelementptr [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.f, 0
  br i1 %.not7.i, label %bary_zero_p.exit, label %.preheader.i, !llvm.loop !158

bary_zero_p.exit:                                 ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !248
  %.not133 = icmp eq ptr %i.j, null
  br i1 %.not133, label %bb.ay, label %bb.c

bb.c:                                             ; preds = %bary_zero_p.exit
  %i.k = getelementptr i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !245
  %i.m = call fastcc i64 @power_cache_get_power(i32 noundef %i.l, i32 noundef %4, ptr noundef nonnull %i.d) ; 0 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !248
  %i.o = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.n, i8 noundef 48, i64 noundef %i.o, i1 noundef false) #23
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !248
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  store ptr %i.q, ptr %i.i, align 8, !tbaa !248
  br label %bb.ay

bb.d:                                             ; preds = %.preheader.i
  %i.r = icmp eq i32 %4, 0
  br i1 %i.r, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.s = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !248  ; 4 uses
  %.not.i134 = icmp eq ptr %i.t, null             ; 2 uses
  switch i64 %2, label %bary2bdigitdbl.exit.thread.i [
    i64 2, label %bb.f
    i64 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %1, align 4
  br label %bary2bdigitdbl.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = load i32, ptr %1, align 4, !tbaa !7
  %i.w = zext i32 %i.v to i64
  br label %bary2bdigitdbl.exit.i

bary2bdigitdbl.exit.i:                            ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.u, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  br i1 %.not.i134, label %bb.h, label %bb.p

bary2bdigitdbl.exit.thread.i:                     ; preds = %bb.e
  br i1 %.not.i134, label %big2str_2bdigits.exit, label %bb.p

bb.h:                                             ; preds = %bary2bdigitdbl.exit.i
  %i.x = icmp eq i64 %.0.i.i, 0
  br i1 %i.x, label %big2str_2bdigits.exit, label %.preheader.i135

.preheader.i135:                                  ; preds = %bb.h
  %i.y = getelementptr i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !245
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i135
  %.032.i = phi i64 [ %i.ac, %bb.i ], [ %.0.i.i, %.preheader.i135 ] ; 3 uses
  %.0.i136 = phi i64 [ %i.af, %bb.i ], [ 64, %.preheader.i135 ] ; 3 uses
  %i.ab = urem i64 %.032.i, %i.aa
  %i.ac = udiv i64 %.032.i, %i.aa
  %i.ad = getelementptr i8, ptr @ruby_digitmap, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = add i64 %.0.i136, -1                    ; 3 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.af
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !15
  %.not37.i = icmp ult i64 %.032.i, %i.aa
  br i1 %.not37.i, label %bb.j, label %bb.i, !llvm.loop !249

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.b, i64 %i.af
  %i.ai = sub i64 65, %.0.i136                    ; 3 uses
  %i.aj = add i64 %i.ai, %5                       ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 9223372036854775806
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.32) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.am = add nuw nsw i64 %i.aj, 1
  %i.an = tail call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %i.am) #23, !callees !236, !inline_history !250 ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !247
  %i.ap = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13
  %i.ar = and i64 %i.aq, 8192
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %i.as = getelementptr i8, ptr %i.ap, i64 24     ; 2 uses
  br i1 %.not.i.i.i, label %RSTRING_PTR.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.m, %bb.l
  %i.au = phi ptr [ %i.at, %bb.m ], [ %i.as, %bb.l ] ; 3 uses
  store ptr %i.au, ptr %i.s, align 8, !tbaa !248
  %i.av = load i32, ptr %0, align 8, !tbaa !242
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %big2str_alloc.exit.i, label %bb.n

bb.n:                                             ; preds = %RSTRING_PTR.exit.i.i
  %i.aw = getelementptr i8, ptr %i.au, i64 1
  store ptr %i.aw, ptr %i.s, align 8, !tbaa !248
  store i8 45, ptr %i.au, align 1, !tbaa !15
  br label %big2str_alloc.exit.i

big2str_alloc.exit.i:                             ; preds = %bb.n, %RSTRING_PTR.exit.i.i
  %.not.i38.i = icmp eq i64 %.0.i136, 65
  br i1 %.not.i38.i, label %ruby_nonempty_memcpy.exit.i, label %bb.o

bb.o:                                             ; preds = %big2str_alloc.exit.i
  %6 = load ptr, ptr %i.s, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %6, ptr noundef nonnull readonly align 1 %i.ah, i64 noundef range(i64 1, 0) %i.ai, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit.i

bb.p:                                             ; preds = %bary2bdigitdbl.exit.thread.i, %bary2bdigitdbl.exit.i
  %.0.i42.i = phi i64 [ 0, %bary2bdigitdbl.exit.thread.i ], [ %.0.i.i, %bary2bdigitdbl.exit.i ] ; 3 uses
  %i.ax = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !435 ; 3 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.bb = and i32 %i.ay, 1
  %lcmp.mod335.not = icmp eq i32 %i.bb, 0
  br i1 %lcmp.mod335.not, label %.prol.loopexit332, label %.prol.loopexit332.unr-lcssa

.prol.loopexit332.unr-lcssa:                      ; preds = %bb.p
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !245
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = urem i64 %.0.i42.i, %i.bd
  %i.bf = udiv i64 %.0.i42.i, %i.bd
  %i.bg = getelementptr i8, ptr @ruby_digitmap, i64 %i.be
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15
  %i.bi = add nsw i64 %i.az, -1                   ; 2 uses
  %i.bj = getelementptr i8, ptr %i.t, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !15
  br label %.prol.loopexit332

.prol.loopexit332:                                ; preds = %.prol.loopexit332.unr-lcssa, %bb.p
  %.133.i.unr = phi i64 [ %.0.i42.i, %bb.p ], [ %i.bf, %.prol.loopexit332.unr-lcssa ]
  %.1.i.unr = phi i64 [ %i.az, %bb.p ], [ %i.bi, %.prol.loopexit332.unr-lcssa ]
  %i.bk = icmp eq i32 %i.ay, 1
  br i1 %i.bk, label %.unr-lcssa336, label %.new333

.new333:                                          ; preds = %.prol.loopexit332, %.new333
  %.133.i = phi i64 [ %i.bw, %.new333 ], [ %.133.i.unr, %.prol.loopexit332 ] ; 2 uses
  %.1.i = phi i64 [ %i.bz, %.new333 ], [ %.1.i.unr, %.prol.loopexit332 ] ; 2 uses
  %i.bl = load i32, ptr %i.ba, align 4, !tbaa !245
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = urem i64 %.133.i, %i.bm
  %i.bo = udiv i64 %.133.i, %i.bm                 ; 2 uses
  %i.bp = getelementptr i8, ptr @ruby_digitmap, i64 %i.bn
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15
  %i.br = getelementptr i8, ptr %i.t, i64 %.1.i
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !15
  %i.bt = load i32, ptr %i.ba, align 4, !tbaa !245
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = urem i64 %i.bo, %i.bu
  %i.bw = udiv i64 %i.bo, %i.bu
  %i.bx = getelementptr i8, ptr @ruby_digitmap, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15
  %i.bz = add i64 %.1.i, -2                       ; 3 uses
  %i.ca = getelementptr i8, ptr %i.t, i64 %i.bz
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !15
  %.not36.i.1 = icmp eq i64 %i.bz, 0
  br i1 %.not36.i.1, label %.unr-lcssa336, label %.new333, !llvm.loop !436

.unr-lcssa336:                                    ; preds = %.new333, %.prol.loopexit332
  %i.cb = load i32, ptr %i.ax, align 8, !tbaa !435
  %i.cc = sext i32 %i.cb to i64
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %.unr-lcssa336, %bb.o, %big2str_alloc.exit.i
  %.034.i = phi i64 [ %i.cc, %.unr-lcssa336 ], [ 0, %big2str_alloc.exit.i ], [ %i.ai, %bb.o ]
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !248
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.034.i
  store ptr %i.ce, ptr %i.s, align 8, !tbaa !248
  br label %big2str_2bdigits.exit

big2str_2bdigits.exit:                            ; preds = %bary2bdigitdbl.exit.thread.i, %bb.h, %ruby_nonempty_memcpy.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ay

bb.q:                                             ; preds = %bb.d
  %i.cf = add i32 %4, -1                          ; 5 uses
  %i.cg = getelementptr i8, ptr %0, i64 4         ; 6 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !245
  %i.ci = call fastcc i64 @power_cache_get_power(i32 noundef %i.ch, i32 noundef %i.cf, ptr noundef nonnull %i.c)
  %i.cj = inttoptr i64 %i.ci to ptr               ; 4 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.cl = and i64 %i.ck, 16384
  %.not.i137 = icmp eq i64 %i.cl, 0
  br i1 %.not.i137, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = lshr i64 %i.ck, 15
  %i.cn = and i64 %i.cm, 511
  %i.co = getelementptr i8, ptr %i.cj, i64 16
  br label %BIGNUM_DIGITS.exit

bb.s:                                             ; preds = %bb.q
  %i.cp = getelementptr i8, ptr %i.cj, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr i8, ptr %i.cj, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.r, %bb.s
  %.0.i138194 = phi i64 [ %i.cn, %bb.r ], [ %i.cq, %bb.s ] ; 2 uses
  %.0.i140 = phi ptr [ %i.co, %bb.r ], [ %i.cs, %bb.s ] ; 2 uses
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cu = icmp sgt i32 %i.cf, 0
  br i1 %i.cu, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit, %BIGNUM_DIGITS.exit150
  %.0121219 = phi i32 [ %i.ea, %BIGNUM_DIGITS.exit150 ], [ %i.cf, %BIGNUM_DIGITS.exit ] ; 7 uses
  %.0122218 = phi i64 [ %.0.i146198, %BIGNUM_DIGITS.exit150 ], [ %.0.i138194, %BIGNUM_DIGITS.exit ] ; 3 uses
  %.0123217.a = phi ptr [ %.0.i149, %BIGNUM_DIGITS.exit150 ], [ %.0.i140, %BIGNUM_DIGITS.exit ] ; 8 uses
  %i.cv = icmp ult i64 %2, %.0122218
  br i1 %i.cv, label %.critedge2, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.cw = icmp eq i64 %2, %.0122218
  br i1 %i.cw, label %.lr.ph.i, label %.critedge.thread

.lr.ph.i:                                         ; preds = %bb.t, %bb.u
  %.03337.i = phi i64 [ %i.db, %bb.u ], [ %2, %bb.t ] ; 3 uses
  %i.cx = getelementptr [4 x i8], ptr %1, i64 %.03337.i
  %i.cy = getelementptr i8, ptr %i.cx, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.u, label %.lr.ph42.i.preheader

bb.u:                                             ; preds = %.lr.ph.i
  %i.db = add i64 %.03337.i, -1                   ; 2 uses
  %.not.i144 = icmp eq i64 %i.db, 0
  br i1 %.not.i144, label %.lr.ph42.i.preheader, label %.lr.ph.i, !llvm.loop !269

.lr.ph42.i.preheader:                             ; preds = %.lr.ph.i, %bb.u
  %.033.lcssa.i = phi i64 [ 0, %bb.u ], [ %.03337.i, %.lr.ph.i ] ; 7 uses
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %bb.v
  %.03141.i = phi i64 [ %i.dg, %bb.v ], [ %2, %.lr.ph42.i.preheader ] ; 3 uses
  %i.dc = getelementptr [4 x i8], ptr %.0123217.a, i64 %.03141.i
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.v, label %.critedge2.i

bb.v:                                             ; preds = %.lr.ph42.i
  %i.dg = add i64 %.03141.i, -1                   ; 2 uses
  %.not34.i = icmp eq i64 %i.dg, 0
  br i1 %.not34.i, label %.critedge2.i, label %.lr.ph42.i, !llvm.loop !270

.critedge2.i:                                     ; preds = %bb.v, %.lr.ph42.i
  %.031.lcssa.i.ph = phi i64 [ %.03141.i, %.lr.ph42.i ], [ 0, %bb.v ] ; 4 uses
  %i.dh = icmp ult i64 %.033.lcssa.i, %.031.lcssa.i.ph
  br i1 %i.dh, label %.critedge2, label %bb.w

bb.w:                                             ; preds = %.critedge2.i
  %i.di = icmp ugt i64 %.033.lcssa.i, %.031.lcssa.i.ph
  br i1 %i.di, label %.critedge, label %.preheader.i142

.preheader.i142:                                  ; preds = %bb.w
  %.not51.i = icmp eq i64 %.033.lcssa.i, 0
  br i1 %.not51.i, label %._crit_edge.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.preheader.i142
  %i.dj = getelementptr [4 x i8], ptr %1, i64 %.033.lcssa.i
  %i.dk = getelementptr [4 x i8], ptr %.0123217.a, i64 %.031.lcssa.i.ph
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph47.i
  %.046.i = phi i64 [ 0, %.lr.ph47.i ], [ %i.dq, %bb.y ] ; 3 uses
  %i.dl = xor i64 %.046.i, -1                     ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.dj, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.do = getelementptr [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !7
  %.not35.i = icmp eq i32 %i.dn, %i.dp
  br i1 %.not35.i, label %bb.y, label %._crit_edge.i

bb.y:                                             ; preds = %bb.x
  %i.dq = add nuw i64 %.046.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dq, %.033.lcssa.i
  br i1 %exitcond.not.i, label %.critedge, label %bb.x, !llvm.loop !271

._crit_edge.i:                                    ; preds = %bb.x, %.preheader.i142
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i142 ], [ %.046.i, %bb.x ] ; 2 uses
  %i.dr = icmp eq i64 %.0.lcssa.i, %.033.lcssa.i
  br i1 %i.dr, label %.critedge, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.ds = xor i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %1, i64 %.033.lcssa.i
  %i.du = getelementptr [4 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = getelementptr [4 x i8], ptr %.0123217.a, i64 %.031.lcssa.i.ph
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7
  %i.dz = icmp ult i32 %i.dv, %i.dy
  br i1 %i.dz, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.z, %.critedge2.i, %.lr.ph
  %i.ea = add nsw i32 %.0121219, -1               ; 2 uses
  %i.eb = load i32, ptr %i.cg, align 4, !tbaa !245
  %i.ec = call fastcc i64 @power_cache_get_power(i32 noundef %i.eb, i32 noundef %i.ea, ptr noundef nonnull %i.c)
  %i.ed = inttoptr i64 %i.ec to ptr               ; 4 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !13 ; 2 uses
  %i.ef = and i64 %i.ee, 16384
  %.not.i145 = icmp eq i64 %i.ef, 0
  br i1 %.not.i145, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge2
  %i.eg = lshr i64 %i.ee, 15
  %i.eh = and i64 %i.eg, 511
  %i.ei = getelementptr i8, ptr %i.ed, i64 16
  br label %BIGNUM_DIGITS.exit150

bb.ab:                                            ; preds = %.critedge2
  %i.ej = getelementptr i8, ptr %i.ed, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !15
  %i.el = getelementptr i8, ptr %i.ed, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit150

BIGNUM_DIGITS.exit150:                            ; preds = %bb.aa, %bb.ab
  %.0.i146198 = phi i64 [ %i.eh, %bb.aa ], [ %i.ek, %bb.ab ] ; 2 uses
  %.0.i149 = phi ptr [ %i.ei, %bb.aa ], [ %i.em, %bb.ab ] ; 2 uses
  %i.en = icmp sgt i32 %.0121219, 1
  br i1 %i.en, label %.lr.ph, label %.critedge.thread271, !llvm.loop !437

.critedge:                                        ; preds = %bb.z, %bb.w, %._crit_edge.i, %bb.y, %BIGNUM_DIGITS.exit
  %.0123216 = phi ptr [ %.0123217.a, %bb.y ], [ %.0.i140, %BIGNUM_DIGITS.exit ], [ %.0123217.a, %._crit_edge.i ], [ %.0123217.a, %bb.w ], [ %.0123217.a, %bb.z ] ; 2 uses
  %.0122212 = phi i64 [ %2, %bb.y ], [ %.0.i138194, %BIGNUM_DIGITS.exit ], [ %2, %._crit_edge.i ], [ %2, %bb.w ], [ %2, %bb.z ] ; 2 uses
  %.0121208 = phi i32 [ %.0121219, %bb.y ], [ %i.cf, %BIGNUM_DIGITS.exit ], [ %.0121219, %._crit_edge.i ], [ %.0121219, %bb.w ], [ %.0121219, %bb.z ] ; 2 uses
  %i.eo = icmp eq i32 %.0121208, 0
  br i1 %i.eo, label %.critedge.thread271, label %.critedge.thread

.critedge.thread271:                              ; preds = %BIGNUM_DIGITS.exit150, %.critedge
  %.0122212276 = phi i64 [ %.0122212, %.critedge ], [ %.0.i146198, %BIGNUM_DIGITS.exit150 ] ; 3 uses
  %.0123216275 = phi ptr [ %.0123216, %.critedge ], [ %.0.i149, %BIGNUM_DIGITS.exit150 ] ; 3 uses
  %i.ep = icmp ult i64 %2, %.0122212276
  br i1 %i.ep, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.critedge.thread271
  %i.eq = icmp eq i64 %2, %.0122212276
  br i1 %i.eq, label %bb.ad, label %.critedge.thread

bb.ad:                                            ; preds = %bb.ac
  %i.er = call fastcc i32 @bary_cmp(ptr noundef %1, i64 noundef %2, ptr noundef %.0123216275, i64 noundef %2)
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.ae, label %.critedge.thread

bb.ae:                                            ; preds = %bb.ad, %.critedge.thread271
  %i.et = getelementptr i8, ptr %0, i64 32        ; 8 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !248 ; 2 uses
  %.not132 = icmp eq ptr %i.eu, null
  br i1 %.not132, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = shl i64 %i.ct, 1
  %i.ew = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.eu, i8 noundef 48, i64 noundef %i.ex, i1 noundef false) #23
  %i.ey = load ptr, ptr %i.et, align 8, !tbaa !248
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ex  ; 2 uses
  store ptr %i.ez, ptr %i.et, align 8, !tbaa !248
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fa = phi ptr [ %i.ez, %bb.af ], [ null, %bb.ae ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i151 = icmp eq ptr %i.fa, null            ; 2 uses
  switch i64 %2, label %bary2bdigitdbl.exit.thread.i169 [
    i64 2, label %bb.ah
    i64 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fb = load i64, ptr %1, align 4
  br label %bary2bdigitdbl.exit.i152

bb.ai:                                            ; preds = %bb.ag
  %i.fc = load i32, ptr %1, align 4, !tbaa !7
  %i.fd = zext i32 %i.fc to i64
  br label %bary2bdigitdbl.exit.i152

bary2bdigitdbl.exit.i152:                         ; preds = %bb.ai, %bb.ah
  %.0.i.i153 = phi i64 [ %i.fb, %bb.ah ], [ %i.fd, %bb.ai ] ; 3 uses
  br i1 %.not.i151, label %bb.aj, label %bb.ar

bary2bdigitdbl.exit.thread.i169:                  ; preds = %bb.ag
  br i1 %.not.i151, label %big2str_2bdigits.exit170, label %bb.ar

bb.aj:                                            ; preds = %bary2bdigitdbl.exit.i152
  %i.fe = icmp eq i64 %.0.i.i153, 0
  br i1 %i.fe, label %big2str_2bdigits.exit170, label %.preheader.i160

.preheader.i160:                                  ; preds = %bb.aj
  %i.ff = load i32, ptr %i.cg, align 4, !tbaa !245
  %i.fg = sext i32 %i.ff to i64                   ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.preheader.i160
  %.032.i161 = phi i64 [ %i.fi, %bb.ak ], [ %.0.i.i153, %.preheader.i160 ] ; 3 uses
  %.0.i162 = phi i64 [ %i.fl, %bb.ak ], [ 64, %.preheader.i160 ] ; 3 uses
  %i.fh = urem i64 %.032.i161, %i.fg
  %i.fi = udiv i64 %.032.i161, %i.fg
  %i.fj = getelementptr i8, ptr @ruby_digitmap, i64 %i.fh
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  %i.fl = add i64 %.0.i162, -1                    ; 3 uses
  %i.fm = getelementptr i8, ptr %i.a, i64 %i.fl
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !15
  %.not37.i163 = icmp ult i64 %.032.i161, %i.fg
  br i1 %.not37.i163, label %bb.al, label %bb.ak, !llvm.loop !249

bb.al:                                            ; preds = %bb.ak
  %i.fn = getelementptr i8, ptr %i.a, i64 %i.fl
  %i.fo = sub i64 65, %.0.i162                    ; 3 uses
  %i.fp = add i64 %i.fo, %5                       ; 2 uses
  %i.fq = icmp ugt i64 %i.fp, 9223372036854775806
  br i1 %i.fq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fr = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fr, ptr noundef nonnull @.str.32) #25
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fs = add nuw nsw i64 %i.fp, 1
  %i.ft = call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %i.fs) #23, !callees !236, !inline_history !250 ; 2 uses
  %i.fu = getelementptr i8, ptr %0, i64 24
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !247
  %i.fv = inttoptr i64 %i.ft to ptr               ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !13
  %i.fx = and i64 %i.fw, 8192
  %.not.i.i.i164 = icmp eq i64 %i.fx, 0
  %i.fy = getelementptr i8, ptr %i.fv, i64 24     ; 2 uses
  br i1 %.not.i.i.i164, label %RSTRING_PTR.exit.i.i165, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i.i165

RSTRING_PTR.exit.i.i165:                          ; preds = %bb.ao, %bb.an
  %i.ga = phi ptr [ %i.fz, %bb.ao ], [ %i.fy, %bb.an ] ; 3 uses
  store ptr %i.ga, ptr %i.et, align 8, !tbaa !248
  %i.gb = load i32, ptr %0, align 8, !tbaa !242
  %.not.i.i166 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i166, label %big2str_alloc.exit.i167, label %bb.ap

bb.ap:                                            ; preds = %RSTRING_PTR.exit.i.i165
  %i.gc = getelementptr i8, ptr %i.ga, i64 1
  store ptr %i.gc, ptr %i.et, align 8, !tbaa !248
  store i8 45, ptr %i.ga, align 1, !tbaa !15
  br label %big2str_alloc.exit.i167

big2str_alloc.exit.i167:                          ; preds = %bb.ap, %RSTRING_PTR.exit.i.i165
  %.not.i38.i168 = icmp eq i64 %.0.i162, 65
  br i1 %.not.i38.i168, label %ruby_nonempty_memcpy.exit.i158, label %bb.aq

bb.aq:                                            ; preds = %big2str_alloc.exit.i167
  %7 = load ptr, ptr %i.et, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %7, ptr noundef nonnull readonly align 1 %i.fn, i64 noundef range(i64 1, 0) %i.fo, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit.i158

bb.ar:                                            ; preds = %bary2bdigitdbl.exit.thread.i169, %bary2bdigitdbl.exit.i152
  %.0.i42.i154 = phi i64 [ 0, %bary2bdigitdbl.exit.thread.i169 ], [ %.0.i.i153, %bary2bdigitdbl.exit.i152 ] ; 3 uses
  %i.gd = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !435 ; 3 uses
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = and i32 %i.ge, 1
  %lcmp.mod329.not = icmp eq i32 %i.gg, 0
  br i1 %lcmp.mod329.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ar
  %i.gh = load i32, ptr %i.cg, align 4, !tbaa !245
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = urem i64 %.0.i42.i154, %i.gi
  %i.gk = udiv i64 %.0.i42.i154, %i.gi
  %i.gl = getelementptr i8, ptr @ruby_digitmap, i64 %i.gj
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = add nsw i64 %i.gf, -1                   ; 2 uses
  %i.go = getelementptr i8, ptr %i.fa, i64 %i.gn
  store i8 %i.gm, ptr %i.go, align 1, !tbaa !15
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ar
  %.133.i155.unr = phi i64 [ %.0.i42.i154, %bb.ar ], [ %i.gk, %.prol.loopexit.unr-lcssa ]
  %.1.i156.unr = phi i64 [ %i.gf, %bb.ar ], [ %i.gn, %.prol.loopexit.unr-lcssa ]
  %i.gp = icmp eq i32 %i.ge, 1
  br i1 %i.gp, label %.unr-lcssa330, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.133.i155 = phi i64 [ %i.hb, %.new ], [ %.133.i155.unr, %.prol.loopexit ] ; 2 uses
  %.1.i156 = phi i64 [ %i.he, %.new ], [ %.1.i156.unr, %.prol.loopexit ] ; 2 uses
  %i.gq = load i32, ptr %i.cg, align 4, !tbaa !245
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = urem i64 %.133.i155, %i.gr
  %i.gt = udiv i64 %.133.i155, %i.gr              ; 2 uses
  %i.gu = getelementptr i8, ptr @ruby_digitmap, i64 %i.gs
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !15
  %i.gw = getelementptr i8, ptr %i.fa, i64 %.1.i156
  %i.gx = getelementptr i8, ptr %i.gw, i64 -1
  store i8 %i.gv, ptr %i.gx, align 1, !tbaa !15
  %i.gy = load i32, ptr %i.cg, align 4, !tbaa !245
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = urem i64 %i.gt, %i.gz
  %i.hb = udiv i64 %i.gt, %i.gz
  %i.hc = getelementptr i8, ptr @ruby_digitmap, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !15
  %i.he = add i64 %.1.i156, -2                    ; 3 uses
  %i.hf = getelementptr i8, ptr %i.fa, i64 %i.he
  store i8 %i.hd, ptr %i.hf, align 1, !tbaa !15
  %.not36.i157.1 = icmp eq i64 %i.he, 0
  br i1 %.not36.i157.1, label %.unr-lcssa330, label %.new, !llvm.loop !436

.unr-lcssa330:                                    ; preds = %.new, %.prol.loopexit
  %i.hg = load i32, ptr %i.gd, align 8, !tbaa !435
  %i.hh = sext i32 %i.hg to i64
  br label %ruby_nonempty_memcpy.exit.i158

ruby_nonempty_memcpy.exit.i158:                   ; preds = %.unr-lcssa330, %bb.aq, %big2str_alloc.exit.i167
  %.034.i159 = phi i64 [ %i.hh, %.unr-lcssa330 ], [ 0, %big2str_alloc.exit.i167 ], [ %i.fo, %bb.aq ]
  %i.hi = load ptr, ptr %i.et, align 8, !tbaa !248
  %i.hj = getelementptr i8, ptr %i.hi, i64 %.034.i159
  store ptr %i.hj, ptr %i.et, align 8, !tbaa !248
  br label %big2str_2bdigits.exit170

big2str_2bdigits.exit170:                         ; preds = %bary2bdigitdbl.exit.thread.i169, %bb.aj, %ruby_nonempty_memcpy.exit.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ay

.critedge.thread:                                 ; preds = %bb.t, %bb.ad, %bb.ac, %.critedge
  %.0123215 = phi ptr [ %.0123216, %.critedge ], [ %.0123216275, %bb.ad ], [ %.0123216275, %bb.ac ], [ %.0123217.a, %bb.t ] ; 4 uses
  %.0122211 = phi i64 [ %.0122212, %.critedge ], [ %2, %bb.ad ], [ %.0122212276, %bb.ac ], [ %.0122218, %bb.t ] ; 17 uses
  %.0121207 = phi i32 [ %.0121208, %.critedge ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ %.0121219, %bb.t ] ; 3 uses
  %.not127 = icmp eq i32 %.0121207, %i.cf
  br i1 %.not127, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.critedge.thread
  %i.hk = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !248 ; 2 uses
  %.not128 = icmp eq ptr %i.hl, null
  br i1 %.not128, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hm = load i64, ptr %i.c, align 8, !tbaa !11
  %i.hn = sub i64 %i.ct, %i.hm
  %i.ho = shl i64 %i.hn, 1                        ; 3 uses
  store i64 %i.ho, ptr %i.d, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.hl, i8 noundef 48, i64 noundef %i.ho, i1 noundef false) #23
  %i.hp = load ptr, ptr %i.hk, align 8, !tbaa !248
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.ho
  store ptr %i.hq, ptr %i.hk, align 8, !tbaa !248
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.critedge.thread
  %i.hr = getelementptr [4 x i8], ptr %.0123215, i64 %.0122211
  %i.hs = getelementptr i8, ptr %i.hr, i64 -4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !7
  %i.hu = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ht, i1 false) ; 2 uses
  %i.hv = add i64 %2, 1                           ; 4 uses
  %i.hw = icmp eq i32 %i.hu, 0
  br i1 %i.hw, label %.thread, label %bb.av

.thread:                                          ; preds = %bb.au
  %i.hx = getelementptr [4 x i8], ptr %1, i64 %2
  store i32 0, ptr %i.hx, align 4, !tbaa !7
  call fastcc void @bigdivrem_restoring(ptr noundef %1, i64 noundef %i.hv, ptr noundef nonnull %.0123215, i64 noundef %.0122211)
  br label %bary_small_rshift.exit

bb.av:                                            ; preds = %bb.au
  %i.hy = getelementptr [4 x i8], ptr %1, i64 %i.hv ; 3 uses
  %.not.i171 = icmp eq i64 %.0122211, 0           ; 2 uses
  %.pre = zext nneg i32 %i.hu to i64              ; 12 uses
  br i1 %.not.i171, label %.lr.ph.i177.preheader, label %.lr.ph.i172.preheader

.lr.ph.i172.preheader:                            ; preds = %bb.av
  %xtraiter = and i64 %.0122211, 3                ; 3 uses
  %i.hz = icmp ult i64 %.0122211, 4
  br i1 %i.hz, label %.lr.ph.i172.epil.preheader, label %.lr.ph.i172.preheader.new

.lr.ph.i172.preheader.new:                        ; preds = %.lr.ph.i172.preheader
  %unroll_iter = and i64 %.0122211, -4
  br label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %.lr.ph.i172, %.lr.ph.i172.preheader.new
  %.015.i = phi i64 [ 0, %.lr.ph.i172.preheader.new ], [ %i.jf, %.lr.ph.i172 ]
  %.01013.i = phi ptr [ %i.hy, %.lr.ph.i172.preheader.new ], [ %i.je, %.lr.ph.i172 ] ; 5 uses
  %.01112.i = phi ptr [ %.0123215, %.lr.ph.i172.preheader.new ], [ %i.iy, %.lr.ph.i172 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i172.preheader.new ], [ %niter.next.3, %.lr.ph.i172 ]
  %i.ia = getelementptr i8, ptr %.01112.i, i64 4
  %i.ib = load i32, ptr %.01112.i, align 4, !tbaa !7
  %i.ic = zext i32 %i.ib to i64
  %i.id = shl nuw i64 %i.ic, %.pre                ; 2 uses
  %i.ie = or i64 %i.id, %.015.i
  %i.if = trunc i64 %i.ie to i32
  %i.ig = getelementptr i8, ptr %.01013.i, i64 4
  store i32 %i.if, ptr %.01013.i, align 4, !tbaa !7
  %i.ih = lshr i64 %i.id, 32
  %i.ii = getelementptr i8, ptr %.01112.i, i64 8
  %i.ij = load i32, ptr %i.ia, align 4, !tbaa !7
  %i.ik = zext i32 %i.ij to i64
  %i.il = shl nuw i64 %i.ik, %.pre                ; 2 uses
  %i.im = or i64 %i.il, %i.ih
  %i.in = trunc i64 %i.im to i32
  %i.io = getelementptr i8, ptr %.01013.i, i64 8
  store i32 %i.in, ptr %i.ig, align 4, !tbaa !7
  %i.ip = lshr i64 %i.il, 32
  %i.iq = getelementptr i8, ptr %.01112.i, i64 12
  %i.ir = load i32, ptr %i.ii, align 4, !tbaa !7
  %i.is = zext i32 %i.ir to i64
  %i.it = shl nuw i64 %i.is, %.pre                ; 2 uses
  %i.iu = or i64 %i.it, %i.ip
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = getelementptr i8, ptr %.01013.i, i64 12
  store i32 %i.iv, ptr %i.io, align 4, !tbaa !7
  %i.ix = lshr i64 %i.it, 32
  %i.iy = getelementptr i8, ptr %.01112.i, i64 16 ; 2 uses
  %i.iz = load i32, ptr %i.iq, align 4, !tbaa !7
  %i.ja = zext i32 %i.iz to i64
  %i.jb = shl nuw i64 %i.ja, %.pre                ; 2 uses
  %i.jc = or i64 %i.jb, %i.ix
  %i.jd = trunc i64 %i.jc to i32
  %i.je = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  store i32 %i.jd, ptr %i.iw, align 4, !tbaa !7
  %i.jf = lshr i64 %i.jb, 32                      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i177.preheader.loopexit.unr-lcssa, label %.lr.ph.i172, !llvm.loop !88

.lr.ph.i177.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph.i172
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i177.preheader, label %.lr.ph.i172.epil.preheader

.lr.ph.i172.epil.preheader:                       ; preds = %.lr.ph.i177.preheader.loopexit.unr-lcssa, %.lr.ph.i172.preheader
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i172.preheader ], [ %i.jf, %.lr.ph.i177.preheader.loopexit.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.hy, %.lr.ph.i172.preheader ], [ %i.je, %.lr.ph.i177.preheader.loopexit.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %.0123215, %.lr.ph.i172.preheader ], [ %i.iy, %.lr.ph.i177.preheader.loopexit.unr-lcssa ]
  %lcmp.mod320 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod320)
  br label %.lr.ph.i172.epil

.lr.ph.i172.epil:                                 ; preds = %.lr.ph.i172.epil, %.lr.ph.i172.epil.preheader
  %.015.i.epil = phi i64 [ %i.jn, %.lr.ph.i172.epil ], [ %.015.i.epil.init, %.lr.ph.i172.epil.preheader ]
  %.01013.i.epil = phi ptr [ %i.jm, %.lr.ph.i172.epil ], [ %.01013.i.epil.init, %.lr.ph.i172.epil.preheader ] ; 2 uses
  %.01112.i.epil = phi ptr [ %i.jg, %.lr.ph.i172.epil ], [ %.01112.i.epil.init, %.lr.ph.i172.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i172.epil ], [ 0, %.lr.ph.i172.epil.preheader ]
  %i.jg = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.jh = load i32, ptr %.01112.i.epil, align 4, !tbaa !7
  %i.ji = zext i32 %i.jh to i64
  %i.jj = shl nuw i64 %i.ji, %.pre                ; 2 uses
  %i.jk = or i64 %i.jj, %.015.i.epil
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.jl, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.jn = lshr i64 %i.jj, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i177.preheader, label %.lr.ph.i172.epil, !llvm.loop !438

.lr.ph.i177.preheader:                            ; preds = %.lr.ph.i177.preheader.loopexit.unr-lcssa, %.lr.ph.i172.epil, %bb.av
  %i.jo = add i64 %2, -1
  %xtraiter321 = and i64 %2, 3                    ; 3 uses
  %i.jp = icmp ult i64 %i.jo, 3
  br i1 %i.jp, label %.lr.ph.i177.epil.preheader, label %.lr.ph.i177.preheader.new

.lr.ph.i177.preheader.new:                        ; preds = %.lr.ph.i177.preheader
  %unroll_iter326 = and i64 %2, -4
  br label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.i177.preheader.new
  %.015.i178 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %i.kr, %.lr.ph.i177 ]
  %.01013.i180 = phi ptr [ %1, %.lr.ph.i177.preheader.new ], [ %i.kl, %.lr.ph.i177 ] ; 6 uses
  %niter327 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %niter327.next.3, %.lr.ph.i177 ]
  %i.jq = getelementptr i8, ptr %.01013.i180, i64 4 ; 2 uses
  %i.jr = load i32, ptr %.01013.i180, align 4, !tbaa !7
  %i.js = zext i32 %i.jr to i64
  %i.jt = shl nuw i64 %i.js, %.pre                ; 2 uses
  %i.ju = or i64 %i.jt, %.015.i178
  %i.jv = trunc i64 %i.ju to i32
  store i32 %i.jv, ptr %.01013.i180, align 4, !tbaa !7
  %i.jw = lshr i64 %i.jt, 32
  %i.jx = getelementptr i8, ptr %.01013.i180, i64 8 ; 2 uses
  %i.jy = load i32, ptr %i.jq, align 4, !tbaa !7
  %i.jz = zext i32 %i.jy to i64
  %i.ka = shl nuw i64 %i.jz, %.pre                ; 2 uses
  %i.kb = or i64 %i.ka, %i.jw
  %i.kc = trunc i64 %i.kb to i32
  store i32 %i.kc, ptr %i.jq, align 4, !tbaa !7
  %i.kd = lshr i64 %i.ka, 32
  %i.ke = getelementptr i8, ptr %.01013.i180, i64 12 ; 2 uses
  %i.kf = load i32, ptr %i.jx, align 4, !tbaa !7
  %i.kg = zext i32 %i.kf to i64
  %i.kh = shl nuw i64 %i.kg, %.pre                ; 2 uses
  %i.ki = or i64 %i.kh, %i.kd
  %i.kj = trunc i64 %i.ki to i32
  store i32 %i.kj, ptr %i.jx, align 4, !tbaa !7
  %i.kk = lshr i64 %i.kh, 32
  %i.kl = getelementptr i8, ptr %.01013.i180, i64 16 ; 2 uses
  %i.km = load i32, ptr %i.ke, align 4, !tbaa !7
  %i.kn = zext i32 %i.km to i64
  %i.ko = shl nuw i64 %i.kn, %.pre                ; 2 uses
  %i.kp = or i64 %i.ko, %i.kk
  %i.kq = trunc i64 %i.kp to i32
  store i32 %i.kq, ptr %i.ke, align 4, !tbaa !7
  %i.kr = lshr i64 %i.ko, 32                      ; 3 uses
  %niter327.next.3 = add i64 %niter327, 4         ; 2 uses
  %niter327.ncmp.3 = icmp eq i64 %niter327.next.3, %unroll_iter326
  br i1 %niter327.ncmp.3, label %.unr-lcssa, label %.lr.ph.i177, !llvm.loop !88

.unr-lcssa:                                       ; preds = %.lr.ph.i177
  %lcmp.mod323.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod323.not, label %.epilog-lcssa, label %.lr.ph.i177.epil.preheader

.lr.ph.i177.epil.preheader:                       ; preds = %.unr-lcssa, %.lr.ph.i177.preheader
  %.015.i178.epil.init = phi i64 [ 0, %.lr.ph.i177.preheader ], [ %i.kr, %.unr-lcssa ]
  %.01013.i180.epil.init = phi ptr [ %1, %.lr.ph.i177.preheader ], [ %i.kl, %.unr-lcssa ]
  %lcmp.mod325 = icmp ne i64 %xtraiter321, 0
  call void @llvm.assume(i1 %lcmp.mod325)
  br label %.lr.ph.i177.epil

.lr.ph.i177.epil:                                 ; preds = %.lr.ph.i177.epil, %.lr.ph.i177.epil.preheader
end_hunk_6
