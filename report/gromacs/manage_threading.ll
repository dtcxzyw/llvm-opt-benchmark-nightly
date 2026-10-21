Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/manage_threading?download=true
inline.NumInlined: 457
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z22setup_bonded_threadingP18bonded_threading_tibRK22InteractionDefinitions:bb.a
.critedge.loopexit.i:                             ; preds = %bb.k, %bb.j, %.preheader.i
  %.194.ph.in.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ %indvars.iv.i, %bb.j ], [ %indvars.iv.i, %.preheader.i ]
  %.194.ph.i = trunc i64 %.194.ph.in.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.lr.ph.split.i
  %.194.i = phi i32 [ %i.dp, %.lr.ph.split.i ], [ %.194.ph.i, %.critedge.loopexit.i ]
  %i.eh = load i32, ptr %i.l, align 8, !tbaa !45
  %i.ei = mul nsw i32 %i.eh, 54
  %i.ej = add nsw i32 %i.ei, %.095137.i
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ek
  store i32 %.194.i, ptr %i.el, align 4, !tbaa !13
  %i.em = add nuw i32 %.095137.i, 1
  %exitcond157.not.i = icmp eq i32 %.095137.i, %.fr6
  br i1 %exitcond157.not.i, label %.loopexit133.i, label %.lr.ph.split.i, !llvm.loop !77

bb.l:                                             ; preds = %bb.h
  %i.en = sext i32 %.089145.i to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.en ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = trunc nuw nsw i64 %indvars.iv159.i to i32
  store i32 %i.eq, ptr %i.ep, align 8, !tbaa !118
  store ptr %i.x, ptr %i.eo, align 8, !tbaa !119
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 %i.bw, ptr %i.er, align 4, !tbaa !120
  %i.es = load i32, ptr %i.l, align 8, !tbaa !45
  %i.et = sext i32 %i.es to i64
  %i.eu = mul nsw i64 %indvars.iv159.i, %i.et
  %i.ev = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eu
  store i32 0, ptr %i.ew, align 4, !tbaa !13
  %i.ex = add nuw nsw i32 %.089145.i, 1
  br label %.loopexit133.i

.loopexit133.i.loopexit.unr-lcssa:                ; preds = %.lr.ph140.i.new
  br i1 %lcmp.mod148.not, label %.loopexit133.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit133.i.loopexit.unr-lcssa, %.lr.ph140.i
  %.096139.i.epil.init = phi i32 [ 0, %.lr.ph140.i ], [ %i.br, %.loopexit133.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.096139.i.epil = phi i32 [ %.096139.i.epil.init, %.epil.preheader ], [ %i.fd, %bb.m ] ; 2 uses
  %epil.iter147 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter147.next, %bb.m ]
  %i.ey = load i32, ptr %i.l, align 8, !tbaa !45
  %i.ez = mul nsw i32 %i.ey, %i.at
  %i.fa = add nsw i32 %i.ez, %.096139.i.epil
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.fb
  store i32 0, ptr %i.fc, align 4, !tbaa !13
  %i.fd = add nuw i32 %.096139.i.epil, 1
  %epil.iter147.next = add i32 %epil.iter147, 1   ; 2 uses
  %epil.iter147.cmp.not = icmp eq i32 %epil.iter147.next, %xtraiter146
  br i1 %epil.iter147.cmp.not, label %.loopexit133.i, label %bb.m, !llvm.loop !78

.loopexit133.i.loopexit144.unr-lcssa:             ; preds = %.critedge.us.i
  br i1 %lcmp.mod.not, label %.loopexit133.i, label %.critedge.us.i.epil.preheader

.critedge.us.i.epil.preheader:                    ; preds = %.loopexit133.i.loopexit144.unr-lcssa, %.critedge.us.preheader.i
  %.095137.us.i.epil.init = phi i32 [ 0, %.critedge.us.preheader.i ], [ %i.dm, %.loopexit133.i.loopexit144.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %.critedge.us.i.epil

.critedge.us.i.epil:                              ; preds = %.critedge.us.i.epil, %.critedge.us.i.epil.preheader
  %.095137.us.i.epil = phi i32 [ %i.fm, %.critedge.us.i.epil ], [ %.095137.us.i.epil.init, %.critedge.us.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.critedge.us.i.epil ], [ 0, %.critedge.us.i.epil.preheader ]
  %i.fe = mul nsw i32 %.095137.us.i.epil, %i.by
  %i.ff = sdiv i32 %i.fe, %.fr6
  %i.fg = mul nsw i32 %i.ff, %i.bx
  %i.fh = load i32, ptr %i.l, align 8, !tbaa !45
  %i.fi = mul nsw i32 %i.fh, %i.ca
  %i.fj = add nsw i32 %i.fi, %.095137.us.i.epil
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.fk
  store i32 %i.fg, ptr %i.fl, align 4, !tbaa !13
  %i.fm = add nuw i32 %.095137.us.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit133.i, label %.critedge.us.i.epil, !llvm.loop !79

.loopexit133.i:                                   ; preds = %.loopexit133.i.loopexit144.unr-lcssa, %.critedge.us.i.epil, %.critedge.i, %.loopexit133.i.loopexit.unr-lcssa, %bb.m, %bb.l, %bb.i, %.preheader132.i, %bb.c
  %.292.i = phi i64 [ %.090144.i, %bb.c ], [ %.191122189.i, %.preheader132.i ], [ %.191.i, %bb.l ], [ %.191.i, %bb.i ], [ %.191122189.i, %.loopexit133.i.loopexit.unr-lcssa ], [ %.191.i, %.critedge.i ], [ %.191122189.i, %bb.m ], [ %.191.i, %.critedge.us.i.epil ], [ %.191.i, %.loopexit133.i.loopexit144.unr-lcssa ]
  %.2.i = phi i32 [ %.089145.i, %bb.c ], [ %.089145.i, %.preheader132.i ], [ %i.ex, %bb.l ], [ %.089145.i, %bb.i ], [ %.089145.i, %.loopexit133.i.loopexit.unr-lcssa ], [ %.089145.i, %.critedge.i ], [ %.089145.i, %bb.m ], [ %.089145.i, %.critedge.us.i.epil ], [ %.089145.i, %.loopexit133.i.loopexit144.unr-lcssa ] ; 8 uses
  %indvars.iv.next160.i = add nuw nsw i64 %indvars.iv159.i, 1 ; 2 uses
  %.not129.i = icmp eq i64 %indvars.iv.next160.i, 95
  br i1 %.not129.i, label %bb.b, label %bb.c

iter.check:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1520) %6, ptr noundef nonnull align 8 dereferenceable(1520) %7, i64 1520, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.fn = zext nneg i32 %.2.i to i64              ; 9 uses
  %i.fo = shl nuw nsw i64 %i.fn, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %4, i8 0, i64 %i.fo, i1 false), !tbaa !13
  %min.iters.check = icmp ult i32 %.2.i, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check62 = icmp ult i32 %.2.i, 17
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fp = and i64 %i.fn, 15                       ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  %i.fr = select i1 %i.fq, i64 16, i64 %i.fp      ; 2 uses
  %n.vec = sub nsw i64 %i.fn, %i.fr               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hj, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hk, %vector.body ]
  %vec.phi64 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hl, %vector.body ]
  %vec.phi65 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hm, %vector.body ]
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %index ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %index ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 128
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %index ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 192
  %wide.vec = load <8 x ptr>, ptr %i.fs, align 8, !tbaa !119
  %strided.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.vec66 = load <8 x ptr>, ptr %i.fu, align 8, !tbaa !119
  %strided.vec67 = shufflevector <8 x ptr> %wide.vec66, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.vec68 = load <8 x ptr>, ptr %i.fw, align 8, !tbaa !119
  %strided.vec69 = shufflevector <8 x ptr> %wide.vec68, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.vec70 = load <8 x ptr>, ptr %i.fy, align 8, !tbaa !119
  %strided.vec71 = shufflevector <8 x ptr> %wide.vec70, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %strided.vec, i64 8
  %wide.gep72 = getelementptr inbounds nuw i8, <4 x ptr> %strided.vec67, i64 8
  %wide.gep73 = getelementptr inbounds nuw i8, <4 x ptr> %strided.vec69, i64 8
  %wide.gep74 = getelementptr inbounds nuw i8, <4 x ptr> %strided.vec71, i64 8
  %wide.masked.gather = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !43
  %wide.masked.gather75 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep72, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !43
  %wide.masked.gather76 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep73, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !43
  %wide.masked.gather77 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep74, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !43
  %wide.masked.gather78 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %strided.vec, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !44 ; 2 uses
  %wide.masked.gather79 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %strided.vec67, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !44 ; 2 uses
  %wide.masked.gather80 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %strided.vec69, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !44 ; 2 uses
  %wide.masked.gather81 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %strided.vec71, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !44 ; 2 uses
  %i.fz = ptrtoint <4 x ptr> %wide.masked.gather to <4 x i64>
  %i.ga = ptrtoint <4 x ptr> %wide.masked.gather75 to <4 x i64>
  %i.gb = ptrtoint <4 x ptr> %wide.masked.gather76 to <4 x i64>
  %i.gc = ptrtoint <4 x ptr> %wide.masked.gather77 to <4 x i64>
  %i.gd = ptrtoint <4 x ptr> %wide.masked.gather78 to <4 x i64>
  %i.ge = ptrtoint <4 x ptr> %wide.masked.gather79 to <4 x i64>
  %i.gf = ptrtoint <4 x ptr> %wide.masked.gather80 to <4 x i64>
  %i.gg = ptrtoint <4 x ptr> %wide.masked.gather81 to <4 x i64>
  %i.gh = sub <4 x i64> %i.fz, %i.gd
  %i.gi = sub <4 x i64> %i.ga, %i.ge
  %i.gj = sub <4 x i64> %i.gb, %i.gf
  %i.gk = sub <4 x i64> %i.gc, %i.gg
  %i.gl = lshr exact <4 x i64> %i.gh, splat (i64 2)
  %i.gm = lshr exact <4 x i64> %i.gi, splat (i64 2)
  %i.gn = lshr exact <4 x i64> %i.gj, splat (i64 2)
  %i.go = lshr exact <4 x i64> %i.gk, splat (i64 2)
  %i.gp = trunc <4 x i64> %i.gl to <4 x i32>
  %i.gq = trunc <4 x i64> %i.gm to <4 x i32>
  %i.gr = trunc <4 x i64> %i.gn to <4 x i32>
  %i.gs = trunc <4 x i64> %i.go to <4 x i32>
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ft, i64 76
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 140
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 204
  %wide.vec82 = load <16 x i32>, ptr %i.gt, align 4, !tbaa !120
  %strided.vec83 = shufflevector <16 x i32> %wide.vec82, <16 x i32> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %wide.vec84 = load <16 x i32>, ptr %i.gu, align 4, !tbaa !120
  %strided.vec85 = shufflevector <16 x i32> %wide.vec84, <16 x i32> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %wide.vec86 = load <16 x i32>, ptr %i.gv, align 4, !tbaa !120
  %strided.vec87 = shufflevector <16 x i32> %wide.vec86, <16 x i32> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %wide.vec88 = load <16 x i32>, ptr %i.gw, align 4, !tbaa !120
  %strided.vec89 = shufflevector <16 x i32> %wide.vec88, <16 x i32> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.gx = add nsw <4 x i32> %strided.vec83, splat (i32 1)
  %i.gy = add nsw <4 x i32> %strided.vec85, splat (i32 1)
  %i.gz = add nsw <4 x i32> %strided.vec87, splat (i32 1)
  %i.ha = add nsw <4 x i32> %strided.vec89, splat (i32 1)
  %i.hb = sdiv <4 x i32> %i.gp, %i.gx
  %i.hc = sdiv <4 x i32> %i.gq, %i.gy
  %i.hd = sdiv <4 x i32> %i.gr, %i.gz
  %i.he = sdiv <4 x i32> %i.gs, %i.ha
  %i.hf = mul nsw <4 x i32> %i.hb, %strided.vec83
  %i.hg = mul nsw <4 x i32> %i.hc, %strided.vec85
  %i.hh = mul nsw <4 x i32> %i.hd, %strided.vec87
  %i.hi = mul nsw <4 x i32> %i.he, %strided.vec89
  %i.hj = add <4 x i32> %i.hf, %vec.phi           ; 2 uses
  %i.hk = add <4 x i32> %i.hg, %vec.phi63         ; 2 uses
  %i.hl = add <4 x i32> %i.hh, %vec.phi64         ; 2 uses
  %i.hm = add <4 x i32> %i.hi, %vec.phi65         ; 2 uses
  %wide.gep90 = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather78, i64 4
  %wide.gep91 = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather79, i64 4
  %wide.gep92 = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather80, i64 4
  %wide.gep93 = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather81, i64 4
  %wide.masked.gather94 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep90, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !13
  %wide.masked.gather95 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep91, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !13
  %wide.masked.gather96 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep92, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !13
  %wide.masked.gather97 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep93, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !13
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %8 = shufflevector <4 x i32> %wide.masked.gather94, <4 x i32> %wide.masked.gather95, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %8, ptr %i.hn, align 4, !tbaa !13
  %9 = shufflevector <4 x i32> %wide.masked.gather96, <4 x i32> %wide.masked.gather97, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %9, ptr %i.ho, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !80

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hk, %i.hj
  %bin.rdx98 = add <4 x i32> %i.hl, %bin.rdx
  %bin.rdx99 = add <4 x i32> %i.hm, %bin.rdx98
  %i.hq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx99) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.fr, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.hq, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hr = and i64 %i.fn, 3                        ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  %i.ht = select i1 %i.hs, i64 4, i64 %i.hr
  %n.vec100 = sub nsw i64 %i.fn, %i.ht            ; 2 uses
  %i.hu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi102 = phi <4 x i32> [ %i.hu, %vec.epilog.ph ], [ %i.if, %vec.epilog.vector.body ]
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %index101 ; 2 uses
  %wide.vec103 = load <8 x ptr>, ptr %i.hv, align 8, !tbaa !119
  %strided.vec104 = shufflevector <8 x ptr> %wide.vec103, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.gep105 = getelementptr inbounds nuw i8, <4 x ptr> %strided.vec104, i64 8
  %wide.masked.gather106 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep105, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !43
  %wide.masked.gather107 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %strided.vec104, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !44 ; 2 uses
  %i.hw = ptrtoint <4 x ptr> %wide.masked.gather106 to <4 x i64>
  %i.hx = ptrtoint <4 x ptr> %wide.masked.gather107 to <4 x i64>
  %i.hy = sub <4 x i64> %i.hw, %i.hx
  %i.hz = lshr exact <4 x i64> %i.hy, splat (i64 2)
  %i.ia = trunc <4 x i64> %i.hz to <4 x i32>
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %wide.vec108 = load <16 x i32>, ptr %i.ib, align 4, !tbaa !120
  %strided.vec109 = shufflevector <16 x i32> %wide.vec108, <16 x i32> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.ic = add nsw <4 x i32> %strided.vec109, splat (i32 1)
  %i.id = sdiv <4 x i32> %i.ia, %i.ic
  %i.ie = mul nsw <4 x i32> %i.id, %strided.vec109
  %i.if = add <4 x i32> %i.ie, %vec.phi102        ; 2 uses
  %wide.gep110 = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather107, i64 4
  %wide.masked.gather111 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep110, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !13
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index101
  store <4 x i32> %wide.masked.gather111, ptr %i.ig, align 4, !tbaa !13
  %index.next112 = add nuw i64 %index101, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next112, %n.vec100
  br i1 %i.ih, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ii = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.if)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec100, %vec.epilog.middle.block ]
  %.04854.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.hq, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader53.i.i:                                 ; preds = %vec.epilog.scalar.ph
  %i.ij = load i32, ptr %0, align 8, !tbaa !38    ; 2 uses
  %.not61.i.i = icmp slt i32 %i.ij, 1
  br i1 %.not61.i.i, label %_ZL26divide_bondeds_by_localityP18bonded_threading_tiN3gmx16EnumerationArrayI19InteractionFunction12ilist_data_tLS3_95EEE.exit.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %.preheader53.i.i
  %.not130.i = icmp eq i32 %.2.i, 1
  %i.ik = load ptr, ptr %i.m, align 8, !tbaa !44  ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.im = load i32, ptr %i.il, align 4            ; 5 uses
  %i.in = add i32 %i.im, 1
  %i.io = load ptr, ptr %6, align 8               ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = sext i32 %i.in to i64                   ; 4 uses
  %i.ir = add nsw i64 %i.fn, -1                   ; 2 uses
  %xtraiter152 = and i64 %i.ir, 7                 ; 3 uses
  %i.is = add nsw i32 %.2.i, -2
  %i.it = icmp ult i32 %i.is, 7
  %unroll_iter157 = and i64 %i.ir, -8
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod156 = icmp ne i64 %xtraiter152, 0
  %broadcast.splatinsert117 = insertelement <8 x i64> poison, i64 %i.iq, i64 0
  %broadcast.splat118 = shufflevector <8 x i64> %broadcast.splatinsert117, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.iu = mul nsw <8 x i64> %broadcast.splat118, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.iv = shl nsw i64 %i.iq, 3
  %broadcast.splatinsert121 = insertelement <8 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat122 = shufflevector <8 x i64> %broadcast.splatinsert121, <8 x i64> poison, <8 x i32> zeroinitializer
  %xtraiter160 = and i64 %i.fn, 3                 ; 3 uses
  %i.iw = icmp ult i32 %.2.i, 4
  %unroll_iter164 = and i64 %i.fn, 2147483644
  %lcmp.mod162.not = icmp eq i64 %xtraiter160, 0
  %lcmp.mod163 = icmp ne i64 %xtraiter160, 0
  br label %bb.n

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.04854.i.i = phi i32 [ %i.jm, %vec.epilog.scalar.ph ], [ %.04854.i.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.i.i ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !119 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !43
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !44 ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = lshr exact i64 %i.je, 2
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !120 ; 2 uses
  %i.jj = add nsw i32 %i.ji, 1
  %i.jk = sdiv i32 %i.jg, %i.jj
  %i.jl = mul nsw i32 %i.jk, %i.ji
  %i.jm = add nsw i32 %i.jl, %.04854.i.i          ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !13
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.i
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !13
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.fn
  br i1 %exitcond.not.i.i, label %.preheader53.i.i, label %vec.epilog.scalar.ph, !llvm.loop !82

bb.n:                                             ; preds = %.epilog-lcssa, %.lr.ph64.i.i
  %i.jq = phi i32 [ %i.ij, %.lr.ph64.i.i ], [ %i.pv, %.epilog-lcssa ]
  %.04363.i.i = phi i32 [ 1, %.lr.ph64.i.i ], [ %i.pu, %.epilog-lcssa ] ; 8 uses
  %.04662.i.i = phi i32 [ 0, %.lr.ph64.i.i ], [ %.147.lcssa.i.i, %.epilog-lcssa ] ; 6 uses
  %i.jr = mul nsw i32 %.04363.i.i, %i.jm
  %i.js = sdiv i32 %i.jr, %i.jq                   ; 5 uses
  %i.jt = icmp slt i32 %.04662.i.i, %i.js
  br i1 %i.jt, label %.preheader51.i.preheader.i, label %.preheader52.i.i

.preheader51.i.preheader.i:                       ; preds = %bb.n
  br i1 %.not130.i, label %.preheader51.i.preheader.split.us.i, label %.preheader51.i.i

.preheader51.i.preheader.split.us.i:              ; preds = %.preheader51.i.preheader.i
  %i.ju = load ptr, ptr %i.ip, align 8, !tbaa !43
  %i.jv = load ptr, ptr %i.io, align 8, !tbaa !44 ; 3 uses
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %.promoted.i = load i32, ptr %4, align 4, !tbaa !13
  %i.jz = sext i32 %.promoted.i to i64            ; 3 uses
  %i.ka = shl i64 %i.jy, 30
  %i.kb = ashr i64 %i.ka, 32                      ; 2 uses
  %i.kc = add i32 %.04662.i.i, %i.im              ; 3 uses
  %i.kd = tail call i32 @llvm.smax.i32(i32 %i.js, i32 %i.kc)
  %i.ke = icmp slt i32 %i.kc, %i.js
  %i.kf = zext i1 %i.ke to i32                    ; 2 uses
  %i.kg = add i32 %i.kc, %i.kf
  %i.kh = sub i32 %i.kd, %i.kg
  %i.ki = udiv i32 %i.kh, %i.im
  %i.kj = add i32 %i.ki, %i.kf                    ; 2 uses
  %i.kk = zext i32 %i.kj to i64
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %min.iters.check114 = icmp ult i32 %i.kj, 7
  br i1 %min.iters.check114, label %.preheader51.i.us.i.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.preheader51.i.preheader.split.us.i
  %n.vec116 = and i64 %i.kl, 8589934584           ; 4 uses
  %i.km = mul i64 %n.vec116, %i.iq
  %i.kn = add i64 %i.km, %i.jz                    ; 2 uses
  %i.ko = trunc i64 %n.vec116 to i32
  %i.kp = mul i32 %i.im, %i.ko
  %i.kq = add i32 %.04662.i.i, %i.kp              ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.kb, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <8 x i64> poison, i64 %i.jz, i64 0
  %broadcast.splat120 = shufflevector <8 x i64> %broadcast.splatinsert119, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat120, %i.iu
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph115
  %index124 = phi i64 [ 0, %vector.ph115 ], [ %index.next128, %vector.body123 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph115 ], [ %vec.ind.next, %vector.body123 ] ; 2 uses
  %index.next128 = add nuw i64 %index124, 8       ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, %broadcast.splat122
  %i.kr = icmp eq i64 %index.next128, %n.vec116
  br i1 %i.kr, label %middle.block129, label %vector.body123, !llvm.loop !83

middle.block129:                                  ; preds = %vector.body123
  %i.ks = add nsw <8 x i64> %vec.ind, %broadcast.splat118 ; 2 uses
  %wide.gep125 = getelementptr [4 x i8], ptr %i.jv, <8 x i64> %i.ks
  %wide.gep126 = getelementptr i8, <8 x ptr> %wide.gep125, i64 4
  %i.kt = icmp slt <8 x i64> %i.ks, %broadcast.splat ; 2 uses
  %wide.masked.gather127 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep126, <8 x i1> %i.kt, <8 x i32> poison), !tbaa !13
  %predphi = select <8 x i1> %i.kt, <8 x i32> %wide.masked.gather127, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2147483647>
  %i.ku = extractelement <8 x i32> %predphi, i64 7
  %cmp.n = icmp eq i64 %i.kl, %n.vec116
  br i1 %cmp.n, label %.preheader52.i.loopexit.split.us.i, label %.preheader51.i.us.i.preheader

.preheader51.i.us.i.preheader:                    ; preds = %.preheader51.i.preheader.split.us.i, %middle.block129
  %indvars.iv163.i.ph = phi i64 [ %i.jz, %.preheader51.i.preheader.split.us.i ], [ %i.kn, %middle.block129 ]
  %.14758.i.us.i.ph = phi i32 [ %.04662.i.i, %.preheader51.i.preheader.split.us.i ], [ %i.kq, %middle.block129 ]
  br label %.preheader51.i.us.i

.preheader51.i.us.i:                              ; preds = %.preheader51.i.us.i.preheader, %bb.p
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.p ], [ %indvars.iv163.i.ph, %.preheader51.i.us.i.preheader ]
  %.14758.i.us.i = phi i32 [ %i.kv, %bb.p ], [ %.14758.i.us.i.ph, %.preheader51.i.us.i.preheader ]
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, %i.iq ; 4 uses
  %i.kv = add nsw i32 %.14758.i.us.i, %i.im       ; 3 uses
  %i.kw = icmp slt i64 %indvars.iv.next164.i, %i.kb
end_hunk_0
