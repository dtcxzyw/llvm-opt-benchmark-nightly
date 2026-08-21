inline.NumInlined: 354
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z10gmx_nmtrajiPPc:bb.a
          to label %.noexc203 unwind label %.loopexit273 ; 4 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.fq ; 2 uses
  store float %i.fj, ptr %i.fz, align 4, !tbaa !53
  %i.ga = icmp sgt i64 %i.fq, 0
  br i1 %i.ga, label %bb.as, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.as:                                            ; preds = %.noexc203
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr align 4 %i.fn, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.as, %.noexc203
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %.not.i17.i.i201 = icmp eq ptr %i.fn, null
  br i1 %.not.i17.i.i201, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fq) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.fy, ptr %8, align 8, !tbaa !48
  store ptr %i.gb, ptr %i.eg, align 8, !tbaa !51
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gc, ptr %i.cj, align 8, !tbaa !52
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJfEEERfDpOT_.exit

_ZNSt6vectorIfSaIfEE12emplace_backIJfEEERfDpOT_.exit: ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.ap
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0224.0298, i64 32 ; 2 uses
  %.not264 = icmp eq ptr %i.gd, %i.ef
  br i1 %.not264, label %._crit_edge300, label %bb.ao

.loopexit273:                                     ; preds = %bb.ao, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp, %.loopexit273
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit273 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.cy

bb.av:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit193
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(66) @.str.31, i8 noundef zeroext 2)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 165, ptr noundef nonnull @.str.32) #18
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, %.loopexit, %._crit_edge311, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge, %bb.bp, %._crit_edge339
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.az:                                            ; preds = %bb.av
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn152 = phi { ptr, i32 } [ %i.gg, %bb.ba ], [ %i.gf, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.cy

bb.bc:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit193
  %i.gh = icmp sgt i32 %i.cg, %i.fa
  br i1 %i.gh, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.gi = sub nsw i32 %i.cg, %i.fa
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.gi) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #16
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !53
  %i.gk = load ptr, ptr %i.et, align 8, !tbaa !51 ; 3 uses
  %i.gl = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 2                 ; 3 uses
  %i.gq = icmp ugt i64 %i.ch, %i.gp
  br i1 %i.gq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gr = sub nuw nsw i64 %i.ch, %i.gp
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.gk, i64 noundef %i.gr, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.gs = icmp ult i64 %i.ch, %i.gp
  br i1 %i.gs, label %bb.bg, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.bg:                                            ; preds = %bb.bf
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.ch ; 2 uses
  %.not.i.i = icmp eq ptr %i.gk, %i.gt
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bg
  store ptr %i.gt, ptr %i.et, align 8, !tbaa !51
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.bg, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #16
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #16
  br label %bb.cy

bb.bi:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 2344 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !55 ; 2 uses
  %i.gx = load i32, ptr %i.m, align 4, !tbaa !9
  %.not = icmp eq i32 %i.gw, %i.gx
  br i1 %.not, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(66) @.str.31, i8 noundef zeroext 2)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 178, ptr noundef nonnull @.str.34) #18
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bj
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn150 = phi { ptr, i32 } [ %i.gz, %bb.bn ], [ %i.gy, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.cy

bb.bp:                                            ; preds = %bb.bi
  %i.ha = sext i32 %i.gw to i64
  %i.hb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef 181, i64 noundef range(i64 -2147483648, 2147483648) %i.ha, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader unwind label %bb.ay ; 2 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader: ; preds = %bb.bp
  %i.hc = load i32, ptr %i.m, align 4, !tbaa !9
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv
  %i.hf = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hg = load i32, ptr %i.m, align 4, !tbaa !9
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next, %i.hh
  br i1 %i.hi, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge, !llvm.loop !62

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %i.hj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef 188, i64 noundef range(i64 -2147483648, 2147483648) %i.ch, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit207.preheader unwind label %bb.ay ; 14 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit207.preheader: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge
  %i.hk = icmp sgt i32 %i.cg, 0                   ; 3 uses
  br i1 %i.hk, label %.preheader272, label %._crit_edge311

.preheader272:                                    ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit207.preheader
  %i.hl = and i64 %i.ce, 8589934588
  call void @llvm.memset.p0.i64(ptr align 4 %i.hj, i8 -1, i64 %i.hl, i1 false), !tbaa !9
  %i.hm = load i32, ptr %i.i, align 4, !tbaa !9
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.preheader271.preheader, label %.lr.ph310.preheader

.preheader271.preheader:                          ; preds = %.preheader272
  %i.ho = load ptr, ptr %i.j, align 8             ; 3 uses
  %wide.trip.count = and i64 %i.cf, 2147483647    ; 7 uses
  %i.hp = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hj, i64 %i.hp ; 2 uses
  %scevgep521 = getelementptr i8, ptr %.sroa.0234.0.lcssa499, i64 %i.hp
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %bound0 = icmp ult ptr %i.hj, %scevgep521
  %bound1 = icmp ult ptr %.sroa.0234.0.lcssa499, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check527 = icmp samesign ult i64 %wide.trip.count, 32
  %n.vec = and i64 %i.cf, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %i.hq = and i64 %i.ce, 112
  %min.epilog.iters.check = icmp eq i64 %i.hq, 0
  %n.vec533 = and i64 %i.cf, 2147483644           ; 3 uses
  %cmp.n541 = icmp eq i64 %wide.trip.count, %n.vec533
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader271.preheader, %._crit_edge307
  %indvars.iv358 = phi i64 [ 0, %.preheader271.preheader ], [ %indvars.iv.next359, %._crit_edge307 ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv358 ; 7 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv358 to i32 ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ht = shl nuw nsw i64 %indvars.iv358, 2       ; 2 uses
  %15 = getelementptr i8, ptr %i.ho, i64 %i.ht
  %scevgep523 = getelementptr i8, ptr %15, i64 4
  %scevgep522 = getelementptr nuw i8, ptr %i.ho, i64 %i.ht
  %bound0524 = icmp ult ptr %i.hj, %scevgep523
  %bound1525 = icmp ult ptr %scevgep522, %scevgep
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx = or i1 %found.conflict, %found.conflict526
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check527, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hu = load i32, ptr %i.hr, align 4, !tbaa !9, !alias.scope !63
  %broadcast.splatinsert531 = insertelement <8 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat532 = shufflevector <8 x i32> %broadcast.splatinsert531, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.hs, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa499, i64 %index ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 96
  %wide.load = load <8 x i32>, ptr %i.hv, align 4, !tbaa !9, !alias.scope !66
  %wide.load528.a = load <8 x i32>, ptr %i.hw, align 4, !tbaa !9, !alias.scope !66
  %wide.load529.a = load <8 x i32>, ptr %i.hx, align 4, !tbaa !9, !alias.scope !66
  %wide.load530 = load <8 x i32>, ptr %i.hy, align 4, !tbaa !9, !alias.scope !66
  %i.hz = icmp eq <8 x i32> %wide.load, %broadcast.splat532
  %i.ia = icmp eq <8 x i32> %wide.load528.a, %broadcast.splat532
  %i.ib = icmp eq <8 x i32> %wide.load529.a, %broadcast.splat532
  %i.ic = icmp eq <8 x i32> %wide.load530, %broadcast.splat532
  %i.id = getelementptr [4 x i8], ptr %i.hj, i64 %index ; 4 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 32
  %i.if = getelementptr i8, ptr %i.id, i64 64
  %i.ig = getelementptr i8, ptr %i.id, i64 96
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat, ptr align 4 %i.id, <8 x i1> %i.hz), !tbaa !9, !alias.scope !68, !noalias !70
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat, ptr align 4 %i.ie, <8 x i1> %i.ia), !tbaa !9, !alias.scope !68, !noalias !70
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat, ptr align 4 %i.if, <8 x i1> %i.ib), !tbaa !9, !alias.scope !68, !noalias !70
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat, ptr align 4 %i.ig, <8 x i1> %i.ic), !tbaa !9, !alias.scope !68, !noalias !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge307, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ii = load i32, ptr %i.hr, align 4, !tbaa !9, !alias.scope !63
  %broadcast.splatinsert538 = insertelement <4 x i32> poison, i32 %i.ii, i64 0
  %broadcast.splat539 = shufflevector <4 x i32> %broadcast.splatinsert538, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert534 = insertelement <4 x i32> poison, i32 %i.hs, i64 0
  %broadcast.splat535 = shufflevector <4 x i32> %broadcast.splatinsert534, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index536 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next540, %vec.epilog.vector.body ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa499, i64 %index536
  %wide.load537 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !9, !alias.scope !66
  %i.ik = icmp eq <4 x i32> %wide.load537, %broadcast.splat539
  %i.il = getelementptr [4 x i8], ptr %i.hj, i64 %index536
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %broadcast.splat535, ptr align 4 %i.il, <4 x i1> %i.ik), !tbaa !9, !alias.scope !68, !noalias !70
  %index.next540 = add nuw i64 %index536, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next540, %n.vec533
  br i1 %i.im, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n541, label %._crit_edge307, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv355.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec533, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %bb.br
  %indvars.iv355.prol = phi i64 [ %indvars.iv.next356.prol, %bb.br ], [ %indvars.iv355.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.br ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa499, i64 %indvars.iv355.prol
  %i.io = load i32, ptr %i.in, align 4, !tbaa !9
  %i.ip = load i32, ptr %i.hr, align 4, !tbaa !9
  %i.iq = icmp eq i32 %i.io, %i.ip
  br i1 %i.iq, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %vec.epilog.scalar.ph.prol
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv355.prol
  store i32 %i.hs, ptr %i.ir, align 4, !tbaa !9
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %vec.epilog.scalar.ph.prol
  %indvars.iv.next356.prol = add nuw nsw i64 %indvars.iv355.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !76

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %bb.br, %vec.epilog.scalar.ph.preheader
  %indvars.iv355.unr = phi i64 [ %indvars.iv355.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next356.prol, %bb.br ]
  %i.is = sub nsw i64 %indvars.iv355.ph, %wide.trip.count
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge307, label %vec.epilog.scalar.ph

.lr.ph310.preheader:                              ; preds = %._crit_edge307, %.preheader272
  %wide.trip.count364 = and i64 %i.cf, 2147483647
  br label %.lr.ph310

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.bw
  %indvars.iv355 = phi i64 [ %indvars.iv.next356.3, %bb.bw ], [ %indvars.iv355.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa499, i64 %indvars.iv355
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !9
  %i.iw = load i32, ptr %i.hr, align 4, !tbaa !9
  %i.ix = icmp eq i32 %i.iv, %i.iw
  br i1 %i.ix, label %bb.bs, label %vec.epilog.scalar.ph.1

bb.bs:                                            ; preds = %vec.epilog.scalar.ph
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv355
  store i32 %i.hs, ptr %i.iy, align 4, !tbaa !9
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph, %bb.bs
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa499, i64 %indvars.iv.next356
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !9
  %i.jb = load i32, ptr %i.hr, align 4, !tbaa !9
  %i.jc = icmp eq i32 %i.ja, %i.jb
  br i1 %i.jc, label %bb.bt, label %vec.epilog.scalar.ph.2

bb.bt:                                            ; preds = %vec.epilog.scalar.ph.1
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next356
  store i32 %i.hs, ptr %i.jd, align 4, !tbaa !9
  br label %vec.epilog.scalar.ph.2

vec.epilog.scalar.ph.2:                           ; preds = %bb.bt, %vec.epilog.scalar.ph.1
  %indvars.iv.next356.1 = add nuw nsw i64 %indvars.iv355, 2 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa499, i64 %indvars.iv.next356.1
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !9
  %i.jg = load i32, ptr %i.hr, align 4, !tbaa !9
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %bb.bu, label %vec.epilog.scalar.ph.3

bb.bu:                                            ; preds = %vec.epilog.scalar.ph.2
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next356.1
  store i32 %i.hs, ptr %i.ji, align 4, !tbaa !9
  br label %vec.epilog.scalar.ph.3

vec.epilog.scalar.ph.3:                           ; preds = %bb.bu, %vec.epilog.scalar.ph.2
  %indvars.iv.next356.2 = add nuw nsw i64 %indvars.iv355, 3 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa499, i64 %indvars.iv.next356.2
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !9
  %i.jl = load i32, ptr %i.hr, align 4, !tbaa !9
  %i.jm = icmp eq i32 %i.jk, %i.jl
  br i1 %i.jm, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %vec.epilog.scalar.ph.3
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next356.2
  store i32 %i.hs, ptr %i.jn, align 4, !tbaa !9
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %vec.epilog.scalar.ph.3
  %indvars.iv.next356.3 = add nuw nsw i64 %indvars.iv355, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next356.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge307, label %vec.epilog.scalar.ph, !llvm.loop !78

._crit_edge307:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.bw, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %i.jo = load i32, ptr %i.i, align 4, !tbaa !9
  %i.jp = sext i32 %i.jo to i64
  %i.jq = icmp slt i64 %indvars.iv.next359, %i.jp
  br i1 %i.jq, label %iter.check, label %.lr.ph310.preheader, !llvm.loop !79

bb.bx:                                            ; preds = %.lr.ph310
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %exitcond365.not = icmp eq i64 %indvars.iv.next362, %wide.trip.count364
  br i1 %exitcond365.not, label %._crit_edge311, label %.lr.ph310, !llvm.loop !80

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %bb.bx
  %indvars.iv361 = phi i64 [ 0, %.lr.ph310.preheader ], [ %indvars.iv.next362, %bb.bx ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv361
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !9
  %i.jt = icmp eq i32 %i.js, -1
  br i1 %i.jt, label %bb.by, label %bb.bx

bb.by:                                            ; preds = %.lr.ph310
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(66) @.str.31, i8 noundef zeroext 2)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa499, i64 %indvars.iv361
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !9
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 208, ptr noundef nonnull @.str.37, i32 noundef %i.jv) #18
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz
end_hunk_0
