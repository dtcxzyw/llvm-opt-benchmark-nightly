Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_decompress_safe:bb.a
  %i.kv = ptrtoint ptr %i.jz to i64
  %i.kw = ptrtoint ptr %i.jx to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = getelementptr inbounds i8, ptr %.3371.i, i64 %i.kx
  br label %bb.au

bb.au:                                            ; preds = %LZ4_wildCopy8.exit, %bb.at
  %.16.i = phi ptr [ %i.jz, %LZ4_wildCopy8.exit ], [ %i.jx, %bb.at ] ; 7 uses
  %.4372.i = phi ptr [ %i.ky, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.at ] ; 6 uses
  %i.kz = icmp ult ptr %.16.i, %i.ix
  br i1 %i.kz, label %iter.check, label %.preheader133

iter.check:                                       ; preds = %bb.au
  %i.la = add i64 %.13.i, %.11391.i532
  %i.lb = add i64 %i.o, %i.e
  %i.lc = add i64 %i.lb, -7
  %i.ld = add i64 %.11391.i532, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.lc, i64 %i.ld)
  %i.le = sub i64 %i.la, %umax                    ; 7 uses
  %min.iters.check573 = icmp ult i64 %i.le, 8
  br i1 %min.iters.check573, label %.lr.ph218.preheader, label %vector.memcheck574

vector.memcheck574:                               ; preds = %iter.check
  %i.lf = sub i64 %.11391.i532, %.3371.i533
  %i.lg = add i64 %i.lf, 7
  %diff.check575 = icmp ult i64 %i.lg, 31
  br i1 %diff.check575, label %.lr.ph218.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck574
  %min.iters.check576 = icmp ult i64 %i.le, 32
  br i1 %min.iters.check576, label %vec.epilog.ph, label %vector.ph577

vector.ph577:                                     ; preds = %vector.main.loop.iter.check
  %i.lh = and i64 %i.le, 24
  %n.vec578 = and i64 %i.le, -32                  ; 5 uses
  %i.li = getelementptr i8, ptr %.4372.i, i64 %n.vec578
  %i.lj = getelementptr i8, ptr %.16.i, i64 %n.vec578
  br label %vector.body579

vector.body579:                                   ; preds = %vector.ph577, %vector.body579
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 3 uses
  %next.gep581 = getelementptr i8, ptr %.4372.i, i64 %index580 ; 2 uses
  %next.gep582 = getelementptr i8, ptr %.16.i, i64 %index580 ; 2 uses
  %i.lk = getelementptr i8, ptr %next.gep581, i64 16
  %wide.load583 = load <16 x i8>, ptr %next.gep581, align 1, !tbaa !14
  %wide.load584 = load <16 x i8>, ptr %i.lk, align 1, !tbaa !14
  %i.ll = getelementptr i8, ptr %next.gep582, i64 16
  store <16 x i8> %wide.load583, ptr %next.gep582, align 1, !tbaa !14
  store <16 x i8> %wide.load584, ptr %i.ll, align 1, !tbaa !14
  %index.next585 = add nuw i64 %index580, 32      ; 2 uses
  %i.lm = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.lm, label %middle.block586, label %vector.body579, !llvm.loop !105

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %i.le, %n.vec578
  br i1 %cmp.n587, label %.preheader133, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block586
  %min.epilog.iters.check = icmp eq i64 %i.lh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph218.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec578, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec588 = and i64 %i.le, -8                   ; 4 uses
  %i.ln = getelementptr i8, ptr %.4372.i, i64 %n.vec588
  %i.lo = getelementptr i8, ptr %.16.i, i64 %n.vec588
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index589 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next593, %vec.epilog.vector.body ] ; 3 uses
  %next.gep590 = getelementptr i8, ptr %.4372.i, i64 %index589
  %next.gep591 = getelementptr i8, ptr %.16.i, i64 %index589
  %wide.load592 = load <8 x i8>, ptr %next.gep590, align 1, !tbaa !14
  store <8 x i8> %wide.load592, ptr %next.gep591, align 1, !tbaa !14
  %index.next593 = add nuw i64 %index589, 8       ; 2 uses
  %i.lp = icmp eq i64 %index.next593, %n.vec588
  br i1 %i.lp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n594 = icmp eq i64 %i.le, %n.vec588
  br i1 %cmp.n594, label %.preheader133, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %iter.check, %vector.memcheck574, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i217.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck574 ], [ %i.li, %vec.epilog.iter.check ], [ %i.ln, %vec.epilog.middle.block ]
  %.17.i216.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck574 ], [ %i.lj, %vec.epilog.iter.check ], [ %i.lo, %vec.epilog.middle.block ]
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
  %.5373.i217 = phi ptr [ %i.lq, %.lr.ph218 ], [ %.5373.i217.ph, %.lr.ph218.preheader ] ; 2 uses
  %.17.i216 = phi ptr [ %i.ls, %.lr.ph218 ], [ %.17.i216.ph, %.lr.ph218.preheader ] ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.5373.i217, i64 1
  %i.lr = load i8, ptr %.5373.i217, align 1, !tbaa !14
  %i.ls = getelementptr inbounds nuw i8, ptr %.17.i216, i64 1 ; 2 uses
  store i8 %i.lr, ptr %.17.i216, align 1, !tbaa !14
  %i.lt = icmp ult ptr %i.ls, %i.ix
  br i1 %i.lt, label %.lr.ph218, label %.preheader133, !llvm.loop !107

bb.av:                                            ; preds = %bb.ar
  %i.lu = load i64, ptr %.3371.i, align 1
  store i64 %i.lu, ptr %i.jx, align 1
  %i.lv = icmp ugt i64 %.13.i, 16
  br i1 %i.lv, label %bb.aw, label %.preheader133

bb.aw:                                            ; preds = %bb.av
  %i.lw = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16 ; 4 uses
  %i.lx = add i64 %.13.i, %.11391.i532
  %i.ly = add i64 %.11391.i532, 24
  %i.lz = tail call i64 @llvm.umax.i64(i64 %i.lx, i64 %i.ly)
  %i.ma = add i64 %i.lz, -17
  %i.mb = sub i64 %i.ma, %.11391.i532             ; 2 uses
  %i.mc = lshr i64 %i.mb, 3
  %i.md = add nuw nsw i64 %i.mc, 1                ; 2 uses
  %min.iters.check535 = icmp ult i64 %i.mb, 104
  br i1 %min.iters.check535, label %scalar.ph534.preheader, label %vector.memcheck536

vector.memcheck536:                               ; preds = %bb.aw
  %i.me = sub i64 %.11391.i532, %.3371.i533
  %i.mf = add i64 %i.me, 7
  %diff.check537 = icmp ult i64 %i.mf, 31
  br i1 %diff.check537, label %scalar.ph534.preheader, label %vector.ph538

vector.ph538:                                     ; preds = %vector.memcheck536
  %n.vec539 = and i64 %i.md, 4611686018427387900  ; 3 uses
  %i.mg = shl i64 %n.vec539, 3                    ; 2 uses
  %i.mh = getelementptr i8, ptr %i.lw, i64 %i.mg
  %i.mi = getelementptr i8, ptr %.3371.i, i64 %i.mg
  br label %vector.body540

vector.body540:                                   ; preds = %vector.body540, %vector.ph538
  %index541 = phi i64 [ 0, %vector.ph538 ], [ %index.next546, %vector.body540 ] ; 2 uses
  %i.mj = shl i64 %index541, 3                    ; 2 uses
  %next.gep542 = getelementptr i8, ptr %i.lw, i64 %i.mj ; 2 uses
  %next.gep543 = getelementptr i8, ptr %.3371.i, i64 %i.mj ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %next.gep543, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %next.gep543, i64 24
  %wide.load544 = load <2 x i64>, ptr %i.mk, align 1
  %wide.load545 = load <2 x i64>, ptr %i.ml, align 1
  %i.mm = getelementptr i8, ptr %next.gep542, i64 16
  store <2 x i64> %wide.load544, ptr %next.gep542, align 1
  store <2 x i64> %wide.load545, ptr %i.mm, align 1
  %index.next546 = add nuw i64 %index541, 4       ; 2 uses
  %i.mn = icmp eq i64 %index.next546, %n.vec539
  br i1 %i.mn, label %middle.block547, label %vector.body540, !llvm.loop !108

middle.block547:                                  ; preds = %vector.body540
  %cmp.n548 = icmp eq i64 %i.md, %n.vec539
  br i1 %cmp.n548, label %.preheader133, label %scalar.ph534.preheader

scalar.ph534.preheader:                           ; preds = %vector.memcheck536, %bb.aw, %middle.block547
  %.09.i4.ph = phi ptr [ %i.lw, %vector.memcheck536 ], [ %i.lw, %bb.aw ], [ %i.mh, %middle.block547 ]
  %.3371.i.pn.ph = phi ptr [ %.3371.i, %vector.memcheck536 ], [ %.3371.i, %bb.aw ], [ %i.mi, %middle.block547 ]
  br label %scalar.ph534

scalar.ph534:                                     ; preds = %scalar.ph534.preheader, %scalar.ph534
  %.09.i4 = phi ptr [ %i.mp, %scalar.ph534 ], [ %.09.i4.ph, %scalar.ph534.preheader ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.0.i5, %scalar.ph534 ], [ %.3371.i.pn.ph, %scalar.ph534.preheader ]
  %.0.i5 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.mo = load i64, ptr %.0.i5, align 1
  store i64 %i.mo, ptr %.09.i4, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %.09.i4, i64 8 ; 2 uses
  %i.mq = icmp ult ptr %i.mp, %i.ix
  br i1 %i.mq, label %scalar.ph534, label %.preheader133, !llvm.loop !109

.preheader133:                                    ; preds = %scalar.ph534, %.lr.ph218, %bb.av, %bb.au, %vec.epilog.middle.block, %middle.block586, %middle.block547, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %middle.block547 ], [ %.2, %.lr.ph218 ], [ %.2, %middle.block586 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.av ], [ %.2, %bb.au ], [ %.2, %scalar.ph534 ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.f ], [ %i.ix, %middle.block547 ], [ %i.ix, %.lr.ph218 ], [ %i.ix, %middle.block586 ], [ %i.ix, %vec.epilog.middle.block ], [ %i.ix, %bb.av ], [ %i.ix, %bb.au ], [ %i.ix, %scalar.ph534 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.ms = load i8, ptr %.3.ph, align 1, !tbaa !14
  %i.mt = zext i8 %i.ms to i32                    ; 3 uses
  %i.mu = lshr i32 %i.mt, 4                       ; 2 uses
  %.not439.i210 = icmp eq i32 %i.mu, 15
  br i1 %.not439.i210, label %.thread96, label %.lr.ph212

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit17, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %.thread92, %.preheader141.preheader, %.preheader138.preheader, %.preheader141, %.preheader138, %.preheader132, %.preheader130, %.preheader132.preheader, %.preheader130.preheader, %bb.ak, %.thread96, %read_variable_length.exit23, %bb.ag, %bb.as, %.loopexit146, %read_variable_length.exit29, %bb.ai
  %.9 = phi ptr [ %.6, %bb.ai ], [ %.2, %.loopexit146 ], [ %.2, %bb.as ], [ %.19, %read_variable_length.exit29 ], [ %i.al, %.preheader141 ], [ %.17112, %bb.ag ], [ %i.in, %.preheader130 ], [ %i.gl, %read_variable_length.exit23 ], [ %i.bp, %.preheader138 ], [ %.4101, %.thread96 ], [ %i.gl, %.preheader132 ], [ %.7, %bb.ak ], [ %i.ij, %.preheader130.preheader ], [ %i.gh, %.preheader132.preheader ], [ %i.bf, %bb.m ], [ %i.bp, %read_variable_length.exit17 ], [ %.1587, %bb.o ], [ %i.ae, %bb.h ], [ %.1368, %bb.j ], [ %i.al, %read_variable_length.exit ], [ %i.ah, %.preheader141.preheader ], [ %i.bl, %.preheader138.preheader ], [ %.10, %.thread92 ]
  %i.mv = ptrtoint ptr %.9 to i64
  %i.mw = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.mw, %i.mv
  %i.mx = trunc i64 %.neg.i to i32
  %i.my = add nsw i32 %i.mx, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.aj, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.hv, %bb.aj ], [ %i.m, %bb.d ], [ -1, %bb.e ], [ %i.my, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %i.a, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 11 uses
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 9 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %LZ4_decompress_generic.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %LZ4_decompress_generic.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = icmp samesign ult i32 %i.a, 64
  br i1 %i.n, label %.preheader140, label %.preheader151

.preheader151:                                    ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.q = load i8, ptr %0, align 1, !tbaa !14
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = lshr i32 %i.r, 4                         ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp slt i32 %2, 18
  br i1 %i.u, label %.loopexit141, label %.lr.ph214

.lr.ph214:                                        ; preds = %.preheader151
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.x = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph214, %.backedge
  %i.z = phi i64 [ %i.t, %.lr.ph214 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.aa = phi i32 [ %i.s, %.lr.ph214 ], [ %i.ck, %.backedge ]
  %i.ab = phi i32 [ %i.r, %.lr.ph214 ], [ %i.cj, %.backedge ] ; 2 uses
  %i.ac = phi ptr [ %i.p, %.lr.ph214 ], [ %i.ch, %.backedge ] ; 5 uses
  %.0380.i213 = phi ptr [ %1, %.lr.ph214 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0212 = phi ptr [ %0, %.lr.ph214 ], [ %.0.be, %.backedge ]
  %i.ad = icmp eq i32 %i.aa, 15
  br i1 %i.ad, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not.i14 = icmp ult ptr %i.ac, %i.v
  br i1 %.not.i14, label %bb.g, label %LZ4_wildCopy32.exit.thread, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !14  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0212, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ae, -1
  br i1 %.not21.i, label %.preheader149.preheader, label %read_variable_length.exit.thread69, !prof !26

.preheader149.preheader:                          ; preds = %bb.g
  %.not22.i468 = icmp ult ptr %i.af, %i.v
  br i1 %.not22.i468, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !36

read_variable_length.exit.thread69:               ; preds = %bb.g
  %i.ag = zext i8 %i.ae to i64
  br label %bb.h

.preheader149:                                    ; preds = %.lr.ph471
  %.not22.i = icmp ult ptr %i.aj, %i.v
  br i1 %.not22.i, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !37, !llvm.loop !2

.lr.ph471:                                        ; preds = %.preheader149.preheader, %.preheader149
  %.0.i15470 = phi i64 [ %i.ak, %.preheader149 ], [ 255, %.preheader149.preheader ]
  %.13469 = phi ptr [ %i.aj, %.preheader149 ], [ %i.af, %.preheader149.preheader ] ; 2 uses
  %i.ah = load i8, ptr %.13469, align 1, !tbaa !14 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.13469, i64 1 ; 5 uses
  %i.ak = add i64 %.0.i15470, %i.ai               ; 3 uses
  %i.al = icmp eq i8 %i.ah, -1
  br i1 %i.al, label %.preheader149, label %read_variable_length.exit, !llvm.loop !2

read_variable_length.exit:                        ; preds = %.lr.ph471
  %i.am = icmp eq i64 %i.ak, -1
  br i1 %i.am, label %LZ4_wildCopy32.exit.thread, label %bb.h

bb.h:                                             ; preds = %read_variable_length.exit.thread69, %read_variable_length.exit
  %.016.i73 = phi i64 [ %i.ag, %read_variable_length.exit.thread69 ], [ %i.ak, %read_variable_length.exit ]
  %.1472 = phi ptr [ %i.af, %read_variable_length.exit.thread69 ], [ %i.aj, %read_variable_length.exit ] ; 5 uses
  %i.an = add i64 %.016.i73, 15                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0380.i213, i64 %i.an ; 4 uses
  %i.ap = ptrtoint ptr %.1472 to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !26

bb.i:                                             ; preds = %bb.h
  %i.as = icmp ugt ptr %i.ao, %i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.1472, i64 %i.an ; 2 uses
  %i.au = icmp ugt ptr %i.at, %i.w
  %or.cond450.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader148

.preheader148:                                    ; preds = %bb.i, %.preheader148
  %.011.i = phi ptr [ %i.ax, %.preheader148 ], [ %.0380.i213, %bb.i ] ; 3 uses
  %.0.i34 = phi ptr [ %i.ay, %.preheader148 ], [ %.1472, %bb.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i34, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i34, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i34, i64 32
  %i.az = icmp ult ptr %i.ax, %i.ao
  br i1 %i.az, label %.preheader148, label %LZ4_wildCopy32.exit.thread79, !llvm.loop !3

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i213, ptr noundef nonnull align 1 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  %i.bb = getelementptr inbounds nuw i8, ptr %.0380.i213, i64 %i.z
  br label %LZ4_wildCopy32.exit.thread79

LZ4_wildCopy32.exit.thread79:                     ; preds = %.preheader148, %bb.j
  %.1 = phi ptr [ %i.ba, %bb.j ], [ %i.at, %.preheader148 ] ; 3 uses
  %.2382.i = phi ptr [ %i.bb, %bb.j ], [ %i.ao, %.preheader148 ] ; 23 uses
  %.2382.i491 = ptrtoaddr ptr %.2382.i to i64     ; 7 uses
  %.val41 = load i16, ptr %.1, align 1, !tbaa !31 ; 5 uses
  %i.bc = zext i16 %.val41 to i64                 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds i8, ptr %.2382.i, i64 %i.be ; 16 uses
  %i.bg = and i32 %i.ab, 15                       ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 15
  br i1 %i.bh, label %bb.k, label %bb.o

bb.k:                                             ; preds = %LZ4_wildCopy32.exit.thread79
  %.not.i16 = icmp ult ptr %i.bd, %i.y
  br i1 %.not.i16, label %bb.l, label %LZ4_wildCopy32.exit.thread, !prof !32

bb.l:                                             ; preds = %bb.k
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !14  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %.not21.i18 = icmp eq i8 %i.bi, -1
  br i1 %.not21.i18, label %.preheader146.preheader, label %read_variable_length.exit21.thread88, !prof !26

.preheader146.preheader:                          ; preds = %bb.l
  %.not22.i20473 = icmp ult ptr %i.bj, %i.y
  br i1 %.not22.i20473, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !36

read_variable_length.exit21.thread88:             ; preds = %bb.l
  %i.bk = zext i8 %i.bi to i64
  br label %bb.m

.preheader146:                                    ; preds = %.lr.ph476
  %.not22.i20 = icmp ult ptr %i.bn, %i.y
  br i1 %.not22.i20, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !37, !llvm.loop !2

.lr.ph476:                                        ; preds = %.preheader146.preheader, %.preheader146
  %.0.i19475 = phi i64 [ %i.bo, %.preheader146 ], [ 255, %.preheader146.preheader ]
  %.15474 = phi ptr [ %i.bn, %.preheader146 ], [ %i.bj, %.preheader146.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.15474, align 1, !tbaa !14 ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.15474, i64 1 ; 5 uses
  %i.bo = add i64 %.0.i19475, %i.bm               ; 3 uses
  %i.bp = icmp eq i8 %i.bl, -1
  br i1 %i.bp, label %.preheader146, label %read_variable_length.exit21, !llvm.loop !2

read_variable_length.exit21:                      ; preds = %.lr.ph476
  %i.bq = icmp eq i64 %i.bo, -1
  br i1 %i.bq, label %LZ4_wildCopy32.exit.thread, label %bb.m

bb.m:                                             ; preds = %read_variable_length.exit21.thread88, %read_variable_length.exit21
  %.016.i1792 = phi i64 [ %i.bk, %read_variable_length.exit21.thread88 ], [ %i.bo, %read_variable_length.exit21 ]
  %.1691 = phi ptr [ %i.bj, %read_variable_length.exit21.thread88 ], [ %i.bn, %read_variable_length.exit21 ] ; 3 uses
  %i.br = add i64 %.016.i1792, 19                 ; 4 uses
  %i.bs = ptrtoint ptr %.2382.i to i64
  %i.bt = xor i64 %i.bs, -1
  %i.bu = icmp ugt i64 %i.br, %i.bt
  br i1 %i.bu, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.br
  %.not436.i = icmp ult ptr %i.bv, %i.x
  br i1 %.not436.i, label %.thread96, label %.loopexit154

bb.o:                                             ; preds = %LZ4_wildCopy32.exit.thread79
  %narrow.i = add nuw nsw i32 %i.bg, 4
  %i.bw = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.bw ; 2 uses
  %.not.i = icmp ult ptr %i.bx, %i.x
  br i1 %.not.i, label %bb.p, label %.loopexit154

bb.p:                                             ; preds = %bb.o
  %i.by = icmp uge ptr %i.bf, %1
  %i.bz = icmp ugt i16 %.val41, 7
  %or.cond5.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond5.i, label %bb.q, label %.thread96

bb.q:                                             ; preds = %bb.p
  %i.ca = load i64, ptr %i.bf, align 1
  store i64 %i.ca, ptr %.2382.i, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cd = load i64, ptr %i.cc, align 1
  store i64 %i.cd, ptr %i.cb, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.2382.i, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cg = load i16, ptr %i.cf, align 1
  store i16 %i.cg, ptr %i.ce, align 1
end_hunk_0
begin_hunk_1_@LZ4_decompress_safe_partial:bb.a
  %.6.i = phi i64 [ %.4362.i, %.loopexit141 ], [ %i.gn, %bb.ae ], [ %i.fb, %.lr.ph220 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.7387.i106, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.i, %.loopexit141.thread
  %.6 = phi ptr [ %.5, %.loopexit141.thread ], [ %.1472, %bb.i ] ; 10 uses
  %.8388.i = phi ptr [ %.7387.i106, %.loopexit141.thread ], [ %.0380.i213, %bb.i ] ; 10 uses
  %.3377.i = phi ptr [ %i.gu, %.loopexit141.thread ], [ %i.ao, %bb.i ] ; 6 uses
  %.1365.i = phi i32 [ %.0364.i108, %.loopexit141.thread ], [ %i.ab, %bb.i ]
  %.7.i = phi i64 [ %.6.i, %.loopexit141.thread ], [ %i.an, %bb.i ] ; 3 uses
  %.3377.i514 = ptrtoaddr ptr %.3377.i to i64
  %.8388.i515 = ptrtoaddr ptr %.8388.i to i64     ; 3 uses
  %.6516 = ptrtoaddr ptr %.6 to i64
  %i.gv = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gw = icmp ugt ptr %.3377.i, %i.gv
  br i1 %i.gw, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.gy = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gz = icmp ugt ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.ag, label %.preheader138.preheader

.preheader138.preheader:                          ; preds = %bb.af
  %i.ha = add i64 %.8388.i515, 8
  %i.hb = tail call i64 @llvm.umax.i64(i64 %.3377.i514, i64 %i.ha)
  %i.hc = xor i64 %.8388.i515, -1
  %i.hd = add i64 %i.hb, %i.hc                    ; 2 uses
  %i.he = lshr i64 %i.hd, 3
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check518 = icmp ult i64 %i.hd, 72
  %i.hg = sub i64 %.6516, %.8388.i515
  %diff.check520 = icmp ugt i64 %i.hg, -32
  %or.cond586 = select i1 %min.iters.check518, i1 true, i1 %diff.check520
  br i1 %or.cond586, label %.preheader138.preheader591, label %vector.ph521

vector.ph521:                                     ; preds = %.preheader138.preheader
  %n.vec522 = and i64 %i.hf, 4611686018427387900  ; 3 uses
  %i.hh = shl i64 %n.vec522, 3                    ; 2 uses
  %i.hi = getelementptr i8, ptr %.8388.i, i64 %i.hh
  %i.hj = getelementptr i8, ptr %.6, i64 %i.hh
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next529, %vector.body523 ] ; 2 uses
  %i.hk = shl i64 %index524, 3                    ; 2 uses
  %next.gep525 = getelementptr i8, ptr %.8388.i, i64 %i.hk ; 2 uses
  %next.gep526 = getelementptr i8, ptr %.6, i64 %i.hk ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep526, i64 16
  %wide.load527 = load <2 x i64>, ptr %next.gep526, align 1
  %wide.load528 = load <2 x i64>, ptr %i.hl, align 1
  %i.hm = getelementptr i8, ptr %next.gep525, i64 16
  store <2 x i64> %wide.load527, ptr %next.gep525, align 1
  store <2 x i64> %wide.load528, ptr %i.hm, align 1
  %index.next529 = add nuw i64 %index524, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next529, %n.vec522
  br i1 %i.hn, label %middle.block530, label %vector.body523, !llvm.loop !114

middle.block530:                                  ; preds = %vector.body523
  %cmp.n531 = icmp eq i64 %i.hf, %n.vec522
  br i1 %cmp.n531, label %LZ4_wildCopy8.exit13, label %.preheader138.preheader591

.preheader138.preheader591:                       ; preds = %.preheader138.preheader, %middle.block530
  %.09.i11.ph = phi ptr [ %.8388.i, %.preheader138.preheader ], [ %i.hi, %middle.block530 ]
  %.0.i12.ph = phi ptr [ %.6, %.preheader138.preheader ], [ %i.hj, %middle.block530 ]
  br label %.preheader138

bb.ag:                                            ; preds = %bb.af, %LZ4_wildCopy32.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %i.hp = icmp ugt ptr %i.ho, %i.e                ; 2 uses
  %i.hq = ptrtoint ptr %i.e to i64
  %i.hr = ptrtoint ptr %.6 to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.hs
  %.4378.i = select i1 %i.hp, ptr %i.ht, ptr %.3377.i ; 2 uses
  %i.hu = icmp ugt ptr %.4378.i, %i.g
  br i1 %i.hu, label %.thread124, label %bb.ah

.thread124:                                       ; preds = %bb.ag
  %i.hv = ptrtoint ptr %.8388.i to i64
  %i.hw = sub i64 %i.l, %i.hv                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %i.hw, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.hw
  br label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %.8.i = select i1 %i.hp, i64 %i.hs, i64 %.7.i   ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.8.i, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.6, i64 %.8.i ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.8.i ; 2 uses
  %i.ia = icmp ne ptr %.4378.i, %i.g
  %i.ib = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not442.i = icmp ult ptr %i.hy, %i.ib
  %or.cond460.i = select i1 %i.ia, i1 %.not442.i, i1 false
  br i1 %or.cond460.i, label %LZ4_wildCopy8.exit13, label %bb.au

.preheader138:                                    ; preds = %.preheader138.preheader591, %.preheader138
  %.09.i11 = phi ptr [ %i.id, %.preheader138 ], [ %.09.i11.ph, %.preheader138.preheader591 ] ; 2 uses
  %.0.i12 = phi ptr [ %i.ie, %.preheader138 ], [ %.0.i12.ph, %.preheader138.preheader591 ] ; 2 uses
  %i.ic = load i64, ptr %.0.i12, align 1
  store i64 %i.ic, ptr %.09.i11, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.09.i11, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i12, i64 8
  %i.if = icmp ult ptr %i.id, %.3377.i
  br i1 %i.if, label %.preheader138, label %LZ4_wildCopy8.exit13, !llvm.loop !115

LZ4_wildCopy8.exit13:                             ; preds = %.preheader138, %middle.block530, %bb.ah
  %.7 = phi ptr [ %i.hy, %bb.ah ], [ %i.gx, %middle.block530 ], [ %i.gx, %.preheader138 ] ; 2 uses
  %.9389.i = phi ptr [ %i.hz, %bb.ah ], [ %.3377.i, %middle.block530 ], [ %.3377.i, %.preheader138 ] ; 2 uses
  %.val40 = load i16, ptr %.7, align 1, !tbaa !31
  %i.ig = zext i16 %.val40 to i64                 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.ii = sub nsw i64 0, %i.ig
  %i.ij = getelementptr inbounds i8, ptr %.9389.i, i64 %i.ii
  %i.ik = and i32 %.1365.i, 15
  %i.il = zext nneg i32 %i.ik to i64
  br label %.loopexit142

.loopexit142:                                     ; preds = %bb.ab, %LZ4_wildCopy8.exit13
  %.8 = phi ptr [ %i.ih, %LZ4_wildCopy8.exit13 ], [ %i.fk, %bb.ab ] ; 5 uses
  %.10390.i = phi ptr [ %.9389.i, %LZ4_wildCopy8.exit13 ], [ %i.ff, %bb.ab ] ; 2 uses
  %.0368.i = phi ptr [ %i.ij, %LZ4_wildCopy8.exit13 ], [ %i.fm, %bb.ab ]
  %.0366.i = phi i64 [ %i.ig, %LZ4_wildCopy8.exit13 ], [ %i.fj, %bb.ab ]
  %.10.i = phi i64 [ %i.il, %LZ4_wildCopy8.exit13 ], [ %i.fi, %bb.ab ] ; 2 uses
  %i.im = icmp eq i64 %.10.i, 15
  br i1 %i.im, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.loopexit142
  %i.in = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %.not.i28 = icmp ult ptr %.8, %i.in
  br i1 %.not.i28, label %bb.aj, label %LZ4_wildCopy32.exit.thread, !prof !32

bb.aj:                                            ; preds = %bb.ai
  %i.io = load i8, ptr %.8, align 1, !tbaa !14    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 4 uses
  %.not21.i30 = icmp eq i8 %i.io, -1
  br i1 %.not21.i30, label %.preheader137.preheader, label %bb.ak, !prof !26

.preheader137.preheader:                          ; preds = %bb.aj
  %.not22.i32484 = icmp ult ptr %i.ip, %i.in
  br i1 %.not22.i32484, label %.lr.ph487, label %LZ4_wildCopy32.exit.thread, !prof !36

bb.ak:                                            ; preds = %bb.aj
  %i.iq = zext i8 %i.io to i64
  br label %read_variable_length.exit33

.preheader137:                                    ; preds = %.lr.ph487
  %.not22.i32 = icmp ult ptr %i.it, %i.in
  br i1 %.not22.i32, label %.lr.ph487, label %LZ4_wildCopy32.exit.thread, !prof !37, !llvm.loop !2

.lr.ph487:                                        ; preds = %.preheader137.preheader, %.preheader137
  %.0.i31486 = phi i64 [ %i.iu, %.preheader137 ], [ 255, %.preheader137.preheader ]
  %.19485 = phi ptr [ %i.it, %.preheader137 ], [ %i.ip, %.preheader137.preheader ] ; 2 uses
  %i.ir = load i8, ptr %.19485, align 1, !tbaa !14 ; 2 uses
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %.19485, i64 1 ; 4 uses
  %i.iu = add i64 %.0.i31486, %i.is               ; 2 uses
  %i.iv = icmp eq i8 %i.ir, -1
  br i1 %i.iv, label %.preheader137, label %read_variable_length.exit33, !llvm.loop !2

read_variable_length.exit33:                      ; preds = %.lr.ph487, %bb.ak
  %.20 = phi ptr [ %i.ip, %bb.ak ], [ %i.it, %.lr.ph487 ] ; 2 uses
  %.016.i29 = phi i64 [ %i.iq, %bb.ak ], [ %i.iu, %.lr.ph487 ] ; 2 uses
  %i.iw = icmp ne i64 %.016.i29, -1               ; 2 uses
  %i.ix = add i64 %.016.i29, 15                   ; 2 uses
  %i.iy = ptrtoint ptr %.10390.i to i64
  %i.iz = xor i64 %i.iy, -1
  %i.ja = icmp ule i64 %i.ix, %i.iz
  %.11.i = select i1 %i.iw, i64 %i.ix, i64 15
  %.not136 = select i1 %i.iw, i1 %i.ja, i1 false
  br i1 %.not136, label %bb.al, label %LZ4_wildCopy32.exit.thread

bb.al:                                            ; preds = %read_variable_length.exit33, %.loopexit142
  %.9 = phi ptr [ %.20, %read_variable_length.exit33 ], [ %.8, %.loopexit142 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit33 ], [ %.10.i, %.loopexit142 ]
  %i.jb = add i64 %.12.i, 4
  br label %.loopexit154

.loopexit154:                                     ; preds = %bb.n, %bb.o, %bb.al
  %.2 = phi ptr [ %.9, %bb.al ], [ %.1691, %bb.n ], [ %i.bd, %bb.o ] ; 5 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.al ], [ %.2382.i, %bb.o ], [ %.2382.i, %bb.n ] ; 20 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.al ], [ %i.bf, %bb.o ], [ %i.bf, %bb.n ] ; 16 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.al ], [ %i.bc, %bb.o ], [ %i.bc, %bb.n ] ; 3 uses
  %.13.i = phi i64 [ %i.jb, %bb.al ], [ %i.br, %bb.n ], [ %i.bw, %bb.o ] ; 4 uses
  %.1369.i560 = ptrtoaddr ptr %.1369.i to i64
  %.11391.i538 = ptrtoaddr ptr %.11391.i to i64   ; 8 uses
  %i.jc = icmp ult ptr %.1369.i, %1
  br i1 %i.jc, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !42

bb.am:                                            ; preds = %.loopexit154
  %i.jd = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 5 uses
  %i.je = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.jf = icmp ugt ptr %i.jd, %i.je
  br i1 %i.jf, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.jg = ptrtoint ptr %.11391.i to i64
  %i.jh = sub i64 %i.l, %i.jg
  %i.ji = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.jh) ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.ji ; 3 uses
  %i.jl = icmp ugt ptr %i.jj, %.11391.i
  br i1 %i.jl, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %.not = icmp eq i64 %i.ji, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.jm = add i64 %i.ji, %.11391.i538
  %i.jn = add i64 %.11391.i538, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jm, i64 %i.jn)
  %i.jo = sub i64 %umax, %.11391.i538             ; 7 uses
  %min.iters.check562 = icmp ult i64 %i.jo, 8
  %i.jp = sub i64 %.1369.i560, %.11391.i538
  %diff.check564 = icmp ugt i64 %i.jp, -32
  %or.cond587 = or i1 %min.iters.check562, %diff.check564
  br i1 %or.cond587, label %.lr.ph226.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check565 = icmp ult i64 %i.jo, 32
  br i1 %min.iters.check565, label %vec.epilog.ph, label %vector.ph566

vector.ph566:                                     ; preds = %vector.main.loop.iter.check
  %i.jq = and i64 %i.jo, 24
  %n.vec567 = and i64 %i.jo, -32                  ; 5 uses
  %i.jr = getelementptr i8, ptr %.1369.i, i64 %n.vec567
  %i.js = getelementptr i8, ptr %.11391.i, i64 %n.vec567
  br label %vector.body568

vector.body568:                                   ; preds = %vector.ph566, %vector.body568
  %index569 = phi i64 [ 0, %vector.ph566 ], [ %index.next574, %vector.body568 ] ; 3 uses
  %next.gep570 = getelementptr i8, ptr %.1369.i, i64 %index569 ; 2 uses
  %next.gep571 = getelementptr i8, ptr %.11391.i, i64 %index569 ; 2 uses
  %i.jt = getelementptr i8, ptr %next.gep570, i64 16
  %wide.load572 = load <16 x i8>, ptr %next.gep570, align 1, !tbaa !14
  %wide.load573 = load <16 x i8>, ptr %i.jt, align 1, !tbaa !14
  %i.ju = getelementptr i8, ptr %next.gep571, i64 16
  store <16 x i8> %wide.load572, ptr %next.gep571, align 1, !tbaa !14
  store <16 x i8> %wide.load573, ptr %i.ju, align 1, !tbaa !14
  %index.next574 = add nuw i64 %index569, 32      ; 2 uses
  %i.jv = icmp eq i64 %index.next574, %n.vec567
  br i1 %i.jv, label %middle.block575, label %vector.body568, !llvm.loop !116

middle.block575:                                  ; preds = %vector.body568
  %cmp.n576 = icmp eq i64 %i.jo, %n.vec567
  br i1 %cmp.n576, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block575
  %min.epilog.iters.check = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph226.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec567, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec577 = and i64 %i.jo, -8                   ; 4 uses
  %i.jw = getelementptr i8, ptr %.1369.i, i64 %n.vec577
  %i.jx = getelementptr i8, ptr %.11391.i, i64 %n.vec577
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index578 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next582, %vec.epilog.vector.body ] ; 3 uses
  %next.gep579 = getelementptr i8, ptr %.1369.i, i64 %index578
  %next.gep580 = getelementptr i8, ptr %.11391.i, i64 %index578
  %wide.load581 = load <8 x i8>, ptr %next.gep579, align 1, !tbaa !14
  store <8 x i8> %wide.load581, ptr %next.gep580, align 1, !tbaa !14
  %index.next582 = add nuw i64 %index578, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next582, %n.vec577
  br i1 %i.jy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n583 = icmp eq i64 %i.jo, %n.vec577
  br i1 %cmp.n583, label %.loopexit, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2370.i225.ph = phi ptr [ %.1369.i, %iter.check ], [ %i.jr, %vec.epilog.iter.check ], [ %i.jw, %vec.epilog.middle.block ]
  %.15.i224.ph = phi ptr [ %.11391.i, %iter.check ], [ %i.js, %vec.epilog.iter.check ], [ %i.jx, %vec.epilog.middle.block ]
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %.lr.ph226
  %.2370.i225 = phi ptr [ %i.jz, %.lr.ph226 ], [ %.2370.i225.ph, %.lr.ph226.preheader ] ; 2 uses
  %.15.i224 = phi ptr [ %i.kb, %.lr.ph226 ], [ %.15.i224.ph, %.lr.ph226.preheader ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.2370.i225, i64 1
  %i.ka = load i8, ptr %.2370.i225, align 1, !tbaa !14
  %i.kb = getelementptr inbounds nuw i8, ptr %.15.i224, i64 1 ; 2 uses
  store i8 %i.ka, ptr %.15.i224, align 1, !tbaa !14
  %i.kc = icmp ult ptr %i.kb, %i.jk
  br i1 %i.kc, label %.lr.ph226, label %.loopexit, !llvm.loop !118

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %.1369.i, i64 %i.ji, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph226, %middle.block575, %vec.epilog.middle.block, %.preheader, %bb.ao
  %i.kd = icmp eq ptr %i.jk, %i.g
  br i1 %i.kd, label %bb.au, label %.preheader140

bb.ap:                                            ; preds = %bb.am
  %i.ke = icmp ult i64 %.1367.i, 8
  br i1 %i.ke, label %bb.aq, label %bb.ar, !prof !26

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.11391.i, align 1, !tbaa !23
  %i.kf = load i8, ptr %.1369.i, align 1, !tbaa !14
  store i8 %i.kf, ptr %.11391.i, align 1, !tbaa !14
  %i.kg = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !14
  %i.ki = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !14
  %i.kj = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !14
  %i.kl = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !14
  %i.km = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !14
  %i.ko = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !14
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !38
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.kr ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.ku = load i32, ptr %i.ks, align 1
  store i32 %i.ku, ptr %i.kt, align 1
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !38
  %i.kx = sext i32 %i.kw to i64
  %i.ky = sub nsw i64 0, %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.ks, i64 %i.ky
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.la = load i64, ptr %.1369.i, align 1
  store i64 %i.la, ptr %.11391.i, align 1
  %i.lb = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.3371.i = phi ptr [ %i.kz, %bb.aq ], [ %i.lb, %bb.ar ] ; 6 uses
  %.3371.i539 = ptrtoaddr ptr %.3371.i to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8
  %i.ld = load i64, ptr %.3371.i, align 1
  store i64 %i.ld, ptr %i.lc, align 1
  %i.le = icmp ugt i64 %.13.i, 16
  br i1 %i.le, label %bb.at, label %.preheader140

bb.at:                                            ; preds = %bb.as
  %i.lf = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16 ; 4 uses
  %i.lg = add i64 %.13.i, %.11391.i538
  %i.lh = add i64 %.11391.i538, 24
  %i.li = tail call i64 @llvm.umax.i64(i64 %i.lg, i64 %i.lh)
  %i.lj = add i64 %i.li, -17
  %i.lk = sub i64 %i.lj, %.11391.i538             ; 2 uses
  %i.ll = lshr i64 %i.lk, 3
  %i.lm = add nuw nsw i64 %i.ll, 1                ; 2 uses
  %min.iters.check541 = icmp ult i64 %i.lk, 104
  br i1 %min.iters.check541, label %scalar.ph540.preheader, label %vector.memcheck542

vector.memcheck542:                               ; preds = %bb.at
  %i.ln = sub i64 %.11391.i538, %.3371.i539
  %i.lo = add i64 %i.ln, 7
  %diff.check543 = icmp ult i64 %i.lo, 31
  br i1 %diff.check543, label %scalar.ph540.preheader, label %vector.ph544

vector.ph544:                                     ; preds = %vector.memcheck542
  %n.vec545 = and i64 %i.lm, 4611686018427387900  ; 3 uses
  %i.lp = shl i64 %n.vec545, 3                    ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lf, i64 %i.lp
  %i.lr = getelementptr i8, ptr %.3371.i, i64 %i.lp
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph544
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next552, %vector.body546 ] ; 2 uses
  %i.ls = shl i64 %index547, 3                    ; 2 uses
  %next.gep548 = getelementptr i8, ptr %i.lf, i64 %i.ls ; 2 uses
  %next.gep549 = getelementptr i8, ptr %.3371.i, i64 %i.ls ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %next.gep549, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %next.gep549, i64 24
  %wide.load550 = load <2 x i64>, ptr %i.lt, align 1
  %wide.load551 = load <2 x i64>, ptr %i.lu, align 1
  %i.lv = getelementptr i8, ptr %next.gep548, i64 16
  store <2 x i64> %wide.load550, ptr %next.gep548, align 1
  store <2 x i64> %wide.load551, ptr %i.lv, align 1
  %index.next552 = add nuw i64 %index547, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next552, %n.vec545
  br i1 %i.lw, label %middle.block553, label %vector.body546, !llvm.loop !119

middle.block553:                                  ; preds = %vector.body546
  %cmp.n554 = icmp eq i64 %i.lm, %n.vec545
  br i1 %cmp.n554, label %.preheader140, label %scalar.ph540.preheader

scalar.ph540.preheader:                           ; preds = %vector.memcheck542, %bb.at, %middle.block553
  %.09.i8.ph = phi ptr [ %i.lf, %vector.memcheck542 ], [ %i.lf, %bb.at ], [ %i.lq, %middle.block553 ]
  %.3371.i.pn.ph = phi ptr [ %.3371.i, %vector.memcheck542 ], [ %.3371.i, %bb.at ], [ %i.lr, %middle.block553 ]
  br label %scalar.ph540

scalar.ph540:                                     ; preds = %scalar.ph540.preheader, %scalar.ph540
  %.09.i8 = phi ptr [ %i.ly, %scalar.ph540 ], [ %.09.i8.ph, %scalar.ph540.preheader ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.0.i9, %scalar.ph540 ], [ %.3371.i.pn.ph, %scalar.ph540.preheader ]
  %.0.i9 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.lx = load i64, ptr %.0.i9, align 1
  store i64 %i.lx, ptr %.09.i8, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.lz = icmp ult ptr %i.ly, %i.jd
  br i1 %i.lz, label %scalar.ph540, label %.preheader140, !llvm.loop !120

.preheader140:                                    ; preds = %scalar.ph540, %bb.as, %middle.block553, %bb.d, %.loopexit
  %.3.ph = phi ptr [ %0, %bb.d ], [ %.2, %.loopexit ], [ %.2, %middle.block553 ], [ %.2, %bb.as ], [ %.2, %scalar.ph540 ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.d ], [ %i.jk, %.loopexit ], [ %i.jd, %middle.block553 ], [ %i.jd, %bb.as ], [ %i.jd, %scalar.ph540 ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.mb = load i8, ptr %.3.ph, align 1, !tbaa !14
  %i.mc = zext i8 %i.mb to i32                    ; 3 uses
  %i.md = lshr i32 %i.mc, 4                       ; 2 uses
  %.not439.i218 = icmp eq i32 %i.md, 15
  br i1 %.not439.i218, label %.thread100, label %.lr.ph220

bb.au:                                            ; preds = %.thread124, %.loopexit, %bb.ah
  %.18.i = phi ptr [ %i.g, %.loopexit ], [ %i.hz, %bb.ah ], [ %i.hx, %.thread124 ]
  %i.me = ptrtoint ptr %.18.i to i64
  %i.mf = sub i64 %i.me, %i.m
  %i.mg = trunc i64 %i.mf to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit21, %bb.m, %bb.f, %read_variable_length.exit, %bb.h, %.thread96, %.preheader149.preheader, %.preheader146.preheader, %.preheader149, %.preheader146, %.preheader139, %.preheader137, %.preheader139.preheader, %.preheader137.preheader, %bb.ai, %.thread100, %read_variable_length.exit27, %bb.ae, %.loopexit154, %read_variable_length.exit33
  %.10 = phi ptr [ %.2, %.loopexit154 ], [ %i.it, %.preheader137 ], [ %.20, %read_variable_length.exit33 ], [ %i.aj, %.preheader149 ], [ %.18116, %bb.ae ], [ %i.gj, %read_variable_length.exit27 ], [ %i.bn, %.preheader146 ], [ %.4105, %.thread100 ], [ %i.gj, %.preheader139 ], [ %.8, %bb.ai ], [ %i.ip, %.preheader137.preheader ], [ %i.gf, %.preheader139.preheader ], [ %i.bd, %bb.k ], [ %i.bn, %read_variable_length.exit21 ], [ %.1691, %bb.m ], [ %i.ac, %bb.f ], [ %.1472, %bb.h ], [ %i.aj, %read_variable_length.exit ], [ %i.af, %.preheader149.preheader ], [ %i.bj, %.preheader146.preheader ], [ %.11, %.thread96 ]
  %i.mh = ptrtoint ptr %.10 to i64
  %i.mi = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.mi, %i.mh
  %i.mj = trunc i64 %.neg.i to i32
  %i.mk = add nsw i32 %i.mj, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.au, %LZ4_wildCopy32.exit.thread, %bb.b, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ %i.mk, %LZ4_wildCopy32.exit.thread ], [ -1, %bb.c ], [ %i.mg, %bb.au ], [ 0, %bb.b ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_decompress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %1, %bb.a ], [ %i.by, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.f = load i8, ptr %.0, align 1, !tbaa !14
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 15
  br i1 %i.j, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %.thread, %.preheader34
  %i.k = phi ptr [ %i.n, %.preheader34 ], [ %i.e, %.thread ] ; 2 uses
  %.0.i2 = phi i64 [ %i.o, %.preheader34 ], [ 0, %.thread ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %.0.i2, %i.m                     ; 2 uses
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %.preheader34, label %read_long_length_no_check.exit, !llvm.loop !4

read_long_length_no_check.exit:                   ; preds = %.preheader34
  %i.q = add i64 %i.o, 15
  br label %bb.b

bb.b:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.n, %read_long_length_no_check.exit ], [ %i.e, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.q, %read_long_length_no_check.exit ], [ %i.i, %.thread ] ; 4 uses
  %i.r = ptrtoint ptr %.086.i to i64
  %i.s = sub i64 %i.c, %i.r
  %i.t = icmp ult i64 %i.s, %.085.i
  br i1 %i.t, label %LZ4_decompress_unsafe_generic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.u, %i.b
  br i1 %i.z, label %bb.h, label %LZ4_decompress_unsafe_generic.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.g, 15                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.val = load i16, ptr %i.v, align 1, !tbaa !31  ; 2 uses
  %i.ac = zext i16 %.val to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %i.af = phi ptr [ %i.ai, %.preheader ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i4 = phi i64 [ %i.aj, %.preheader ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14  ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i4, %i.ah                   ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader, label %read_long_length_no_check.exit5, !llvm.loop !4

read_long_length_no_check.exit5:                  ; preds = %.preheader
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %read_long_length_no_check.exit5, %bb.e
  %.4 = phi ptr [ %i.ai, %read_long_length_no_check.exit5 ], [ %i.ad, %bb.e ]
  %.080.i = phi i64 [ %i.al, %read_long_length_no_check.exit5 ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.080.i, 4                      ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i = icmp ult i64 %i.ao, %i.ac
  %or.cond = select i1 %i.an, i1 true, i1 %.not.i
  br i1 %or.cond, label %LZ4_decompress_unsafe_generic.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.080.i, -5
  %i.ar = add i16 %.val, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond66 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond66, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !14
  %wide.load60 = load <16 x i8>, ptr %i.au, align 1, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !14
  store <16 x i8> %wide.load60, ptr %i.aw, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index62
  %wide.load63 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %index62
  store <4 x i8> %wide.load63, ptr %i.az, align 1, !tbaa !14
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.am, %n.vec61
  br i1 %cmp.n65, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %.080.i, 3
  %i.bc = sub i64 %i.bb, %.0.i40.ph
  %xtraiter = and i64 %.080.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i40.prol = phi i64 [ %i.bg, %.lr.ph.prol ], [ %.0.i40.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !14
  %i.bg = add nuw i64 %.0.i40.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !123

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i40.unr = phi i64 [ %.0.i40.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bh = icmp ult i64 %i.bc, 3
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i40 = phi i64 [ %i.bx, %.lr.ph ], [ %.0.i40.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40
end_hunk_1
begin_hunk_2_@LZ4_decompress_safe_forceExtDict:bb.a
  %i.nr = ptrtoint ptr %i.mv to i64
  %i.ns = ptrtoint ptr %i.mt to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = getelementptr inbounds i8, ptr %.3371.i, i64 %i.nt
  br label %bb.bg

bb.bg:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bf
  %.16.i = phi ptr [ %i.mv, %LZ4_wildCopy8.exit ], [ %i.mt, %bb.bf ] ; 7 uses
  %.4372.i = phi ptr [ %i.nu, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.bf ] ; 6 uses
  %i.nv = icmp ult ptr %.16.i, %i.kl
  br i1 %i.nv, label %iter.check652, label %.preheader137

iter.check652:                                    ; preds = %bb.bg
  %i.nw = add i64 %.13.i, %.11391.i594
  %i.nx = add i64 %i.s, %i.e
  %i.ny = add i64 %i.nx, -7
  %i.nz = add i64 %.11391.i594, 8
  %umax634 = tail call i64 @llvm.umax.i64(i64 %i.ny, i64 %i.nz)
  %i.oa = sub i64 %i.nw, %umax634                 ; 7 uses
  %min.iters.check636 = icmp ult i64 %i.oa, 8
  br i1 %min.iters.check636, label %.lr.ph229.preheader, label %vector.memcheck637

vector.memcheck637:                               ; preds = %iter.check652
  %i.ob = sub i64 %.11391.i594, %.3371.i595
  %i.oc = add i64 %i.ob, 7
  %diff.check638 = icmp ult i64 %i.oc, 31
  br i1 %diff.check638, label %.lr.ph229.preheader, label %vector.main.loop.iter.check639

vector.main.loop.iter.check639:                   ; preds = %vector.memcheck637
  %min.iters.check640 = icmp ult i64 %i.oa, 32
  br i1 %min.iters.check640, label %vec.epilog.ph656, label %vector.ph641

vector.ph641:                                     ; preds = %vector.main.loop.iter.check639
  %i.od = and i64 %i.oa, 24
  %n.vec642 = and i64 %i.oa, -32                  ; 5 uses
  %i.oe = getelementptr i8, ptr %.4372.i, i64 %n.vec642
  %i.of = getelementptr i8, ptr %.16.i, i64 %n.vec642
  br label %vector.body643

vector.body643:                                   ; preds = %vector.ph641, %vector.body643
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next649, %vector.body643 ] ; 3 uses
  %next.gep645 = getelementptr i8, ptr %.4372.i, i64 %index644 ; 2 uses
  %next.gep646 = getelementptr i8, ptr %.16.i, i64 %index644 ; 2 uses
  %i.og = getelementptr i8, ptr %next.gep645, i64 16
  %wide.load647 = load <16 x i8>, ptr %next.gep645, align 1, !tbaa !14
  %wide.load648 = load <16 x i8>, ptr %i.og, align 1, !tbaa !14
  %i.oh = getelementptr i8, ptr %next.gep646, i64 16
  store <16 x i8> %wide.load647, ptr %next.gep646, align 1, !tbaa !14
  store <16 x i8> %wide.load648, ptr %i.oh, align 1, !tbaa !14
  %index.next649 = add nuw i64 %index644, 32      ; 2 uses
  %i.oi = icmp eq i64 %index.next649, %n.vec642
  br i1 %i.oi, label %middle.block650, label %vector.body643, !llvm.loop !156

middle.block650:                                  ; preds = %vector.body643
  %cmp.n651 = icmp eq i64 %i.oa, %n.vec642
  br i1 %cmp.n651, label %.preheader137, label %vec.epilog.iter.check653

vec.epilog.iter.check653:                         ; preds = %middle.block650
  %min.epilog.iters.check655 = icmp eq i64 %i.od, 0
  br i1 %min.epilog.iters.check655, label %.lr.ph229.preheader, label %vec.epilog.ph656, !prof !44

vec.epilog.ph656:                                 ; preds = %vector.main.loop.iter.check639, %vec.epilog.iter.check653
  %vec.epilog.resume.val657 = phi i64 [ %n.vec642, %vec.epilog.iter.check653 ], [ 0, %vector.main.loop.iter.check639 ]
  %n.vec658 = and i64 %i.oa, -8                   ; 4 uses
  %i.oj = getelementptr i8, ptr %.4372.i, i64 %n.vec658
  %i.ok = getelementptr i8, ptr %.16.i, i64 %n.vec658
  br label %vec.epilog.vector.body659

vec.epilog.vector.body659:                        ; preds = %vec.epilog.vector.body659, %vec.epilog.ph656
  %index660 = phi i64 [ %vec.epilog.resume.val657, %vec.epilog.ph656 ], [ %index.next664, %vec.epilog.vector.body659 ] ; 3 uses
  %next.gep661 = getelementptr i8, ptr %.4372.i, i64 %index660
  %next.gep662 = getelementptr i8, ptr %.16.i, i64 %index660
  %wide.load663 = load <8 x i8>, ptr %next.gep661, align 1, !tbaa !14
  store <8 x i8> %wide.load663, ptr %next.gep662, align 1, !tbaa !14
  %index.next664 = add nuw i64 %index660, 8       ; 2 uses
  %i.ol = icmp eq i64 %index.next664, %n.vec658
  br i1 %i.ol, label %vec.epilog.middle.block665, label %vec.epilog.vector.body659, !llvm.loop !157

vec.epilog.middle.block665:                       ; preds = %vec.epilog.vector.body659
  %cmp.n666 = icmp eq i64 %i.oa, %n.vec658
  br i1 %cmp.n666, label %.preheader137, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %iter.check652, %vector.memcheck637, %vec.epilog.iter.check653, %vec.epilog.middle.block665
  %.5373.i228.ph = phi ptr [ %.4372.i, %iter.check652 ], [ %.4372.i, %vector.memcheck637 ], [ %i.oe, %vec.epilog.iter.check653 ], [ %i.oj, %vec.epilog.middle.block665 ]
  %.17.i227.ph = phi ptr [ %.16.i, %iter.check652 ], [ %.16.i, %vector.memcheck637 ], [ %i.of, %vec.epilog.iter.check653 ], [ %i.ok, %vec.epilog.middle.block665 ]
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.5373.i228 = phi ptr [ %i.om, %.lr.ph229 ], [ %.5373.i228.ph, %.lr.ph229.preheader ] ; 2 uses
  %.17.i227 = phi ptr [ %i.oo, %.lr.ph229 ], [ %.17.i227.ph, %.lr.ph229.preheader ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.5373.i228, i64 1
  %i.on = load i8, ptr %.5373.i228, align 1, !tbaa !14
  %i.oo = getelementptr inbounds nuw i8, ptr %.17.i227, i64 1 ; 2 uses
  store i8 %i.on, ptr %.17.i227, align 1, !tbaa !14
  %i.op = icmp ult ptr %i.oo, %i.kl
  br i1 %i.op, label %.lr.ph229, label %.preheader137, !llvm.loop !158

bb.bh:                                            ; preds = %bb.bd
  %i.oq = load i64, ptr %.3371.i, align 1
  store i64 %i.oq, ptr %i.mt, align 1
  %i.or = icmp ugt i64 %.13.i, 16
  br i1 %i.or, label %bb.bi, label %.preheader137

bb.bi:                                            ; preds = %bb.bh
  %i.os = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16 ; 4 uses
  %i.ot = add i64 %.13.i, %.11391.i594
  %i.ou = add i64 %.11391.i594, 24
  %i.ov = tail call i64 @llvm.umax.i64(i64 %i.ot, i64 %i.ou)
  %i.ow = add i64 %i.ov, -17
  %i.ox = sub i64 %i.ow, %.11391.i594             ; 2 uses
  %i.oy = lshr i64 %i.ox, 3
  %i.oz = add nuw nsw i64 %i.oy, 1                ; 2 uses
  %min.iters.check597 = icmp ult i64 %i.ox, 104
  br i1 %min.iters.check597, label %scalar.ph596.preheader, label %vector.memcheck598

vector.memcheck598:                               ; preds = %bb.bi
  %i.pa = sub i64 %.11391.i594, %.3371.i595
  %i.pb = add i64 %i.pa, 7
  %diff.check599 = icmp ult i64 %i.pb, 31
  br i1 %diff.check599, label %scalar.ph596.preheader, label %vector.ph600

vector.ph600:                                     ; preds = %vector.memcheck598
  %n.vec601 = and i64 %i.oz, 4611686018427387900  ; 3 uses
  %i.pc = shl i64 %n.vec601, 3                    ; 2 uses
  %i.pd = getelementptr i8, ptr %i.os, i64 %i.pc
  %i.pe = getelementptr i8, ptr %.3371.i, i64 %i.pc
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph600
  %index603 = phi i64 [ 0, %vector.ph600 ], [ %index.next608, %vector.body602 ] ; 2 uses
  %i.pf = shl i64 %index603, 3                    ; 2 uses
  %next.gep604 = getelementptr i8, ptr %i.os, i64 %i.pf ; 2 uses
  %next.gep605 = getelementptr i8, ptr %.3371.i, i64 %i.pf ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %next.gep605, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %next.gep605, i64 24
  %wide.load606 = load <2 x i64>, ptr %i.pg, align 1
  %wide.load607 = load <2 x i64>, ptr %i.ph, align 1
  %i.pi = getelementptr i8, ptr %next.gep604, i64 16
  store <2 x i64> %wide.load606, ptr %next.gep604, align 1
  store <2 x i64> %wide.load607, ptr %i.pi, align 1
  %index.next608 = add nuw i64 %index603, 4       ; 2 uses
  %i.pj = icmp eq i64 %index.next608, %n.vec601
  br i1 %i.pj, label %middle.block609, label %vector.body602, !llvm.loop !159

middle.block609:                                  ; preds = %vector.body602
  %cmp.n610 = icmp eq i64 %i.oz, %n.vec601
  br i1 %cmp.n610, label %.preheader137, label %scalar.ph596.preheader

scalar.ph596.preheader:                           ; preds = %vector.memcheck598, %bb.bi, %middle.block609
  %.09.i7.ph = phi ptr [ %i.os, %vector.memcheck598 ], [ %i.os, %bb.bi ], [ %i.pd, %middle.block609 ]
  %.3371.i.pn.ph = phi ptr [ %.3371.i, %vector.memcheck598 ], [ %.3371.i, %bb.bi ], [ %i.pe, %middle.block609 ]
  br label %scalar.ph596

scalar.ph596:                                     ; preds = %scalar.ph596.preheader, %scalar.ph596
  %.09.i7 = phi ptr [ %i.pl, %scalar.ph596 ], [ %.09.i7.ph, %scalar.ph596.preheader ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.0.i8, %scalar.ph596 ], [ %.3371.i.pn.ph, %scalar.ph596.preheader ]
  %.0.i8 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.pk = load i64, ptr %.0.i8, align 1
  store i64 %i.pk, ptr %.09.i7, align 1
  %i.pl = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.pm = icmp ult ptr %i.pl, %i.kl
  br i1 %i.pm, label %scalar.ph596, label %.preheader137, !llvm.loop !160

.preheader137:                                    ; preds = %scalar.ph596, %.lr.ph229, %.lr.ph232, %bb.bh, %bb.bg, %vec.epilog.middle.block665, %middle.block650, %middle.block609, %bb.ax, %bb.az, %vec.epilog.middle.block702, %middle.block687, %bb.f
  %.3.ph = phi ptr [ %.2, %bb.ax ], [ %0, %bb.f ], [ %.2, %middle.block687 ], [ %.2, %vec.epilog.middle.block702 ], [ %.2, %bb.bh ], [ %.2, %bb.az ], [ %.2, %middle.block609 ], [ %.2, %.lr.ph232 ], [ %.2, %middle.block650 ], [ %.2, %vec.epilog.middle.block665 ], [ %.2, %.lr.ph229 ], [ %.2, %bb.bg ], [ %.2, %scalar.ph596 ] ; 2 uses
  %.6386.i.ph = phi ptr [ %i.kl, %bb.ax ], [ %1, %bb.f ], [ %i.lj, %middle.block687 ], [ %i.lo, %vec.epilog.middle.block702 ], [ %i.kl, %bb.bh ], [ %i.kl, %bb.az ], [ %i.kl, %middle.block609 ], [ %i.ls, %.lr.ph232 ], [ %i.kl, %middle.block650 ], [ %i.kl, %vec.epilog.middle.block665 ], [ %i.kl, %.lr.ph229 ], [ %i.kl, %bb.bg ], [ %i.kl, %scalar.ph596 ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.po = load i8, ptr %.3.ph, align 1, !tbaa !14
  %i.pp = zext i8 %i.po to i32                    ; 3 uses
  %i.pq = lshr i32 %i.pp, 4                       ; 2 uses
  %.not439.i221 = icmp eq i32 %i.pq, 15
  br i1 %.not439.i221, label %.thread99, label %.lr.ph223

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit20, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %bb.u, %.thread95, %.preheader148.preheader, %.preheader145.preheader, %.preheader148, %.preheader145, %.preheader136, %.preheader134, %.preheader136.preheader, %.preheader134.preheader, %bb.aq, %.thread99, %read_variable_length.exit26, %bb.am, %bb.be, %bb.av, %.loopexit153, %read_variable_length.exit32, %bb.ao
  %.9 = phi ptr [ %.6, %bb.ao ], [ %.2, %.loopexit153 ], [ %.4104, %.thread99 ], [ %.2, %bb.av ], [ %.19, %read_variable_length.exit32 ], [ %i.ar, %.preheader148 ], [ %.17115, %bb.am ], [ %.2, %bb.be ], [ %i.jz, %.preheader134 ], [ %i.hx, %read_variable_length.exit26 ], [ %.7, %bb.aq ], [ %i.hx, %.preheader136 ], [ %i.bv, %.preheader145 ], [ %i.jv, %.preheader134.preheader ], [ %i.ht, %.preheader136.preheader ], [ %i.bl, %bb.m ], [ %i.bv, %read_variable_length.exit20 ], [ %.1590, %bb.o ], [ %i.ak, %bb.h ], [ %.1371, %bb.j ], [ %i.ar, %read_variable_length.exit ], [ %.10, %.thread95 ], [ %i.an, %.preheader148.preheader ], [ %i.br, %.preheader145.preheader ], [ %.10, %bb.u ]
  %i.pr = ptrtoint ptr %.9 to i64
  %i.ps = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.ps, %i.pr
  %i.pt = trunc i64 %.neg.i to i32
  %i.pu = add nsw i32 %i.pt, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ap, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.jh, %bb.ap ], [ %i.q, %bb.d ], [ -1, %bb.e ], [ %i.pu, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %i.a, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 11 uses
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 11 uses
  %i.h = icmp eq ptr %5, null
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %6
  %i.j = select i1 %i.h, ptr null, ptr %i.i       ; 4 uses
  %i.k = icmp ult i64 %6, 65536                   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.n = icmp eq i32 %i.a, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %2, 0
  br i1 %i.o, label %LZ4_decompress_generic.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.q = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.r = icmp samesign ult i32 %i.a, 64
  br i1 %i.r, label %.preheader144, label %.preheader156

.preheader156:                                    ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %0, align 1, !tbaa !14
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp slt i32 %2, 18
  br i1 %i.y, label %.loopexit145, label %.lr.ph222

.lr.ph222:                                        ; preds = %.preheader156
  %i.z = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.ab = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.ae = add i64 %i.q, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph222, %.backedge
  %i.af = phi i64 [ %i.x, %.lr.ph222 ], [ %i.cr, %.backedge ] ; 2 uses
  %i.ag = phi i32 [ %i.w, %.lr.ph222 ], [ %i.cq, %.backedge ]
  %i.ah = phi i32 [ %i.v, %.lr.ph222 ], [ %i.cp, %.backedge ] ; 2 uses
  %i.ai = phi ptr [ %i.t, %.lr.ph222 ], [ %i.cn, %.backedge ] ; 5 uses
  %.0380.i221 = phi ptr [ %1, %.lr.ph222 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0220 = phi ptr [ %0, %.lr.ph222 ], [ %.0.be, %.backedge ]
  %i.aj = icmp eq i32 %i.ag, 15
  br i1 %i.aj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not.i17 = icmp ult ptr %i.ai, %i.z
  br i1 %.not.i17, label %bb.g, label %LZ4_wildCopy32.exit.thread, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !14  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0220, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ak, -1
  br i1 %.not21.i, label %.preheader154.preheader, label %read_variable_length.exit.thread72, !prof !26

.preheader154.preheader:                          ; preds = %bb.g
  %.not22.i501 = icmp ult ptr %i.al, %i.z
  br i1 %.not22.i501, label %.lr.ph504, label %LZ4_wildCopy32.exit.thread, !prof !36

read_variable_length.exit.thread72:               ; preds = %bb.g
  %i.am = zext i8 %i.ak to i64
  br label %bb.h

.preheader154:                                    ; preds = %.lr.ph504
  %.not22.i = icmp ult ptr %i.ap, %i.z
  br i1 %.not22.i, label %.lr.ph504, label %LZ4_wildCopy32.exit.thread, !prof !37, !llvm.loop !2

.lr.ph504:                                        ; preds = %.preheader154.preheader, %.preheader154
  %.0.i18503 = phi i64 [ %i.aq, %.preheader154 ], [ 255, %.preheader154.preheader ]
  %.13502 = phi ptr [ %i.ap, %.preheader154 ], [ %i.al, %.preheader154.preheader ] ; 2 uses
  %i.an = load i8, ptr %.13502, align 1, !tbaa !14 ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.13502, i64 1 ; 5 uses
  %i.aq = add i64 %.0.i18503, %i.ao               ; 3 uses
  %i.ar = icmp eq i8 %i.an, -1
  br i1 %i.ar, label %.preheader154, label %read_variable_length.exit, !llvm.loop !2

read_variable_length.exit:                        ; preds = %.lr.ph504
  %i.as = icmp eq i64 %i.aq, -1
  br i1 %i.as, label %LZ4_wildCopy32.exit.thread, label %bb.h

bb.h:                                             ; preds = %read_variable_length.exit.thread72, %read_variable_length.exit
  %.016.i76 = phi i64 [ %i.am, %read_variable_length.exit.thread72 ], [ %i.aq, %read_variable_length.exit ]
  %.1475 = phi ptr [ %i.al, %read_variable_length.exit.thread72 ], [ %i.ap, %read_variable_length.exit ] ; 5 uses
  %i.at = add i64 %.016.i76, 15                   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0380.i221, i64 %i.at ; 4 uses
  %i.av = ptrtoint ptr %.1475 to i64
  %i.aw = xor i64 %i.av, -1
  %i.ax = icmp ugt i64 %i.at, %i.aw
  br i1 %i.ax, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !26

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp ugt ptr %i.au, %i.m
  %i.az = getelementptr inbounds nuw i8, ptr %.1475, i64 %i.at ; 2 uses
  %i.ba = icmp ugt ptr %i.az, %i.aa
  %or.cond450.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader153

.preheader153:                                    ; preds = %bb.i, %.preheader153
  %.011.i = phi ptr [ %i.bd, %.preheader153 ], [ %.0380.i221, %bb.i ] ; 3 uses
  %.0.i37 = phi ptr [ %i.be, %.preheader153 ], [ %.1475, %bb.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i37, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i37, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %i.bc, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i37, i64 32
  %i.bf = icmp ult ptr %i.bd, %i.au
  br i1 %i.bf, label %.preheader153, label %LZ4_wildCopy32.exit.thread82, !llvm.loop !3

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i221, ptr noundef nonnull align 1 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.bh = getelementptr inbounds nuw i8, ptr %.0380.i221, i64 %i.af
  br label %LZ4_wildCopy32.exit.thread82

LZ4_wildCopy32.exit.thread82:                     ; preds = %.preheader153, %bb.j
  %.1 = phi ptr [ %i.bg, %bb.j ], [ %i.az, %.preheader153 ] ; 3 uses
  %.2382.i = phi ptr [ %i.bh, %bb.j ], [ %i.au, %.preheader153 ] ; 30 uses
  %.2382.i522 = ptrtoaddr ptr %.2382.i to i64     ; 8 uses
  %.val44 = load i16, ptr %.1, align 1, !tbaa !31 ; 6 uses
  %i.bi = zext i16 %.val44 to i64                 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.bk = sub nsw i64 0, %i.bi
  %i.bl = getelementptr inbounds i8, ptr %.2382.i, i64 %i.bk ; 18 uses
  %i.bm = and i32 %i.ah, 15                       ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 15
  br i1 %i.bn, label %bb.k, label %bb.o

bb.k:                                             ; preds = %LZ4_wildCopy32.exit.thread82
  %.not.i19 = icmp ult ptr %i.bj, %i.ac
  br i1 %.not.i19, label %bb.l, label %LZ4_wildCopy32.exit.thread, !prof !32

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !14  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %.not21.i21 = icmp eq i8 %i.bo, -1
  br i1 %.not21.i21, label %.preheader151.preheader, label %read_variable_length.exit24.thread91, !prof !26

.preheader151.preheader:                          ; preds = %bb.l
  %.not22.i23506 = icmp ult ptr %i.bp, %i.ac
  br i1 %.not22.i23506, label %.lr.ph509, label %LZ4_wildCopy32.exit.thread, !prof !36

read_variable_length.exit24.thread91:             ; preds = %bb.l
  %i.bq = zext i8 %i.bo to i64
  br label %bb.m

.preheader151:                                    ; preds = %.lr.ph509
  %.not22.i23 = icmp ult ptr %i.bt, %i.ac
  br i1 %.not22.i23, label %.lr.ph509, label %LZ4_wildCopy32.exit.thread, !prof !37, !llvm.loop !2

.lr.ph509:                                        ; preds = %.preheader151.preheader, %.preheader151
  %.0.i22508 = phi i64 [ %i.bu, %.preheader151 ], [ 255, %.preheader151.preheader ]
  %.15507 = phi ptr [ %i.bt, %.preheader151 ], [ %i.bp, %.preheader151.preheader ] ; 2 uses
  %i.br = load i8, ptr %.15507, align 1, !tbaa !14 ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.15507, i64 1 ; 5 uses
  %i.bu = add i64 %.0.i22508, %i.bs               ; 3 uses
  %i.bv = icmp eq i8 %i.br, -1
  br i1 %i.bv, label %.preheader151, label %read_variable_length.exit24, !llvm.loop !2

read_variable_length.exit24:                      ; preds = %.lr.ph509
  %i.bw = icmp eq i64 %i.bu, -1
  br i1 %i.bw, label %LZ4_wildCopy32.exit.thread, label %bb.m

bb.m:                                             ; preds = %read_variable_length.exit24.thread91, %read_variable_length.exit24
  %.016.i2095 = phi i64 [ %i.bq, %read_variable_length.exit24.thread91 ], [ %i.bu, %read_variable_length.exit24 ]
  %.1694 = phi ptr [ %i.bp, %read_variable_length.exit24.thread91 ], [ %i.bt, %read_variable_length.exit24 ] ; 3 uses
  %i.bx = add i64 %.016.i2095, 19                 ; 4 uses
  %i.by = ptrtoint ptr %.2382.i to i64
  %i.bz = xor i64 %i.by, -1
  %i.ca = icmp ugt i64 %i.bx, %i.bz
  br i1 %i.ca, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.bx
  %.not436.i = icmp ult ptr %i.cb, %i.ab
  br i1 %.not436.i, label %.thread99, label %.loopexit159

bb.o:                                             ; preds = %LZ4_wildCopy32.exit.thread82
  %narrow.i = add nuw nsw i32 %i.bm, 4
  %i.cc = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.cc ; 2 uses
  %.not.i = icmp ult ptr %i.cd, %i.ab
  br i1 %.not.i, label %bb.p, label %.loopexit159

bb.p:                                             ; preds = %bb.o
  %i.ce = icmp uge ptr %i.bl, %1
  %i.cf = icmp ugt i16 %.val44, 7
  %or.cond5.i = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond5.i, label %bb.q, label %.thread99

bb.q:                                             ; preds = %bb.p
  %i.cg = load i64, ptr %i.bl, align 1
  store i64 %i.cg, ptr %.2382.i, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
end_hunk_2
begin_hunk_3_@LZ4_decompress_safe_partial_forceExtDict:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.kg = load i8, ptr %.8, align 1, !tbaa !14    ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 4 uses
  %.not21.i33 = icmp eq i8 %i.kg, -1
  br i1 %.not21.i33, label %.preheader141.preheader, label %bb.ar, !prof !26

.preheader141.preheader:                          ; preds = %bb.aq
  %.not22.i35517 = icmp ult ptr %i.kh, %i.kf
  br i1 %.not22.i35517, label %.lr.ph520, label %LZ4_wildCopy32.exit.thread, !prof !36

bb.ar:                                            ; preds = %bb.aq
  %i.ki = zext i8 %i.kg to i64
  br label %read_variable_length.exit36

.preheader141:                                    ; preds = %.lr.ph520
  %.not22.i35 = icmp ult ptr %i.kl, %i.kf
  br i1 %.not22.i35, label %.lr.ph520, label %LZ4_wildCopy32.exit.thread, !prof !37, !llvm.loop !2

.lr.ph520:                                        ; preds = %.preheader141.preheader, %.preheader141
  %.0.i34519 = phi i64 [ %i.km, %.preheader141 ], [ 255, %.preheader141.preheader ]
  %.19518 = phi ptr [ %i.kl, %.preheader141 ], [ %i.kh, %.preheader141.preheader ] ; 2 uses
  %i.kj = load i8, ptr %.19518, align 1, !tbaa !14 ; 2 uses
  %i.kk = zext i8 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.19518, i64 1 ; 4 uses
  %i.km = add i64 %.0.i34519, %i.kk               ; 2 uses
  %i.kn = icmp eq i8 %i.kj, -1
  br i1 %i.kn, label %.preheader141, label %read_variable_length.exit36, !llvm.loop !2

read_variable_length.exit36:                      ; preds = %.lr.ph520, %bb.ar
  %.20 = phi ptr [ %i.kh, %bb.ar ], [ %i.kl, %.lr.ph520 ] ; 2 uses
  %.016.i32 = phi i64 [ %i.ki, %bb.ar ], [ %i.km, %.lr.ph520 ] ; 2 uses
  %i.ko = icmp ne i64 %.016.i32, -1               ; 2 uses
  %i.kp = add i64 %.016.i32, 15                   ; 2 uses
  %i.kq = ptrtoint ptr %.10390.i to i64
  %i.kr = xor i64 %i.kq, -1
  %i.ks = icmp ule i64 %i.kp, %i.kr
  %.11.i = select i1 %i.ko, i64 %i.kp, i64 15
  %.not139 = select i1 %i.ko, i1 %i.ks, i1 false
  br i1 %.not139, label %bb.as, label %LZ4_wildCopy32.exit.thread

bb.as:                                            ; preds = %read_variable_length.exit36, %.loopexit146
  %.9 = phi ptr [ %.20, %read_variable_length.exit36 ], [ %.8, %.loopexit146 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit36 ], [ %.10.i, %.loopexit146 ]
  %i.kt = add i64 %.12.i, 4
  br label %.loopexit159

.loopexit159:                                     ; preds = %bb.n, %bb.o, %bb.as
  %.2 = phi ptr [ %.9, %bb.as ], [ %.1694, %bb.n ], [ %i.bj, %bb.o ] ; 10 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.as ], [ %.2382.i, %bb.o ], [ %.2382.i, %bb.n ] ; 27 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.as ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ] ; 18 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.as ], [ %i.bi, %bb.o ], [ %i.bi, %bb.n ] ; 3 uses
  %.13.i = phi i64 [ %i.kt, %bb.as ], [ %i.bx, %bb.n ], [ %i.cc, %bb.o ] ; 6 uses
  %.1369.i618 = ptrtoaddr ptr %.1369.i to i64     ; 3 uses
  %.11391.i596 = ptrtoaddr ptr %.11391.i to i64   ; 11 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %6
  %i.kv = icmp ult ptr %i.ku, %1
  %or.cond463.i = select i1 %i.k, i1 %i.kv, i1 false, !prof !42
  br i1 %or.cond463.i, label %LZ4_wildCopy32.exit.thread, label %bb.at, !prof !42

bb.at:                                            ; preds = %.loopexit159
  %i.kw = icmp ult ptr %.1369.i, %1
  %i.kx = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 6 uses
  br i1 %i.kw, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.ky = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.kz = icmp ugt ptr %i.kx, %i.ky
  br i1 %i.kz, label %bb.av, label %bb.aw, !prof !26

bb.av:                                            ; preds = %bb.au
  %i.la = ptrtoint ptr %.11391.i to i64
  %i.lb = sub i64 %i.p, %i.la
  %i.lc = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.lb)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.14.i = phi i64 [ %i.lc, %bb.av ], [ %.13.i, %bb.au ] ; 7 uses
  %i.ld = ptrtoint ptr %.1369.i to i64
  %i.le = sub i64 %i.q, %i.ld                     ; 6 uses
  %.not446.i = icmp ugt i64 %.14.i, %i.le
  br i1 %.not446.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lf = sub i64 0, %i.le
  %i.lg = getelementptr inbounds i8, ptr %i.j, i64 %i.lf
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.lg, i64 %.14.i, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  br label %.preheader144

bb.ay:                                            ; preds = %bb.aw
  %i.li = sub nuw i64 %.14.i, %i.le               ; 2 uses
  %i.lj = sub i64 0, %i.le
  %i.lk = getelementptr inbounds i8, ptr %i.j, i64 %i.lj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.lk, i64 %i.le, i1 false)
  %i.ll = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.le ; 7 uses
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = sub i64 %i.lm, %i.q                     ; 2 uses
  %i.lo = icmp ugt i64 %i.li, %i.ln
  br i1 %i.lo, label %iter.check674, label %bb.az

iter.check674:                                    ; preds = %bb.ay
  %i.lp = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  %i.lq = add i64 %.11391.i596, %i.q
  %i.lr = add i64 %i.lq, 1
  %i.ls = sub i64 %i.lr, %.1369.i618
  %i.lt = add i64 %.14.i, %.11391.i596
  %umax656 = tail call i64 @llvm.umax.i64(i64 %i.ls, i64 %i.lt)
  %i.lu = add i64 %umax656, %.1369.i618
  %i.lv = add i64 %.11391.i596, %i.q
  %i.lw = sub i64 %i.lu, %i.lv                    ; 7 uses
  %min.iters.check658 = icmp ult i64 %i.lw, 8
  %i.lx = add i64 %i.ln, -1
  %diff.check660 = icmp ult i64 %i.lx, 31
  %or.cond693 = or i1 %min.iters.check658, %diff.check660
  br i1 %or.cond693, label %.lr.ph238.preheader, label %vector.main.loop.iter.check661

vector.main.loop.iter.check661:                   ; preds = %iter.check674
  %min.iters.check662 = icmp ult i64 %i.lw, 32
  br i1 %min.iters.check662, label %vec.epilog.ph678, label %vector.ph663

vector.ph663:                                     ; preds = %vector.main.loop.iter.check661
  %i.ly = and i64 %i.lw, 24
  %n.vec664 = and i64 %i.lw, -32                  ; 5 uses
  %i.lz = getelementptr i8, ptr %1, i64 %n.vec664
  %i.ma = getelementptr i8, ptr %i.ll, i64 %n.vec664 ; 2 uses
  br label %vector.body665

vector.body665:                                   ; preds = %vector.ph663, %vector.body665
  %index666 = phi i64 [ 0, %vector.ph663 ], [ %index.next671, %vector.body665 ] ; 3 uses
  %next.gep667 = getelementptr i8, ptr %1, i64 %index666 ; 2 uses
  %next.gep668 = getelementptr i8, ptr %i.ll, i64 %index666 ; 2 uses
  %i.mb = getelementptr i8, ptr %next.gep667, i64 16
  %wide.load669 = load <16 x i8>, ptr %next.gep667, align 1, !tbaa !14
  %wide.load670 = load <16 x i8>, ptr %i.mb, align 1, !tbaa !14
  %i.mc = getelementptr i8, ptr %next.gep668, i64 16
  store <16 x i8> %wide.load669, ptr %next.gep668, align 1, !tbaa !14
  store <16 x i8> %wide.load670, ptr %i.mc, align 1, !tbaa !14
  %index.next671 = add nuw i64 %index666, 32      ; 2 uses
  %i.md = icmp eq i64 %index.next671, %n.vec664
  br i1 %i.md, label %middle.block672, label %vector.body665, !llvm.loop !170

middle.block672:                                  ; preds = %vector.body665
  %cmp.n673 = icmp eq i64 %i.lw, %n.vec664
  br i1 %cmp.n673, label %.preheader144, label %vec.epilog.iter.check675

vec.epilog.iter.check675:                         ; preds = %middle.block672
  %min.epilog.iters.check677 = icmp eq i64 %i.ly, 0
  br i1 %min.epilog.iters.check677, label %.lr.ph238.preheader, label %vec.epilog.ph678, !prof !44

vec.epilog.ph678:                                 ; preds = %vector.main.loop.iter.check661, %vec.epilog.iter.check675
  %vec.epilog.resume.val679 = phi i64 [ %n.vec664, %vec.epilog.iter.check675 ], [ 0, %vector.main.loop.iter.check661 ]
  %n.vec680 = and i64 %i.lw, -8                   ; 4 uses
  %i.me = getelementptr i8, ptr %1, i64 %n.vec680
  %i.mf = getelementptr i8, ptr %i.ll, i64 %n.vec680 ; 2 uses
  br label %vec.epilog.vector.body681

vec.epilog.vector.body681:                        ; preds = %vec.epilog.vector.body681, %vec.epilog.ph678
  %index682 = phi i64 [ %vec.epilog.resume.val679, %vec.epilog.ph678 ], [ %index.next686, %vec.epilog.vector.body681 ] ; 3 uses
  %next.gep683 = getelementptr i8, ptr %1, i64 %index682
  %next.gep684 = getelementptr i8, ptr %i.ll, i64 %index682
  %wide.load685 = load <8 x i8>, ptr %next.gep683, align 1, !tbaa !14
  store <8 x i8> %wide.load685, ptr %next.gep684, align 1, !tbaa !14
  %index.next686 = add nuw i64 %index682, 8       ; 2 uses
  %i.mg = icmp eq i64 %index.next686, %n.vec680
  br i1 %i.mg, label %vec.epilog.middle.block687, label %vec.epilog.vector.body681, !llvm.loop !171

vec.epilog.middle.block687:                       ; preds = %vec.epilog.vector.body681
  %cmp.n688 = icmp eq i64 %i.lw, %n.vec680
  br i1 %cmp.n688, label %.preheader144, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %iter.check674, %vec.epilog.iter.check675, %vec.epilog.middle.block687
  %.0.i237.ph = phi ptr [ %1, %iter.check674 ], [ %i.lz, %vec.epilog.iter.check675 ], [ %i.me, %vec.epilog.middle.block687 ]
  %.12392.i236.ph = phi ptr [ %i.ll, %iter.check674 ], [ %i.ma, %vec.epilog.iter.check675 ], [ %i.mf, %vec.epilog.middle.block687 ]
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %.lr.ph238
  %.0.i237 = phi ptr [ %i.mh, %.lr.ph238 ], [ %.0.i237.ph, %.lr.ph238.preheader ] ; 2 uses
  %.12392.i236 = phi ptr [ %i.mj, %.lr.ph238 ], [ %.12392.i236.ph, %.lr.ph238.preheader ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i237, i64 1
  %i.mi = load i8, ptr %.0.i237, align 1, !tbaa !14
  %i.mj = getelementptr inbounds nuw i8, ptr %.12392.i236, i64 1 ; 3 uses
  store i8 %i.mi, ptr %.12392.i236, align 1, !tbaa !14
  %i.mk = icmp ult ptr %i.mj, %i.lp
  br i1 %i.mk, label %.lr.ph238, label %.preheader144, !llvm.loop !172

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ll, ptr nonnull align 1 %1, i64 %i.li, i1 false)
  %i.ml = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  br label %.preheader144

bb.ba:                                            ; preds = %bb.at
  %i.mm = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.mn = icmp ugt ptr %i.kx, %i.mm
  br i1 %i.mn, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.mo = ptrtoint ptr %.11391.i to i64
  %i.mp = sub i64 %i.p, %i.mo
  %i.mq = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.mp) ; 5 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.mq ; 3 uses
  %i.mt = icmp ugt ptr %i.mr, %.11391.i
  br i1 %i.mt, label %.preheader, label %bb.bc

.preheader:                                       ; preds = %bb.bb
  %.not = icmp eq i64 %i.mq, 0
  br i1 %.not, label %.loopexit140, label %iter.check637

iter.check637:                                    ; preds = %.preheader
  %i.mu = add i64 %i.mq, %.11391.i596
  %i.mv = add i64 %.11391.i596, 1
  %umax619 = tail call i64 @llvm.umax.i64(i64 %i.mu, i64 %i.mv)
  %i.mw = sub i64 %umax619, %.11391.i596          ; 7 uses
  %min.iters.check621 = icmp ult i64 %i.mw, 8
  %i.mx = sub i64 %.1369.i618, %.11391.i596
  %diff.check623 = icmp ugt i64 %i.mx, -32
  %or.cond694 = select i1 %min.iters.check621, i1 true, i1 %diff.check623
  br i1 %or.cond694, label %.lr.ph235.preheader, label %vector.main.loop.iter.check624

vector.main.loop.iter.check624:                   ; preds = %iter.check637
  %min.iters.check625 = icmp ult i64 %i.mw, 32
  br i1 %min.iters.check625, label %vec.epilog.ph641, label %vector.ph626

vector.ph626:                                     ; preds = %vector.main.loop.iter.check624
  %i.my = and i64 %i.mw, 24
  %n.vec627 = and i64 %i.mw, -32                  ; 5 uses
  %i.mz = getelementptr i8, ptr %.1369.i, i64 %n.vec627
  %i.na = getelementptr i8, ptr %.11391.i, i64 %n.vec627
  br label %vector.body628

vector.body628:                                   ; preds = %vector.ph626, %vector.body628
  %index629 = phi i64 [ 0, %vector.ph626 ], [ %index.next634, %vector.body628 ] ; 3 uses
  %next.gep630 = getelementptr i8, ptr %.1369.i, i64 %index629 ; 2 uses
  %next.gep631 = getelementptr i8, ptr %.11391.i, i64 %index629 ; 2 uses
  %i.nb = getelementptr i8, ptr %next.gep630, i64 16
  %wide.load632 = load <16 x i8>, ptr %next.gep630, align 1, !tbaa !14
  %wide.load633 = load <16 x i8>, ptr %i.nb, align 1, !tbaa !14
  %i.nc = getelementptr i8, ptr %next.gep631, i64 16
  store <16 x i8> %wide.load632, ptr %next.gep631, align 1, !tbaa !14
  store <16 x i8> %wide.load633, ptr %i.nc, align 1, !tbaa !14
  %index.next634 = add nuw i64 %index629, 32      ; 2 uses
  %i.nd = icmp eq i64 %index.next634, %n.vec627
  br i1 %i.nd, label %middle.block635, label %vector.body628, !llvm.loop !173

middle.block635:                                  ; preds = %vector.body628
  %cmp.n636 = icmp eq i64 %i.mw, %n.vec627
  br i1 %cmp.n636, label %.loopexit140, label %vec.epilog.iter.check638

vec.epilog.iter.check638:                         ; preds = %middle.block635
  %min.epilog.iters.check640 = icmp eq i64 %i.my, 0
  br i1 %min.epilog.iters.check640, label %.lr.ph235.preheader, label %vec.epilog.ph641, !prof !44

vec.epilog.ph641:                                 ; preds = %vector.main.loop.iter.check624, %vec.epilog.iter.check638
  %vec.epilog.resume.val642 = phi i64 [ %n.vec627, %vec.epilog.iter.check638 ], [ 0, %vector.main.loop.iter.check624 ]
  %n.vec643 = and i64 %i.mw, -8                   ; 4 uses
  %i.ne = getelementptr i8, ptr %.1369.i, i64 %n.vec643
  %i.nf = getelementptr i8, ptr %.11391.i, i64 %n.vec643
  br label %vec.epilog.vector.body644

vec.epilog.vector.body644:                        ; preds = %vec.epilog.vector.body644, %vec.epilog.ph641
  %index645 = phi i64 [ %vec.epilog.resume.val642, %vec.epilog.ph641 ], [ %index.next649, %vec.epilog.vector.body644 ] ; 3 uses
  %next.gep646 = getelementptr i8, ptr %.1369.i, i64 %index645
  %next.gep647 = getelementptr i8, ptr %.11391.i, i64 %index645
  %wide.load648 = load <8 x i8>, ptr %next.gep646, align 1, !tbaa !14
  store <8 x i8> %wide.load648, ptr %next.gep647, align 1, !tbaa !14
  %index.next649 = add nuw i64 %index645, 8       ; 2 uses
  %i.ng = icmp eq i64 %index.next649, %n.vec643
  br i1 %i.ng, label %vec.epilog.middle.block650, label %vec.epilog.vector.body644, !llvm.loop !174

vec.epilog.middle.block650:                       ; preds = %vec.epilog.vector.body644
  %cmp.n651 = icmp eq i64 %i.mw, %n.vec643
  br i1 %cmp.n651, label %.loopexit140, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check637, %vec.epilog.iter.check638, %vec.epilog.middle.block650
  %.2370.i234.ph = phi ptr [ %.1369.i, %iter.check637 ], [ %i.mz, %vec.epilog.iter.check638 ], [ %i.ne, %vec.epilog.middle.block650 ]
  %.15.i233.ph = phi ptr [ %.11391.i, %iter.check637 ], [ %i.na, %vec.epilog.iter.check638 ], [ %i.nf, %vec.epilog.middle.block650 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %.2370.i234 = phi ptr [ %i.nh, %.lr.ph235 ], [ %.2370.i234.ph, %.lr.ph235.preheader ] ; 2 uses
  %.15.i233 = phi ptr [ %i.nj, %.lr.ph235 ], [ %.15.i233.ph, %.lr.ph235.preheader ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.2370.i234, i64 1
  %i.ni = load i8, ptr %.2370.i234, align 1, !tbaa !14
  %i.nj = getelementptr inbounds nuw i8, ptr %.15.i233, i64 1 ; 2 uses
  store i8 %i.ni, ptr %.15.i233, align 1, !tbaa !14
  %i.nk = icmp ult ptr %i.nj, %i.ms
  br i1 %i.nk, label %.lr.ph235, label %.loopexit140, !llvm.loop !175

bb.bc:                                            ; preds = %bb.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %.1369.i, i64 %i.mq, i1 false)
  br label %.loopexit140

.loopexit140:                                     ; preds = %.lr.ph235, %middle.block635, %vec.epilog.middle.block650, %.preheader, %bb.bc
  %i.nl = icmp eq ptr %i.ms, %i.g
  br i1 %i.nl, label %bb.bi, label %.preheader144

bb.bd:                                            ; preds = %bb.ba
  %i.nm = icmp ult i64 %.1367.i, 8
  br i1 %i.nm, label %bb.be, label %bb.bf, !prof !26

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %.11391.i, align 1, !tbaa !23
  %i.nn = load i8, ptr %.1369.i, align 1, !tbaa !14
  store i8 %i.nn, ptr %.11391.i, align 1, !tbaa !14
  %i.no = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.np = load i8, ptr %i.no, align 1, !tbaa !14
  %i.nq = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !14
  %i.nr = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !14
  %i.nt = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !14
  %i.nu = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !14
  %i.nw = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !14
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !38
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.nz ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.oc = load i32, ptr %i.oa, align 1
  store i32 %i.oc, ptr %i.ob, align 1
  %i.od = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !38
  %i.of = sext i32 %i.oe to i64
  %i.og = sub nsw i64 0, %i.of
  %i.oh = getelementptr inbounds i8, ptr %i.oa, i64 %i.og
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.oi = load i64, ptr %.1369.i, align 1
  store i64 %i.oi, ptr %.11391.i, align 1
  %i.oj = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.3371.i = phi ptr [ %i.oh, %bb.be ], [ %i.oj, %bb.bf ] ; 6 uses
  %.3371.i597 = ptrtoaddr ptr %.3371.i to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8
  %i.ol = load i64, ptr %.3371.i, align 1
  store i64 %i.ol, ptr %i.ok, align 1
  %i.om = icmp ugt i64 %.13.i, 16
  br i1 %i.om, label %bb.bh, label %.preheader144

bb.bh:                                            ; preds = %bb.bg
  %i.on = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16 ; 4 uses
  %i.oo = add i64 %.13.i, %.11391.i596
  %i.op = add i64 %.11391.i596, 24
  %i.oq = tail call i64 @llvm.umax.i64(i64 %i.oo, i64 %i.op)
  %i.or = add i64 %i.oq, -17
  %i.os = sub i64 %i.or, %.11391.i596             ; 2 uses
  %i.ot = lshr i64 %i.os, 3
  %i.ou = add nuw nsw i64 %i.ot, 1                ; 2 uses
  %min.iters.check599 = icmp ult i64 %i.os, 104
  br i1 %min.iters.check599, label %scalar.ph598.preheader, label %vector.memcheck600

vector.memcheck600:                               ; preds = %bb.bh
  %i.ov = sub i64 %.11391.i596, %.3371.i597
  %i.ow = add i64 %i.ov, 7
  %diff.check601 = icmp ult i64 %i.ow, 31
  br i1 %diff.check601, label %scalar.ph598.preheader, label %vector.ph602

vector.ph602:                                     ; preds = %vector.memcheck600
  %n.vec603 = and i64 %i.ou, 4611686018427387900  ; 3 uses
  %i.ox = shl i64 %n.vec603, 3                    ; 2 uses
  %i.oy = getelementptr i8, ptr %i.on, i64 %i.ox
  %i.oz = getelementptr i8, ptr %.3371.i, i64 %i.ox
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next610, %vector.body604 ] ; 2 uses
  %i.pa = shl i64 %index605, 3                    ; 2 uses
  %next.gep606 = getelementptr i8, ptr %i.on, i64 %i.pa ; 2 uses
  %next.gep607 = getelementptr i8, ptr %.3371.i, i64 %i.pa ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %next.gep607, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %next.gep607, i64 24
  %wide.load608 = load <2 x i64>, ptr %i.pb, align 1
  %wide.load609 = load <2 x i64>, ptr %i.pc, align 1
  %i.pd = getelementptr i8, ptr %next.gep606, i64 16
  store <2 x i64> %wide.load608, ptr %next.gep606, align 1
  store <2 x i64> %wide.load609, ptr %i.pd, align 1
  %index.next610 = add nuw i64 %index605, 4       ; 2 uses
  %i.pe = icmp eq i64 %index.next610, %n.vec603
  br i1 %i.pe, label %middle.block611, label %vector.body604, !llvm.loop !176

middle.block611:                                  ; preds = %vector.body604
  %cmp.n612 = icmp eq i64 %i.ou, %n.vec603
  br i1 %cmp.n612, label %.preheader144, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck600, %bb.bh, %middle.block611
  %.09.i11.ph = phi ptr [ %i.on, %vector.memcheck600 ], [ %i.on, %bb.bh ], [ %i.oy, %middle.block611 ]
  %.3371.i.pn.ph = phi ptr [ %.3371.i, %vector.memcheck600 ], [ %.3371.i, %bb.bh ], [ %i.oz, %middle.block611 ]
  br label %scalar.ph598

scalar.ph598:                                     ; preds = %scalar.ph598.preheader, %scalar.ph598
  %.09.i11 = phi ptr [ %i.pg, %scalar.ph598 ], [ %.09.i11.ph, %scalar.ph598.preheader ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.0.i12, %scalar.ph598 ], [ %.3371.i.pn.ph, %scalar.ph598.preheader ]
  %.0.i12 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.pf = load i64, ptr %.0.i12, align 1
  store i64 %i.pf, ptr %.09.i11, align 1
  %i.pg = getelementptr inbounds nuw i8, ptr %.09.i11, i64 8 ; 2 uses
  %i.ph = icmp ult ptr %i.pg, %i.kx
  br i1 %i.ph, label %scalar.ph598, label %.preheader144, !llvm.loop !177

.preheader144:                                    ; preds = %scalar.ph598, %.lr.ph238, %bb.bg, %middle.block611, %bb.ax, %bb.az, %vec.epilog.middle.block687, %middle.block672, %bb.d, %.loopexit140
  %.3.ph = phi ptr [ %.2, %bb.ax ], [ %.2, %.loopexit140 ], [ %0, %bb.d ], [ %.2, %middle.block672 ], [ %.2, %vec.epilog.middle.block687 ], [ %.2, %bb.bg ], [ %.2, %bb.az ], [ %.2, %middle.block611 ], [ %.2, %.lr.ph238 ], [ %.2, %scalar.ph598 ] ; 2 uses
  %.6386.i.ph = phi ptr [ %i.lh, %bb.ax ], [ %i.ms, %.loopexit140 ], [ %1, %bb.d ], [ %i.ma, %middle.block672 ], [ %i.mf, %vec.epilog.middle.block687 ], [ %i.kx, %bb.bg ], [ %i.ml, %bb.az ], [ %i.kx, %middle.block611 ], [ %i.mj, %.lr.ph238 ], [ %i.kx, %scalar.ph598 ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.pj = load i8, ptr %.3.ph, align 1, !tbaa !14
  %i.pk = zext i8 %i.pj to i32                    ; 3 uses
  %i.pl = lshr i32 %i.pk, 4                       ; 2 uses
  %.not439.i227 = icmp eq i32 %i.pl, 15
  br i1 %.not439.i227, label %.thread103, label %.lr.ph229

bb.bi:                                            ; preds = %.thread127, %.loopexit140, %bb.ao
  %.18.i = phi ptr [ %i.g, %.loopexit140 ], [ %i.jr, %bb.ao ], [ %i.jp, %.thread127 ]
  %i.pm = ptrtoint ptr %.18.i to i64
  %i.pn = sub i64 %i.pm, %i.q
  %i.po = trunc i64 %i.pn to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit24, %bb.m, %bb.f, %read_variable_length.exit, %bb.h, %.thread99, %.preheader154.preheader, %.preheader151.preheader, %.preheader154, %.preheader151, %.preheader143, %.preheader141, %.preheader143.preheader, %.preheader141.preheader, %bb.ap, %.thread103, %read_variable_length.exit30, %bb.al, %.loopexit159, %read_variable_length.exit36
  %.10 = phi ptr [ %.2, %.loopexit159 ], [ %i.kl, %.preheader141 ], [ %.20, %read_variable_length.exit36 ], [ %i.ap, %.preheader154 ], [ %.18119, %bb.al ], [ %i.ib, %read_variable_length.exit30 ], [ %i.bt, %.preheader151 ], [ %.4108, %.thread103 ], [ %i.ib, %.preheader143 ], [ %.8, %bb.ap ], [ %i.kh, %.preheader141.preheader ], [ %i.hx, %.preheader143.preheader ], [ %i.bj, %bb.k ], [ %i.bt, %read_variable_length.exit24 ], [ %.1694, %bb.m ], [ %i.ai, %bb.f ], [ %.1475, %bb.h ], [ %i.ap, %read_variable_length.exit ], [ %i.al, %.preheader154.preheader ], [ %i.bp, %.preheader151.preheader ], [ %.11, %.thread99 ]
  %i.pp = ptrtoint ptr %.10 to i64
  %i.pq = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.pq, %i.pp
  %i.pr = trunc i64 %.neg.i to i32
  %i.ps = add nsw i32 %i.pr, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.bi, %LZ4_wildCopy32.exit.thread, %bb.b, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ %i.ps, %LZ4_wildCopy32.exit.thread ], [ -1, %bb.c ], [ %i.po, %bb.bi ], [ 0, %bb.b ]
  ret i32 %.1396.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @LZ4_createStreamDecode() local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #19
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @LZ4_freeStreamDecode(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @LZ4_setStreamDecode(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !49
  store ptr null, ptr %0, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !51
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2113994767) i32 @LZ4_decoderRingBufferSize(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %0, 2113929216
  %i.a = tail call i32 @llvm.umax.i32(i32 %0, i32 16)
  %i.b = add nuw nsw i32 %i.a, 65550
  %.0 = select i1 %or.cond, i32 0, i32 %i.b
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 11 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @LZ4_decompress_safe(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) ; 4 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !49
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.k = icmp eq ptr %i.j, %2
  br i1 %i.k, label %bb.e, label %bb.bs

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.b, 65534
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %LZ4_decompress_safe_doubleDict.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51   ; 5 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %i.b)
  br label %LZ4_decompress_safe_doubleDict.exit

bb.i:                                             ; preds = %bb.g
  %i.r = sub nsw i64 0, %i.b
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r ; 20 uses
  %i.t = icmp eq ptr %1, null
  %i.u = icmp slt i32 %4, 0
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.w = sext i32 %3 to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w ; 9 uses
  %i.y = zext nneg i32 %4 to i64                  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y ; 9 uses
  %i.aa = icmp eq ptr %i.v, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.o
  %i.ac = select i1 %i.aa, ptr null, ptr %i.ab    ; 4 uses
  %i.ad = icmp ult i64 %i.o, 65536                ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %i.ag = icmp eq i32 %4, 0
  br i1 %i.ag, label %bb.k, label %bb.m, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i32 %3, 1
  br i1 %i.ah, label %bb.l, label %LZ4_decompress_safe_doubleDict.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ai = load i8, ptr %1, align 1, !tbaa !14
  %i.aj = icmp ne i8 %i.ai, 0
  %i.ak = sext i1 %i.aj to i32
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.al = icmp eq i32 %3, 0
  br i1 %i.al, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.am = ptrtoint ptr %2 to i64                  ; 7 uses
  %i.an = icmp samesign ult i32 %4, 64
  br i1 %i.an, label %.preheader199, label %.preheader212

.preheader212:                                    ; preds = %bb.n
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 -17
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.aq = load i8, ptr %1, align 1, !tbaa !14
  %i.ar = zext i8 %i.aq to i32                    ; 3 uses
  %i.as = lshr i32 %i.ar, 4                       ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = icmp slt i32 %3, 18
  br i1 %i.au, label %.loopexit200, label %.lr.ph278

.lr.ph278:                                        ; preds = %.preheader212
  %i.av = getelementptr inbounds i8, ptr %i.x, i64 -15 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ax = getelementptr inbounds i8, ptr %i.z, i64 -64 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.x, i64 -6 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.ba = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.bb = add i64 %i.am, 1
  %i.bc = sub i64 %i.bb, %i.b
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph278, %.backedge
  %i.bd = phi i64 [ %i.at, %.lr.ph278 ], [ %i.dp, %.backedge ] ; 2 uses
  %i.be = phi i32 [ %i.as, %.lr.ph278 ], [ %i.do, %.backedge ]
  %i.bf = phi i32 [ %i.ar, %.lr.ph278 ], [ %i.dn, %.backedge ] ; 2 uses
  %i.bg = phi ptr [ %i.ap, %.lr.ph278 ], [ %i.dl, %.backedge ] ; 5 uses
  %.0380.i.i277 = phi ptr [ %2, %.lr.ph278 ], [ %.0380.i.i.be, %.backedge ] ; 5 uses
  %.0126276 = phi ptr [ %1, %.lr.ph278 ], [ %.0126.be, %.backedge ]
  %i.bh = icmp eq i32 %i.be, 15
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp ult ptr %i.bg, %i.av
  br i1 %.not.i, label %bb.q, label %LZ4_wildCopy32.exit.thread, !prof !32

bb.q:                                             ; preds = %bb.p
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !14  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0126276, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.bi, -1
  br i1 %.not21.i, label %.preheader210.preheader, label %read_variable_length.exit.thread129, !prof !26

.preheader210.preheader:                          ; preds = %bb.q
  %.not22.i571 = icmp ult ptr %i.bj, %i.av
  br i1 %.not22.i571, label %.lr.ph574, label %LZ4_wildCopy32.exit.thread, !prof !36

end_hunk_3
begin_hunk_4_@LZ4_decompress_safe_partial_usingDict:bb.a
  br i1 %min.epilog.iters.check924, label %.lr.ph242.i.preheader, label %vec.epilog.ph925, !prof !44

vec.epilog.ph925:                                 ; preds = %vector.main.loop.iter.check908, %vec.epilog.iter.check922
  %vec.epilog.resume.val926 = phi i64 [ %n.vec911, %vec.epilog.iter.check922 ], [ 0, %vector.main.loop.iter.check908 ]
  %n.vec927 = and i64 %i.jc, -8                   ; 4 uses
  %i.jk = getelementptr i8, ptr %.1369.i.ptr.i, i64 %n.vec927
  %i.jl = getelementptr i8, ptr %.11391.i.ptr.i, i64 %n.vec927
  br label %vec.epilog.vector.body928

vec.epilog.vector.body928:                        ; preds = %vec.epilog.vector.body928, %vec.epilog.ph925
  %index929 = phi i64 [ %vec.epilog.resume.val926, %vec.epilog.ph925 ], [ %index.next933, %vec.epilog.vector.body928 ] ; 3 uses
  %next.gep930 = getelementptr i8, ptr %.1369.i.ptr.i, i64 %index929
  %next.gep931 = getelementptr i8, ptr %.11391.i.ptr.i, i64 %index929
  %wide.load932 = load <8 x i8>, ptr %next.gep930, align 1, !tbaa !14
  store <8 x i8> %wide.load932, ptr %next.gep931, align 1, !tbaa !14
  %index.next933 = add nuw i64 %index929, 8       ; 2 uses
  %i.jm = icmp eq i64 %index.next933, %n.vec927
  br i1 %i.jm, label %vec.epilog.middle.block934, label %vec.epilog.vector.body928, !llvm.loop !229

vec.epilog.middle.block934:                       ; preds = %vec.epilog.vector.body928
  %cmp.n935 = icmp eq i64 %i.jc, %n.vec927
  br i1 %cmp.n935, label %.loopexit.i, label %.lr.ph242.i.preheader

.lr.ph242.i.preheader:                            ; preds = %iter.check921, %vec.epilog.iter.check922, %vec.epilog.middle.block934
  %.2370.i241.i.ph = phi ptr [ %.1369.i.ptr.i, %iter.check921 ], [ %i.jf, %vec.epilog.iter.check922 ], [ %i.jk, %vec.epilog.middle.block934 ]
  %.15.i240.i.ph = phi ptr [ %.11391.i.ptr.i, %iter.check921 ], [ %i.jg, %vec.epilog.iter.check922 ], [ %i.jl, %vec.epilog.middle.block934 ]
  br label %.lr.ph242.i

.lr.ph242.i:                                      ; preds = %.lr.ph242.i.preheader, %.lr.ph242.i
  %.2370.i241.i = phi ptr [ %i.jn, %.lr.ph242.i ], [ %.2370.i241.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %.15.i240.i = phi ptr [ %i.jp, %.lr.ph242.i ], [ %.15.i240.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.2370.i241.i, i64 1
  %i.jo = load i8, ptr %.2370.i241.i, align 1, !tbaa !14
  %i.jp = getelementptr inbounds nuw i8, ptr %.15.i240.i, i64 1 ; 2 uses
  store i8 %i.jo, ptr %.15.i240.i, align 1, !tbaa !14
  %i.jq = icmp ult ptr %i.jp, %.ptr151.i
  br i1 %i.jq, label %.lr.ph242.i, label %.loopexit.i, !llvm.loop !230

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.ptr.i, ptr align 1 %.1369.i.ptr.i, i64 %i.iu, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph242.i, %middle.block919, %vec.epilog.middle.block934, %bb.at, %.preheader.i
  %i.jr = icmp eq i64 %.11391.i.add143.i, %i.l
  br i1 %i.jr, label %bb.az, label %.preheader157.i

bb.au:                                            ; preds = %bb.ar
  %i.js = icmp ult i64 %.1367.i.i, 8
  br i1 %i.js, label %bb.av, label %bb.aw, !prof !26

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %.11391.i.ptr.i, align 1, !tbaa !23
  %i.jt = load i8, ptr %.1369.i.ptr.i, align 1, !tbaa !14
  store i8 %i.jt, ptr %.11391.i.ptr.i, align 1, !tbaa !14
  %i.ju = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !14
  %i.jw = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 1
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !14
  %i.jx = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 2
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !14
  %i.jz = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 2
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !14
  %i.ka = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 3
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !14
  %i.kc = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 3
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !14
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !38
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 4
  %i.ki = load i32, ptr %i.kg, align 1
  store i32 %i.ki, ptr %i.kh, align 1
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !38
  %i.kl = sext i32 %i.kk to i64
  %i.km = sub nsw i64 0, %i.kl
  %i.kn = getelementptr inbounds i8, ptr %i.kg, i64 %i.km
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ko = load i64, ptr %.1369.i.ptr.i, align 1
  store i64 %i.ko, ptr %.11391.i.ptr.i, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.3371.i.i = phi ptr [ %i.kn, %bb.av ], [ %i.kp, %bb.aw ] ; 6 uses
  %.3371.i.i883 = ptrtoaddr ptr %.3371.i.i to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 8
  %i.kr = load i64, ptr %.3371.i.i, align 1
  store i64 %i.kr, ptr %i.kq, align 1
  %i.ks = icmp ugt i64 %.13.i.i, 16
  br i1 %i.ks, label %bb.ay, label %.preheader157.i

bb.ay:                                            ; preds = %bb.ax
  %i.kt = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 16 ; 4 uses
  %i.ku = add i64 %.11391.i.idx.i, %.13.i.i
  %i.kv = add i64 %i.ku, %i.q
  %i.kw = add i64 %.11391.i.idx.i, %i.q           ; 2 uses
  %i.kx = add i64 %i.kw, 24
  %i.ky = tail call i64 @llvm.umax.i64(i64 %i.kv, i64 %i.kx)
  %i.kz = add i64 %i.ky, -17
  %i.la = add i64 %.11391.i.idx.i, %i.q
  %i.lb = sub i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = lshr i64 %i.lb, 3
  %i.ld = add nuw nsw i64 %i.lc, 1                ; 2 uses
  %min.iters.check885 = icmp ult i64 %i.lb, 136
  br i1 %min.iters.check885, label %scalar.ph884.preheader, label %vector.memcheck886

vector.memcheck886:                               ; preds = %bb.ay
  %i.le = sub i64 %i.kw, %.3371.i.i883
  %i.lf = add i64 %i.le, 7
  %diff.check887 = icmp ult i64 %i.lf, 31
  br i1 %diff.check887, label %scalar.ph884.preheader, label %vector.ph888

vector.ph888:                                     ; preds = %vector.memcheck886
  %n.vec889 = and i64 %i.ld, 4611686018427387900  ; 3 uses
  %i.lg = shl i64 %n.vec889, 3                    ; 2 uses
  %i.lh = getelementptr i8, ptr %i.kt, i64 %i.lg
  %i.li = getelementptr i8, ptr %.3371.i.i, i64 %i.lg
  br label %vector.body890

vector.body890:                                   ; preds = %vector.body890, %vector.ph888
  %index891 = phi i64 [ 0, %vector.ph888 ], [ %index.next896, %vector.body890 ] ; 2 uses
  %i.lj = shl i64 %index891, 3                    ; 2 uses
  %next.gep892 = getelementptr i8, ptr %i.kt, i64 %i.lj ; 2 uses
  %next.gep893 = getelementptr i8, ptr %.3371.i.i, i64 %i.lj ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %next.gep893, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %next.gep893, i64 24
  %wide.load894 = load <2 x i64>, ptr %i.lk, align 1
  %wide.load895 = load <2 x i64>, ptr %i.ll, align 1
  %i.lm = getelementptr i8, ptr %next.gep892, i64 16
  store <2 x i64> %wide.load894, ptr %next.gep892, align 1
  store <2 x i64> %wide.load895, ptr %i.lm, align 1
  %index.next896 = add nuw i64 %index891, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next896, %n.vec889
  br i1 %i.ln, label %middle.block897, label %vector.body890, !llvm.loop !231

middle.block897:                                  ; preds = %vector.body890
  %cmp.n898 = icmp eq i64 %i.ld, %n.vec889
  br i1 %cmp.n898, label %.preheader157.i, label %scalar.ph884.preheader

scalar.ph884.preheader:                           ; preds = %vector.memcheck886, %bb.ay, %middle.block897
  %.09.i8.i.ph = phi ptr [ %i.kt, %vector.memcheck886 ], [ %i.kt, %bb.ay ], [ %i.lh, %middle.block897 ]
  %.3371.i.pn.i.ph = phi ptr [ %.3371.i.i, %vector.memcheck886 ], [ %.3371.i.i, %bb.ay ], [ %i.li, %middle.block897 ]
  br label %scalar.ph884

scalar.ph884:                                     ; preds = %scalar.ph884.preheader, %scalar.ph884
  %.09.i8.i = phi ptr [ %i.lp, %scalar.ph884 ], [ %.09.i8.i.ph, %scalar.ph884.preheader ] ; 2 uses
  %.3371.i.pn.i = phi ptr [ %.0.i9.i, %scalar.ph884 ], [ %.3371.i.pn.i.ph, %scalar.ph884.preheader ]
  %.0.i9.i = getelementptr inbounds nuw i8, ptr %.3371.i.pn.i, i64 8 ; 2 uses
  %i.lo = load i64, ptr %.0.i9.i, align 1
  store i64 %i.lo, ptr %.09.i8.i, align 1
  %i.lp = getelementptr inbounds nuw i8, ptr %.09.i8.i, i64 8 ; 2 uses
  %i.lq = icmp ult ptr %i.lp, %.ptr150.i
  br i1 %i.lq, label %scalar.ph884, label %.preheader157.i, !llvm.loop !232

.preheader157.i:                                  ; preds = %scalar.ph884, %bb.ax, %middle.block897, %.loopexit.i, %bb.h
  %.3.ph.i = phi ptr [ %0, %bb.h ], [ %.2.i, %.loopexit.i ], [ %.2.i, %middle.block897 ], [ %.2.i, %bb.ax ], [ %.2.i, %scalar.ph884 ] ; 2 uses
  %.6386.i.idx.ph.i = phi i64 [ 0, %bb.h ], [ %.11391.i.add143.i, %.loopexit.i ], [ %.11391.i.add.i, %middle.block897 ], [ %.11391.i.add.i, %bb.ax ], [ %.11391.i.add.i, %scalar.ph884 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 1 ; 2 uses
  %i.ls = load i8, ptr %.3.ph.i, align 1, !tbaa !14
  %i.lt = zext i8 %i.ls to i32                    ; 3 uses
  %i.lu = lshr i32 %i.lt, 4                       ; 2 uses
  %.not439.i233.i = icmp eq i32 %i.lu, 15
  br i1 %.not439.i233.i, label %.thread100.i, label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %.preheader157.i
  %i.lv = add nsw i64 %i.l, -32
  br label %bb.af

bb.az:                                            ; preds = %.loopexit.i, %bb.am, %.thread124.i
  %.18.i.i = phi ptr [ %.ptr151.i, %.loopexit.i ], [ %.ptr147.i, %bb.am ], [ %i.m, %.thread124.i ]
  %i.lw = ptrtoint ptr %.18.i.i to i64
  %i.lx = sub i64 %i.lw, %i.q
  %i.ly = trunc i64 %i.lx to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i:                     ; preds = %.thread96.i, %bb.q, %read_variable_length.exit21.i, %bb.o, %bb.l, %read_variable_length.exit.i, %bb.j, %.preheader166.i.preheader, %.preheader163.i.preheader, %.preheader166.i, %.preheader163.i, %.preheader156.i, %.preheader154.i, %.preheader156.i.preheader, %.preheader154.i.preheader, %.loopexit171.i, %read_variable_length.exit33.i, %bb.an, %bb.aj, %read_variable_length.exit27.i, %.thread100.i
  %.10.i = phi ptr [ %.2.i, %.loopexit171.i ], [ %i.bo, %.preheader163.i ], [ %.20.i, %read_variable_length.exit33.i ], [ %i.gc, %.preheader156.i ], [ %.18116.i, %bb.aj ], [ %i.gc, %read_variable_length.exit27.i ], [ %i.ii, %.preheader154.i ], [ %.4105.i, %.thread100.i ], [ %i.ao, %.preheader166.i ], [ %.8.i, %bb.an ], [ %i.ie, %.preheader154.i.preheader ], [ %i.fy, %.preheader156.i.preheader ], [ %i.ao, %read_variable_length.exit.i ], [ %.1472.i, %bb.l ], [ %i.ah, %bb.j ], [ %.1691.i, %bb.q ], [ %i.bo, %read_variable_length.exit21.i ], [ %i.bg, %bb.o ], [ %i.ak, %.preheader166.i.preheader ], [ %i.bk, %.preheader163.i.preheader ], [ %.11.i, %.thread96.i ]
  %i.lz = ptrtoint ptr %.10.i to i64
  %i.ma = ptrtoint ptr %0 to i64
  %.neg.i.i = sub i64 %i.ma, %i.lz
  %i.mb = trunc i64 %.neg.i.i to i32
  %i.mc = add nsw i32 %i.mb, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.ba:                                            ; preds = %bb.d
  %i.md = sub nsw i64 0, %i.c
  %i.me = getelementptr inbounds i8, ptr %1, i64 %i.md ; 4 uses
  %i.mf = icmp eq ptr %0, null
  %i.mg = icmp slt i32 %i.g, 0
  %or.cond.i.i30 = or i1 %i.mf, %i.mg
  br i1 %or.cond.i.i30, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mh = sext i32 %2 to i64
  %i.mi = getelementptr inbounds i8, ptr %0, i64 %i.mh ; 11 uses
  %i.mj = zext nneg i32 %i.g to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %i.mj ; 9 uses
  %i.ml = getelementptr inbounds i8, ptr %i.mi, i64 -16
  %i.mm = getelementptr inbounds i8, ptr %i.mk, i64 -32 ; 2 uses
  %i.mn = icmp eq i32 %i.g, 0
  br i1 %i.mn, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bc, !prof !26

bb.bc:                                            ; preds = %bb.bb
  %i.mo = icmp eq i32 %2, 0
  br i1 %i.mo, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bd, !prof !26

bb.bd:                                            ; preds = %bb.bc
  %i.mp = ptrtoint ptr %i.mk to i64               ; 2 uses
  %i.mq = ptrtoint ptr %1 to i64
  %i.mr = icmp samesign ult i32 %i.g, 64
  br i1 %i.mr, label %.preheader141.i, label %.preheader152.i

.preheader152.i:                                  ; preds = %bb.bd
  %i.ms = getelementptr inbounds i8, ptr %i.mi, i64 -17
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.mu = load i8, ptr %0, align 1, !tbaa !14
  %i.mv = zext i8 %i.mu to i32                    ; 3 uses
  %i.mw = lshr i32 %i.mv, 4                       ; 2 uses
  %i.mx = zext nneg i32 %i.mw to i64              ; 2 uses
  %i.my = icmp slt i32 %2, 18
  br i1 %i.my, label %.loopexit142.i, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %.preheader152.i
  %i.mz = getelementptr inbounds i8, ptr %i.mi, i64 -15 ; 3 uses
  %i.na = getelementptr inbounds i8, ptr %i.mi, i64 -32
  %i.nb = getelementptr inbounds i8, ptr %i.mk, i64 -64 ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %i.mi, i64 -6 ; 3 uses
  br label %bb.be

bb.be:                                            ; preds = %.backedge.i75, %.lr.ph215.i
  %i.nd = phi i64 [ %i.mx, %.lr.ph215.i ], [ %i.pp, %.backedge.i75 ] ; 2 uses
  %i.ne = phi i32 [ %i.mw, %.lr.ph215.i ], [ %i.po, %.backedge.i75 ]
  %i.nf = phi i32 [ %i.mv, %.lr.ph215.i ], [ %i.pn, %.backedge.i75 ] ; 2 uses
  %i.ng = phi ptr [ %i.mt, %.lr.ph215.i ], [ %i.pl, %.backedge.i75 ] ; 5 uses
  %.0380.i214.i = phi ptr [ %1, %.lr.ph215.i ], [ %.0380.i.be.i, %.backedge.i75 ] ; 5 uses
  %.0213.i = phi ptr [ %0, %.lr.ph215.i ], [ %.0.be.i76, %.backedge.i75 ]
  %i.nh = icmp eq i32 %i.ne, 15
  br i1 %i.nh, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %.not.i15.i = icmp ult ptr %i.ng, %i.mz
  br i1 %.not.i15.i, label %bb.bg, label %LZ4_wildCopy32.exit.thread.i54, !prof !32

bb.bg:                                            ; preds = %bb.bf
  %i.ni = load i8, ptr %i.ng, align 1, !tbaa !14  ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.0213.i, i64 2 ; 4 uses
  %.not21.i.i97 = icmp eq i8 %i.ni, -1
  br i1 %.not21.i.i97, label %.preheader150.i.preheader, label %read_variable_length.exit.thread70.i, !prof !26

.preheader150.i.preheader:                        ; preds = %bb.bg
  %.not22.i.i101682 = icmp ult ptr %i.nj, %i.mz
  br i1 %.not22.i.i101682, label %.lr.ph, label %LZ4_wildCopy32.exit.thread.i54, !prof !36

read_variable_length.exit.thread70.i:             ; preds = %bb.bg
  %i.nk = zext i8 %i.ni to i64
  br label %bb.bh

.preheader150.i:                                  ; preds = %.lr.ph
  %.not22.i.i101 = icmp ult ptr %i.nn, %i.mz
  br i1 %.not22.i.i101, label %.lr.ph, label %LZ4_wildCopy32.exit.thread.i54, !prof !37, !llvm.loop !2

.lr.ph:                                           ; preds = %.preheader150.i.preheader, %.preheader150.i
  %.0.i16.i684 = phi i64 [ %i.no, %.preheader150.i ], [ 255, %.preheader150.i.preheader ]
  %.13.i100683 = phi ptr [ %i.nn, %.preheader150.i ], [ %i.nj, %.preheader150.i.preheader ] ; 2 uses
  %i.nl = load i8, ptr %.13.i100683, align 1, !tbaa !14 ; 2 uses
  %i.nm = zext i8 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %.13.i100683, i64 1 ; 5 uses
  %i.no = add i64 %.0.i16.i684, %i.nm             ; 3 uses
  %i.np = icmp eq i8 %i.nl, -1
  br i1 %i.np, label %.preheader150.i, label %read_variable_length.exit.i102, !llvm.loop !2

read_variable_length.exit.i102:                   ; preds = %.lr.ph
  %i.nq = icmp eq i64 %i.no, -1
  br i1 %i.nq, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bh

bb.bh:                                            ; preds = %read_variable_length.exit.i102, %read_variable_length.exit.thread70.i
  %.016.i74.i = phi i64 [ %i.nk, %read_variable_length.exit.thread70.i ], [ %i.no, %read_variable_length.exit.i102 ]
  %.1473.i = phi ptr [ %i.nj, %read_variable_length.exit.thread70.i ], [ %i.nn, %read_variable_length.exit.i102 ] ; 5 uses
  %i.nr = add i64 %.016.i74.i, 15                 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0380.i214.i, i64 %i.nr ; 4 uses
  %i.nt = ptrtoint ptr %.1473.i to i64
  %i.nu = xor i64 %i.nt, -1
  %i.nv = icmp ugt i64 %i.nr, %i.nu
  br i1 %i.nv, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bi, !prof !26

bb.bi:                                            ; preds = %bb.bh
  %i.nw = icmp ugt ptr %i.ns, %i.mm
  %i.nx = getelementptr inbounds nuw i8, ptr %.1473.i, i64 %i.nr ; 2 uses
  %i.ny = icmp ugt ptr %i.nx, %i.na
  %or.cond450.i.i98 = select i1 %i.nw, i1 true, i1 %i.ny
  br i1 %or.cond450.i.i98, label %LZ4_wildCopy32.exit.i43, label %.preheader149.i

.preheader149.i:                                  ; preds = %bb.bi, %.preheader149.i
  %.011.i.i99 = phi ptr [ %i.ob, %.preheader149.i ], [ %.0380.i214.i, %bb.bi ] ; 3 uses
  %.0.i35.i = phi ptr [ %i.oc, %.preheader149.i ], [ %.1473.i, %bb.bi ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i.i99, ptr noundef nonnull align 1 dereferenceable(16) %.0.i35.i, i64 16, i1 false)
  %i.nz = getelementptr inbounds nuw i8, ptr %.011.i.i99, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.i35.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.nz, ptr noundef nonnull align 1 dereferenceable(16) %i.oa, i64 16, i1 false)
  %i.ob = getelementptr inbounds nuw i8, ptr %.011.i.i99, i64 32 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.i35.i, i64 32
  %i.od = icmp ult ptr %i.ob, %i.ns
  br i1 %i.od, label %.preheader149.i, label %LZ4_wildCopy32.exit.thread80.i, !llvm.loop !3

bb.bj:                                            ; preds = %bb.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i214.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ng, i64 16, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nd
  %i.of = getelementptr inbounds nuw i8, ptr %.0380.i214.i, i64 %i.nd
  br label %LZ4_wildCopy32.exit.thread80.i

LZ4_wildCopy32.exit.thread80.i:                   ; preds = %.preheader149.i, %bb.bj
  %.1.i31 = phi ptr [ %i.oe, %bb.bj ], [ %i.nx, %.preheader149.i ] ; 3 uses
  %.2382.i.i = phi ptr [ %i.of, %bb.bj ], [ %i.ns, %.preheader149.i ] ; 23 uses
  %.2382.i.i726 = ptrtoaddr ptr %.2382.i.i to i64 ; 7 uses
  %.val42.i = load i16, ptr %.1.i31, align 1, !tbaa !31 ; 5 uses
  %i.og = zext i16 %.val42.i to i64               ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.1.i31, i64 2 ; 6 uses
  %i.oi = sub nsw i64 0, %i.og
  %i.oj = getelementptr inbounds i8, ptr %.2382.i.i, i64 %i.oi ; 16 uses
  %i.ok = and i32 %i.nf, 15                       ; 2 uses
  %i.ol = icmp eq i32 %i.ok, 15
  br i1 %i.ol, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %LZ4_wildCopy32.exit.thread80.i
  %.not.i17.i = icmp ult ptr %i.oh, %i.nc
  br i1 %.not.i17.i, label %bb.bl, label %LZ4_wildCopy32.exit.thread.i54, !prof !32

bb.bl:                                            ; preds = %bb.bk
  %i.om = load i8, ptr %i.oh, align 1, !tbaa !14  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.1.i31, i64 3 ; 4 uses
  %.not21.i19.i = icmp eq i8 %i.om, -1
  br i1 %.not21.i19.i, label %.preheader147.i.preheader, label %read_variable_length.exit22.thread89.i, !prof !26

.preheader147.i.preheader:                        ; preds = %bb.bl
  %.not22.i21.i686 = icmp ult ptr %i.on, %i.nc
  br i1 %.not22.i21.i686, label %.lr.ph689, label %LZ4_wildCopy32.exit.thread.i54, !prof !36

read_variable_length.exit22.thread89.i:           ; preds = %bb.bl
  %i.oo = zext i8 %i.om to i64
  br label %bb.bm

.preheader147.i:                                  ; preds = %.lr.ph689
  %.not22.i21.i = icmp ult ptr %i.or, %i.nc
  br i1 %.not22.i21.i, label %.lr.ph689, label %LZ4_wildCopy32.exit.thread.i54, !prof !37, !llvm.loop !2

.lr.ph689:                                        ; preds = %.preheader147.i.preheader, %.preheader147.i
  %.0.i20.i688 = phi i64 [ %i.os, %.preheader147.i ], [ 255, %.preheader147.i.preheader ]
  %.15.i96687 = phi ptr [ %i.or, %.preheader147.i ], [ %i.on, %.preheader147.i.preheader ] ; 2 uses
  %i.op = load i8, ptr %.15.i96687, align 1, !tbaa !14 ; 2 uses
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %.15.i96687, i64 1 ; 5 uses
  %i.os = add i64 %.0.i20.i688, %i.oq             ; 3 uses
  %i.ot = icmp eq i8 %i.op, -1
  br i1 %i.ot, label %.preheader147.i, label %read_variable_length.exit22.i, !llvm.loop !2

read_variable_length.exit22.i:                    ; preds = %.lr.ph689
  %i.ou = icmp eq i64 %i.os, -1
  br i1 %i.ou, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bm

bb.bm:                                            ; preds = %read_variable_length.exit22.i, %read_variable_length.exit22.thread89.i
  %.016.i1893.i = phi i64 [ %i.oo, %read_variable_length.exit22.thread89.i ], [ %i.os, %read_variable_length.exit22.i ]
  %.1692.i = phi ptr [ %i.on, %read_variable_length.exit22.thread89.i ], [ %i.or, %read_variable_length.exit22.i ] ; 3 uses
  %i.ov = add i64 %.016.i1893.i, 19               ; 4 uses
  %i.ow = ptrtoint ptr %.2382.i.i to i64
  %i.ox = xor i64 %i.ow, -1
  %i.oy = icmp ugt i64 %i.ov, %i.ox
  br i1 %i.oy, label %LZ4_wildCopy32.exit.thread.i54, label %bb.bn, !prof !26

bb.bn:                                            ; preds = %bb.bm
  %i.oz = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %i.ov
  %.not436.i.i95 = icmp ult ptr %i.oz, %i.nb
  br i1 %.not436.i.i95, label %.thread97.i, label %.loopexit155.i

bb.bo:                                            ; preds = %LZ4_wildCopy32.exit.thread80.i
  %narrow.i.i32 = add nuw nsw i32 %i.ok, 4
  %i.pa = zext nneg i32 %narrow.i.i32 to i64      ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %i.pa ; 2 uses
  %.not.i.i33 = icmp ult ptr %i.pb, %i.nb
  br i1 %.not.i.i33, label %bb.bp, label %.loopexit155.i

bb.bp:                                            ; preds = %bb.bo
  %i.pc = icmp uge ptr %i.oj, %i.me
  %i.pd = icmp ugt i16 %.val42.i, 7
  %or.cond5.i.i = select i1 %i.pc, i1 %i.pd, i1 false
  br i1 %or.cond5.i.i, label %bb.bq, label %.thread97.i

bb.bq:                                            ; preds = %bb.bp
  %i.pe = load i64, ptr %i.oj, align 1
  store i64 %i.pe, ptr %.2382.i.i, align 1
  %i.pf = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ph = load i64, ptr %i.pg, align 1
  store i64 %i.ph, ptr %i.pf, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.pk = load i16, ptr %i.pj, align 1
  store i16 %i.pk, ptr %i.pi, align 1
end_hunk_4
begin_hunk_5_@LZ4_decompress_safe_partial_usingDict:bb.a
  %.6.i.i42 = phi i64 [ %.4362.i.i79, %.loopexit142.i ], [ %i.tr, %bb.ce ], [ %i.sf, %.lr.ph221.i ] ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.7387.i107.i, i64 %.6.i.i42
  br label %LZ4_wildCopy32.exit.i43

LZ4_wildCopy32.exit.i43:                          ; preds = %bb.bi, %.loopexit142.thread.i
  %.6.i44 = phi ptr [ %.5.i41, %.loopexit142.thread.i ], [ %.1473.i, %bb.bi ] ; 10 uses
  %.8388.i.i = phi ptr [ %.7387.i107.i, %.loopexit142.thread.i ], [ %.0380.i214.i, %bb.bi ] ; 10 uses
  %.3377.i.i = phi ptr [ %i.ty, %.loopexit142.thread.i ], [ %i.ns, %bb.bi ] ; 6 uses
  %.1365.i.i45 = phi i32 [ %.0364.i109.i40, %.loopexit142.thread.i ], [ %i.nf, %bb.bi ]
  %.7.i.i46 = phi i64 [ %.6.i.i42, %.loopexit142.thread.i ], [ %i.nr, %bb.bi ] ; 3 uses
  %.3377.i.i749 = ptrtoaddr ptr %.3377.i.i to i64
  %.8388.i.i750 = ptrtoaddr ptr %.8388.i.i to i64 ; 3 uses
  %.6.i44751 = ptrtoaddr ptr %.6.i44 to i64
  %i.tz = getelementptr inbounds i8, ptr %i.mk, i64 -12
  %i.ua = icmp ugt ptr %.3377.i.i, %i.tz
  br i1 %i.ua, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %LZ4_wildCopy32.exit.i43
  %i.ub = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46 ; 3 uses
  %i.uc = getelementptr inbounds i8, ptr %i.mi, i64 -8
  %i.ud = icmp ugt ptr %i.ub, %i.uc
  br i1 %i.ud, label %bb.cg, label %.preheader139.i.preheader

.preheader139.i.preheader:                        ; preds = %bb.cf
  %i.ue = add i64 %.8388.i.i750, 8
  %i.uf = tail call i64 @llvm.umax.i64(i64 %.3377.i.i749, i64 %i.ue)
  %i.ug = xor i64 %.8388.i.i750, -1
  %i.uh = add i64 %i.uf, %i.ug                    ; 2 uses
  %i.ui = lshr i64 %i.uh, 3
  %i.uj = add nuw nsw i64 %i.ui, 1                ; 2 uses
  %min.iters.check753 = icmp ult i64 %i.uh, 72
  %i.uk = sub i64 %.6.i44751, %.8388.i.i750
  %diff.check755 = icmp ugt i64 %i.uk, -32
  %or.cond939 = select i1 %min.iters.check753, i1 true, i1 %diff.check755
  br i1 %or.cond939, label %.preheader139.i.preheader1011, label %vector.ph756

vector.ph756:                                     ; preds = %.preheader139.i.preheader
  %n.vec757 = and i64 %i.uj, 4611686018427387900  ; 3 uses
  %i.ul = shl i64 %n.vec757, 3                    ; 2 uses
  %i.um = getelementptr i8, ptr %.8388.i.i, i64 %i.ul
  %i.un = getelementptr i8, ptr %.6.i44, i64 %i.ul
  br label %vector.body758

vector.body758:                                   ; preds = %vector.body758, %vector.ph756
  %index759 = phi i64 [ 0, %vector.ph756 ], [ %index.next764, %vector.body758 ] ; 2 uses
  %i.uo = shl i64 %index759, 3                    ; 2 uses
  %next.gep760 = getelementptr i8, ptr %.8388.i.i, i64 %i.uo ; 2 uses
  %next.gep761 = getelementptr i8, ptr %.6.i44, i64 %i.uo ; 2 uses
  %i.up = getelementptr i8, ptr %next.gep761, i64 16
  %wide.load762 = load <2 x i64>, ptr %next.gep761, align 1
  %wide.load763 = load <2 x i64>, ptr %i.up, align 1
  %i.uq = getelementptr i8, ptr %next.gep760, i64 16
  store <2 x i64> %wide.load762, ptr %next.gep760, align 1
  store <2 x i64> %wide.load763, ptr %i.uq, align 1
  %index.next764 = add nuw i64 %index759, 4       ; 2 uses
  %i.ur = icmp eq i64 %index.next764, %n.vec757
  br i1 %i.ur, label %middle.block765, label %vector.body758, !llvm.loop !237

middle.block765:                                  ; preds = %vector.body758
  %cmp.n766 = icmp eq i64 %i.uj, %n.vec757
  br i1 %cmp.n766, label %LZ4_wildCopy8.exit14.i, label %.preheader139.i.preheader1011

.preheader139.i.preheader1011:                    ; preds = %.preheader139.i.preheader, %middle.block765
  %.09.i12.i.ph = phi ptr [ %.8388.i.i, %.preheader139.i.preheader ], [ %i.um, %middle.block765 ]
  %.0.i13.i.ph = phi ptr [ %.6.i44, %.preheader139.i.preheader ], [ %i.un, %middle.block765 ]
  br label %.preheader139.i

bb.cg:                                            ; preds = %bb.cf, %LZ4_wildCopy32.exit.i43
  %i.us = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46
  %i.ut = icmp ugt ptr %i.us, %i.mi               ; 2 uses
  %i.uu = ptrtoint ptr %i.mi to i64
  %i.uv = ptrtoint ptr %.6.i44 to i64
  %i.uw = sub i64 %i.uu, %i.uv                    ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.uw
  %.4378.i.i61 = select i1 %i.ut, ptr %i.ux, ptr %.3377.i.i ; 2 uses
  %i.uy = icmp ugt ptr %.4378.i.i61, %i.mk
  br i1 %i.uy, label %.thread125.i, label %bb.ch

.thread125.i:                                     ; preds = %bb.cg
  %i.uz = ptrtoint ptr %.8388.i.i to i64
  %i.va = sub i64 %i.mp, %i.uz                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6.i44, i64 %i.va, i1 false)
  %i.vb = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.va
  br label %bb.cu

bb.ch:                                            ; preds = %bb.cg
  %.8.i.i62 = select i1 %i.ut, i64 %i.uw, i64 %.7.i.i46 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6.i44, i64 %.8.i.i62, i1 false)
  %i.vc = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.8.i.i62 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %.8.i.i62 ; 2 uses
  %i.ve = icmp ne ptr %.4378.i.i61, %i.mk
  %i.vf = getelementptr inbounds i8, ptr %i.mi, i64 -2
  %.not442.i.i63 = icmp ult ptr %i.vc, %i.vf
  %or.cond460.i.i64 = select i1 %i.ve, i1 %.not442.i.i63, i1 false
  br i1 %or.cond460.i.i64, label %LZ4_wildCopy8.exit14.i, label %bb.cu

.preheader139.i:                                  ; preds = %.preheader139.i.preheader1011, %.preheader139.i
  %.09.i12.i = phi ptr [ %i.vh, %.preheader139.i ], [ %.09.i12.i.ph, %.preheader139.i.preheader1011 ] ; 2 uses
  %.0.i13.i = phi ptr [ %i.vi, %.preheader139.i ], [ %.0.i13.i.ph, %.preheader139.i.preheader1011 ] ; 2 uses
  %i.vg = load i64, ptr %.0.i13.i, align 1
  store i64 %i.vg, ptr %.09.i12.i, align 1
  %i.vh = getelementptr inbounds nuw i8, ptr %.09.i12.i, i64 8 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 8
  %i.vj = icmp ult ptr %i.vh, %.3377.i.i
  br i1 %i.vj, label %.preheader139.i, label %LZ4_wildCopy8.exit14.i, !llvm.loop !238

LZ4_wildCopy8.exit14.i:                           ; preds = %.preheader139.i, %middle.block765, %bb.ch
  %.7.i47 = phi ptr [ %i.vc, %bb.ch ], [ %i.ub, %middle.block765 ], [ %i.ub, %.preheader139.i ] ; 2 uses
  %.9389.i.i = phi ptr [ %i.vd, %bb.ch ], [ %.3377.i.i, %middle.block765 ], [ %.3377.i.i, %.preheader139.i ] ; 2 uses
  %.val41.i48 = load i16, ptr %.7.i47, align 1, !tbaa !31
  %i.vk = zext i16 %.val41.i48 to i64             ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.7.i47, i64 2
  %i.vm = sub nsw i64 0, %i.vk
  %i.vn = getelementptr inbounds i8, ptr %.9389.i.i, i64 %i.vm
  %i.vo = and i32 %.1365.i.i45, 15
  %i.vp = zext nneg i32 %i.vo to i64
  br label %.loopexit143.i

.loopexit143.i:                                   ; preds = %bb.cb, %LZ4_wildCopy8.exit14.i
  %.8.i49 = phi ptr [ %i.vl, %LZ4_wildCopy8.exit14.i ], [ %i.so, %bb.cb ] ; 5 uses
  %.10390.i.i = phi ptr [ %.9389.i.i, %LZ4_wildCopy8.exit14.i ], [ %i.sj, %bb.cb ] ; 2 uses
  %.0368.i.i = phi ptr [ %i.vn, %LZ4_wildCopy8.exit14.i ], [ %i.sq, %bb.cb ]
  %.0366.i.i50 = phi i64 [ %i.vk, %LZ4_wildCopy8.exit14.i ], [ %i.sn, %bb.cb ]
  %.10.i.i51 = phi i64 [ %i.vp, %LZ4_wildCopy8.exit14.i ], [ %i.sm, %bb.cb ] ; 2 uses
  %i.vq = icmp eq i64 %.10.i.i51, 15
  br i1 %i.vq, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %.loopexit143.i
  %i.vr = getelementptr inbounds i8, ptr %i.mi, i64 -6 ; 3 uses
  %.not.i29.i = icmp ult ptr %.8.i49, %i.vr
  br i1 %.not.i29.i, label %bb.cj, label %LZ4_wildCopy32.exit.thread.i54, !prof !32

bb.cj:                                            ; preds = %bb.ci
  %i.vs = load i8, ptr %.8.i49, align 1, !tbaa !14 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.8.i49, i64 1 ; 4 uses
  %.not21.i31.i = icmp eq i8 %i.vs, -1
  br i1 %.not21.i31.i, label %.preheader138.i.preheader, label %bb.ck, !prof !26

.preheader138.i.preheader:                        ; preds = %bb.cj
  %.not22.i33.i697 = icmp ult ptr %i.vt, %i.vr
  br i1 %.not22.i33.i697, label %.lr.ph700, label %LZ4_wildCopy32.exit.thread.i54, !prof !36

bb.ck:                                            ; preds = %bb.cj
  %i.vu = zext i8 %i.vs to i64
  br label %read_variable_length.exit34.i

.preheader138.i:                                  ; preds = %.lr.ph700
  %.not22.i33.i = icmp ult ptr %i.vx, %i.vr
  br i1 %.not22.i33.i, label %.lr.ph700, label %LZ4_wildCopy32.exit.thread.i54, !prof !37, !llvm.loop !2

.lr.ph700:                                        ; preds = %.preheader138.i.preheader, %.preheader138.i
  %.0.i32.i699 = phi i64 [ %i.vy, %.preheader138.i ], [ 255, %.preheader138.i.preheader ]
  %.19.i60698 = phi ptr [ %i.vx, %.preheader138.i ], [ %i.vt, %.preheader138.i.preheader ] ; 2 uses
  %i.vv = load i8, ptr %.19.i60698, align 1, !tbaa !14 ; 2 uses
  %i.vw = zext i8 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %.19.i60698, i64 1 ; 4 uses
  %i.vy = add i64 %.0.i32.i699, %i.vw             ; 2 uses
  %i.vz = icmp eq i8 %i.vv, -1
  br i1 %i.vz, label %.preheader138.i, label %read_variable_length.exit34.i, !llvm.loop !2

read_variable_length.exit34.i:                    ; preds = %.lr.ph700, %bb.ck
  %.20.i58 = phi ptr [ %i.vt, %bb.ck ], [ %i.vx, %.lr.ph700 ] ; 2 uses
  %.016.i30.i = phi i64 [ %i.vu, %bb.ck ], [ %i.vy, %.lr.ph700 ] ; 2 uses
  %i.wa = icmp ne i64 %.016.i30.i, -1             ; 2 uses
  %i.wb = add i64 %.016.i30.i, 15                 ; 2 uses
  %i.wc = ptrtoint ptr %.10390.i.i to i64
  %i.wd = xor i64 %i.wc, -1
  %i.we = icmp ule i64 %i.wb, %i.wd
  %.11.i.i59 = select i1 %i.wa, i64 %i.wb, i64 15
  %.not137.i = select i1 %i.wa, i1 %i.we, i1 false
  br i1 %.not137.i, label %bb.cl, label %LZ4_wildCopy32.exit.thread.i54

bb.cl:                                            ; preds = %read_variable_length.exit34.i, %.loopexit143.i
  %.9.i52 = phi ptr [ %.20.i58, %read_variable_length.exit34.i ], [ %.8.i49, %.loopexit143.i ]
  %.12.i.i53 = phi i64 [ %.11.i.i59, %read_variable_length.exit34.i ], [ %.10.i.i51, %.loopexit143.i ]
  %i.wf = add i64 %.12.i.i53, 4
  br label %.loopexit155.i

.loopexit155.i:                                   ; preds = %bb.bo, %bb.bn, %bb.cl
  %.2.i34 = phi ptr [ %.9.i52, %bb.cl ], [ %i.oh, %bb.bo ], [ %.1692.i, %bb.bn ] ; 5 uses
  %.11391.i.i = phi ptr [ %.10390.i.i, %bb.cl ], [ %.2382.i.i, %bb.bn ], [ %.2382.i.i, %bb.bo ] ; 20 uses
  %.1369.i.i = phi ptr [ %.0368.i.i, %bb.cl ], [ %i.oj, %bb.bn ], [ %i.oj, %bb.bo ] ; 16 uses
  %.1367.i.i35 = phi i64 [ %.0366.i.i50, %bb.cl ], [ %i.og, %bb.bn ], [ %i.og, %bb.bo ] ; 3 uses
  %.13.i.i36 = phi i64 [ %i.wf, %bb.cl ], [ %i.pa, %bb.bo ], [ %i.ov, %bb.bn ] ; 4 uses
  %.1369.i.i795 = ptrtoaddr ptr %.1369.i.i to i64
  %.11391.i.i773 = ptrtoaddr ptr %.11391.i.i to i64 ; 8 uses
  %i.wg = icmp ult ptr %.1369.i.i, %i.me
  br i1 %i.wg, label %LZ4_wildCopy32.exit.thread.i54, label %bb.cm, !prof !42

bb.cm:                                            ; preds = %.loopexit155.i
  %i.wh = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %.13.i.i36 ; 5 uses
  %i.wi = getelementptr inbounds i8, ptr %i.mk, i64 -12
  %i.wj = icmp ugt ptr %i.wh, %i.wi
  br i1 %i.wj, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.wk = ptrtoint ptr %.11391.i.i to i64
  %i.wl = sub i64 %i.mp, %i.wk
  %i.wm = tail call i64 @llvm.umin.i64(i64 %.13.i.i36, i64 %i.wl) ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.wm
  %i.wo = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %i.wm ; 3 uses
  %i.wp = icmp ugt ptr %i.wn, %.11391.i.i
  br i1 %i.wp, label %.preheader.i72, label %bb.co

.preheader.i72:                                   ; preds = %bb.cn
  %.not.i = icmp eq i64 %i.wm, 0
  br i1 %.not.i, label %.loopexit.i71, label %iter.check

iter.check:                                       ; preds = %.preheader.i72
  %i.wq = add i64 %i.wm, %.11391.i.i773
  %i.wr = add i64 %.11391.i.i773, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.wq, i64 %i.wr)
  %i.ws = sub i64 %umax, %.11391.i.i773           ; 7 uses
  %min.iters.check797 = icmp ult i64 %i.ws, 8
  %i.wt = sub i64 %.1369.i.i795, %.11391.i.i773
  %diff.check799 = icmp ugt i64 %i.wt, -32
  %or.cond940 = or i1 %min.iters.check797, %diff.check799
  br i1 %or.cond940, label %.lr.ph227.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check800 = icmp ult i64 %i.ws, 32
  br i1 %min.iters.check800, label %vec.epilog.ph, label %vector.ph801

vector.ph801:                                     ; preds = %vector.main.loop.iter.check
  %i.wu = and i64 %i.ws, 24
  %n.vec802 = and i64 %i.ws, -32                  ; 5 uses
  %i.wv = getelementptr i8, ptr %.1369.i.i, i64 %n.vec802
  %i.ww = getelementptr i8, ptr %.11391.i.i, i64 %n.vec802
  br label %vector.body803

vector.body803:                                   ; preds = %vector.ph801, %vector.body803
  %index804 = phi i64 [ 0, %vector.ph801 ], [ %index.next809, %vector.body803 ] ; 3 uses
  %next.gep805 = getelementptr i8, ptr %.1369.i.i, i64 %index804 ; 2 uses
  %next.gep806 = getelementptr i8, ptr %.11391.i.i, i64 %index804 ; 2 uses
  %i.wx = getelementptr i8, ptr %next.gep805, i64 16
  %wide.load807 = load <16 x i8>, ptr %next.gep805, align 1, !tbaa !14
  %wide.load808 = load <16 x i8>, ptr %i.wx, align 1, !tbaa !14
  %i.wy = getelementptr i8, ptr %next.gep806, i64 16
  store <16 x i8> %wide.load807, ptr %next.gep806, align 1, !tbaa !14
  store <16 x i8> %wide.load808, ptr %i.wy, align 1, !tbaa !14
  %index.next809 = add nuw i64 %index804, 32      ; 2 uses
  %i.wz = icmp eq i64 %index.next809, %n.vec802
  br i1 %i.wz, label %middle.block810, label %vector.body803, !llvm.loop !239

middle.block810:                                  ; preds = %vector.body803
  %cmp.n811 = icmp eq i64 %i.ws, %n.vec802
  br i1 %cmp.n811, label %.loopexit.i71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block810
  %min.epilog.iters.check = icmp eq i64 %i.wu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph227.i.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec802, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec812 = and i64 %i.ws, -8                   ; 4 uses
  %i.xa = getelementptr i8, ptr %.1369.i.i, i64 %n.vec812
  %i.xb = getelementptr i8, ptr %.11391.i.i, i64 %n.vec812
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index813 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next817, %vec.epilog.vector.body ] ; 3 uses
  %next.gep814 = getelementptr i8, ptr %.1369.i.i, i64 %index813
  %next.gep815 = getelementptr i8, ptr %.11391.i.i, i64 %index813
  %wide.load816 = load <8 x i8>, ptr %next.gep814, align 1, !tbaa !14
  store <8 x i8> %wide.load816, ptr %next.gep815, align 1, !tbaa !14
  %index.next817 = add nuw i64 %index813, 8       ; 2 uses
  %i.xc = icmp eq i64 %index.next817, %n.vec812
  br i1 %i.xc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n818 = icmp eq i64 %i.ws, %n.vec812
  br i1 %cmp.n818, label %.loopexit.i71, label %.lr.ph227.i.preheader

.lr.ph227.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2370.i226.i.ph = phi ptr [ %.1369.i.i, %iter.check ], [ %i.wv, %vec.epilog.iter.check ], [ %i.xa, %vec.epilog.middle.block ]
  %.15.i225.i.ph = phi ptr [ %.11391.i.i, %iter.check ], [ %i.ww, %vec.epilog.iter.check ], [ %i.xb, %vec.epilog.middle.block ]
  br label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i
  %.2370.i226.i = phi ptr [ %i.xd, %.lr.ph227.i ], [ %.2370.i226.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %.15.i225.i = phi ptr [ %i.xf, %.lr.ph227.i ], [ %.15.i225.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.2370.i226.i, i64 1
  %i.xe = load i8, ptr %.2370.i226.i, align 1, !tbaa !14
  %i.xf = getelementptr inbounds nuw i8, ptr %.15.i225.i, i64 1 ; 2 uses
  store i8 %i.xe, ptr %.15.i225.i, align 1, !tbaa !14
  %i.xg = icmp ult ptr %i.xf, %i.wo
  br i1 %i.xg, label %.lr.ph227.i, label %.loopexit.i71, !llvm.loop !241

bb.co:                                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.i, ptr align 1 %.1369.i.i, i64 %i.wm, i1 false)
  br label %.loopexit.i71

.loopexit.i71:                                    ; preds = %.lr.ph227.i, %middle.block810, %vec.epilog.middle.block, %bb.co, %.preheader.i72
  %i.xh = icmp eq ptr %i.wo, %i.mk
  br i1 %i.xh, label %bb.cu, label %.preheader141.i

bb.cp:                                            ; preds = %bb.cm
  %i.xi = icmp ult i64 %.1367.i.i35, 8
  br i1 %i.xi, label %bb.cq, label %bb.cr, !prof !26

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %.11391.i.i, align 1, !tbaa !23
  %i.xj = load i8, ptr %.1369.i.i, align 1, !tbaa !14
  store i8 %i.xj, ptr %.11391.i.i, align 1, !tbaa !14
  %i.xk = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 1
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !14
  %i.xm = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 1
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !14
  %i.xn = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 2
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !14
  %i.xp = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 2
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !14
  %i.xq = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 3
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !14
  %i.xs = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 3
  store i8 %i.xr, ptr %i.xs, align 1, !tbaa !14
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i35
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !38
  %i.xv = zext i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.xv ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 4
  %i.xy = load i32, ptr %i.xw, align 1
  store i32 %i.xy, ptr %i.xx, align 1
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i35
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !38
  %i.yb = sext i32 %i.ya to i64
  %i.yc = sub nsw i64 0, %i.yb
  %i.yd = getelementptr inbounds i8, ptr %i.xw, i64 %i.yc
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.ye = load i64, ptr %.1369.i.i, align 1
  store i64 %i.ye, ptr %.11391.i.i, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.3371.i.i37 = phi ptr [ %i.yd, %bb.cq ], [ %i.yf, %bb.cr ] ; 6 uses
  %.3371.i.i37774 = ptrtoaddr ptr %.3371.i.i37 to i64
  %i.yg = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 8
  %i.yh = load i64, ptr %.3371.i.i37, align 1
  store i64 %i.yh, ptr %i.yg, align 1
  %i.yi = icmp ugt i64 %.13.i.i36, 16
  br i1 %i.yi, label %bb.ct, label %.preheader141.i

bb.ct:                                            ; preds = %bb.cs
  %i.yj = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 16 ; 4 uses
  %i.yk = add i64 %.13.i.i36, %.11391.i.i773
  %i.yl = add i64 %.11391.i.i773, 24
  %i.ym = tail call i64 @llvm.umax.i64(i64 %i.yk, i64 %i.yl)
  %i.yn = add i64 %i.ym, -17
  %i.yo = sub i64 %i.yn, %.11391.i.i773           ; 2 uses
  %i.yp = lshr i64 %i.yo, 3
  %i.yq = add nuw nsw i64 %i.yp, 1                ; 2 uses
  %min.iters.check776 = icmp ult i64 %i.yo, 104
  br i1 %min.iters.check776, label %scalar.ph775.preheader, label %vector.memcheck777

vector.memcheck777:                               ; preds = %bb.ct
  %i.yr = sub i64 %.11391.i.i773, %.3371.i.i37774
  %i.ys = add i64 %i.yr, 7
  %diff.check778 = icmp ult i64 %i.ys, 31
  br i1 %diff.check778, label %scalar.ph775.preheader, label %vector.ph779

vector.ph779:                                     ; preds = %vector.memcheck777
  %n.vec780 = and i64 %i.yq, 4611686018427387900  ; 3 uses
  %i.yt = shl i64 %n.vec780, 3                    ; 2 uses
  %i.yu = getelementptr i8, ptr %i.yj, i64 %i.yt
  %i.yv = getelementptr i8, ptr %.3371.i.i37, i64 %i.yt
  br label %vector.body781

vector.body781:                                   ; preds = %vector.body781, %vector.ph779
  %index782 = phi i64 [ 0, %vector.ph779 ], [ %index.next787, %vector.body781 ] ; 2 uses
  %i.yw = shl i64 %index782, 3                    ; 2 uses
  %next.gep783 = getelementptr i8, ptr %i.yj, i64 %i.yw ; 2 uses
  %next.gep784 = getelementptr i8, ptr %.3371.i.i37, i64 %i.yw ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %next.gep784, i64 8
  %i.yy = getelementptr inbounds nuw i8, ptr %next.gep784, i64 24
  %wide.load785 = load <2 x i64>, ptr %i.yx, align 1
  %wide.load786 = load <2 x i64>, ptr %i.yy, align 1
  %i.yz = getelementptr i8, ptr %next.gep783, i64 16
  store <2 x i64> %wide.load785, ptr %next.gep783, align 1
  store <2 x i64> %wide.load786, ptr %i.yz, align 1
  %index.next787 = add nuw i64 %index782, 4       ; 2 uses
  %i.za = icmp eq i64 %index.next787, %n.vec780
  br i1 %i.za, label %middle.block788, label %vector.body781, !llvm.loop !242

middle.block788:                                  ; preds = %vector.body781
  %cmp.n789 = icmp eq i64 %i.yq, %n.vec780
  br i1 %cmp.n789, label %.preheader141.i, label %scalar.ph775.preheader

scalar.ph775.preheader:                           ; preds = %vector.memcheck777, %bb.ct, %middle.block788
  %.09.i9.i.ph = phi ptr [ %i.yj, %vector.memcheck777 ], [ %i.yj, %bb.ct ], [ %i.yu, %middle.block788 ]
  %.3371.i.pn.i70.ph = phi ptr [ %.3371.i.i37, %vector.memcheck777 ], [ %.3371.i.i37, %bb.ct ], [ %i.yv, %middle.block788 ]
  br label %scalar.ph775

scalar.ph775:                                     ; preds = %scalar.ph775.preheader, %scalar.ph775
  %.09.i9.i = phi ptr [ %i.zc, %scalar.ph775 ], [ %.09.i9.i.ph, %scalar.ph775.preheader ] ; 2 uses
  %.3371.i.pn.i70 = phi ptr [ %.0.i10.i, %scalar.ph775 ], [ %.3371.i.pn.i70.ph, %scalar.ph775.preheader ]
  %.0.i10.i = getelementptr inbounds nuw i8, ptr %.3371.i.pn.i70, i64 8 ; 2 uses
  %i.zb = load i64, ptr %.0.i10.i, align 1
  store i64 %i.zb, ptr %.09.i9.i, align 1
  %i.zc = getelementptr inbounds nuw i8, ptr %.09.i9.i, i64 8 ; 2 uses
  %i.zd = icmp ult ptr %i.zc, %i.wh
  br i1 %i.zd, label %scalar.ph775, label %.preheader141.i, !llvm.loop !243

.preheader141.i:                                  ; preds = %scalar.ph775, %bb.cs, %middle.block788, %.loopexit.i71, %bb.bd
  %.3.ph.i38 = phi ptr [ %0, %bb.bd ], [ %.2.i34, %.loopexit.i71 ], [ %.2.i34, %middle.block788 ], [ %.2.i34, %bb.cs ], [ %.2.i34, %scalar.ph775 ] ; 2 uses
  %.6386.i.ph.i = phi ptr [ %1, %bb.bd ], [ %i.wo, %.loopexit.i71 ], [ %i.wh, %middle.block788 ], [ %i.wh, %bb.cs ], [ %i.wh, %scalar.ph775 ] ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.3.ph.i38, i64 1 ; 2 uses
  %i.zf = load i8, ptr %.3.ph.i38, align 1, !tbaa !14
  %i.zg = zext i8 %i.zf to i32                    ; 3 uses
  %i.zh = lshr i32 %i.zg, 4                       ; 2 uses
  %.not439.i219.i = icmp eq i32 %i.zh, 15
  br i1 %.not439.i219.i, label %.thread101.i, label %.lr.ph221.i

bb.cu:                                            ; preds = %.loopexit.i71, %bb.ch, %.thread125.i
  %.18.i.i65 = phi ptr [ %i.mk, %.loopexit.i71 ], [ %i.vd, %bb.ch ], [ %i.vb, %.thread125.i ]
  %i.zi = ptrtoint ptr %.18.i.i65 to i64
  %i.zj = sub i64 %i.zi, %i.mq
  %i.zk = trunc i64 %i.zj to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i54:                   ; preds = %.thread97.i, %bb.bm, %read_variable_length.exit22.i, %bb.bk, %bb.bh, %read_variable_length.exit.i102, %bb.bf, %.preheader150.i.preheader, %.preheader147.i.preheader, %.preheader150.i, %.preheader147.i, %.preheader140.i, %.preheader138.i, %.preheader140.i.preheader, %.preheader138.i.preheader, %.loopexit155.i, %read_variable_length.exit34.i, %bb.ci, %bb.ce, %read_variable_length.exit28.i, %.thread101.i
  %.10.i55 = phi ptr [ %.2.i34, %.loopexit155.i ], [ %i.or, %.preheader147.i ], [ %.20.i58, %read_variable_length.exit34.i ], [ %i.tn, %.preheader140.i ], [ %.18117.i, %bb.ce ], [ %i.tn, %read_variable_length.exit28.i ], [ %i.vx, %.preheader138.i ], [ %.4106.i, %.thread101.i ], [ %i.nn, %.preheader150.i ], [ %.8.i49, %bb.ci ], [ %i.vt, %.preheader138.i.preheader ], [ %i.tj, %.preheader140.i.preheader ], [ %i.nn, %read_variable_length.exit.i102 ], [ %.1473.i, %bb.bh ], [ %i.ng, %bb.bf ], [ %.1692.i, %bb.bm ], [ %i.or, %read_variable_length.exit22.i ], [ %i.oh, %bb.bk ], [ %i.nj, %.preheader150.i.preheader ], [ %i.on, %.preheader147.i.preheader ], [ %.11.i73, %.thread97.i ]
  %i.zl = ptrtoint ptr %.10.i55 to i64
  %i.zm = ptrtoint ptr %0 to i64
  %.neg.i.i56 = sub i64 %i.zm, %i.zl
  %i.zn = trunc i64 %.neg.i.i56 to i32
  %i.zo = add nsw i32 %i.zn, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.cv:                                            ; preds = %bb.c
  %i.zp = tail call i32 @LZ4_decompress_safe_partial_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %i.c)
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_decompress_safe_partial_withPrefix64k.exit:   ; preds = %LZ4_wildCopy32.exit.thread.i54, %bb.cu, %bb.bc, %bb.bb, %bb.ba, %LZ4_wildCopy32.exit.thread.i, %bb.az, %bb.g, %bb.f, %bb.e, %bb.cv, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.zp, %bb.cv ], [ 0, %bb.f ], [ -1, %bb.e ], [ %i.mc, %LZ4_wildCopy32.exit.thread.i ], [ -1, %bb.g ], [ %i.ly, %bb.az ], [ -1, %bb.ba ], [ %i.zo, %LZ4_wildCopy32.exit.thread.i54 ], [ -1, %bb.bc ], [ %i.zk, %bb.cu ], [ 0, %bb.bb ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_decompress_fast_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %._crit_edge77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %4 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %._crit_edge77, label %bb.j

._crit_edge77:                                    ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = sub nsw i64 0, %.pre-phi
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %._crit_edge77
  %.027 = phi ptr [ %0, %._crit_edge77 ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %1, %._crit_edge77 ], [ %i.ce, %._crit_edge ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 2 uses
  %i.l = load i8, ptr %.027, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = lshr i32 %i.m, 4                         ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 15
  br i1 %i.p, label %.preheader51, label %bb.c

.preheader51:                                     ; preds = %.thread, %.preheader51
  %i.q = phi ptr [ %i.t, %.preheader51 ], [ %i.k, %.thread ] ; 2 uses
  %.0.i15 = phi i64 [ %i.u, %.preheader51 ], [ 0, %.thread ]
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.u = add i64 %.0.i15, %i.s                    ; 2 uses
  %i.v = icmp eq i8 %i.r, -1
  br i1 %i.v, label %.preheader51, label %read_long_length_no_check.exit, !llvm.loop !4

read_long_length_no_check.exit:                   ; preds = %.preheader51
  %i.w = add i64 %i.u, 15
  br label %bb.c

bb.c:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.t, %read_long_length_no_check.exit ], [ %i.k, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.w, %read_long_length_no_check.exit ], [ %i.o, %.thread ] ; 4 uses
  %i.x = ptrtoint ptr %.086.i to i64
  %i.y = sub i64 %i.i, %i.x
  %i.z = icmp ult i64 %i.y, %.085.i
  br i1 %i.z, label %LZ4_decompress_unsafe_generic.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 11 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.i, %i.ac                     ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 12
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq ptr %i.aa, %i.f
  br i1 %i.af, label %bb.i, label %LZ4_decompress_unsafe_generic.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = and i32 %i.m, 15                        ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %.val = load i16, ptr %i.ab, align 1, !tbaa !31 ; 2 uses
  %i.ai = zext i16 %.val to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ak = icmp eq i32 %i.ag, 15
  br i1 %i.ak, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.f, %.preheader
  %i.al = phi ptr [ %i.ao, %.preheader ], [ %i.aj, %bb.f ] ; 2 uses
  %.0.i17 = phi i64 [ %i.ap, %.preheader ], [ 0, %bb.f ]
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.ap = add i64 %.0.i17, %i.an                  ; 2 uses
  %i.aq = icmp eq i8 %i.am, -1
  br i1 %i.aq, label %.preheader, label %read_long_length_no_check.exit18, !llvm.loop !4

read_long_length_no_check.exit18:                 ; preds = %.preheader
  %i.ar = add i64 %i.ap, 15
  br label %bb.g

bb.g:                                             ; preds = %read_long_length_no_check.exit18, %bb.f
  %.4 = phi ptr [ %i.ao, %read_long_length_no_check.exit18 ], [ %i.aj, %bb.f ]
  %.080.i = phi i64 [ %i.ar, %read_long_length_no_check.exit18 ], [ %i.ah, %bb.f ] ; 5 uses
  %i.as = add i64 %.080.i, 4                      ; 9 uses
  %i.at = icmp ult i64 %i.ad, %i.as
  %i.au = sub i64 %i.ac, %i.j
  %.not.i = icmp ult i64 %i.au, %i.ai
  %or.cond = select i1 %i.at, i1 true, i1 %.not.i
  br i1 %or.cond, label %LZ4_decompress_unsafe_generic.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = sub nsw i64 0, %i.ai
  %i.aw = getelementptr inbounds i8, ptr %i.aa, i64 %i.av ; 7 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %._crit_edge, label %iter.check140

iter.check140:                                    ; preds = %bb.h
  %min.iters.check126 = icmp ugt i64 %.080.i, -5
  %i.ax = add i16 %.val, -1
  %diff.check128 = icmp ult i16 %i.ax, 31
  %or.cond154 = select i1 %min.iters.check126, i1 true, i1 %diff.check128
  br i1 %or.cond154, label %.lr.ph.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %iter.check140
  %min.iters.check130 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check130, label %vec.epilog.ph144, label %vector.ph131

vector.ph131:                                     ; preds = %vector.main.loop.iter.check129
  %i.ay = and i64 %i.as, 28
  %n.vec132 = and i64 %i.as, -32                  ; 4 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.ph131, %vector.body133
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body133 ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index134 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load135 = load <16 x i8>, ptr %i.az, align 1, !tbaa !14
  %wide.load136 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index134 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <16 x i8> %wide.load135, ptr %i.bb, align 1, !tbaa !14
  store <16 x i8> %wide.load136, ptr %i.bc, align 1, !tbaa !14
  %index.next137 = add nuw i64 %index134, 32      ; 2 uses
  %i.bd = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.bd, label %middle.block138, label %vector.body133, !llvm.loop !244

middle.block138:                                  ; preds = %vector.body133
  %cmp.n139 = icmp eq i64 %i.as, %n.vec132
  br i1 %cmp.n139, label %._crit_edge, label %vec.epilog.iter.check141

vec.epilog.iter.check141:                         ; preds = %middle.block138
  %min.epilog.iters.check143 = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check143, label %.lr.ph.preheader, label %vec.epilog.ph144, !prof !45

vec.epilog.ph144:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check141
  %vec.epilog.resume.val145 = phi i64 [ %n.vec132, %vec.epilog.iter.check141 ], [ 0, %vector.main.loop.iter.check129 ]
  %n.vec146 = and i64 %i.as, -4                   ; 3 uses
  br label %vec.epilog.vector.body147

vec.epilog.vector.body147:                        ; preds = %vec.epilog.vector.body147, %vec.epilog.ph144
  %index148 = phi i64 [ %vec.epilog.resume.val145, %vec.epilog.ph144 ], [ %index.next150, %vec.epilog.vector.body147 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index148
  %wide.load149 = load <4 x i8>, ptr %i.be, align 1, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index148
  store <4 x i8> %wide.load149, ptr %i.bf, align 1, !tbaa !14
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.bg, label %vec.epilog.middle.block151, label %vec.epilog.vector.body147, !llvm.loop !245

vec.epilog.middle.block151:                       ; preds = %vec.epilog.vector.body147
  %cmp.n152 = icmp eq i64 %i.as, %n.vec146
  br i1 %cmp.n152, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check140, %vec.epilog.iter.check141, %vec.epilog.middle.block151
  %.0.i64.ph = phi i64 [ 0, %iter.check140 ], [ %n.vec132, %vec.epilog.iter.check141 ], [ %n.vec146, %vec.epilog.middle.block151 ] ; 3 uses
  %i.bh = add i64 %.080.i, 3
  %i.bi = sub i64 %i.bh, %.0.i64.ph
  %xtraiter168 = and i64 %.080.i, 3               ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i64.prol = phi i64 [ %i.bm, %.lr.ph.prol ], [ %.0.i64.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.i64.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
end_hunk_5
