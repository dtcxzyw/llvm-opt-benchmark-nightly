Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z13_mi_vsnprintfPcmPKcP13__va_list_tag:bb.a
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ha = phi ptr [ %i.gw, %bb.ce ], [ %i.gy, %bb.cf ]
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !98
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bq
  br i1 %i.fv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.hc = load ptr, ptr %i.g, align 8
  %i.hd = zext nneg i32 %i.fu to i64
  %i.he = getelementptr i8, ptr %i.hc, i64 %i.hd
  %i.hf = add nuw nsw i32 %i.fu, 8
  store i32 %i.hf, ptr %3, align 8
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.hg = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  store ptr %i.hh, ptr %i.f, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.hi = phi ptr [ %i.he, %bb.ci ], [ %i.hg, %bb.cj ]
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !97
  %i.hk = sext i32 %i.hj to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.by, %bb.cg, %bb.ck, %bb.cc, %bb.bu
  %.0190 = phi i64 [ %i.gd, %bb.bu ], [ %i.gl, %bb.by ], [ %i.gt, %bb.cc ], [ %i.hb, %bb.cg ], [ %i.hk, %bb.ck ] ; 4 uses
  %i.hl = icmp slt i64 %.0190, 0
  br i1 %i.hl, label %.thread313, label %bb.cm

.thread313:                                       ; preds = %bb.cl
  %i.hm = sub i64 0, %.0190
  br label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.hn = icmp eq i64 %.0190, 0
  br i1 %i.hn, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %.not47.i275.not = icmp eq i8 %.0195, 0
  br i1 %.not47.i275.not, label %_ZL7mi_outccPPcS_.exit.i279, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i8 %.0195, ptr %.0302343, align 1, !tbaa !69
  %i.ho = getelementptr inbounds nuw i8, ptr %.0302343, i64 1
  br label %_ZL7mi_outccPPcS_.exit.i279

_ZL7mi_outccPPcS_.exit.i279:                      ; preds = %bb.co, %bb.cn
  %.18 = phi ptr [ %i.ho, %bb.co ], [ %.0302343, %bb.cn ] ; 4 uses
  %.not.i48.i280 = icmp ult ptr %.18, %i.e
  br i1 %.not.i48.i280, label %bb.cp, label %_ZL7mi_outsPKcPPcS1_.exit

bb.cp:                                            ; preds = %_ZL7mi_outccPPcS_.exit.i279
  store i8 48, ptr %.18, align 1, !tbaa !69
  %i.hp = getelementptr inbounds nuw i8, ptr %.18, i64 1
  br label %_ZL7mi_outsPKcPPcS1_.exit

bb.cq:                                            ; preds = %.thread313, %bb.cm
  %.0317 = phi i8 [ 45, %.thread313 ], [ %.0195, %bb.cm ] ; 2 uses
  %.1316 = phi i64 [ %i.hm, %.thread313 ], [ %.0190, %bb.cm ]
  br label %.split.i270

.split.i270:                                      ; preds = %bb.cq, %_ZL7mi_outccPPcS_.exit51.i273
  %.16 = phi ptr [ %.0302343, %bb.cq ], [ %.17, %_ZL7mi_outccPPcS_.exit51.i273 ]
  %i.hq = phi ptr [ %.0302343, %bb.cq ], [ %i.hw, %_ZL7mi_outccPPcS_.exit51.i273 ] ; 4 uses
  %.054.i271 = phi i64 [ %.1316, %bb.cq ], [ %i.hr, %_ZL7mi_outccPPcS_.exit51.i273 ] ; 3 uses
  %.not.i50.i272 = icmp ult ptr %i.hq, %i.e
  %i.hr = udiv i64 %.054.i271, 10
  %i.hs = urem i64 %.054.i271, 10
  br i1 %.not.i50.i272, label %bb.cr, label %_ZL7mi_outccPPcS_.exit51.i273

bb.cr:                                            ; preds = %.split.i270
  %i.ht = trunc nuw nsw i64 %i.hs to i8
  %i.hu = or disjoint i8 %i.ht, 48
  store i8 %i.hu, ptr %i.hq, align 1, !tbaa !69
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 1 ; 2 uses
  br label %_ZL7mi_outccPPcS_.exit51.i273

_ZL7mi_outccPPcS_.exit51.i273:                    ; preds = %bb.cr, %.split.i270
  %.17 = phi ptr [ %i.hv, %bb.cr ], [ %.16, %.split.i270 ] ; 2 uses
  %i.hw = phi ptr [ %i.hv, %bb.cr ], [ %i.hq, %.split.i270 ] ; 5 uses
  %.not.i274 = icmp ult i64 %.054.i271, 10
  br i1 %.not.i274, label %.split56.us.i261, label %.split.i270, !llvm.loop !327

.split56.us.i261:                                 ; preds = %_ZL7mi_outccPPcS_.exit51.i273
  %.not46.i262 = icmp ne i8 %.0317, 0
  %.not.i52.i263 = icmp ult ptr %i.hw, %i.e
  %or.cond70.i264 = select i1 %.not46.i262, i1 %.not.i52.i263, i1 false
  br i1 %or.cond70.i264, label %bb.cs, label %_ZL7mi_outccPPcS_.exit53.i265

bb.cs:                                            ; preds = %.split56.us.i261
  store i8 %.0317, ptr %i.hw, align 1, !tbaa !69
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 2 uses
  br label %_ZL7mi_outccPPcS_.exit53.i265

_ZL7mi_outccPPcS_.exit53.i265:                    ; preds = %bb.cs, %.split56.us.i261
  %.15 = phi ptr [ %i.hx, %bb.cs ], [ %.17, %.split56.us.i261 ] ; 3 uses
  %i.hy = phi ptr [ %i.hx, %bb.cs ], [ %i.hw, %.split56.us.i261 ]
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %.0302343 to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  %i.ic = lshr i64 %i.ib, 1                       ; 4 uses
  %.not58.i266 = icmp eq i64 %i.ic, 0
  br i1 %.not58.i266, label %_ZL7mi_outsPKcPPcS1_.exit, label %.lr.ph.i267

.lr.ph.i267:                                      ; preds = %_ZL7mi_outccPPcS_.exit53.i265
  %i.id = getelementptr i8, ptr %.0302343, i64 %i.ib ; 3 uses
  %i.ie = icmp eq i64 %i.ic, 1
  br i1 %i.ie, label %.epil.preheader, label %.lr.ph.i267.new

.lr.ph.i267.new:                                  ; preds = %.lr.ph.i267
  %unroll_iter = and i64 %i.ic, 9223372036854775806
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %.lr.ph.i267.new
  %.04257.i268 = phi i64 [ 0, %.lr.ph.i267.new ], [ %i.iq, %bb.ct ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i267.new ], [ %niter.next.1, %bb.ct ]
  %i.if = xor i64 %.04257.i268, -1
  %i.ig = getelementptr i8, ptr %i.id, i64 %i.if  ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !69
  %i.ii = getelementptr inbounds nuw i8, ptr %.0302343, i64 %.04257.i268 ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !69
  store i8 %i.ij, ptr %i.ig, align 1, !tbaa !69
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !69
  %i.ik = xor i64 %.04257.i268, -2
  %i.il = getelementptr i8, ptr %i.id, i64 %i.ik  ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !69
  %i.in = getelementptr inbounds nuw i8, ptr %.0302343, i64 %.04257.i268
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !69
  store i8 %i.ip, ptr %i.il, align 1, !tbaa !69
  store i8 %i.im, ptr %i.io, align 1, !tbaa !69
  %i.iq = add nuw nsw i64 %.04257.i268, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa, label %bb.ct, !llvm.loop !328

bb.cu:                                            ; preds = %bb.ag
  %i.ir = add i8 %.6210, -32
  %or.cond45 = icmp ult i8 %i.ir, 95
  br i1 %or.cond45, label %_ZL7mi_outccPPcS_.exit283, label %_ZL7mi_outsPKcPPcS1_.exit

_ZL7mi_outccPPcS_.exit283:                        ; preds = %bb.cu
  store i8 37, ptr %.0302343, align 1, !tbaa !69
  %i.is = getelementptr inbounds nuw i8, ptr %.0302343, i64 1 ; 3 uses
  %.not.i284 = icmp ult ptr %i.is, %i.e
  br i1 %.not.i284, label %bb.cv, label %_ZL7mi_outsPKcPPcS1_.exit

bb.cv:                                            ; preds = %_ZL7mi_outccPPcS_.exit283
  store i8 %.6210, ptr %i.is, align 1, !tbaa !69
  %i.it = getelementptr inbounds nuw i8, ptr %.0302343, i64 2
  br label %_ZL7mi_outsPKcPPcS1_.exit

_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa:  ; preds = %bb.bp
  %i.iu = and i64 %i.fc, 2
  %lcmp.mod450.not = icmp eq i64 %i.iu, 0
  br i1 %lcmp.mod450.not, label %_ZL7mi_outsPKcPPcS1_.exit, label %.epil.preheader448

.epil.preheader448:                               ; preds = %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa, %.lr.ph.i259
  %.04257.i.epil.init = phi i64 [ 0, %.lr.ph.i259 ], [ %i.fr, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ] ; 2 uses
  %lcmp.mod451 = trunc i64 %i.fd to i1
  tail call void @llvm.assume(i1 %lcmp.mod451)
  %i.iv = xor i64 %.04257.i.epil.init, -1
  %i.iw = getelementptr i8, ptr %i.fe, i64 %i.iv  ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !69
  %i.iy = getelementptr inbounds nuw i8, ptr %.1303, i64 %.04257.i.epil.init ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !69
  store i8 %i.iz, ptr %i.iw, align 1, !tbaa !69
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !69
  br label %_ZL7mi_outsPKcPPcS1_.exit

_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa:  ; preds = %bb.ct
  %i.ja = and i64 %i.ib, 2
  %lcmp.mod.not = icmp eq i64 %i.ja, 0
  br i1 %lcmp.mod.not, label %_ZL7mi_outsPKcPPcS1_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa, %.lr.ph.i267
  %.04257.i268.epil.init = phi i64 [ 0, %.lr.ph.i267 ], [ %i.iq, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ] ; 2 uses
  %lcmp.mod447 = trunc i64 %i.ic to i1
  tail call void @llvm.assume(i1 %lcmp.mod447)
  %i.jb = xor i64 %.04257.i268.epil.init, -1
  %i.jc = getelementptr i8, ptr %i.id, i64 %i.jb  ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !69
  %i.je = getelementptr inbounds nuw i8, ptr %.0302343, i64 %.04257.i268.epil.init ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !69
  store i8 %i.jf, ptr %i.jc, align 1, !tbaa !69
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !69
  br label %_ZL7mi_outsPKcPPcS1_.exit

_ZL7mi_outsPKcPPcS1_.exit:                        ; preds = %.epil.preheader, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa, %.epil.preheader448, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa, %.lr.ph.i, %bb.cv, %_ZL7mi_outccPPcS_.exit283, %_ZL7mi_outccPPcS_.exit53.i265, %bb.cp, %_ZL7mi_outccPPcS_.exit.i279, %_ZL7mi_outccPPcS_.exit53.i, %bb.bl, %_ZL7mi_outccPPcS_.exit.i, %bb.ae, %bb.af, %bb.cu
  %.2304 = phi ptr [ %.9310, %.epil.preheader448 ], [ %i.bo, %.lr.ph.i ], [ %.0302343, %bb.cu ], [ %i.is, %_ZL7mi_outccPPcS_.exit283 ], [ %.0302343, %bb.ae ], [ %.0302343, %bb.af ], [ %i.el, %bb.bl ], [ %.12, %_ZL7mi_outccPPcS_.exit.i ], [ %.9310, %_ZL7mi_outccPPcS_.exit53.i ], [ %i.hp, %bb.cp ], [ %.18, %_ZL7mi_outccPPcS_.exit.i279 ], [ %.15, %_ZL7mi_outccPPcS_.exit53.i265 ], [ %i.it, %bb.cv ], [ %.9310, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ], [ %.15, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ], [ %.15, %.epil.preheader ]
  %.2201 = phi i8 [ %.1200, %.epil.preheader448 ], [ %.0199, %.lr.ph.i ], [ %.0199, %bb.cu ], [ %.0199, %_ZL7mi_outccPPcS_.exit283 ], [ %.0199, %bb.ae ], [ %.0199, %bb.af ], [ %.1200, %bb.bl ], [ %.1200, %_ZL7mi_outccPPcS_.exit.i ], [ %.1200, %_ZL7mi_outccPPcS_.exit53.i ], [ %.0199, %bb.cp ], [ %.0199, %_ZL7mi_outccPPcS_.exit.i279 ], [ %.0199, %_ZL7mi_outccPPcS_.exit53.i265 ], [ %.0199, %bb.cv ], [ %.1200, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ], [ %.0199, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ], [ %.0199, %.epil.preheader ] ; 2 uses
  %.6 = phi i64 [ %.5, %.epil.preheader448 ], [ %.2, %.lr.ph.i ], [ %.2, %bb.cu ], [ %.2, %_ZL7mi_outccPPcS_.exit283 ], [ %.2, %bb.ae ], [ %.2, %bb.af ], [ %.5, %bb.bl ], [ %.5, %_ZL7mi_outccPPcS_.exit.i ], [ %.5, %_ZL7mi_outccPPcS_.exit53.i ], [ %.2, %bb.cp ], [ %.2, %_ZL7mi_outccPPcS_.exit.i279 ], [ %.2, %_ZL7mi_outccPPcS_.exit53.i265 ], [ %.2, %bb.cv ], [ %.5, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ], [ %.2, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ], [ %.2, %.epil.preheader ] ; 7 uses
  %.1193 = phi ptr [ %.1303, %.epil.preheader448 ], [ %.0302343, %.lr.ph.i ], [ %.0302343, %bb.cu ], [ %.0302343, %_ZL7mi_outccPPcS_.exit283 ], [ %.0302343, %bb.ae ], [ %.0302343, %bb.af ], [ %.1303, %bb.bl ], [ %.1303, %_ZL7mi_outccPPcS_.exit.i ], [ %.1303, %_ZL7mi_outccPPcS_.exit53.i ], [ %.0302343, %bb.cp ], [ %.0302343, %_ZL7mi_outccPPcS_.exit.i279 ], [ %.0302343, %_ZL7mi_outccPPcS_.exit53.i265 ], [ %.0302343, %bb.cv ], [ %.1303, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ], [ %.0302343, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ], [ %.0302343, %.epil.preheader ] ; 10 uses
  %.fr.i = freeze ptr %.2304                      ; 7 uses
  %i.jg = ptrtoint ptr %.fr.i to i64              ; 3 uses
  %i.jh = ptrtoint ptr %.1193 to i64              ; 2 uses
  %i.ji = sub i64 %i.jg, %i.jh                    ; 13 uses
  %i.jj = icmp ult i64 %i.ji, %.6
  br i1 %i.jj, label %bb.cw, label %_ZL17mi_out_alignrightcPcmmS_.exit

bb.cw:                                            ; preds = %_ZL7mi_outsPKcPPcS1_.exit
  %i.jk = sub nuw i64 %.6, %i.ji                  ; 2 uses
  %i.jl = icmp ult ptr %.fr.i, %i.e
  br i1 %i.jl, label %.lr.ph.preheader.i, label %_ZL11mi_out_fillcmPPcS_.exit

.lr.ph.preheader.i:                               ; preds = %bb.cw
  %i.jm = xor i64 %i.jg, -1
  %i.jn = add i64 %i.jm, %i.h
  %i.jo = add i64 %i.jk, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.jn, i64 %i.jo)
  %i.jp = add nuw i64 %umin.i, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.fr.i, i8 range(i8 32, 49) %.2201, i64 %i.jp, i1 false), !tbaa !69
  %scevgep.i = getelementptr i8, ptr %.fr.i, i64 %i.jp
  br label %_ZL11mi_out_fillcmPPcS_.exit

_ZL11mi_out_fillcmPPcS_.exit:                     ; preds = %bb.cw, %.lr.ph.preheader.i
  %.09.lcssa.i = phi ptr [ %.fr.i, %bb.cw ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 4 uses
  %.not249 = icmp ugt ptr %.09.lcssa.i, %i.e
  %or.cond251 = select i1 %.not248, i1 true, i1 %.not249
  br i1 %or.cond251, label %_ZL17mi_out_alignrightcPcmmS_.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZL11mi_out_fillcmPPcS_.exit
  %i.jq = icmp ne ptr %.fr.i, %.1193
  %i.jr = getelementptr inbounds nuw i8, ptr %.1193, i64 %.6
  %.not.i287 = icmp ult ptr %i.jr, %i.e
  %or.cond27.i = select i1 %i.jq, i1 %.not.i287, i1 false
  br i1 %or.cond27.i, label %iter.check, label %_ZL17mi_out_alignrightcPcmmS_.exit

iter.check:                                       ; preds = %bb.cx
  %min.iters.check = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check, label %.preheader31.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = add i64 %.6, %i.jh
  %i.js = sub i64 %4, %i.jg
  %diff.check = icmp ugt i64 %i.js, -32
  br i1 %diff.check, label %.preheader31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check429 = icmp ult i64 %i.ji, 32
  br i1 %min.iters.check429, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jt = and i64 %i.ji, 24
  %n.vec = and i64 %i.ji, -32                     ; 4 uses
  %i.ju = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jv = or disjoint i64 %index, 1               ; 2 uses
  %i.jw = sub nuw i64 %i.ji, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.jw ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -15
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 -31
  %wide.load = load <16 x i8>, ptr %i.jy, align 1, !tbaa !69
  %wide.load430 = load <16 x i8>, ptr %i.jz, align 1, !tbaa !69
  %i.ka = sub i64 %.6, %i.jv
  %i.kb = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.ka ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 -15
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 -31
  store <16 x i8> %wide.load, ptr %i.kc, align 1, !tbaa !69
  store <16 x i8> %wide.load430, ptr %i.kd, align 1, !tbaa !69
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ji, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jt, 0
  br i1 %min.epilog.iters.check, label %.preheader31.i.preheader, label %vec.epilog.ph, !prof !209

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.ji, -8                   ; 3 uses
  %i.kf = or disjoint i64 %n.vec431, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.kg = or disjoint i64 %index432, 1            ; 2 uses
  %i.kh = sub nuw i64 %i.ji, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.kh
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -7
  %wide.load433 = load <8 x i8>, ptr %i.kj, align 1, !tbaa !69
  %i.kk = sub i64 %.6, %i.kg
  %i.kl = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.kk
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -7
  store <8 x i8> %wide.load433, ptr %i.km, align 1, !tbaa !69
  %index.next434 = add nuw i64 %index432, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.kn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !330

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.ji, %n.vec431
  br i1 %cmp.n435, label %.preheader.preheader.i, label %.preheader31.i.preheader

.preheader31.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02232.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ju, %vec.epilog.iter.check ], [ %i.kf, %vec.epilog.middle.block ]
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %.02232.i = phi i64 [ %i.kt, %.preheader31.i ], [ %.02232.i.ph, %.preheader31.i.preheader ] ; 4 uses
  %i.ko = sub nuw i64 %i.ji, %.02232.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !69
  %i.kr = sub i64 %.6, %.02232.i
  %i.ks = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.kr
  store i8 %i.kq, ptr %i.ks, align 1, !tbaa !69
  %i.kt = add nuw i64 %.02232.i, 1
  %exitcond.i = icmp eq i64 %.02232.i, %i.ji
  br i1 %exitcond.i, label %.preheader.preheader.i, label %.preheader31.i, !llvm.loop !331

.preheader.preheader.i:                           ; preds = %.preheader31.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1193, i8 range(i8 32, 49) %.2201, i64 %i.jk, i1 false), !tbaa !69
  br label %_ZL17mi_out_alignrightcPcmmS_.exit

_ZL17mi_out_alignrightcPcmmS_.exit:               ; preds = %_ZL11mi_out_fillcmPPcS_.exit, %_ZL7mi_outsPKcPPcS1_.exit, %bb.cx, %.preheader.preheader.i, %_ZL7mi_outccPPcS_.exit, %switch.early.test
  %.4306 = phi ptr [ %.09.lcssa.i, %.preheader.preheader.i ], [ %.fr.i, %_ZL7mi_outsPKcPPcS1_.exit ], [ %.0302343, %switch.early.test ], [ %i.m, %_ZL7mi_outccPPcS_.exit ], [ %.09.lcssa.i, %bb.cx ], [ %.09.lcssa.i, %_ZL11mi_out_fillcmPPcS_.exit ] ; 3 uses
  %.9 = phi ptr [ %.6217, %.preheader.preheader.i ], [ %.6217, %_ZL7mi_outsPKcPPcS1_.exit ], [ %i.k, %switch.early.test ], [ %i.k, %_ZL7mi_outccPPcS_.exit ], [ %.6217, %bb.cx ], [ %.6217, %_ZL11mi_out_fillcmPPcS_.exit ]
  %.not = icmp ult ptr %.4306, %i.e
  br i1 %.not, label %bb.c, label %_ZL17mi_out_alignrightcPcmmS_.exit.thread325

_ZL17mi_out_alignrightcPcmmS_.exit.thread325:     ; preds = %_ZL17mi_out_alignrightcPcmmS_.exit, %bb.f, %bb.c, %bb.w, %bb.h, %bb.k, %bb.n, %bb.q, %bb.y, %bb.u, %bb.t, %bb.b
  %.0302341 = phi ptr [ %.0302343, %bb.t ], [ %0, %bb.b ], [ %.4306, %_ZL17mi_out_alignrightcPcmmS_.exit ], [ %.0302343, %bb.f ], [ %.0302343, %bb.c ], [ %.0302343, %bb.w ], [ %.0302343, %bb.h ], [ %.0302343, %bb.k ], [ %.0302343, %bb.n ], [ %.0302343, %bb.q ], [ %.0302343, %bb.y ], [ %.0302343, %bb.u ] ; 2 uses
  store i8 0, ptr %.0302341, align 1, !tbaa !69
  %i.ku = ptrtoint ptr %.0302341 to i64
  %i.kv = ptrtoint ptr %0 to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = trunc i64 %i.kw to i32
  br label %bb.cy

bb.cy:                                            ; preds = %bb.a, %_ZL17mi_out_alignrightcPcmmS_.exit.thread325
  %.0218 = phi i32 [ %i.kx, %_ZL17mi_out_alignrightcPcmmS_.exit.thread325 ], [ 0, %bb.a ]
  ret i32 %.0218
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define hidden noundef i32 @_Z12_mi_snprintfPcmPKcz(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #33 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call noundef i32 @_Z13_mi_vsnprintfPcmPKcP13__va_list_tag(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #34

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 0, 65) i64 @_Z20_mi_popcount_genericm(i64 noundef %0) local_unnamed_addr #35 {
bb.a:
  %i.a = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @mi_version() local_unnamed_addr #8 {
bb.a:
  ret i32 223
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_options_print() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28)
          to label %.preheader unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.31, i32 noundef 0)
          to label %bb.e unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr @_ZL7options, i64 %indvars.iv ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !135
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %mi_option_get.exit, !prof !61

bb.c:                                             ; preds = %.preheader
  invoke fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull %i.a)
          to label %mi_option_get.exit unwind label %.loopexit, !inline_history !138

mi_option_get.exit:                               ; preds = %bb.c, %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !210
  %i.g = load i64, ptr %i.a, align 16, !tbaa !137
  %i.h = icmp eq i64 %indvars.iv, 9
  %i.i = icmp eq i64 %indvars.iv, 23
  %i.j = or i1 %i.h, %i.i
  %i.k = select i1 %i.j, ptr @.str.30, ptr @.str.11
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.29, ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.k)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %mi_option_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 37
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !334

bb.e:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.32, i32 noundef 0)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  ret void

.loopexit:                                        ; preds = %mi_option_get.exit, %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.l = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.l) #56
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_Z19_mi_option_get_fast11mi_option_e(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @_ZL7options, i64 %i.a
  %i.c = load i64, ptr %i.b, align 16, !tbaa !137
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
.lr.ph.i:
  %i.a = alloca [65 x i8], align 16               ; 8 uses
  %i.b = alloca [65 x i8], align 16               ; 19 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store <8 x i8> <i8 109, i8 105, i8 109, i8 97, i8 108, i8 108, i8 111, i8 99>, ptr %i.b, align 16, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  store i8 95, ptr %i.d, align 8, !tbaa !69
  store i8 0, ptr %i.e, align 1, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_Z11_mi_strlcatPcPKcm.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i, %.lr.ph.i39
  %.017.i = phi i64 [ %i.j, %.lr.ph.i39 ], [ 65, %.lr.ph.i ] ; 2 uses
  %.01216.i40 = phi ptr [ %i.i, %.lr.ph.i39 ], [ %i.b, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.01216.i40, i64 1 ; 4 uses
  %i.j = add nsw i64 %.017.i, -1                  ; 2 uses
  %i.k = load i8, ptr %i.i, align 1, !tbaa !69
  %i.l = icmp ne i8 %i.k, 0
  %i.m = icmp samesign ugt i64 %.017.i, 2         ; 2 uses
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph.i39, label %.preheader.i.i, !llvm.loop !31

.preheader.i.i:                                   ; preds = %.lr.ph.i39
  %i.o = load i8, ptr %i.g, align 1, !tbaa !69    ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %i.q = and i1 %i.m, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.r = phi i8 [ %i.v, %.lr.ph.i.i ], [ %i.o, %.preheader.i.i ]
  %.018.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.j, %.preheader.i.i ]
  %.01117.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.g, %.preheader.i.i ]
  %.01216.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.i, %.preheader.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01117.i.i, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01216.i.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.01216.i.i, align 1, !tbaa !69
  %i.u = add nsw i64 %.018.i.i, -1                ; 2 uses
  %i.v = load i8, ptr %i.s, align 1, !tbaa !69    ; 2 uses
  %i.w = icmp ne i8 %i.v, 0
  %i.x = icmp ugt i64 %i.u, 1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !30

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.012.lcssa.i.i = phi ptr [ %i.i, %.preheader.i.i ], [ %i.t, %.lr.ph.i.i ]
  store i8 0, ptr %.012.lcssa.i.i, align 1, !tbaa !69
  br label %_Z11_mi_strlcatPcPKcm.exit

_Z11_mi_strlcatPcPKcm.exit:                       ; preds = %.lr.ph.i, %._crit_edge.i.i
end_hunk_0
