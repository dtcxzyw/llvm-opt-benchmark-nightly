Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_combine_row:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %.1234, i64 12
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !45
  %i.gk = getelementptr inbounds nuw i8, ptr %.1231, i64 16
  %i.gl = load i32, ptr %i.gh, align 4, !tbaa !45
  %i.gm = getelementptr inbounds nuw i8, ptr %.1234, i64 16
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !45
  %i.gn = getelementptr inbounds nuw i8, ptr %.1231, i64 20
  %i.go = load i32, ptr %i.gk, align 4, !tbaa !45
  %i.gp = getelementptr inbounds nuw i8, ptr %.1234, i64 20
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !45
  %i.gq = getelementptr inbounds nuw i8, ptr %.1231, i64 24
  %i.gr = load i32, ptr %i.gn, align 4, !tbaa !45
  %i.gs = getelementptr inbounds nuw i8, ptr %.1234, i64 24
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !45
  %i.gt = getelementptr inbounds nuw i8, ptr %.1231, i64 28
  %i.gu = load i32, ptr %i.gq, align 4, !tbaa !45
  %i.gv = getelementptr inbounds nuw i8, ptr %.1234, i64 28
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !45
  %i.gw = getelementptr inbounds nuw i8, ptr %.1231, i64 32 ; 2 uses
  %i.gx = load i32, ptr %i.gt, align 4, !tbaa !45
  %i.gy = getelementptr inbounds nuw i8, ptr %.1234, i64 32 ; 2 uses
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !45
  %i.gz = add i64 %.0229, -32                     ; 2 uses
  %.not300.7 = icmp eq i64 %i.gz, 0
  br i1 %.not300.7, label %.loopexit551, label %scalar.ph, !llvm.loop !111

.loopexit551:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block505
  %.lcssa426 = phi ptr [ %i.fo, %middle.block505 ], [ %.lcssa559.unr, %scalar.ph.prol.loopexit ], [ %i.gw, %scalar.ph ] ; 2 uses
  %.lcssa = phi ptr [ %i.fn, %middle.block505 ], [ %.lcssa558.unr, %scalar.ph.prol.loopexit ], [ %i.gy, %scalar.ph ] ; 2 uses
  %.not301 = icmp ugt i64 %.5255, %i.ew
  br i1 %.not301, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %.loopexit551
  %i.ha = sub nuw i64 %.5255, %i.ew               ; 12 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.lcssa426, i64 %i.ff ; 6 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.ff ; 6 uses
  %.not302 = icmp ult i64 %i.ha, %i.et
  br i1 %.not302, label %iter.check533, label %bb.ay, !llvm.loop !112

iter.check533:                                    ; preds = %bb.az
  %.lcssa515 = ptrtoaddr ptr %.lcssa to i64
  %.lcssa426514 = ptrtoaddr ptr %.lcssa426 to i64
  %min.iters.check517 = icmp ult i64 %i.ha, 4
  %i.hd = sub i64 %.lcssa426514, %.lcssa515
  %diff.check519 = icmp ugt i64 %i.hd, -32
  %or.cond554 = select i1 %min.iters.check517, i1 true, i1 %diff.check519
  br i1 %or.cond554, label %.preheader.preheader, label %vector.main.loop.iter.check520

vector.main.loop.iter.check520:                   ; preds = %iter.check533
  %min.iters.check521 = icmp ult i64 %i.ha, 32
  br i1 %min.iters.check521, label %vec.epilog.ph537, label %vector.ph522

vector.ph522:                                     ; preds = %vector.main.loop.iter.check520
  %i.he = and i64 %i.ha, 28
  %n.vec523 = and i64 %i.ha, -32                  ; 5 uses
  %i.hf = getelementptr i8, ptr %i.hb, i64 %n.vec523
  %i.hg = and i64 %i.ha, 31
  %i.hh = getelementptr i8, ptr %i.hc, i64 %n.vec523
  br label %vector.body524

vector.body524:                                   ; preds = %vector.ph522, %vector.body524
  %index525 = phi i64 [ 0, %vector.ph522 ], [ %index.next530, %vector.body524 ] ; 3 uses
  %next.gep526 = getelementptr i8, ptr %i.hb, i64 %index525 ; 2 uses
  %next.gep527 = getelementptr i8, ptr %i.hc, i64 %index525 ; 2 uses
  %i.hi = getelementptr i8, ptr %next.gep526, i64 16
  %wide.load528 = load <16 x i8>, ptr %next.gep526, align 1, !tbaa !8
  %wide.load529 = load <16 x i8>, ptr %i.hi, align 1, !tbaa !8
  %i.hj = getelementptr i8, ptr %next.gep527, i64 16
  store <16 x i8> %wide.load528, ptr %next.gep527, align 1, !tbaa !8
  store <16 x i8> %wide.load529, ptr %i.hj, align 1, !tbaa !8
  %index.next530 = add nuw i64 %index525, 32      ; 2 uses
  %i.hk = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.hk, label %middle.block531, label %vector.body524, !llvm.loop !113

middle.block531:                                  ; preds = %vector.body524
  %cmp.n532 = icmp eq i64 %i.ha, %n.vec523
  br i1 %cmp.n532, label %.loopexit, label %vec.epilog.iter.check534

vec.epilog.iter.check534:                         ; preds = %middle.block531
  %min.epilog.iters.check536 = icmp eq i64 %i.he, 0
  br i1 %min.epilog.iters.check536, label %.preheader.preheader, label %vec.epilog.ph537, !prof !49

vec.epilog.ph537:                                 ; preds = %vector.main.loop.iter.check520, %vec.epilog.iter.check534
  %vec.epilog.resume.val538 = phi i64 [ %n.vec523, %vec.epilog.iter.check534 ], [ 0, %vector.main.loop.iter.check520 ]
  %n.vec539 = and i64 %i.ha, -4                   ; 4 uses
  %i.hl = getelementptr i8, ptr %i.hb, i64 %n.vec539
  %i.hm = and i64 %i.ha, 3
  %i.hn = getelementptr i8, ptr %i.hc, i64 %n.vec539
  br label %vec.epilog.vector.body540

vec.epilog.vector.body540:                        ; preds = %vec.epilog.vector.body540, %vec.epilog.ph537
  %index541 = phi i64 [ %vec.epilog.resume.val538, %vec.epilog.ph537 ], [ %index.next545, %vec.epilog.vector.body540 ] ; 3 uses
  %next.gep542 = getelementptr i8, ptr %i.hb, i64 %index541
  %next.gep543 = getelementptr i8, ptr %i.hc, i64 %index541
  %wide.load544 = load <4 x i8>, ptr %next.gep542, align 1, !tbaa !8
  store <4 x i8> %wide.load544, ptr %next.gep543, align 1, !tbaa !8
  %index.next545 = add nuw i64 %index541, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next545, %n.vec539
  br i1 %i.ho, label %vec.epilog.middle.block546, label %vec.epilog.vector.body540, !llvm.loop !114

vec.epilog.middle.block546:                       ; preds = %vec.epilog.vector.body540
  %cmp.n547 = icmp eq i64 %i.ha, %n.vec539
  br i1 %cmp.n547, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check533, %vec.epilog.iter.check534, %vec.epilog.middle.block546
  %.5263.ph = phi ptr [ %i.hb, %iter.check533 ], [ %i.hf, %vec.epilog.iter.check534 ], [ %i.hl, %vec.epilog.middle.block546 ] ; 2 uses
  %.7257.ph = phi i64 [ %i.ha, %iter.check533 ], [ %i.hg, %vec.epilog.iter.check534 ], [ %i.hm, %vec.epilog.middle.block546 ] ; 4 uses
  %.5.ph = phi ptr [ %i.hc, %iter.check533 ], [ %i.hh, %vec.epilog.iter.check534 ], [ %i.hn, %vec.epilog.middle.block546 ] ; 2 uses
  %i.hp = add nsw i64 %.7257.ph, -1
  %xtraiter586.a = and i64 %.7257.ph, 7           ; 2 uses
  %lcmp.mod587.not.a = icmp eq i64 %xtraiter586.a, 0
  br i1 %lcmp.mod587.not.a, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.5263.prol = phi ptr [ %i.hq, %.preheader.prol ], [ %.5263.ph, %.preheader.preheader ] ; 2 uses
  %.7257.prol = phi i64 [ %i.ht, %.preheader.prol ], [ %.7257.ph, %.preheader.preheader ]
  %.5.prol = phi ptr [ %i.hs, %.preheader.prol ], [ %.5.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter588.a = phi i64 [ %prol.iter588.next.a, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.5263.prol, i64 1 ; 2 uses
  %i.hr = load i8, ptr %.5263.prol, align 1, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %.5.prol, i64 1 ; 2 uses
  store i8 %i.hr, ptr %.5.prol, align 1, !tbaa !8
  %i.ht = add nsw i64 %.7257.prol, -1             ; 2 uses
  %prol.iter588.next.a = add i64 %prol.iter588.a, 1 ; 2 uses
  %prol.iter588.cmp.not.a = icmp eq i64 %prol.iter588.next.a, %xtraiter586.a
  br i1 %prol.iter588.cmp.not.a, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !115

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.5263.unr = phi ptr [ %.5263.ph, %.preheader.preheader ], [ %i.hq, %.preheader.prol ]
  %.7257.unr = phi i64 [ %.7257.ph, %.preheader.preheader ], [ %i.ht, %.preheader.prol ]
  %.5.unr = phi ptr [ %.5.ph, %.preheader.preheader ], [ %i.hs, %.preheader.prol ]
  %i.hu = icmp ult i64 %i.hp, 7
  br i1 %i.hu, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.5263 = phi ptr [ %i.iq, %.preheader ], [ %.5263.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.7257 = phi i64 [ %i.it, %.preheader ], [ %.7257.unr, %.preheader.prol.loopexit ]
  %.5 = phi ptr [ %i.is, %.preheader ], [ %.5.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.5263, i64 1
  %i.hw = load i8, ptr %.5263, align 1, !tbaa !8
  %i.hx = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.hw, ptr %.5, align 1, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %.5263, i64 2
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !8
  %i.ia = getelementptr inbounds nuw i8, ptr %.5, i64 2
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %.5263, i64 3
  %i.ic = load i8, ptr %i.hy, align 1, !tbaa !8
  %i.id = getelementptr inbounds nuw i8, ptr %.5, i64 3
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %.5263, i64 4
  %i.if = load i8, ptr %i.ib, align 1, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %.5, i64 4
  store i8 %i.if, ptr %i.id, align 1, !tbaa !8
  %i.ih = getelementptr inbounds nuw i8, ptr %.5263, i64 5
  %i.ii = load i8, ptr %i.ie, align 1, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %.5, i64 5
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %.5263, i64 6
  %i.il = load i8, ptr %i.ih, align 1, !tbaa !8
  %i.im = getelementptr inbounds nuw i8, ptr %.5, i64 6
  store i8 %i.il, ptr %i.ij, align 1, !tbaa !8
  %i.in = getelementptr inbounds nuw i8, ptr %.5263, i64 7
  %i.io = load i8, ptr %i.ik, align 1, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %.5, i64 7
  store i8 %i.io, ptr %i.im, align 1, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %.5263, i64 8
  %i.ir = load i8, ptr %i.in, align 1, !tbaa !8
  %i.is = getelementptr inbounds nuw i8, ptr %.5, i64 8
  store i8 %i.ir, ptr %i.ip, align 1, !tbaa !8
  %i.it = add nsw i64 %.7257, -8                  ; 2 uses
  %.not303.7 = icmp eq i64 %i.it, 0
  br i1 %.not303.7, label %.loopexit, label %.preheader, !llvm.loop !116

bb.ba:                                            ; preds = %bb.aw
  %i.iu = lshr i32 %i.fd, 1
  %i.iv = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.iw = add nsw i64 %i.et, -2                   ; 3 uses
  %i.ix = lshr exact i64 %i.iw, 1
  %i.iy = add nuw i64 %i.ix, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.iw, 6
  %min.iters.check439 = icmp ult i64 %i.iw, 30
  %i.iz = and i64 %i.iy, 12
  %n.vec = and i64 %i.iy, -16                     ; 5 uses
  %i.ja = shl i64 %n.vec, 1                       ; 2 uses
  %i.jb = mul i64 %n.vec, -2
  %i.jc = or disjoint i64 %i.jb, %i.et
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.iz, 0
  %n.vec442 = and i64 %i.iy, -4                   ; 4 uses
  %i.jd = shl i64 %n.vec442, 1                    ; 2 uses
  %i.je = shl i64 %n.vec442, 1
  %i.jf = sub i64 %i.et, %i.je
  %cmp.n448 = icmp eq i64 %i.iy, %n.vec442
  br label %iter.check

iter.check:                                       ; preds = %bb.bb, %bb.ba
  %.8 = phi i64 [ %i.cu, %bb.ba ], [ %i.ky, %bb.bb ] ; 2 uses
  %.0226 = phi ptr [ %i.cv, %bb.ba ], [ %i.la, %bb.bb ] ; 6 uses
  %.0225 = phi ptr [ %i.cw, %bb.ba ], [ %i.kz, %bb.bb ] ; 6 uses
  %.0225438 = ptrtoaddr ptr %.0225 to i64
  %.0226437 = ptrtoaddr ptr %.0226 to i64
  %i.jg = sub i64 %.0225438, %.0226437
  %diff.check = icmp ugt i64 %i.jg, -32
  %or.cond555 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond555, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check439, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jh = getelementptr i8, ptr %.0226, i64 %i.ja ; 2 uses
  %i.ji = getelementptr i8, ptr %.0225, i64 %i.ja ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jj = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0226, i64 %i.jj ; 2 uses
  %next.gep440 = getelementptr i8, ptr %.0225, i64 %i.jj ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep440, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep440, align 2, !tbaa !50
  %wide.load441 = load <8 x i16>, ptr %i.jk, align 2, !tbaa !50
  %i.jl = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !50
  store <8 x i16> %wide.load441, ptr %i.jl, align 2, !tbaa !50
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit552, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.jn = getelementptr i8, ptr %.0226, i64 %i.jd ; 2 uses
  %i.jo = getelementptr i8, ptr %.0225, i64 %i.jd ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index443 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next447, %vec.epilog.vector.body ] ; 2 uses
  %i.jp = shl i64 %index443, 1                    ; 2 uses
  %next.gep444 = getelementptr i8, ptr %.0226, i64 %i.jp
  %next.gep445 = getelementptr i8, ptr %.0225, i64 %i.jp
  %wide.load446 = load <4 x i16>, ptr %next.gep445, align 2, !tbaa !50
  store <4 x i16> %wide.load446, ptr %next.gep444, align 2, !tbaa !50
  %index.next447 = add nuw i64 %index443, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next447, %n.vec442
  br i1 %i.jq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n448, label %.loopexit552, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1227.ph = phi ptr [ %.0226, %iter.check ], [ %i.jh, %vec.epilog.iter.check ], [ %i.jn, %vec.epilog.middle.block ] ; 2 uses
  %.1.ph = phi ptr [ %.0225, %iter.check ], [ %i.ji, %vec.epilog.iter.check ], [ %i.jo, %vec.epilog.middle.block ] ; 2 uses
  %.0.ph = phi i64 [ %i.et, %iter.check ], [ %i.jc, %vec.epilog.iter.check ], [ %i.jf, %vec.epilog.middle.block ] ; 3 uses
  %i.jr = add i64 %.0.ph, -2                      ; 2 uses
  %i.js = lshr i64 %i.jr, 1
  %i.jt = add nuw i64 %i.js, 1
  %xtraiter = and i64 %i.jt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.1227.prol = phi ptr [ %i.jw, %vec.epilog.scalar.ph.prol ], [ %.1227.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1.prol = phi ptr [ %i.ju, %vec.epilog.scalar.ph.prol ], [ %.1.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i64 [ %i.jx, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.1.prol, i64 2 ; 3 uses
  %i.jv = load i16, ptr %.1.prol, align 2, !tbaa !50
  %i.jw = getelementptr inbounds nuw i8, ptr %.1227.prol, i64 2 ; 3 uses
  store i16 %i.jv, ptr %.1227.prol, align 2, !tbaa !50
  %i.jx = add i64 %.0.prol, -2                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !119

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa568.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ju, %vec.epilog.scalar.ph.prol ]
  %.lcssa567.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.jw, %vec.epilog.scalar.ph.prol ]
  %.1227.unr = phi ptr [ %.1227.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jw, %vec.epilog.scalar.ph.prol ]
  %.1.unr = phi ptr [ %.1.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ju, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi i64 [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jx, %vec.epilog.scalar.ph.prol ]
  %i.jy = icmp ult i64 %i.jr, 14
  br i1 %i.jy, label %.loopexit552, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1227 = phi ptr [ %i.kw, %vec.epilog.scalar.ph ], [ %.1227.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.1 = phi ptr [ %i.ku, %vec.epilog.scalar.ph ], [ %.1.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0 = phi i64 [ %i.kx, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.ka = load i16, ptr %.1, align 2, !tbaa !50
  %i.kb = getelementptr inbounds nuw i8, ptr %.1227, i64 2
  store i16 %i.ka, ptr %.1227, align 2, !tbaa !50
  %i.kc = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.kd = load i16, ptr %i.jz, align 2, !tbaa !50
  %i.ke = getelementptr inbounds nuw i8, ptr %.1227, i64 4
  store i16 %i.kd, ptr %i.kb, align 2, !tbaa !50
  %i.kf = getelementptr inbounds nuw i8, ptr %.1, i64 6
  %i.kg = load i16, ptr %i.kc, align 2, !tbaa !50
  %i.kh = getelementptr inbounds nuw i8, ptr %.1227, i64 6
  store i16 %i.kg, ptr %i.ke, align 2, !tbaa !50
  %i.ki = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.kj = load i16, ptr %i.kf, align 2, !tbaa !50
  %i.kk = getelementptr inbounds nuw i8, ptr %.1227, i64 8
  store i16 %i.kj, ptr %i.kh, align 2, !tbaa !50
  %i.kl = getelementptr inbounds nuw i8, ptr %.1, i64 10
  %i.km = load i16, ptr %i.ki, align 2, !tbaa !50
  %i.kn = getelementptr inbounds nuw i8, ptr %.1227, i64 10
  store i16 %i.km, ptr %i.kk, align 2, !tbaa !50
  %i.ko = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.kp = load i16, ptr %i.kl, align 2, !tbaa !50
  %i.kq = getelementptr inbounds nuw i8, ptr %.1227, i64 12
  store i16 %i.kp, ptr %i.kn, align 2, !tbaa !50
  %i.kr = getelementptr inbounds nuw i8, ptr %.1, i64 14
  %i.ks = load i16, ptr %i.ko, align 2, !tbaa !50
  %i.kt = getelementptr inbounds nuw i8, ptr %.1227, i64 14
  store i16 %i.ks, ptr %i.kq, align 2, !tbaa !50
  %i.ku = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.kv = load i16, ptr %i.kr, align 2, !tbaa !50
  %i.kw = getelementptr inbounds nuw i8, ptr %.1227, i64 16 ; 2 uses
  store i16 %i.kv, ptr %i.kt, align 2, !tbaa !50
  %i.kx = add i64 %.0, -16                        ; 2 uses
  %.not296.7 = icmp eq i64 %i.kx, 0
  br i1 %.not296.7, label %.loopexit552, label %vec.epilog.scalar.ph, !llvm.loop !120

.loopexit552:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa431 = phi ptr [ %i.jo, %vec.epilog.middle.block ], [ %i.ji, %middle.block ], [ %.lcssa568.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ku, %vec.epilog.scalar.ph ] ; 2 uses
  %.lcssa430 = phi ptr [ %i.jn, %vec.epilog.middle.block ], [ %i.jh, %middle.block ], [ %.lcssa567.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.kw, %vec.epilog.scalar.ph ] ; 2 uses
  %.not297 = icmp ugt i64 %.8, %i.ew
  br i1 %.not297, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %.loopexit552
  %i.ky = sub nuw i64 %.8, %i.ew                  ; 12 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %.lcssa431, i64 %i.iv ; 6 uses
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %.lcssa430, i64 %i.iv ; 6 uses
  %.not298 = icmp ult i64 %i.ky, %i.et
  br i1 %.not298, label %iter.check473, label %iter.check, !llvm.loop !121

iter.check473:                                    ; preds = %bb.bb
  %.lcssa430456 = ptrtoaddr ptr %.lcssa430 to i64
  %.lcssa431455 = ptrtoaddr ptr %.lcssa431 to i64
  %min.iters.check457 = icmp ult i64 %i.ky, 4
  %i.lb = sub i64 %.lcssa431455, %.lcssa430456
  %diff.check459 = icmp ugt i64 %i.lb, -32
  %or.cond556 = select i1 %min.iters.check457, i1 true, i1 %diff.check459
  br i1 %or.cond556, label %.preheader326.preheader, label %vector.main.loop.iter.check460

vector.main.loop.iter.check460:                   ; preds = %iter.check473
  %min.iters.check461 = icmp ult i64 %i.ky, 32
  br i1 %min.iters.check461, label %vec.epilog.ph477, label %vector.ph462

vector.ph462:                                     ; preds = %vector.main.loop.iter.check460
  %i.lc = and i64 %i.ky, 28
  %n.vec463 = and i64 %i.ky, -32                  ; 5 uses
  %i.ld = getelementptr i8, ptr %i.kz, i64 %n.vec463
  %i.le = and i64 %i.ky, 31
  %i.lf = getelementptr i8, ptr %i.la, i64 %n.vec463
  br label %vector.body464

vector.body464:                                   ; preds = %vector.ph462, %vector.body464
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 3 uses
  %next.gep466 = getelementptr i8, ptr %i.kz, i64 %index465 ; 2 uses
  %next.gep467 = getelementptr i8, ptr %i.la, i64 %index465 ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep466, i64 16
  %wide.load468 = load <16 x i8>, ptr %next.gep466, align 1, !tbaa !8
  %wide.load469 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !8
  %i.lh = getelementptr i8, ptr %next.gep467, i64 16
  store <16 x i8> %wide.load468, ptr %next.gep467, align 1, !tbaa !8
  store <16 x i8> %wide.load469, ptr %i.lh, align 1, !tbaa !8
  %index.next470 = add nuw i64 %index465, 32      ; 2 uses
  %i.li = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.li, label %middle.block471, label %vector.body464, !llvm.loop !122

middle.block471:                                  ; preds = %vector.body464
  %cmp.n472 = icmp eq i64 %i.ky, %n.vec463
  br i1 %cmp.n472, label %.loopexit, label %vec.epilog.iter.check474

vec.epilog.iter.check474:                         ; preds = %middle.block471
  %min.epilog.iters.check476 = icmp eq i64 %i.lc, 0
  br i1 %min.epilog.iters.check476, label %.preheader326.preheader, label %vec.epilog.ph477, !prof !49

vec.epilog.ph477:                                 ; preds = %vector.main.loop.iter.check460, %vec.epilog.iter.check474
  %vec.epilog.resume.val478 = phi i64 [ %n.vec463, %vec.epilog.iter.check474 ], [ 0, %vector.main.loop.iter.check460 ]
  %n.vec479 = and i64 %i.ky, -4                   ; 4 uses
  %i.lj = getelementptr i8, ptr %i.kz, i64 %n.vec479
  %i.lk = and i64 %i.ky, 3
  %i.ll = getelementptr i8, ptr %i.la, i64 %n.vec479
  br label %vec.epilog.vector.body480

vec.epilog.vector.body480:                        ; preds = %vec.epilog.vector.body480, %vec.epilog.ph477
  %index481 = phi i64 [ %vec.epilog.resume.val478, %vec.epilog.ph477 ], [ %index.next485, %vec.epilog.vector.body480 ] ; 3 uses
  %next.gep482 = getelementptr i8, ptr %i.kz, i64 %index481
  %next.gep483 = getelementptr i8, ptr %i.la, i64 %index481
  %wide.load484 = load <4 x i8>, ptr %next.gep482, align 1, !tbaa !8
  store <4 x i8> %wide.load484, ptr %next.gep483, align 1, !tbaa !8
  %index.next485 = add nuw i64 %index481, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next485, %n.vec479
  br i1 %i.lm, label %vec.epilog.middle.block486, label %vec.epilog.vector.body480, !llvm.loop !123
end_hunk_0
