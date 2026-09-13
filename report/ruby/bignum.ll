Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@bary_pack:bb.a
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
  %i.cs = ptrtoint ptr %.0481 to i64
  %i.ct = ptrtoint ptr %1 to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = mul i64 %5, %4                          ; 16 uses
  %.not323602 = icmp eq i64 %i.cu, 0
  br i1 %.not323602, label %ruby_nonempty_memcpy.exit, label %.lr.ph605

.lr.ph605:                                        ; preds = %bb.y, %bb.z
  %.0279603 = phi i64 [ %i.da, %bb.z ], [ %i.cu, %bb.y ] ; 7 uses
  %i.cw = getelementptr i8, ptr %1, i64 %.0279603
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !49
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %.critedge5.thread

bb.z:                                             ; preds = %.lr.ph605
  %i.da = add i64 %.0279603, -1                   ; 2 uses
  %.not323 = icmp eq i64 %i.da, 0
  br i1 %.not323, label %ruby_nonempty_memcpy.exit, label %.lr.ph605, !llvm.loop !21

.critedge5.thread:                                ; preds = %.lr.ph605
  %.not324501 = icmp ugt i64 %.0279603, %i.cv
  br i1 %.not324501, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge5.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 noundef range(i64 1, 0) %.0279603, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.z, %bb.y, %bb.aa
  %.0279559 = phi i64 [ %.0279603, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.z ] ; 3 uses
  %i.db = getelementptr i8, ptr %3, i64 %.0279559
  %i.dc = sub nuw i64 %i.cv, %.0279559
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.db, i8 noundef 0, i64 noundef %i.dc, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit364

bb.ab:                                            ; preds = %.critedge5.thread
  %.not.i362 = icmp eq i64 %i.cv, 0
  br i1 %.not.i362, label %ruby_nonempty_memcpy.exit364.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.cv, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit364

ruby_nonempty_memcpy.exit364:                     ; preds = %bb.ac, %ruby_nonempty_memcpy.exit
  %.0279558 = phi i64 [ %.0279559, %ruby_nonempty_memcpy.exit ], [ %.0279603, %bb.ac ]
  %.not324502 = phi i1 [ false, %ruby_nonempty_memcpy.exit ], [ true, %bb.ac ]
  %.not326 = phi i1 [ true, %ruby_nonempty_memcpy.exit ], [ false, %bb.ac ]
  %i.dd = icmp sgt i32 %spec.select, -1
  %i.de = and i32 %7, 128
  %.not325 = icmp eq i32 %i.de, 0
  %or.cond344 = or i1 %.not325, %i.dd
  br i1 %or.cond344, label %bytes_2comp.exit.thread, label %bb.ad

ruby_nonempty_memcpy.exit364.thread:              ; preds = %bb.ab
  %i.df = icmp sgt i32 %spec.select, -1
  %i.dg = and i32 %7, 128
  %.not325511 = icmp eq i32 %i.dg, 0
  %or.cond344512 = or i1 %.not325511, %i.df
  br i1 %or.cond344512, label %.thread526, label %bytes_2comp.exit.thread652

bb.ad:                                            ; preds = %ruby_nonempty_memcpy.exit364
  %.not24.i = icmp eq i64 %i.cv, 0
  br i1 %.not24.i, label %bytes_2comp.exit, label %iter.check

iter.check:                                       ; preds = %bb.ad
  %min.iters.check710.a = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check710.a, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check711 = icmp ult i64 %i.cv, 32
  br i1 %min.iters.check711, label %vec.epilog.ph, label %vector.ph712

vector.ph712:                                     ; preds = %vector.main.loop.iter.check
  %i.dh = and i64 %i.cv, 28
  %n.vec713 = and i64 %i.cv, -32                  ; 4 uses
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph712
  %index715 = phi i64 [ 0, %vector.ph712 ], [ %index.next718, %vector.body714 ] ; 2 uses
  %i.di = getelementptr i8, ptr %3, i64 %index715 ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16     ; 2 uses
  %wide.load716.a = load <16 x i8>, ptr %i.di, align 1, !tbaa !49
  %wide.load717 = load <16 x i8>, ptr %i.dj, align 1, !tbaa !49
  %i.dk = xor <16 x i8> %wide.load716.a, splat (i8 -1)
  %i.dl = xor <16 x i8> %wide.load717, splat (i8 -1)
  store <16 x i8> %i.dk, ptr %i.di, align 1, !tbaa !49
  store <16 x i8> %i.dl, ptr %i.dj, align 1, !tbaa !49
  %index.next718 = add nuw i64 %index715, 32      ; 2 uses
  %i.dm = icmp eq i64 %index.next718, %n.vec713
  br i1 %i.dm, label %middle.block719, label %vector.body714, !llvm.loop !212

middle.block719:                                  ; preds = %vector.body714
  %cmp.n720 = icmp eq i64 %i.cv, %n.vec713
  br i1 %cmp.n720, label %.lr.ph21.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block719
  %min.epilog.iters.check = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec713, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec721 = and i64 %i.cv, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index722 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next724, %vec.epilog.vector.body ] ; 2 uses
  %i.dn = getelementptr i8, ptr %3, i64 %index722 ; 2 uses
  %wide.load723 = load <4 x i8>, ptr %i.dn, align 1, !tbaa !49
  %i.do = xor <4 x i8> %wide.load723, splat (i8 -1)
  store <4 x i8> %i.do, ptr %i.dn, align 1, !tbaa !49
  %index.next724 = add nuw i64 %index722, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next724, %n.vec721
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n725 = icmp eq i64 %i.cv, %n.vec721
  br i1 %cmp.n725, label %.lr.ph21.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01719.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec713, %vec.epilog.iter.check ], [ %n.vec721, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01719.i = phi i64 [ %i.dt, %.lr.ph.i ], [ %.01719.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dq = getelementptr i8, ptr %3, i64 %.01719.i ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !49
  %i.ds = xor i8 %i.dr, -1
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !49
  %i.dt = add nuw i64 %.01719.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dt, %i.cv
  br i1 %exitcond.not.i, label %.lr.ph21.i.preheader, label %.lr.ph.i, !llvm.loop !214

.lr.ph21.i.preheader:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block719
  br label %.lr.ph21.i

bb.ae:                                            ; preds = %.lr.ph21.i
  %i.du = add nuw i64 %.120.i, 1                  ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.du, %i.cv
  br i1 %exitcond26.not.i, label %bytes_2comp.exit, label %.lr.ph21.i, !llvm.loop !215

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader, %bb.ae
  %.120.i = phi i64 [ %i.du, %bb.ae ], [ 0, %.lr.ph21.i.preheader ] ; 2 uses
  %i.dv = getelementptr i8, ptr %3, i64 %.120.i   ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !49
  %i.dx = add i8 %i.dw, 1                         ; 2 uses
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !49
  %.not.i365 = icmp eq i8 %i.dx, 0
  br i1 %.not.i365, label %bb.ae, label %bytes_2comp.exit.thread

bytes_2comp.exit:                                 ; preds = %bb.ae, %bb.ad
  br i1 %.not324502, label %bytes_2comp.exit.thread652, label %bytes_2comp.exit.thread

bytes_2comp.exit.thread652:                       ; preds = %ruby_nonempty_memcpy.exit364.thread, %bytes_2comp.exit
  %.0279557656 = phi i64 [ %.0279558, %bytes_2comp.exit ], [ %.0279603, %ruby_nonempty_memcpy.exit364.thread ]
  %i.dy = add i64 %.0279557656, -1
  %i.dz = icmp eq i64 %i.cv, %i.dy
  br i1 %i.dz, label %bb.af, label %.thread526

bb.af:                                            ; preds = %bytes_2comp.exit.thread652
  %i.ea = getelementptr i8, ptr %1, i64 %i.cv
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !49
  %i.ec = icmp eq i8 %i.eb, 1
  br i1 %i.ec, label %.thread530, label %.thread526

.thread526:                                       ; preds = %bytes_2comp.exit.thread652, %bb.af, %ruby_nonempty_memcpy.exit364.thread
  %i.ed = shl nsw i32 %spec.select, 1
  br label %.thread494

bytes_2comp.exit.thread:                          ; preds = %.lr.ph21.i, %bytes_2comp.exit, %ruby_nonempty_memcpy.exit364
  %i.ee = shl nsw i32 %spec.select, 1
  br i1 %.not326, label %.thread530, label %.thread494

.thread530:                                       ; preds = %bb.af, %bytes_2comp.exit.thread
  br label %.thread494

bb.ag:                                            ; preds = %.thread498
  %i.ef = ptrtoint ptr %3 to i64
  %i.eg = or i64 %5, %i.ef
  %i.eh = and i64 %i.eg, 3
  %i.ei = or i64 %i.eh, %6
  %or.cond353 = icmp eq i64 %i.ei, 0
  br i1 %or.cond353, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.ej = lshr exact i64 %5, 2
  %i.ek = ptrtoint ptr %.0481 to i64
  %i.el = ptrtoint ptr %1 to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 4 uses
  %i.en = ashr exact i64 %i.em, 2                 ; 5 uses
  %i.eo = mul i64 %i.ej, %4                       ; 20 uses
  %i.ep = and i32 %7, 1
  %.not315 = icmp eq i32 %i.ep, 0                 ; 2 uses
  %.not317 = icmp ugt i64 %i.en, %i.eo            ; 2 uses
  br i1 %.not317, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eq = icmp ugt i64 %i.en, 4611686018427387903
  br i1 %i.eq, label %bb.aj, label %rbimpl_size_mul_or_raise.exit, !prof !54

bb.aj:                                            ; preds = %bb.ai
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.en) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.ai
  br i1 %i.f, label %ruby_nonempty_memcpy.exit369, label %bb.ak

bb.ak:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.em, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit369

ruby_nonempty_memcpy.exit369:                     ; preds = %rbimpl_size_mul_or_raise.exit, %bb.ak
  %.not318592 = icmp eq i64 %i.eo, %i.en
  br i1 %.not318592, label %ruby_nonempty_memcpy.exit373, label %.lr.ph595.preheader

.lr.ph595.preheader:                              ; preds = %ruby_nonempty_memcpy.exit369
  %8 = getelementptr i8, ptr %3, i64 %i.em
  %9 = shl i64 %i.eo, 2
  %10 = sub i64 %9, %i.em
  tail call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 %10, i1 false), !tbaa !44
  br label %ruby_nonempty_memcpy.exit373

bb.al:                                            ; preds = %bb.ah
  %i.er = icmp ugt i64 %i.eo, 4611686018427387903
  br i1 %i.er, label %bb.am, label %rbimpl_size_mul_or_raise.exit370, !prof !54

bb.am:                                            ; preds = %bb.al
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.eo) #25
  unreachable

rbimpl_size_mul_or_raise.exit370:                 ; preds = %bb.al
  %.not.i371 = icmp eq i64 %i.eo, 0
  br i1 %.not.i371, label %ruby_nonempty_memcpy.exit373.thread, label %bb.an

bb.an:                                            ; preds = %rbimpl_size_mul_or_raise.exit370
  %i.es = shl nuw i64 %i.eo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.es, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit373

ruby_nonempty_memcpy.exit373:                     ; preds = %.lr.ph595.preheader, %ruby_nonempty_memcpy.exit369, %bb.an
  %.0272 = phi i32 [ 1, %bb.an ], [ 0, %.lr.ph595.preheader ], [ 0, %ruby_nonempty_memcpy.exit369 ] ; 5 uses
  %i.et = icmp sgt i32 %spec.select, -1
  %i.eu = and i32 %7, 128
  %.not319 = icmp eq i32 %i.eu, 0
  %or.cond355 = or i1 %.not319, %i.et
  br i1 %or.cond355, label %bary_2comp.exit.thread, label %bb.ao

ruby_nonempty_memcpy.exit373.thread:              ; preds = %rbimpl_size_mul_or_raise.exit370
  %i.ev = icmp sgt i32 %spec.select, -1
  %i.ew = and i32 %7, 128
  %.not319658 = icmp eq i32 %i.ew, 0
  %or.cond355659 = or i1 %.not319658, %i.ev
  br i1 %or.cond355659, label %bary_2comp.exit.thread.thread, label %bary_2comp.exit.thread664

bary_2comp.exit.thread.thread:                    ; preds = %ruby_nonempty_memcpy.exit373.thread
  %i.ex = and i32 %7, 80
  %.not320.not667 = icmp eq i32 %i.ex, 16
  br label %.loopexit554

bb.ao:                                            ; preds = %ruby_nonempty_memcpy.exit373
  %.not27.i = icmp eq i64 %i.eo, 0
  br i1 %.not27.i, label %bary_2comp.exit, label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %bb.ao, %bb.ap
  %.023.i = phi i64 [ %i.fa, %bb.ap ], [ 0, %bb.ao ] ; 5 uses
  %i.ey = getelementptr [4 x i8], ptr %3, i64 %.023.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !44 ; 2 uses
  %.not.i375 = icmp eq i32 %i.ez, 0
  br i1 %.not.i375, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i374
  %i.fa = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i376 = icmp eq i64 %i.fa, %i.eo
  br i1 %exitcond.not.i376, label %bary_2comp.exit, label %.lr.ph.i374, !llvm.loop !8

bb.aq:                                            ; preds = %.lr.ph.i374
  %i.fb = getelementptr [4 x i8], ptr %3, i64 %.023.i
  %i.fc = sub i32 0, %i.ez
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !44
  %.124.i = add i64 %.023.i, 1                    ; 4 uses
  %i.fd = icmp ult i64 %.124.i, %i.eo
  br i1 %i.fd, label %.lr.ph26.i.preheader, label %bary_2comp.exit.thread

.lr.ph26.i.preheader:                             ; preds = %bb.aq
  %i.fe = xor i64 %.023.i, -1
  %i.ff = add i64 %i.eo, %i.fe                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ff, 8
  br i1 %min.iters.check, label %.lr.ph26.i.preheader729, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.preheader
  %n.vec = and i64 %i.ff, -8                      ; 3 uses
  %i.fg = add i64 %.124.i, %n.vec
  %i.fh = getelementptr [4 x i8], ptr %3, i64 %.124.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %index ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fi, align 4, !tbaa !44
  %wide.load696 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !44
  %i.fk = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.fl = xor <4 x i32> %wide.load696, splat (i32 -1)
  store <4 x i32> %i.fk, ptr %i.fi, align 4, !tbaa !44
  store <4 x i32> %i.fl, ptr %i.fj, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit.thread, label %.lr.ph26.i.preheader729

.lr.ph26.i.preheader729:                          ; preds = %.lr.ph26.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.fg, %middle.block ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader729, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader729 ] ; 2 uses
  %i.fn = getelementptr [4 x i8], ptr %3, i64 %.125.i ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !44
  %i.fp = xor i32 %i.fo, -1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !44
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %i.eo
  br i1 %exitcond31.not.i, label %bary_2comp.exit.thread, label %.lr.ph26.i, !llvm.loop !217

bary_2comp.exit:                                  ; preds = %bb.ap, %bb.ao
  br i1 %.not317, label %bary_2comp.exit.thread664, label %bary_2comp.exit.thread

bary_2comp.exit.thread664:                        ; preds = %ruby_nonempty_memcpy.exit373.thread, %bary_2comp.exit
  %i.fq = add nsw i64 %i.en, -1
  %i.fr = icmp eq i64 %i.eo, %i.fq
  br i1 %i.fr, label %bb.ar, label %bary_2comp.exit.thread

bb.ar:                                            ; preds = %bary_2comp.exit.thread664
  %i.fs = getelementptr [4 x i8], ptr %1, i64 %i.eo
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !44
  %i.fu = icmp ne i32 %i.ft, 1
  %spec.select356 = zext i1 %i.fu to i32
  br label %bary_2comp.exit.thread

bary_2comp.exit.thread:                           ; preds = %.lr.ph26.i, %middle.block, %bb.aq, %bb.ar, %bary_2comp.exit, %bary_2comp.exit.thread664, %ruby_nonempty_memcpy.exit373
  %.2274 = phi i32 [ %.0272, %ruby_nonempty_memcpy.exit373 ], [ %.0272, %bary_2comp.exit ], [ %spec.select356, %bb.ar ], [ 1, %bary_2comp.exit.thread664 ], [ %.0272, %bb.aq ], [ %.0272, %middle.block ], [ %.0272, %.lr.ph26.i ] ; 3 uses
  %i.fv = and i32 %7, 80
  %.not320.not = icmp eq i32 %i.fv, 16            ; 4 uses
  %i.fw = icmp ne i64 %i.eo, 0
  %or.cond608 = and i1 %.not320.not, %i.fw
  br i1 %or.cond608, label %.lr.ph598.preheader, label %.loopexit554

.lr.ph598.preheader:                              ; preds = %bary_2comp.exit.thread
  %min.iters.check698 = icmp ult i64 %i.eo, 8
  br i1 %min.iters.check698, label %.lr.ph598.preheader728, label %vector.ph699

vector.ph699:                                     ; preds = %.lr.ph598.preheader
  %n.vec700 = and i64 %i.eo, -8                   ; 3 uses
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph699
  %index702 = phi i64 [ 0, %vector.ph699 ], [ %index.next705, %vector.body701 ] ; 2 uses
  %i.fx = getelementptr [4 x i8], ptr %3, i64 %index702 ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 16     ; 2 uses
  %wide.load703.a = load <4 x i32>, ptr %i.fx, align 4, !tbaa !44
  %wide.load704 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !44
  %i.fz = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load703.a)
  %i.ga = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load704)
  store <4 x i32> %i.fz, ptr %i.fx, align 4, !tbaa !44
  store <4 x i32> %i.ga, ptr %i.fy, align 4, !tbaa !44
  %index.next705 = add nuw i64 %index702, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next705, %n.vec700
  br i1 %i.gb, label %middle.block706, label %vector.body701, !llvm.loop !218

middle.block706:                                  ; preds = %vector.body701
  %cmp.n707 = icmp eq i64 %i.eo, %n.vec700
  br i1 %cmp.n707, label %.loopexit554, label %.lr.ph598.preheader728

.lr.ph598.preheader728:                           ; preds = %.lr.ph598.preheader, %middle.block706
  %.0269597.ph = phi i64 [ 0, %.lr.ph598.preheader ], [ %n.vec700, %middle.block706 ]
  br label %.lr.ph598

.lr.ph598:                                        ; preds = %.lr.ph598.preheader728, %.lr.ph598
  %.0269597 = phi i64 [ %i.gf, %.lr.ph598 ], [ %.0269597.ph, %.lr.ph598.preheader728 ] ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %3, i64 %.0269597 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !44
  %i.ge = tail call noundef i32 @llvm.bswap.i32(i32 %i.gd)
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !44
  %i.gf = add nuw i64 %.0269597, 1                ; 2 uses
  %exitcond628.not = icmp eq i64 %i.gf, %i.eo
  br i1 %exitcond628.not, label %.loopexit554, label %.lr.ph598, !llvm.loop !219

.loopexit554:                                     ; preds = %.lr.ph598, %middle.block706, %bary_2comp.exit.thread.thread, %bary_2comp.exit.thread
  %.not320.not670 = phi i1 [ %.not320.not667, %bary_2comp.exit.thread.thread ], [ %.not320.not, %bary_2comp.exit.thread ], [ %.not320.not, %middle.block706 ], [ %.not320.not, %.lr.ph598 ]
  %.2274669 = phi i32 [ 1, %bary_2comp.exit.thread.thread ], [ %.2274, %bary_2comp.exit.thread ], [ %.2274, %middle.block706 ], [ %.2274, %.lr.ph598 ]
  %i.gg = xor i1 %.not315, %.not320.not670
  %i.gh = icmp eq i64 %4, 0
  %or.cond611.not = or i1 %i.gh, %i.gg
  br i1 %or.cond611.not, label %.loopexit, label %.lr.ph601.preheader

.lr.ph601.preheader:                              ; preds = %.loopexit554
  %xtraiter743 = and i64 %4, 1
  %i.gi = icmp eq i64 %4, 1
  br i1 %i.gi, label %.lr.ph601.epil.preheader, label %.lr.ph601.preheader.new

.lr.ph601.preheader.new:                          ; preds = %.lr.ph601.preheader
  %unroll_iter746 = and i64 %4, -2
  br label %.lr.ph601

.lr.ph601:                                        ; preds = %bary_swap.exit.1, %.lr.ph601.preheader.new
  %.0264600 = phi ptr [ %3, %.lr.ph601.preheader.new ], [ %i.gp, %bary_swap.exit.1 ] ; 3 uses
  %niter747 = phi i64 [ 0, %.lr.ph601.preheader.new ], [ %niter747.next.1, %bary_swap.exit.1 ]
  %i.gj = getelementptr i8, ptr %.0264600, i64 %5 ; 4 uses
  %.01112.i = getelementptr i8, ptr %i.gj, i64 -4 ; 2 uses
  %i.gk = icmp ult ptr %.0264600, %.01112.i
  br i1 %i.gk, label %.lr.ph.i377, label %bary_swap.exit

.lr.ph.i377:                                      ; preds = %.lr.ph601, %.lr.ph.i377
  %.01114.i = phi ptr [ %.011.i, %.lr.ph.i377 ], [ %.01112.i, %.lr.ph601 ] ; 3 uses
  %.013.i = phi ptr [ %i.gn, %.lr.ph.i377 ], [ %.0264600, %.lr.ph601 ] ; 3 uses
  %i.gl = load i32, ptr %.013.i, align 4, !tbaa !44
  %i.gm = load i32, ptr %.01114.i, align 4, !tbaa !44
  store i32 %i.gm, ptr %.013.i, align 4, !tbaa !44
  store i32 %i.gl, ptr %.01114.i, align 4, !tbaa !44
  %i.gn = getelementptr i8, ptr %.013.i, i64 4    ; 2 uses
  %.011.i = getelementptr i8, ptr %.01114.i, i64 -4 ; 2 uses
  %i.go = icmp ult ptr %i.gn, %.011.i
  br i1 %i.go, label %.lr.ph.i377, label %bary_swap.exit, !llvm.loop !22

bary_swap.exit:                                   ; preds = %.lr.ph.i377, %.lr.ph601
  %i.gp = getelementptr i8, ptr %i.gj, i64 %5     ; 3 uses
  %.01112.i.1 = getelementptr i8, ptr %i.gp, i64 -4 ; 2 uses
  %i.gq = icmp ult ptr %i.gj, %.01112.i.1
  br i1 %i.gq, label %.lr.ph.i377.1, label %bary_swap.exit.1

.lr.ph.i377.1:                                    ; preds = %bary_swap.exit, %.lr.ph.i377.1
  %.01114.i.1 = phi ptr [ %.011.i.1, %.lr.ph.i377.1 ], [ %.01112.i.1, %bary_swap.exit ] ; 3 uses
  %.013.i.1 = phi ptr [ %i.gt, %.lr.ph.i377.1 ], [ %i.gj, %bary_swap.exit ] ; 3 uses
  %i.gr = load i32, ptr %.013.i.1, align 4, !tbaa !44
  %i.gs = load i32, ptr %.01114.i.1, align 4, !tbaa !44
  store i32 %i.gs, ptr %.013.i.1, align 4, !tbaa !44
  store i32 %i.gr, ptr %.01114.i.1, align 4, !tbaa !44
  %i.gt = getelementptr i8, ptr %.013.i.1, i64 4  ; 2 uses
end_hunk_0
