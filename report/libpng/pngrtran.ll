Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_do_read_transformations:bb.a
  %i.csk = and <8 x i8> %i.csj, splat (i8 85)
  store <8 x i8> %i.csk, ptr %next.gep662, align 1, !tbaa !26
  %index.next664 = add nuw i64 %index661, 8       ; 2 uses
  %i.csl = icmp eq i64 %index.next664, %n.vec659
  br i1 %i.csl, label %vec.epilog.middle.block665, label %vec.epilog.vector.body660, !llvm.loop !281

vec.epilog.middle.block665:                       ; preds = %vec.epilog.vector.body660
  %cmp.n666 = icmp eq i64 %i.crz, %n.vec659
  br i1 %cmp.n666, label %.sink.split.i254, label %.lr.ph112.i.preheader

.lr.ph112.i.preheader:                            ; preds = %iter.check654, %vec.epilog.iter.check656, %vec.epilog.middle.block665
  %.085111.i.ph = phi ptr [ %i.cqa, %iter.check654 ], [ %i.csb, %vec.epilog.iter.check656 ], [ %i.csi, %vec.epilog.middle.block665 ]
  br label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %.lr.ph112.i
  %.085111.i = phi ptr [ %i.csp, %.lr.ph112.i ], [ %.085111.i.ph, %.lr.ph112.i.preheader ] ; 3 uses
  %i.csm = load i8, ptr %.085111.i, align 1, !tbaa !26
  %i.csn = lshr i8 %i.csm, 1
  %i.cso = and i8 %i.csn, 85
  %i.csp = getelementptr inbounds nuw i8, ptr %.085111.i, i64 1 ; 2 uses
  store i8 %i.cso, ptr %.085111.i, align 1, !tbaa !26
  %i.csq = icmp ult ptr %i.csp, %i.cru
  br i1 %i.csq, label %.lr.ph112.i, label %.sink.split.i254, !llvm.loop !282

bb.in:                                            ; preds = %.split.i255
  %i.csr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.css = load i64, ptr %i.csr, align 8, !tbaa !77 ; 3 uses
  %i.cst = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.css
  %i.csu = load i32, ptr %i.a, align 16, !tbaa !32 ; 4 uses
  %i.csv = lshr i32 15, %i.csu
  %i.csw = mul nuw nsw i32 %i.csv, 17             ; 3 uses
  %.not115.i = icmp eq i64 %i.css, 0
  br i1 %.not115.i, label %.sink.split.i254, label %iter.check

iter.check:                                       ; preds = %bb.in
  %i.csx = add i64 %i.css, %i.cpz
  %i.csy = add i64 %i.csx, 1
  %i.csz = add i64 %i.cpz, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.csy, i64 %i.csz)
  %i.cta = xor i64 %i.cpz, -1
  %i.ctb = add i64 %umax, %i.cta                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ctb, 4
  br i1 %min.iters.check, label %.lr.ph110.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check625 = icmp ult i64 %i.ctb, 16
  br i1 %min.iters.check625, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ctc = and i64 %i.ctb, 12
  %n.vec = and i64 %i.ctb, -16                    ; 4 uses
  %i.ctd = getelementptr i8, ptr %i.cqa, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.csu, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert626 = insertelement <16 x i32> poison, i32 %i.csw, i64 0
  %broadcast.splat627 = shufflevector <16 x i32> %broadcast.splatinsert626, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cqa, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26
  %i.cte = zext <16 x i8> %wide.load to <16 x i32>
  %i.ctf = lshr <16 x i32> %i.cte, %broadcast.splat
  %i.ctg = and <16 x i32> %i.ctf, %broadcast.splat627
  %i.cth = trunc nuw <16 x i32> %i.ctg to <16 x i8>
  store <16 x i8> %i.cth, ptr %next.gep, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cti = icmp eq i64 %index.next, %n.vec
  br i1 %i.cti, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ctb, %n.vec
  br i1 %cmp.n, label %.sink.split.i254, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ctc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph110.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec628 = and i64 %i.ctb, -4                  ; 3 uses
  %i.ctj = getelementptr i8, ptr %i.cqa, i64 %n.vec628
  %broadcast.splatinsert629 = insertelement <4 x i32> poison, i32 %i.csu, i64 0
  %broadcast.splat630 = shufflevector <4 x i32> %broadcast.splatinsert629, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert631 = insertelement <4 x i32> poison, i32 %i.csw, i64 0
  %broadcast.splat632 = shufflevector <4 x i32> %broadcast.splatinsert631, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index633 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next636, %vec.epilog.vector.body ] ; 2 uses
  %next.gep634 = getelementptr i8, ptr %i.cqa, i64 %index633 ; 2 uses
  %wide.load635 = load <4 x i8>, ptr %next.gep634, align 1, !tbaa !26
  %i.ctk = zext <4 x i8> %wide.load635 to <4 x i32>
  %i.ctl = lshr <4 x i32> %i.ctk, %broadcast.splat630
  %i.ctm = and <4 x i32> %i.ctl, %broadcast.splat632
  %i.ctn = trunc nuw <4 x i32> %i.ctm to <4 x i8>
  store <4 x i8> %i.ctn, ptr %next.gep634, align 1, !tbaa !26
  %index.next636 = add nuw i64 %index633, 4       ; 2 uses
  %i.cto = icmp eq i64 %index.next636, %n.vec628
  br i1 %i.cto, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n637 = icmp eq i64 %i.ctb, %n.vec628
  br i1 %cmp.n637, label %.sink.split.i254, label %.lr.ph110.i.preheader

.lr.ph110.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.083109.i.ph = phi ptr [ %i.cqa, %iter.check ], [ %i.ctd, %vec.epilog.iter.check ], [ %i.ctj, %vec.epilog.middle.block ]
  br label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i.preheader, %.lr.ph110.i
  %.083109.i = phi ptr [ %i.ctu, %.lr.ph110.i ], [ %.083109.i.ph, %.lr.ph110.i.preheader ] ; 3 uses
  %i.ctp = load i8, ptr %.083109.i, align 1, !tbaa !26
  %i.ctq = zext i8 %i.ctp to i32
  %i.ctr = lshr i32 %i.ctq, %i.csu
  %i.cts = and i32 %i.ctr, %i.csw
  %i.ctt = trunc nuw i32 %i.cts to i8
  %i.ctu = getelementptr inbounds nuw i8, ptr %.083109.i, i64 1 ; 2 uses
  store i8 %i.ctt, ptr %.083109.i, align 1, !tbaa !26
  %i.ctv = icmp ult ptr %i.ctu, %i.cst
  br i1 %i.ctv, label %.lr.ph110.i, label %.sink.split.i254, !llvm.loop !285

bb.io:                                            ; preds = %.split.i255
  %i.ctw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ctx = load i64, ptr %i.ctw, align 8, !tbaa !77 ; 2 uses
  %i.cty = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.ctx
  %.not114.i = icmp eq i64 %i.ctx, 0
  br i1 %.not114.i, label %.sink.split.i254, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %bb.io, %.lr.ph108.i
  %.081107.i = phi i32 [ %spec.store.select.i, %.lr.ph108.i ], [ 0, %bb.io ] ; 2 uses
  %.082106.i = phi ptr [ %i.cuh, %.lr.ph108.i ], [ %i.cqa, %bb.io ] ; 3 uses
  %i.ctz = load i8, ptr %.082106.i, align 1, !tbaa !26
  %i.cua = zext i8 %i.ctz to i32
  %i.cub = sext i32 %.081107.i to i64
  %i.cuc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cub
  %i.cud = load i32, ptr %i.cuc, align 4, !tbaa !32
  %i.cue = lshr i32 %i.cua, %i.cud
  %i.cuf = add nsw i32 %.081107.i, 1              ; 2 uses
  %.not96.i = icmp slt i32 %i.cuf, %.1.i251
  %spec.store.select.i = select i1 %.not96.i, i32 %i.cuf, i32 0
  %i.cug = trunc nuw i32 %i.cue to i8
  %i.cuh = getelementptr inbounds nuw i8, ptr %.082106.i, i64 1 ; 2 uses
  store i8 %i.cug, ptr %.082106.i, align 1, !tbaa !26
  %i.cui = icmp ult ptr %i.cuh, %i.cty
  br i1 %i.cui, label %.lr.ph108.i, label %.sink.split.i254, !llvm.loop !286

bb.ip:                                            ; preds = %.split.i255
  %i.cuj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cuk = load i64, ptr %i.cuj, align 8, !tbaa !77 ; 2 uses
  %i.cul = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.cuk
  %.not113.i = icmp eq i64 %i.cuk, 0
  br i1 %.not113.i, label %.sink.split.i254, label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %bb.ip, %.lr.ph.i256
  %.0105.i = phi i32 [ %spec.store.select2.i, %.lr.ph.i256 ], [ 0, %bb.ip ] ; 2 uses
  %.079104.i = phi ptr [ %i.cvb, %.lr.ph.i256 ], [ %i.cqa, %bb.ip ] ; 4 uses
  %i.cum = load i8, ptr %.079104.i, align 1, !tbaa !26
  %i.cun = zext i8 %i.cum to i32
  %i.cuo = shl nuw nsw i32 %i.cun, 8
  %i.cup = getelementptr inbounds nuw i8, ptr %.079104.i, i64 1 ; 2 uses
  %i.cuq = load i8, ptr %i.cup, align 1, !tbaa !26
  %i.cur = zext i8 %i.cuq to i32
  %i.cus = or disjoint i32 %i.cuo, %i.cur
  %i.cut = sext i32 %.0105.i to i64
  %i.cuu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cut
  %i.cuv = load i32, ptr %i.cuu, align 4, !tbaa !32
  %i.cuw = lshr i32 %i.cus, %i.cuv                ; 2 uses
  %i.cux = add nsw i32 %.0105.i, 1                ; 2 uses
  %.not95.i = icmp slt i32 %i.cux, %.1.i251
  %spec.store.select2.i = select i1 %.not95.i, i32 %i.cux, i32 0
  %i.cuy = lshr i32 %i.cuw, 8
  %i.cuz = trunc nuw i32 %i.cuy to i8
  store i8 %i.cuz, ptr %.079104.i, align 1, !tbaa !26
  %i.cva = trunc i32 %i.cuw to i8
  %i.cvb = getelementptr inbounds nuw i8, ptr %.079104.i, i64 2 ; 2 uses
  store i8 %i.cva, ptr %i.cup, align 1, !tbaa !26
  %i.cvc = icmp ult ptr %i.cvb, %i.cul
  br i1 %i.cvc, label %.lr.ph.i256, label %.sink.split.i254, !llvm.loop !287

.sink.split.i254:                                 ; preds = %.lr.ph.i256, %.lr.ph108.i, %.lr.ph110.i, %.lr.ph112.i, %middle.block, %vec.epilog.middle.block, %middle.block651, %vec.epilog.middle.block665, %bb.ip, %bb.io, %bb.in, %bb.im, %.split.i255, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pre394 = load i32, ptr %i.h, align 4, !tbaa !25
  br label %png_do_unshift.exit

png_do_unshift.exit:                              ; preds = %.sink.split.i254, %bb.ib, %png_do_read_invert_alpha.exit
  %i.cvd = phi i32 [ %.pre394, %.sink.split.i254 ], [ %i.cpw, %bb.ib ], [ %i.cpw, %png_do_read_invert_alpha.exit ]
  %i.cve = and i32 %i.cvd, 4
  %.not164 = icmp eq i32 %i.cve, 0
  br i1 %.not164, label %png_do_unpack.exit, label %bb.iq

bb.iq:                                            ; preds = %png_do_unshift.exit
  %i.cvf = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 1 ; 6 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.cvi = load i8, ptr %i.cvh, align 1, !tbaa !75 ; 2 uses
  %i.cvj = icmp ult i8 %i.cvi, 8
  br i1 %i.cvj, label %bb.ir, label %png_do_unpack.exit

bb.ir:                                            ; preds = %bb.iq
  %i.cvk = load i32, ptr %1, align 8, !tbaa !74   ; 19 uses
  %.pre.i257 = zext i32 %i.cvk to i64             ; 10 uses
  switch i8 %i.cvi, label %.loopexit.i263 [
    i8 1, label %bb.is
    i8 2, label %bb.it
    i8 4, label %bb.iu
  ]

bb.is:                                            ; preds = %bb.ir
  %.not88.i = icmp eq i32 %i.cvk, 0
  br i1 %.not88.i, label %.loopexit.i263, label %.lr.ph85.preheader.i

.lr.ph85.preheader.i:                             ; preds = %bb.is
  %i.cvl = sub i32 0, %i.cvk
  %i.cvm = and i32 %i.cvl, 7                      ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i257 ; 2 uses
  %i.cvo = add i32 %i.cvk, -1                     ; 2 uses
  %i.cvp = lshr i32 %i.cvo, 3
  %i.cvq = zext nneg i32 %i.cvp to i64
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cvq ; 2 uses
  %xtraiter849 = and i32 %i.cvk, 1
  %i.cvs = icmp eq i32 %i.cvo, 0
  br i1 %i.cvs, label %.lr.ph85.i.epil.preheader, label %.lr.ph85.preheader.i.new

.lr.ph85.preheader.i.new:                         ; preds = %.lr.ph85.preheader.i
  %unroll_iter853 = and i32 %i.cvk, -2
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.lr.ph85.i, %.lr.ph85.preheader.i.new
  %.06084.i = phi i32 [ %i.cvm, %.lr.ph85.preheader.i.new ], [ %.161.i.1, %.lr.ph85.i ] ; 3 uses
  %.pn6983.i = phi ptr [ %i.cvn, %.lr.ph85.preheader.i.new ], [ %.062.i.1, %.lr.ph85.i ] ; 2 uses
  %.06382.i = phi ptr [ %i.cvr, %.lr.ph85.preheader.i.new ], [ %.164.i.1, %.lr.ph85.i ] ; 2 uses
  %niter854 = phi i32 [ 0, %.lr.ph85.preheader.i.new ], [ %niter854.next.1, %.lr.ph85.i ]
  %.062.i = getelementptr inbounds i8, ptr %.pn6983.i, i64 -1
  %i.cvt = load i8, ptr %.06382.i, align 1, !tbaa !26
  %i.cvu = zext i8 %i.cvt to i32
  %i.cvv = lshr i32 %i.cvu, %.06084.i
  %i.cvw = trunc nuw i32 %i.cvv to i8
  %i.cvx = and i8 %i.cvw, 1
  store i8 %i.cvx, ptr %.062.i, align 1, !tbaa !26
  %i.cvy = icmp eq i32 %.06084.i, 7               ; 2 uses
  %i.cvz = add nuw nsw i32 %.06084.i, 1
  %.164.idx.i = sext i1 %i.cvy to i64
  %.164.i = getelementptr inbounds i8, ptr %.06382.i, i64 %.164.idx.i ; 2 uses
  %.161.i = select i1 %i.cvy, i32 0, i32 %i.cvz   ; 3 uses
  %.062.i.1 = getelementptr inbounds i8, ptr %.pn6983.i, i64 -2 ; 3 uses
  %i.cwa = load i8, ptr %.164.i, align 1, !tbaa !26
  %i.cwb = zext i8 %i.cwa to i32
  %i.cwc = lshr i32 %i.cwb, %.161.i
  %i.cwd = trunc nuw i32 %i.cwc to i8
  %i.cwe = and i8 %i.cwd, 1
  store i8 %i.cwe, ptr %.062.i.1, align 1, !tbaa !26
  %i.cwf = icmp eq i32 %.161.i, 7                 ; 2 uses
  %i.cwg = add nuw nsw i32 %.161.i, 1
  %.164.idx.i.1 = sext i1 %i.cwf to i64
  %.164.i.1 = getelementptr inbounds i8, ptr %.164.i, i64 %.164.idx.i.1 ; 2 uses
  %.161.i.1 = select i1 %i.cwf, i32 0, i32 %i.cwg ; 2 uses
  %niter854.next.1 = add nuw i32 %niter854, 2     ; 2 uses
  %niter854.ncmp.1 = icmp eq i32 %niter854.next.1, %unroll_iter853
  br i1 %niter854.ncmp.1, label %.loopexit.i263.loopexit.unr-lcssa, label %.lr.ph85.i, !llvm.loop !288

bb.it:                                            ; preds = %bb.ir
  %.not87.i = icmp eq i32 %i.cvk, 0
  br i1 %.not87.i, label %.loopexit.i263, label %.lr.ph80.preheader.i

.lr.ph80.preheader.i:                             ; preds = %bb.it
  %.neg.i265 = mul i32 %i.cvk, 6
  %i.cwh = and i32 %.neg.i265, 6                  ; 2 uses
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i257 ; 2 uses
  %i.cwj = add i32 %i.cvk, -1                     ; 2 uses
  %i.cwk = lshr i32 %i.cwj, 2
  %i.cwl = zext nneg i32 %i.cwk to i64
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cwl ; 2 uses
  %xtraiter843 = and i32 %i.cvk, 1
  %i.cwn = icmp eq i32 %i.cwj, 0
  br i1 %i.cwn, label %.lr.ph80.i.epil.preheader, label %.lr.ph80.preheader.i.new

.lr.ph80.preheader.i.new:                         ; preds = %.lr.ph80.preheader.i
  %unroll_iter847 = and i32 %i.cvk, -2
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.lr.ph80.i, %.lr.ph80.preheader.i.new
  %.05579.i = phi i32 [ %i.cwh, %.lr.ph80.preheader.i.new ], [ %.156.i.1, %.lr.ph80.i ] ; 3 uses
  %.pn6878.i = phi ptr [ %i.cwi, %.lr.ph80.preheader.i.new ], [ %.057.i.1, %.lr.ph80.i ] ; 2 uses
  %.05877.i = phi ptr [ %i.cwm, %.lr.ph80.preheader.i.new ], [ %.159.i.1, %.lr.ph80.i ] ; 2 uses
  %niter848 = phi i32 [ 0, %.lr.ph80.preheader.i.new ], [ %niter848.next.1, %.lr.ph80.i ]
  %.057.i = getelementptr inbounds i8, ptr %.pn6878.i, i64 -1
  %i.cwo = load i8, ptr %.05877.i, align 1, !tbaa !26
  %i.cwp = zext i8 %i.cwo to i32
  %i.cwq = lshr i32 %i.cwp, %.05579.i
  %i.cwr = trunc nuw i32 %i.cwq to i8
  %i.cws = and i8 %i.cwr, 3
  store i8 %i.cws, ptr %.057.i, align 1, !tbaa !26
  %i.cwt = icmp eq i32 %.05579.i, 6               ; 2 uses
  %i.cwu = add i32 %.05579.i, 2
  %.159.idx.i = sext i1 %i.cwt to i64
  %.159.i = getelementptr inbounds i8, ptr %.05877.i, i64 %.159.idx.i ; 2 uses
  %.156.i = select i1 %i.cwt, i32 0, i32 %i.cwu   ; 3 uses
  %.057.i.1 = getelementptr inbounds i8, ptr %.pn6878.i, i64 -2 ; 3 uses
  %i.cwv = load i8, ptr %.159.i, align 1, !tbaa !26
  %i.cww = zext i8 %i.cwv to i32
  %i.cwx = lshr i32 %i.cww, %.156.i
  %i.cwy = trunc nuw i32 %i.cwx to i8
  %i.cwz = and i8 %i.cwy, 3
  store i8 %i.cwz, ptr %.057.i.1, align 1, !tbaa !26
  %i.cxa = icmp eq i32 %.156.i, 6                 ; 2 uses
  %i.cxb = add i32 %.156.i, 2
  %.159.idx.i.1 = sext i1 %i.cxa to i64
  %.159.i.1 = getelementptr inbounds i8, ptr %.159.i, i64 %.159.idx.i.1 ; 2 uses
  %.156.i.1 = select i1 %i.cxa, i32 0, i32 %i.cxb ; 2 uses
  %niter848.next.1 = add nuw i32 %niter848, 2     ; 2 uses
  %niter848.ncmp.1 = icmp eq i32 %niter848.next.1, %unroll_iter847
  br i1 %niter848.ncmp.1, label %.loopexit.i263.loopexit674.unr-lcssa, label %.lr.ph80.i, !llvm.loop !289

bb.iu:                                            ; preds = %bb.ir
  %.not86.i = icmp eq i32 %i.cvk, 0
  br i1 %.not86.i, label %.loopexit.i263, label %.lr.ph.preheader.i258

.lr.ph.preheader.i258:                            ; preds = %bb.iu
  %i.cxc = shl i32 %i.cvk, 2
  %i.cxd = and i32 %i.cxc, 4                      ; 2 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i257 ; 2 uses
  %i.cxf = add i32 %i.cvk, -1                     ; 2 uses
  %i.cxg = lshr i32 %i.cxf, 1
  %i.cxh = zext nneg i32 %i.cxg to i64
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cxh ; 2 uses
  %xtraiter837 = and i32 %i.cvk, 1
  %i.cxj = icmp eq i32 %i.cxf, 0
  br i1 %i.cxj, label %.lr.ph.i259.epil.preheader, label %.lr.ph.preheader.i258.new

.lr.ph.preheader.i258.new:                        ; preds = %.lr.ph.preheader.i258
  %unroll_iter841 = and i32 %i.cvk, -2
  br label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %.lr.ph.i259, %.lr.ph.preheader.i258.new
  %.075.i = phi i32 [ %i.cxd, %.lr.ph.preheader.i258.new ], [ %.1.i261.1, %.lr.ph.i259 ] ; 2 uses
  %.pn74.i = phi ptr [ %i.cxe, %.lr.ph.preheader.i258.new ], [ %.052.i.1, %.lr.ph.i259 ] ; 2 uses
  %.05373.i = phi ptr [ %i.cxi, %.lr.ph.preheader.i258.new ], [ %.154.i.1.a, %.lr.ph.i259 ] ; 2 uses
  %niter842 = phi i32 [ 0, %.lr.ph.preheader.i258.new ], [ %niter842.next.1, %.lr.ph.i259 ]
  %.052.i = getelementptr inbounds i8, ptr %.pn74.i, i64 -1
  %i.cxk = load i8, ptr %.05373.i, align 1, !tbaa !26
  %i.cxl = zext i8 %i.cxk to i32
  %i.cxm = lshr i32 %i.cxl, %.075.i
  %i.cxn = trunc nuw i32 %i.cxm to i8
  %i.cxo = and i8 %i.cxn, 15
  store i8 %i.cxo, ptr %.052.i, align 1, !tbaa !26
  %.not.i260 = icmp ne i32 %.075.i, 0             ; 4 uses
  %.154.idx.i = sext i1 %.not.i260 to i64
  %.154.i = getelementptr inbounds i8, ptr %.05373.i, i64 %.154.idx.i ; 2 uses
  %.1.i261 = select i1 %.not.i260, i32 0, i32 4
  %.052.i.1 = getelementptr inbounds i8, ptr %.pn74.i, i64 -2 ; 3 uses
  %i.cxp = load i8, ptr %.154.i, align 1, !tbaa !26
  %i.cxq = zext i8 %i.cxp to i32
  %i.cxr = lshr i32 %i.cxq, %.1.i261
  %i.cxs = trunc nuw i32 %i.cxr to i8
  %i.cxt = and i8 %i.cxs, 15
  store i8 %i.cxt, ptr %.052.i.1, align 1, !tbaa !26
  %not..not.i260 = xor i1 %.not.i260, true
  %.154.idx.i.1 = sext i1 %not..not.i260 to i64
  %.154.i.1.a = getelementptr inbounds i8, ptr %.154.i, i64 %.154.idx.i.1 ; 2 uses
  %.1.i261.1 = select i1 %.not.i260, i32 4, i32 0 ; 2 uses
  %niter842.next.1 = add nuw i32 %niter842, 2     ; 2 uses
  %niter842.ncmp.1 = icmp eq i32 %niter842.next.1, %unroll_iter841
  br i1 %niter842.ncmp.1, label %.loopexit.i263.loopexit675.unr-lcssa, label %.lr.ph.i259, !llvm.loop !290

.loopexit.i263.loopexit.unr-lcssa:                ; preds = %.lr.ph85.i
  %lcmp.mod851.not = icmp eq i32 %xtraiter849, 0
  br i1 %lcmp.mod851.not, label %.loopexit.i263, label %.lr.ph85.i.epil.preheader

.lr.ph85.i.epil.preheader:                        ; preds = %.loopexit.i263.loopexit.unr-lcssa, %.lr.ph85.preheader.i
  %.06084.i.epil.init = phi i32 [ %i.cvm, %.lr.ph85.preheader.i ], [ %.161.i.1, %.loopexit.i263.loopexit.unr-lcssa ]
  %.pn6983.i.epil.init = phi ptr [ %i.cvn, %.lr.ph85.preheader.i ], [ %.062.i.1, %.loopexit.i263.loopexit.unr-lcssa ]
  %.06382.i.epil.init = phi ptr [ %i.cvr, %.lr.ph85.preheader.i ], [ %.164.i.1, %.loopexit.i263.loopexit.unr-lcssa ]
  %lcmp.mod852 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod852)
  %.062.i.epil = getelementptr inbounds i8, ptr %.pn6983.i.epil.init, i64 -1
  %i.cxu = load i8, ptr %.06382.i.epil.init, align 1, !tbaa !26
  %i.cxv = zext i8 %i.cxu to i32
  %i.cxw = lshr i32 %i.cxv, %.06084.i.epil.init
  %i.cxx = trunc nuw i32 %i.cxw to i8
  %i.cxy = and i8 %i.cxx, 1
  store i8 %i.cxy, ptr %.062.i.epil, align 1, !tbaa !26
  br label %.loopexit.i263

.loopexit.i263.loopexit674.unr-lcssa:             ; preds = %.lr.ph80.i
  %lcmp.mod845.not = icmp eq i32 %xtraiter843, 0
  br i1 %lcmp.mod845.not, label %.loopexit.i263, label %.lr.ph80.i.epil.preheader

.lr.ph80.i.epil.preheader:                        ; preds = %.loopexit.i263.loopexit674.unr-lcssa, %.lr.ph80.preheader.i
  %.05579.i.epil.init = phi i32 [ %i.cwh, %.lr.ph80.preheader.i ], [ %.156.i.1, %.loopexit.i263.loopexit674.unr-lcssa ]
  %.pn6878.i.epil.init = phi ptr [ %i.cwi, %.lr.ph80.preheader.i ], [ %.057.i.1, %.loopexit.i263.loopexit674.unr-lcssa ]
  %.05877.i.epil.init = phi ptr [ %i.cwm, %.lr.ph80.preheader.i ], [ %.159.i.1, %.loopexit.i263.loopexit674.unr-lcssa ]
  %lcmp.mod846 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod846)
  %.057.i.epil = getelementptr inbounds i8, ptr %.pn6878.i.epil.init, i64 -1
  %i.cxz = load i8, ptr %.05877.i.epil.init, align 1, !tbaa !26
  %i.cya = zext i8 %i.cxz to i32
  %i.cyb = lshr i32 %i.cya, %.05579.i.epil.init
  %i.cyc = trunc nuw i32 %i.cyb to i8
  %i.cyd = and i8 %i.cyc, 3
  store i8 %i.cyd, ptr %.057.i.epil, align 1, !tbaa !26
  br label %.loopexit.i263

.loopexit.i263.loopexit675.unr-lcssa:             ; preds = %.lr.ph.i259
  %lcmp.mod839.not = icmp eq i32 %xtraiter837, 0
  br i1 %lcmp.mod839.not, label %.loopexit.i263, label %.lr.ph.i259.epil.preheader

.lr.ph.i259.epil.preheader:                       ; preds = %.loopexit.i263.loopexit675.unr-lcssa, %.lr.ph.preheader.i258
  %.075.i.epil.init = phi i32 [ %i.cxd, %.lr.ph.preheader.i258 ], [ %.1.i261.1, %.loopexit.i263.loopexit675.unr-lcssa ]
  %.pn74.i.epil.init = phi ptr [ %i.cxe, %.lr.ph.preheader.i258 ], [ %.052.i.1, %.loopexit.i263.loopexit675.unr-lcssa ]
  %.05373.i.epil.init = phi ptr [ %i.cxi, %.lr.ph.preheader.i258 ], [ %.154.i.1.a, %.loopexit.i263.loopexit675.unr-lcssa ]
  %lcmp.mod840 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod840)
  %.052.i.epil = getelementptr inbounds i8, ptr %.pn74.i.epil.init, i64 -1
  %i.cye = load i8, ptr %.05373.i.epil.init, align 1, !tbaa !26
  %i.cyf = zext i8 %i.cye to i32
  %i.cyg = lshr i32 %i.cyf, %.075.i.epil.init
  %i.cyh = trunc nuw i32 %i.cyg to i8
  %2 = and i8 %i.cyh, 15
  store i8 %2, ptr %.052.i.epil, align 1, !tbaa !26
  br label %.loopexit.i263

.loopexit.i263:                                   ; preds = %.lr.ph.i259.epil.preheader, %.loopexit.i263.loopexit675.unr-lcssa, %.lr.ph80.i.epil.preheader, %.loopexit.i263.loopexit674.unr-lcssa, %.lr.ph85.i.epil.preheader, %.loopexit.i263.loopexit.unr-lcssa, %bb.iu, %bb.it, %bb.is, %bb.ir
  %.pre-phi.i264 = phi i64 [ %.pre.i257, %.lr.ph80.i.epil.preheader ], [ %.pre.i257, %bb.ir ], [ %.pre.i257, %.lr.ph85.i.epil.preheader ], [ 0, %bb.is ], [ 0, %bb.iu ], [ 0, %bb.it ], [ %.pre.i257, %.loopexit.i263.loopexit.unr-lcssa ], [ %.pre.i257, %.loopexit.i263.loopexit674.unr-lcssa ], [ %.pre.i257, %.loopexit.i263.loopexit675.unr-lcssa ], [ %.pre.i257, %.lr.ph.i259.epil.preheader ]
  store i8 8, ptr %i.cvh, align 1, !tbaa !75
  %i.cyi = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cyj = load i8, ptr %i.cyi, align 2, !tbaa !78 ; 2 uses
  %i.cyk = shl i8 %i.cyj, 3
  %i.cyl = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.cyk, ptr %i.cyl, align 1, !tbaa !76
  %i.cym = zext i8 %i.cyj to i64
  %i.cyn = mul nuw nsw i64 %.pre-phi.i264, %i.cym
  %i.cyo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cyn, ptr %i.cyo, align 8, !tbaa !77
  br label %png_do_unpack.exit

png_do_unpack.exit:                               ; preds = %.loopexit.i263, %bb.iq, %png_do_unshift.exit
  %i.cyp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cyq = load i8, ptr %i.cyp, align 8, !tbaa !73
  %i.cyr = icmp eq i8 %i.cyq, 3
  br i1 %i.cyr, label %bb.iv, label %bb.ix

bb.iv:                                            ; preds = %png_do_unpack.exit
  %i.cys = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.cyt = load i32, ptr %i.cys, align 4, !tbaa !327
  %i.cyu = icmp sgt i32 %i.cyt, -1
  br i1 %i.cyu, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  tail call void @png_do_check_palette_indexes(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %png_do_unpack.exit
  %i.cyv = load i32, ptr %i.h, align 4, !tbaa !25 ; 2 uses
  %i.cyw = and i32 %i.cyv, 1
  %.not165 = icmp eq i32 %i.cyw, 0
  br i1 %.not165, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.cyx = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyx, i64 1
  tail call void @png_do_bgr(ptr noundef nonnull %1, ptr noundef nonnull %i.cyy) #11
  %.pre395 = load i32, ptr %i.h, align 4, !tbaa !25
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.cyz = phi i32 [ %.pre395, %bb.iy ], [ %i.cyv, %bb.ix ] ; 2 uses
  %i.cza = and i32 %i.cyz, 65536
  %.not166 = icmp eq i32 %i.cza, 0
  br i1 %.not166, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.czb = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.czc = getelementptr inbounds nuw i8, ptr %i.czb, i64 1
  tail call void @png_do_packswap(ptr noundef nonnull %1, ptr noundef nonnull %i.czc) #11
  %.pre396 = load i32, ptr %i.h, align 4, !tbaa !25
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.czd = phi i32 [ %.pre396, %bb.ja ], [ %i.cyz, %bb.iz ] ; 5 uses
  %i.cze = and i32 %i.czd, 32768
  %.not167 = icmp eq i32 %i.cze, 0
  br i1 %.not167, label %png_do_read_filler.exit, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.czf = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.czg = getelementptr inbounds nuw i8, ptr %i.czf, i64 1 ; 8 uses
  %i.czh = getelementptr inbounds nuw i8, ptr %0, i64 634
  %i.czi = load i16, ptr %i.czh, align 2, !tbaa !328 ; 2 uses
  %i.czj = load i32, ptr %i.e, align 8, !tbaa !24 ; 4 uses
  %i.czk = load i32, ptr %1, align 8, !tbaa !74   ; 31 uses
  %i.czl = lshr i16 %i.czi, 8
  %i.czm = trunc nuw i16 %i.czl to i8             ; 10 uses
  %i.czn = trunc i16 %i.czi to i8                 ; 28 uses
  %i.czo = load i8, ptr %i.cyp, align 8, !tbaa !73
  switch i8 %i.czo, label %png_do_read_filler.exit [
    i8 0, label %bb.jd
    i8 2, label %bb.jk
  ]

bb.jd:                                            ; preds = %bb.jc
  %i.czp = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.czq = load i8, ptr %i.czp, align 1, !tbaa !75
  switch i8 %i.czq, label %png_do_read_filler.exit [
    i8 8, label %bb.je
    i8 16, label %bb.jh
  ]

bb.je:                                            ; preds = %bb.jd
  %i.czr = and i32 %i.czj, 128
  %.not205.i = icmp eq i32 %i.czr, 0
  %i.czs = zext i32 %i.czk to i64                 ; 6 uses
  br i1 %.not205.i, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.czt = getelementptr inbounds nuw i8, ptr %i.czg, i64 %i.czs ; 3 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czt, i64 %i.czs ; 3 uses
  %i.czv = icmp ugt i32 %i.czk, 1
  br i1 %i.czv, label %.lr.ph245.i.preheader, label %._crit_edge246.i

.lr.ph245.i.preheader:                            ; preds = %bb.jf
  %i.czw = add i32 %i.czk, -1                     ; 2 uses
  %i.czx = add i32 %i.czk, -2
  %xtraiter881 = and i32 %i.czw, 3                ; 3 uses
  %i.czy = icmp ult i32 %i.czx, 3
  br i1 %i.czy, label %.lr.ph245.i.epil.preheader, label %.lr.ph245.i.preheader.new

.lr.ph245.i.preheader.new:                        ; preds = %.lr.ph245.i.preheader
  %unroll_iter886 = and i32 %i.czw, -4
  br label %.lr.ph245.i

.lr.ph245.i:                                      ; preds = %.lr.ph245.i, %.lr.ph245.i.preheader.new
  %.0197243.i = phi ptr [ %i.czu, %.lr.ph245.i.preheader.new ], [ %i.dao, %.lr.ph245.i ] ; 8 uses
  %.0198242.i = phi ptr [ %i.czt, %.lr.ph245.i.preheader.new ], [ %i.dam, %.lr.ph245.i ] ; 4 uses
  %niter887 = phi i32 [ 0, %.lr.ph245.i.preheader.new ], [ %niter887.next.3, %.lr.ph245.i ]
  %i.czz = getelementptr inbounds i8, ptr %.0197243.i, i64 -1
  store i8 %i.czn, ptr %i.czz, align 1, !tbaa !26
  %i.daa = getelementptr inbounds i8, ptr %.0198242.i, i64 -1
  %i.dab = load i8, ptr %i.daa, align 1, !tbaa !26
  %i.dac = getelementptr inbounds i8, ptr %.0197243.i, i64 -2
  store i8 %i.dab, ptr %i.dac, align 1, !tbaa !26
  %i.dad = getelementptr inbounds i8, ptr %.0197243.i, i64 -3
  store i8 %i.czn, ptr %i.dad, align 1, !tbaa !26
  %i.dae = getelementptr inbounds i8, ptr %.0198242.i, i64 -2
  %i.daf = load i8, ptr %i.dae, align 1, !tbaa !26
  %i.dag = getelementptr inbounds i8, ptr %.0197243.i, i64 -4
  store i8 %i.daf, ptr %i.dag, align 1, !tbaa !26
  %i.dah = getelementptr inbounds i8, ptr %.0197243.i, i64 -5
  store i8 %i.czn, ptr %i.dah, align 1, !tbaa !26
  %i.dai = getelementptr inbounds i8, ptr %.0198242.i, i64 -3
  %i.daj = load i8, ptr %i.dai, align 1, !tbaa !26
  %i.dak = getelementptr inbounds i8, ptr %.0197243.i, i64 -6
  store i8 %i.daj, ptr %i.dak, align 1, !tbaa !26
  %i.dal = getelementptr inbounds i8, ptr %.0197243.i, i64 -7
  store i8 %i.czn, ptr %i.dal, align 1, !tbaa !26
  %i.dam = getelementptr inbounds i8, ptr %.0198242.i, i64 -4 ; 3 uses
  %i.dan = load i8, ptr %i.dam, align 1, !tbaa !26
  %i.dao = getelementptr inbounds i8, ptr %.0197243.i, i64 -8 ; 4 uses
  store i8 %i.dan, ptr %i.dao, align 1, !tbaa !26
  %niter887.next.3 = add i32 %niter887, 4         ; 2 uses
  %niter887.ncmp.3 = icmp eq i32 %niter887.next.3, %unroll_iter886
  br i1 %niter887.ncmp.3, label %._crit_edge246.i.loopexit.unr-lcssa, label %.lr.ph245.i, !llvm.loop !291

._crit_edge246.i.loopexit.unr-lcssa:              ; preds = %.lr.ph245.i
  %lcmp.mod883.not = icmp eq i32 %xtraiter881, 0
  br i1 %lcmp.mod883.not, label %._crit_edge246.i, label %.lr.ph245.i.epil.preheader

.lr.ph245.i.epil.preheader:                       ; preds = %._crit_edge246.i.loopexit.unr-lcssa, %.lr.ph245.i.preheader
  %.0197243.i.epil.init = phi ptr [ %i.czu, %.lr.ph245.i.preheader ], [ %i.dao, %._crit_edge246.i.loopexit.unr-lcssa ]
  %.0198242.i.epil.init = phi ptr [ %i.czt, %.lr.ph245.i.preheader ], [ %i.dam, %._crit_edge246.i.loopexit.unr-lcssa ]
  %lcmp.mod885 = icmp ne i32 %xtraiter881, 0
  tail call void @llvm.assume(i1 %lcmp.mod885)
  br label %.lr.ph245.i.epil

.lr.ph245.i.epil:                                 ; preds = %.lr.ph245.i.epil, %.lr.ph245.i.epil.preheader
  %.0197243.i.epil = phi ptr [ %i.das, %.lr.ph245.i.epil ], [ %.0197243.i.epil.init, %.lr.ph245.i.epil.preheader ] ; 2 uses
  %.0198242.i.epil = phi ptr [ %i.daq, %.lr.ph245.i.epil ], [ %.0198242.i.epil.init, %.lr.ph245.i.epil.preheader ]
  %epil.iter882 = phi i32 [ %epil.iter882.next, %.lr.ph245.i.epil ], [ 0, %.lr.ph245.i.epil.preheader ]
  %i.dap = getelementptr inbounds i8, ptr %.0197243.i.epil, i64 -1
  store i8 %i.czn, ptr %i.dap, align 1, !tbaa !26
  %i.daq = getelementptr inbounds i8, ptr %.0198242.i.epil, i64 -1 ; 2 uses
  %i.dar = load i8, ptr %i.daq, align 1, !tbaa !26
  %i.das = getelementptr inbounds i8, ptr %.0197243.i.epil, i64 -2 ; 3 uses
  store i8 %i.dar, ptr %i.das, align 1, !tbaa !26
  %epil.iter882.next = add i32 %epil.iter882, 1   ; 2 uses
  %epil.iter882.cmp.not = icmp eq i32 %epil.iter882.next, %xtraiter881
  br i1 %epil.iter882.cmp.not, label %._crit_edge246.i, label %.lr.ph245.i.epil, !llvm.loop !292

._crit_edge246.i:                                 ; preds = %._crit_edge246.i.loopexit.unr-lcssa, %.lr.ph245.i.epil, %bb.jf
  %.0197.lcssa.i = phi ptr [ %i.czu, %bb.jf ], [ %i.dao, %._crit_edge246.i.loopexit.unr-lcssa ], [ %i.das, %.lr.ph245.i.epil ]
  %i.dat = getelementptr inbounds i8, ptr %.0197.lcssa.i, i64 -1
  store i8 %i.czn, ptr %i.dat, align 1, !tbaa !26
  %i.dau = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 2, ptr %i.dau, align 2, !tbaa !78
  %i.dav = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 16, ptr %i.dav, align 1, !tbaa !76
  %i.daw = shl nuw nsw i64 %i.czs, 1
  br label %.sink.split.i268

bb.jg:                                            ; preds = %bb.je
  %.not257.i = icmp eq i32 %i.czk, 0
  br i1 %.not257.i, label %._crit_edge253.i, label %.lr.ph252.preheader.i

.lr.ph252.preheader.i:                            ; preds = %bb.jg
  %i.dax = getelementptr inbounds nuw i8, ptr %i.czg, i64 %i.czs ; 3 uses
  %i.day = getelementptr inbounds nuw i8, ptr %i.dax, i64 %i.czs ; 2 uses
  %xtraiter888 = and i32 %i.czk, 3                ; 3 uses
  %i.daz = icmp ult i32 %i.czk, 4
  br i1 %i.daz, label %.lr.ph252.i.epil.preheader, label %.lr.ph252.preheader.i.new

.lr.ph252.preheader.i.new:                        ; preds = %.lr.ph252.preheader.i
  %unroll_iter892 = and i32 %i.czk, -4
  br label %.lr.ph252.i

.lr.ph252.i:                                      ; preds = %.lr.ph252.i, %.lr.ph252.preheader.i.new
  %.0195250.i = phi ptr [ %i.day, %.lr.ph252.preheader.i.new ], [ %i.dbp, %.lr.ph252.i ] ; 8 uses
  %.0196249.i = phi ptr [ %i.dax, %.lr.ph252.preheader.i.new ], [ %i.dbm, %.lr.ph252.i ] ; 4 uses
  %niter893 = phi i32 [ 0, %.lr.ph252.preheader.i.new ], [ %niter893.next.3, %.lr.ph252.i ]
  %i.dba = getelementptr inbounds i8, ptr %.0196249.i, i64 -1
  %i.dbb = load i8, ptr %i.dba, align 1, !tbaa !26
end_hunk_0
begin_hunk_1_@png_do_read_transformations:bb.a
  %unroll_iter898 = and i32 %i.dke, -4
  br label %.lr.ph.i276

.lr.ph.i276:                                      ; preds = %.lr.ph.i276, %.lr.ph.preheader.i275.new
  %.06884.i = phi ptr [ %i.dmi, %.lr.ph.preheader.i275.new ], [ %i.dmt, %.lr.ph.i276 ] ; 4 uses
  %niter899 = phi i32 [ 0, %.lr.ph.preheader.i275.new ], [ %niter899.next.3, %.lr.ph.i276 ]
  %i.dmk = getelementptr i8, ptr %.06884.i, i64 -4 ; 2 uses
  %i.dml = load <4 x i8>, ptr %i.dmk, align 1, !tbaa !26
  %i.dmm = shufflevector <4 x i8> %i.dml, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.dmm, ptr %i.dmk, align 1, !tbaa !26
  %i.dmn = getelementptr i8, ptr %.06884.i, i64 -8 ; 2 uses
  %i.dmo = load <4 x i8>, ptr %i.dmn, align 1, !tbaa !26
  %i.dmp = shufflevector <4 x i8> %i.dmo, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.dmp, ptr %i.dmn, align 1, !tbaa !26
  %i.dmq = getelementptr i8, ptr %.06884.i, i64 -12 ; 2 uses
  %i.dmr = load <4 x i8>, ptr %i.dmq, align 1, !tbaa !26
  %i.dms = shufflevector <4 x i8> %i.dmr, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.dms, ptr %i.dmq, align 1, !tbaa !26
  %i.dmt = getelementptr i8, ptr %.06884.i, i64 -16 ; 4 uses
  %i.dmu = load <4 x i8>, ptr %i.dmt, align 1, !tbaa !26
  %i.dmv = shufflevector <4 x i8> %i.dmu, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.dmv, ptr %i.dmt, align 1, !tbaa !26
  %niter899.next.3 = add nuw i32 %niter899, 4     ; 2 uses
  %niter899.ncmp.3 = icmp eq i32 %niter899.next.3, %unroll_iter898
  br i1 %niter899.ncmp.3, label %png_do_read_swap_alpha.exit.loopexit670.unr-lcssa, label %.lr.ph.i276, !llvm.loop !304

png_do_read_swap_alpha.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph97.i
  %lcmp.mod914.not = icmp eq i32 %xtraiter912, 0
  br i1 %lcmp.mod914.not, label %png_do_read_swap_alpha.exit, label %.lr.ph97.i.epil.preheader

.lr.ph97.i.epil.preheader:                        ; preds = %png_do_read_swap_alpha.exit.loopexit.unr-lcssa, %.lr.ph97.preheader.i
  %.07795.i.epil.init = phi ptr [ %i.dkl, %.lr.ph97.preheader.i ], [ %i.dkw, %png_do_read_swap_alpha.exit.loopexit.unr-lcssa ]
  %lcmp.mod915 = icmp ne i32 %xtraiter912, 0
  tail call void @llvm.assume(i1 %lcmp.mod915)
  br label %.lr.ph97.i.epil

.lr.ph97.i.epil:                                  ; preds = %.lr.ph97.i.epil, %.lr.ph97.i.epil.preheader
  %.07795.i.epil = phi ptr [ %i.dmw, %.lr.ph97.i.epil ], [ %.07795.i.epil.init, %.lr.ph97.i.epil.preheader ]
  %epil.iter913 = phi i32 [ %epil.iter913.next, %.lr.ph97.i.epil ], [ 0, %.lr.ph97.i.epil.preheader ]
  %i.dmw = getelementptr i8, ptr %.07795.i.epil, i64 -4 ; 3 uses
  %i.dmx = load <4 x i8>, ptr %i.dmw, align 1, !tbaa !26
  %i.dmy = shufflevector <4 x i8> %i.dmx, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.dmy, ptr %i.dmw, align 1, !tbaa !26
  %epil.iter913.next = add i32 %epil.iter913, 1   ; 2 uses
  %epil.iter913.cmp.not = icmp eq i32 %epil.iter913.next, %xtraiter912
  br i1 %epil.iter913.cmp.not, label %png_do_read_swap_alpha.exit, label %.lr.ph97.i.epil, !llvm.loop !305

png_do_read_swap_alpha.exit.loopexit668.unr-lcssa: ; preds = %.lr.ph93.i
  %lcmp.mod908.not = icmp eq i32 %xtraiter906, 0
  br i1 %lcmp.mod908.not, label %png_do_read_swap_alpha.exit, label %.lr.ph93.i.epil.preheader

.lr.ph93.i.epil.preheader:                        ; preds = %png_do_read_swap_alpha.exit.loopexit668.unr-lcssa, %.lr.ph93.preheader.i
  %.07491.i.epil.init = phi ptr [ %i.dlb, %.lr.ph93.preheader.i ], [ %i.dlg, %png_do_read_swap_alpha.exit.loopexit668.unr-lcssa ]
  %lcmp.mod909 = trunc i32 %i.dke to i1
  tail call void @llvm.assume(i1 %lcmp.mod909)
  %i.dmz = getelementptr i8, ptr %.07491.i.epil.init, i64 -8 ; 2 uses
  %i.dna = load <8 x i8>, ptr %i.dmz, align 1, !tbaa !26
  %i.dnb = shufflevector <8 x i8> %i.dna, <8 x i8> poison, <8 x i32> <i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  store <8 x i8> %i.dnb, ptr %i.dmz, align 1, !tbaa !26
  br label %png_do_read_swap_alpha.exit

png_do_read_swap_alpha.exit.loopexit669.unr-lcssa: ; preds = %.lr.ph89.i
  %lcmp.mod902.not = icmp eq i32 %xtraiter900, 0
  br i1 %lcmp.mod902.not, label %png_do_read_swap_alpha.exit, label %.lr.ph89.i.epil.preheader

.lr.ph89.i.epil.preheader:                        ; preds = %png_do_read_swap_alpha.exit.loopexit669.unr-lcssa, %.lr.ph89.preheader.i
  %.07187.i279.epil.init = phi ptr [ %i.dlo, %.lr.ph89.preheader.i ], [ %i.dme, %png_do_read_swap_alpha.exit.loopexit669.unr-lcssa ]
  %lcmp.mod903 = icmp ne i32 %xtraiter900, 0
  tail call void @llvm.assume(i1 %lcmp.mod903)
  br label %.lr.ph89.i.epil

.lr.ph89.i.epil:                                  ; preds = %.lr.ph89.i.epil, %.lr.ph89.i.epil.preheader
  %.07187.i279.epil = phi ptr [ %i.dne, %.lr.ph89.i.epil ], [ %.07187.i279.epil.init, %.lr.ph89.i.epil.preheader ] ; 2 uses
  %epil.iter901 = phi i32 [ %epil.iter901.next, %.lr.ph89.i.epil ], [ 0, %.lr.ph89.i.epil.preheader ]
  %i.dnc = getelementptr inbounds i8, ptr %.07187.i279.epil, i64 -1 ; 2 uses
  %i.dnd = load i8, ptr %i.dnc, align 1, !tbaa !26
  %i.dne = getelementptr i8, ptr %.07187.i279.epil, i64 -2 ; 3 uses
  %i.dnf = load i8, ptr %i.dne, align 1, !tbaa !26
  store i8 %i.dnf, ptr %i.dnc, align 1, !tbaa !26
  store i8 %i.dnd, ptr %i.dne, align 1, !tbaa !26
  %epil.iter901.next = add i32 %epil.iter901, 1   ; 2 uses
  %epil.iter901.cmp.not = icmp eq i32 %epil.iter901.next, %xtraiter900
  br i1 %epil.iter901.cmp.not, label %png_do_read_swap_alpha.exit, label %.lr.ph89.i.epil, !llvm.loop !306

png_do_read_swap_alpha.exit.loopexit670.unr-lcssa: ; preds = %.lr.ph.i276
  %lcmp.mod896.not = icmp eq i32 %xtraiter894, 0
  br i1 %lcmp.mod896.not, label %png_do_read_swap_alpha.exit, label %.lr.ph.i276.epil.preheader

.lr.ph.i276.epil.preheader:                       ; preds = %png_do_read_swap_alpha.exit.loopexit670.unr-lcssa, %.lr.ph.preheader.i275
  %.06884.i.epil.init = phi ptr [ %i.dmi, %.lr.ph.preheader.i275 ], [ %i.dmt, %png_do_read_swap_alpha.exit.loopexit670.unr-lcssa ]
  %lcmp.mod897 = icmp ne i32 %xtraiter894, 0
  tail call void @llvm.assume(i1 %lcmp.mod897)
  br label %.lr.ph.i276.epil

.lr.ph.i276.epil:                                 ; preds = %.lr.ph.i276.epil, %.lr.ph.i276.epil.preheader
  %.06884.i.epil = phi ptr [ %i.dng, %.lr.ph.i276.epil ], [ %.06884.i.epil.init, %.lr.ph.i276.epil.preheader ]
  %epil.iter895 = phi i32 [ %epil.iter895.next, %.lr.ph.i276.epil ], [ 0, %.lr.ph.i276.epil.preheader ]
  %i.dng = getelementptr i8, ptr %.06884.i.epil, i64 -4 ; 3 uses
  %i.dnh = load <4 x i8>, ptr %i.dng, align 1, !tbaa !26
  %i.dni = shufflevector <4 x i8> %i.dnh, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.dni, ptr %i.dng, align 1, !tbaa !26
  %epil.iter895.next = add i32 %epil.iter895, 1   ; 2 uses
  %epil.iter895.cmp.not = icmp eq i32 %epil.iter895.next, %xtraiter894
  br i1 %epil.iter895.cmp.not, label %png_do_read_swap_alpha.exit, label %.lr.ph.i276.epil, !llvm.loop !307

png_do_read_swap_alpha.exit:                      ; preds = %png_do_read_swap_alpha.exit.loopexit670.unr-lcssa, %.lr.ph.i276.epil, %png_do_read_swap_alpha.exit.loopexit669.unr-lcssa, %.lr.ph89.i.epil, %.lr.ph93.i.epil.preheader, %png_do_read_swap_alpha.exit.loopexit668.unr-lcssa, %png_do_read_swap_alpha.exit.loopexit.unr-lcssa, %.lr.ph97.i.epil, %bb.jx, %bb.jw, %bb.ju, %bb.jt, %bb.jr, %png_do_read_filler.exit
  %i.dnj = load i32, ptr %i.h, align 4, !tbaa !25 ; 2 uses
  %i.dnk = and i32 %i.dnj, 16
  %.not169 = icmp eq i32 %i.dnk, 0
  br i1 %.not169, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %png_do_read_swap_alpha.exit
  %i.dnl = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dnl, i64 1
  tail call void @png_do_swap(ptr noundef nonnull %1, ptr noundef nonnull %i.dnm) #11
  %.pre398 = load i32, ptr %i.h, align 4, !tbaa !25
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %png_do_read_swap_alpha.exit
  %i.dnn = phi i32 [ %.pre398, %bb.jy ], [ %i.dnj, %png_do_read_swap_alpha.exit ]
  %i.dno = and i32 %i.dnn, 1048576
  %.not170 = icmp eq i32 %i.dno, 0
  br i1 %.not170, label %bb.kk, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.dnp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dnq = load ptr, ptr %i.dnp, align 8, !tbaa !49 ; 2 uses
  %.not171 = icmp eq ptr %i.dnq, null
  br i1 %.not171, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.dnr = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.dns = getelementptr inbounds nuw i8, ptr %i.dnr, i64 1
  tail call void %i.dnq(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dns) #11
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.dnt = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dnu = load i8, ptr %i.dnt, align 8, !tbaa !70 ; 2 uses
  %.not172 = icmp eq i8 %i.dnu, 0
  br i1 %.not172, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.dnv = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.dnu, ptr %i.dnv, align 1, !tbaa !75
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %i.dnw = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.dnx = load i8, ptr %i.dnw, align 1, !tbaa !71 ; 3 uses
  %.not173 = icmp eq i8 %i.dnx, 0
  %.phi.trans.insert400 = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  br i1 %.not173, label %._crit_edge399, label %bb.kf

._crit_edge399:                                   ; preds = %bb.ke
  %.pre401 = load i8, ptr %.phi.trans.insert400, align 2, !tbaa !78
  br label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  store i8 %i.dnx, ptr %.phi.trans.insert400, align 2, !tbaa !78
  br label %bb.kg

bb.kg:                                            ; preds = %._crit_edge399, %bb.kf
  %i.dny = phi i8 [ %.pre401, %._crit_edge399 ], [ %i.dnx, %bb.kf ]
  %i.dnz = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.doa = load i8, ptr %i.dnz, align 1, !tbaa !75
  %i.dob = mul i8 %i.dny, %i.doa                  ; 4 uses
  %i.doc = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.dob, ptr %i.doc, align 1, !tbaa !76
  %i.dod = icmp ugt i8 %i.dob, 7
  %i.doe = load i32, ptr %1, align 8, !tbaa !74
  %i.dof = zext i32 %i.doe to i64                 ; 2 uses
  br i1 %i.dod, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.dog = lshr i8 %i.dob, 3
  %i.doh = zext nneg i8 %i.dog to i64
  %i.doi = mul nuw nsw i64 %i.dof, %i.doh
  br label %bb.kj

bb.ki:                                            ; preds = %bb.kg
  %i.doj = zext nneg i8 %i.dob to i64
  %i.dok = mul nuw nsw i64 %i.dof, %i.doj
  %i.dol = add nuw nsw i64 %i.dok, 7
  %i.dom = lshr i64 %i.dol, 3
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %i.don = phi i64 [ %i.doi, %bb.kh ], [ %i.dom, %bb.ki ]
  %i.doo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.don, ptr %i.doo, align 8, !tbaa !77
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.jz
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @png_do_expand(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !74     ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !73    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !336
  %i.g = zext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !75    ; 3 uses
  %i.k = icmp ult i8 %i.j, 8
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  switch i8 %i.j, label %..loopexit231_crit_edge [
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 4, label %bb.h
  ]

..loopexit231_crit_edge:                          ; preds = %bb.e
  %.pre = zext i32 %i.a to i64
  br label %.loopexit231

bb.f:                                             ; preds = %bb.e
  %i.l = trunc i32 %i.h to i1
  %i.m = select i1 %i.l, i32 255, i32 0           ; 3 uses
  %i.n = zext i32 %i.a to i64                     ; 3 uses
  %.not270 = icmp eq i32 %i.a, 0
  br i1 %.not270, label %.loopexit231, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %bb.f
  %i.o = sub i32 0, %i.a
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.r = add i32 %i.a, -1                         ; 2 uses
  %i.s = lshr i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  %xtraiter322 = and i32 %i.a, 1
  %i.v = icmp eq i32 %i.r, 0
  br i1 %i.v, label %.lr.ph257.epil.preheader, label %.lr.ph257.preheader.new

.lr.ph257.preheader.new:                          ; preds = %.lr.ph257.preheader
  %unroll_iter325 = and i32 %i.a, -2
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257, %.lr.ph257.preheader.new
  %.pn225255 = phi ptr [ %i.q, %.lr.ph257.preheader.new ], [ %.0193.1, %.lr.ph257 ] ; 2 uses
  %.0200254 = phi ptr [ %i.u, %.lr.ph257.preheader.new ], [ %.1201.1, %.lr.ph257 ] ; 2 uses
  %.0210253 = phi i32 [ %i.p, %.lr.ph257.preheader.new ], [ %.1211.1, %.lr.ph257 ] ; 3 uses
  %niter326 = phi i32 [ 0, %.lr.ph257.preheader.new ], [ %niter326.next.1, %.lr.ph257 ]
  %.0193 = getelementptr inbounds i8, ptr %.pn225255, i64 -1
  %i.w = load i8, ptr %.0200254, align 1, !tbaa !26
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw i32 1, %.0210253
  %i.z = and i32 %i.y, %i.x
  %.not223 = icmp ne i32 %i.z, 0
  %. = sext i1 %.not223 to i8
  store i8 %., ptr %.0193, align 1, !tbaa !26
  %i.aa = icmp eq i32 %.0210253, 7                ; 2 uses
  %i.ab = add nuw nsw i32 %.0210253, 1
  %.1211 = select i1 %i.aa, i32 0, i32 %i.ab      ; 3 uses
  %.1201.idx = sext i1 %i.aa to i64
  %.1201 = getelementptr inbounds i8, ptr %.0200254, i64 %.1201.idx ; 2 uses
  %.0193.1 = getelementptr inbounds i8, ptr %.pn225255, i64 -2 ; 3 uses
  %i.ac = load i8, ptr %.1201, align 1, !tbaa !26
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 1, %.1211
  %i.af = and i32 %i.ae, %i.ad
  %.not223.1 = icmp ne i32 %i.af, 0
  %..1 = sext i1 %.not223.1 to i8
  store i8 %..1, ptr %.0193.1, align 1, !tbaa !26
  %i.ag = icmp eq i32 %.1211, 7                   ; 2 uses
  %i.ah = add nuw nsw i32 %.1211, 1
  %.1211.1 = select i1 %i.ag, i32 0, i32 %i.ah    ; 2 uses
  %.1201.idx.1 = sext i1 %i.ag to i64
  %.1201.1 = getelementptr inbounds i8, ptr %.1201, i64 %.1201.idx.1 ; 2 uses
  %niter326.next.1 = add nuw i32 %niter326, 2     ; 2 uses
  %niter326.ncmp.1 = icmp eq i32 %niter326.next.1, %unroll_iter325
  br i1 %niter326.ncmp.1, label %.loopexit231.loopexit.unr-lcssa, label %.lr.ph257, !llvm.loop !329

bb.g:                                             ; preds = %bb.e
  %i.ai = and i32 %i.h, 3
  %i.aj = mul nuw nsw i32 %i.ai, 85               ; 3 uses
  %i.ak = zext i32 %i.a to i64                    ; 3 uses
  %.not269 = icmp eq i32 %i.a, 0
  br i1 %.not269, label %.loopexit231, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %bb.g
  %.neg = mul i32 %i.a, 6
  %i.al = and i32 %.neg, 6                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 2 uses
  %i.an = add i32 %i.a, -1                        ; 2 uses
  %i.ao = lshr i32 %i.an, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap ; 2 uses
  %xtraiter317 = and i32 %i.a, 1
  %i.ar = icmp eq i32 %i.an, 0
  br i1 %i.ar, label %.lr.ph252.epil.preheader, label %.lr.ph252.preheader.new

.lr.ph252.preheader.new:                          ; preds = %.lr.ph252.preheader
  %unroll_iter320 = and i32 %i.a, -2
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252, %.lr.ph252.preheader.new
  %.pn222250 = phi ptr [ %i.am, %.lr.ph252.preheader.new ], [ %.1194.1, %.lr.ph252 ] ; 2 uses
  %.2202249 = phi ptr [ %i.aq, %.lr.ph252.preheader.new ], [ %.3203.1, %.lr.ph252 ] ; 2 uses
  %.2212248 = phi i32 [ %i.al, %.lr.ph252.preheader.new ], [ %.3213.1, %.lr.ph252 ] ; 3 uses
  %niter321 = phi i32 [ 0, %.lr.ph252.preheader.new ], [ %niter321.next.1, %.lr.ph252 ]
  %.1194 = getelementptr inbounds i8, ptr %.pn222250, i64 -1
  %i.as = load i8, ptr %.2202249, align 1, !tbaa !26
  %i.at = zext i8 %i.as to i32
  %i.au = lshr i32 %i.at, %.2212248
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = and i8 %i.av, 3
  %i.ax = mul nuw i8 %i.aw, 85
  store i8 %i.ax, ptr %.1194, align 1, !tbaa !26
  %i.ay = icmp eq i32 %.2212248, 6                ; 2 uses
  %i.az = add nsw i32 %.2212248, 2
  %.3213 = select i1 %i.ay, i32 0, i32 %i.az      ; 3 uses
  %.3203.idx = sext i1 %i.ay to i64
  %.3203 = getelementptr inbounds i8, ptr %.2202249, i64 %.3203.idx ; 2 uses
  %.1194.1 = getelementptr inbounds i8, ptr %.pn222250, i64 -2 ; 3 uses
  %i.ba = load i8, ptr %.3203, align 1, !tbaa !26
  %i.bb = zext i8 %i.ba to i32
  %i.bc = lshr i32 %i.bb, %.3213
  %i.bd = trunc nuw i32 %i.bc to i8
  %i.be = and i8 %i.bd, 3
  %i.bf = mul nuw i8 %i.be, 85
  store i8 %i.bf, ptr %.1194.1, align 1, !tbaa !26
  %i.bg = icmp eq i32 %.3213, 6                   ; 2 uses
  %i.bh = add nsw i32 %.3213, 2
  %.3213.1 = select i1 %i.bg, i32 0, i32 %i.bh    ; 2 uses
  %.3203.idx.1 = sext i1 %i.bg to i64
  %.3203.1 = getelementptr inbounds i8, ptr %.3203, i64 %.3203.idx.1 ; 2 uses
  %niter321.next.1 = add nuw i32 %niter321, 2     ; 2 uses
  %niter321.ncmp.1 = icmp eq i32 %niter321.next.1, %unroll_iter320
  br i1 %niter321.ncmp.1, label %.loopexit231.loopexit313.unr-lcssa, label %.lr.ph252, !llvm.loop !330

bb.h:                                             ; preds = %bb.e
  %i.bi = and i32 %i.h, 15
  %i.bj = mul nuw nsw i32 %i.bi, 17               ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 3 uses
  %.not268 = icmp eq i32 %i.a, 0
  br i1 %.not268, label %.loopexit231, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.h
  %i.bl = shl i32 %i.a, 2
  %i.bm = and i32 %i.bl, 4                        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bo = add i32 %i.a, -1                        ; 2 uses
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq ; 2 uses
  %xtraiter = and i32 %i.a, 1
  %i.bs = icmp eq i32 %i.bo, 0
  br i1 %i.bs, label %.lr.ph247.epil.preheader, label %.lr.ph247.preheader.new

.lr.ph247.preheader.new:                          ; preds = %.lr.ph247.preheader
  %unroll_iter = and i32 %i.a, -2
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247, %.lr.ph247.preheader.new
  %.pn245 = phi ptr [ %i.bn, %.lr.ph247.preheader.new ], [ %.2195.1, %.lr.ph247 ] ; 2 uses
  %.4204244 = phi ptr [ %i.br, %.lr.ph247.preheader.new ], [ %.5205.1, %.lr.ph247 ] ; 2 uses
  %.4214243 = phi i32 [ %i.bm, %.lr.ph247.preheader.new ], [ %.5215.1, %.lr.ph247 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph247.preheader.new ], [ %niter.next.1, %.lr.ph247 ]
  %.2195 = getelementptr inbounds i8, ptr %.pn245, i64 -1
  %i.bt = load i8, ptr %.4204244, align 1, !tbaa !26
  %i.bu = zext i8 %i.bt to i32
  %i.bv = lshr i32 %i.bu, %.4214243               ; 2 uses
  %i.bw = and i32 %i.bv, 15
  %i.bx = shl nuw nsw i32 %i.bv, 4
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = trunc i32 %i.by to i8
  store i8 %i.bz, ptr %.2195, align 1, !tbaa !26
  %.not229 = icmp ne i32 %.4214243, 0             ; 4 uses
  %.5215 = select i1 %.not229, i32 0, i32 4
  %.5205.idx = sext i1 %.not229 to i64
  %.5205 = getelementptr inbounds i8, ptr %.4204244, i64 %.5205.idx ; 2 uses
  %.2195.1 = getelementptr inbounds i8, ptr %.pn245, i64 -2 ; 3 uses
  %i.ca = load i8, ptr %.5205, align 1, !tbaa !26
  %i.cb = zext i8 %i.ca to i32
  %i.cc = lshr i32 %i.cb, %.5215                  ; 2 uses
  %i.cd = and i32 %i.cc, 15
  %i.ce = shl nuw nsw i32 %i.cc, 4
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %.2195.1, align 1, !tbaa !26
  %not..not229 = xor i1 %.not229, true
  %.5215.1 = select i1 %.not229, i32 4, i32 0     ; 2 uses
  %.5205.idx.1 = sext i1 %not..not229 to i64
  %.5205.1 = getelementptr inbounds i8, ptr %.5205, i64 %.5205.idx.1 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit231.loopexit314.unr-lcssa, label %.lr.ph247, !llvm.loop !331

.loopexit231.loopexit.unr-lcssa:                  ; preds = %.lr.ph257
  %lcmp.mod323.not = icmp eq i32 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.loopexit231, label %.lr.ph257.epil.preheader

.lr.ph257.epil.preheader:                         ; preds = %.loopexit231.loopexit.unr-lcssa, %.lr.ph257.preheader
  %.pn225255.epil.init = phi ptr [ %i.q, %.lr.ph257.preheader ], [ %.0193.1, %.loopexit231.loopexit.unr-lcssa ]
  %.0200254.epil.init = phi ptr [ %i.u, %.lr.ph257.preheader ], [ %.1201.1, %.loopexit231.loopexit.unr-lcssa ]
  %.0210253.epil.init = phi i32 [ %i.p, %.lr.ph257.preheader ], [ %.1211.1, %.loopexit231.loopexit.unr-lcssa ]
  %lcmp.mod324 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %.0193.epil = getelementptr inbounds i8, ptr %.pn225255.epil.init, i64 -1
  %i.ch = load i8, ptr %.0200254.epil.init, align 1, !tbaa !26
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw i32 1, %.0210253.epil.init
  %i.ck = and i32 %i.cj, %i.ci
  %.not223.epil = icmp ne i32 %i.ck, 0
  %..epil = sext i1 %.not223.epil to i8
  store i8 %..epil, ptr %.0193.epil, align 1, !tbaa !26
  br label %.loopexit231

.loopexit231.loopexit313.unr-lcssa:               ; preds = %.lr.ph252
  %lcmp.mod318.not = icmp eq i32 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %.loopexit231, label %.lr.ph252.epil.preheader

.lr.ph252.epil.preheader:                         ; preds = %.loopexit231.loopexit313.unr-lcssa, %.lr.ph252.preheader
  %.pn222250.epil.init = phi ptr [ %i.am, %.lr.ph252.preheader ], [ %.1194.1, %.loopexit231.loopexit313.unr-lcssa ]
  %.2202249.epil.init = phi ptr [ %i.aq, %.lr.ph252.preheader ], [ %.3203.1, %.loopexit231.loopexit313.unr-lcssa ]
  %.2212248.epil.init = phi i32 [ %i.al, %.lr.ph252.preheader ], [ %.3213.1, %.loopexit231.loopexit313.unr-lcssa ]
  %lcmp.mod319 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %.1194.epil = getelementptr inbounds i8, ptr %.pn222250.epil.init, i64 -1
  %i.cl = load i8, ptr %.2202249.epil.init, align 1, !tbaa !26
  %i.cm = zext i8 %i.cl to i32
  %i.cn = lshr i32 %i.cm, %.2212248.epil.init
  %i.co = trunc nuw i32 %i.cn to i8
  %i.cp = and i8 %i.co, 3
  %i.cq = mul nuw i8 %i.cp, 85
  store i8 %i.cq, ptr %.1194.epil, align 1, !tbaa !26
  br label %.loopexit231

.loopexit231.loopexit314.unr-lcssa:               ; preds = %.lr.ph247
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit231, label %.lr.ph247.epil.preheader

.lr.ph247.epil.preheader:                         ; preds = %.loopexit231.loopexit314.unr-lcssa, %.lr.ph247.preheader
  %.pn245.epil.init = phi ptr [ %i.bn, %.lr.ph247.preheader ], [ %.2195.1, %.loopexit231.loopexit314.unr-lcssa ]
  %.4204244.epil.init = phi ptr [ %i.br, %.lr.ph247.preheader ], [ %.5205.1, %.loopexit231.loopexit314.unr-lcssa ]
  %.4214243.epil.init = phi i32 [ %i.bm, %.lr.ph247.preheader ], [ %.5215.1, %.loopexit231.loopexit314.unr-lcssa ]
  %lcmp.mod316 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %.2195.epil = getelementptr inbounds i8, ptr %.pn245.epil.init, i64 -1
  %i.cr = load i8, ptr %.4204244.epil.init, align 1, !tbaa !26
  %i.cs = zext i8 %i.cr to i32
  %i.ct = lshr i32 %i.cs, %.4214243.epil.init     ; 2 uses
  %3 = and i32 %i.ct, 15
  %i.cu = shl nuw nsw i32 %i.ct, 4
  %i.cv = or disjoint i32 %3, %i.cu
  %i.cw = trunc i32 %i.cv to i8
  store i8 %i.cw, ptr %.2195.epil, align 1, !tbaa !26
  br label %.loopexit231

.loopexit231:                                     ; preds = %.lr.ph247.epil.preheader, %.loopexit231.loopexit314.unr-lcssa, %.lr.ph252.epil.preheader, %.loopexit231.loopexit313.unr-lcssa, %.lr.ph257.epil.preheader, %.loopexit231.loopexit.unr-lcssa, %..loopexit231_crit_edge, %bb.h, %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre, %..loopexit231_crit_edge ], [ %i.ak, %.lr.ph252.epil.preheader ], [ %i.n, %.lr.ph257.epil.preheader ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ %i.n, %.loopexit231.loopexit.unr-lcssa ], [ %i.ak, %.loopexit231.loopexit313.unr-lcssa ], [ %i.bk, %.loopexit231.loopexit314.unr-lcssa ], [ %i.bk, %.lr.ph247.epil.preheader ]
  %.0 = phi i32 [ %i.h, %..loopexit231_crit_edge ], [ %i.aj, %.lr.ph252.epil.preheader ], [ %i.m, %.lr.ph257.epil.preheader ], [ %i.m, %bb.f ], [ %i.bj, %bb.h ], [ %i.aj, %bb.g ], [ %i.m, %.loopexit231.loopexit.unr-lcssa ], [ %i.aj, %.loopexit231.loopexit313.unr-lcssa ], [ %i.bj, %.loopexit231.loopexit314.unr-lcssa ], [ %i.bj, %.lr.ph247.epil.preheader ]
  store i8 8, ptr %i.i, align 1, !tbaa !75
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 8, ptr %i.cx, align 1, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre-phi, ptr %i.cy, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %.loopexit231, %bb.d
  %i.cz = phi i8 [ 8, %.loopexit231 ], [ %i.j, %bb.d ]
  %.1 = phi i32 [ %.0, %.loopexit231 ], [ %i.h, %bb.d ] ; 3 uses
  br i1 %.not, label %bb.am, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.cz, label %.loopexit [
    i8 8, label %bb.k
    i8 16, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %.not272 = icmp eq i32 %i.a, 0
  br i1 %.not272, label %.loopexit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.k
  %i.da = zext i32 %i.a to i64                    ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.da ; 2 uses
  %i.df = trunc i32 %.1 to i8                     ; 3 uses
  %xtraiter327 = and i32 %i.a, 1
  %i.dg = icmp eq i32 %i.a, 1
  br i1 %i.dg, label %.epil.preheader, label %.lr.ph265.new

.lr.ph265.new:                                    ; preds = %.lr.ph265
  %unroll_iter330 = and i32 %i.a, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph265.new
  %.3196263 = phi ptr [ %i.dd, %.lr.ph265.new ], [ %i.do, %bb.l ] ; 5 uses
  %.pn227262 = phi ptr [ %i.de, %.lr.ph265.new ], [ %.6206.1, %bb.l ] ; 2 uses
  %niter331 = phi i32 [ 0, %.lr.ph265.new ], [ %niter331.next.1, %bb.l ]
  %.6206 = getelementptr inbounds i8, ptr %.pn227262, i64 -1 ; 2 uses
  %i.dh = load i8, ptr %.6206, align 1, !tbaa !26
  %i.di = icmp ne i8 %i.dh, %i.df
  %.228 = sext i1 %i.di to i8
  %.4197 = getelementptr inbounds i8, ptr %.3196263, i64 -1
  store i8 %.228, ptr %.3196263, align 1, !tbaa !26
  %i.dj = load i8, ptr %.6206, align 1, !tbaa !26
  %i.dk = getelementptr inbounds i8, ptr %.3196263, i64 -2
  store i8 %i.dj, ptr %.4197, align 1, !tbaa !26
  %.6206.1 = getelementptr inbounds i8, ptr %.pn227262, i64 -2 ; 4 uses
  %i.dl = load i8, ptr %.6206.1, align 1, !tbaa !26
  %i.dm = icmp ne i8 %i.dl, %i.df
  %.228.1 = sext i1 %i.dm to i8
  %.4197.1 = getelementptr inbounds i8, ptr %.3196263, i64 -3
  store i8 %.228.1, ptr %i.dk, align 1, !tbaa !26
  %i.dn = load i8, ptr %.6206.1, align 1, !tbaa !26
  %i.do = getelementptr inbounds i8, ptr %.3196263, i64 -4 ; 2 uses
  store i8 %i.dn, ptr %.4197.1, align 1, !tbaa !26
  %niter331.next.1 = add nuw i32 %niter331, 2     ; 2 uses
  %niter331.ncmp.1 = icmp eq i32 %niter331.next.1, %unroll_iter330
  br i1 %niter331.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !332

bb.m:                                             ; preds = %bb.j
  %i.dp = lshr i32 %.1, 8
  %.not271 = icmp eq i32 %i.a, 0
  br i1 %.not271, label %.loopexit, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !77 ; 2 uses
  %i.ds = shl i64 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.dr
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -1
  %i.dx = trunc i32 %.1 to i8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph261, %bb.q
  %.4260 = phi i32 [ 0, %.lr.ph261 ], [ %i.ek, %bb.q ]
  %.5198259 = phi ptr [ %i.du, %.lr.ph261 ], [ %i.ej, %bb.q ] ; 5 uses
  %.7207258 = phi ptr [ %i.dw, %.lr.ph261 ], [ %i.eh, %bb.q ] ; 4 uses
  %i.dy = getelementptr inbounds i8, ptr %.7207258, i64 -1 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !26
  %i.ea = zext i8 %i.dz to i32
  %i.eb = icmp eq i32 %i.dp, %i.ea
  br i1 %i.eb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ec = load i8, ptr %.7207258, align 1, !tbaa !26
  %i.ed = icmp eq i8 %i.ec, %i.dx
  br i1 %i.ed, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink302 = phi i8 [ -1, %bb.p ], [ 0, %bb.o ]  ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.5198259, i64 -1
  store i8 %.sink302, ptr %.5198259, align 1, !tbaa !26
  store i8 %.sink302, ptr %i.ee, align 1, !tbaa !26
  %.6199 = getelementptr inbounds i8, ptr %.5198259, i64 -2
  %i.ef = load i8, ptr %.7207258, align 1, !tbaa !26
  %i.eg = getelementptr inbounds i8, ptr %.5198259, i64 -3
  store i8 %i.ef, ptr %.6199, align 1, !tbaa !26
  %i.eh = getelementptr inbounds i8, ptr %.7207258, i64 -2
  %i.ei = load i8, ptr %i.dy, align 1, !tbaa !26
  %i.ej = getelementptr inbounds i8, ptr %.5198259, i64 -4
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !26
  %i.ek = add nuw i32 %.4260, 1                   ; 2 uses
  %exitcond281.not = icmp eq i32 %i.ek, %i.a
  br i1 %exitcond281.not, label %.loopexit, label %bb.n, !llvm.loop !333

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod328.not = icmp eq i32 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph265
  %.3196263.epil.init = phi ptr [ %i.dd, %.lr.ph265 ], [ %i.do, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.pn227262.epil.init = phi ptr [ %i.de, %.lr.ph265 ], [ %.6206.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod329 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod329)
  %.6206.epil = getelementptr inbounds i8, ptr %.pn227262.epil.init, i64 -1 ; 2 uses
  %i.el = load i8, ptr %.6206.epil, align 1, !tbaa !26
  %i.em = icmp ne i8 %i.el, %i.df
  %.228.epil = sext i1 %i.em to i8
  %.4197.epil = getelementptr inbounds i8, ptr %.3196263.epil.init, i64 -1
  store i8 %.228.epil, ptr %.3196263.epil.init, align 1, !tbaa !26
  %i.en = load i8, ptr %.6206.epil, align 1, !tbaa !26
  store i8 %i.en, ptr %.4197.epil, align 1, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m, %bb.k, %bb.j
  store i8 4, ptr %i.b, align 8, !tbaa !73
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 2, ptr %i.eo, align 2, !tbaa !78
  %i.ep = load i8, ptr %i.i, align 1, !tbaa !75
  %i.eq = shl i8 %i.ep, 1                         ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !76
  %i.es = icmp ugt i8 %i.eq, 7
  %i.et = zext i32 %i.a to i64                    ; 2 uses
  br i1 %i.es, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.eu = lshr i8 %i.eq, 3
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = mul nuw nsw i64 %i.ev, %i.et
  br label %.sink.split

bb.s:                                             ; preds = %.loopexit
  %i.ex = zext nneg i8 %i.eq to i64
  %i.ey = mul nuw nsw i64 %i.ex, %i.et
  %i.ez = add nuw nsw i64 %i.ey, 6
  %i.fa = lshr i64 %i.ez, 3
  br label %.sink.split

bb.t:                                             ; preds = %bb.a
  %i.fb = icmp eq i8 %i.c, 2
  %i.fc = icmp ne ptr %2, null
  %or.cond = and i1 %i.fc, %i.fb
  br i1 %or.cond, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !75
  switch i8 %i.fe, label %.loopexit234 [
    i8 8, label %bb.v
    i8 16, label %bb.ab
  ]

bb.v:                                             ; preds = %bb.u
  %.not267 = icmp eq i32 %i.a, 0
  br i1 %.not267, label %.loopexit234, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.v
  %i.ff = zext i32 %i.a to i64
  %i.fg = shl nuw nsw i64 %i.ff, 2
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -1
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !77
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -1
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !337
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !338
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !339
  %i.ft = trunc i16 %i.fs to i8
  %i.fu = trunc i16 %i.fq to i8
  %i.fv = trunc i16 %i.fo to i8
end_hunk_1
