Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfCompositeDeepScanLine?download=true
inline.NumInlined: 1162
inline.NumDeleted: 652
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7Imf_3_421CompositeDeepScanLine10readPixelsEii:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ge, i8 0, i64 %.idx.i.i.i.i.i.i.i197, i1 false), !tbaa !64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx.i.i.i.i.i.i.i197
  br label %.lr.ph314

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %._crit_edge315

.lr.ph314:                                        ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i196, %.noexc201
  %.0.i.i.i.i.i198.ph = phi ptr [ %i.gf, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i196 ], [ %i.ge, %.noexc201 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i198.ph, ptr %i.gg, align 8, !tbaa !112
  %i.gh = load ptr, ptr %6, align 8, !tbaa !113
  br label %bb.z

._crit_edge315:                                   ; preds = %._crit_edge310, %bb.w
  %.0120.lcssa = phi i64 [ 0, %bb.w ], [ %i.gr, %._crit_edge310 ] ; 19 uses
  %i.gi = load i64, ptr @_ZN7Imf_3_412_GLOBAL__N_118maximumSampleCountE, align 8, !tbaa !96 ; 2 uses
  %i.gj = icmp sgt i64 %i.gi, 0
  %i.gk = icmp sgt i64 %.0120.lcssa, %i.gi
  %or.cond = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %or.cond, label %bb.ah, label %bb.al

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit253

bb.y:                                             ; preds = %bb.v
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

bb.z:                                             ; preds = %.lr.ph314, %._crit_edge310
  %.0119312 = phi i64 [ 0, %.lr.ph314 ], [ %i.gs, %._crit_edge310 ] ; 4 uses
  %.0120311 = phi i64 [ 0, %.lr.ph314 ], [ %i.gr, %._crit_edge310 ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.0119312 ; 4 uses
  store i32 0, ptr %i.gn, align 4, !tbaa !64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.0119312 ; 3 uses
  store i32 0, ptr %i.go, align 4, !tbaa !64
  br i1 %.not.i.i.i.i, label %._crit_edge310, label %.lr.ph309

._crit_edge310:                                   ; preds = %bb.ag, %bb.z
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !64
  %i.gq = zext i32 %i.gp to i64
  %i.gr = add nuw nsw i64 %.0120311, %i.gq        ; 2 uses
  %i.gs = add nuw i64 %.0119312, 1                ; 2 uses
  %exitcond371.not = icmp eq i64 %i.gs, %i.ev
  br i1 %exitcond371.not, label %._crit_edge315, label %bb.z, !llvm.loop !187

.lr.ph309:                                        ; preds = %bb.z, %bb.ag
  %.0118307 = phi i64 [ %i.hh, %bb.ag ], [ 0, %bb.z ] ; 2 uses
  %i.gt = load i32, ptr %i.gn, align 4, !tbaa !64 ; 2 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0118307
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !113
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.0119312 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !64 ; 2 uses
  %i.gy = xor i32 %i.gx, -1
  %i.gz = icmp ugt i32 %i.gt, %i.gy
  br i1 %i.gz, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.lr.ph309
  %i.ha = tail call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ha, ptr noundef nonnull @.str.8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.ha, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #29
          to label %bb.cu unwind label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.hb = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ha) #26
  br label %bb.cn

bb.ad:                                            ; preds = %bb.ab
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ae:                                            ; preds = %.lr.ph309
  %i.hd = add i32 %i.gx, %i.gt
  store i32 %i.hd, ptr %i.gn, align 4, !tbaa !64
  %i.he = load i32, ptr %i.gw, align 4, !tbaa !64
  %.not159 = icmp eq i32 %i.he, 0
  br i1 %.not159, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hf = load i32, ptr %i.go, align 4, !tbaa !64
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.go, align 4, !tbaa !64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.hh = add nuw i64 %.0118307, 1                ; 2 uses
  %exitcond370.not = icmp eq i64 %i.hh, %.fr357
  br i1 %exitcond370.not, label %._crit_edge310, label %.lr.ph309, !llvm.loop !188

bb.ah:                                            ; preds = %._crit_edge315
  %i.hi = tail call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.hi, ptr noundef nonnull @.str.9)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #29
          to label %bb.cu unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.hj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hi) #26
  br label %bb.cn

bb.ak:                                            ; preds = %bb.ai
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.al:                                            ; preds = %._crit_edge315
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 176
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 184
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !73 ; 2 uses
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !72 ; 2 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 5                 ; 3 uses
  %i.hu = icmp ugt i64 %i.ht, 384307168202282325
  br i1 %i.hu, label %bb.am, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc208 unwind label %bb.av

.noexc208:                                        ; preds = %bb.am
  unreachable

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.al
  %.not.i.i.i.i203 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not.i.i.i.i203, label %.preheader283.thread, label %.lr.ph.preheader.i.i.i.i.i204

.preheader283.thread:                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.preheader281

.lr.ph.preheader.i.i.i.i.i204:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.hw = mul nuw nsw i64 %i.ht, 24               ; 3 uses
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #25
          to label %bb.an unwind label %bb.av     ; 13 uses

bb.an:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i204
  store ptr %i.hx, ptr %8, align 8, !tbaa !81
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %i.ht
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hx, i8 0, i64 %i.hw, i1 false)
  %scevgep.i.i.i.i.i205 = getelementptr i8, ptr %i.hx, i64 %i.hw
  %.pre386 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre386, i64 184
  %.pre387 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !73 ; 4 uses
  %.phi.trans.insert388 = getelementptr inbounds nuw i8, ptr %.pre386, i64 176
  %.pre389 = load ptr, ptr %.phi.trans.insert388, align 8, !tbaa !72 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.hy, ptr %i.ia, align 8, !tbaa !87
  store ptr %scevgep.i.i.i.i.i205, ptr %i.hz, align 8, !tbaa !82
  %.not354 = icmp eq ptr %.pre387, %.pre389
  br i1 %.not354, label %.lr.ph331.preheader, label %.split.peel

.lr.ph331.preheader:                              ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380, %bb.an
  br label %.lr.ph331

.split.peel:                                      ; preds = %bb.an
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !138 ; 2 uses
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !85 ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 2                 ; 3 uses
  %i.ii = icmp ugt i64 %.0120.lcssa, %i.ih
  br i1 %i.ii, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.split.peel
  %i.ij = icmp ult i64 %.0120.lcssa, %i.ih
  br i1 %i.ij, label %bb.ap, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel

bb.ap:                                            ; preds = %bb.ao
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %.0120.lcssa ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.ic, %i.ik
  br i1 %.not.i.i.peel, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel:   ; preds = %bb.ap
  store ptr %i.ik, ptr %i.ib, align 8, !tbaa !138
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel

bb.aq:                                            ; preds = %.split.peel
  %i.il = sub nuw i64 %.0120.lcssa, %i.ih
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i64 noundef %i.il)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390 unwind label %.loopexit.split-lp

._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390: ; preds = %bb.aq
  %.pre391 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %.phi.trans.insert392 = getelementptr inbounds nuw i8, ptr %.pre391, i64 184
  %.pre393 = load ptr, ptr %.phi.trans.insert392, align 8, !tbaa !73
  %.phi.trans.insert394 = getelementptr inbounds nuw i8, ptr %.pre391, i64 176
  %.pre395 = load ptr, ptr %.phi.trans.insert394, align 8, !tbaa !72
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel

_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel:          ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel, %bb.ap, %bb.ao
  %i.im = phi ptr [ %.pre395, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390 ], [ %.pre389, %bb.ao ], [ %.pre389, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel ], [ %.pre389, %bb.ap ]
  %i.in = phi ptr [ %.pre393, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390 ], [ %.pre387, %bb.ao ], [ %.pre387, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel ], [ %.pre387, %bb.ap ]
  %i.io = phi ptr [ %.pre391, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390 ], [ %.pre386, %bb.ao ], [ %.pre386, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel ], [ %.pre386, %bb.ap ] ; 5 uses
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = ashr exact i64 %i.ir, 5                 ; 5 uses
  %i.it = icmp ugt i64 %i.is, 1
  br i1 %i.it, label %.lr.ph320.peel.next, label %.lr.ph331.preheader

.lr.ph320.peel.next:                              ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 96
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !63, !range !116, !noundef !117
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.ar, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380

bb.ar:                                            ; preds = %.lr.ph320.peel.next
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hx, i64 24 ; 2 uses
  %.pre396 = load ptr, ptr %i.ix, align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert407 = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %.pre408 = load ptr, ptr %.phi.trans.insert407, align 8, !tbaa !138 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.iz = ptrtoint ptr %.pre408 to i64
  %i.ja = ptrtoint ptr %.pre396 to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = ashr exact i64 %i.jb, 2                 ; 3 uses
  %i.jd = icmp ugt i64 %.0120.lcssa, %i.jc
  br i1 %i.jd, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.je = icmp ult i64 %.0120.lcssa, %i.jc
  br i1 %i.je, label %bb.at, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380

bb.at:                                            ; preds = %bb.as
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.pre396, i64 %.0120.lcssa ; 2 uses
  %.not.i.i.peel378 = icmp eq ptr %.pre408, %i.jf
  br i1 %.not.i.i.peel378, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379: ; preds = %bb.at
  store ptr %i.jf, ptr %i.iy, align 8, !tbaa !138
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380

bb.au:                                            ; preds = %bb.ar
  %i.jg = sub nuw i64 %.0120.lcssa, %i.jc
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 noundef %i.jg)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge unwind label %.loopexit.split-lp

._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge: ; preds = %bb.au
  %.pre397 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %.phi.trans.insert398 = getelementptr inbounds nuw i8, ptr %.pre397, i64 184
  %.pre399 = load ptr, ptr %.phi.trans.insert398, align 8, !tbaa !73
  %.phi.trans.insert400 = getelementptr inbounds nuw i8, ptr %.pre397, i64 176
  %.pre401 = load ptr, ptr %.phi.trans.insert400, align 8, !tbaa !72
  %.pre412 = ptrtoint ptr %.pre399 to i64
  %.pre413 = ptrtoint ptr %.pre401 to i64
  %.pre415 = sub i64 %.pre412, %.pre413
  %.pre417 = ashr exact i64 %.pre415, 5
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380

_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380:       ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379, %bb.at, %bb.as, %.lr.ph320.peel.next
  %.pre-phi418 = phi i64 [ %.pre417, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge ], [ %i.is, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379 ], [ %i.is, %bb.at ], [ %i.is, %bb.as ], [ %i.is, %.lr.ph320.peel.next ]
  %i.jh = phi ptr [ %.pre397, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge ], [ %i.io, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379 ], [ %i.io, %bb.at ], [ %i.io, %bb.as ], [ %i.io, %.lr.ph320.peel.next ]
  %i.ji = icmp ugt i64 %.pre-phi418, 2
  br i1 %i.ji, label %.lr.ph320.peel.next372, label %.lr.ph331.preheader

bb.av:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i204, %bb.am
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.lr.ph320.peel.next372:                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.jk = phi ptr [ %i.jx, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %i.jh, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380 ] ; 3 uses
  %.0117317 = phi i64 [ %i.jy, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ 2, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380 ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %.0117317 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !138 ; 2 uses
  %i.jo = load ptr, ptr %i.jl, align 8, !tbaa !85 ; 2 uses
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = ashr exact i64 %i.jr, 2                 ; 3 uses
  %i.jt = icmp ugt i64 %.0120.lcssa, %i.js
  br i1 %i.jt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph320.peel.next372
  %i.ju = sub nuw i64 %.0120.lcssa, %i.js
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i64 noundef %i.ju)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge402 unwind label %.loopexit382

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge402: ; preds = %bb.aw
  %.pre403 = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ax:                                            ; preds = %.lr.ph320.peel.next372
  %i.jv = icmp ult i64 %.0120.lcssa, %i.js
  br i1 %i.jv, label %bb.ay, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ay:                                            ; preds = %bb.ax
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.0120.lcssa ; 2 uses
  %.not.i.i = icmp eq ptr %i.jn, %i.jw
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ay
  store ptr %i.jw, ptr %i.jm, align 8, !tbaa !138
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

.loopexit382:                                     ; preds = %bb.aw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp:                               ; preds = %bb.aq, %bb.au
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge402, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.ay, %bb.ax
  %i.jx = phi ptr [ %.pre403, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge402 ], [ %i.jk, %bb.ax ], [ %i.jk, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.jk, %bb.ay ] ; 3 uses
  %i.jy = add nuw i64 %.0117317, 1                ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 176
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 184
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !73
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !72
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = ashr exact i64 %i.kf, 5
  %i.kh = icmp ult i64 %i.jy, %i.kg
  br i1 %i.kh, label %.lr.ph320.peel.next372, label %.lr.ph331.preheader, !llvm.loop !189

.preheader281.loopexit:                           ; preds = %.loopexit
  %.pre405 = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %.preheader281

.preheader281:                                    ; preds = %.preheader283.thread, %.preheader281.loopexit
  %i.ki = phi ptr [ %i.ia, %.preheader281.loopexit ], [ %i.hv, %.preheader283.thread ]
  %i.kj = phi ptr [ %i.mf, %.preheader281.loopexit ], [ null, %.preheader283.thread ] ; 2 uses
  %.pr.i = phi ptr [ %i.md, %.preheader281.loopexit ], [ null, %.preheader283.thread ] ; 5 uses
  %i.kk = phi ptr [ %.pre405, %.preheader281.loopexit ], [ %i.hl, %.preheader283.thread ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !98
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !90 ; 2 uses
  %.not359 = icmp eq ptr %i.km, %i.kn
  br i1 %.not359, label %.preheader280, label %.lr.ph333

.lr.ph331:                                        ; preds = %.lr.ph331.preheader, %.loopexit
  %.pre404409 = phi ptr [ %.pre404410, %.loopexit ], [ %i.hx, %.lr.ph331.preheader ] ; 4 uses
  %i.ko = phi ptr [ %i.md, %.loopexit ], [ %i.hx, %.lr.ph331.preheader ] ; 3 uses
  %.0116328 = phi i64 [ %i.me, %.loopexit ], [ 0, %.lr.ph331.preheader ] ; 5 uses
  %.not154 = icmp eq i64 %.0116328, 1
  br i1 %.not154, label %bb.az, label %.split145

.split145:                                        ; preds = %.lr.ph331
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.0116328
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph331
  %i.kq = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 96
  %i.ks = load i8, ptr %i.kr, align 8, !tbaa !63, !range !116, !noundef !117
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %.split146, label %.loopexit

.split146:                                        ; preds = %bb.az
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  br label %bb.ba

bb.ba:                                            ; preds = %.split146, %.split145
  %phi.call147 = phi ptr [ %i.kp, %.split145 ], [ %i.ku, %.split146 ] ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %phi.call147, i64 8 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !138 ; 2 uses
  %i.kx = load ptr, ptr %phi.call147, align 8, !tbaa !85 ; 2 uses
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = ashr exact i64 %i.la, 2                 ; 3 uses
  %i.lc = icmp ugt i64 %.0120.lcssa, %i.lb
  br i1 %i.lc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ld = sub nuw i64 %.0120.lcssa, %i.lb
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %phi.call147, i64 noundef %i.ld)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit214_crit_edge unwind label %bb.be

._ZNSt6vectorIfSaIfEE6resizeEm.exit214_crit_edge: ; preds = %bb.bb
  %.pre404.pre = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit214

bb.bc:                                            ; preds = %bb.ba
  %i.le = icmp ult i64 %.0120.lcssa, %i.lb
  br i1 %i.le, label %bb.bd, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit214

bb.bd:                                            ; preds = %bb.bc
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %.0120.lcssa ; 2 uses
  %.not.i.i211 = icmp eq ptr %i.kw, %i.lf
  br i1 %.not.i.i211, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit214, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i212

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i212:     ; preds = %bb.bd
  store ptr %i.lf, ptr %i.kv, align 8, !tbaa !138
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit214

_ZNSt6vectorIfSaIfEE6resizeEm.exit214:            ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit214_crit_edge, %bb.bc, %bb.bd, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i212
  %.pre404 = phi ptr [ %.pre404.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit214_crit_edge ], [ %.pre404409, %bb.bc ], [ %.pre404409, %bb.bd ], [ %.pre404409, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i212 ] ; 7 uses
  br i1 %.not.i.i.i.i189, label %.loopexit, label %.preheader282.lr.ph

.preheader282.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit214
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %.pre404, i64 %.0116328
  %i.lh = load ptr, ptr %5, align 8
  %i.li = load ptr, ptr %4, align 8
  br i1 %.not.i.i.i.i, label %.loopexit, label %.preheader282

.preheader282:                                    ; preds = %.preheader282.lr.ph, %._crit_edge324
  %.0114327 = phi i64 [ %i.ll, %._crit_edge324 ], [ 0, %.preheader282.lr.ph ] ; 3 uses
  %.0115326 = phi i64 [ %.1.lcssa, %._crit_edge324 ], [ 0, %.preheader282.lr.ph ] ; 3 uses
  %i.lj = icmp slt i64 %.0115326, %.0120.lcssa
  br i1 %i.lj, label %.lr.ph323, label %._crit_edge324

bb.be:                                            ; preds = %bb.bb
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

._crit_edge324:                                   ; preds = %.lr.ph323, %.preheader282
  %.1.lcssa = phi i64 [ %.0115326, %.preheader282 ], [ %i.ly, %.lr.ph323 ]
  %i.ll = add nuw nsw i64 %.0114327, 1            ; 2 uses
  %exitcond383.not = icmp eq i64 %i.ll, %i.ev
  br i1 %exitcond383.not, label %.loopexit, label %.preheader282, !llvm.loop !190

.lr.ph323:                                        ; preds = %.preheader282, %.lr.ph323
  %.0113322 = phi i64 [ %i.lz, %.lr.ph323 ], [ 0, %.preheader282 ] ; 3 uses
  %.1321 = phi i64 [ %i.ly, %.lr.ph323 ], [ %.0115326, %.preheader282 ] ; 2 uses
  %i.lm = load ptr, ptr %i.lg, align 8, !tbaa !85
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %.1321
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.lh, i64 %.0113322
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !106
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %.0116328
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !109
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %.0114327
  store ptr %i.ln, ptr %i.ls, align 8, !tbaa !139
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.li, i64 %.0113322
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !113
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.0114327
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !64
  %i.lx = zext i32 %i.lw to i64
  %i.ly = add nsw i64 %.1321, %i.lx               ; 3 uses
  %i.lz = add nuw nsw i64 %.0113322, 1            ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %.fr357
  %i.mb = icmp slt i64 %i.ly, %.0120.lcssa
  %i.mc = select i1 %i.ma, i1 %i.mb, i1 false
  br i1 %i.mc, label %.lr.ph323, label %._crit_edge324, !llvm.loop !191

.loopexit:                                        ; preds = %._crit_edge324, %.preheader282.lr.ph, %_ZNSt6vectorIfSaIfEE6resizeEm.exit214, %bb.az
  %.pre404410 = phi ptr [ %.pre404, %.preheader282.lr.ph ], [ %.pre404409, %bb.az ], [ %.pre404, %_ZNSt6vectorIfSaIfEE6resizeEm.exit214 ], [ %.pre404, %._crit_edge324 ]
  %i.md = phi ptr [ %.pre404, %.preheader282.lr.ph ], [ %i.ko, %bb.az ], [ %.pre404, %_ZNSt6vectorIfSaIfEE6resizeEm.exit214 ], [ %.pre404, %._crit_edge324 ] ; 3 uses
  %i.me = add nuw i64 %.0116328, 1                ; 2 uses
  %i.mf = load ptr, ptr %i.hz, align 8, !tbaa !82 ; 2 uses
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.md to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = sdiv exact i64 %i.mi, 24
  %i.mk = icmp ult i64 %i.me, %i.mj
  br i1 %i.mk, label %.lr.ph331, label %.preheader281.loopexit, !llvm.loop !192

.preheader280:                                    ; preds = %bb.bf, %.preheader281
  %i.ml = phi ptr [ %i.kk, %.preheader281 ], [ %i.mu, %bb.bf ] ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !92
  %i.mp = load ptr, ptr %i.mm, align 8, !tbaa !88 ; 2 uses
  %.not360 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not360, label %._crit_edge336, label %.lr.ph335

.lr.ph333:                                        ; preds = %.preheader281, %bb.bf
  %i.mq = phi ptr [ %i.mx, %bb.bf ], [ %i.kn, %.preheader281 ]
  %.0112332 = phi i64 [ %i.mt, %bb.bf ], [ 0, %.preheader281 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %.0112332
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !100
  invoke void @_ZN7Imf_3_421DeepScanLineInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(32) %i.ms, i32 noundef %1, i32 noundef %2)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %.lr.ph333
  %i.mt = add nuw i64 %.0112332, 1                ; 2 uses
  %i.mu = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !98
  %i.mx = load ptr, ptr %i.mu, align 8, !tbaa !90 ; 2 uses
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = ashr exact i64 %i.na, 3
  %i.nc = icmp ult i64 %i.mt, %i.nb
  br i1 %i.nc, label %.lr.ph333, label %.preheader280, !llvm.loop !193

bb.bg:                                            ; preds = %.lr.ph333
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

._crit_edge336:                                   ; preds = %bb.bj, %.preheader280
  %.lcssa289 = phi ptr [ %i.ml, %.preheader280 ], [ %i.ny, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ne = getelementptr inbounds nuw i8, ptr %.lcssa289, i64 176
  %i.nf = getelementptr inbounds nuw i8, ptr %.lcssa289, i64 184
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !73 ; 2 uses
  %i.nh = load ptr, ptr %i.ne, align 8, !tbaa !72 ; 2 uses
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = sub i64 %i.ni, %i.nj                    ; 2 uses
  %i.nl = ashr exact i64 %i.nk, 5                 ; 3 uses
  %i.nm = icmp ugt i64 %i.nl, 1152921504606846975
  br i1 %i.nm, label %bb.bh, label %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.bh:                                            ; preds = %._crit_edge336
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc218 unwind label %bb.bm

.noexc218:                                        ; preds = %bb.bh
  unreachable

_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i215 = icmp eq ptr %i.ng, %i.nh
  br i1 %.not.i.i.i.i215, label %.thread503, label %bb.bi

.thread503:                                       ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.pre406506 = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %._crit_edge341

bb.bi:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.nn = ashr exact i64 %i.nk, 2
  %i.no = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nn) #25
          to label %.noexc219 unwind label %bb.bm ; 14 uses

.noexc219:                                        ; preds = %bb.bi
  store ptr %i.no, ptr %9, align 8, !tbaa !142
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nl
  %i.nq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.np, ptr %i.nq, align 8, !tbaa !206
  store ptr null, ptr %i.no, align 8, !tbaa !207
  %i.nr = getelementptr i8, ptr %i.no, i64 8      ; 3 uses
  %i.ns = add nsw i64 %i.nl, -1                   ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %.lr.ph340, label %bb.bl

.lr.ph335:                                        ; preds = %.preheader280, %bb.bj
  %i.nu = phi ptr [ %i.oc, %bb.bj ], [ %i.mp, %.preheader280 ]
  %.0111334 = phi i64 [ %i.nx, %bb.bj ], [ 0, %.preheader280 ] ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.0111334
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !94
  invoke void @_ZN7Imf_3_421DeepScanLineInputPart10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, i32 noundef %1, i32 noundef %2)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.lr.ph335
  %i.nx = add nuw i64 %.0111334, 1                ; 2 uses
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !92
  %i.oc = load ptr, ptr %i.nz, align 8, !tbaa !88 ; 2 uses
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = ashr exact i64 %i.of, 3
  %i.oh = icmp ult i64 %i.nx, %i.og
  br i1 %i.oh, label %.lr.ph335, label %._crit_edge336, !llvm.loop !194

bb.bk:                                            ; preds = %.lr.ph335
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bl:                                            ; preds = %.noexc219
  %.idx.i.i.i.i.i.i.i216 = shl nuw nsw i64 %i.ns, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.nr, i8 0, i64 %.idx.i.i.i.i.i.i.i216, i1 false), !tbaa !207
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.idx.i.i.i.i.i.i.i216
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %.noexc219, %bb.bl
  %.sink = phi ptr [ %i.oj, %bb.bl ], [ %i.nr, %.noexc219 ] ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sink, ptr %i.ok, align 8, !tbaa !143
end_hunk_0
