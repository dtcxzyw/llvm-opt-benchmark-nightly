Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/proposal?download=true
inline.NumInlined: 296
inline.NumDeleted: 150
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn8Proposal7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.y:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gp, ptr align 4 %i.ez, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.y, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.ez, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.gv = sub i64 %i.fb, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.gv) #19
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i: ; preds = %bb.z, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.gp, ptr %6, align 8, !tbaa !54
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ga
  store ptr %i.gw, ptr %i.fu, align 8, !tbaa !97
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.gx, ptr %i.gb, align 8, !tbaa !98
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.aa:                                            ; preds = %_ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit
  %i.gy = icmp ugt i64 %i.fy, %i.ft
  br i1 %i.gy, label %bb.ab, label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ft ; 2 uses
  %.not.i.i153 = icmp eq ptr %i.fa, %i.gz
  br i1 %.not.i.i153, label %_ZNSt6vectorImSaImEE5clearEv.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ab
  store ptr %i.gz, ptr %i.fu, align 8, !tbaa !97
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.x, %bb.r
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit96thread-pre-split

_ZNSt6vectorImSaImEE5clearEv.exit.i:              ; preds = %_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit, %bb.p, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, %bb.aa, %bb.ab, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !39
  %i.hd = load ptr, ptr %i.ey, align 8, !tbaa !49 ; 2 uses
  %i.he = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 5 uses
  %i.hi = ashr exact i64 %i.hh, 4                 ; 8 uses
  %i.hj = icmp ugt i64 %i.hi, 2305843009213693951
  br i1 %i.hj, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc157 unwind label %.body.thread

.noexc157:                                        ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i.i.i.i.i, label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_4RectESaIS1_EERS0_ImSaImEEf.exit, label %.noexc41.i

.noexc41.i:                                       ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.hk = ashr exact i64 %i.hh, 2                 ; 3 uses
  %i.hl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #21
          to label %.noexc158 unwind label %.body.thread ; 12 uses

.noexc158:                                        ; preds = %.noexc41.i
  store float 0.000000e+00, ptr %i.hl, align 4, !tbaa !43
  %i.hm = add nsw i64 %i.hi, -1                   ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc158
  %i.ho = getelementptr i8, ptr %i.hl, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ho, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !43
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc158
  %i.hp = load ptr, ptr %5, align 8, !tbaa !51    ; 9 uses
  %min.iters.check = icmp ult i64 %i.hi, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.hq = ashr exact i64 %i.hh, 2
  %scevgep = getelementptr i8, ptr %i.hl, i64 %i.hq
  %scevgep403 = getelementptr i8, ptr %i.hp, i64 %i.hh
  %bound0 = icmp ult ptr %i.hl, %scevgep403
  %bound1 = icmp ult ptr %i.hp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hi, 2305843009213693948     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %index ; 4 uses
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %index ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %index ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %index ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %i.ic = load float, ptr %i.hy, align 4, !tbaa !100, !alias.scope !101
  %i.id = load float, ptr %i.hz, align 4, !tbaa !100, !alias.scope !101
  %i.ie = load float, ptr %i.ia, align 4, !tbaa !100, !alias.scope !101
  %i.if = load float, ptr %i.ib, align 4, !tbaa !100, !alias.scope !101
  %i.ig = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ih = insertelement <4 x float> %i.ig, float %i.id, i64 1
  %i.ii = insertelement <4 x float> %i.ih, float %i.ie, i64 2
  %i.ij = insertelement <4 x float> %i.ii, float %i.if, i64 3
  %i.ik = load float, ptr %i.hr, align 4, !tbaa !102, !alias.scope !101
  %i.il = load float, ptr %i.ht, align 4, !tbaa !102, !alias.scope !101
  %i.im = load float, ptr %i.hv, align 4, !tbaa !102, !alias.scope !101
  %i.in = load float, ptr %i.hx, align 4, !tbaa !102, !alias.scope !101
  %i.io = insertelement <4 x float> poison, float %i.ik, i64 0
  %i.ip = insertelement <4 x float> %i.io, float %i.il, i64 1
  %i.iq = insertelement <4 x float> %i.ip, float %i.im, i64 2
  %i.ir = insertelement <4 x float> %i.iq, float %i.in, i64 3
  %i.is = fsub fast <4 x float> %i.ij, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hs, i64 28
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hu, i64 44
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hw, i64 60
  %i.ix = load float, ptr %i.it, align 4, !tbaa !103, !alias.scope !101
  %i.iy = load float, ptr %i.iu, align 4, !tbaa !103, !alias.scope !101
  %i.iz = load float, ptr %i.iv, align 4, !tbaa !103, !alias.scope !101
  %i.ja = load float, ptr %i.iw, align 4, !tbaa !103, !alias.scope !101
  %i.jb = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.jc = insertelement <4 x float> %i.jb, float %i.iy, i64 1
  %i.jd = insertelement <4 x float> %i.jc, float %i.iz, i64 2
  %i.je = insertelement <4 x float> %i.jd, float %i.ja, i64 3
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hu, i64 36
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hw, i64 52
  %i.jj = load float, ptr %i.jf, align 4, !tbaa !104, !alias.scope !101
  %i.jk = load float, ptr %i.jg, align 4, !tbaa !104, !alias.scope !101
  %i.jl = load float, ptr %i.jh, align 4, !tbaa !104, !alias.scope !101
  %i.jm = load float, ptr %i.ji, align 4, !tbaa !104, !alias.scope !101
  %i.jn = insertelement <4 x float> poison, float %i.jj, i64 0
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 1
  %i.jp = insertelement <4 x float> %i.jo, float %i.jl, i64 2
  %i.jq = insertelement <4 x float> %i.jp, float %i.jm, i64 3
  %i.jr = fsub fast <4 x float> %i.je, %i.jq
  %i.js = fmul fast <4 x float> %i.jr, %i.is
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index
  store <4 x float> %i.js, ptr %i.jt, align 4, !tbaa !43, !alias.scope !105, !noalias !101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hi, %n.vec
  br i1 %cmp.n, label %.lr.ph70.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.03760.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.03760.i.ph, 1
  %i.jv = and i64 %i.hh, 16
  %lcmp.mod.not = icmp eq i64 %i.jv, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.03760.i.ph ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load <2 x float>, ptr %i.jx, align 4, !tbaa !43
  %i.jz = load <2 x float>, ptr %i.jw, align 4, !tbaa !43
  %i.ka = fsub fast <2 x float> %i.jy, %i.jz
  %i.kb = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.ka)
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.03760.i.ph
  store float %i.kb, ptr %i.kc, align 4, !tbaa !43
  %i.kd = or disjoint i64 %.03760.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03760.i.unr = phi i64 [ %.03760.i.ph, %scalar.ph.preheader ], [ %i.kd, %scalar.ph.prol ]
  %i.ke = icmp eq i64 %i.hi, %.neg
  br i1 %i.ke, label %.lr.ph70.i.preheader, label %scalar.ph

.lr.ph70.i.preheader:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br label %.lr.ph70.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03760.i = phi i64 [ %i.ku, %scalar.ph ], [ %.03760.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.03760.i ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load <2 x float>, ptr %i.kg, align 4, !tbaa !43
  %i.ki = load <2 x float>, ptr %i.kf, align 4, !tbaa !43
  %i.kj = fsub fast <2 x float> %i.kh, %i.ki
  %i.kk = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.kj)
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.03760.i
  store float %i.kk, ptr %i.kl, align 4, !tbaa !43
  %i.km = add nuw nsw i64 %.03760.i, 1            ; 2 uses
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load <2 x float>, ptr %i.ko, align 4, !tbaa !43
  %i.kq = load <2 x float>, ptr %i.kn, align 4, !tbaa !43
  %i.kr = fsub fast <2 x float> %i.kp, %i.kq
  %i.ks = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.kr)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.km
  store float %i.ks, ptr %i.kt, align 4, !tbaa !43
  %i.ku = add nuw nsw i64 %.03760.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ku, %i.hi
  br i1 %exitcond.not.i.1, label %.lr.ph70.i.preheader, label %scalar.ph, !llvm.loop !79

._crit_edge71.i:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hk) #19
  %i.kv = ptrtoint ptr %.sroa.15202.2 to i64
  br label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_4RectESaIS1_EERS0_ImSaImEEf.exit

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  %.sroa.0193.1 = phi ptr [ %.sroa.0193.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ] ; 3 uses
  %.sroa.15202.1 = phi ptr [ %.sroa.15202.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ] ; 6 uses
  %i.kw = phi ptr [ %i.ne, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ] ; 9 uses
  %i.kx = phi ptr [ %i.nf, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ] ; 6 uses
  %storemerge69.i = phi i64 [ %i.ng, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ 0, %.lr.ph70.i.preheader ] ; 5 uses
  %i.ky = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.kw to i64               ; 2 uses
  %i.lb = sub i64 %i.kz, %i.la                    ; 5 uses
  %i.lc = ashr exact i64 %i.lb, 3                 ; 4 uses
  %.not74.i = icmp eq ptr %i.kx, %i.kw
  br i1 %.not74.i, label %.thread.i, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph70.i
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %storemerge69.i ; 4 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !102 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %storemerge69.i
  %i.lj = load float, ptr %i.li, align 4, !tbaa !43
  br label %bb.ad

._crit_edge.i:                                    ; preds = %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i
  %i.lk = icmp eq i32 %spec.select.i, 0
  br i1 %i.lk, label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i, label %bb.ai

bb.ad:                                            ; preds = %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i, %.lr.ph63.i
  %.062.i = phi i64 [ 0, %.lr.ph63.i ], [ %i.mp, %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i ] ; 2 uses
  %.03461.i = phi i32 [ 1, %.lr.ph63.i ], [ %spec.select.i, %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i ]
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %.062.i
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !108 ; 2 uses
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.lm ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !100 ; 2 uses
  %i.lq = fcmp fast ogt float %i.le, %i.lp
  br i1 %i.lq, label %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lr = load float, ptr %i.lf, align 4, !tbaa !100 ; 2 uses
  %i.ls = load float, ptr %i.ln, align 4, !tbaa !102 ; 2 uses
  %i.lt = fcmp fast olt float %i.lr, %i.ls
  br i1 %i.lt, label %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lu = load float, ptr %i.lg, align 4, !tbaa !104 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !103 ; 2 uses
  %i.lx = fcmp fast ogt float %i.lu, %i.lw
  br i1 %i.lx, label %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ly = load float, ptr %i.lh, align 4, !tbaa !103 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !104 ; 2 uses
  %i.mb = fcmp fast olt float %i.ly, %i.ma
  br i1 %i.mb, label %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mc = call nnan ninf nsz float @llvm.minnum.f32(float %i.lp, float %i.lr)
  %i.md = call nnan ninf nsz float @llvm.maxnum.f32(float %i.le, float %i.ls)
  %i.me = fsub fast float %i.mc, %i.md
  %i.mf = call nnan ninf nsz float @llvm.minnum.f32(float %i.lw, float %i.ly)
  %i.mg = call nnan ninf nsz float @llvm.maxnum.f32(float %i.lu, float %i.ma)
  %i.mh = fsub fast float %i.mf, %i.mg
  %i.mi = fmul fast float %i.mh, %i.me
  br label %_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i

_ZN4ncnnL17intersection_areaERKNS_4RectES2_.exit.i: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.0.i.i = phi nsz float [ %i.mi, %bb.ah ], [ 0.000000e+00, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ae ], [ 0.000000e+00, %bb.ad ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.lm
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !43
  %i.ml = fsub fast float %i.lj, %.0.i.i
  %i.mm = fadd fast float %i.ml, %i.mk
  %i.mn = fdiv fast float %.0.i.i, %i.mm
  %i.mo = fcmp fast ogt float %i.mn, %i.hc
  %spec.select.i = select i1 %i.mo, i32 0, i32 %.03461.i ; 2 uses
  %i.mp = add nuw i64 %.062.i, 1                  ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.mp, %i.lc
  br i1 %exitcond76.not.i, label %._crit_edge.i, label %bb.ad, !llvm.loop !80

bb.ai:                                            ; preds = %._crit_edge.i
  %.not.i.i156 = icmp eq ptr %i.kx, %.sroa.21.1
  br i1 %.not.i.i156, label %bb.ak, label %bb.aj

.thread.i:                                        ; preds = %.lr.ph70.i
  %.not.i109.i = icmp eq ptr %i.kw, %.sroa.21.1
  br i1 %.not.i109.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.thread.i, %bb.ai
  store i64 %storemerge69.i, ptr %i.kx, align 8, !tbaa !108
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.mr = icmp eq i64 %i.lb, 9223372036854775800
  br i1 %i.mr, label %bb.al, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc43.i unwind label %.loopexit.split-lp.i

.noexc43.i:                                       ; preds = %bb.al
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ak, %.thread.i
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lc, i64 1)
  %i.ms = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lc ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.lc
  %i.mu = call i64 @llvm.umin.i64(i64 %i.ms, i64 1152921504606846975)
  %i.mv = select i1 %i.mt, i64 1152921504606846975, i64 %i.mu ; 3 uses
  %.not.i.i.i42.i = icmp ne i64 %i.mv, 0
  call void @llvm.assume(i1 %.not.i.i.i42.i)
  %i.mw = shl nuw nsw i64 %i.mv, 3
  %i.mx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mw) #21
          to label %.noexc44.i unwind label %.loopexit.i ; 5 uses

.noexc44.i:                                       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.lb ; 2 uses
  store i64 %storemerge69.i, ptr %i.my, align 8, !tbaa !108
  %i.mz = icmp sgt i64 %i.lb, 0
  br i1 %i.mz, label %bb.am, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.am:                                            ; preds = %.noexc44.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mx, ptr align 8 %i.kw, i64 %i.lb, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.am, %.noexc44.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.kw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.nb = ptrtoint ptr %.sroa.21.1 to i64
  %i.nc = sub i64 %i.nb, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.nc) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.mv
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit46.i

.loopexit.split-lp.i:                             ; preds = %bb.al
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit46.i

_ZNSt6vectorImSaImEE9push_backERKm.exit.i:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.aj, %._crit_edge.i
  %.sroa.0193.2 = phi ptr [ %i.mx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0193.1, %bb.aj ], [ %.sroa.0193.1, %._crit_edge.i ] ; 2 uses
  %.sroa.15202.2 = phi ptr [ %i.na, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.mq, %bb.aj ], [ %.sroa.15202.1, %._crit_edge.i ] ; 2 uses
  %.sroa.21.2 = phi ptr [ %i.nd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.21.1, %bb.aj ], [ %.sroa.21.1, %._crit_edge.i ] ; 2 uses
  %i.ne = phi ptr [ %i.mx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kw, %bb.aj ], [ %i.kw, %._crit_edge.i ]
  %i.nf = phi ptr [ %i.na, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.mq, %bb.aj ], [ %i.kx, %._crit_edge.i ]
  %i.ng = add nuw nsw i64 %storemerge69.i, 1      ; 2 uses
  %exitcond78.not.i = icmp eq i64 %i.ng, %i.hi
  br i1 %exitcond78.not.i, label %._crit_edge71.i, label %.lr.ph70.i, !llvm.loop !81

_ZNSt6vectorIfSaIfEED2Ev.exit46.i:                ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hk) #19
  br label %.body

_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_4RectESaIS1_EERS0_ImSaImEEf.exit: ; preds = %._crit_edge71.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.0193.4 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.sroa.0193.2, %._crit_edge71.i ] ; 13 uses
  %.sroa.15202.3 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.kv, %._crit_edge71.i ]
  %.sroa.21.4 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.sroa.21.2, %._crit_edge71.i ] ; 3 uses
  %i.nh = ptrtoint ptr %.sroa.0193.4 to i64       ; 2 uses
  %i.ni = sub i64 %.sroa.15202.3, %i.nh
  %i.nj = lshr exact i64 %i.ni, 3
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !45
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.nm, i32 %i.nk) ; 8 uses
  %i.nn = load ptr, ptr %2, align 8, !tbaa !89    ; 5 uses
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nn, i32 noundef 4, i32 noundef 1, i32 noundef %.sroa.speculated, i64 noundef 4, ptr noundef null)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_4RectESaIS1_EERS0_ImSaImEEf.exit
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !19 ; 4 uses
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit142

_ZNK4ncnn3Mat5emptyEv.exit142:                    ; preds = %bb.ao
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !20 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 56
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !46
  %i.nu = sext i32 %i.nt to i64
  %i.nv = mul i64 %i.nr, %i.nu
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %.critedge, label %.preheader264

.preheader264:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit142
  %i.nx = icmp slt i32 %.sroa.speculated, 1       ; 2 uses
  br i1 %i.nx, label %._crit_edge277, label %.noexc138.lr.ph

.noexc138.lr.ph:                                  ; preds = %.preheader264
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !42, !noalias !109
  %factor.op.mul = mul i64 %i.nr, %i.nz           ; 3 uses
  %i.oa = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter421 = and i64 %wide.trip.count, 1
  %i.ob = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.ob, label %.noexc138.epil.preheader, label %.noexc138.lr.ph.new

.noexc138.lr.ph.new:                              ; preds = %.noexc138.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.noexc138

.body.thread:                                     ; preds = %.noexc.i, %.noexc41.i
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit96thread-pre-split

bb.ap:                                            ; preds = %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_4RectESaIS1_EERS0_ImSaImEEf.exit
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge277.loopexit.unr-lcssa:                ; preds = %.noexc138
  %lcmp.mod422.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod422.not, label %._crit_edge277, label %.noexc138.epil.preheader

.noexc138.epil.preheader:                         ; preds = %._crit_edge277.loopexit.unr-lcssa, %.noexc138.lr.ph
  %indvars.iv296.epil.init = phi i64 [ 0, %.noexc138.lr.ph ], [ %indvars.iv.next297.1, %._crit_edge277.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod423 = trunc i32 %.sroa.speculated to i1
  call void @llvm.assume(i1 %lcmp.mod423)
  %.reass.epil = mul i64 %factor.op.mul, %indvars.iv296.epil.init
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 %.reass.epil ; 4 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0193.4, i64 %indvars.iv296.epil.init
  %i.og = load i64, ptr %i.of, align 8, !tbaa !108
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.oa, i64 %i.og ; 4 uses
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !102
  store float %i.oi, ptr %i.oe, align 4, !tbaa !43
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !104
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  store float %i.ok, ptr %i.ol, align 4, !tbaa !43
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.on = load float, ptr %i.om, align 4, !tbaa !100
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store float %i.on, ptr %i.oo, align 4, !tbaa !43
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  %i.oq = load float, ptr %i.op, align 4, !tbaa !103
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  store float %i.oq, ptr %i.or, align 4, !tbaa !43
  br label %._crit_edge277

._crit_edge277:                                   ; preds = %.noexc138.epil.preheader, %._crit_edge277.loopexit.unr-lcssa, %.preheader264
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !110
  %i.ou = load ptr, ptr %2, align 8, !tbaa !89    ; 5 uses
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = sdiv exact i64 %i.ox, 72
  %i.oz = icmp ugt i64 %i.oy, 1
  br i1 %i.oz, label %bb.aq, label %.critedge

.noexc138:                                        ; preds = %.noexc138, %.noexc138.lr.ph.new
  %indvars.iv296 = phi i64 [ 0, %.noexc138.lr.ph.new ], [ %indvars.iv.next297.1, %.noexc138 ] ; 4 uses
  %niter = phi i64 [ 0, %.noexc138.lr.ph.new ], [ %niter.next.1, %.noexc138 ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv296
  %i.pa = getelementptr inbounds nuw i8, ptr %i.no, i64 %.reass ; 4 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0193.4, i64 %indvars.iv296
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !108
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.oa, i64 %i.pc ; 4 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !102
  store float %i.pe, ptr %i.pa, align 4, !tbaa !43
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !104
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  store float %i.pg, ptr %i.ph, align 4, !tbaa !43
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !100
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store float %i.pj, ptr %i.pk, align 4, !tbaa !43
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !103
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  store float %i.pm, ptr %i.pn, align 4, !tbaa !43
  %indvars.iv.next297 = or disjoint i64 %indvars.iv296, 1 ; 2 uses
  %.reass.1 = mul i64 %factor.op.mul, %indvars.iv.next297
  %i.po = getelementptr inbounds nuw i8, ptr %i.no, i64 %.reass.1 ; 4 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0193.4, i64 %indvars.iv.next297
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !108
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %i.oa, i64 %i.pq ; 4 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !102
  store float %i.ps, ptr %i.po, align 4, !tbaa !43
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !104
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  store float %i.pu, ptr %i.pv, align 4, !tbaa !43
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.px = load float, ptr %i.pw, align 4, !tbaa !100
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store float %i.px, ptr %i.py, align 4, !tbaa !43
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !103
  %i.qb = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  store float %i.qa, ptr %i.qb, align 4, !tbaa !43
  %indvars.iv.next297.1 = add nuw nsw i64 %indvars.iv296, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge277.loopexit.unr-lcssa, label %.noexc138, !llvm.loop !84

bb.aq:                                            ; preds = %._crit_edge277
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ou, i64 72 ; 2 uses
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.qc, i32 noundef 1, i32 noundef 1, i32 noundef %.sroa.speculated, i64 noundef 4, ptr noundef null)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !19 ; 6 uses
  %i.qe = icmp eq ptr %i.qd, null
  br i1 %i.qe, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ar
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ou, i64 136
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !20 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ou, i64 128
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !46
  %i.qj = sext i32 %i.qi to i64
  %i.qk = mul i64 %i.qg, %i.qj
  %i.ql = icmp eq i64 %i.qk, 0                    ; 2 uses
  %brmerge = or i1 %i.ql, %i.nx
  %.mux = select i1 %i.ql, i32 -100, i32 0
  br i1 %brmerge, label %.critedge, label %.noexc137.lr.ph

.noexc137.lr.ph:                                  ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !42, !noalias !111
  %factor.op.mul279 = mul i64 %i.qg, %i.qn        ; 5 uses
  %i.qo = load ptr, ptr %6, align 8, !tbaa !54    ; 5 uses
  %wide.trip.count302 = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter424 = and i64 %wide.trip.count302, 3   ; 3 uses
  %i.qp = add nsw i32 %.sroa.speculated, -1
  %i.qq = icmp ult i32 %i.qp, 3
  br i1 %i.qq, label %.noexc137.epil.preheader, label %.noexc137.lr.ph.new

.noexc137.lr.ph.new:                              ; preds = %.noexc137.lr.ph
  %unroll_iter427 = and i64 %wide.trip.count302, 2147483644
  br label %.noexc137

bb.as:                                            ; preds = %bb.aq
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc137:                                        ; preds = %.noexc137, %.noexc137.lr.ph.new
  %indvars.iv299 = phi i64 [ 0, %.noexc137.lr.ph.new ], [ %indvars.iv.next300.3, %.noexc137 ] ; 6 uses
  %niter428 = phi i64 [ 0, %.noexc137.lr.ph.new ], [ %niter428.next.3, %.noexc137 ]
  %.reass280 = mul i64 %factor.op.mul279, %indvars.iv299
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.reass280
end_hunk_0
