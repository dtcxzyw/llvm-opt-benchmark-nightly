Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN5boost5beast9websocket6detail13pmd_read_implERNS2_9pmd_offerERKNS0_4http8ext_listE:bb.a
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !58
  %.not15.i94.12 = icmp eq i8 %i.gp, 105
  br i1 %.not15.i94.12, label %.preheader21.i89.12, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.12:                              ; preds = %.preheader21.i89.11
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 13 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !58
  %.not15.i94.13 = icmp eq i8 %i.gr, 110
  br i1 %.not15.i94.13, label %.preheader21.i89.13, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.13:                              ; preds = %.preheader21.i89.12
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 14 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !58
  %.not15.i94.14 = icmp eq i8 %i.gt, 100
  br i1 %.not15.i94.14, label %.preheader21.i89.14, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.14:                              ; preds = %.preheader21.i89.13
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 15 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !58
  %.not15.i94.15 = icmp eq i8 %i.gv, 111
  br i1 %.not15.i94.15, label %.preheader21.i89.15, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.15:                              ; preds = %.preheader21.i89.14
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 16 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !58
  %.not15.i94.16 = icmp eq i8 %i.gx, 119
  br i1 %.not15.i94.16, label %.preheader21.i89.16, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.16:                              ; preds = %.preheader21.i89.15
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 17 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !58
  %.not15.i94.17 = icmp eq i8 %i.gz, 95
  br i1 %.not15.i94.17, label %.preheader21.i89.17, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.17:                              ; preds = %.preheader21.i89.16
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 18 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !58
  %.not15.i94.18 = icmp eq i8 %i.hb, 98
  br i1 %.not15.i94.18, label %.preheader21.i89.18, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.18:                              ; preds = %.preheader21.i89.17
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 19 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !58
  %.not15.i94.19 = icmp eq i8 %i.hd, 105
  br i1 %.not15.i94.19, label %.preheader21.i89.19, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.19:                              ; preds = %.preheader21.i89.18
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 20 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !58
  %.not15.i94.20 = icmp eq i8 %i.hf, 116
  br i1 %.not15.i94.20, label %.preheader21.i89.20, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.20:                              ; preds = %.preheader21.i89.19
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 21 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !58
  %.not15.i94.21 = icmp eq i8 %i.hh, 115
  br i1 %.not15.i94.21, label %.loopexit261, label %.preheader.i95.preheader, !llvm.loop !11

.preheader21.i89.preheader:                       ; preds = %.preheader.i78
  %i.hi = load i8, ptr %.sroa.011.0.copyload, align 1, !tbaa !58
  %.not15.i94 = icmp eq i8 %i.hi, 99
  br i1 %.not15.i94, label %.preheader21.i89, label %.preheader.i95.preheader, !llvm.loop !11

.preheader.i95.preheader:                         ; preds = %.preheader21.i89.20, %.preheader21.i89.19, %.preheader21.i89.18, %.preheader21.i89.17, %.preheader21.i89.16, %.preheader21.i89.15, %.preheader21.i89.14, %.preheader21.i89.13, %.preheader21.i89.12, %.preheader21.i89.11, %.preheader21.i89.10, %.preheader21.i89.9, %.preheader21.i89.8, %.preheader21.i89.7, %.preheader21.i89.6, %.preheader21.i89.5, %.preheader21.i89.4, %.preheader21.i89.3, %.preheader21.i89.2, %.preheader21.i89.1, %.preheader21.i89, %.preheader21.i89.preheader
  %.0.i92606.lcssa = phi ptr [ @.str.172, %.preheader21.i89.preheader ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 1), %.preheader21.i89 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 2), %.preheader21.i89.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 3), %.preheader21.i89.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 4), %.preheader21.i89.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 5), %.preheader21.i89.4 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 6), %.preheader21.i89.5 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 7), %.preheader21.i89.6 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 8), %.preheader21.i89.7 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 9), %.preheader21.i89.8 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 10), %.preheader21.i89.9 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 11), %.preheader21.i89.10 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 12), %.preheader21.i89.11 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 13), %.preheader21.i89.12 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 14), %.preheader21.i89.13 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 15), %.preheader21.i89.14 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 16), %.preheader21.i89.15 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 17), %.preheader21.i89.16 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 18), %.preheader21.i89.17 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 19), %.preheader21.i89.18 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 20), %.preheader21.i89.19 ], [ getelementptr inbounds nuw (i8, ptr @.str.172, i64 21), %.preheader21.i89.20 ]
  %.08.i91605.lcssa = phi ptr [ %.sroa.011.0.copyload, %.preheader21.i89.preheader ], [ %i.fs, %.preheader21.i89 ], [ %i.fu, %.preheader21.i89.1 ], [ %i.fw, %.preheader21.i89.2 ], [ %i.fy, %.preheader21.i89.3 ], [ %i.ga, %.preheader21.i89.4 ], [ %i.gc, %.preheader21.i89.5 ], [ %i.ge, %.preheader21.i89.6 ], [ %i.gg, %.preheader21.i89.7 ], [ %i.gi, %.preheader21.i89.8 ], [ %i.gk, %.preheader21.i89.9 ], [ %i.gm, %.preheader21.i89.10 ], [ %i.go, %.preheader21.i89.11 ], [ %i.gq, %.preheader21.i89.12 ], [ %i.gs, %.preheader21.i89.13 ], [ %i.gu, %.preheader21.i89.14 ], [ %i.gw, %.preheader21.i89.15 ], [ %i.gy, %.preheader21.i89.16 ], [ %i.ha, %.preheader21.i89.17 ], [ %i.hc, %.preheader21.i89.18 ], [ %i.he, %.preheader21.i89.19 ], [ %i.hg, %.preheader21.i89.20 ]
  %.lcssa635 = phi i64 [ 21, %.preheader21.i89.preheader ], [ 20, %.preheader21.i89 ], [ 19, %.preheader21.i89.1 ], [ 18, %.preheader21.i89.2 ], [ 17, %.preheader21.i89.3 ], [ 16, %.preheader21.i89.4 ], [ 15, %.preheader21.i89.5 ], [ 14, %.preheader21.i89.6 ], [ 13, %.preheader21.i89.7 ], [ 12, %.preheader21.i89.8 ], [ 11, %.preheader21.i89.9 ], [ 10, %.preheader21.i89.10 ], [ 9, %.preheader21.i89.11 ], [ 8, %.preheader21.i89.12 ], [ 7, %.preheader21.i89.13 ], [ 6, %.preheader21.i89.14 ], [ 5, %.preheader21.i89.15 ], [ 4, %.preheader21.i89.16 ], [ 3, %.preheader21.i89.17 ], [ 2, %.preheader21.i89.18 ], [ 1, %.preheader21.i89.19 ], [ 0, %.preheader21.i89.20 ]
  br label %.preheader.i95

.preheader.i95:                                   ; preds = %.preheader.i95.preheader, %bb.q
  %.111.i96 = phi i64 [ %i.hx, %bb.q ], [ %.lcssa635, %.preheader.i95.preheader ] ; 2 uses
  %.19.i97 = phi ptr [ %i.hw, %bb.q ], [ %.08.i91605.lcssa, %.preheader.i95.preheader ] ; 2 uses
  %.1.i98 = phi ptr [ %i.hv, %bb.q ], [ %.0.i92606.lcssa, %.preheader.i95.preheader ] ; 2 uses
  %i.hj = load i8, ptr %.19.i97, align 1, !tbaa !58 ; 3 uses
  %i.hk = sext i8 %i.hj to i32
  %i.hl = add nsw i32 %i.hk, -65
  %i.hm = icmp ult i32 %i.hl, 26
  %i.hn = add i8 %i.hj, 32
  %i.ho = select i1 %i.hm, i8 %i.hn, i8 %i.hj
  %i.hp = load i8, ptr %.1.i98, align 1, !tbaa !58 ; 3 uses
  %i.hq = sext i8 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, -65
  %i.hs = icmp ult i32 %i.hr, 26
  %i.ht = add i8 %i.hp, 32
  %i.hu = select i1 %i.hs, i8 %i.ht, i8 %i.hp
  %.not16.i99 = icmp eq i8 %i.ho, %i.hu
  br i1 %.not16.i99, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.preheader.i95
  %i.hv = getelementptr inbounds nuw i8, ptr %.1.i98, i64 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.19.i97, i64 1
  %i.hx = add i64 %.111.i96, -1
  %.not17.i100 = icmp eq i64 %.111.i96, 0
  br i1 %.not17.i100, label %.loopexit261, label %.preheader.i95, !llvm.loop !12

.loopexit261:                                     ; preds = %bb.q, %.preheader21.i89.20
  %i.hy = load i32, ptr %i.b, align 4, !tbaa !257
  %.not = icmp eq i32 %i.hy, 0
  br i1 %.not, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.loopexit261
  %i.hz = load i64, ptr %i.dq, align 8, !tbaa !240 ; 3 uses
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.05.0.copyload = load ptr, ptr %i.dr, align 8, !tbaa !167 ; 3 uses
  %i.ib = icmp ugt i64 %i.hz, 2
  br i1 %i.ib, label %_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ic = load i8, ptr %.sroa.05.0.copyload, align 1, !tbaa !58
  %i.id = add i8 %i.ic, -58
  %or.cond35.i103 = icmp ult i8 %i.id, -9
  br i1 %or.cond35.i103, label %_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112.thread, label %.lr.ph.i105

bb.u:                                             ; preds = %.lr.ph.i105
  %.not.i111 = icmp samesign eq i64 %i.hz, 1
  br i1 %.not.i111, label %_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112, label %.lr.ph.i105.1

.lr.ph.i105.1:                                    ; preds = %bb.u
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !58  ; 2 uses
  %i.ig = add i8 %i.if, -48
  %or.cond.i108.1 = icmp ult i8 %i.ig, 10
  %i.ih = zext nneg i8 %i.if to i32
  %i.ii = mul nuw nsw i32 %i.ip, 10
  %i.ij = add nsw i32 %i.ii, -48
  %i.ik = add nsw i32 %i.ij, %i.ih                ; 2 uses
  %i.il = icmp uge i32 %i.ik, %i.ip
  %.1.i109.1 = select i1 %or.cond.i108.1, i1 %i.il, i1 false
  br i1 %.1.i109.1, label %_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112, label %_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112.thread

.lr.ph.i105:                                      ; preds = %bb.t
  %i.im = load i8, ptr %.sroa.05.0.copyload, align 1, !tbaa !58 ; 2 uses
  %i.in = add i8 %i.im, -48
  %or.cond.i108 = icmp ult i8 %i.in, 10
  %i.io = zext nneg i8 %i.im to i32
  %i.ip = add nsw i32 %i.io, -48                  ; 3 uses
  br i1 %or.cond.i108, label %bb.u, label %_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112.thread

_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112.thread: ; preds = %bb.t, %bb.s, %.lr.ph.i105, %.lr.ph.i105.1
  store i32 -1, ptr %i.b, align 4, !tbaa !257
  br label %.critedge

_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112: ; preds = %.lr.ph.i105.1, %bb.u
  %.lcssa640 = phi i32 [ %i.ip, %bb.u ], [ %i.ik, %.lr.ph.i105.1 ] ; 2 uses
  store i32 %.lcssa640, ptr %i.b, align 4, !tbaa !257
  %i.iq = add nsw i32 %.lcssa640, -16
  %or.cond63 = icmp ult i32 %i.iq, -8
  br i1 %or.cond63, label %.critedge, label %bb.aa

bb.v:                                             ; preds = %bb.r
  store i32 -1, ptr %i.b, align 4, !tbaa !257
  br label %bb.aa

.preheader21.i115:                                ; preds = %.preheader21.i115.preheader
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i118597, i64 1
  %i.is = getelementptr inbounds nuw i8, ptr %.08.i117596, i64 1
  %.not14.i119 = icmp eq i64 %i.it, 0
  br i1 %.not14.i119, label %.loopexit259, label %.preheader21.i115.preheader, !llvm.loop !11

.preheader21.i115.preheader:                      ; preds = %_ZNK5boost5beast4http10param_list14const_iteratorneERKS3_.exit.thread, %.preheader21.i115
  %.0.i118597 = phi ptr [ %i.ir, %.preheader21.i115 ], [ @.str.173, %_ZNK5boost5beast4http10param_list14const_iteratorneERKS3_.exit.thread ] ; 3 uses
  %.08.i117596 = phi ptr [ %i.is, %.preheader21.i115 ], [ %.sroa.011.0.copyload, %_ZNK5boost5beast4http10param_list14const_iteratorneERKS3_.exit.thread ] ; 3 uses
  %.010.i116595 = phi i64 [ %i.it, %.preheader21.i115 ], [ %.sroa.212.0.copyload, %_ZNK5boost5beast4http10param_list14const_iteratorneERKS3_.exit.thread ]
  %i.it = add i64 %.010.i116595, -1               ; 3 uses
  %i.iu = load i8, ptr %.08.i117596, align 1, !tbaa !58
  %i.iv = load i8, ptr %.0.i118597, align 1, !tbaa !58
  %.not15.i120 = icmp eq i8 %i.iu, %i.iv
  br i1 %.not15.i120, label %.preheader21.i115, label %.preheader.i121, !llvm.loop !11

.preheader.i121:                                  ; preds = %.preheader21.i115.preheader, %bb.w
  %.111.i122 = phi i64 [ %i.jk, %bb.w ], [ %i.it, %.preheader21.i115.preheader ] ; 2 uses
  %.19.i123 = phi ptr [ %i.jj, %bb.w ], [ %.08.i117596, %.preheader21.i115.preheader ] ; 2 uses
  %.1.i124 = phi ptr [ %i.ji, %bb.w ], [ %.0.i118597, %.preheader21.i115.preheader ] ; 2 uses
  %i.iw = load i8, ptr %.19.i123, align 1, !tbaa !58 ; 3 uses
  %i.ix = sext i8 %i.iw to i32
  %i.iy = add nsw i32 %i.ix, -65
  %i.iz = icmp ult i32 %i.iy, 26
  %i.ja = add i8 %i.iw, 32
  %i.jb = select i1 %i.iz, i8 %i.ja, i8 %i.iw
  %i.jc = load i8, ptr %.1.i124, align 1, !tbaa !58 ; 3 uses
  %i.jd = sext i8 %i.jc to i32
  %i.je = add nsw i32 %i.jd, -65
  %i.jf = icmp ult i32 %i.je, 26
  %i.jg = add i8 %i.jc, 32
  %i.jh = select i1 %i.jf, i8 %i.jg, i8 %i.jc
  %.not16.i125 = icmp eq i8 %i.jb, %i.jh
  br i1 %.not16.i125, label %bb.w, label %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit127

bb.w:                                             ; preds = %.preheader.i121
  %i.ji = getelementptr inbounds nuw i8, ptr %.1.i124, i64 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.19.i123, i64 1
  %i.jk = add i64 %.111.i122, -1
  %.not17.i126 = icmp eq i64 %.111.i122, 0
  br i1 %.not17.i126, label %.loopexit259, label %.preheader.i121, !llvm.loop !12

.loopexit259:                                     ; preds = %.preheader21.i115, %bb.w
  %i.jl = load i8, ptr %i.c, align 4, !tbaa !258, !range !194, !noundef !146
  %.not236 = icmp eq i8 %i.jl, 0
  %i.jm = load i64, ptr %i.dq, align 8
  %6 = icmp eq i64 %i.jm, 0
  %or.cond240.not = select i1 %.not236, i1 %6, i1 false
  br i1 %or.cond240.not, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.loopexit259
  store i8 1, ptr %i.c, align 4, !tbaa !258
  br label %bb.aa

_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit127: ; preds = %.preheader.i121
  %.not.i128 = icmp eq i64 %.sroa.212.0.copyload, 26
  br i1 %.not.i128, label %.preheader21.i130.preheader, label %.critedge

.preheader21.i130:                                ; preds = %.preheader21.i130.preheader
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 1 ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !58
  %.not15.i135.1 = icmp eq i8 %i.jo, 108
  br i1 %.not15.i135.1, label %.preheader21.i130.1, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.1:                              ; preds = %.preheader21.i130
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 2 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !58
  %.not15.i135.2 = icmp eq i8 %i.jq, 105
  br i1 %.not15.i135.2, label %.preheader21.i130.2, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.2:                              ; preds = %.preheader21.i130.1
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 3 ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !58
  %.not15.i135.3 = icmp eq i8 %i.js, 101
  br i1 %.not15.i135.3, label %.preheader21.i130.3, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.3:                              ; preds = %.preheader21.i130.2
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 4 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !58
  %.not15.i135.4 = icmp eq i8 %i.ju, 110
  br i1 %.not15.i135.4, label %.preheader21.i130.4, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.4:                              ; preds = %.preheader21.i130.3
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 5 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !58
  %.not15.i135.5 = icmp eq i8 %i.jw, 116
  br i1 %.not15.i135.5, label %.preheader21.i130.5, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.5:                              ; preds = %.preheader21.i130.4
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 6 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !58
  %.not15.i135.6 = icmp eq i8 %i.jy, 95
  br i1 %.not15.i135.6, label %.preheader21.i130.6, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.6:                              ; preds = %.preheader21.i130.5
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 7 ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !58
  %.not15.i135.7 = icmp eq i8 %i.ka, 110
  br i1 %.not15.i135.7, label %.preheader21.i130.7, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.7:                              ; preds = %.preheader21.i130.6
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 8 ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !58
  %.not15.i135.8 = icmp eq i8 %i.kc, 111
  br i1 %.not15.i135.8, label %.preheader21.i130.8, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.8:                              ; preds = %.preheader21.i130.7
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 9 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !58
  %.not15.i135.9 = icmp eq i8 %i.ke, 95
  br i1 %.not15.i135.9, label %.preheader21.i130.9, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.9:                              ; preds = %.preheader21.i130.8
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 10 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !58
  %.not15.i135.10 = icmp eq i8 %i.kg, 99
  br i1 %.not15.i135.10, label %.preheader21.i130.10, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.10:                             ; preds = %.preheader21.i130.9
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 11 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !58
  %.not15.i135.11 = icmp eq i8 %i.ki, 111
  br i1 %.not15.i135.11, label %.preheader21.i130.11, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.11:                             ; preds = %.preheader21.i130.10
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 12 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !58
  %.not15.i135.12 = icmp eq i8 %i.kk, 110
  br i1 %.not15.i135.12, label %.preheader21.i130.12, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.12:                             ; preds = %.preheader21.i130.11
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 13 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !58
  %.not15.i135.13 = icmp eq i8 %i.km, 116
  br i1 %.not15.i135.13, label %.preheader21.i130.13, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.13:                             ; preds = %.preheader21.i130.12
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 14 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !58
  %.not15.i135.14 = icmp eq i8 %i.ko, 101
  br i1 %.not15.i135.14, label %.preheader21.i130.14, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.14:                             ; preds = %.preheader21.i130.13
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 15 ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !58
  %.not15.i135.15 = icmp eq i8 %i.kq, 120
  br i1 %.not15.i135.15, label %.preheader21.i130.15, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.15:                             ; preds = %.preheader21.i130.14
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 16 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !58
  %.not15.i135.16 = icmp eq i8 %i.ks, 116
  br i1 %.not15.i135.16, label %.preheader21.i130.16, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.16:                             ; preds = %.preheader21.i130.15
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 17 ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !58
  %.not15.i135.17 = icmp eq i8 %i.ku, 95
  br i1 %.not15.i135.17, label %.preheader21.i130.17, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.17:                             ; preds = %.preheader21.i130.16
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 18 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !58
  %.not15.i135.18 = icmp eq i8 %i.kw, 116
  br i1 %.not15.i135.18, label %.preheader21.i130.18, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.18:                             ; preds = %.preheader21.i130.17
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 19 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !58
  %.not15.i135.19 = icmp eq i8 %i.ky, 97
  br i1 %.not15.i135.19, label %.preheader21.i130.19, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.19:                             ; preds = %.preheader21.i130.18
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 20 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !58
  %.not15.i135.20 = icmp eq i8 %i.la, 107
  br i1 %.not15.i135.20, label %.preheader21.i130.20, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.20:                             ; preds = %.preheader21.i130.19
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 21 ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !58
  %.not15.i135.21 = icmp eq i8 %i.lc, 101
  br i1 %.not15.i135.21, label %.preheader21.i130.21, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.21:                             ; preds = %.preheader21.i130.20
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 22 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !58
  %.not15.i135.22 = icmp eq i8 %i.le, 111
  br i1 %.not15.i135.22, label %.preheader21.i130.22, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.22:                             ; preds = %.preheader21.i130.21
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 23 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !58
  %.not15.i135.23 = icmp eq i8 %i.lg, 118
  br i1 %.not15.i135.23, label %.preheader21.i130.23, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.23:                             ; preds = %.preheader21.i130.22
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 24 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !58
  %.not15.i135.24 = icmp eq i8 %i.li, 101
  br i1 %.not15.i135.24, label %.preheader21.i130.24, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.24:                             ; preds = %.preheader21.i130.23
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 25 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !58
  %.not15.i135.25 = icmp eq i8 %i.lk, 114
  br i1 %.not15.i135.25, label %.loopexit257, label %.preheader.i136.preheader, !llvm.loop !11

.preheader21.i130.preheader:                      ; preds = %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit127
  %i.ll = load i8, ptr %.sroa.011.0.copyload, align 1, !tbaa !58
  %.not15.i135 = icmp eq i8 %i.ll, 99
  br i1 %.not15.i135, label %.preheader21.i130, label %.preheader.i136.preheader, !llvm.loop !11

.preheader.i136.preheader:                        ; preds = %.preheader21.i130.24, %.preheader21.i130.23, %.preheader21.i130.22, %.preheader21.i130.21, %.preheader21.i130.20, %.preheader21.i130.19, %.preheader21.i130.18, %.preheader21.i130.17, %.preheader21.i130.16, %.preheader21.i130.15, %.preheader21.i130.14, %.preheader21.i130.13, %.preheader21.i130.12, %.preheader21.i130.11, %.preheader21.i130.10, %.preheader21.i130.9, %.preheader21.i130.8, %.preheader21.i130.7, %.preheader21.i130.6, %.preheader21.i130.5, %.preheader21.i130.4, %.preheader21.i130.3, %.preheader21.i130.2, %.preheader21.i130.1, %.preheader21.i130, %.preheader21.i130.preheader
  %.0.i133600.lcssa = phi ptr [ @.str.174, %.preheader21.i130.preheader ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 1), %.preheader21.i130 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 2), %.preheader21.i130.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 3), %.preheader21.i130.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 4), %.preheader21.i130.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 5), %.preheader21.i130.4 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 6), %.preheader21.i130.5 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 7), %.preheader21.i130.6 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 8), %.preheader21.i130.7 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 9), %.preheader21.i130.8 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 10), %.preheader21.i130.9 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 11), %.preheader21.i130.10 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 12), %.preheader21.i130.11 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 13), %.preheader21.i130.12 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 14), %.preheader21.i130.13 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 15), %.preheader21.i130.14 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 16), %.preheader21.i130.15 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 17), %.preheader21.i130.16 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 18), %.preheader21.i130.17 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 19), %.preheader21.i130.18 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 20), %.preheader21.i130.19 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 21), %.preheader21.i130.20 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 22), %.preheader21.i130.21 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 23), %.preheader21.i130.22 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 24), %.preheader21.i130.23 ], [ getelementptr inbounds nuw (i8, ptr @.str.174, i64 25), %.preheader21.i130.24 ]
  %.08.i132599.lcssa = phi ptr [ %.sroa.011.0.copyload, %.preheader21.i130.preheader ], [ %i.jn, %.preheader21.i130 ], [ %i.jp, %.preheader21.i130.1 ], [ %i.jr, %.preheader21.i130.2 ], [ %i.jt, %.preheader21.i130.3 ], [ %i.jv, %.preheader21.i130.4 ], [ %i.jx, %.preheader21.i130.5 ], [ %i.jz, %.preheader21.i130.6 ], [ %i.kb, %.preheader21.i130.7 ], [ %i.kd, %.preheader21.i130.8 ], [ %i.kf, %.preheader21.i130.9 ], [ %i.kh, %.preheader21.i130.10 ], [ %i.kj, %.preheader21.i130.11 ], [ %i.kl, %.preheader21.i130.12 ], [ %i.kn, %.preheader21.i130.13 ], [ %i.kp, %.preheader21.i130.14 ], [ %i.kr, %.preheader21.i130.15 ], [ %i.kt, %.preheader21.i130.16 ], [ %i.kv, %.preheader21.i130.17 ], [ %i.kx, %.preheader21.i130.18 ], [ %i.kz, %.preheader21.i130.19 ], [ %i.lb, %.preheader21.i130.20 ], [ %i.ld, %.preheader21.i130.21 ], [ %i.lf, %.preheader21.i130.22 ], [ %i.lh, %.preheader21.i130.23 ], [ %i.lj, %.preheader21.i130.24 ]
  %.lcssa627 = phi i64 [ 25, %.preheader21.i130.preheader ], [ 24, %.preheader21.i130 ], [ 23, %.preheader21.i130.1 ], [ 22, %.preheader21.i130.2 ], [ 21, %.preheader21.i130.3 ], [ 20, %.preheader21.i130.4 ], [ 19, %.preheader21.i130.5 ], [ 18, %.preheader21.i130.6 ], [ 17, %.preheader21.i130.7 ], [ 16, %.preheader21.i130.8 ], [ 15, %.preheader21.i130.9 ], [ 14, %.preheader21.i130.10 ], [ 13, %.preheader21.i130.11 ], [ 12, %.preheader21.i130.12 ], [ 11, %.preheader21.i130.13 ], [ 10, %.preheader21.i130.14 ], [ 9, %.preheader21.i130.15 ], [ 8, %.preheader21.i130.16 ], [ 7, %.preheader21.i130.17 ], [ 6, %.preheader21.i130.18 ], [ 5, %.preheader21.i130.19 ], [ 4, %.preheader21.i130.20 ], [ 3, %.preheader21.i130.21 ], [ 2, %.preheader21.i130.22 ], [ 1, %.preheader21.i130.23 ], [ 0, %.preheader21.i130.24 ]
  br label %.preheader.i136

.preheader.i136:                                  ; preds = %.preheader.i136.preheader, %bb.y
  %.111.i137 = phi i64 [ %i.ma, %bb.y ], [ %.lcssa627, %.preheader.i136.preheader ] ; 2 uses
  %.19.i138 = phi ptr [ %i.lz, %bb.y ], [ %.08.i132599.lcssa, %.preheader.i136.preheader ] ; 2 uses
  %.1.i139 = phi ptr [ %i.ly, %bb.y ], [ %.0.i133600.lcssa, %.preheader.i136.preheader ] ; 2 uses
  %i.lm = load i8, ptr %.19.i138, align 1, !tbaa !58 ; 3 uses
  %i.ln = sext i8 %i.lm to i32
  %i.lo = add nsw i32 %i.ln, -65
  %i.lp = icmp ult i32 %i.lo, 26
  %i.lq = add i8 %i.lm, 32
  %i.lr = select i1 %i.lp, i8 %i.lq, i8 %i.lm
  %i.ls = load i8, ptr %.1.i139, align 1, !tbaa !58 ; 3 uses
  %i.lt = sext i8 %i.ls to i32
  %i.lu = add nsw i32 %i.lt, -65
  %i.lv = icmp ult i32 %i.lu, 26
  %i.lw = add i8 %i.ls, 32
  %i.lx = select i1 %i.lv, i8 %i.lw, i8 %i.ls
  %.not16.i140 = icmp eq i8 %i.lr, %i.lx
  br i1 %.not16.i140, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.preheader.i136
  %i.ly = getelementptr inbounds nuw i8, ptr %.1.i139, i64 1
  %i.lz = getelementptr inbounds nuw i8, ptr %.19.i138, i64 1
  %i.ma = add i64 %.111.i137, -1
  %.not17.i141 = icmp eq i64 %.111.i137, 0
  br i1 %.not17.i141, label %.loopexit257, label %.preheader.i136, !llvm.loop !12

.loopexit257:                                     ; preds = %bb.y, %.preheader21.i130.24
  %i.mb = load i8, ptr %i.d, align 1, !tbaa !259, !range !194, !noundef !146
  %.not241 = icmp eq i8 %i.mb, 0
  %i.mc = load i64, ptr %i.dq, align 8
  %7 = icmp eq i64 %i.mc, 0
  %or.cond245.not = select i1 %.not241, i1 %7, i1 false
  br i1 %or.cond245.not, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.loopexit257
  store i8 1, ptr %i.d, align 1, !tbaa !259
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit112, %_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE.exit, %bb.v, %bb.z, %bb.x
  store i64 0, ptr %i.da, align 8, !tbaa !59
  %i.md = load ptr, ptr %4, align 8, !tbaa !57
  store i8 0, ptr %i.md, align 1, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i8 0, i64 32, i1 false)
  %i.me = load ptr, ptr %i.de, align 8, !tbaa !206 ; 26 uses
  %.promoted.i.i = load ptr, ptr %i.db, align 8, !tbaa !167 ; 3 uses
  %.not8.i.i195 = icmp eq ptr %.promoted.i.i, %i.me
  br i1 %.not8.i.i195, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i198, label %.lr.ph.i.i196

.lr.ph.i.i196:                                    ; preds = %bb.aa, %bb.ab
  %i.mf = phi ptr [ %i.mh, %bb.ab ], [ %.promoted.i.i, %bb.aa ] ; 3 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !58
  switch i8 %i.mg, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i198 [
    i8 32, label %bb.ab
    i8 9, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph.i.i196, %.lr.ph.i.i196
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 4 uses
  store ptr %i.mh, ptr %i.db, align 8, !tbaa !167
  %.not.i.i197 = icmp eq ptr %i.mh, %i.me
  br i1 %.not.i.i197, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i198, label %.lr.ph.i.i196, !llvm.loop !18

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i198: ; preds = %bb.ab, %.lr.ph.i.i196, %bb.aa
  %i.mi = phi ptr [ %.promoted.i.i, %bb.aa ], [ %i.mh, %bb.ab ], [ %i.mf, %.lr.ph.i.i196 ] ; 22 uses
  store ptr %i.mi, ptr %i.dd, align 8, !tbaa !207
  %i.mj = icmp eq ptr %i.mi, %i.me
  br i1 %i.mj, label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i198
  %i.mk = load i8, ptr %i.mi, align 1, !tbaa !58
  %.not.i199 = icmp eq i8 %i.mk, 59
  br i1 %.not.i199, label %bb.ad, label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 1 ; 4 uses
  store ptr %i.ml, ptr %i.db, align 8, !tbaa !208
  %.not8.i37.i = icmp eq ptr %i.ml, %i.me
  br i1 %.not8.i37.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit40.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %bb.ad, %bb.ae
  %i.mm = phi ptr [ %i.mo, %bb.ae ], [ %i.ml, %bb.ad ] ; 3 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !58
  switch i8 %i.mn, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit40.i [
    i8 32, label %bb.ae
    i8 9, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph.i38.i, %.lr.ph.i38.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 1 ; 4 uses
  store ptr %i.mo, ptr %i.db, align 8, !tbaa !167
  %.not.i39.i = icmp eq ptr %i.mo, %i.me
  br i1 %.not.i39.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit40.i, label %.lr.ph.i38.i, !llvm.loop !18

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit40.i: ; preds = %bb.ae, %.lr.ph.i38.i, %bb.ad
  %i.mp = phi ptr [ %i.ml, %bb.ad ], [ %i.mo, %bb.ae ], [ %i.mm, %.lr.ph.i38.i ] ; 5 uses
  %i.mq = icmp eq ptr %i.mp, %i.me
  br i1 %i.mq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit40.i
  store ptr %i.mi, ptr %i.db, align 8, !tbaa !208
  br label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit

bb.ag:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit40.i
  %i.mr = load i8, ptr %i.mp, align 1, !tbaa !58
  %i.ms = zext i8 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !58
  %.not21.i = icmp eq i8 %i.mu, 0
  br i1 %.not21.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.mi, ptr %i.db, align 8, !tbaa !208
  br label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 1 ; 4 uses
  store ptr %i.mv, ptr %i.db, align 8, !tbaa !208
  %.not5.i.i = icmp eq ptr %i.mv, %i.me
  br i1 %.not5.i.i, label %_ZN5boost5beast4http6detail10skip_tokenIPKcEEvRT_S6_.exit.i, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %bb.ai, %bb.aj
  %i.mw = phi ptr [ %i.nb, %bb.aj ], [ %i.mv, %bb.ai ] ; 3 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !58
  %i.my = zext i8 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !58
  %.not4.i.i = icmp eq i8 %i.na, 0
  br i1 %.not4.i.i, label %_ZN5boost5beast4http6detail10skip_tokenIPKcEEvRT_S6_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i42.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 4 uses
  store ptr %i.nb, ptr %i.db, align 8, !tbaa !167
  %.not.i43.i = icmp eq ptr %i.nb, %i.me
  br i1 %.not.i43.i, label %_ZN5boost5beast4http6detail10skip_tokenIPKcEEvRT_S6_.exit.i, label %.lr.ph.i42.i, !llvm.loop !19

_ZN5boost5beast4http6detail10skip_tokenIPKcEEvRT_S6_.exit.i: ; preds = %bb.aj, %.lr.ph.i42.i, %bb.ai
  %i.nc = phi ptr [ %i.mv, %bb.ai ], [ %i.nb, %bb.aj ], [ %i.mw, %.lr.ph.i42.i ] ; 4 uses
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.mp to i64
  %i.nf = sub i64 %i.nd, %i.ne
  store ptr %i.mp, ptr %i.dc, align 8, !tbaa !167
  store i64 %i.nf, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !55
  %.not8.i45.i = icmp eq ptr %i.nc, %i.me
  br i1 %.not8.i45.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit48.i, label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %_ZN5boost5beast4http6detail10skip_tokenIPKcEEvRT_S6_.exit.i, %bb.ak
  %i.ng = phi ptr [ %i.ni, %bb.ak ], [ %i.nc, %_ZN5boost5beast4http6detail10skip_tokenIPKcEEvRT_S6_.exit.i ] ; 3 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !58
  switch i8 %i.nh, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit48.i [
    i8 32, label %bb.ak
    i8 9, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph.i46.i, %.lr.ph.i46.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 1 ; 4 uses
  store ptr %i.ni, ptr %i.db, align 8, !tbaa !167
  %.not.i47.i = icmp eq ptr %i.ni, %i.me
  br i1 %.not.i47.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit48.i, label %.lr.ph.i46.i, !llvm.loop !18

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit48.i: ; preds = %bb.ak, %.lr.ph.i46.i, %_ZN5boost5beast4http6detail10skip_tokenIPKcEEvRT_S6_.exit.i
  %i.nj = phi ptr [ %i.nc, %_ZN5boost5beast4http6detail10skip_tokenIPKcEEvRT_S6_.exit.i ], [ %i.ni, %bb.ak ], [ %i.ng, %.lr.ph.i46.i ] ; 4 uses
  %i.nk = icmp eq ptr %i.nj, %i.me
  br i1 %i.nk, label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit48.i
  %i.nl = load i8, ptr %i.nj, align 1, !tbaa !58
  switch i8 %i.nl, label %bb.am [
    i8 59, label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit
    i8 61, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  store ptr %i.mi, ptr %i.db, align 8, !tbaa !208
  br label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit

bb.an:                                            ; preds = %bb.al
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 1 ; 4 uses
  store ptr %i.nm, ptr %i.db, align 8, !tbaa !208
  %.not8.i50.i = icmp eq ptr %i.nm, %i.me
  br i1 %.not8.i50.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit53.i, label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %bb.an, %bb.ao
  %i.nn = phi ptr [ %i.np, %bb.ao ], [ %i.nm, %bb.an ] ; 3 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !58
  switch i8 %i.no, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit53.i [
    i8 32, label %bb.ao
    i8 9, label %bb.ao
  ]

bb.ao:                                            ; preds = %.lr.ph.i51.i, %.lr.ph.i51.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 1 ; 4 uses
  store ptr %i.np, ptr %i.db, align 8, !tbaa !167
  %.not.i52.i = icmp eq ptr %i.np, %i.me
  br i1 %.not.i52.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit53.i, label %.lr.ph.i51.i, !llvm.loop !18

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit53.i: ; preds = %bb.ao, %.lr.ph.i51.i, %bb.an
  %i.nq = phi ptr [ %i.nm, %bb.an ], [ %i.np, %bb.ao ], [ %i.nn, %.lr.ph.i51.i ] ; 10 uses
  %i.nr = icmp eq ptr %i.nq, %i.me
  br i1 %i.nr, label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit53.i
  %i.ns = load i8, ptr %i.nq, align 1, !tbaa !58  ; 2 uses
  %i.nt = icmp eq i8 %i.ns, 34
  br i1 %i.nt, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %bb.ap
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 1 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.me
  br i1 %i.nv, label %._crit_edge.i, label %.lr.ph.i202

._crit_edge.i:                                    ; preds = %bb.ay, %bb.aq
  store ptr %i.mi, ptr %i.db, align 8, !tbaa !208
  br label %_ZN5boost5beast4http6detail10param_iter9incrementEv.exit

.lr.ph.i202:                                      ; preds = %bb.aq, %bb.ay
  %i.nw = phi ptr [ %i.oj, %bb.ay ], [ %i.nu, %bb.aq ] ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1 ; 6 uses
  store ptr %i.nx, ptr %i.db, align 8, !tbaa !208
  %i.ny = load i8, ptr %i.nw, align 1, !tbaa !58  ; 3 uses
  %i.nz = icmp eq i8 %i.ny, 34
  br i1 %i.nz, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i202
  %i.oa = zext i8 %i.ny to i64
  %i.ob = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail9is_qdcharEcE3tab, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !58
  %.not24.i = icmp eq i8 %i.oc, 0
  br i1 %.not24.i, label %bb.as, label %bb.ay, !llvm.loop !20

bb.as:                                            ; preds = %bb.ar
  %.not25.i = icmp eq i8 %i.ny, 92
  br i1 %.not25.i, label %bb.au, label %bb.at

end_hunk_0
begin_hunk_1_@_ZN5boost5beast4zlib6detail14deflate_stream8doParamsERNS1_8z_paramsEiNS1_8StrategyERNS_6system10error_codeE:bb.a
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37

bb.i:                                             ; preds = %bb.g
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37

_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.40545.0 = phi i64 [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream12deflate_slowERNS1_8z_paramsENS1_5FlushE to i64), %bb.i ], [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream14deflate_storedERNS1_8z_paramsENS1_5FlushE to i64), %bb.g ], [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream12deflate_fastERNS1_8z_paramsENS1_5FlushE to i64), %bb.h ]
  %i.n = icmp eq i64 %.sroa.39.0, %.sroa.40545.0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %.not33 = icmp eq i64 %i.p, 0
  %or.cond745 = select i1 %i.n, i1 true, i1 %.not33
  br i1 %or.cond745, label %.critedge3, label %bb.k

bb.j:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit
  %.old = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.old744 = load i64, ptr %.old, align 8, !tbaa !323
  %.not33.old = icmp eq i64 %.old744, 0
  br i1 %.not33.old, label %.critedge3, label %bb.k

bb.k:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37, %bb.j
  store i8 1, ptr %5, align 4, !tbaa !324
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.q, align 4, !tbaa !58
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1099
  %i.s = and i64 %i.r, -2
  %switch.i.i.i.i38 = icmp eq i64 %i.s, -5572340897628102704
  br i1 %switch.i.i.i.i38, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41: ; preds = %bb.k
  %i.t = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1099
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1099
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 1) #48, !noalias !1099, !inline_history !36 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %.critedge3, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread
  %i.aa = load i32, ptr %4, align 8, !tbaa !58
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.critedge3

bb.l:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.y, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.l, %bb.m
  %.0.i18.i = phi ptr [ %i.ad, %bb.m ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.l ] ; 2 uses
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = icmp eq ptr %.0.i18.i, @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %i.ai, %i.ae
  %i.ak = select i1 %i.af, i1 %i.ag, i1 %i.aj
  br i1 %i.ak, label %bb.n, label %.critedge3

bb.n:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load i32, ptr %i.al, align 8, !tbaa !325
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.o, label %.critedge3

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.critedge3

.critedge3:                                       ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread, %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %bb.n, %bb.o, %bb.j
  %i.ao = load i32, ptr %i.j, align 4, !tbaa !315
  %.not34 = icmp eq i32 %i.ao, %spec.store.select
  br i1 %.not34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge3
  store i32 %spec.store.select, ptr %i.j, align 4, !tbaa !315
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.not757 = icmp eq i32 %spec.store.select, 9
  br i1 %.not757, label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit49, label %switch.lookup

switch.lookup:                                    ; preds = %bb.p
  %i.as = zext nneg i32 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7lm_initEv, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.at = zext nneg i32 %spec.store.select to i64
  %switch.gep748 = getelementptr inbounds nuw i8, ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7lm_initEv.31, i64 %i.at
  %switch.load749 = load i8, ptr %switch.gep748, align 1
  %switch.ext750 = zext i8 %switch.load749 to i32
  %i.au = zext nneg i32 %spec.store.select to i64
  %switch.gep751 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7lm_initEv.32, i64 %i.au
  %switch.load752 = load i16, ptr %switch.gep751, align 2
  %switch.ext753 = zext i16 %switch.load752 to i32
  %i.av = zext nneg i32 %spec.store.select to i64
  %switch.gep754 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7lm_initEv.33, i64 %i.av
  %switch.load755 = load i16, ptr %switch.gep754, align 2
  %switch.ext756 = zext i16 %switch.load755 to i32
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit49

_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit49: ; preds = %bb.p, %switch.lookup
  %.sink747 = phi i32 [ %switch.ext, %switch.lookup ], [ 258, %bb.p ]
  %.sink746 = phi i32 [ %switch.ext750, %switch.lookup ], [ 32, %bb.p ]
  %.sink = phi i32 [ %switch.ext753, %switch.lookup ], [ 258, %bb.p ]
  %.sroa.0.0 = phi i32 [ %switch.ext756, %switch.lookup ], [ 4096, %bb.p ]
  store i32 %.sink747, ptr %i.ap, align 8, !tbaa !320
  store i32 %.sink746, ptr %i.aq, align 4, !tbaa !318
  store i32 %.sink, ptr %i.ar, align 8, !tbaa !319
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.sroa.0.0, ptr %i.aw, align 4, !tbaa !321
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit49, %.critedge3
  store i32 %3, ptr %i.l, align 8, !tbaa !316
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr nofree noundef readonly align 4 captures(none) dead_on_return %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !317, !range !194, !noundef !146
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast4zlib6detail14deflate_stream4initEv(ptr noundef nonnull align 8 dereferenceable(5928) %0)
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit

_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit: ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !326
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !327
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.187)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr @.str.182, ptr %5, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.188, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 364, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 69, ptr %i.j, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt16invalid_argumentEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #49
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.c, %_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !328
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !329  ; 3 uses
  %i.q = icmp eq i32 %i.p, 666
  br i1 %i.q, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.r = load i8, ptr %2, align 4, !tbaa !330, !range !194, !noundef !146
  %.not.i = icmp eq i8 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %6 = icmp ne i32 %i.t, 5
  %.not224 = select i1 %.not.i, i1 true, i1 %6
  br i1 %.not224, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %bb.g, %bb.i
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1110
  %i.v = and i64 %i.u, -2
  %switch.i.i.i.i = icmp eq i64 %i.v, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.critedge
  %i.w = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1110
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1110
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 4) #48, !noalias !1110, !inline_history !36
  br i1 %i.z, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.j

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %.critedge, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.aa = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.ab = or disjoint i64 %i.aa, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 4, ptr %3, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5210.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ab, ptr %.sroa.5.0..sroa_idx.i48, align 8, !tbaa !55
  br label %.critedge47

.critedge2:                                       ; preds = %bb.h, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !331 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.critedge2
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1111
  %i.ag = and i64 %i.af, -2
  %switch.i.i.i.i49 = icmp eq i64 %i.ag, -5572340897628102704
  br i1 %switch.i.i.i.i49, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52: ; preds = %bb.k
  %i.ah = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1111
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1111
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 1) #48, !noalias !1111, !inline_history !36
  br i1 %i.ak, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread, label %bb.l

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread: ; preds = %bb.k, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread
  %i.al = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52 ]
  %i.am = or disjoint i64 %i.al, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeEE7loc_bb__0 to i64)
  store i64 1, ptr %3, align 8
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5207.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.am, ptr %.sroa.5.0..sroa_idx.i57, align 8, !tbaa !55
  br label %.critedge47

bb.m:                                             ; preds = %.critedge2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !330, !range !194, !noundef !146
  %i.ap = trunc nuw i8 %i.ao to i1                ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !333 ; 2 uses
  %i.as = load i8, ptr %2, align 4, !tbaa !330, !range !194, !noundef !146
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !333
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !333
  br label %_ZN5boost8optionalINS_5beast4zlib5FlushEEaSERKS4_.exit

bb.p:                                             ; preds = %bb.n
  store i8 0, ptr %i.an, align 4, !tbaa !324
  br label %_ZN5boost8optionalINS_5beast4zlib5FlushEEaSERKS4_.exit

bb.q:                                             ; preds = %bb.m
  %i.ax = load i8, ptr %2, align 4, !tbaa !330, !range !194, !noundef !146
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.r, label %_ZN5boost8optionalINS_5beast4zlib5FlushEEaSERKS4_.exit

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !333
  store i32 %i.bb, ptr %i.ba, align 8, !tbaa !333
  store i8 1, ptr %i.an, align 4, !tbaa !330
  br label %_ZN5boost8optionalINS_5beast4zlib5FlushEEaSERKS4_.exit

_ZN5boost8optionalINS_5beast4zlib5FlushEEaSERKS4_.exit: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.sroa.31.0.insert.shift.i.i.i243 = phi i32 [ %i.ar, %bb.o ], [ %i.ar, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 17 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !325 ; 6 uses
  %.not40 = icmp eq i32 %i.bd, 0
  br i1 %.not40, label %bb.z, label %bb.s

bb.s:                                             ; preds = %_ZN5boost8optionalINS_5beast4zlib5FlushEEaSERKS4_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !334 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 16
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !335 ; 2 uses
  %i.bj = trunc i16 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !336
  %i.bm = add i32 %i.bd, 1
  store i32 %i.bm, ptr %i.bc, align 8, !tbaa !325
  %i.bn = zext i32 %i.bd to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !58
  %i.bp = lshr i16 %i.bi, 8
  %i.bq = trunc nuw i16 %i.bp to i8
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !336
  %i.bs = load i32, ptr %i.bc, align 8, !tbaa !325 ; 2 uses
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bc, align 8, !tbaa !325
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu
  store i8 %i.bq, ptr %i.bv, align 1, !tbaa !58
  store i16 0, ptr %i.bh, align 4, !tbaa !335
  br label %.sink.split.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bw = icmp sgt i32 %i.bf, 7
  br i1 %i.bw, label %bb.v, label %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 3 uses
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !335
  %i.bz = trunc i16 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !336
  %i.cc = add i32 %i.bd, 1
  store i32 %i.cc, ptr %i.bc, align 8, !tbaa !325
  %i.cd = zext i32 %i.bd to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !58
  %i.cf = load i16, ptr %i.bx, align 4, !tbaa !335
  %i.cg = lshr i16 %i.cf, 8
  store i16 %i.cg, ptr %i.bx, align 4, !tbaa !335
  %i.ch = load i32, ptr %i.be, align 8, !tbaa !334
  %i.ci = add nsw i32 %i.ch, -8
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.v, %bb.t
  %.sink.i.i.i = phi i32 [ %i.ci, %bb.v ], [ 0, %bb.t ]
  store i32 %.sink.i.i.i, ptr %i.be, align 8, !tbaa !334
  %.pre = load i32, ptr %i.bc, align 8, !tbaa !325
  %.pre233 = load i64, ptr %i.ac, align 8, !tbaa !331
  br label %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i

_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i: ; preds = %.sink.split.i.i.i, %bb.u
  %i.cj = phi i64 [ %.pre233, %.sink.split.i.i.i ], [ %i.ad, %bb.u ] ; 2 uses
  %i.ck = phi i32 [ %.pre, %.sink.split.i.i.i ], [ %i.bd, %bb.u ]
  %i.cl = zext i32 %i.ck to i64
  %spec.select5.i.i = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cl) ; 7 uses
  %i.cm = icmp eq i64 %spec.select5.i.i, 0
  br i1 %i.cm, label %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i
  %spec.select.i.i = trunc nuw i64 %spec.select5.i.i to i32 ; 2 uses
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !328
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !337
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.cp, i64 %spec.select5.i.i, i1 false)
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !328
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %spec.select5.i.i
  store ptr %i.cr, ptr %i.l, align 8, !tbaa !328
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !337
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %spec.select5.i.i
  store ptr %i.ct, ptr %i.co, align 8, !tbaa !337
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !338
  %i.cw = add i64 %i.cv, %spec.select5.i.i
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !338
  %i.cx = load i64, ptr %i.ac, align 8, !tbaa !331
  %i.cy = sub i64 %i.cx, %spec.select5.i.i        ; 3 uses
  store i64 %i.cy, ptr %i.ac, align 8, !tbaa !331
  %i.cz = load i32, ptr %i.bc, align 8, !tbaa !325 ; 2 uses
  %i.da = sub i32 %i.cz, %spec.select.i.i
  store i32 %i.da, ptr %i.bc, align 8, !tbaa !325
  %i.db = icmp eq i32 %i.cz, %spec.select.i.i
  br i1 %i.db, label %bb.x, label %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !336
  store ptr %i.dd, ptr %i.co, align 8, !tbaa !337
  br label %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit

_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i, %bb.w, %bb.x
  %i.de = phi i64 [ %i.cj, %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i ], [ %i.cy, %bb.w ], [ %i.cy, %bb.x ]
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.y, label %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit..critedge4_crit_edge

_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit..critedge4_crit_edge: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit
  %.pre234 = load i32, ptr %i.o, align 8, !tbaa !329
  br label %.critedge4

bb.y:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit
  store i8 0, ptr %i.an, align 4, !tbaa !324
  br label %.critedge47

bb.z:                                             ; preds = %_ZN5boost8optionalINS_5beast4zlib5FlushEEaSERKS4_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !327
  %i.di = icmp eq i64 %i.dh, 0
  %or.cond219 = and i1 %i.di, %i.ap
  br i1 %or.cond219, label %bb.aa, label %.critedge4

bb.aa:                                            ; preds = %bb.z
  %i.dj = load i8, ptr %2, align 4, !tbaa !330, !range !194, !noundef !146
  %.not.i58 = icmp eq i8 %i.dj, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %7 = icmp sge i32 %.sroa.31.0.insert.shift.i.i.i243, %i.dl
  %8 = icmp ne i32 %i.dl, 5
  %9 = and i1 %7, %8
  %or.cond221.not = select i1 %.not.i58, i1 true, i1 %9
  br i1 %or.cond221.not, label %bb.ab, label %.critedge4

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1112
  %i.dn = and i64 %i.dm, -2
  %switch.i.i.i.i60 = icmp eq i64 %i.dn, -5572340897628102704
  br i1 %switch.i.i.i.i60, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63: ; preds = %bb.ab
  %i.do = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1112
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !1112
  %i.dr = tail call noundef zeroext i1 %i.dq(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 1) #48, !noalias !1112, !inline_history !36
  br i1 %i.dr, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63.thread, label %bb.ac

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63.thread: ; preds = %bb.ab, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63.thread
  %i.ds = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit63 ]
  %i.dt = or disjoint i64 %i.ds, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeEE7loc_bb__1 to i64)
  store i64 1, ptr %3, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5200.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.dt, ptr %.sroa.5.0..sroa_idx.i68, align 8, !tbaa !55
  br label %.critedge47

.critedge4:                                       ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit..critedge4_crit_edge, %bb.aa, %bb.z
  %i.du = phi i32 [ %.pre234, %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit..critedge4_crit_edge ], [ %i.p, %bb.aa ], [ %i.p, %bb.z ]
  %i.dv = icmp eq i32 %i.du, 666                  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !327
  %.not41 = icmp eq i64 %i.dx, 0                  ; 2 uses
  br i1 %i.dv, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.critedge4
  br i1 %.not41, label %.thread245, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1113
  %i.dz = and i64 %i.dy, -2
  %switch.i.i.i.i69 = icmp eq i64 %i.dz, -5572340897628102704
  br i1 %switch.i.i.i.i69, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72: ; preds = %bb.ae
  %i.ea = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1113
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !1113
  %i.ed = tail call noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 1) #48, !noalias !1113, !inline_history !36
  br i1 %i.ed, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread, label %bb.af

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread: ; preds = %bb.ae, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread
  %i.ee = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72 ]
  %i.ef = or disjoint i64 %i.ee, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeEE7loc_bb__2 to i64)
  store i64 1, ptr %3, align 8
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5197.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ef, ptr %.sroa.5.0..sroa_idx.i77, align 8, !tbaa !55
  br label %.critedge47

bb.ag:                                            ; preds = %.critedge4
  br i1 %.not41, label %.thread245, label %.critedge6

.thread245:                                       ; preds = %bb.ad, %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !339
  %.not43 = icmp eq i32 %i.eh, 0
  br i1 %.not43, label %bb.ah, label %.critedge6

bb.ah:                                            ; preds = %.thread245
  %i.ei = load i8, ptr %2, align 4, !tbaa !330, !range !194, !noundef !146 ; 2 uses
  %.not.i80 = icmp ne i8 %i.ei, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = icmp eq i32 %i.ek, 0
  %.not230 = select i1 %.not.i80, i1 %i.el, i1 false
  %brmerge = or i1 %i.dv, %.not230
  br i1 %brmerge, label %.critedge8, label %.critedge6

.critedge6:                                       ; preds = %bb.ah, %.thread245, %bb.ag
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.en = load i32, ptr %i.em, align 8, !tbaa !316
  switch i32 %i.en, label %bb.ak [
    i32 2, label %bb.ai
    i32 3, label %bb.aj
  ]

bb.ai:                                            ; preds = %.critedge6
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !333
  %i.eq = tail call noundef i32 @_ZN5boost5beast4zlib6detail14deflate_stream6f_huffERNS1_8z_paramsENS1_5FlushE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.ep)
  br label %bb.am

bb.aj:                                            ; preds = %.critedge6
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !333
  %i.et = tail call noundef i32 @_ZN5boost5beast4zlib6detail14deflate_stream5f_rleERNS1_8z_paramsENS1_5FlushE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.es)
  br label %bb.am

bb.ak:                                            ; preds = %.critedge6
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !315 ; 2 uses
  %i.ew = icmp ult i32 %i.ev, 4
  br i1 %i.ew, label %switch.lookup, label %bb.al

switch.lookup:                                    ; preds = %bb.ak
  %i.ex = zext nneg i32 %i.ev to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE, i64 %i.ex
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %switch.lookup
  %.sroa.39.0 = phi ptr [ %switch.load, %switch.lookup ], [ @_ZN5boost5beast4zlib6detail14deflate_stream12deflate_slowERNS1_8z_paramsENS1_5FlushE, %bb.ak ]
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !333
  %i.fa = tail call noundef i32 %.sroa.39.0(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.ez)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %.0 = phi i32 [ %i.fa, %bb.al ], [ %i.eq, %bb.ai ], [ %i.et, %bb.aj ] ; 3 uses
  %i.fb = and i32 %.0, -2
  %or.cond = icmp eq i32 %i.fb, 2
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 666, ptr %i.o, align 8, !tbaa !329
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fc = and i32 %.0, -3
  %or.cond11 = icmp eq i32 %i.fc, 0
  br i1 %or.cond11, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fd = load i64, ptr %i.ac, align 8, !tbaa !331
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.aq, label %.critedge47

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr %i.an, align 4, !tbaa !324
  br label %.critedge47

bb.ar:                                            ; preds = %bb.ao
  %i.ff = icmp eq i32 %.0, 1
  %.pre237 = load i8, ptr %2, align 4, !tbaa !330, !range !194 ; 3 uses
  br i1 %i.ff, label %bb.as, label %.critedge8

bb.as:                                            ; preds = %bb.ar
  %i.fg = trunc nuw i8 %.pre237 to i1
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4            ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 2
  %i.fk = select i1 %i.fg, i1 %i.fj, i1 false
  br i1 %i.fk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN5boost5beast4zlib6detail14deflate_stream8tr_alignEv(ptr noundef nonnull align 8 dereferenceable(5928) %0)
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.fl = icmp eq i8 %.pre237, 0
  %10 = icmp ne i32 %i.fi, 1
  %.not232 = select i1 %i.fl, i1 true, i1 %10
  br i1 %.not232, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  tail call void @_ZN5boost5beast4zlib6detail14deflate_stream15tr_stored_blockEPcji(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.fm = load i8, ptr %2, align 4, !tbaa !330, !range !194, !noundef !146
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = load i32, ptr %i.fh, align 4
  %i.fp = icmp eq i32 %i.fo, 4
  %i.fq = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %i.fq, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !340 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !341
  %i.fv = add i32 %i.fu, -1
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.fw
  store i16 0, ptr %i.fx, align 2, !tbaa !197
  %i.fy = shl nuw nsw i64 %i.fw, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fs, i8 0, i64 %i.fy, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !339
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.gc, align 4, !tbaa !342
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.gd, align 8, !tbaa !343
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 5912
  store i32 0, ptr %i.ge, align 8, !tbaa !344
  br label %bb.ay

bb.ay:                                            ; preds = %bb.au, %bb.aw, %bb.ax, %bb.av, %bb.at
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !334 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 16
  br i1 %i.gh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 4, !tbaa !335 ; 2 uses
  %i.gk = trunc i16 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !336
  %i.gn = load i32, ptr %i.bc, align 8, !tbaa !325 ; 2 uses
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.bc, align 8, !tbaa !325
  %i.gp = zext i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gp
  store i8 %i.gk, ptr %i.gq, align 1, !tbaa !58
  %i.gr = lshr i16 %i.gj, 8
  %i.gs = trunc nuw i16 %i.gr to i8
  %i.gt = load ptr, ptr %i.gl, align 8, !tbaa !336
  %i.gu = load i32, ptr %i.bc, align 8, !tbaa !325 ; 2 uses
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.bc, align 8, !tbaa !325
  %i.gw = zext i32 %i.gu to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  store i8 %i.gs, ptr %i.gx, align 1, !tbaa !58
  store i16 0, ptr %i.gi, align 4, !tbaa !335
  br label %.sink.split.i.i.i83

bb.ba:                                            ; preds = %bb.ay
  %i.gy = icmp sgt i32 %i.gg, 7
  br i1 %i.gy, label %bb.bb, label %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i80

bb.bb:                                            ; preds = %bb.ba
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 3 uses
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !335
  %i.hb = trunc i16 %i.ha to i8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !336
  %i.he = load i32, ptr %i.bc, align 8, !tbaa !325 ; 2 uses
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.bc, align 8, !tbaa !325
  %i.hg = zext i32 %i.he to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hg
  store i8 %i.hb, ptr %i.hh, align 1, !tbaa !58
  %i.hi = load i16, ptr %i.gz, align 4, !tbaa !335
  %i.hj = lshr i16 %i.hi, 8
  store i16 %i.hj, ptr %i.gz, align 4, !tbaa !335
  %i.hk = load i32, ptr %i.gf, align 8, !tbaa !334
  %i.hl = add nsw i32 %i.hk, -8
  br label %.sink.split.i.i.i83

.sink.split.i.i.i83:                              ; preds = %bb.bb, %bb.az
  %.sink.i.i.i84 = phi i32 [ %i.hl, %bb.bb ], [ 0, %bb.az ]
  store i32 %.sink.i.i.i84, ptr %i.gf, align 8, !tbaa !334
  br label %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i80

_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i80: ; preds = %.sink.split.i.i.i83, %bb.ba
  %i.hm = load i32, ptr %i.bc, align 8, !tbaa !325
  %i.hn = load i64, ptr %i.ac, align 8, !tbaa !331 ; 2 uses
  %i.ho = zext i32 %i.hm to i64
  %spec.select5.i.i81 = tail call i64 @llvm.umin.i64(i64 %i.hn, i64 %i.ho) ; 7 uses
  %i.hp = icmp eq i64 %spec.select5.i.i81, 0
  br i1 %i.hp, label %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85, label %bb.bc

bb.bc:                                            ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i80
  %spec.select.i.i82 = trunc nuw i64 %spec.select5.i.i81 to i32 ; 2 uses
  %i.hq = load ptr, ptr %i.l, align 8, !tbaa !328
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !337
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr align 1 %i.hs, i64 %spec.select5.i.i81, i1 false)
  %i.ht = load ptr, ptr %i.l, align 8, !tbaa !328
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %spec.select5.i.i81
  store ptr %i.hu, ptr %i.l, align 8, !tbaa !328
  %i.hv = load ptr, ptr %i.hr, align 8, !tbaa !337
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %spec.select5.i.i81
  store ptr %i.hw, ptr %i.hr, align 8, !tbaa !337
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !338
  %i.hz = add i64 %i.hy, %spec.select5.i.i81
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !338
  %i.ia = load i64, ptr %i.ac, align 8, !tbaa !331
  %i.ib = sub i64 %i.ia, %spec.select5.i.i81      ; 3 uses
  store i64 %i.ib, ptr %i.ac, align 8, !tbaa !331
  %i.ic = load i32, ptr %i.bc, align 8, !tbaa !325 ; 2 uses
  %i.id = sub i32 %i.ic, %spec.select.i.i82
  store i32 %i.id, ptr %i.bc, align 8, !tbaa !325
  %i.ie = icmp eq i32 %i.ic, %spec.select.i.i82
  br i1 %i.ie, label %bb.bd, label %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85

bb.bd:                                            ; preds = %bb.bc
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !336
  store ptr %i.ig, ptr %i.hr, align 8, !tbaa !337
  br label %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85

_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i80, %bb.bc, %bb.bd
  %i.ih = phi i64 [ %i.hn, %_ZN5boost5beast4zlib6detail14deflate_stream13tr_flush_bitsEv.exit.i80 ], [ %i.ib, %bb.bc ], [ %i.ib, %bb.bd ]
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.be, label %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85..critedge8_crit_edge

_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85..critedge8_crit_edge: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85
  %.pre236 = load i8, ptr %2, align 4, !tbaa !330, !range !194
  br label %.critedge8

bb.be:                                            ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85
  store i8 0, ptr %i.an, align 4, !tbaa !324
  br label %.critedge47

.critedge8:                                       ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85..critedge8_crit_edge, %bb.ah, %bb.ar
  %i.ij = phi i8 [ %.pre236, %_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE.exit85..critedge8_crit_edge ], [ %i.ei, %bb.ah ], [ %.pre237, %bb.ar ]
  %i.ik = trunc nuw i8 %i.ij to i1
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.im = load i32, ptr %i.il, align 4
  %i.in = icmp eq i32 %i.im, 5
  %i.io = select i1 %i.ik, i1 %i.in, i1 false
  br i1 %i.io, label %bb.bf, label %.critedge47

bb.bf:                                            ; preds = %.critedge8
  %i.ip = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1114
  %i.iq = and i64 %i.ip, -2
  %switch.i.i.i.i86 = icmp eq i64 %i.iq, -5572340897628102704
  br i1 %switch.i.i.i.i86, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89: ; preds = %bb.bf
  %i.ir = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1114
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !noalias !1114
  %i.iu = tail call noundef zeroext i1 %i.it(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 2) #48, !noalias !1114, !inline_history !36
  br i1 %i.iu, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89.thread, label %bb.bg

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89.thread: ; preds = %bb.bf, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89.thread
  %i.iv = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit89 ]
  %i.iw = or disjoint i64 %i.iv, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeEE7loc_bb__3 to i64)
  store i64 2, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.iw, ptr %.sroa.5.0..sroa_idx.i94, align 8, !tbaa !55
  br label %.critedge47

.critedge47:                                      ; preds = %bb.y, %bb.ac, %bb.af, %bb.bg, %.critedge8, %bb.aq, %bb.be, %bb.ap, %bb.l, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream13flush_pendingERNS1_8z_paramsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %i.c = icmp eq i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 2 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !335  ; 2 uses
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
end_hunk_1
