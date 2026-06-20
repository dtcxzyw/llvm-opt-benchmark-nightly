inline.NumInlined: 2176
inline.NumDeleted: 448
begin_hunk_0_@_ZNK7simdutf7icelake14implementation23utf8_length_from_latin1EPKcm:bb.a
  %i.z = load <64 x i8>, ptr %i.y, align 1
  %.lobit.neg125 = lshr <64 x i8> %i.z, splat (i8 7)
  %i.aa = add <64 x i8> %.lobit.neg125, %i.x      ; 2 uses
  %i.ab = add i64 %.2140, 64                      ; 3 uses
  %.not81 = icmp ugt i64 %i.ab, %i.g
  br i1 %.not81, label %._crit_edge, label %.lr.ph141, !llvm.loop !368

._crit_edge:                                      ; preds = %.lr.ph141, %.preheader
  %.lcssa129 = phi <64 x i8> [ %.lcssa, %.preheader ], [ %i.aa, %.lr.ph141 ]
  %.2.lcssa = phi i64 [ %.169.lcssa, %.preheader ], [ %i.ab, %.lr.ph141 ] ; 3 uses
  %i.ac = tail call noundef <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %.lcssa129, <64 x i8> zeroinitializer)
  %i.ad = add <8 x i64> %i.ac, %.070144           ; 2 uses
  %i.ae = add i64 %.2.lcssa, 64
  %.not79 = icmp ugt i64 %i.ae, %2
  br i1 %.not79, label %bb.b, label %.preheader127, !llvm.loop !369

bb.b:                                             ; preds = %._crit_edge
  %i.af = tail call noundef i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ad)
  %i.ag = add i64 %i.af, %i.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.ah = phi i64 [ %i.ao, %.lr.ph ], [ 64, %bb.c ] ; 3 uses
  %.0132 = phi i64 [ %i.an, %.lr.ph ], [ %i.a, %bb.c ]
  %.3131 = phi i64 [ %i.ah, %.lr.ph ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.3131
  %i.aj = load <64 x i8>, ptr %i.ai, align 1
  %i.ak = icmp slt <64 x i8> %i.aj, zeroinitializer
  %i.al = bitcast <64 x i1> %i.ak to i64
  %i.am = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.al)
  %i.an = add i64 %i.am, %.0132                   ; 2 uses
  %i.ao = add nuw nsw i64 %i.ah, 64               ; 2 uses
  %.not78 = icmp ugt i64 %i.ao, %2
  br i1 %.not78, label %.loopexit, label %.lr.ph, !llvm.loop !370

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.4 = phi i64 [ %.2.lcssa, %bb.b ], [ 0, %bb.c ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.1 = phi i64 [ %i.ag, %bb.b ], [ 0, %bb.c ], [ %i.an, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.4 ; 3 uses
  %i.aq = sub i64 %2, %.4                         ; 9 uses
  %.not151 = icmp eq i64 %2, %.4
  br i1 %.not151, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph149.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check178 = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi179 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi180 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi181 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %wide.load = load <8 x i8>, ptr %i.ar, align 1
  %wide.load182 = load <8 x i8>, ptr %i.as, align 1
  %wide.load183 = load <8 x i8>, ptr %i.at, align 1
  %wide.load184 = load <8 x i8>, ptr %i.au, align 1
  %i.av = lshr <8 x i8> %wide.load, splat (i8 7)
  %i.aw = lshr <8 x i8> %wide.load182, splat (i8 7)
  %i.ax = lshr <8 x i8> %wide.load183, splat (i8 7)
  %i.ay = lshr <8 x i8> %wide.load184, splat (i8 7)
  %i.az = zext nneg <8 x i8> %i.av to <8 x i64>
  %i.ba = zext nneg <8 x i8> %i.aw to <8 x i64>
  %i.bb = zext nneg <8 x i8> %i.ax to <8 x i64>
  %i.bc = zext nneg <8 x i8> %i.ay to <8 x i64>
  %i.bd = add <8 x i64> %vec.phi, %i.az           ; 2 uses
  %i.be = add <8 x i64> %vec.phi179, %i.ba        ; 2 uses
  %i.bf = add <8 x i64> %vec.phi180, %i.bb        ; 2 uses
  %i.bg = add <8 x i64> %vec.phi181, %i.bc        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.be, %i.bd
  %bin.rdx185 = add <8 x i64> %i.bf, %bin.rdx
  %bin.rdx186 = add <8 x i64> %i.bg, %bin.rdx185
  %i.bi = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx186) ; 3 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph149.preheader, label %vec.epilog.ph, !prof !372

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bi, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %i.aq, -4                   ; 3 uses
  %i.bj = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next192, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi190 = phi <4 x i64> [ %i.bj, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index189
  %wide.load191 = load <4 x i8>, ptr %i.bk, align 1
  %i.bl = lshr <4 x i8> %wide.load191, splat (i8 7)
  %i.bm = zext nneg <4 x i8> %i.bl to <4 x i64>
  %i.bn = add <4 x i64> %vec.phi190, %i.bm        ; 2 uses
  %index.next192 = add nuw i64 %index189, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next192, %n.vec188
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !373

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bp = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bn) ; 2 uses
  %cmp.n193 = icmp eq i64 %i.aq, %n.vec188
  br i1 %cmp.n193, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i147.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec188, %vec.epilog.middle.block ]
  %.08.i146.ph = phi i64 [ 0, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.lr.ph149
  %.0.i147 = phi i64 [ %i.bt, %.lr.ph149 ], [ %.0.i147.ph, %.lr.ph149.preheader ] ; 2 uses
  %.08.i146 = phi i64 [ %spec.select.i, %.lr.ph149 ], [ %.08.i146.ph, %.lr.ph149.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.0.i147
  %i.br = load i8, ptr %i.bq, align 1
  %.lobit = lshr i8 %i.br, 7
  %i.bs = zext nneg i8 %.lobit to i64
  %spec.select.i = add i64 %.08.i146, %i.bs       ; 2 uses
  %i.bt = add nuw i64 %.0.i147, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.aq
  br i1 %exitcond.not, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph149, !llvm.loop !374

_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit: ; preds = %.lr.ph149, %middle.block, %vec.epilog.middle.block, %.loopexit
  %.08.i.lcssa = phi i64 [ 0, %.loopexit ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bi, %middle.block ], [ %spec.select.i, %.lr.ph149 ]
  %i.bu = add i64 %.1, %i.aq
  %i.bv = add i64 %i.bu, %.08.i.lcssa
  ret i64 %i.bv
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
  %i.b = phi <64 x i8> [ %i.n, %bb.c ], [ zeroinitializer, %bb.a ]
  %.03674 = phi <8 x i64> [ %.137, %bb.c ], [ zeroinitializer, %bb.a ] ; 2 uses
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
  %i.m = add <8 x i64> %i.l, %.03674
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.137 = phi <8 x i64> [ %i.m, %bb.b ], [ %.03674, %.lr.ph ] ; 3 uses
  %i.n = phi <64 x i8> [ zeroinitializer, %bb.b ], [ %i.i, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ 0, %bb.b ], [ %i.j, %.lr.ph ]   ; 2 uses
  %i.o = add i64 %i.a, 64                         ; 2 uses
  %.not = icmp ugt i64 %i.o, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !375

._crit_edge:                                      ; preds = %bb.c
  %.not42 = icmp eq i64 %i.a, 0
  br i1 %.not42, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.p = icmp eq i64 %.1, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.n, <64 x i8> zeroinitializer)
  %i.r = add <8 x i64> %i.q, %.137
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi <8 x i64> [ %i.r, %bb.e ], [ %.137, %bb.d ] ; 4 uses
  %3 = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %4 = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 2, i32 3>
  %5 = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 4, i32 5>
  %6 = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 6, i32 7>
  %i.s = add <2 x i64> %3, %4
  %i.t = add <2 x i64> %i.s, %6
  %i.u = add <2 x i64> %i.t, %5
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.u)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.f, %._crit_edge
  %.0.lcssa89 = phi i64 [ %i.a, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.038 = phi i64 [ %i.v, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa89 ; 3 uses
  %i.x = sub i64 %2, %.0.lcssa89                  ; 5 uses
  %.not.i = icmp eq i64 %2, %.0.lcssa89
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.thread
  %min.iters.check = icmp ult i64 %i.x, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i64 %i.x, 32
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 31                      ; 3 uses
  %n.vec = sub nuw i64 %i.x, %n.mod.vf            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi93 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi94 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi95 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %wide.load = load <8 x i8>, ptr %i.y, align 1   ; 2 uses
  %wide.load96 = load <8 x i8>, ptr %i.z, align 1 ; 2 uses
  %wide.load97 = load <8 x i8>, ptr %i.aa, align 1 ; 2 uses
  %wide.load98 = load <8 x i8>, ptr %i.ab, align 1 ; 2 uses
  %i.ac = icmp sgt <8 x i8> %wide.load, splat (i8 -65)
  %i.ad = icmp sgt <8 x i8> %wide.load96, splat (i8 -65)
  %i.ae = icmp sgt <8 x i8> %wide.load97, splat (i8 -65)
  %i.af = icmp sgt <8 x i8> %wide.load98, splat (i8 -65)
  %i.ag = zext <8 x i1> %i.ac to <8 x i64>
  %i.ah = zext <8 x i1> %i.ad to <8 x i64>
  %i.ai = zext <8 x i1> %i.ae to <8 x i64>
  %i.aj = zext <8 x i1> %i.af to <8 x i64>
  %i.ak = add <8 x i64> %vec.phi, %i.ag
  %i.al = add <8 x i64> %vec.phi93, %i.ah
  %i.am = add <8 x i64> %vec.phi94, %i.ai
  %i.an = add <8 x i64> %vec.phi95, %i.aj
  %i.ao = icmp ugt <8 x i8> %wide.load, splat (i8 -17)
  %i.ap = icmp ugt <8 x i8> %wide.load96, splat (i8 -17)
  %i.aq = icmp ugt <8 x i8> %wide.load97, splat (i8 -17)
  %i.ar = icmp ugt <8 x i8> %wide.load98, splat (i8 -17)
  %i.as = zext <8 x i1> %i.ao to <8 x i64>
  %i.at = zext <8 x i1> %i.ap to <8 x i64>
  %i.au = zext <8 x i1> %i.aq to <8 x i64>
  %i.av = zext <8 x i1> %i.ar to <8 x i64>
  %i.aw = add <8 x i64> %i.ak, %i.as              ; 2 uses
  %i.ax = add <8 x i64> %i.al, %i.at              ; 2 uses
  %i.ay = add <8 x i64> %i.am, %i.au              ; 2 uses
  %i.az = add <8 x i64> %i.an, %i.av              ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.ax, %i.aw
  %bin.rdx99 = add <8 x i64> %i.ay, %bin.rdx
  %bin.rdx100 = add <8 x i64> %i.az, %bin.rdx99
  %i.bb = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx100) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 8
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !337

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bb, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf101 = and i64 %2, 7                    ; 2 uses
  %n.vec102 = sub i64 %i.x, %n.mod.vf101          ; 2 uses
  %i.bc = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi104 = phi <8 x i64> [ %i.bc, %vec.epilog.ph ], [ %i.bj, %vec.epilog.vector.body ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 %index103
  %wide.load105 = load <8 x i8>, ptr %i.bd, align 1 ; 2 uses
  %i.be = icmp sgt <8 x i8> %wide.load105, splat (i8 -65)
  %i.bf = zext <8 x i1> %i.be to <8 x i64>
  %i.bg = add <8 x i64> %vec.phi104, %i.bf
  %i.bh = icmp ugt <8 x i8> %wide.load105, splat (i8 -17)
  %i.bi = zext <8 x i1> %i.bh to <8 x i64>
  %i.bj = add <8 x i64> %i.bg, %i.bi              ; 2 uses
  %index.next106 = add nuw i64 %index103, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !377

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bl = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.bj) ; 2 uses
  %cmp.n107 = icmp eq i64 %n.mod.vf101, 0
  br i1 %cmp.n107, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ]
  %.01011.i.ph = phi i64 [ 0, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01011.i = phi i64 [ %.2.i, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 %.012.i
  %i.bn = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.bo = icmp sgt i8 %i.bn, -65
  %i.bp = zext i1 %i.bo to i64
  %spec.select.i = add i64 %.01011.i, %i.bp
  %i.bq = icmp ugt i8 %i.bn, -17
  %i.br = zext i1 %i.bq to i64
  %.2.i = add i64 %spec.select.i, %i.br           ; 2 uses
  %i.bs = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %i.x
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i, !llvm.loop !378

_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.thread
  %.010.lcssa.i = phi i64 [ 0, %._crit_edge.thread ], [ %i.bl, %vec.epilog.middle.block ], [ %i.bb, %middle.block ], [ %.2.i, %.lr.ph.i ]
  %i.bt = add i64 %.010.lcssa.i, %.038
  ret i64 %i.bt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation22utf8_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = lshr i64 %2, 6                           ; 2 uses
  %.not.i512 = icmp eq i64 %i.a, 0
  br i1 %.not.i512, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.i515 = phi ptr [ %scevgep, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.039.i514 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %.043.i513 = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.043.i513, i64 357913941) ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = sub i64 %.043.i513, %i.b                 ; 2 uses
  %i.d = shl nuw nsw i64 %i.b, 8
  %scevgep = getelementptr i8, ptr %.0.i515, i64 %i.d ; 2 uses
  %i.e = bitcast <16 x i32> %i.bc to <8 x i64>
  %i.f = bitcast <16 x i32> %i.bc to <8 x i64>
  %i.g = and <8 x i64> %i.f, splat (i64 4294967295)
  %i.h = lshr <8 x i64> %i.e, splat (i64 32)
  %i.i = add nuw nsw <8 x i64> %i.g, %i.h
  %i.j = tail call noundef i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.i)
  %i.k = add i64 %i.j, %.039.i514                 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !379

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.1.i511 = phi ptr [ %.0.i515, %.lr.ph ], [ %i.bd, %bb.c ] ; 5 uses
  %.042.i510 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.c ]
  %i.l = phi <16 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bc, %bb.c ]
  %i.m = load <16 x i32>, ptr %.1.i511, align 1   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i511, i64 64
  %i.o = load <16 x i32>, ptr %i.n, align 1       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i511, i64 128
  %i.q = load <16 x i32>, ptr %i.p, align 1       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1.i511, i64 192
  %i.s = load <16 x i32>, ptr %i.r, align 1       ; 3 uses
  %i.t = icmp ugt <16 x i32> %i.m, splat (i32 127)
  %i.u = zext <16 x i1> %i.t to <16 x i32>
  %i.v = add <16 x i32> %i.l, %i.u
  %i.w = icmp ugt <16 x i32> %i.o, splat (i32 127)
  %i.x = zext <16 x i1> %i.w to <16 x i32>
  %i.y = icmp ugt <16 x i32> %i.q, splat (i32 127)
  %i.z = zext <16 x i1> %i.y to <16 x i32>
  %i.aa = icmp ugt <16 x i32> %i.s, splat (i32 127)
  %i.ab = zext <16 x i1> %i.aa to <16 x i32>
  %i.ac = icmp ugt <16 x i32> %i.m, splat (i32 2047)
  %i.ad = zext <16 x i1> %i.ac to <16 x i32>
  %i.ae = icmp ugt <16 x i32> %i.o, splat (i32 2047)
  %i.af = zext <16 x i1> %i.ae to <16 x i32>
  %i.ag = icmp ugt <16 x i32> %i.q, splat (i32 2047)
  %i.ah = zext <16 x i1> %i.ag to <16 x i32>
  %i.ai = icmp ugt <16 x i32> %i.s, splat (i32 2047)
  %i.aj = zext <16 x i1> %i.ai to <16 x i32>
  %i.ak = icmp ugt <16 x i32> %i.m, splat (i32 65535)
  %i.al = zext <16 x i1> %i.ak to <16 x i32>
  %i.am = icmp ugt <16 x i32> %i.o, splat (i32 65535)
  %i.an = zext <16 x i1> %i.am to <16 x i32>
  %i.ao = icmp ugt <16 x i32> %i.q, splat (i32 65535)
  %i.ap = zext <16 x i1> %i.ao to <16 x i32>
  %i.aq = icmp ugt <16 x i32> %i.s, splat (i32 65535)
  %i.ar = zext <16 x i1> %i.aq to <16 x i32>
  %i.as = add <16 x i32> %i.v, %i.ad
  %i.at = add <16 x i32> %i.as, %i.al
  %i.au = add <16 x i32> %i.at, %i.x
  %i.av = add <16 x i32> %i.au, %i.af
  %i.aw = add <16 x i32> %i.av, %i.an
  %i.ax = add <16 x i32> %i.aw, %i.z
  %i.ay = add <16 x i32> %i.ax, %i.ah
  %i.az = add <16 x i32> %i.ay, %i.ap
  %i.ba = add <16 x i32> %i.az, %i.ab
  %i.bb = add <16 x i32> %i.ba, %i.aj
end_hunk_0
