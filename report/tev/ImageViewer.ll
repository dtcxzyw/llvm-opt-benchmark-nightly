Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageViewer?download=true
inline.NumInlined: 16087
inline.NumDeleted: 8272
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN3tev11ImageViewer12updateFilterEv:bb.a
  store ptr %.0.i, ptr %i.dg, align 8, !tbaa !349
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp244.loopexit.split-lp, %bb.ak
  %eh.lpad-body = phi { ptr, i32 } [ %i.hd, %bb.ak ], [ %lpad.loopexit.split-lp448, %.loopexit.split-lp244.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %.loopexit.split-lp230

bb.al:                                            ; preds = %"_ZZN3tev11ImageViewer12updateFilterEvENK3$_0clINSt3__117basic_string_viewIcNS3_11char_traitsIcEEEENS3_4spanIKNS_12ChannelGroupELm18446744073709551615EEEEEDaRKT_RKT0_.exit.thread", %bb.aj
  %.182 = phi i64 [ %i.fy, %bb.aj ], [ %.081279, %"_ZZN3tev11ImageViewer12updateFilterEvENK3$_0clINSt3__117basic_string_viewIcNS3_11char_traitsIcEEEENS3_4spanIKNS_12ChannelGroupELm18446744073709551615EEEEEDaRKT_RKT0_.exit.thread" ]
  %i.he = add nuw i64 %.083278, 1                 ; 2 uses
  %i.hf = load ptr, ptr %i.cu, align 16, !tbaa !505 ; 2 uses
  %i.hg = load ptr, ptr %i.ct, align 8, !tbaa !504 ; 3 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = ashr exact i64 %i.hj, 4
  %i.hl = icmp ult i64 %i.he, %i.hk
  br i1 %i.hl, label %bb.z, label %._crit_edge, !llvm.loop !1441

bb.am:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  %i.hm = load i8, ptr %.pre315, align 8
  %i.hn = trunc i8 %i.hm to i1
  br i1 %i.hn, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.pre315, i64 24, i1 false), !tbaa.struct !570
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit149

bb.ao:                                            ; preds = %bb.am
  %i.ho = getelementptr inbounds nuw i8, ptr %.pre315, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !219
  %i.hq = getelementptr inbounds nuw i8, ptr %.pre315, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !219
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.hp, i64 noundef %i.hr)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit149 unwind label %bb.au

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit149: ; preds = %bb.an, %bb.ao
  %i.hs = load i8, ptr %8, align 8                ; 2 uses
  %i.ht = trunc i8 %i.hs to i1                    ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = lshr i8 %i.hs, 1
  %i.hx = zext nneg i8 %i.hw to i64
  %i.hy = select i1 %i.ht, i64 %i.hv, i64 %i.hx   ; 4 uses
  %i.hz = trunc i64 %i.hy to i32                  ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.preheader237, label %bb.ax

.preheader237:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit149
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8            ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 3 uses
  %.val121 = load ptr, ptr %6, align 8, !tbaa !347 ; 3 uses
  %.val122 = load ptr, ptr %i.dj, align 8, !tbaa !349 ; 3 uses
  %.not8.i.i = icmp eq ptr %.val121, %.val122     ; 2 uses
  %.pn.i = select i1 %i.ht, ptr %i.ic, ptr %i.id
  %.pn.i.i.i.i.i.i = select i1 %i.ht, ptr %i.ic, ptr %i.id
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader237, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer12updateFilterEvE3$_1EEbOSI_T1_SL_.exit"
  %.084 = phi i32 [ %.pre323, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer12updateFilterEvE3$_1EEbOSI_T1_SL_.exit" ], [ 0, %.preheader237 ] ; 4 uses
  %i.ie = zext nneg i32 %.084 to i64              ; 2 uses
  %.0.i150 = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %i.ie
  %i.if = load i8, ptr %.0.i150, align 1, !tbaa !219
  %i.ig = zext i8 %i.if to i32                    ; 3 uses
  %i.ih = and i32 %i.ig, 248
  %i.ii = icmp eq i32 %i.ih, 240
  br i1 %i.ii, label %_ZN3tev15codePointLengthEc.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ij = and i32 %i.ig, 240
  %i.ik = icmp eq i32 %i.ij, 224
  br i1 %i.ik, label %_ZN3tev15codePointLengthEc.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.il = and i32 %i.ig, 224
  %i.im = icmp eq i32 %i.il, 192
  %..i = select i1 %i.im, i32 2, i32 1
  br label %_ZN3tev15codePointLengthEc.exit

_ZN3tev15codePointLengthEc.exit:                  ; preds = %bb.ap, %bb.aq, %bb.ar
  %.0.i151 = phi i32 [ 3, %bb.aq ], [ 4, %bb.ap ], [ %..i, %bb.ar ]
  %.pre323 = add nuw nsw i32 %.0.i151, %.084      ; 5 uses
  br i1 %.not8.i.i, label %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer12updateFilterEvE3$_1EEbOSI_T1_SL_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tev15codePointLengthEc.exit
  %i.in = zext nneg i32 %.pre323 to i64
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.sroa.01.09.i.i = phi ptr [ %.val121, %.lr.ph.i.i ], [ %i.jd, %.loopexit.i.i ] ; 5 uses
  %i.io = load i8, ptr %.sroa.01.09.i.i, align 8  ; 2 uses
  %i.ip = trunc i8 %i.io to i1                    ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i.i, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i.i, i64 1
  %i.it = select i1 %i.ip, ptr %i.ir, ptr %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i.i, i64 8
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = lshr i8 %i.io, 1
  %i.ix = zext nneg i8 %i.iw to i64
  %i.iy = select i1 %i.ip, i64 %i.iv, i64 %i.ix
  %i.iz = trunc i64 %i.iy to i32
  %.not17.i.not.i = icmp sgt i32 %.pre323, %i.iz
  br i1 %.not17.i.not.i, label %.preheader, label %.preheader.i.i.i.i.i

bb.at:                                            ; preds = %.preheader.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not11.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i, %i.in
  br i1 %.not11.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.loopexit.i.i, !llvm.loop !1442

.preheader.i.i.i.i.i:                             ; preds = %bb.as, %bb.at
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.at ], [ %i.ie, %bb.as ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 %indvars.iv.i.i.i.i.i
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !219
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.jc = load i8, ptr %.0.i.i.i.i.i.i, align 1, !tbaa !219
  %.not.i.i.i.i.i = icmp eq i8 %i.jb, %i.jc
  br i1 %.not.i.i.i.i.i, label %bb.at, label %.preheader

.loopexit.i.i:                                    ; preds = %bb.at
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jd, %.val122
  br i1 %.not.i.i, label %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer12updateFilterEvE3$_1EEbOSI_T1_SL_.exit", label %bb.as, !llvm.loop !1443

"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer12updateFilterEvE3$_1EEbOSI_T1_SL_.exit": ; preds = %.loopexit.i.i, %_ZN3tev15codePointLengthEc.exit
  %i.je = icmp slt i32 %.pre323, %i.hz
  br i1 %i.je, label %bb.ap, label %.preheader, !llvm.loop !1444

.preheader:                                       ; preds = %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer12updateFilterEvE3$_1EEbOSI_T1_SL_.exit", %bb.as, %.preheader.i.i.i.i.i
  %i.jf = phi i32 [ %.084, %.preheader.i.i.i.i.i ], [ %.084, %bb.as ], [ %.pre323, %"_ZNKSt3__16ranges8__all_of4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer12updateFilterEvE3$_1EEbOSI_T1_SL_.exit" ]
  %i.jg = and i64 %i.hy, 2147483647
  %wide.trip.count = and i64 %i.hy, 2147483647
  %.pn.i153 = select i1 %i.ht, ptr %i.ic, ptr %i.id
  %i.jh = getelementptr i8, ptr %.pn.i153, i64 %i.jg
  br label %bb.av

bb.au:                                            ; preds = %bb.ao
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %.loopexit.split-lp230

bb.av:                                            ; preds = %.preheader, %.loopexit233
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.loopexit233 ] ; 4 uses
  %i.jj = xor i64 %indvars.iv, -1                 ; 2 uses
  %.0.i154 = getelementptr i8, ptr %i.jh, i64 %i.jj
  %i.jk = load i8, ptr %.0.i154, align 1, !tbaa !219
  br i1 %.not8.i.i, label %.loopexit233, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %bb.av
  %i.jl = trunc nsw i64 %i.jj to i32
  br label %.lr.ph.i.i155

bb.aw:                                            ; preds = %"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageViewer12updateFilterEvE3$_2JRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i"
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 24 ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.jm, %.val122
  br i1 %.not.i.i156, label %.loopexit233, label %.lr.ph.i.i155, !llvm.loop !1445

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155.preheader, %bb.aw
  %.sroa.01.05.i.i = phi ptr [ %i.jm, %bb.aw ], [ %.val121, %.lr.ph.i.i155.preheader ] ; 5 uses
  %i.jn = load i8, ptr %.sroa.01.05.i.i, align 8  ; 2 uses
  %i.jo = trunc i8 %i.jn to i1                    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = lshr i8 %i.jn, 1
  %i.js = zext nneg i8 %i.jr to i64
  %i.jt = select i1 %i.jo, i64 %i.jq, i64 %i.js
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = add i32 %i.ju, %i.jl                    ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, -1
  br i1 %i.jw, label %"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageViewer12updateFilterEvE3$_2JRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i", label %.thread

"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageViewer12updateFilterEvE3$_2JRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i": ; preds = %.lr.ph.i.i155
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 1
  %i.ka = select i1 %i.jo, ptr %i.jy, ptr %i.jz
  %i.kb = zext nneg i32 %i.jv to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !219
  %i.ke = icmp eq i8 %i.kd, %i.jk
  br i1 %i.ke, label %bb.aw, label %.thread

.loopexit233:                                     ; preds = %bb.aw, %bb.av
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.av, !llvm.loop !1446

.thread:                                          ; preds = %.loopexit233, %"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageViewer12updateFilterEvE3$_2JRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i", %.lr.ph.i.i155
  %.in = phi i64 [ %indvars.iv, %"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageViewer12updateFilterEvE3$_2JRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i" ], [ %indvars.iv, %.lr.ph.i.i155 ], [ %i.hy, %.loopexit233 ]
  %i.kf = sext i32 %i.jf to i64
  %11 = and i64 %.in, 4294967295
  br label %bb.ax

bb.ax:                                            ; preds = %.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit149
  %.290 = phi i64 [ %11, %.thread ], [ 0, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit149 ]
  %.286 = phi i64 [ %i.kf, %.thread ], [ 0, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit149 ]
  br i1 %i.ht, label %bb.ay, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158

bb.ay:                                            ; preds = %bb.ax
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !219
  %i.ki = load i64, ptr %8, align 8
  %i.kj = and i64 %i.ki, -2
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kj) #48
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  %.pre317 = load ptr, ptr %i.cu, align 16, !tbaa !505
  %.pre318 = load ptr, ptr %i.ct, align 8, !tbaa !504
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158, %._crit_edge
  %i.kk = phi ptr [ %i.dj, %._crit_edge ], [ %i.dj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158 ], [ %i.cx, %._crit_edge.thread ] ; 2 uses
  %i.kl = phi ptr [ %i.hg, %._crit_edge ], [ %.pre318, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158 ], [ %i.cw, %._crit_edge.thread ] ; 2 uses
  %i.km = phi ptr [ %i.hf, %._crit_edge ], [ %.pre317, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158 ], [ %i.cv, %._crit_edge.thread ] ; 2 uses
  %.391 = phi i64 [ 0, %._crit_edge ], [ %.290, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158 ], [ 0, %._crit_edge.thread ]
  %.387 = phi i64 [ 0, %._crit_edge ], [ %.286, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit158 ], [ 0, %._crit_edge.thread ]
  %.not293 = icmp eq ptr %i.km, %i.kl
  br i1 %.not293, label %.thread376, label %.lr.ph283

.thread376:                                       ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.kn, align 8
  br label %bb.bi

.lr.ph283:                                        ; preds = %bb.az
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 840
  br label %bb.ba

._crit_edge284:                                   ; preds = %bb.bc
  br i1 %.195, label %bb.bn, label %bb.bd

bb.ba:                                            ; preds = %.lr.ph283, %bb.bc
  %i.kq = phi ptr [ %i.kl, %.lr.ph283 ], [ %i.lf, %bb.bc ] ; 2 uses
  %i.kr = phi ptr [ %i.km, %.lr.ph283 ], [ %i.lg, %bb.bc ]
  %.094281 = phi i1 [ false, %.lr.ph283 ], [ %.195, %bb.bc ] ; 2 uses
  %.096280 = phi i64 [ 0, %.lr.ph283 ], [ %i.lh, %bb.bc ] ; 3 uses
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !416
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 80
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !396
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.096280
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !397, !nonnull !384, !noundef !384 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 104
  %i.ky = load i8, ptr %i.kx, align 8, !tbaa !232, !range !330, !noundef !384
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %.096280
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !438
  %i.lc = load ptr, ptr %i.kp, align 8, !tbaa !438
  invoke void @_ZN3tev11ImageButton17setHighlightRangeEmm(ptr noundef nonnull align 16 dereferenceable(400) %i.kw, i64 noundef %.387, i64 noundef %.391)
          to label %._crit_edge319 unwind label %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge319:                                   ; preds = %bb.bb
  %i.ld = icmp eq ptr %i.lb, %i.lc
  %i.le = or i1 %.094281, %i.ld
  %.pre320 = load ptr, ptr %i.cu, align 16, !tbaa !505
  %.pre321 = load ptr, ptr %i.ct, align 8, !tbaa !504
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge319, %bb.ba
  %i.lf = phi ptr [ %.pre321, %._crit_edge319 ], [ %i.kq, %bb.ba ] ; 5 uses
  %i.lg = phi ptr [ %.pre320, %._crit_edge319 ], [ %i.kr, %bb.ba ] ; 4 uses
  %.195 = phi i1 [ %i.le, %._crit_edge319 ], [ %.094281, %bb.ba ] ; 2 uses
  %i.lh = add nuw i64 %.096280, 1                 ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = ashr exact i64 %i.lk, 4
  %i.lm = icmp ult i64 %i.lh, %i.ll
  br i1 %i.lm, label %bb.ba, label %._crit_edge284, !llvm.loop !1447

bb.bd:                                            ; preds = %._crit_edge284
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.ln = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ln, align 8
  %.not.i159 = icmp eq ptr %i.lg, %i.lf
  br i1 %.not.i159, label %bb.bi, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.bd
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.lp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lq = load ptr, ptr %i.lo, align 8, !tbaa !416, !noalias !1458
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 80
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !396, !noalias !1458
  %i.lt = ptrtoint ptr %i.lg to i64
  %i.lu = ptrtoint ptr %i.lf to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = ashr exact i64 %i.lv, 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %.lr.ph.i160
  %.09.i = phi i64 [ 0, %.lr.ph.i160 ], [ %i.mi, %bb.bh ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.09.i
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !397, !noalias !1458
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 104
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !232, !range !330, !noalias !1458, !noundef !384
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %.09.i ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !438, !noalias !1458 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !506, !noalias !1458 ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i162, label %.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = atomicrmw add ptr %i.mg, i64 1 monotonic, align 8, !noalias !1458 ; 0 uses
  br label %.sink.split.i

bb.bh:                                            ; preds = %bb.be
  %i.mi = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %i.lw
  br i1 %i.mj, label %bb.be, label %.sink.split.i, !llvm.loop !20

.sink.split.i:                                    ; preds = %bb.bh, %bb.bg, %bb.bf
  %.lcssa.sink.i = phi ptr [ %i.mf, %bb.bg ], [ null, %bb.bf ], [ null, %bb.bh ] ; 2 uses
  %.ph.i = phi ptr [ %i.md, %bb.bg ], [ %i.md, %bb.bf ], [ null, %bb.bh ]
  store ptr %.lcssa.sink.i, ptr %i.lp, align 8, !alias.scope !1458
  br label %bb.bi

bb.bi:                                            ; preds = %.thread376, %.sink.split.i, %bb.bd
  %i.mk = phi ptr [ null, %bb.bd ], [ %.lcssa.sink.i, %.sink.split.i ], [ null, %.thread376 ] ; 5 uses
  %i.ml = phi ptr [ null, %bb.bd ], [ %.ph.i, %.sink.split.i ], [ null, %.thread376 ]
  store ptr %i.ml, ptr %9, align 8, !alias.scope !1458
  invoke void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.not.i163 = icmp eq ptr %i.mk, null
  br i1 %.not.i163, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mn = atomicrmw add ptr %i.mm, i64 -1 acq_rel, align 8
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %bb.bl, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.bl:                                            ; preds = %bb.bk
  %i.mp = load ptr, ptr %i.mk, align 8, !tbaa !88
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(24) %i.mk) #46, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mk) #46
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.bj, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %.loopexit.split-lp230

bb.bn:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %._crit_edge284
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !438 ; 5 uses
  %.not218 = icmp eq ptr %i.mu, null
  br i1 %.not218, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  %i.mw = load i8, ptr %i.mv, align 8             ; 2 uses
  %i.mx = trunc i8 %i.mw to i1                    ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 88
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 73
  %i.nb = select i1 %i.mx, ptr %i.mz, ptr %i.na   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 80
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = lshr i8 %i.mw, 1
  %i.nf = zext nneg i8 %i.ne to i64
  %i.ng = select i1 %i.mx, i64 %i.nd, i64 %i.nf   ; 2 uses
  %i.nh = load i8, ptr %2, align 8                ; 2 uses
  %i.ni = trunc i8 %i.nh to i1                    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.nm = select i1 %i.ni, ptr %i.nk, ptr %i.nl   ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.no = load i64, ptr %i.nn, align 8
  %i.np = lshr i8 %i.nh, 1
  %i.nq = zext nneg i8 %i.np to i64
  %i.nr = select i1 %i.ni, i64 %i.no, i64 %i.nq   ; 2 uses
end_hunk_0
