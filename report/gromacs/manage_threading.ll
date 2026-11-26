Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/manage_threading?download=true
inline.NumInlined: 457
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z22setup_bonded_threadingP18bonded_threading_tibRK22InteractionDefinitions:bb.a
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
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  store <4 x i32> %wide.masked.gather94, ptr %i.hn, align 4, !tbaa !13
  store <4 x i32> %wide.masked.gather95, ptr %i.ho, align 4, !tbaa !13
  store <4 x i32> %wide.masked.gather96, ptr %i.hp, align 4, !tbaa !13
  store <4 x i32> %wide.masked.gather97, ptr %i.hq, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !80

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hk, %i.hj
  %bin.rdx98 = add <4 x i32> %i.hl, %bin.rdx
  %bin.rdx99 = add <4 x i32> %i.hm, %bin.rdx98
  %i.hs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx99) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.fr, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.hs, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ht = and i64 %i.fn, 3                        ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  %i.hv = select i1 %i.hu, i64 4, i64 %i.ht
  %n.vec100 = sub nsw i64 %i.fn, %i.hv            ; 2 uses
  %i.hw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi102 = phi <4 x i32> [ %i.hw, %vec.epilog.ph ], [ %i.ih, %vec.epilog.vector.body ]
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %index101 ; 2 uses
  %wide.vec103 = load <8 x ptr>, ptr %i.hx, align 8, !tbaa !119
  %strided.vec104 = shufflevector <8 x ptr> %wide.vec103, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.gep105 = getelementptr inbounds nuw i8, <4 x ptr> %strided.vec104, i64 8
  %wide.masked.gather106 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep105, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !43
  %wide.masked.gather107 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %strided.vec104, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !44 ; 2 uses
  %i.hy = ptrtoint <4 x ptr> %wide.masked.gather106 to <4 x i64>
  %i.hz = ptrtoint <4 x ptr> %wide.masked.gather107 to <4 x i64>
  %i.ia = sub <4 x i64> %i.hy, %i.hz
  %i.ib = lshr exact <4 x i64> %i.ia, splat (i64 2)
  %i.ic = trunc <4 x i64> %i.ib to <4 x i32>
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %wide.vec108 = load <16 x i32>, ptr %i.id, align 4, !tbaa !120
  %strided.vec109 = shufflevector <16 x i32> %wide.vec108, <16 x i32> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.ie = add nsw <4 x i32> %strided.vec109, splat (i32 1)
  %i.if = sdiv <4 x i32> %i.ic, %i.ie
  %i.ig = mul nsw <4 x i32> %i.if, %strided.vec109
  %i.ih = add <4 x i32> %i.ig, %vec.phi102        ; 2 uses
  %wide.gep110 = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather107, i64 4
  %wide.masked.gather111 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep110, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !13
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index101
  store <4 x i32> %wide.masked.gather111, ptr %i.ii, align 4, !tbaa !13
  %index.next112 = add nuw i64 %index101, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next112, %n.vec100
  br i1 %i.ij, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ik = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ih)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec100, %vec.epilog.middle.block ]
  %.04854.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.hs, %vec.epilog.iter.check ], [ %i.ik, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader53.i.i:                                 ; preds = %vec.epilog.scalar.ph
  %i.il = load i32, ptr %0, align 8, !tbaa !38    ; 2 uses
  %.not61.i.i = icmp slt i32 %i.il, 1
  br i1 %.not61.i.i, label %_ZL26divide_bondeds_by_localityP18bonded_threading_tiN3gmx16EnumerationArrayI19InteractionFunction12ilist_data_tLS3_95EEE.exit.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %.preheader53.i.i
  %.not130.i = icmp eq i32 %.2.i, 1
  %i.im = load ptr, ptr %i.m, align 8, !tbaa !44  ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.io = load i32, ptr %i.in, align 4            ; 5 uses
  %i.ip = add i32 %i.io, 1
  %i.iq = load ptr, ptr %6, align 8               ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = sext i32 %i.ip to i64                   ; 4 uses
  %i.it = add nsw i64 %i.fn, -1                   ; 2 uses
  %xtraiter152 = and i64 %i.it, 7                 ; 3 uses
  %i.iu = add nsw i32 %.2.i, -2
  %i.iv = icmp ult i32 %i.iu, 7
  %unroll_iter157 = and i64 %i.it, -8
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod156 = icmp ne i64 %xtraiter152, 0
  %broadcast.splatinsert117 = insertelement <8 x i64> poison, i64 %i.is, i64 0
  %broadcast.splat118 = shufflevector <8 x i64> %broadcast.splatinsert117, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.iw = mul nsw <8 x i64> %broadcast.splat118, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.ix = shl nsw i64 %i.is, 3
  %broadcast.splatinsert121 = insertelement <8 x i64> poison, i64 %i.ix, i64 0
  %broadcast.splat122 = shufflevector <8 x i64> %broadcast.splatinsert121, <8 x i64> poison, <8 x i32> zeroinitializer
  %xtraiter160 = and i64 %i.fn, 3                 ; 3 uses
  %i.iy = icmp ult i32 %.2.i, 4
  %unroll_iter164 = and i64 %i.fn, 2147483644
  %lcmp.mod162.not = icmp eq i64 %xtraiter160, 0
  %lcmp.mod163 = icmp ne i64 %xtraiter160, 0
  br label %bb.n

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.04854.i.i = phi i32 [ %i.jo, %vec.epilog.scalar.ph ], [ %.04854.i.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.i.i ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !119 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !43
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !44 ; 2 uses
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = lshr exact i64 %i.jg, 2
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !120 ; 2 uses
  %i.jl = add nsw i32 %i.jk, 1
  %i.jm = sdiv i32 %i.ji, %i.jl
  %i.jn = mul nsw i32 %i.jm, %i.jk
  %i.jo = add nsw i32 %i.jn, %.04854.i.i          ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !13
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.i
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !13
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.fn
  br i1 %exitcond.not.i.i, label %.preheader53.i.i, label %vec.epilog.scalar.ph, !llvm.loop !82

bb.n:                                             ; preds = %.epilog-lcssa, %.lr.ph64.i.i
  %i.js = phi i32 [ %i.il, %.lr.ph64.i.i ], [ %i.px, %.epilog-lcssa ]
  %.04363.i.i = phi i32 [ 1, %.lr.ph64.i.i ], [ %i.pw, %.epilog-lcssa ] ; 8 uses
  %.04662.i.i = phi i32 [ 0, %.lr.ph64.i.i ], [ %.147.lcssa.i.i, %.epilog-lcssa ] ; 6 uses
  %i.jt = mul nsw i32 %.04363.i.i, %i.jo
  %i.ju = sdiv i32 %i.jt, %i.js                   ; 5 uses
  %i.jv = icmp slt i32 %.04662.i.i, %i.ju
  br i1 %i.jv, label %.preheader51.i.preheader.i, label %.preheader52.i.i

.preheader51.i.preheader.i:                       ; preds = %bb.n
  br i1 %.not130.i, label %.preheader51.i.preheader.split.us.i, label %.preheader51.i.i

.preheader51.i.preheader.split.us.i:              ; preds = %.preheader51.i.preheader.i
  %i.jw = load ptr, ptr %i.ir, align 8, !tbaa !43
  %i.jx = load ptr, ptr %i.iq, align 8, !tbaa !44 ; 3 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %.promoted.i = load i32, ptr %4, align 4, !tbaa !13
  %i.kb = sext i32 %.promoted.i to i64            ; 3 uses
  %i.kc = shl i64 %i.ka, 30
  %i.kd = ashr i64 %i.kc, 32                      ; 2 uses
  %i.ke = add i32 %.04662.i.i, %i.io              ; 3 uses
  %i.kf = tail call i32 @llvm.smax.i32(i32 %i.ju, i32 %i.ke)
  %i.kg = icmp slt i32 %i.ke, %i.ju
  %i.kh = zext i1 %i.kg to i32                    ; 2 uses
  %i.ki = add i32 %i.ke, %i.kh
  %i.kj = sub i32 %i.kf, %i.ki
  %i.kk = udiv i32 %i.kj, %i.io
  %i.kl = add i32 %i.kk, %i.kh                    ; 2 uses
  %i.km = zext i32 %i.kl to i64
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check114 = icmp ult i32 %i.kl, 7
  br i1 %min.iters.check114, label %.preheader51.i.us.i.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.preheader51.i.preheader.split.us.i
  %n.vec116 = and i64 %i.kn, 8589934584           ; 4 uses
  %i.ko = mul i64 %n.vec116, %i.is
  %i.kp = add i64 %i.ko, %i.kb                    ; 2 uses
  %i.kq = trunc i64 %n.vec116 to i32
  %i.kr = mul i32 %i.io, %i.kq
  %i.ks = add i32 %.04662.i.i, %i.kr              ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.kd, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <8 x i64> poison, i64 %i.kb, i64 0
  %broadcast.splat120 = shufflevector <8 x i64> %broadcast.splatinsert119, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat120, %i.iw
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph115
  %index124 = phi i64 [ 0, %vector.ph115 ], [ %index.next128, %vector.body123 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph115 ], [ %vec.ind.next, %vector.body123 ] ; 2 uses
  %index.next128 = add nuw i64 %index124, 8       ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, %broadcast.splat122
  %i.kt = icmp eq i64 %index.next128, %n.vec116
  br i1 %i.kt, label %middle.block129, label %vector.body123, !llvm.loop !83

middle.block129:                                  ; preds = %vector.body123
  %i.ku = add nsw <8 x i64> %vec.ind, %broadcast.splat118 ; 2 uses
  %wide.gep125 = getelementptr [4 x i8], ptr %i.jx, <8 x i64> %i.ku
  %wide.gep126 = getelementptr i8, <8 x ptr> %wide.gep125, i64 4
  %i.kv = icmp slt <8 x i64> %i.ku, %broadcast.splat ; 2 uses
  %wide.masked.gather127 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep126, <8 x i1> %i.kv, <8 x i32> poison), !tbaa !13
  %predphi = select <8 x i1> %i.kv, <8 x i32> %wide.masked.gather127, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2147483647>
  %i.kw = extractelement <8 x i32> %predphi, i64 7
  %cmp.n = icmp eq i64 %i.kn, %n.vec116
  br i1 %cmp.n, label %.preheader52.i.loopexit.split.us.i, label %.preheader51.i.us.i.preheader

.preheader51.i.us.i.preheader:                    ; preds = %.preheader51.i.preheader.split.us.i, %middle.block129
  %indvars.iv163.i.ph = phi i64 [ %i.kb, %.preheader51.i.preheader.split.us.i ], [ %i.kp, %middle.block129 ]
  %.14758.i.us.i.ph = phi i32 [ %.04662.i.i, %.preheader51.i.preheader.split.us.i ], [ %i.ks, %middle.block129 ]
  br label %.preheader51.i.us.i

.preheader51.i.us.i:                              ; preds = %.preheader51.i.us.i.preheader, %bb.p
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.p ], [ %indvars.iv163.i.ph, %.preheader51.i.us.i.preheader ]
  %.14758.i.us.i = phi i32 [ %i.kx, %bb.p ], [ %.14758.i.us.i.ph, %.preheader51.i.us.i.preheader ]
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, %i.is ; 4 uses
  %i.kx = add nsw i32 %.14758.i.us.i, %i.io       ; 3 uses
  %i.ky = icmp slt i64 %indvars.iv.next164.i, %i.kd
  br i1 %i.ky, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader51.i.us.i
  %i.kz = getelementptr [4 x i8], ptr %i.jx, i64 %indvars.iv.next164.i
  %i.la = getelementptr i8, ptr %i.kz, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader51.i.us.i
  %.sink.i.us.i = phi i32 [ %i.lb, %bb.o ], [ 2147483647, %.preheader51.i.us.i ]
  %i.lc = icmp slt i32 %i.kx, %i.ju
  br i1 %i.lc, label %.preheader51.i.us.i, label %.preheader52.i.loopexit.split.us.i, !llvm.loop !84

.preheader52.i.loopexit.split.us.i:               ; preds = %bb.p, %middle.block129
  %.sink.i.us.i.lcssa = phi i32 [ %i.kw, %middle.block129 ], [ %.sink.i.us.i, %bb.p ]
  %indvars.iv.next164.i.lcssa = phi i64 [ %i.kp, %middle.block129 ], [ %indvars.iv.next164.i, %bb.p ]
  %.lcssa60 = phi i32 [ %i.ks, %middle.block129 ], [ %i.kx, %bb.p ]
  %i.ld = trunc nsw i64 %indvars.iv.next164.i.lcssa to i32
  store i32 %i.ld, ptr %4, align 4, !tbaa !13
  store i32 %.sink.i.us.i.lcssa, ptr %5, align 4, !tbaa !13
  br label %.preheader52.i.i

.preheader52.i.i:                                 ; preds = %bb.r, %.preheader52.i.loopexit.split.us.i, %bb.n
  %.147.lcssa.i.i = phi i32 [ %.04662.i.i, %bb.n ], [ %.lcssa60, %.preheader52.i.loopexit.split.us.i ], [ %i.nh, %bb.r ]
  br i1 %i.iy, label %.epil.preheader159, label %.preheader52.i.i.new

.preheader51.i.i:                                 ; preds = %.preheader51.i.preheader.i, %bb.r
  %.14758.i.i = phi i32 [ %i.nh, %bb.r ], [ %.04662.i.i, %.preheader51.i.preheader.i ]
  %.pre.i.i = load i32, ptr %5, align 4, !tbaa !13 ; 2 uses
  br i1 %i.iv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader51.i.i, %.lr.ph.i.i
  %i.le = phi i32 [ %i.ms, %.lr.ph.i.i ], [ %.pre.i.i, %.preheader51.i.i ] ; 2 uses
  %indvars.iv67.i.i = phi i64 [ %indvars.iv.next68.i.i.7, %.lr.ph.i.i ], [ 1, %.preheader51.i.i ] ; 10 uses
  %.057.i.i = phi i32 [ %spec.select.i.i.7, %.lr.ph.i.i ], [ 0, %.preheader51.i.i ]
  %niter158 = phi i64 [ %niter158.next.7, %.lr.ph.i.i ], [ 0, %.preheader51.i.i ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv67.i.i
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !13 ; 2 uses
  %i.lh = icmp slt i32 %i.lg, %i.le
  %i.li = trunc nuw nsw i64 %indvars.iv67.i.i to i32
  %spec.select.i.i = select i1 %i.lh, i32 %i.li, i32 %.057.i.i
  %indvars.iv.next68.i.i = add nuw nsw i64 %indvars.iv67.i.i, 1 ; 2 uses
  %i.lj = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.le) ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next68.i.i
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !13 ; 2 uses
  %i.lm = icmp slt i32 %i.ll, %i.lj
  %i.ln = trunc nuw nsw i64 %indvars.iv.next68.i.i to i32
  %spec.select.i.i.1 = select i1 %i.lm, i32 %i.ln, i32 %spec.select.i.i
  %indvars.iv.next68.i.i.1 = add nuw nsw i64 %indvars.iv67.i.i, 2 ; 2 uses
  %i.lo = tail call i32 @llvm.smin.i32(i32 %i.ll, i32 %i.lj) ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next68.i.i.1
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !13 ; 2 uses
  %i.lr = icmp slt i32 %i.lq, %i.lo
  %i.ls = trunc nuw nsw i64 %indvars.iv.next68.i.i.1 to i32
  %spec.select.i.i.2 = select i1 %i.lr, i32 %i.ls, i32 %spec.select.i.i.1
  %indvars.iv.next68.i.i.2 = add nuw nsw i64 %indvars.iv67.i.i, 3 ; 2 uses
  %i.lt = tail call i32 @llvm.smin.i32(i32 %i.lq, i32 %i.lo) ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next68.i.i.2
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !13 ; 2 uses
  %i.lw = icmp slt i32 %i.lv, %i.lt
  %i.lx = trunc nuw nsw i64 %indvars.iv.next68.i.i.2 to i32
  %spec.select.i.i.3 = select i1 %i.lw, i32 %i.lx, i32 %spec.select.i.i.2
  %indvars.iv.next68.i.i.3 = add nuw nsw i64 %indvars.iv67.i.i, 4 ; 2 uses
  %i.ly = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %i.lt) ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next68.i.i.3
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !13 ; 2 uses
  %i.mb = icmp slt i32 %i.ma, %i.ly
  %i.mc = trunc nuw nsw i64 %indvars.iv.next68.i.i.3 to i32
  %spec.select.i.i.4 = select i1 %i.mb, i32 %i.mc, i32 %spec.select.i.i.3
  %indvars.iv.next68.i.i.4 = add nuw nsw i64 %indvars.iv67.i.i, 5 ; 2 uses
  %i.md = tail call i32 @llvm.smin.i32(i32 %i.ma, i32 %i.ly) ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next68.i.i.4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !13 ; 2 uses
  %i.mg = icmp slt i32 %i.mf, %i.md
  %i.mh = trunc nuw nsw i64 %indvars.iv.next68.i.i.4 to i32
  %spec.select.i.i.5 = select i1 %i.mg, i32 %i.mh, i32 %spec.select.i.i.4
  %indvars.iv.next68.i.i.5 = add nuw nsw i64 %indvars.iv67.i.i, 6 ; 2 uses
  %i.mi = tail call i32 @llvm.smin.i32(i32 %i.mf, i32 %i.md) ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next68.i.i.5
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !13 ; 2 uses
  %i.ml = icmp slt i32 %i.mk, %i.mi
  %i.mm = trunc nuw nsw i64 %indvars.iv.next68.i.i.5 to i32
  %spec.select.i.i.6 = select i1 %i.ml, i32 %i.mm, i32 %spec.select.i.i.5
  %indvars.iv.next68.i.i.6 = add nuw nsw i64 %indvars.iv67.i.i, 7 ; 2 uses
  %i.mn = tail call i32 @llvm.smin.i32(i32 %i.mk, i32 %i.mi) ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next68.i.i.6
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !13 ; 2 uses
  %i.mq = icmp slt i32 %i.mp, %i.mn
  %i.mr = trunc nuw nsw i64 %indvars.iv.next68.i.i.6 to i32
  %spec.select.i.i.7 = select i1 %i.mq, i32 %i.mr, i32 %spec.select.i.i.6 ; 3 uses
  %indvars.iv.next68.i.i.7 = add nuw nsw i64 %indvars.iv67.i.i, 8 ; 2 uses
  %i.ms = tail call i32 @llvm.smin.i32(i32 %i.mp, i32 %i.mn) ; 2 uses
  %niter158.next.7 = add i64 %niter158, 8         ; 2 uses
  %niter158.ncmp.7 = icmp eq i64 %niter158.next.7, %unroll_iter157
  br i1 %niter158.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !85

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod154.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.preheader51.i.i
  %.epil.init = phi i32 [ %.pre.i.i, %.preheader51.i.i ], [ %i.ms, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %indvars.iv67.i.i.epil.init = phi i64 [ 1, %.preheader51.i.i ], [ %indvars.iv.next68.i.i.7, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.057.i.i.epil.init = phi i32 [ 0, %.preheader51.i.i ], [ %spec.select.i.i.7, %._crit_edge.loopexit.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.mt = phi i32 [ %.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.my, %.lr.ph.i.i.epil ] ; 2 uses
  %indvars.iv67.i.i.epil = phi i64 [ %indvars.iv67.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next68.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %.057.i.i.epil = phi i32 [ %.057.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %spec.select.i.i.epil, %.lr.ph.i.i.epil ]
  %epil.iter153 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter153.next, %.lr.ph.i.i.epil ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv67.i.i.epil
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !13 ; 2 uses
  %i.mw = icmp slt i32 %i.mv, %i.mt
  %i.mx = trunc nuw nsw i64 %indvars.iv67.i.i.epil to i32
  %spec.select.i.i.epil = select i1 %i.mw, i32 %i.mx, i32 %.057.i.i.epil ; 2 uses
  %indvars.iv.next68.i.i.epil = add nuw nsw i64 %indvars.iv67.i.i.epil, 1
  %i.my = tail call i32 @llvm.smin.i32(i32 %i.mv, i32 %i.mt)
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !86

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i.7, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %spec.select.i.i.epil, %.lr.ph.i.i.epil ]
  %i.mz = zext nneg i32 %spec.select.i.i.lcssa to i64 ; 3 uses
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.mz ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !120 ; 2 uses
  %i.nd = add nsw i32 %i.nc, 1
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.mz ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !13
  %i.ng = add nsw i32 %i.nd, %i.nf                ; 3 uses
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !13
  %i.nh = add nsw i32 %i.nc, %.14758.i.i          ; 3 uses
  %i.ni = load ptr, ptr %i.na, align 8, !tbaa !119 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !43
  %i.nl = load ptr, ptr %i.ni, align 8, !tbaa !44 ; 2 uses
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = lshr exact i64 %i.no, 2
  %i.nq = trunc i64 %i.np to i32
  %i.nr = icmp slt i32 %i.ng, %i.nq
  br i1 %i.nr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.loopexit.i.i
  %i.ns = sext i32 %i.ng to i64
  %i.nt = getelementptr [4 x i8], ptr %i.nl, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.loopexit.i.i
  %.sink.i.i = phi i32 [ %i.nv, %bb.q ], [ 2147483647, %._crit_edge.loopexit.i.i ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mz
  store i32 %.sink.i.i, ptr %i.nw, align 4, !tbaa !13
  %i.nx = icmp slt i32 %i.nh, %i.ju
  br i1 %i.nx, label %.preheader51.i.i, label %.preheader52.i.i, !llvm.loop !87

.preheader52.i.i.new:                             ; preds = %.preheader52.i.i, %.preheader52.i.i.new
  %indvars.iv72.i.i = phi i64 [ %indvars.iv.next73.i.i.3, %.preheader52.i.i.new ], [ 0, %.preheader52.i.i ] ; 6 uses
  %niter165 = phi i64 [ %niter165.next.3, %.preheader52.i.i.new ], [ 0, %.preheader52.i.i ]
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv72.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !118
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv72.i.i
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !13
  %i.od = load i32, ptr %i.l, align 8, !tbaa !45
  %i.oe = mul nsw i32 %i.od, %i.oa
  %i.of = add nsw i32 %i.oe, %.04363.i.i
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.og
  store i32 %i.oc, ptr %i.oh, align 4, !tbaa !13
  %indvars.iv.next73.i.i = or disjoint i64 %indvars.iv72.i.i, 1 ; 2 uses
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.next73.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !118
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next73.i.i
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !13
  %i.on = load i32, ptr %i.l, align 8, !tbaa !45
  %i.oo = mul nsw i32 %i.on, %i.ok
  %i.op = add nsw i32 %i.oo, %.04363.i.i
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.oq
  store i32 %i.om, ptr %i.or, align 4, !tbaa !13
  %indvars.iv.next73.i.i.1 = or disjoint i64 %indvars.iv72.i.i, 2 ; 2 uses
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.next73.i.i.1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !118
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next73.i.i.1
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !13
  %i.ox = load i32, ptr %i.l, align 8, !tbaa !45
  %i.oy = mul nsw i32 %i.ox, %i.ou
  %i.oz = add nsw i32 %i.oy, %.04363.i.i
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.pa
  store i32 %i.ow, ptr %i.pb, align 4, !tbaa !13
  %indvars.iv.next73.i.i.2 = or disjoint i64 %indvars.iv72.i.i, 3 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit100
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.cd) #25
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, %bb.m
  store ptr %i.bi, ptr %0, align 8, !tbaa !71
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8, !tbaa !73
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.bd
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4fillIPN3gmx11BasicVectorIfEES2_EvT_S4_RKT0_.exit, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx17ThreadForceBufferIA4_fED2Ev(ptr noundef nonnull align 8 dead_on_return(652) dereferenceable(652) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !169  ; 3 uses
  %.not.i.i.i.1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.1.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.1.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.1.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.1.i.i:              ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169  ; 3 uses
  %.not.i.i.i.2.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.2.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.1.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.2.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.2.i.i:              ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.1.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !169  ; 3 uses
  %.not.i.i.i.3.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.3.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.3.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.2.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.3.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.3.i.i:              ; preds = %bb.e, %_ZNSt6vectorIfSaIfEED2Ev.exit.2.i.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.4.i.i, label %_ZN17gmx_grppairener_tD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.3.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !170
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #25
  br label %_ZN17gmx_grppairener_tD2Ev.exit

_ZN17gmx_grppairener_tD2Ev.exit:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.3.i.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN17gmx_grppairener_tD2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #25
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit: ; preds = %_ZN17gmx_grppairener_tD2Ev.exit, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !68
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !54 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EED2Ev.exit

_ZNSt6vectorISt5arrayImLm2EESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.i
  %i.be = load ptr, ptr %0, align 8, !tbaa !171   ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt5arrayImLm2EESaIS1_EED2Ev.exit
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.be)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #24
  unreachable

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit: ; preds = %_ZNSt6vectorISt5arrayImLm2EESaIS1_EED2Ev.exit, %bb.j
  ret void
}

declare void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr>, <4 x i1>, <4 x ptr>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !46}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS18bonded_threading_t", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!"bool", !6, i64 0}
!15 = !{!"p1 _ZTSSt10unique_ptrIN3gmx17ThreadForceBufferIA4_fEESt14default_deleteIS3_EE", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN3gmx17ThreadForceBufferIA4_fEESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN3gmx17ThreadForceBufferIA4_fEESt14default_deleteIS4_EESaIS7_EE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN3gmx17ThreadForceBufferIA4_fEESt14default_deleteIS4_EESaIS7_EE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorISt10unique_ptrIN3gmx17ThreadForceBufferIA4_fEESt14default_deleteIS4_EESaIS7_EE", !18, i64 0}
!20 = !{!"p1 int", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIiSaIiEE", !23, i64 0}
!25 = !{!"p1 _ZTSSt5arrayImLm2EE", !10, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt5arrayImLm2EESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseISt5arrayImLm2EESaIS1_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseISt5arrayImLm2EESaIS1_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorISt5arrayImLm2EESaIS1_EE", !28, i64 0}
!30 = !{!"_ZTSN3gmx19ThreadedForceBufferIA4_fEE", !14, i64 0, !19, i64 8, !24, i64 32, !29, i64 56}
!31 = !{!"_ZTS12WorkDivision", !7, i64 0, !24, i64 8}
!32 = !{!"p1 _ZTS26CentersOfMassScaledBuffers", !10, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseI26CentersOfMassScaledBuffersSaIS0_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseI26CentersOfMassScaledBuffersSaIS0_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseI26CentersOfMassScaledBuffersSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorI26CentersOfMassScaledBuffersSaIS0_EE", !35, i64 0}
!37 = !{!"_ZTS18bonded_threading_t", !7, i64 0, !30, i64 8, !14, i64 88, !7, i64 92, !31, i64 96, !31, i64 128, !36, i64 160}
!38 = !{!37, !7, i64 0}
!39 = !{!37, !14, i64 88}
!40 = !{!"p1 omnipotent char", !10, i64 0}
!41 = !{!"_ZTS22t_interaction_function", !40, i64 0, !40, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!42 = !{!41, !7, i64 28}
!43 = !{!21, !20, i64 8}
!44 = !{!21, !20, i64 0}
!45 = !{!31, !7, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!37, !7, i64 92}
!48 = !{!41, !7, i64 16}
!49 = !{!6, !6, i64 0}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!16, !15, i64 0}
!52 = !{!"p1 _ZTSN3gmx17ThreadForceBufferIA4_fEE", !10, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!26, !25, i64 0}
!55 = !{!"p1 float", !10, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !10, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"long", !6, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{i64 2, i64 -1, i64 -1, i1 true}
!62 = !{!61}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !59, i64 8, !6, i64 16}
!65 = !{!64, !40, i64 0}
!66 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!21, !20, i64 16}
!69 = !{!33, !32, i64 8}
!70 = !{!33, !32, i64 0}
!71 = !{!58, !57, i64 0}
!72 = !{!58, !57, i64 16}
!73 = !{!58, !57, i64 8}
!74 = !{!33, !32, i64 16}
!75 = !{!26, !25, i64 16}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, !46}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, !46, !121, !122}
!81 = distinct !{!81, !46, !121, !122}
!82 = distinct !{!82, !46, !122, !121}
!83 = distinct !{!83, !46, !121, !122}
!84 = distinct !{!84, !46, !122, !121}
!85 = distinct !{!85, !46}
!86 = distinct !{!86, !50}
!87 = distinct !{!87, !46}
!88 = distinct !{!88, !46}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !46}
!91 = distinct !{!91, !46}
!92 = distinct !{!92, !128}
!93 = !{!"p1 _ZTSSt6vectorI9t_iparamsSaIS0_EE", !10, i64 0}
!94 = !{!"p1 _ZTSSt6vectorI19InteractionFunctionSaIS0_EE", !10, i64 0}
!95 = !{!"p1 _ZTS9t_iparams", !10, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseI9t_iparamsSaIS0_EE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorI9t_iparamsSaIS0_EE", !98, i64 0}
!100 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !6, i64 0}
!101 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunctioniLS1_95EEE", !6, i64 0}
!102 = !{!"p1 _ZTS14gmx_cmapdata_t", !10, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorI14gmx_cmapdata_tSaIS0_EE", !105, i64 0}
!107 = !{!"_ZTS10gmx_cmap_t", !7, i64 0, !106, i64 8}
!108 = !{!"_ZTS22InteractionDefinitions", !93, i64 0, !94, i64 8, !99, i64 16, !99, i64 40, !100, i64 64, !101, i64 2344, !7, i64 2724, !107, i64 2728}
!109 = !{!108, !93, i64 0}
!110 = !{}
!111 = !{i64 8}
!112 = !{!96, !95, i64 0}
!113 = !{!"_ZTS19InteractionFunction", !6, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!108, !7, i64 2724}
!116 = !{!"p1 _ZTS15InteractionList", !10, i64 0}
!117 = !{!"_ZTS12ilist_data_t", !116, i64 0, !113, i64 8, !7, i64 12}
!118 = !{!117, !113, i64 8}
!119 = !{!117, !116, i64 0}
!120 = !{!117, !7, i64 12}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = !{!"branch_weights", i32 4, i32 12}
!124 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!20, !20, i64 0}
!127 = !{!41, !40, i64 0}
!128 = !{!"llvm.loop.peeled.count", i32 5}
!129 = !{i8 0, i8 2}
!130 = distinct !{!130, !50}
!131 = distinct !{!131, !46}
!132 = distinct !{!132, !46}
!133 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !56, i64 0}
!134 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !133, i64 0}
!135 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !134, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !58, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !137, i64 0}
!139 = !{!"_ZTSN3gmx11BasicVectorIfEE", !6, i64 0}
!140 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunctionfLS1_95EEE", !6, i64 0}
!141 = !{!"_ZTSN3gmx16EnumerationArrayI20NonBondedEnergyTermsSt6vectorIfSaIfEELS1_5EEE", !6, i64 0}
!142 = !{!"_ZTS17gmx_grppairener_t", !7, i64 0, !141, i64 8}
!143 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypefLS1_7EEE", !6, i64 0}
!144 = !{!"_ZTSN3gmx17ThreadForceBufferIA4_fEE", !135, i64 0, !29, i64 24, !24, i64 48, !7, i64 72, !7, i64 76, !138, i64 80, !139, i64 104, !140, i64 116, !142, i64 496, !143, i64 624}
!145 = !{!144, !7, i64 72}
!146 = !{!63, !40, i64 0}
!147 = !{!64, !59, i64 8}
!148 = !{!"float", !6, i64 0}
!149 = !{!148, !148, i64 0}
!150 = distinct !{!150, !46}
!151 = !{!16, !15, i64 8}
!152 = !{!16, !15, i64 16}
!153 = distinct !{!153, i1 true, !"_ZSt19__relocate_object_aI26CentersOfMassScaledBuffersS0_SaIS0_EEvPT_PT0_RT1_"}
!154 = distinct !{!154, !153, !"_ZSt19__relocate_object_aI26CentersOfMassScaledBuffersS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!155 = distinct !{!155, !153, !"_ZSt19__relocate_object_aI26CentersOfMassScaledBuffersS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!156 = distinct !{!156, !46}
!157 = !{!154}
!158 = !{!155}
!159 = !{!57, !57, i64 0}
!160 = distinct !{!160, !46}
!161 = distinct !{!161, !46}
!162 = distinct !{!162, !50}
!163 = distinct !{!163, !46}
!164 = distinct !{!164, !50}
end_hunk_1
