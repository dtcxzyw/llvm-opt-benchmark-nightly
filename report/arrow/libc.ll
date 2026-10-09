Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/libc?download=true
inline.NumInlined: 24
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_vsnprintf:bb.a
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.hi = phi ptr [ %i.he, %bb.cg ], [ %i.hg, %bb.ch ]
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !24
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bs
  br i1 %i.gd, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.hk = load ptr, ptr %i.g, align 8
  %i.hl = zext nneg i32 %i.gc to i64
  %i.hm = getelementptr i8, ptr %i.hk, i64 %i.hl
  %i.hn = add nuw nsw i32 %i.gc, 8
  store i32 %i.hn, ptr %3, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.ho = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  store ptr %i.hp, ptr %i.f, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.hq = phi ptr [ %i.hm, %bb.ck ], [ %i.ho, %bb.cl ]
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !7
  %i.hs = sext i32 %i.hr to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ca, %bb.ci, %bb.cm, %bb.ce, %bb.bw
  %.0206 = phi i64 [ %i.gl, %bb.bw ], [ %i.gt, %bb.ca ], [ %i.hb, %bb.ce ], [ %i.hj, %bb.ci ], [ %i.hs, %bb.cm ] ; 4 uses
  %i.ht = icmp slt i64 %.0206, 0
  br i1 %i.ht, label %.thread348, label %bb.co

.thread348:                                       ; preds = %bb.cn
  %i.hu = sub i64 0, %.0206
  br label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.hv = icmp eq i64 %.0206, 0
  br i1 %i.hv, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %.not47.i304.not = icmp eq i8 %.0211, 0
  br i1 %.not47.i304.not, label %mi_outc.exit.i308, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i8 %.0211, ptr %.0337377, align 1, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_outc.exit.i308

mi_outc.exit.i308:                                ; preds = %bb.cq, %bb.cp
  %.24 = phi ptr [ %i.hw, %bb.cq ], [ %.0337377, %bb.cp ] ; 4 uses
  %.not.i48.i309 = icmp ult ptr %.24, %i.e
  br i1 %.not.i48.i309, label %bb.cr, label %mi_outs.exit

bb.cr:                                            ; preds = %mi_outc.exit.i308
  store i8 48, ptr %.24, align 1, !tbaa !8
  %i.hx = getelementptr inbounds nuw i8, ptr %.24, i64 1
  br label %mi_outs.exit

bb.cs:                                            ; preds = %.thread348, %bb.co
  %.0352 = phi i8 [ 45, %.thread348 ], [ %.0211, %bb.co ] ; 2 uses
  %.1351 = phi i64 [ %i.hu, %.thread348 ], [ %.0206, %bb.co ]
  br label %.split.i299

.split.i299:                                      ; preds = %bb.cs, %mi_outc.exit51.i302
  %.22 = phi ptr [ %.0337377, %bb.cs ], [ %.23, %mi_outc.exit51.i302 ]
  %i.hy = phi ptr [ %.0337377, %bb.cs ], [ %i.ie, %mi_outc.exit51.i302 ] ; 4 uses
  %.054.i300 = phi i64 [ %.1351, %bb.cs ], [ %i.hz, %mi_outc.exit51.i302 ] ; 3 uses
  %.not.i50.i301 = icmp ult ptr %i.hy, %i.e
  %i.hz = udiv i64 %.054.i300, 10
  %i.ia = urem i64 %.054.i300, 10
  br i1 %.not.i50.i301, label %bb.ct, label %mi_outc.exit51.i302

bb.ct:                                            ; preds = %.split.i299
  %i.ib = trunc nuw nsw i64 %i.ia to i8
  %i.ic = or disjoint i8 %i.ib, 48
  store i8 %i.ic, ptr %i.hy, align 1, !tbaa !8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 1 ; 2 uses
  br label %mi_outc.exit51.i302

mi_outc.exit51.i302:                              ; preds = %bb.ct, %.split.i299
  %.23 = phi ptr [ %i.id, %bb.ct ], [ %.22, %.split.i299 ] ; 2 uses
  %i.ie = phi ptr [ %i.id, %bb.ct ], [ %i.hy, %.split.i299 ] ; 5 uses
  %.not.i303 = icmp ult i64 %.054.i300, 10
  br i1 %.not.i303, label %.split56.us.i290, label %.split.i299, !llvm.loop !15

.split56.us.i290:                                 ; preds = %mi_outc.exit51.i302
  %.not46.i291 = icmp ne i8 %.0352, 0
  %.not.i52.i292 = icmp ult ptr %i.ie, %i.e
  %or.cond70.i293 = select i1 %.not46.i291, i1 %.not.i52.i292, i1 false
  br i1 %or.cond70.i293, label %bb.cu, label %mi_outc.exit53.i294

bb.cu:                                            ; preds = %.split56.us.i290
  store i8 %.0352, ptr %i.ie, align 1, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 2 uses
  br label %mi_outc.exit53.i294

mi_outc.exit53.i294:                              ; preds = %bb.cu, %.split56.us.i290
  %.21 = phi ptr [ %i.if, %bb.cu ], [ %.23, %.split56.us.i290 ] ; 3 uses
  %i.ig = phi ptr [ %i.if, %bb.cu ], [ %i.ie, %.split56.us.i290 ]
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %.0337377 to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 3 uses
  %i.ik = lshr i64 %i.ij, 1                       ; 4 uses
  %.not58.i295 = icmp eq i64 %i.ik, 0
  br i1 %.not58.i295, label %mi_outs.exit, label %.lr.ph.i296

.lr.ph.i296:                                      ; preds = %mi_outc.exit53.i294
  %i.il = getelementptr i8, ptr %.0337377, i64 %i.ij ; 3 uses
  %i.im = icmp eq i64 %i.ik, 1
  br i1 %i.im, label %.epil.preheader, label %.lr.ph.i296.new

.lr.ph.i296.new:                                  ; preds = %.lr.ph.i296
  %unroll_iter = and i64 %i.ik, 9223372036854775806
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i296.new
  %.04257.i297 = phi i64 [ 0, %.lr.ph.i296.new ], [ %i.iy, %bb.cv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i296.new ], [ %niter.next.1, %bb.cv ]
  %i.in = xor i64 %.04257.i297, -1
  %i.io = getelementptr i8, ptr %i.il, i64 %i.in  ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %.0337377, i64 %.04257.i297 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !8
  store i8 %i.ir, ptr %i.io, align 1, !tbaa !8
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !8
  %i.is = xor i64 %.04257.i297, -2
  %i.it = getelementptr i8, ptr %i.il, i64 %i.is  ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %.0337377, i64 %.04257.i297
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1 ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8
  store i8 %i.ix, ptr %i.it, align 1, !tbaa !8
  store i8 %i.iu, ptr %i.iw, align 1, !tbaa !8
  %i.iy = add nuw nsw i64 %.04257.i297, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mi_outs.exit.loopexit475.unr-lcssa, label %bb.cv, !llvm.loop !16

bb.cw:                                            ; preds = %bb.ai
  %i.iz = add i8 %.6226, -32
  %or.cond48 = icmp ult i8 %i.iz, 95
  br i1 %or.cond48, label %mi_outc.exit312, label %mi_outs.exit

mi_outc.exit312:                                  ; preds = %bb.cw
  store i8 37, ptr %.0337377, align 1, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %.0337377, i64 1 ; 3 uses
  %.not.i313 = icmp ult ptr %i.ja, %i.e
  br i1 %.not.i313, label %bb.cx, label %mi_outs.exit

bb.cx:                                            ; preds = %mi_outc.exit312
  store i8 %.6226, ptr %i.ja, align 1, !tbaa !8
  %i.jb = getelementptr inbounds nuw i8, ptr %.0337377, i64 2
  br label %mi_outs.exit

mi_outs.exit.loopexit.unr-lcssa:                  ; preds = %bb.br
  %i.jc = and i64 %i.fk, 2
  %lcmp.mod488.not = icmp eq i64 %i.jc, 0
  br i1 %lcmp.mod488.not, label %mi_outs.exit, label %.epil.preheader486

.epil.preheader486:                               ; preds = %mi_outs.exit.loopexit.unr-lcssa, %.lr.ph.i288
  %.04257.i.epil.init = phi i64 [ 0, %.lr.ph.i288 ], [ %i.fz, %mi_outs.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod489 = trunc i64 %i.fl to i1
  tail call void @llvm.assume(i1 %lcmp.mod489)
  %i.jd = xor i64 %.04257.i.epil.init, -1
  %i.je = getelementptr i8, ptr %i.fm, i64 %i.jd  ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %.1338, i64 %.04257.i.epil.init ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !8
  store i8 %i.jh, ptr %i.je, align 1, !tbaa !8
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !8
  br label %mi_outs.exit

mi_outs.exit.loopexit475.unr-lcssa:               ; preds = %bb.cv
  %i.ji = and i64 %i.ij, 2
  %lcmp.mod.not = icmp eq i64 %i.ji, 0
  br i1 %lcmp.mod.not, label %mi_outs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mi_outs.exit.loopexit475.unr-lcssa, %.lr.ph.i296
  %.04257.i297.epil.init = phi i64 [ 0, %.lr.ph.i296 ], [ %i.iy, %mi_outs.exit.loopexit475.unr-lcssa ] ; 2 uses
  %lcmp.mod485 = trunc i64 %i.ik to i1
  tail call void @llvm.assume(i1 %lcmp.mod485)
  %i.jj = xor i64 %.04257.i297.epil.init, -1
  %i.jk = getelementptr i8, ptr %i.il, i64 %i.jj  ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %.0337377, i64 %.04257.i297.epil.init ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !8
  store i8 %i.jn, ptr %i.jk, align 1, !tbaa !8
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !8
  br label %mi_outs.exit

mi_outs.exit:                                     ; preds = %.lr.ph.i, %.epil.preheader, %mi_outs.exit.loopexit475.unr-lcssa, %.epil.preheader486, %mi_outs.exit.loopexit.unr-lcssa, %bb.cx, %mi_outc.exit312, %mi_outc.exit53.i294, %bb.cr, %mi_outc.exit.i308, %mi_outc.exit53.i, %bb.bn, %mi_outc.exit.i, %bb.ag, %bb.ah, %bb.cw, %mi_outc.exit281
  %.2339 = phi ptr [ %.21, %.epil.preheader ], [ %.0337377, %bb.cw ], [ %.15, %.epil.preheader486 ], [ %i.ja, %mi_outc.exit312 ], [ %i.bh, %mi_outc.exit281 ], [ %.0337377, %bb.ag ], [ %.0337377, %bb.ah ], [ %i.et, %bb.bn ], [ %.18, %mi_outc.exit.i ], [ %.15, %mi_outc.exit53.i ], [ %i.hx, %bb.cr ], [ %.24, %mi_outc.exit.i308 ], [ %.21, %mi_outc.exit53.i294 ], [ %i.jb, %bb.cx ], [ %.15, %mi_outs.exit.loopexit.unr-lcssa ], [ %.21, %mi_outs.exit.loopexit475.unr-lcssa ], [ %i.bw, %.lr.ph.i ]
  %.2217 = phi i8 [ %.0215, %.epil.preheader ], [ %.0215, %bb.cw ], [ %.1216, %.epil.preheader486 ], [ %.0215, %mi_outc.exit312 ], [ %.0215, %mi_outc.exit281 ], [ %.0215, %bb.ag ], [ %.0215, %bb.ah ], [ %.1216, %bb.bn ], [ %.1216, %mi_outc.exit.i ], [ %.1216, %mi_outc.exit53.i ], [ %.0215, %bb.cr ], [ %.0215, %mi_outc.exit.i308 ], [ %.0215, %mi_outc.exit53.i294 ], [ %.0215, %bb.cx ], [ %.1216, %mi_outs.exit.loopexit.unr-lcssa ], [ %.0215, %mi_outs.exit.loopexit475.unr-lcssa ], [ %.0215, %.lr.ph.i ] ; 2 uses
  %.6 = phi i64 [ %.2, %.epil.preheader ], [ %.2, %bb.cw ], [ %.5, %.epil.preheader486 ], [ %.2, %mi_outc.exit312 ], [ %.2, %mi_outc.exit281 ], [ %.2, %bb.ag ], [ %.2, %bb.ah ], [ %.5, %bb.bn ], [ %.5, %mi_outc.exit.i ], [ %.5, %mi_outc.exit53.i ], [ %.2, %bb.cr ], [ %.2, %mi_outc.exit.i308 ], [ %.2, %mi_outc.exit53.i294 ], [ %.2, %bb.cx ], [ %.5, %mi_outs.exit.loopexit.unr-lcssa ], [ %.2, %mi_outs.exit.loopexit475.unr-lcssa ], [ %.2, %.lr.ph.i ] ; 7 uses
  %.1209 = phi ptr [ %.0337377, %.epil.preheader ], [ %.0337377, %bb.cw ], [ %.1338, %.epil.preheader486 ], [ %.0337377, %mi_outc.exit312 ], [ %.0337377, %mi_outc.exit281 ], [ %.0337377, %bb.ag ], [ %.0337377, %bb.ah ], [ %.1338, %bb.bn ], [ %.1338, %mi_outc.exit.i ], [ %.1338, %mi_outc.exit53.i ], [ %.0337377, %bb.cr ], [ %.0337377, %mi_outc.exit.i308 ], [ %.0337377, %mi_outc.exit53.i294 ], [ %.0337377, %bb.cx ], [ %.1338, %mi_outs.exit.loopexit.unr-lcssa ], [ %.0337377, %mi_outs.exit.loopexit475.unr-lcssa ], [ %.0337377, %.lr.ph.i ] ; 10 uses
  %.fr.i = freeze ptr %.2339                      ; 7 uses
  %i.jo = ptrtoint ptr %.fr.i to i64              ; 2 uses
  %i.jp = ptrtoint ptr %.1209 to i64
  %i.jq = sub i64 %i.jo, %i.jp                    ; 14 uses
  %i.jr = icmp ult i64 %i.jq, %.6
  br i1 %i.jr, label %bb.cy, label %mi_out_alignright.exit

bb.cy:                                            ; preds = %mi_outs.exit
  %i.js = sub nuw i64 %.6, %i.jq                  ; 2 uses
  %i.jt = icmp ult ptr %.fr.i, %i.e
  br i1 %i.jt, label %.lr.ph.preheader.i, label %mi_out_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.cy
  %i.ju = xor i64 %i.jo, -1
  %i.jv = add i64 %i.ju, %i.h
  %i.jw = add i64 %i.js, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.jv, i64 %i.jw)
  %i.jx = add nuw i64 %umin.i, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.fr.i, i8 range(i8 32, 49) %.2217, i64 %i.jx, i1 false), !tbaa !8
  %scevgep.i = getelementptr i8, ptr %.fr.i, i64 %i.jx
  br label %mi_out_fill.exit

mi_out_fill.exit:                                 ; preds = %bb.cy, %.lr.ph.preheader.i
  %.09.lcssa.i = phi ptr [ %.fr.i, %bb.cy ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 4 uses
  %.not266 = icmp ugt ptr %.09.lcssa.i, %i.e
  %or.cond268 = select i1 %.not265, i1 true, i1 %.not266
  br i1 %or.cond268, label %mi_out_alignright.exit, label %bb.cz

bb.cz:                                            ; preds = %mi_out_fill.exit
  %i.jy = icmp ne ptr %.fr.i, %.1209
  %i.jz = getelementptr inbounds nuw i8, ptr %.1209, i64 %.6
  %.not.i316 = icmp ult ptr %i.jz, %i.e
  %or.cond27.i = select i1 %i.jy, i1 %.not.i316, i1 false
  br i1 %or.cond27.i, label %vector.memcheck, label %mi_out_alignright.exit

vector.memcheck:                                  ; preds = %bb.cz
  %min.iters.check = icmp ult i64 %i.jq, 8
  %i.ka = sub i64 %.6, %i.jq
  %diff.check = icmp ugt i64 %i.ka, -32
  %or.cond475 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond475, label %.preheader31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check467 = icmp ult i64 %i.jq, 32
  br i1 %min.iters.check467, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kb = and i64 %i.jq, 24
  %n.vec = and i64 %i.jq, -32                     ; 4 uses
  %i.kc = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kd = or disjoint i64 %index, 1               ; 2 uses
  %i.ke = sub nuw i64 %i.jq, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %.1209, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -15
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 -31
  %wide.load = load <16 x i8>, ptr %i.kg, align 1, !tbaa !8
  %wide.load468 = load <16 x i8>, ptr %i.kh, align 1, !tbaa !8
  %i.ki = sub i64 %.6, %i.kd
  %i.kj = getelementptr inbounds nuw i8, ptr %.1209, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -15
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -31
  store <16 x i8> %wide.load, ptr %i.kk, align 1, !tbaa !8
  store <16 x i8> %wide.load468, ptr %i.kl, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jq, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kb, 0
  br i1 %min.epilog.iters.check, label %.preheader31.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec469 = and i64 %i.jq, -8                   ; 3 uses
  %i.kn = or disjoint i64 %n.vec469, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index470 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next472, %vec.epilog.vector.body ] ; 2 uses
  %i.ko = or disjoint i64 %index470, 1            ; 2 uses
  %i.kp = sub nuw i64 %i.jq, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %.1209, i64 %i.kp
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -7
  %wide.load471 = load <8 x i8>, ptr %i.kr, align 1, !tbaa !8
  %i.ks = sub i64 %.6, %i.ko
  %i.kt = getelementptr inbounds nuw i8, ptr %.1209, i64 %i.ks
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 -7
  store <8 x i8> %wide.load471, ptr %i.ku, align 1, !tbaa !8
  %index.next472 = add nuw i64 %index470, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next472, %n.vec469
  br i1 %i.kv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n473 = icmp eq i64 %i.jq, %n.vec469
  br i1 %cmp.n473, label %.preheader.preheader.i, label %.preheader31.i.preheader

.preheader31.i.preheader:                         ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02232.i.ph = phi i64 [ 1, %vector.memcheck ], [ %i.kc, %vec.epilog.iter.check ], [ %i.kn, %vec.epilog.middle.block ]
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %.02232.i = phi i64 [ %i.lb, %.preheader31.i ], [ %.02232.i.ph, %.preheader31.i.preheader ] ; 4 uses
  %i.kw = sub nuw i64 %i.jq, %.02232.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.1209, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !8
  %i.kz = sub i64 %.6, %.02232.i
  %i.la = getelementptr inbounds nuw i8, ptr %.1209, i64 %i.kz
  store i8 %i.ky, ptr %i.la, align 1, !tbaa !8
  %i.lb = add nuw i64 %.02232.i, 1
  %exitcond.i = icmp eq i64 %.02232.i, %i.jq
  br i1 %exitcond.i, label %.preheader.preheader.i, label %.preheader31.i, !llvm.loop !19

.preheader.preheader.i:                           ; preds = %.preheader31.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1209, i8 range(i8 32, 49) %.2217, i64 %i.js, i1 false), !tbaa !8
  br label %mi_out_alignright.exit

mi_out_alignright.exit:                           ; preds = %mi_out_fill.exit, %mi_outs.exit, %bb.cz, %.preheader.preheader.i, %mi_outc.exit279, %mi_outc.exit, %mi_outc.exit271, %mi_outc.exit273, %mi_outc.exit275, %mi_outc.exit277, %bb.f, %switch.early.test
  %.4341 = phi ptr [ %.09.lcssa.i, %mi_out_fill.exit ], [ %i.u, %mi_outc.exit279 ], [ %.0337377, %switch.early.test ], [ %.09.lcssa.i, %.preheader.preheader.i ], [ %i.s, %mi_outc.exit277 ], [ %.fr.i, %mi_outs.exit ], [ %.0337377, %bb.f ], [ %i.o, %mi_outc.exit ], [ %i.p, %mi_outc.exit271 ], [ %i.q, %mi_outc.exit273 ], [ %i.r, %mi_outc.exit275 ], [ %.09.lcssa.i, %bb.cz ] ; 3 uses
  %.9 = phi ptr [ %.6233, %mi_out_fill.exit ], [ %i.k, %mi_outc.exit279 ], [ %i.k, %switch.early.test ], [ %.6233, %.preheader.preheader.i ], [ %i.n, %mi_outc.exit277 ], [ %.6233, %mi_outs.exit ], [ %i.n, %bb.f ], [ %i.n, %mi_outc.exit ], [ %i.n, %mi_outc.exit271 ], [ %i.n, %mi_outc.exit273 ], [ %i.n, %mi_outc.exit275 ], [ %.6233, %bb.cz ]
  %.not = icmp ult ptr %.4341, %i.e
  br i1 %.not, label %bb.c, label %mi_out_alignright.exit.thread360

mi_out_alignright.exit.thread360:                 ; preds = %mi_out_alignright.exit, %bb.c, %bb.h, %bb.e, %bb.y, %bb.j, %bb.m, %bb.p, %bb.s, %bb.aa, %bb.w, %bb.v, %bb.b
  %.0337375 = phi ptr [ %.0337377, %bb.v ], [ %0, %bb.b ], [ %.4341, %mi_out_alignright.exit ], [ %.0337377, %bb.c ], [ %.0337377, %bb.h ], [ %.0337377, %bb.e ], [ %.0337377, %bb.y ], [ %.0337377, %bb.j ], [ %.0337377, %bb.m ], [ %.0337377, %bb.p ], [ %.0337377, %bb.s ], [ %.0337377, %bb.aa ], [ %.0337377, %bb.w ] ; 2 uses
  store i8 0, ptr %.0337375, align 1, !tbaa !8
  %i.lc = ptrtoint ptr %.0337375 to i64
  %i.ld = ptrtoint ptr %0 to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = trunc i64 %i.le to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.a, %mi_out_alignright.exit.thread360
  %.0234 = phi i32 [ %i.lf, %mi_out_alignright.exit.thread360 ], [ 0, %bb.a ]
  ret i32 %.0234
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define hidden noundef i32 @_mi_snprintf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 65) i64 @_mi_popcount_generic(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  ret i64 %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9, !27}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9, !28, !29}
!18 = distinct !{!18, !9, !28, !29}
!19 = distinct !{!19, !9, !28}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"long long", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.unswitch.partial.disable"}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
