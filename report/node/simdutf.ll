Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZNK7simdutf7icelake14implementation25utf32_length_from_utf16beEPKDsm:bb.a

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.a
  %.117.i = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph.i ]
  %.1.i = phi ptr [ %1, %bb.a ], [ %i.f, %.lr.ph.i ] ; 4 uses
  %i.n = ptrtoint ptr %.1.i to i64
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 1                   ; 2 uses
  %i.r = sub i64 %2, %i.q                         ; 8 uses
  %.not.i.i = icmp eq i64 %2, %i.q
  br i1 %.not.i.i, label %_ZNK7simdutf7icelake14implementation13count_utf16beEPKDsm.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit.i
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.r, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.r, 24
  %n.vec = and i64 %i.r, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi12 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi13 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi14 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.1.i, i64 %index ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %wide.load = load <8 x i16>, ptr %i.t, align 2
  %wide.load15 = load <8 x i16>, ptr %i.u, align 2
  %wide.load16 = load <8 x i16>, ptr %i.v, align 2
  %wide.load17 = load <8 x i16>, ptr %i.w, align 2
  %i.x = and <8 x i16> %wide.load, splat (i16 252)
  %i.y = and <8 x i16> %wide.load15, splat (i16 252)
  %i.z = and <8 x i16> %wide.load16, splat (i16 252)
  %i.aa = and <8 x i16> %wide.load17, splat (i16 252)
  %i.ab = icmp ne <8 x i16> %i.x, splat (i16 220)
  %i.ac = icmp ne <8 x i16> %i.y, splat (i16 220)
  %i.ad = icmp ne <8 x i16> %i.z, splat (i16 220)
  %i.ae = icmp ne <8 x i16> %i.aa, splat (i16 220)
  %i.af = zext <8 x i1> %i.ab to <8 x i64>
  %i.ag = zext <8 x i1> %i.ac to <8 x i64>
  %i.ah = zext <8 x i1> %i.ad to <8 x i64>
  %i.ai = zext <8 x i1> %i.ae to <8 x i64>
  %i.aj = add <8 x i64> %vec.phi, %i.af           ; 2 uses
  %i.ak = add <8 x i64> %vec.phi12, %i.ag         ; 2 uses
  %i.al = add <8 x i64> %vec.phi13, %i.ah         ; 2 uses
  %i.am = add <8 x i64> %vec.phi14, %i.ai         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !389

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.ak, %i.aj
  %bin.rdx18 = add <8 x i64> %i.al, %bin.rdx
  %bin.rdx19 = add <8 x i64> %i.am, %bin.rdx18
  %i.ao = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx19) ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZNK7simdutf7icelake14implementation13count_utf16beEPKDsm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ao, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.r, -8                     ; 3 uses
  %i.ap = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi22 = phi <8 x i64> [ %i.ap, %vec.epilog.ph ], [ %i.au, %vec.epilog.vector.body ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.1.i, i64 %index21
  %wide.load23 = load <8 x i16>, ptr %i.aq, align 2
  %i.ar = and <8 x i16> %wide.load23, splat (i16 252)
  %i.as = icmp ne <8 x i16> %i.ar, splat (i16 220)
  %i.at = zext <8 x i1> %i.as to <8 x i64>
  %i.au = add <8 x i64> %vec.phi22, %i.at         ; 2 uses
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next24, %n.vec20
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !390

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aw = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.au) ; 2 uses
  %cmp.n25 = icmp eq i64 %i.r, %n.vec20
  br i1 %cmp.n25, label %_ZNK7simdutf7icelake14implementation13count_utf16beEPKDsm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ]
  %.0910.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.0910.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %.0910.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.1.i, i64 %.011.i.i
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = and i16 %i.ay, 252
  %i.ba = icmp ne i16 %i.az, 220
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add i64 %.0910.i.i, %i.bb               ; 2 uses
  %i.bd = add nuw i64 %.011.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.r
  br i1 %exitcond.not.i.i, label %_ZNK7simdutf7icelake14implementation13count_utf16beEPKDsm.exit, label %.lr.ph.i.i, !llvm.loop !391

_ZNK7simdutf7icelake14implementation13count_utf16beEPKDsm.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %.loopexit.i
  %.09.lcssa.i.i = phi i64 [ 0, %.loopexit.i ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ao, %middle.block ], [ %i.bc, %.lr.ph.i.i ]
  %i.be = add i64 %.09.lcssa.i.i, %.117.i
  ret i64 %i.be
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation23utf8_length_from_latin1EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = and i64 %2, -64                          ; 3 uses
  %i.b = icmp ugt i64 %2, 2047
  br i1 %i.b, label %.preheader127, label %bb.c

.preheader127:                                    ; preds = %bb.a, %._crit_edge
  %.068145 = phi i64 [ %.2.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  %.070144 = phi <8 x i64> [ %i.ad, %._crit_edge ], [ zeroinitializer, %bb.a ]
  %i.c = sub i64 %2, %.068145
  %i.d = lshr i64 %i.c, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 255)
  %i.e = shl nuw nsw i64 %spec.store.select, 6
  %i.f = add i64 %.068145, -64
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = add i64 %.068145, 256                    ; 2 uses
  %.not80134 = icmp ugt i64 %i.h, %i.g
  br i1 %.not80134, label %.preheader, label %.lr.ph136

.preheader:                                       ; preds = %.lr.ph136, %.preheader127
  %.lcssa = phi <64 x i8> [ zeroinitializer, %.preheader127 ], [ %i.v, %.lr.ph136 ] ; 2 uses
  %.169.lcssa = phi i64 [ %.068145, %.preheader127 ], [ %i.i, %.lr.ph136 ] ; 3 uses
  %.not81139 = icmp ugt i64 %.169.lcssa, %i.g
  br i1 %.not81139, label %._crit_edge, label %.lr.ph141

.lr.ph136:                                        ; preds = %.preheader127, %.lr.ph136
  %i.i = phi i64 [ %i.w, %.lr.ph136 ], [ %i.h, %.preheader127 ] ; 3 uses
  %.169135 = phi i64 [ %i.i, %.lr.ph136 ], [ %.068145, %.preheader127 ]
  %i.j = phi <64 x i8> [ %i.v, %.lr.ph136 ], [ zeroinitializer, %.preheader127 ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.169135 ; 4 uses
  %i.l = load <64 x i8>, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.n = load <64 x i8>, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.p = load <64 x i8>, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.r = load <64 x i8>, ptr %i.q, align 1
  %.lobit.neg = lshr <64 x i8> %i.l, splat (i8 7)
  %.lobit122.neg = lshr <64 x i8> %i.n, splat (i8 7)
  %.lobit123.neg = lshr <64 x i8> %i.p, splat (i8 7)
  %.lobit124.neg = lshr <64 x i8> %i.r, splat (i8 7)
  %i.s = add <64 x i8> %.lobit.neg, %i.j
  %i.t = add <64 x i8> %i.s, %.lobit122.neg
  %i.u = add <64 x i8> %i.t, %.lobit123.neg
  %i.v = add <64 x i8> %i.u, %.lobit124.neg       ; 2 uses
  %i.w = add i64 %i.i, 256                        ; 2 uses
  %.not80 = icmp ugt i64 %i.w, %i.g
  br i1 %.not80, label %.preheader, label %.lr.ph136, !llvm.loop !392

.lr.ph141:                                        ; preds = %.preheader, %.lr.ph141
  %.2140 = phi i64 [ %i.ab, %.lr.ph141 ], [ %.169.lcssa, %.preheader ] ; 2 uses
  %i.x = phi <64 x i8> [ %i.aa, %.lr.ph141 ], [ %.lcssa, %.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.2140
  %i.z = load <64 x i8>, ptr %i.y, align 1
  %.lobit.neg125 = lshr <64 x i8> %i.z, splat (i8 7)
  %i.aa = add <64 x i8> %.lobit.neg125, %i.x      ; 2 uses
  %i.ab = add i64 %.2140, 64                      ; 3 uses
  %.not81 = icmp ugt i64 %i.ab, %i.g
  br i1 %.not81, label %._crit_edge, label %.lr.ph141, !llvm.loop !393

._crit_edge:                                      ; preds = %.lr.ph141, %.preheader
  %.lcssa129 = phi <64 x i8> [ %.lcssa, %.preheader ], [ %i.aa, %.lr.ph141 ]
  %.2.lcssa = phi i64 [ %.169.lcssa, %.preheader ], [ %i.ab, %.lr.ph141 ] ; 3 uses
  %i.ac = tail call noundef <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %.lcssa129, <64 x i8> zeroinitializer)
  %i.ad = add <8 x i64> %i.ac, %.070144           ; 2 uses
  %i.ae = add i64 %.2.lcssa, 64
  %.not79 = icmp ugt i64 %i.ae, %2
  br i1 %.not79, label %bb.b, label %.preheader127, !llvm.loop !394

bb.b:                                             ; preds = %._crit_edge
  %i.af = tail call noundef i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ad)
  %i.ag = add i64 %i.af, %i.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.ah = phi i64 [ %i.ao, %.lr.ph ], [ 64, %bb.c ] ; 2 uses
  %.0132 = phi i64 [ %i.an, %.lr.ph ], [ %i.a, %bb.c ]
  %.3131 = phi i64 [ %i.ah, %.lr.ph ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.3131
  %i.aj = load <64 x i8>, ptr %i.ai, align 1
  %i.ak = icmp slt <64 x i8> %i.aj, zeroinitializer
  %i.al = bitcast <64 x i1> %i.ak to i64
  %i.am = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.al)
  %i.an = add i64 %i.am, %.0132                   ; 2 uses
  %i.ao = add nuw nsw i64 %i.ah, 64               ; 2 uses
  %.not78 = icmp samesign ugt i64 %i.ao, %2
  br i1 %.not78, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !395

.loopexit.loopexit:                               ; preds = %.lr.ph
  %3 = and i64 %2, 1984
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %bb.b
  %.4 = phi i64 [ %.2.lcssa, %bb.b ], [ 0, %bb.c ], [ %3, %.loopexit.loopexit ] ; 3 uses
  %.1 = phi i64 [ %i.ag, %bb.b ], [ 0, %bb.c ], [ %i.an, %.loopexit.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.4 ; 3 uses
  %i.aq = sub i64 %2, %.4                         ; 9 uses
  %.not151 = icmp eq i64 %2, %.4
  br i1 %.not151, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph149.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check179 = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi180.a = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi181 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi182 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %wide.load = load <8 x i8>, ptr %i.as, align 1
  %wide.load183.a = load <8 x i8>, ptr %i.at, align 1
  %wide.load184 = load <8 x i8>, ptr %i.au, align 1
  %wide.load185 = load <8 x i8>, ptr %i.av, align 1
  %i.aw = lshr <8 x i8> %wide.load, splat (i8 7)
  %i.ax = lshr <8 x i8> %wide.load183.a, splat (i8 7)
  %i.ay = lshr <8 x i8> %wide.load184, splat (i8 7)
  %i.az = lshr <8 x i8> %wide.load185, splat (i8 7)
  %i.ba = zext nneg <8 x i8> %i.aw to <8 x i64>
  %i.bb = zext nneg <8 x i8> %i.ax to <8 x i64>
  %i.bc = zext nneg <8 x i8> %i.ay to <8 x i64>
  %i.bd = zext nneg <8 x i8> %i.az to <8 x i64>
  %i.be = add <8 x i64> %vec.phi, %i.ba           ; 2 uses
  %i.bf = add <8 x i64> %vec.phi180.a, %i.bb      ; 2 uses
  %i.bg = add <8 x i64> %vec.phi181, %i.bc        ; 2 uses
  %i.bh = add <8 x i64> %vec.phi182, %i.bd        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !396

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.bf, %i.be
  %bin.rdx186 = add <8 x i64> %i.bg, %bin.rdx
  %bin.rdx187 = add <8 x i64> %i.bh, %bin.rdx186
  %i.bj = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx187) ; 3 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph149.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %i.aq, -4                   ; 3 uses
  %i.bk = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next192, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi190 = phi <4 x i64> [ %i.bk, %vec.epilog.ph ], [ %i.bo, %vec.epilog.vector.body ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index189
  %wide.load191 = load <4 x i8>, ptr %i.bl, align 1
  %i.bm = lshr <4 x i8> %wide.load191, splat (i8 7)
  %i.bn = zext nneg <4 x i8> %i.bm to <4 x i64>
  %i.bo = add <4 x i64> %vec.phi190, %i.bn        ; 2 uses
  %index.next192 = add nuw i64 %index189, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next192, %n.vec188
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !397

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bq = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bo) ; 2 uses
  %cmp.n193 = icmp eq i64 %i.aq, %n.vec188
  br i1 %cmp.n193, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i147.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec188, %vec.epilog.middle.block ]
  %.08.i146.ph = phi i64 [ 0, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.lr.ph149
  %.0.i147 = phi i64 [ %i.bu, %.lr.ph149 ], [ %.0.i147.ph, %.lr.ph149.preheader ] ; 2 uses
  %.08.i146 = phi i64 [ %spec.select.i, %.lr.ph149 ], [ %.08.i146.ph, %.lr.ph149.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.0.i147
  %i.bs = load i8, ptr %i.br, align 1
  %.lobit = lshr i8 %i.bs, 7
  %i.bt = zext nneg i8 %.lobit to i64
  %spec.select.i = add i64 %.08.i146, %i.bt       ; 2 uses
  %i.bu = add nuw i64 %.0.i147, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.aq
  br i1 %exitcond.not, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph149, !llvm.loop !398

_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit: ; preds = %.lr.ph149, %middle.block, %vec.epilog.middle.block, %.loopexit
  %.08.i.lcssa = phi i64 [ 0, %.loopexit ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %spec.select.i, %.lr.ph149 ]
  %i.bv = add i64 %.1, %i.aq
  %i.bw = add i64 %i.bv, %.08.i.lcssa
  ret i64 %i.bw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation22utf16_length_from_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %.not73 = icmp ult i64 %2, 64
  br i1 %.not73, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.a = phi i64 [ %i.o, %bb.c ], [ 64, %bb.a ]   ; 4 uses
  %.076 = phi i64 [ %i.a, %bb.c ], [ 0, %bb.a ]
  %.03375 = phi i64 [ %.1, %bb.c ], [ 0, %bb.a ]
  %.03574 = phi <8 x i64> [ %.136, %bb.c ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.b = phi <64 x i8> [ %i.n, %bb.c ], [ zeroinitializer, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.076
  %i.d = load <16 x i32>, ptr %i.c, align 1
  %i.e = lshr <16 x i32> %i.d, splat (i32 4)
  %i.f = bitcast <16 x i32> %i.e to <64 x i8>
  %i.g = and <64 x i8> %i.f, splat (i8 15)
  %i.h = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 2, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 2, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 2, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 2>, <64 x i8> %i.g)
  %i.i = add <64 x i8> %i.h, %i.b                 ; 2 uses
  %i.j = add i64 %.03375, 1                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 127
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = tail call noundef <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.i, <64 x i8> zeroinitializer)
  %i.m = add <8 x i64> %i.l, %.03574
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = phi <64 x i8> [ zeroinitializer, %bb.b ], [ %i.i, %.lr.ph ] ; 2 uses
  %.136 = phi <8 x i64> [ %i.m, %bb.b ], [ %.03574, %.lr.ph ] ; 3 uses
  %.1 = phi i64 [ 0, %bb.b ], [ %i.j, %.lr.ph ]   ; 2 uses
  %i.o = add i64 %i.a, 64                         ; 2 uses
  %.not = icmp ugt i64 %i.o, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !399

._crit_edge:                                      ; preds = %bb.c
  %.not42 = icmp eq i64 %i.a, 0
  br i1 %.not42, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.p = icmp eq i64 %.1, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.n, <64 x i8> zeroinitializer)
  %i.r = add <8 x i64> %i.q, %.136
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi <8 x i64> [ %i.r, %bb.e ], [ %.136, %bb.d ] ; 5 uses
  %i.s = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 poison, i32 1>
  %i.t = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 poison, i32 3>
  %i.u = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 poison, i32 5>
  %i.v = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 poison, i32 7>
  %i.w = add <2 x i64> %i.s, %i.t
  %i.x = add <2 x i64> %i.w, %i.v
  %i.y = add <2 x i64> %i.x, %i.u
  %i.z = shufflevector <8 x i64> %.2, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aa = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.z)
  %i.ab = extractelement <2 x i64> %i.y, i64 1
  %i.ac = add i64 %i.aa, %i.ab
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.f, %._crit_edge
  %.0.lcssa89 = phi i64 [ %i.a, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.034 = phi i64 [ %i.ac, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa89 ; 3 uses
  %i.ae = sub i64 %2, %.0.lcssa89                 ; 5 uses
  %.not.i = icmp eq i64 %2, %.0.lcssa89
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.thread
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %2, 31                          ; 3 uses
  %n.vec = sub nuw i64 %i.ae, %i.af               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi93 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi94 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi95 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7haswell14implementation22utf16_length_from_utf8EPKcm:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi227 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi228 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi229 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %wide.load = load <4 x i8>, ptr %i.ag, align 1  ; 2 uses
  %wide.load230 = load <4 x i8>, ptr %i.ah, align 1 ; 2 uses
  %wide.load231 = load <4 x i8>, ptr %i.ai, align 1 ; 2 uses
  %wide.load232 = load <4 x i8>, ptr %i.aj, align 1 ; 2 uses
  %i.ak = icmp sgt <4 x i8> %wide.load, splat (i8 -65)
  %i.al = icmp sgt <4 x i8> %wide.load230, splat (i8 -65)
  %i.am = icmp sgt <4 x i8> %wide.load231, splat (i8 -65)
  %i.an = icmp sgt <4 x i8> %wide.load232, splat (i8 -65)
  %i.ao = zext <4 x i1> %i.ak to <4 x i64>
  %i.ap = zext <4 x i1> %i.al to <4 x i64>
  %i.aq = zext <4 x i1> %i.am to <4 x i64>
  %i.ar = zext <4 x i1> %i.an to <4 x i64>
  %i.as = add <4 x i64> %vec.phi, %i.ao
  %i.at = add <4 x i64> %vec.phi227, %i.ap
  %i.au = add <4 x i64> %vec.phi228, %i.aq
  %i.av = add <4 x i64> %vec.phi229, %i.ar
  %i.aw = icmp ugt <4 x i8> %wide.load, splat (i8 -17)
  %i.ax = icmp ugt <4 x i8> %wide.load230, splat (i8 -17)
  %i.ay = icmp ugt <4 x i8> %wide.load231, splat (i8 -17)
  %i.az = icmp ugt <4 x i8> %wide.load232, splat (i8 -17)
  %i.ba = zext <4 x i1> %i.aw to <4 x i64>
  %i.bb = zext <4 x i1> %i.ax to <4 x i64>
  %i.bc = zext <4 x i1> %i.ay to <4 x i64>
  %i.bd = zext <4 x i1> %i.az to <4 x i64>
  %i.be = add <4 x i64> %i.as, %i.ba              ; 2 uses
  %i.bf = add <4 x i64> %i.at, %i.bb              ; 2 uses
  %i.bg = add <4 x i64> %i.au, %i.bc              ; 2 uses
  %i.bh = add <4 x i64> %i.av, %i.bd              ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !856

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.bf, %i.be
  %bin.rdx233 = add <4 x i64> %i.bg, %bin.rdx
  %bin.rdx234 = add <4 x i64> %i.bh, %bin.rdx233
  %i.bj = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx234) ; 3 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec235 = and i64 %i.ae, -4                   ; 3 uses
  %i.bk = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index236 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next239, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi237 = phi <4 x i64> [ %i.bk, %vec.epilog.ph ], [ %i.br, %vec.epilog.vector.body ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index236
  %wide.load238 = load <4 x i8>, ptr %i.bl, align 1 ; 2 uses
  %i.bm = icmp sgt <4 x i8> %wide.load238, splat (i8 -65)
  %i.bn = zext <4 x i1> %i.bm to <4 x i64>
  %i.bo = add <4 x i64> %vec.phi237, %i.bn
  %i.bp = icmp ugt <4 x i8> %wide.load238, splat (i8 -17)
  %i.bq = zext <4 x i1> %i.bp to <4 x i64>
  %i.br = add <4 x i64> %i.bo, %i.bq              ; 2 uses
  %index.next239 = add nuw i64 %index236, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next239, %n.vec235
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !857

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bt = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.br) ; 2 uses
  %cmp.n240 = icmp eq i64 %i.ae, %n.vec235
  br i1 %cmp.n240, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec235, %vec.epilog.middle.block ]
  %.01011.i.ph = phi i64 [ 0, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01011.i = phi i64 [ %.2.i, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.012.i
  %i.bv = load i8, ptr %i.bu, align 1             ; 2 uses
  %i.bw = icmp sgt i8 %i.bv, -65
  %i.bx = zext i1 %i.bw to i64
  %spec.select.i = add i64 %.01011.i, %i.bx
  %i.by = icmp ugt i8 %i.bv, -17
  %i.bz = zext i1 %i.by to i64
  %.2.i = add i64 %spec.select.i, %i.bz           ; 2 uses
  %i.ca = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ca, %i.ae
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i, !llvm.loop !858

_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN7simdutf7haswell12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit
  %.010.lcssa.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %.2.i, %.lr.ph.i ]
  %i.cb = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %.sroa.023.0.lcssa202)
  %op.rdx = add i64 %i.cb, %.010.lcssa.i
  %op.rdx242 = add i64 %op.rdx, %.0.i
  ret i64 %op.rdx242
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation23utf8_length_from_latin1EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 3 uses
  %i.b = icmp ugt i64 %2, 2047
  br i1 %i.b, label %.preheader125, label %bb.c

.preheader125:                                    ; preds = %bb.a, %._crit_edge
  %.056143 = phi i64 [ %.2.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  %.058142 = phi <4 x i64> [ %i.aa, %._crit_edge ], [ zeroinitializer, %bb.a ]
  %i.c = sub i64 %2, %.056143
  %i.d = lshr i64 %i.c, 5
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 255)
  %i.e = shl nuw nsw i64 %spec.store.select, 5
  %i.f = add i64 %.056143, -32
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = add i64 %.056143, 128                    ; 2 uses
  %.not68132 = icmp ugt i64 %i.h, %i.g
  br i1 %.not68132, label %.preheader, label %.lr.ph134

.preheader:                                       ; preds = %.lr.ph134, %.preheader125
  %.lcssa = phi <32 x i8> [ zeroinitializer, %.preheader125 ], [ %i.s, %.lr.ph134 ] ; 2 uses
  %.157.lcssa = phi i64 [ %.056143, %.preheader125 ], [ %i.i, %.lr.ph134 ] ; 3 uses
  %.not69137 = icmp ugt i64 %.157.lcssa, %i.g
  br i1 %.not69137, label %._crit_edge, label %.lr.ph139

.lr.ph134:                                        ; preds = %.preheader125, %.lr.ph134
  %i.i = phi i64 [ %i.t, %.lr.ph134 ], [ %i.h, %.preheader125 ] ; 3 uses
  %.157133 = phi i64 [ %i.i, %.lr.ph134 ], [ %.056143, %.preheader125 ]
  %i.j = phi <32 x i8> [ %i.s, %.lr.ph134 ], [ zeroinitializer, %.preheader125 ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.157133 ; 4 uses
  %i.l = load <32 x i8>, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load <32 x i8>, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load <32 x i8>, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.r = load <32 x i8>, ptr %i.q, align 1
  %.lobit.neg = lshr <32 x i8> %i.l, splat (i8 7)
  %.lobit118.neg = lshr <32 x i8> %i.n, splat (i8 7)
  %.lobit119.neg = lshr <32 x i8> %i.p, splat (i8 7)
  %.lobit120.neg = lshr <32 x i8> %i.r, splat (i8 7)
  %.neg121 = add <32 x i8> %.lobit.neg, %i.j
  %.neg = add <32 x i8> %.neg121, %.lobit118.neg
  %.neg122 = add <32 x i8> %.neg, %.lobit119.neg
  %i.s = add <32 x i8> %.neg122, %.lobit120.neg   ; 2 uses
  %i.t = add i64 %i.i, 128                        ; 2 uses
  %.not68 = icmp ugt i64 %i.t, %i.g
  br i1 %.not68, label %.preheader, label %.lr.ph134, !llvm.loop !860

.lr.ph139:                                        ; preds = %.preheader, %.lr.ph139
  %.2138 = phi i64 [ %i.y, %.lr.ph139 ], [ %.157.lcssa, %.preheader ] ; 2 uses
  %i.u = phi <32 x i8> [ %i.x, %.lr.ph139 ], [ %.lcssa, %.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.2138
  %i.w = load <32 x i8>, ptr %i.v, align 1
  %.lobit.neg123 = lshr <32 x i8> %i.w, splat (i8 7)
  %i.x = add <32 x i8> %.lobit.neg123, %i.u       ; 2 uses
  %i.y = add i64 %.2138, 32                       ; 3 uses
  %.not69 = icmp ugt i64 %i.y, %i.g
  br i1 %.not69, label %._crit_edge, label %.lr.ph139, !llvm.loop !861

._crit_edge:                                      ; preds = %.lr.ph139, %.preheader
  %.lcssa127 = phi <32 x i8> [ %.lcssa, %.preheader ], [ %i.x, %.lr.ph139 ]
  %.2.lcssa = phi i64 [ %.157.lcssa, %.preheader ], [ %i.y, %.lr.ph139 ] ; 3 uses
  %i.z = tail call noundef <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %.lcssa127, <32 x i8> zeroinitializer)
  %i.aa = add <4 x i64> %i.z, %.058142            ; 2 uses
  %i.ab = add i64 %.2.lcssa, 32
  %.not67 = icmp ugt i64 %i.ab, %2
  br i1 %.not67, label %bb.b, label %.preheader125, !llvm.loop !862

bb.b:                                             ; preds = %._crit_edge
  %i.ac = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.aa)
  %op.rdx = add i64 %i.ac, %i.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.ad = phi i64 [ %i.al, %.lr.ph ], [ 32, %bb.c ] ; 2 uses
  %.0130 = phi i64 [ %i.ak, %.lr.ph ], [ %i.a, %bb.c ]
  %.3129 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.3129
  %i.af = load <32 x i8>, ptr %i.ae, align 1
  %i.ag = icmp slt <32 x i8> %i.af, zeroinitializer
  %i.ah = bitcast <32 x i1> %i.ag to i32
  %i.ai = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ah)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add i64 %.0130, %i.aj                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ad, 32               ; 2 uses
  %.not66 = icmp samesign ugt i64 %i.al, %2
  br i1 %.not66, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !863

.loopexit.loopexit:                               ; preds = %.lr.ph
  %3 = and i64 %2, 2016
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %bb.b
  %.4 = phi i64 [ %.2.lcssa, %bb.b ], [ 0, %bb.c ], [ %3, %.loopexit.loopexit ] ; 3 uses
  %.1 = phi i64 [ %op.rdx, %bb.b ], [ 0, %bb.c ], [ %i.ak, %.loopexit.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.4 ; 3 uses
  %i.an = sub i64 %2, %.4                         ; 9 uses
  %.not149 = icmp eq i64 %2, %.4
  br i1 %.not149, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph147.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check177 = icmp ult i64 %i.an, 16
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.an, 12
  %n.vec = and i64 %i.an, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi178.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi179 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi180 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %wide.load = load <4 x i8>, ptr %i.ap, align 1
  %wide.load181.a = load <4 x i8>, ptr %i.aq, align 1
  %wide.load182 = load <4 x i8>, ptr %i.ar, align 1
  %wide.load183 = load <4 x i8>, ptr %i.as, align 1
  %i.at = lshr <4 x i8> %wide.load, splat (i8 7)
  %i.au = lshr <4 x i8> %wide.load181.a, splat (i8 7)
  %i.av = lshr <4 x i8> %wide.load182, splat (i8 7)
  %i.aw = lshr <4 x i8> %wide.load183, splat (i8 7)
  %i.ax = zext nneg <4 x i8> %i.at to <4 x i64>
  %i.ay = zext nneg <4 x i8> %i.au to <4 x i64>
  %i.az = zext nneg <4 x i8> %i.av to <4 x i64>
  %i.ba = zext nneg <4 x i8> %i.aw to <4 x i64>
  %i.bb = add <4 x i64> %vec.phi, %i.ax           ; 2 uses
  %i.bc = add <4 x i64> %vec.phi178.a, %i.ay      ; 2 uses
  %i.bd = add <4 x i64> %vec.phi179, %i.az        ; 2 uses
  %i.be = add <4 x i64> %vec.phi180, %i.ba        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.bc, %i.bb
  %bin.rdx184 = add <4 x i64> %i.bd, %bin.rdx
  %bin.rdx185 = add <4 x i64> %i.be, %bin.rdx184
  %i.bg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx185) ; 3 uses
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph147.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec186 = and i64 %i.an, -4                   ; 3 uses
  %i.bh = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index187 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next190, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi188 = phi <4 x i64> [ %i.bh, %vec.epilog.ph ], [ %i.bl, %vec.epilog.vector.body ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 %index187
  %wide.load189 = load <4 x i8>, ptr %i.bi, align 1
  %i.bj = lshr <4 x i8> %wide.load189, splat (i8 7)
  %i.bk = zext nneg <4 x i8> %i.bj to <4 x i64>
  %i.bl = add <4 x i64> %vec.phi188, %i.bk        ; 2 uses
  %index.next190 = add nuw i64 %index187, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next190, %n.vec186
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !865

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bn = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bl) ; 2 uses
  %cmp.n191 = icmp eq i64 %i.an, %n.vec186
  br i1 %cmp.n191, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph147.preheader

.lr.ph147.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i145.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec186, %vec.epilog.middle.block ]
  %.08.i144.ph = phi i64 [ 0, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %.lr.ph147
  %.0.i145 = phi i64 [ %i.br, %.lr.ph147 ], [ %.0.i145.ph, %.lr.ph147.preheader ] ; 2 uses
  %.08.i144 = phi i64 [ %spec.select.i, %.lr.ph147 ], [ %.08.i144.ph, %.lr.ph147.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 %.0.i145
  %i.bp = load i8, ptr %i.bo, align 1
  %.lobit = lshr i8 %i.bp, 7
  %i.bq = zext nneg i8 %.lobit to i64
  %spec.select.i = add i64 %.08.i144, %i.bq       ; 2 uses
  %i.br = add nuw i64 %.0.i145, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.an
  br i1 %exitcond.not, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph147, !llvm.loop !866

_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit: ; preds = %.lr.ph147, %middle.block, %vec.epilog.middle.block, %.loopexit
  %.08.i.lcssa = phi i64 [ 0, %.loopexit ], [ %i.bn, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %spec.select.i, %.lr.ph147 ]
  %i.bs = add i64 %.1, %i.an
  %i.bt = add i64 %i.bs, %.08.i.lcssa
  ret i64 %i.bt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation22utf8_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = lshr i64 %2, 5                           ; 2 uses
  %.not.i533.not = icmp eq i64 %i.a, 0
  br i1 %.not.i533.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.039.i536 = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %slprdx.acc573 = phi <4 x i64> [ %slprdx.acc574, %bb.b ], [ zeroinitializer, %bb.a ]
  %.041.i534 = phi ptr [ %scevgep, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.b = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.039.i536, i64 357913941) ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = sub nuw nsw i64 %.039.i536, %i.b         ; 2 uses
  %i.d = shl nuw nsw i64 %i.b, 7
  %scevgep = getelementptr i8, ptr %.041.i534, i64 %i.d ; 2 uses
  %i.e = bitcast <8 x i32> %i.ba to <4 x i64>
  %i.f = bitcast <8 x i32> %i.ba to <4 x i64>
  %i.g = and <4 x i64> %i.f, splat (i64 4294967295)
  %i.h = lshr <4 x i64> %i.e, splat (i64 32)
  %i.i = add nuw nsw <4 x i64> %i.g, %i.h
  %slprdx.acc574 = add <4 x i64> %slprdx.acc573, %i.i ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !867

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.038.i532 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %bb.c ]
  %.142.i531 = phi ptr [ %.041.i534, %.lr.ph ], [ %i.bb, %bb.c ] ; 5 uses
  %i.j = phi <8 x i32> [ zeroinitializer, %.lr.ph ], [ %i.ba, %bb.c ]
  %i.k = load <8 x i32>, ptr %.142.i531, align 1  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.142.i531, i64 32
  %i.m = load <8 x i32>, ptr %i.l, align 1        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.142.i531, i64 64
  %i.o = load <8 x i32>, ptr %i.n, align 1        ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.142.i531, i64 96
  %i.q = load <8 x i32>, ptr %i.p, align 1        ; 3 uses
  %i.r = icmp ugt <8 x i32> %i.k, splat (i32 127)
  %i.s = zext <8 x i1> %i.r to <8 x i32>
  %i.t = add <8 x i32> %i.j, %i.s
  %i.u = icmp ugt <8 x i32> %i.m, splat (i32 127)
  %i.v = zext <8 x i1> %i.u to <8 x i32>
  %i.w = icmp ugt <8 x i32> %i.o, splat (i32 127)
  %i.x = zext <8 x i1> %i.w to <8 x i32>
  %i.y = icmp ugt <8 x i32> %i.q, splat (i32 127)
  %i.z = zext <8 x i1> %i.y to <8 x i32>
  %i.aa = icmp ugt <8 x i32> %i.k, splat (i32 2047)
  %i.ab = zext <8 x i1> %i.aa to <8 x i32>
  %i.ac = icmp ugt <8 x i32> %i.m, splat (i32 2047)
  %i.ad = zext <8 x i1> %i.ac to <8 x i32>
  %i.ae = icmp ugt <8 x i32> %i.o, splat (i32 2047)
  %i.af = zext <8 x i1> %i.ae to <8 x i32>
  %i.ag = icmp ugt <8 x i32> %i.q, splat (i32 2047)
  %i.ah = zext <8 x i1> %i.ag to <8 x i32>
  %i.ai = icmp ugt <8 x i32> %i.k, splat (i32 65535)
  %i.aj = zext <8 x i1> %i.ai to <8 x i32>
  %i.ak = icmp ugt <8 x i32> %i.m, splat (i32 65535)
  %i.al = zext <8 x i1> %i.ak to <8 x i32>
  %i.am = icmp ugt <8 x i32> %i.o, splat (i32 65535)
  %i.an = zext <8 x i1> %i.am to <8 x i32>
  %i.ao = icmp ugt <8 x i32> %i.q, splat (i32 65535)
  %i.ap = zext <8 x i1> %i.ao to <8 x i32>
  %i.aq = add <8 x i32> %i.t, %i.ab
  %i.ar = add <8 x i32> %i.aq, %i.aj
  %i.as = add <8 x i32> %i.ar, %i.v
  %i.at = add <8 x i32> %i.as, %i.ad
  %i.au = add <8 x i32> %i.at, %i.al
  %i.av = add <8 x i32> %i.au, %i.x
  %i.aw = add <8 x i32> %i.av, %i.af
  %i.ax = add <8 x i32> %i.aw, %i.an
  %i.ay = add <8 x i32> %i.ax, %i.z
  %i.az = add <8 x i32> %i.ay, %i.ah
  %i.ba = add <8 x i32> %i.az, %i.ap              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.142.i531, i64 128
  %i.bc = add nuw nsw i64 %.038.i532, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.b
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !868

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.bd = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %slprdx.acc574)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %slprdx.sel577 = phi i64 [ 0, %bb.a ], [ %i.bd, %._crit_edge.loopexit ] ; 2 uses
  %.041.i.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  %i.be = lshr i64 %2, 3
  %i.bf = and i64 %i.be, 3                        ; 2 uses
  %.not45.i541.not = icmp eq i64 %i.bf, 0
  br i1 %.not45.i541.not, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph546.preheader

.lr.ph546.preheader:                              ; preds = %._crit_edge
end_hunk_1
begin_hunk_2_@_ZNK7simdutf8westmere14implementation24utf8_length_from_utf16beEPKDsm:bb.a

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.010.1 = phi <2 x i64> [ zeroinitializer, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %.129.i = phi i64 [ 32767, %bb.b ], [ %i.s, %.lr.ph ]
  %.1.i = phi i64 [ %i.ah, %bb.b ], [ %.027.i43, %.lr.ph ] ; 2 uses
  %i.ai = add nuw i64 %.0.i44, 8                  ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.a
  br i1 %i.aj, label %.lr.ph, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit.loopexit, !llvm.loop !1254

_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit.loopexit: ; preds = %bb.c
  %i.ak = and i64 %2, -8
  %i.al = bitcast <2 x i64> %.sroa.010.1 to <4 x i32>
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit.loopexit, %bb.a
  %.sroa.010.0.lcssa = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.al, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit.loopexit ] ; 2 uses
  %.027.i.lcssa = phi i64 [ 0, %bb.a ], [ %.1.i, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit.loopexit ]
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.an = sub i64 %2, %.0.i.lcssa                 ; 3 uses
  %.not.i = icmp eq i64 %2, %.0.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.ao = and i64 %2, 3                           ; 2 uses
  %n.vec = sub nuw i64 %i.an, %i.ao               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi50 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %wide.load = load <2 x i16>, ptr %i.ap, align 2
  %wide.load51 = load <2 x i16>, ptr %i.aq, align 2
  %i.ar = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %wide.load) ; 3 uses
  %i.as = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %wide.load51) ; 3 uses
  %i.at = add <2 x i64> %vec.phi, splat (i64 1)
  %i.au = add <2 x i64> %vec.phi50, splat (i64 1)
  %i.av = icmp ugt <2 x i16> %i.ar, splat (i16 127)
  %i.aw = icmp ugt <2 x i16> %i.as, splat (i16 127)
  %i.ax = zext <2 x i1> %i.av to <2 x i64>
  %i.ay = zext <2 x i1> %i.aw to <2 x i64>
  %i.az = add <2 x i64> %i.at, %i.ax
  %i.ba = add <2 x i64> %i.au, %i.ay
  %i.bb = add <2 x i16> %i.ar, splat (i16 -2048)
  %i.bc = add <2 x i16> %i.as, splat (i16 -2048)
  %i.bd = icmp ult <2 x i16> %i.bb, splat (i16 -12288)
  %i.be = icmp ult <2 x i16> %i.bc, splat (i16 -12288)
  %i.bf = icmp ugt <2 x i16> %i.ar, splat (i16 -8193)
  %i.bg = icmp ugt <2 x i16> %i.as, splat (i16 -8193)
  %i.bh = or <2 x i1> %i.bf, %i.bd
  %i.bi = or <2 x i1> %i.bg, %i.be
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = zext <2 x i1> %i.bi to <2 x i64>
  %i.bl = add <2 x i64> %i.az, %i.bj              ; 2 uses
  %i.bm = add <2 x i64> %i.ba, %i.bk              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1255

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader55

.lr.ph.i.preheader55:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.018.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.01617.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader55, %.lr.ph.i
  %.018.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %.018.i.ph, %.lr.ph.i.preheader55 ] ; 2 uses
  %.01617.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.01617.i.ph, %.lr.ph.i.preheader55 ]
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %.018.i
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq) ; 3 uses
  %i.bs = add i64 %.01617.i, 1
  %i.bt = icmp ugt i16 %i.br, 127
  %i.bu = zext i1 %i.bt to i64
  %i.bv = add i64 %i.bs, %i.bu
  %i.bw = add i16 %i.br, -2048
  %or.cond.i = icmp ult i16 %i.bw, -12288
  %i.bx = icmp ugt i16 %i.br, -8193
  %i.by = or i1 %i.bx, %or.cond.i
  %i.bz = zext i1 %i.by to i64
  %i.ca = add i64 %i.bv, %i.bz                    ; 2 uses
  %i.cb = add nuw i64 %.018.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %i.an
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !1256

_ZN7simdutf6scalar12_GLOBAL__N_15utf1622utf8_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1631utf8_length_from_utf16_bytemaskILNS_10endiannessE1EEEmPKDsm.exit ], [ %i.bo, %middle.block ], [ %i.ca, %.lr.ph.i ]
  %i.cc = and <4 x i32> %.sroa.010.0.lcssa, splat (i32 65535)
  %i.cd = lshr <4 x i32> %.sroa.010.0.lcssa, splat (i32 16)
  %i.ce = add nuw nsw <4 x i32> %i.cc, %i.cd      ; 2 uses
  %i.cf = bitcast <4 x i32> %i.ce to <2 x i64>
  %i.cg = bitcast <4 x i32> %i.ce to <2 x i64>
  %i.ch = and <2 x i64> %i.cg, splat (i64 131071)
  %i.ci = lshr <2 x i64> %i.cf, splat (i64 32)
  %i.cj = add nuw nsw <2 x i64> %i.ch, %i.ci      ; 2 uses
  %i.ck = extractelement <2 x i64> %i.cj, i64 0
  %i.cl = extractelement <2 x i64> %i.cj, i64 1
  %i.cm = add i64 %i.cl, %.027.i.lcssa
  %i.cn = add i64 %i.cm, %i.ck
  %i.co = add i64 %i.cn, %.016.lcssa.i
  ret i64 %i.co
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation23utf8_length_from_latin1EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = and i64 %2, -16                          ; 4 uses
  %i.b = icmp ugt i64 %2, 2047
  br i1 %i.b, label %.preheader91, label %bb.c

.preheader91:                                     ; preds = %bb.a, %._crit_edge
  %.067116 = phi i64 [ %.269.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  %.070115 = phi <2 x i64> [ %i.aa, %._crit_edge ], [ zeroinitializer, %bb.a ]
  %i.c = sub i64 %2, %.067116
  %i.d = lshr i64 %i.c, 4
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 255)
  %i.e = shl nuw nsw i64 %spec.store.select, 4
  %i.f = add i64 %.067116, -16
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = add i64 %.067116, 64                     ; 2 uses
  %.not82105 = icmp ugt i64 %i.h, %i.g
  br i1 %.not82105, label %.preheader, label %.lr.ph107

.preheader:                                       ; preds = %.lr.ph107, %.preheader91
  %.lcssa = phi <16 x i8> [ zeroinitializer, %.preheader91 ], [ %i.s, %.lr.ph107 ] ; 2 uses
  %.168.lcssa = phi i64 [ %.067116, %.preheader91 ], [ %i.i, %.lr.ph107 ] ; 3 uses
  %.not83110 = icmp ugt i64 %.168.lcssa, %i.g
  br i1 %.not83110, label %._crit_edge, label %.lr.ph112

.lr.ph107:                                        ; preds = %.preheader91, %.lr.ph107
  %i.i = phi i64 [ %i.t, %.lr.ph107 ], [ %i.h, %.preheader91 ] ; 3 uses
  %.168106 = phi i64 [ %i.i, %.lr.ph107 ], [ %.067116, %.preheader91 ]
  %i.j = phi <16 x i8> [ %i.s, %.lr.ph107 ], [ zeroinitializer, %.preheader91 ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.168106 ; 4 uses
  %i.l = load <16 x i8>, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load <16 x i8>, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load <16 x i8>, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.r = load <16 x i8>, ptr %i.q, align 1
  %.lobit.neg = lshr <16 x i8> %i.l, splat (i8 7)
  %.lobit84.neg = lshr <16 x i8> %i.n, splat (i8 7)
  %.lobit85.neg = lshr <16 x i8> %i.p, splat (i8 7)
  %.lobit86.neg = lshr <16 x i8> %i.r, splat (i8 7)
  %.neg87 = add <16 x i8> %.lobit.neg, %i.j
  %.neg = add <16 x i8> %.neg87, %.lobit84.neg
  %.neg88 = add <16 x i8> %.neg, %.lobit85.neg
  %i.s = add <16 x i8> %.neg88, %.lobit86.neg     ; 2 uses
  %i.t = add i64 %i.i, 64                         ; 2 uses
  %.not82 = icmp ugt i64 %i.t, %i.g
  br i1 %.not82, label %.preheader, label %.lr.ph107, !llvm.loop !1257

.lr.ph112:                                        ; preds = %.preheader, %.lr.ph112
  %.269111 = phi i64 [ %i.y, %.lr.ph112 ], [ %.168.lcssa, %.preheader ] ; 2 uses
  %i.u = phi <16 x i8> [ %i.x, %.lr.ph112 ], [ %.lcssa, %.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.269111
  %i.w = load <16 x i8>, ptr %i.v, align 1
  %.lobit.neg89 = lshr <16 x i8> %i.w, splat (i8 7)
  %i.x = add <16 x i8> %.lobit.neg89, %i.u        ; 2 uses
  %i.y = add i64 %.269111, 16                     ; 3 uses
  %.not83 = icmp ugt i64 %i.y, %i.g
  br i1 %.not83, label %._crit_edge, label %.lr.ph112, !llvm.loop !1258

._crit_edge:                                      ; preds = %.lr.ph112, %.preheader
  %.lcssa94 = phi <16 x i8> [ %.lcssa, %.preheader ], [ %i.x, %.lr.ph112 ]
  %.269.lcssa = phi i64 [ %.168.lcssa, %.preheader ], [ %i.y, %.lr.ph112 ] ; 3 uses
  %i.z = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa94, <16 x i8> zeroinitializer)
  %i.aa = add <2 x i64> %i.z, %.070115            ; 3 uses
  %i.ab = add i64 %.269.lcssa, 16
  %.not81 = icmp ugt i64 %i.ab, %2
  br i1 %.not81, label %bb.b, label %.preheader91, !llvm.loop !1259

bb.b:                                             ; preds = %._crit_edge
  %i.ac = extractelement <2 x i64> %i.aa, i64 0
  %i.ad = extractelement <2 x i64> %i.aa, i64 1
  %i.ae = add i64 %i.ad, %i.a
  %i.af = add i64 %i.ae, %i.ac
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader93

.preheader93:                                     ; preds = %bb.c
  %.not7995 = icmp samesign ult i64 %2, 32
  br i1 %.not7995, label %.preheader92, label %.lr.ph

.preheader92.loopexit:                            ; preds = %.lr.ph
  %3 = and i64 %2, 2016
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.loopexit, %.preheader93
  %.3.lcssa = phi i64 [ 0, %.preheader93 ], [ %3, %.preheader92.loopexit ] ; 3 uses
  %.0.lcssa = phi i64 [ %i.a, %.preheader93 ], [ %i.av, %.preheader92.loopexit ] ; 2 uses
  %i.ag = or disjoint i64 %.3.lcssa, 16           ; 2 uses
  %.not8099 = icmp samesign ugt i64 %i.ag, %2
  br i1 %.not8099, label %.loopexit, label %.lr.ph102

.lr.ph:                                           ; preds = %.preheader93, %.lr.ph
  %i.ah = phi i64 [ %i.aw, %.lr.ph ], [ 32, %.preheader93 ] ; 2 uses
  %.097 = phi i64 [ %i.av, %.lr.ph ], [ %i.a, %.preheader93 ]
  %.396 = phi i64 [ %i.ah, %.lr.ph ], [ 0, %.preheader93 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.396 ; 2 uses
  %i.aj = load <16 x i8>, ptr %i.ai, align 1
  %i.ak = icmp slt <16 x i8> %i.aj, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.al)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %.097, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aq = load <16 x i8>, ptr %i.ap, align 1
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.as)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %i.ao, %i.au                    ; 2 uses
  %i.aw = add nuw nsw i64 %i.ah, 32               ; 2 uses
  %.not79 = icmp samesign ugt i64 %i.aw, %2
  br i1 %.not79, label %.preheader92.loopexit, label %.lr.ph, !llvm.loop !1260

.lr.ph102:                                        ; preds = %.preheader92, %.lr.ph102
  %i.ax = phi i64 [ %i.bf, %.lr.ph102 ], [ %i.ag, %.preheader92 ] ; 3 uses
  %.1101 = phi i64 [ %i.be, %.lr.ph102 ], [ %.0.lcssa, %.preheader92 ]
  %.4100 = phi i64 [ %i.ax, %.lr.ph102 ], [ %.3.lcssa, %.preheader92 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.4100
  %i.az = load <16 x i8>, ptr %i.ay, align 1
  %i.ba = icmp slt <16 x i8> %i.az, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.bb)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.1101, %i.bd                   ; 2 uses
  %i.bf = add nuw nsw i64 %i.ax, 16               ; 2 uses
  %.not80 = icmp ugt i64 %i.bf, %2
  br i1 %.not80, label %.loopexit, label %.lr.ph102, !llvm.loop !1261

.loopexit:                                        ; preds = %.lr.ph102, %.preheader92, %bb.c, %bb.b
  %.5 = phi i64 [ %.269.lcssa, %bb.b ], [ 0, %bb.c ], [ %.3.lcssa, %.preheader92 ], [ %i.ax, %.lr.ph102 ] ; 3 uses
  %.2 = phi i64 [ %i.af, %bb.b ], [ 0, %bb.c ], [ %.0.lcssa, %.preheader92 ], [ %i.be, %.lr.ph102 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.5 ; 2 uses
  %i.bh = sub i64 %2, %.5                         ; 5 uses
  %.not122 = icmp eq i64 %2, %.5
  br i1 %.not122, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph120.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph120.preheader
  %n.vec = and i64 %i.bh, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi156 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %wide.load = load <2 x i8>, ptr %i.bi, align 1
  %wide.load157 = load <2 x i8>, ptr %i.bj, align 1
  %i.bk = lshr <2 x i8> %wide.load, splat (i8 7)
  %i.bl = lshr <2 x i8> %wide.load157, splat (i8 7)
  %i.bm = zext nneg <2 x i8> %i.bk to <2 x i64>
  %i.bn = zext nneg <2 x i8> %i.bl to <2 x i64>
  %i.bo = add <2 x i64> %vec.phi, %i.bm           ; 2 uses
  %i.bp = add <2 x i64> %vec.phi156, %i.bn        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1262

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bp, %i.bo
  %i.br = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph120.preheader158

.lr.ph120.preheader158:                           ; preds = %.lr.ph120.preheader, %middle.block
  %.0.i118.ph = phi i64 [ 0, %.lr.ph120.preheader ], [ %n.vec, %middle.block ]
  %.08.i117.ph = phi i64 [ 0, %.lr.ph120.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader158, %.lr.ph120
  %.0.i118 = phi i64 [ %i.bv, %.lr.ph120 ], [ %.0.i118.ph, %.lr.ph120.preheader158 ] ; 2 uses
  %.08.i117 = phi i64 [ %spec.select.i, %.lr.ph120 ], [ %.08.i117.ph, %.lr.ph120.preheader158 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.0.i118
  %i.bt = load i8, ptr %i.bs, align 1
  %.lobit = lshr i8 %i.bt, 7
  %i.bu = zext nneg i8 %.lobit to i64
  %spec.select.i = add i64 %.08.i117, %i.bu       ; 2 uses
  %i.bv = add nuw i64 %.0.i118, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.bh
  br i1 %exitcond.not, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph120, !llvm.loop !1263

_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit: ; preds = %.lr.ph120, %middle.block, %.loopexit
  %.08.i.lcssa = phi i64 [ 0, %.loopexit ], [ %i.br, %middle.block ], [ %spec.select.i, %.lr.ph120 ]
  %i.bw = add i64 %.2, %i.bh
  %i.bx = add i64 %i.bw, %.08.i.lcssa
  ret i64 %i.bx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation25utf32_length_from_utf16leEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = and i64 %2, -32                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i103 = phi i64 [ %i.ap, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.011.i.i102 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i103 ; 4 uses
  %i.c = load <8 x i16>, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <8 x i16>, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <8 x i16>, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load <8 x i16>, ptr %i.h, align 1
  %i.j = add <8 x i16> %i.c, splat (i16 8192)
  %i.k = icmp ult <8 x i16> %i.j, splat (i16 -1024)
  %i.l = sext <8 x i1> %i.k to <8 x i16>
  %i.m = add <8 x i16> %i.e, splat (i16 8192)
  %i.n = icmp ult <8 x i16> %i.m, splat (i16 -1024)
  %i.o = sext <8 x i1> %i.n to <8 x i16>
  %i.p = add <8 x i16> %i.g, splat (i16 8192)
  %i.q = icmp ult <8 x i16> %i.p, splat (i16 -1024)
  %i.r = sext <8 x i1> %i.q to <8 x i16>
  %i.s = add <8 x i16> %i.i, splat (i16 8192)
  %i.t = icmp ult <8 x i16> %i.s, splat (i16 -1024)
  %i.u = sext <8 x i1> %i.t to <8 x i16>
  %i.v = bitcast <8 x i16> %i.l to <16 x i8>
  %i.w = icmp slt <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = bitcast <8 x i16> %i.o to <16 x i8>
  %i.z = icmp slt <16 x i8> %i.y, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = bitcast <8 x i16> %i.r to <16 x i8>
  %i.ac = icmp slt <16 x i8> %i.ab, zeroinitializer
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = bitcast <8 x i16> %i.u to <16 x i8>
  %i.af = icmp slt <16 x i8> %i.ae, zeroinitializer
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = insertelement <4 x i16> poison, i16 %i.x, i64 0
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.aa, i64 1
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.ad, i64 2
  %i.ak = insertelement <4 x i16> %i.aj, i16 %i.ag, i64 3
  %i.al = bitcast <4 x i16> %i.ak to i64
  %i.am = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.al)
  %i.an = lshr i64 %i.am, 1
  %i.ao = add i64 %i.an, %.011.i.i102             ; 2 uses
  %i.ap = add nuw i64 %.0.i.i103, 32              ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.a
  br i1 %i.aq, label %.lr.ph, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit, !llvm.loop !63

_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit: ; preds = %.lr.ph
  %i.ar = and i64 %2, -32
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit, %bb.a
  %.011.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.ao, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit ]
  %.0.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.ar, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit.loopexit ] ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i.lcssa ; 2 uses
  %i.at = sub i64 %2, %.0.i.i.lcssa               ; 3 uses
  %.not.i = icmp eq i64 %2, %.0.i.i.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit
  %min.iters.check = icmp ult i64 %i.at, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.au = and i64 %2, 3                           ; 2 uses
  %n.vec = sub nuw i64 %i.at, %i.au               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi109 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %wide.load = load <2 x i16>, ptr %i.av, align 2
  %wide.load110 = load <2 x i16>, ptr %i.aw, align 2
  %i.ax = and <2 x i16> %wide.load, splat (i16 -1024)
  %i.ay = and <2 x i16> %wide.load110, splat (i16 -1024)
  %i.az = icmp ne <2 x i16> %i.ax, splat (i16 -9216)
  %i.ba = icmp ne <2 x i16> %i.ay, splat (i16 -9216)
  %i.bb = zext <2 x i1> %i.az to <2 x i64>
  %i.bc = zext <2 x i1> %i.ba to <2 x i64>
  %i.bd = add <2 x i64> %vec.phi, %i.bb           ; 2 uses
  %i.be = add <2 x i64> %vec.phi109, %i.bc        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1264

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.be, %i.bd
  %i.bg = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i.preheader111

.lr.ph.i.preheader111:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.011.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.0910.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader111, %.lr.ph.i
  %.011.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader111 ] ; 2 uses
  %.0910.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader111 ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.011.i
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = and i16 %i.bi, -1024
  %i.bk = icmp ne i16 %i.bj, -9216
  %i.bl = zext i1 %i.bk to i64
  %i.bm = add i64 %.0910.i, %i.bl                 ; 2 uses
  %i.bn = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %i.at
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !1265

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE0EEEmPKDsm.exit
end_hunk_2
