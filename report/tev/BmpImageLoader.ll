Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/BmpImageLoader?download=true
inline.NumInlined: 6826
inline.NumDeleted: 2585
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN3tev11decode_rle8EPKhmii:bb.a
.lr.ph.i143.preheader:                            ; preds = %bb.g
  %i.dw = mul nsw i32 %.0101, %i.c
  %i.dx = add i32 %.0105.fr, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %scevgep411 = getelementptr i8, ptr %i.f, i64 %i.dy
  %i.dz = sub i32 %i.k, %.0105.fr
  %i.ea = zext i32 %i.dz to i64
  %i.eb = add nuw nsw i64 %i.ea, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep411, i8 0, i64 %i.eb, i1 false), !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit145"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit145": ; preds = %.lr.ph.i143.preheader, %bb.g
  %.091356 = add nsw i32 %.0101, 1                ; 5 uses
  %i.ec = icmp slt i32 %.091356, %4
  %brmerge458.not = and i1 %i.ec, %i.h
  br i1 %brmerge458.not, label %.lr.ph359.split.preheader, label %.critedge

.lr.ph359.split.preheader:                        ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit145"
  %i.ed = xor i32 %.0101, -1
  %i.ee = add i32 %4, %i.ed                       ; 3 uses
  %i.ef = add i32 %4, -2
  %xtraiter540 = and i32 %i.ee, 1
  %i.eg = icmp eq i32 %i.ef, %.0101
  br i1 %i.eg, label %.lr.ph359.split.epil.preheader, label %.lr.ph359.split.preheader.new

.lr.ph359.split.preheader.new:                    ; preds = %.lr.ph359.split.preheader
  %unroll_iter = and i32 %i.ee, -2
  br label %.lr.ph359.split

.lr.ph359.split:                                  ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1", %.lr.ph359.split.preheader.new
  %indvar417 = phi i32 [ 0, %.lr.ph359.split.preheader.new ], [ %indvar.next418.1, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1" ] ; 3 uses
  %.091358 = phi i32 [ %.091356, %.lr.ph359.split.preheader.new ], [ %.091.1, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1" ] ; 3 uses
  %.091.in357 = phi i32 [ %.0101, %.lr.ph359.split.preheader.new ], [ %.091, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1" ]
  %niter = phi i32 [ 0, %.lr.ph359.split.preheader.new ], [ %niter.next.1, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1" ]
  %i.eh = icmp sgt i32 %.091.in357, -2
  br i1 %i.eh, label %.lr.ph.i148.preheader, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150"

.lr.ph.i148.preheader:                            ; preds = %.lr.ph359.split
  %i.ei = add i32 %.091356, %indvar417
  %i.ej = mul i32 %i.c, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %scevgep419 = getelementptr i8, ptr %i.f, i64 %i.ek
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep419, i8 0, i64 %i.i, i1 false), !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150": ; preds = %.lr.ph.i148.preheader, %.lr.ph359.split
  %.091 = add nsw i32 %.091358, 1                 ; 2 uses
  %i.el = icmp sgt i32 %.091358, -2
  br i1 %i.el, label %.lr.ph.i148.preheader.1, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1"

.lr.ph.i148.preheader.1:                          ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150"
  %indvar.next418 = or disjoint i32 %indvar417, 1
  %i.em = add i32 %.091356, %indvar.next418
  %i.en = mul i32 %i.c, %i.em
  %i.eo = sext i32 %i.en to i64
  %scevgep419.1 = getelementptr i8, ptr %i.f, i64 %i.eo
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep419.1, i8 0, i64 %i.i, i1 false), !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1": ; preds = %.lr.ph.i148.preheader.1, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150"
  %.091.1 = add nsw i32 %.091358, 2
  %indvar.next418.1 = add i32 %indvar417, 2       ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit531.unr-lcssa, label %.lr.ph359.split

bb.h:                                             ; preds = %bb.e
  %i.ep = add i64 %.098, 3                        ; 2 uses
  %.not122 = icmp ult i64 %i.ep, %2
  br i1 %.not122, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !74
  %i.es = zext i8 %i.er to i32
  %i.et = add i64 %.098, 4                        ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !74  ; 3 uses
  %i.ew = zext i8 %i.ev to i32
  %i.ex = add nsw i32 %.0105.fr, %i.es            ; 4 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 %3) ; 4 uses
  %i.ey = icmp slt i32 %.0105.fr, %invariant.smin
  br i1 %i.ey, label %.lr.ph342, label %.preheader330

.lr.ph342:                                        ; preds = %bb.i
  %i.ez = icmp sgt i32 %.0101, -1
  %.not.i152 = icmp slt i32 %.0101, %4
  %or.cond306 = and i1 %.not.i152, %i.ez
  %or.cond306.fr = freeze i1 %or.cond306
  br i1 %or.cond306.fr, label %.lr.ph342.split.us.preheader, label %.preheader330

.lr.ph342.split.us.preheader:                     ; preds = %.lr.ph342
  %i.fa = mul nsw i32 %.0101, %i.c
  %i.fb = sext i32 %.0105.fr to i64               ; 4 uses
  %i.fc = sext i32 %i.fa to i64
  %wide.trip.count = sext i32 %invariant.smin to i64 ; 3 uses
  %invariant.gep452 = getelementptr i8, ptr %i.f, i64 %i.fc ; 5 uses
  %i.fd = sub nsw i64 %wide.trip.count, %i.fb
  %xtraiter = and i64 %i.fd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph342.split.us.prol.loopexit, label %.lr.ph342.split.us.prol

.lr.ph342.split.us.prol:                          ; preds = %.lr.ph342.split.us.preheader, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.prol"
  %indvars.iv384.prol = phi i64 [ %indvars.iv.next385.prol, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.prol" ], [ %i.fb, %.lr.ph342.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.prol" ], [ 0, %.lr.ph342.split.us.preheader ]
  %i.fe = icmp slt i64 %indvars.iv384.prol, 0
  br i1 %i.fe, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.prol", label %bb.j

bb.j:                                             ; preds = %.lr.ph342.split.us.prol
  %gep453.prol = getelementptr i8, ptr %invariant.gep452, i64 %indvars.iv384.prol
  store i8 0, ptr %gep453.prol, align 1, !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.prol"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.prol": ; preds = %bb.j, %.lr.ph342.split.us.prol
  %indvars.iv.next385.prol = add nsw i64 %indvars.iv384.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph342.split.us.prol.loopexit, label %.lr.ph342.split.us.prol, !llvm.loop !495

.lr.ph342.split.us.prol.loopexit:                 ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.prol", %.lr.ph342.split.us.preheader
  %indvars.iv384.unr = phi i64 [ %i.fb, %.lr.ph342.split.us.preheader ], [ %indvars.iv.next385.prol, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.prol" ]
  %i.ff = sub nsw i64 %i.fb, %wide.trip.count
  %i.fg = icmp ugt i64 %i.ff, -4
  br i1 %i.fg, label %.preheader330, label %.lr.ph342.split.us

.lr.ph342.split.us:                               ; preds = %.lr.ph342.split.us.prol.loopexit, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.3"
  %indvars.iv384 = phi i64 [ %indvars.iv.next385.3, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.3" ], [ %indvars.iv384.unr, %.lr.ph342.split.us.prol.loopexit ] ; 9 uses
  %i.fh = icmp slt i64 %indvars.iv384, 0
  br i1 %i.fh, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us", label %bb.k

bb.k:                                             ; preds = %.lr.ph342.split.us
  %gep453 = getelementptr i8, ptr %invariant.gep452, i64 %indvars.iv384
  store i8 0, ptr %gep453, align 1, !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us": ; preds = %bb.k, %.lr.ph342.split.us
  %i.fi = icmp slt i64 %indvars.iv384, -1
  br i1 %i.fi, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.1", label %bb.l

bb.l:                                             ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us"
  %i.fj = getelementptr i8, ptr %invariant.gep452, i64 %indvars.iv384
  %gep453.1 = getelementptr i8, ptr %i.fj, i64 1
  store i8 0, ptr %gep453.1, align 1, !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.1"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.1": ; preds = %bb.l, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us"
  %i.fk = icmp slt i64 %indvars.iv384, -2
  br i1 %i.fk, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.2", label %bb.m

bb.m:                                             ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.1"
  %i.fl = getelementptr i8, ptr %invariant.gep452, i64 %indvars.iv384
  %gep453.2 = getelementptr i8, ptr %i.fl, i64 2
  store i8 0, ptr %gep453.2, align 1, !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.2"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.2": ; preds = %bb.m, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.1"
  %i.fm = icmp slt i64 %indvars.iv384, -3
  br i1 %i.fm, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.3", label %bb.n

bb.n:                                             ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.2"
  %i.fn = getelementptr i8, ptr %invariant.gep452, i64 %indvars.iv384
  %gep453.3 = getelementptr i8, ptr %i.fn, i64 3
  store i8 0, ptr %gep453.3, align 1, !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.3"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.3": ; preds = %bb.n, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.2"
  %indvars.iv.next385.3 = add nsw i64 %indvars.iv384, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next385.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader330, label %.lr.ph342.split.us, !llvm.loop !496

.preheader330:                                    ; preds = %.lr.ph342.split.us.prol.loopexit, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit153.us.3", %.lr.ph342, %bb.i
  %i.fo = add i32 %.0101, %i.ew                   ; 7 uses
  %i.fp = icmp ugt i8 %i.ev, 1
  br i1 %i.fp, label %.lr.ph347.preheader, label %._crit_edge

.lr.ph347.preheader:                              ; preds = %.preheader330
  %.088344 = add i32 %.0101, 1                    ; 2 uses
  br label %.lr.ph347

._crit_edge:                                      ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit158", %.preheader330
  %.not123 = icmp ne i8 %i.ev, 0
  %i.fq = icmp sgt i32 %invariant.smin, 0
  %or.cond459 = and i1 %.not123, %i.fq
  br i1 %or.cond459, label %.lr.ph351, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140"

.lr.ph351:                                        ; preds = %._crit_edge
  %i.fr = icmp sgt i32 %i.fo, -1
  %.not.i160 = icmp slt i32 %i.fo, %4
  %or.cond309 = and i1 %i.fr, %.not.i160
  br i1 %or.cond309, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit161.preheader", label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit161.preheader": ; preds = %.lr.ph351
  %i.fs = mul i32 %i.fo, %i.c
  %i.ft = sext i32 %i.fs to i64
  %scevgep390 = getelementptr i8, ptr %i.f, i64 %i.ft
  %i.fu = zext nneg i32 %invariant.smin to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep390, i8 0, i64 %i.fu, i1 false), !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140"

.lr.ph347:                                        ; preds = %.lr.ph347.preheader, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit158"
  %indvar = phi i32 [ 0, %.lr.ph347.preheader ], [ %indvar.next, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit158" ] ; 2 uses
  %.088346 = phi i32 [ %.088344, %.lr.ph347.preheader ], [ %.088, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit158" ] ; 3 uses
  %.088.in345 = phi i32 [ %.0101, %.lr.ph347.preheader ], [ %.088346, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit158" ]
  %i.fv = icmp sgt i32 %.088.in345, -2
  %.not.i154 = icmp slt i32 %.088346, %4
  %or.cond307 = and i1 %i.fv, %.not.i154
  %or.cond308 = and i1 %i.h, %or.cond307
  br i1 %or.cond308, label %.lr.ph.i156.preheader, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit158"

.lr.ph.i156.preheader:                            ; preds = %.lr.ph347
  %i.fw = add i32 %.088344, %indvar
  %i.fx = mul i32 %i.c, %i.fw
  %i.fy = sext i32 %i.fx to i64
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.fy
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.i, i1 false), !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit158"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit158": ; preds = %.lr.ph.i156.preheader, %.lr.ph347
  %.088 = add nsw i32 %.088346, 1                 ; 2 uses
  %i.fz = icmp slt i32 %.088, %i.fo
  %indvar.next = add i32 %indvar, 1
  br i1 %i.fz, label %.lr.ph347, label %._crit_edge

bb.o:                                             ; preds = %bb.e
  %i.ga = zext i8 %i.r to i64
  %i.gb = add nuw nsw i64 %i.ga, 1
  %i.gc = and i64 %i.gb, 510
  %i.gd = add i64 %i.p, %i.gc                     ; 3 uses
  %.not125 = icmp ugt i64 %i.gd, %2
  br i1 %.not125, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.ge = icmp slt i32 %.0105.fr, %3
  br i1 %i.ge, label %.lr.ph354, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140"

.lr.ph354:                                        ; preds = %.preheader
  %i.gf = getelementptr i8, ptr %1, i64 %i.p
  %.not.i163 = icmp sge i32 %.0101, %4
  %i.gg = mul nsw i32 %.0101, %i.c
  %i.gh = zext i8 %i.r to i64
  %i.gi = sext i32 %.0105.fr to i64
  %i.gj = sext i32 %i.gg to i64
  %invariant.gep454 = getelementptr i8, ptr %i.f, i64 %i.gj
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph354, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit164"
  %indvars.iv404 = phi i64 [ %i.gi, %.lr.ph354 ], [ %indvars.iv.next405, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit164" ] ; 3 uses
  %indvars.iv402 = phi i64 [ 0, %.lr.ph354 ], [ %indvars.iv.next403, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit164" ] ; 2 uses
  %i.gk = trunc nsw i64 %indvars.iv404 to i32
  %i.gl = or i32 %.0101, %i.gk
  %i.gm = icmp slt i32 %i.gl, 0
  %brmerge364 = or i1 %.not.i163, %i.gm
  br i1 %brmerge364, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit164", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gn = getelementptr i8, ptr %i.gf, i64 %indvars.iv402
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !74
  %gep455 = getelementptr i8, ptr %invariant.gep454, i64 %indvars.iv404
  store i8 %i.go, ptr %gep455, align 1, !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit164"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit164": ; preds = %bb.p, %bb.q
  %indvars.iv.next405 = add nsw i64 %indvars.iv404, 1 ; 3 uses
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next403, %i.gh
  %i.gq = icmp slt i64 %indvars.iv.next405, %i.j
  %i.gr = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %i.gr, label %bb.p, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit", !llvm.loop !497

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit": ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit164"
  %i.gs = trunc nsw i64 %indvars.iv.next405 to i32
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit375": ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit", %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.cg, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %indvars.iv.next, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit" ]
  %i.gt = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140": ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit375", %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit161.preheader", %.lr.ph.i138.preheader, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit", %.preheader331, %.lr.ph351, %.preheader, %._crit_edge, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit135"
  %.4 = phi i32 [ %i.gs, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit" ], [ %i.gt, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit375" ], [ %i.ex, %._crit_edge ], [ 0, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit135" ], [ %i.ex, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit161.preheader" ], [ %.0105.fr, %.preheader ], [ %i.ex, %.lr.ph351 ], [ 0, %.lr.ph.i138.preheader ], [ %.0105.fr, %.preheader331 ] ; 2 uses
  %.1102 = phi i32 [ %.0101, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit" ], [ %.0101, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit375" ], [ %i.fo, %._crit_edge ], [ %i.dp, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit135" ], [ %i.fo, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit161.preheader" ], [ %.0101, %.preheader ], [ %i.fo, %.lr.ph351 ], [ %i.dp, %.lr.ph.i138.preheader ], [ %.0101, %.preheader331 ] ; 3 uses
  %.2100 = phi i64 [ %i.gd, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit" ], [ %i.p, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140.loopexit375" ], [ %i.et, %._crit_edge ], [ %i.p, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit135" ], [ %i.et, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_0clEiih.exit161.preheader" ], [ %i.gd, %.preheader ], [ %i.et, %.lr.ph351 ], [ %i.p, %.lr.ph.i138.preheader ], [ %i.p, %.preheader331 ]
  %.not126 = icmp slt i32 %.1102, %4
  br i1 %.not126, label %bb.b, label %.thread289

.thread289:                                       ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140", %bb.b
  %.6 = phi i32 [ %.0105.fr, %bb.b ], [ %.4, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140" ] ; 3 uses
  %.3104 = phi i32 [ %.0101, %bb.b ], [ %.1102, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit140" ] ; 8 uses
  %i.gu = icmp sgt i32 %.3104, -1
  %.not.i165 = icmp slt i32 %.3104, %4
  %or.cond311 = and i1 %i.gu, %.not.i165
  %i.gv = icmp slt i32 %.6, %3
  %or.cond312 = select i1 %or.cond311, i1 %i.gv, i1 false
  br i1 %or.cond312, label %.lr.ph.i167.preheader, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit169"

.lr.ph.i167.preheader:                            ; preds = %.thread289
  %i.gw = mul nsw i32 %.3104, %i.c
  %i.gx = add i32 %.6, %i.gw
  %i.gy = sext i32 %i.gx to i64
  %scevgep426 = getelementptr i8, ptr %i.f, i64 %i.gy
  %i.gz = sub i32 %i.k, %.6
  %i.ha = zext i32 %i.gz to i64
  %i.hb = add nuw nsw i64 %i.ha, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep426, i8 0, i64 %i.hb, i1 false), !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit169"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit169": ; preds = %.lr.ph.i167.preheader, %.thread289
  %.0360 = add nsw i32 %.3104, 1                  ; 5 uses
  %i.hc = icmp slt i32 %.0360, %4
  %brmerge462.not = and i1 %i.hc, %i.h
  br i1 %brmerge462.not, label %.lr.ph363.split.preheader, label %.critedge

.lr.ph363.split.preheader:                        ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit169"
  %i.hd = xor i32 %.3104, -1
  %i.he = add i32 %4, %i.hd                       ; 3 uses
  %i.hf = add i32 %4, -2
  %xtraiter543 = and i32 %i.he, 1
  %i.hg = icmp eq i32 %i.hf, %.3104
  br i1 %i.hg, label %.lr.ph363.split.epil.preheader, label %.lr.ph363.split.preheader.new

.lr.ph363.split.preheader.new:                    ; preds = %.lr.ph363.split.preheader
  %unroll_iter546 = and i32 %i.he, -2
  br label %.lr.ph363.split

.lr.ph363.split:                                  ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1", %.lr.ph363.split.preheader.new
  %indvar430 = phi i32 [ 0, %.lr.ph363.split.preheader.new ], [ %indvar.next431.1, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1" ] ; 3 uses
  %.0362 = phi i32 [ %.0360, %.lr.ph363.split.preheader.new ], [ %.0.1, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1" ] ; 3 uses
  %.0.in361 = phi i32 [ %.3104, %.lr.ph363.split.preheader.new ], [ %.0, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1" ]
  %niter547 = phi i32 [ 0, %.lr.ph363.split.preheader.new ], [ %niter547.next.1, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1" ]
  %i.hh = icmp sgt i32 %.0.in361, -2
  br i1 %i.hh, label %.lr.ph.i172.preheader, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174"

.lr.ph.i172.preheader:                            ; preds = %.lr.ph363.split
  %i.hi = add i32 %.0360, %indvar430
  %i.hj = mul i32 %i.c, %i.hi
  %i.hk = sext i32 %i.hj to i64
  %scevgep432 = getelementptr i8, ptr %i.f, i64 %i.hk
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep432, i8 0, i64 %i.i, i1 false), !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174": ; preds = %.lr.ph.i172.preheader, %.lr.ph363.split
  %.0 = add nsw i32 %.0362, 1                     ; 2 uses
  %i.hl = icmp sgt i32 %.0362, -2
  br i1 %i.hl, label %.lr.ph.i172.preheader.1, label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1"

.lr.ph.i172.preheader.1:                          ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174"
  %indvar.next431 = or disjoint i32 %indvar430, 1
  %i.hm = add i32 %.0360, %indvar.next431
  %i.hn = mul i32 %i.c, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %scevgep432.1 = getelementptr i8, ptr %i.f, i64 %i.ho
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep432.1, i8 0, i64 %i.i, i1 false), !tbaa !74
  br label %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1"

"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1": ; preds = %.lr.ph.i172.preheader.1, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174"
  %.0.1 = add nsw i32 %.0362, 2
  %indvar.next431.1 = add i32 %indvar430, 2       ; 2 uses
  %niter547.next.1 = add i32 %niter547, 2         ; 2 uses
  %niter547.ncmp.1 = icmp eq i32 %niter547.next.1, %unroll_iter546
  br i1 %niter547.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %.lr.ph363.split

.critedge.loopexit.unr-lcssa:                     ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit174.1"
  %lcmp.mod544.not = icmp eq i32 %xtraiter543, 0
  br i1 %lcmp.mod544.not, label %.critedge, label %.lr.ph363.split.epil.preheader

.lr.ph363.split.epil.preheader:                   ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph363.split.preheader
  %indvar430.epil.init = phi i32 [ 0, %.lr.ph363.split.preheader ], [ %indvar.next431.1, %.critedge.loopexit.unr-lcssa ]
  %.0.in361.epil.init = phi i32 [ %.3104, %.lr.ph363.split.preheader ], [ %.0, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod545 = trunc i32 %i.he to i1
  tail call void @llvm.assume(i1 %lcmp.mod545)
  %i.hp = icmp sgt i32 %.0.in361.epil.init, -2
  br i1 %i.hp, label %.lr.ph.i172.preheader.epil, label %.critedge

.lr.ph.i172.preheader.epil:                       ; preds = %.lr.ph363.split.epil.preheader
  %i.hq = add i32 %.0360, %indvar430.epil.init
  %i.hr = mul i32 %i.c, %i.hq
  %i.hs = sext i32 %i.hr to i64
  %scevgep432.epil = getelementptr i8, ptr %i.f, i64 %i.hs
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep432.epil, i8 0, i64 %i.i, i1 false), !tbaa !74
  br label %.critedge

.critedge.loopexit531.unr-lcssa:                  ; preds = %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit150.1"
  %lcmp.mod541.not = icmp eq i32 %xtraiter540, 0
  br i1 %lcmp.mod541.not, label %.critedge, label %.lr.ph359.split.epil.preheader

.lr.ph359.split.epil.preheader:                   ; preds = %.critedge.loopexit531.unr-lcssa, %.lr.ph359.split.preheader
  %indvar417.epil.init = phi i32 [ 0, %.lr.ph359.split.preheader ], [ %indvar.next418.1, %.critedge.loopexit531.unr-lcssa ]
  %.091.in357.epil.init = phi i32 [ %.0101, %.lr.ph359.split.preheader ], [ %.091, %.critedge.loopexit531.unr-lcssa ]
  %lcmp.mod542 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod542)
  %i.ht = icmp sgt i32 %.091.in357.epil.init, -2
  br i1 %i.ht, label %.lr.ph.i148.preheader.epil, label %.critedge

.lr.ph.i148.preheader.epil:                       ; preds = %.lr.ph359.split.epil.preheader
  %i.hu = add i32 %.091356, %indvar417.epil.init
  %i.hv = mul i32 %i.c, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %scevgep419.epil = getelementptr i8, ptr %i.f, i64 %i.hw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep419.epil, i8 0, i64 %i.i, i1 false), !tbaa !74
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.h, %.critedge.loopexit531.unr-lcssa, %.lr.ph.i148.preheader.epil, %.lr.ph359.split.epil.preheader, %.critedge.loopexit.unr-lcssa, %.lr.ph.i172.preheader.epil, %.lr.ph363.split.epil.preheader, %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit169", %"_ZZN3tev11decode_rle8EPKhmiiENK3$_1clEii.exit145"
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev12decode_rle24EPKhmii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.tev::HeapArray") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul nsw i32 %3, 3
  %i.b = add i32 %i.a, 3                          ; 2 uses
  %i.c = srem i32 %i.b, 4
  %i.d = sub nsw i32 %i.b, %i.c                   ; 16 uses
  %i.e = mul nsw i32 %i.d, %4
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #38, !noalias !509 ; 17 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !68, !alias.scope !509
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.h, align 8, !tbaa !73
  %.not.i = icmp sgt i32 %4, 0
  %i.i = icmp sgt i32 %3, 0                       ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN3tev12decode_rle24EPKhmii:bb.a
  %i.cm = getelementptr i8, ptr %invariant.gep504, i64 %i.cl ; 3 uses
  %gep505.2 = getelementptr i8, ptr %i.cm, i64 6
  store i8 0, ptr %gep505.2, align 1, !tbaa !74
  %i.cn = getelementptr i8, ptr %i.cm, i64 7
  store i8 0, ptr %i.cn, align 1, !tbaa !74
  %i.co = getelementptr i8, ptr %i.cm, i64 8
  store i8 0, ptr %i.co, align 1, !tbaa !74
  %i.cp = mul i64 %indvars.iv454, 3
  %i.cq = getelementptr i8, ptr %invariant.gep504, i64 %i.cp ; 3 uses
  %gep505.3 = getelementptr i8, ptr %i.cq, i64 9
  store i8 0, ptr %gep505.3, align 1, !tbaa !74
  %i.cr = getelementptr i8, ptr %i.cq, i64 10
  store i8 0, ptr %i.cr, align 1, !tbaa !74
  %i.cs = getelementptr i8, ptr %i.cq, i64 11
  store i8 0, ptr %i.cs, align 1, !tbaa !74
  %indvars.iv.next455.3 = add nsw i64 %indvars.iv454, 4 ; 2 uses
  %exitcond458.not.3 = icmp eq i64 %indvars.iv.next455.3, %i.l
  br i1 %exitcond458.not.3, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit164", label %.lr.ph.i162, !llvm.loop !504

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit164": ; preds = %.lr.ph.i162.prol.loopexit, %.lr.ph.i162, %bb.j
  %.0106398 = add nsw i32 %.0117, 1               ; 5 uses
  %i.ct = icmp slt i32 %.0106398, %4
  %brmerge510.not = and i1 %i.ct, %i.i
  br i1 %brmerge510.not, label %.lr.ph401.split.preheader, label %.critedge

.lr.ph401.split.preheader:                        ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit164"
  %i.cu = xor i32 %.0117, -1
  %i.cv = add i32 %4, %i.cu                       ; 3 uses
  %i.cw = add i32 %4, -2
  %xtraiter536 = and i32 %i.cv, 1
  %i.cx = icmp eq i32 %i.cw, %.0117
  br i1 %i.cx, label %.lr.ph401.split.epil.preheader, label %.lr.ph401.split.preheader.new

.lr.ph401.split.preheader.new:                    ; preds = %.lr.ph401.split.preheader
  %unroll_iter = and i32 %i.cv, -2
  br label %.lr.ph401.split

.lr.ph401.split:                                  ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169.1", %.lr.ph401.split.preheader.new
  %indvar459 = phi i32 [ 0, %.lr.ph401.split.preheader.new ], [ %indvar.next460.1, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169.1" ] ; 3 uses
  %.0106400 = phi i32 [ %.0106398, %.lr.ph401.split.preheader.new ], [ %.0106.1, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169.1" ] ; 3 uses
  %.0106.in399 = phi i32 [ %.0117, %.lr.ph401.split.preheader.new ], [ %.0106, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169.1" ]
  %niter = phi i32 [ 0, %.lr.ph401.split.preheader.new ], [ %niter.next.1, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169.1" ]
  %i.cy = icmp sgt i32 %.0106.in399, -2
  br i1 %i.cy, label %.lr.ph.i167.preheader, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169"

.lr.ph.i167.preheader:                            ; preds = %.lr.ph401.split
  %i.cz = add i32 %.0106398, %indvar459
  %i.da = mul i32 %i.d, %i.cz
  %i.db = sext i32 %i.da to i64
  %scevgep461 = getelementptr i8, ptr %i.g, i64 %i.db
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep461, i8 0, i64 %i.k, i1 false), !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169": ; preds = %.lr.ph.i167.preheader, %.lr.ph401.split
  %.0106 = add nsw i32 %.0106400, 1               ; 2 uses
  %i.dc = icmp sgt i32 %.0106400, -2
  br i1 %i.dc, label %.lr.ph.i167.preheader.1, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169.1"

.lr.ph.i167.preheader.1:                          ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169"
  %indvar.next460 = or disjoint i32 %indvar459, 1
  %i.dd = add i32 %.0106398, %indvar.next460
  %i.de = mul i32 %i.d, %i.dd
  %i.df = sext i32 %i.de to i64
  %scevgep461.1 = getelementptr i8, ptr %i.g, i64 %i.df
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep461.1, i8 0, i64 %i.k, i1 false), !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169.1"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169.1": ; preds = %.lr.ph.i167.preheader.1, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit169"
  %.0106.1 = add nsw i32 %.0106400, 2
  %indvar.next460.1 = add i32 %indvar459, 2       ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit523.unr-lcssa, label %.lr.ph401.split

bb.k:                                             ; preds = %bb.h
  %i.dg = add i64 %.0114, 3                       ; 2 uses
  %.not139 = icmp ult i64 %i.dg, %2
  br i1 %.not139, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !74
  %i.dj = zext i8 %i.di to i32
  %i.dk = add i64 %.0114, 4                       ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !74  ; 3 uses
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nsw i32 %.0121, %i.dj               ; 4 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %3) ; 4 uses
  %i.dp = icmp slt i32 %.0121, %invariant.smin
  br i1 %i.dp, label %.lr.ph384, label %.preheader373

.lr.ph384:                                        ; preds = %bb.l
  %i.dq = icmp sgt i32 %.0117, -1
  %.not.i171 = icmp slt i32 %.0117, %4
  %or.cond349 = and i1 %.not.i171, %i.dq
  %or.cond349.fr = freeze i1 %or.cond349
  br i1 %or.cond349.fr, label %.lr.ph384.split.us.preheader, label %.preheader373

.lr.ph384.split.us.preheader:                     ; preds = %.lr.ph384
  %i.dr = mul nsw i32 %.0117, %i.d
  %i.ds = sext i32 %.0121 to i64                  ; 5 uses
  %i.dt = sext i32 %i.dr to i64
  %wide.trip.count = sext i32 %invariant.smin to i64 ; 3 uses
  %invariant.gep498 = getelementptr i8, ptr %i.g, i64 %i.dt ; 3 uses
  %i.du = sub nsw i64 %wide.trip.count, %i.ds
  %xtraiter = and i64 %i.du, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph384.split.us.prol.loopexit, label %.lr.ph384.split.us.prol

.lr.ph384.split.us.prol:                          ; preds = %.lr.ph384.split.us.preheader
  %i.dv = icmp slt i32 %.0121, 0
  br i1 %i.dv, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.prol", label %bb.m

bb.m:                                             ; preds = %.lr.ph384.split.us.prol
  %i.dw = mul nuw nsw i64 %i.ds, 3
  %gep499.prol = getelementptr i8, ptr %invariant.gep498, i64 %i.dw ; 3 uses
  store i8 0, ptr %gep499.prol, align 1, !tbaa !74
  %i.dx = getelementptr i8, ptr %gep499.prol, i64 1
  store i8 0, ptr %i.dx, align 1, !tbaa !74
  %i.dy = getelementptr i8, ptr %gep499.prol, i64 2
  store i8 0, ptr %i.dy, align 1, !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.prol"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.prol": ; preds = %bb.m, %.lr.ph384.split.us.prol
  %indvars.iv.next427.prol = add nsw i64 %i.ds, 1
  br label %.lr.ph384.split.us.prol.loopexit

.lr.ph384.split.us.prol.loopexit:                 ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.prol", %.lr.ph384.split.us.preheader
  %indvars.iv426.unr = phi i64 [ %i.ds, %.lr.ph384.split.us.preheader ], [ %indvars.iv.next427.prol, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.prol" ]
  %i.dz = add nsw i64 %wide.trip.count, -1
  %i.ea = icmp eq i64 %i.dz, %i.ds
  br i1 %i.ea, label %.preheader373, label %.lr.ph384.split.us

.lr.ph384.split.us:                               ; preds = %.lr.ph384.split.us.prol.loopexit, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.1"
  %indvars.iv426 = phi i64 [ %indvars.iv.next427.1, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.1" ], [ %indvars.iv426.unr, %.lr.ph384.split.us.prol.loopexit ] ; 5 uses
  %i.eb = icmp slt i64 %indvars.iv426, 0
  br i1 %i.eb, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us", label %bb.n

bb.n:                                             ; preds = %.lr.ph384.split.us
  %i.ec = mul nuw nsw i64 %indvars.iv426, 3
  %gep499 = getelementptr i8, ptr %invariant.gep498, i64 %i.ec ; 3 uses
  store i8 0, ptr %gep499, align 1, !tbaa !74
  %i.ed = getelementptr i8, ptr %gep499, i64 1
  store i8 0, ptr %i.ed, align 1, !tbaa !74
  %i.ee = getelementptr i8, ptr %gep499, i64 2
  store i8 0, ptr %i.ee, align 1, !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us": ; preds = %bb.n, %.lr.ph384.split.us
  %i.ef = icmp slt i64 %indvars.iv426, -1
  br i1 %i.ef, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.1", label %bb.o

bb.o:                                             ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us"
  %i.eg = mul i64 %indvars.iv426, 3
  %i.eh = getelementptr i8, ptr %invariant.gep498, i64 %i.eg ; 3 uses
  %gep499.1 = getelementptr i8, ptr %i.eh, i64 3
  store i8 0, ptr %gep499.1, align 1, !tbaa !74
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  store i8 0, ptr %i.ei, align 1, !tbaa !74
  %i.ej = getelementptr i8, ptr %i.eh, i64 5
  store i8 0, ptr %i.ej, align 1, !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.1"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.1": ; preds = %bb.o, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us"
  %indvars.iv.next427.1 = add nsw i64 %indvars.iv426, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next427.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader373, label %.lr.ph384.split.us, !llvm.loop !506

.preheader373:                                    ; preds = %.lr.ph384.split.us.prol.loopexit, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit172.us.1", %.lr.ph384, %bb.l
  %i.ek = add i32 %.0117, %i.dn                   ; 7 uses
  %i.el = icmp ugt i8 %i.dm, 1
  br i1 %i.el, label %.lr.ph389.preheader, label %._crit_edge

.lr.ph389.preheader:                              ; preds = %.preheader373
  %.0104386 = add i32 %.0117, 1                   ; 2 uses
  br label %.lr.ph389

._crit_edge:                                      ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit177", %.preheader373
  %.not140 = icmp ne i8 %i.dm, 0
  %i.em = icmp sgt i32 %invariant.smin, 0
  %or.cond511 = and i1 %.not140, %i.em
  br i1 %or.cond511, label %.lr.ph393, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159"

.lr.ph393:                                        ; preds = %._crit_edge
  %i.en = icmp sgt i32 %i.ek, -1
  %.not.i179 = icmp slt i32 %i.ek, %4
  %or.cond352 = and i1 %i.en, %.not.i179
  br i1 %or.cond352, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit180.preheader", label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit180.preheader": ; preds = %.lr.ph393
  %i.eo = mul i32 %i.ek, %i.d
  %i.ep = sext i32 %i.eo to i64
  %scevgep432 = getelementptr i8, ptr %i.g, i64 %i.ep
  %i.eq = zext nneg i32 %invariant.smin to i64
  %i.er = mul nuw nsw i64 %i.eq, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep432, i8 0, i64 %i.er, i1 false), !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159"

.lr.ph389:                                        ; preds = %.lr.ph389.preheader, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit177"
  %indvar = phi i32 [ 0, %.lr.ph389.preheader ], [ %indvar.next, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit177" ] ; 2 uses
  %.0104388 = phi i32 [ %.0104386, %.lr.ph389.preheader ], [ %.0104, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit177" ] ; 3 uses
  %.0104.in387 = phi i32 [ %.0117, %.lr.ph389.preheader ], [ %.0104388, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit177" ]
  %i.es = icmp sgt i32 %.0104.in387, -2
  %.not.i173 = icmp slt i32 %.0104388, %4
  %or.cond350 = and i1 %i.es, %.not.i173
  %or.cond351 = and i1 %i.i, %or.cond350
  br i1 %or.cond351, label %.lr.ph.i175.preheader, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit177"

.lr.ph.i175.preheader:                            ; preds = %.lr.ph389
  %i.et = add i32 %.0104386, %indvar
  %i.eu = mul i32 %i.d, %i.et
  %i.ev = sext i32 %i.eu to i64
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.ev
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit177"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit177": ; preds = %.lr.ph.i175.preheader, %.lr.ph389
  %.0104 = add nsw i32 %.0104388, 1               ; 2 uses
  %i.ew = icmp slt i32 %.0104, %i.ek
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ew, label %.lr.ph389, label %._crit_edge

bb.p:                                             ; preds = %bb.h
  %i.ex = zext i8 %i.s to i64
  %i.ey = mul nuw nsw i64 %i.ex, 3
  %i.ez = add nuw nsw i64 %i.ey, 1
  %i.fa = and i64 %i.ez, 2046
  %i.fb = add i64 %i.q, %i.fa                     ; 3 uses
  %.not142 = icmp ugt i64 %i.fb, %2
  br i1 %.not142, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.fc = icmp slt i32 %.0121, %3
  br i1 %i.fc, label %.lr.ph396, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159"

.lr.ph396:                                        ; preds = %.preheader
  %i.fd = getelementptr i8, ptr %1, i64 %i.q
  %.not.i182 = icmp sge i32 %.0117, %4
  %i.fe = mul nsw i32 %.0117, %i.d
  %i.ff = zext i8 %i.s to i64
  %i.fg = sext i32 %.0121 to i64
  %i.fh = sext i32 %i.fe to i64
  %invariant.gep502 = getelementptr i8, ptr %i.g, i64 %i.fh
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph396, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit183"
  %indvars.iv447 = phi i64 [ %i.fg, %.lr.ph396 ], [ %indvars.iv.next448, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit183" ] ; 3 uses
  %indvars.iv445 = phi i64 [ 0, %.lr.ph396 ], [ %indvars.iv.next446, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit183" ] ; 2 uses
  %i.fi = trunc nsw i64 %indvars.iv447 to i32
  %i.fj = or i32 %.0117, %i.fi
  %i.fk = icmp slt i32 %i.fj, 0
  %brmerge406 = or i1 %.not.i182, %i.fk
  br i1 %brmerge406, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit183", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fl = mul nuw nsw i64 %indvars.iv445, 3
  %i.fm = getelementptr i8, ptr %i.fd, i64 %i.fl  ; 3 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !74
  %i.fp = getelementptr i8, ptr %i.fm, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !74
  %i.fr = load i8, ptr %i.fm, align 1, !tbaa !74
  %i.fs = mul nuw nsw i64 %indvars.iv447, 3
  %gep503 = getelementptr i8, ptr %invariant.gep502, i64 %i.fs ; 3 uses
  store i8 %i.fr, ptr %gep503, align 1, !tbaa !74
  %i.ft = getelementptr i8, ptr %gep503, i64 1
  store i8 %i.fq, ptr %i.ft, align 1, !tbaa !74
  %i.fu = getelementptr i8, ptr %gep503, i64 2
  store i8 %i.fo, ptr %i.fu, align 1, !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit183"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit183": ; preds = %bb.q, %bb.r
  %indvars.iv.next448 = add nsw i64 %indvars.iv447, 1 ; 3 uses
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %i.fv = icmp samesign ult i64 %indvars.iv.next446, %i.ff
  %i.fw = icmp slt i64 %indvars.iv.next448, %i.l
  %i.fx = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %i.fx, label %bb.q, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit", !llvm.loop !507

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit": ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit183"
  %i.fy = trunc nsw i64 %indvars.iv.next448 to i32
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit417": ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit"
  %i.fz = trunc nsw i64 %indvars.iv.next to i32
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159": ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit417", %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit180.preheader", %.lr.ph.i157.preheader, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit", %bb.e, %.lr.ph393, %.preheader, %._crit_edge, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit154"
  %.4 = phi i32 [ %i.fy, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit" ], [ %i.fz, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit417" ], [ %i.do, %._crit_edge ], [ 0, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit154" ], [ %i.do, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit180.preheader" ], [ %.0121, %.preheader ], [ %i.do, %.lr.ph393 ], [ 0, %.lr.ph.i157.preheader ], [ %.0121, %bb.e ] ; 2 uses
  %.1118 = phi i32 [ %.0117, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit" ], [ %.0117, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit417" ], [ %i.ek, %._crit_edge ], [ %i.bo, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit154" ], [ %i.ek, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit180.preheader" ], [ %.0117, %.preheader ], [ %i.ek, %.lr.ph393 ], [ %i.bo, %.lr.ph.i157.preheader ], [ %.0117, %bb.e ] ; 3 uses
  %.2116 = phi i64 [ %i.fb, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit" ], [ %i.x, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159.loopexit417" ], [ %i.dk, %._crit_edge ], [ %i.q, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit154" ], [ %i.dk, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_0clEiihhh.exit180.preheader" ], [ %i.fb, %.preheader ], [ %i.dk, %.lr.ph393 ], [ %i.q, %.lr.ph.i157.preheader ], [ %i.x, %bb.e ]
  %.not144 = icmp slt i32 %.1118, %4
  br i1 %.not144, label %bb.b, label %.thread332

.thread332:                                       ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159", %bb.b
  %.6 = phi i32 [ %.0121, %bb.b ], [ %.4, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159" ] ; 2 uses
  %.3120 = phi i32 [ %.0117, %bb.b ], [ %.1118, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit159" ] ; 8 uses
  %i.ga = icmp sgt i32 %.3120, -1
  %.not.i184 = icmp slt i32 %.3120, %4
  %or.cond354 = and i1 %i.ga, %.not.i184
  %i.gb = icmp slt i32 %.6, %3
  %or.cond355 = select i1 %or.cond354, i1 %i.gb, i1 false
  br i1 %or.cond355, label %.lr.ph.i186.preheader, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit188"

.lr.ph.i186.preheader:                            ; preds = %.thread332
  %i.gc = mul nsw i32 %.3120, %i.d
  %i.gd = sext i32 %.6 to i64                     ; 4 uses
  %i.ge = sext i32 %i.gc to i64
  %invariant.gep506 = getelementptr i8, ptr %i.g, i64 %i.ge ; 5 uses
  %i.gf = sub nsw i64 %i.l, %i.gd
  %xtraiter539 = and i64 %i.gf, 3                 ; 2 uses
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %.lr.ph.i186.prol.loopexit, label %.lr.ph.i186.prol

.lr.ph.i186.prol:                                 ; preds = %.lr.ph.i186.preheader, %.lr.ph.i186.prol
  %indvars.iv468.prol = phi i64 [ %indvars.iv.next469.prol, %.lr.ph.i186.prol ], [ %i.gd, %.lr.ph.i186.preheader ] ; 2 uses
  %prol.iter541 = phi i64 [ %prol.iter541.next, %.lr.ph.i186.prol ], [ 0, %.lr.ph.i186.preheader ]
  %i.gg = mul nsw i64 %indvars.iv468.prol, 3
  %gep507.prol = getelementptr i8, ptr %invariant.gep506, i64 %i.gg ; 3 uses
  store i8 0, ptr %gep507.prol, align 1, !tbaa !74
  %i.gh = getelementptr i8, ptr %gep507.prol, i64 1
  store i8 0, ptr %i.gh, align 1, !tbaa !74
  %i.gi = getelementptr i8, ptr %gep507.prol, i64 2
  store i8 0, ptr %i.gi, align 1, !tbaa !74
  %indvars.iv.next469.prol = add nsw i64 %indvars.iv468.prol, 1 ; 2 uses
  %prol.iter541.next = add i64 %prol.iter541, 1   ; 2 uses
  %prol.iter541.cmp.not = icmp eq i64 %prol.iter541.next, %xtraiter539
  br i1 %prol.iter541.cmp.not, label %.lr.ph.i186.prol.loopexit, label %.lr.ph.i186.prol, !llvm.loop !508

.lr.ph.i186.prol.loopexit:                        ; preds = %.lr.ph.i186.prol, %.lr.ph.i186.preheader
  %indvars.iv468.unr = phi i64 [ %i.gd, %.lr.ph.i186.preheader ], [ %indvars.iv.next469.prol, %.lr.ph.i186.prol ]
  %i.gj = sub nsw i64 %i.gd, %i.l
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit188", label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %.lr.ph.i186.prol.loopexit, %.lr.ph.i186
  %indvars.iv468 = phi i64 [ %indvars.iv.next469.3, %.lr.ph.i186 ], [ %indvars.iv468.unr, %.lr.ph.i186.prol.loopexit ] ; 5 uses
  %i.gl = mul nsw i64 %indvars.iv468, 3
  %gep507 = getelementptr i8, ptr %invariant.gep506, i64 %i.gl ; 3 uses
  store i8 0, ptr %gep507, align 1, !tbaa !74
  %i.gm = getelementptr i8, ptr %gep507, i64 1
  store i8 0, ptr %i.gm, align 1, !tbaa !74
  %i.gn = getelementptr i8, ptr %gep507, i64 2
  store i8 0, ptr %i.gn, align 1, !tbaa !74
  %i.go = mul i64 %indvars.iv468, 3
  %i.gp = getelementptr i8, ptr %invariant.gep506, i64 %i.go ; 3 uses
  %gep507.1 = getelementptr i8, ptr %i.gp, i64 3
  store i8 0, ptr %gep507.1, align 1, !tbaa !74
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  store i8 0, ptr %i.gq, align 1, !tbaa !74
  %i.gr = getelementptr i8, ptr %i.gp, i64 5
  store i8 0, ptr %i.gr, align 1, !tbaa !74
  %i.gs = mul i64 %indvars.iv468, 3
  %i.gt = getelementptr i8, ptr %invariant.gep506, i64 %i.gs ; 3 uses
  %gep507.2 = getelementptr i8, ptr %i.gt, i64 6
  store i8 0, ptr %gep507.2, align 1, !tbaa !74
  %i.gu = getelementptr i8, ptr %i.gt, i64 7
  store i8 0, ptr %i.gu, align 1, !tbaa !74
  %i.gv = getelementptr i8, ptr %i.gt, i64 8
  store i8 0, ptr %i.gv, align 1, !tbaa !74
  %i.gw = mul i64 %indvars.iv468, 3
  %i.gx = getelementptr i8, ptr %invariant.gep506, i64 %i.gw ; 3 uses
  %gep507.3 = getelementptr i8, ptr %i.gx, i64 9
  store i8 0, ptr %gep507.3, align 1, !tbaa !74
  %i.gy = getelementptr i8, ptr %i.gx, i64 10
  store i8 0, ptr %i.gy, align 1, !tbaa !74
  %i.gz = getelementptr i8, ptr %i.gx, i64 11
  store i8 0, ptr %i.gz, align 1, !tbaa !74
  %indvars.iv.next469.3 = add nsw i64 %indvars.iv468, 4 ; 2 uses
  %exitcond472.not.3 = icmp eq i64 %indvars.iv.next469.3, %i.l
  br i1 %exitcond472.not.3, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit188", label %.lr.ph.i186, !llvm.loop !504

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit188": ; preds = %.lr.ph.i186.prol.loopexit, %.lr.ph.i186, %.thread332
  %.0402 = add nsw i32 %.3120, 1                  ; 5 uses
  %i.ha = icmp slt i32 %.0402, %4
  %brmerge514.not = and i1 %i.ha, %i.i
  br i1 %brmerge514.not, label %.lr.ph405.split.preheader, label %.critedge

.lr.ph405.split.preheader:                        ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit188"
  %i.hb = xor i32 %.3120, -1
  %i.hc = add i32 %4, %i.hb                       ; 3 uses
  %i.hd = add i32 %4, -2
  %xtraiter542 = and i32 %i.hc, 1
  %i.he = icmp eq i32 %i.hd, %.3120
  br i1 %i.he, label %.lr.ph405.split.epil.preheader, label %.lr.ph405.split.preheader.new

.lr.ph405.split.preheader.new:                    ; preds = %.lr.ph405.split.preheader
  %unroll_iter545 = and i32 %i.hc, -2
  br label %.lr.ph405.split

.lr.ph405.split:                                  ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193.1", %.lr.ph405.split.preheader.new
  %indvar473 = phi i32 [ 0, %.lr.ph405.split.preheader.new ], [ %indvar.next474.1, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193.1" ] ; 3 uses
  %.0404 = phi i32 [ %.0402, %.lr.ph405.split.preheader.new ], [ %.0.1, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193.1" ] ; 3 uses
  %.0.in403 = phi i32 [ %.3120, %.lr.ph405.split.preheader.new ], [ %.0, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193.1" ]
  %niter546 = phi i32 [ 0, %.lr.ph405.split.preheader.new ], [ %niter546.next.1, %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193.1" ]
  %i.hf = icmp sgt i32 %.0.in403, -2
  br i1 %i.hf, label %.lr.ph.i191.preheader, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193"

.lr.ph.i191.preheader:                            ; preds = %.lr.ph405.split
  %i.hg = add i32 %.0402, %indvar473
  %i.hh = mul i32 %i.d, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %scevgep475 = getelementptr i8, ptr %i.g, i64 %i.hi
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep475, i8 0, i64 %i.k, i1 false), !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193"

"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193": ; preds = %.lr.ph.i191.preheader, %.lr.ph405.split
  %.0 = add nsw i32 %.0404, 1                     ; 2 uses
  %i.hj = icmp sgt i32 %.0404, -2
  br i1 %i.hj, label %.lr.ph.i191.preheader.1, label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193.1"

.lr.ph.i191.preheader.1:                          ; preds = %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193"
  %indvar.next474 = or disjoint i32 %indvar473, 1
  %i.hk = add i32 %.0402, %indvar.next474
  %i.hl = mul i32 %i.d, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %scevgep475.1 = getelementptr i8, ptr %i.g, i64 %i.hm
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep475.1, i8 0, i64 %i.k, i1 false), !tbaa !74
  br label %"_ZZN3tev12decode_rle24EPKhmiiENK3$_1clEii.exit193.1"

end_hunk_1
