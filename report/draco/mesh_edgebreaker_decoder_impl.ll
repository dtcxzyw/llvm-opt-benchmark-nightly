Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/mesh_edgebreaker_decoder_impl?download=true
inline.NumInlined: 5416
inline.NumDeleted: 1437
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5draco26MeshEdgebreakerDecoderImplINS_31MeshEdgebreakerTraversalDecoderEE21AssignPointsToCornersEi:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread274

bb.z:                                             ; preds = %.lr.ph354, %bb.y
  %i.hw = phi i64 [ 0, %.lr.ph354 ], [ %i.hu, %bb.y ]
  %.034353 = phi i32 [ 0, %.lr.ph354 ], [ %i.ht, %bb.y ]
  %i.hx = getelementptr inbounds nuw [320 x i8], ptr %i.hm, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !212, !noalias !656 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hr
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !242, !noalias !656
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hs
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !242, !noalias !657
  %.not301 = icmp eq i32 %i.ib, %i.id
  br i1 %.not301, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = ptrtoint ptr %.sroa.13221.1359 to i64
  %i.if = ptrtoint ptr %.sroa.0214.1360 to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 6 uses
  %i.ih = ashr exact i64 %i.ig, 2                 ; 4 uses
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.hr
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !216
  %.not.i.i115 = icmp eq ptr %.sroa.13221.1359, %.sroa.22.1357
  br i1 %.not.i.i115, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %.sroa.0186.0356, ptr %.sroa.13221.1359, align 4, !tbaa !216
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.13221.1359, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

bb.ac:                                            ; preds = %bb.aa
  %i.il = icmp eq i64 %i.ig, 9223372036854775804
  br i1 %i.il, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i117 = call i64 @llvm.umax.i64(i64 %i.ih, i64 1)
  %i.im = add nsw i64 %.sroa.speculated.i.i.i.i117, %i.ih ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.ih
  %i.io = call i64 @llvm.umin.i64(i64 %i.im, i64 2305843009213693951)
  %i.ip = select i1 %i.in, i64 2305843009213693951, i64 %i.io ; 3 uses
  %.not.i.i.i.i118 = icmp ne i64 %i.ip, 0
  call void @llvm.assume(i1 %.not.i.i.i.i118)
  %i.iq = shl nuw nsw i64 %i.ip, 2
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #19
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.ig ; 2 uses
  store i32 %.sroa.0186.0356, ptr %i.is, align 4, !tbaa !216
  %i.it = icmp sgt i64 %i.ig, 0
  br i1 %i.it, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119

bb.ae:                                            ; preds = %.noexc123
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ir, ptr align 4 %.sroa.0214.1360, i64 %i.ig, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119: ; preds = %bb.ae, %.noexc123
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %.not.i17.i.i.i120 = icmp eq ptr %.sroa.0214.1360, null
  br i1 %.not.i17.i.i.i120, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.1360, i64 noundef %i.ig) #18
  %.pre423.pre = load ptr, ptr %i.e, align 8, !tbaa !123
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119
  %.pre423 = phi ptr [ %.pre423.pre, %bb.af ], [ %.pre423434, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119 ] ; 4 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ip
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116, %bb.ad
  %lpad.loopexit.split-lp517 = landingpad { ptr, i32 }
          cleanup
  br label %.thread274

.critedge90:                                      ; preds = %bb.y, %.preheader303..critedge90_crit_edge
  %.pre-phi439 = phi i64 [ %.pre438, %.preheader303..critedge90_crit_edge ], [ %i.hr, %bb.y ]
  %.pre-phi = phi i64 [ %.pre437, %.preheader303..critedge90_crit_edge ], [ %i.hs, %bb.y ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %.pre-phi
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !216
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %.pre-phi439
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !216
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

_ZNSt6vectorIiSaIiEE9push_backEOi.exit124:        ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121, %.critedge90
  %.pre423435 = phi ptr [ %.pre423434, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.pre423434, %bb.ab ] ; 4 uses
  %.pre426 = phi ptr [ %.pre427, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.pre427, %bb.ab ] ; 4 uses
  %i.iz = phi ptr [ %i.hj, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.hj, %bb.ab ] ; 4 uses
  %i.ja = phi ptr [ %i.hk, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.hk, %bb.ab ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.1357, %.critedge90 ], [ %i.iv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.sroa.22.1357, %bb.ab ] ; 4 uses
  %.sroa.13221.2 = phi ptr [ %.sroa.13221.1359, %.critedge90 ], [ %i.iu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.ik, %bb.ab ] ; 4 uses
  %.sroa.0214.2 = phi ptr [ %.sroa.0214.1360, %.critedge90 ], [ %i.ir, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.sroa.0214.1360, %bb.ab ] ; 4 uses
  %i.jb = urem i32 %.sroa.0186.0356, 3
  %.not.i.i125 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i125, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124
  %i.jc = add i32 %.sroa.0186.0356, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124
  %i.jd = add i32 %.sroa.0186.0356, 2             ; 2 uses
  %i.je = icmp eq i32 %i.jd, -1
  br i1 %i.je, label %.loopexit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126
  %.sink.i9.i128 = phi i32 [ %i.jc, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126 ], [ %i.jd, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jg = zext i32 %.sink.i9.i128 to i64
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !111, !noalias !658
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !225, !noalias !658 ; 3 uses
  %i.jk = icmp eq i32 %i.jj, -1
  br i1 %i.jk, label %.loopexit, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127
  %i.jl = urem i32 %i.jj, 3
  %.not.i1.i129 = icmp eq i32 %i.jl, 0
  %.494 = select i1 %.not.i1.i129, i32 2, i32 -1
  %i.jm = add i32 %i.jj, %.494                    ; 3 uses
  %i.jn = icmp ne i32 %i.jm, -1
  %i.jo = icmp ne i32 %i.jm, %.sroa.0183.5
  %or.cond = and i1 %i.jn, %i.jo
  br i1 %or.cond, label %.preheader303, label %.loopexit, !llvm.loop !645

.loopexit:                                        ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114, %bb.h
  %.pre423433 = phi ptr [ %.pre423432, %bb.h ], [ %.pre423430, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.pre423430, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.pre423430, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.pre423435, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.pre423435, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.pre423435, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %.pre425 = phi ptr [ %.pre424, %bb.h ], [ %.pre428, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.pre428, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.pre428, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.pre426, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.pre426, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.pre426, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %i.jp = phi ptr [ %i.dl, %bb.h ], [ %i.gu, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %i.gu, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %i.gu, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %i.iz, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %i.iz, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %i.iz, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 3 uses
  %.sroa.22.4.ph = phi ptr [ %.sroa.22.0363, %bb.h ], [ %.sroa.22.9, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.22.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.22.9, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %.sroa.13221.4.ph = phi ptr [ %.sroa.13221.0364, %bb.h ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %.sroa.0214.4.ph = phi ptr [ %.sroa.0214.0365, %bb.h ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !220
  %i.jt = load ptr, ptr %i.jq, align 8, !tbaa !111 ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = shl i64 %i.jw, 30
  %i.jy = ashr i64 %i.jx, 32
  %.not384 = icmp slt i64 %indvars.iv.next, %i.jy
  br i1 %.not384, label %bb.h, label %.preheader302.loopexit, !llvm.loop !646

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph374
  %indvars.iv408.epil.init = phi i64 [ 0, %.lr.ph374 ], [ %indvars.iv.next409.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod546 = trunc i64 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod546)
  %i.jz = trunc nuw i64 %indvars.iv408.epil.init to i32
  %i.ka = mul i32 %i.jz, 3                        ; 3 uses
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !216
  %i.ke = add i32 %i.ka, 1
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !216
  %i.ki = add i32 %i.ka, 2
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !216
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv408.epil.init ; 3 uses
  store i32 %i.kd, ptr %i.km, align 4, !tbaa !275
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 %i.kh, ptr %i.kn, align 4, !tbaa !275
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 %i.kl, ptr %i.ko, align 4, !tbaa !275
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader302
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !259
  %i.kr = ptrtoint ptr %.sroa.0214.0.lcssa to i64
  %i.ks = sub i64 %.sroa.13221.0.lcssa, %i.kr
  %i.kt = lshr exact i64 %i.ks, 2
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 160
  store i32 %i.ku, ptr %i.kv, align 8, !tbaa !273
  br label %.critedge

bb.ag:                                            ; preds = %bb.ag, %.lr.ph374.new
  %indvars.iv408 = phi i64 [ 0, %.lr.ph374.new ], [ %indvars.iv.next409.1, %bb.ag ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph374.new ], [ %niter.next.1, %bb.ag ]
  %i.kw = trunc nuw i64 %indvars.iv408 to i32
  %i.kx = mul i32 %i.kw, 3                        ; 3 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !216
  %i.lb = or disjoint i32 %i.kx, 1
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !216
  %i.lf = add i32 %i.kx, 2
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !216
  %i.lj = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv408 ; 3 uses
  store i32 %i.la, ptr %i.lj, align 4, !tbaa !275
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i32 %i.le, ptr %i.lk, align 4, !tbaa !275
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 %i.li, ptr %i.ll, align 4, !tbaa !275
  %indvars.iv.next409 = or disjoint i64 %indvars.iv408, 1 ; 2 uses
  %i.lm = trunc nuw i64 %indvars.iv.next409 to i32
  %i.ln = mul i32 %i.lm, 3                        ; 3 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !216
  %i.lr = add i32 %i.ln, 1
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !216
  %i.lv = add i32 %i.ln, 2
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !216
  %i.lz = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv.next409 ; 3 uses
  store i32 %i.lq, ptr %i.lz, align 4, !tbaa !275
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 %i.lu, ptr %i.ma, align 4, !tbaa !275
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i32 %i.ly, ptr %i.mb, align 4, !tbaa !275
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !647

.critedge:                                        ; preds = %.lr.ph, %._crit_edge
  %.sroa.22.0347 = phi ptr [ %.sroa.22.0.lcssa, %._crit_edge ], [ %.sroa.22.0363, %.lr.ph ]
  %.sroa.0214.0335 = phi ptr [ %.sroa.0214.0.lcssa, %._crit_edge ], [ %.sroa.0214.0365, %.lr.ph ] ; 3 uses
  %i.mc = phi i1 [ true, %._crit_edge ], [ false, %.lr.ph ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0206.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.md = ptrtoint ptr %.sroa.14.0 to i64
  %i.me = ptrtoint ptr %.sroa.0206.0 to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0, i64 noundef %i.mf) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge, %bb.ah
  %.not.i.i.i143 = icmp eq ptr %.sroa.0214.0335, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit144, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.mg = ptrtoint ptr %.sroa.22.0347 to i64
  %i.mh = ptrtoint ptr %.sroa.0214.0335 to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0335, i64 noundef %i.mi) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit144

.thread274:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp308.loopexit.split-lp
  %.sroa.22.5 = phi ptr [ %.sroa.13221.0364, %.loopexit.split-lp308.loopexit.split-lp ], [ %.sroa.13221.1359, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0214.5 = phi ptr [ %.sroa.0214.0365, %.loopexit.split-lp308.loopexit.split-lp ], [ %.sroa.0214.1360, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn78.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp308.loopexit.split-lp ], [ %lpad.loopexit.split-lp517, %.loopexit.split-lp.loopexit.split-lp ]
  %i.mj = ptrtoint ptr %.sroa.14.0 to i64
  %i.mk = ptrtoint ptr %.sroa.0206.0 to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0, i64 noundef %i.ml) #18
  %.not.i.i.i147 = icmp eq ptr %.sroa.0214.5, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIiSaIiEED2Ev.exit148, label %_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290

_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290:       ; preds = %.thread274
  %i.mm = ptrtoint ptr %.sroa.22.5 to i64
  %i.mn = ptrtoint ptr %.sroa.0214.5 to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.5, i64 noundef %i.mo) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit148

_ZNSt6vectorIiSaIiEED2Ev.exit148:                 ; preds = %.thread274, %_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290
  resume { ptr, i32 } %.pn78.pn.pn

_ZNSt6vectorIiSaIiEED2Ev.exit144:                 ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit, %._crit_edge379
  %.1063 = phi i1 [ true, %._crit_edge379 ], [ %i.mc, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.mc, %bb.ai ]
  ret i1 %.1063
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5draco26MeshEdgebreakerDecoderImplINS_31MeshEdgebreakerTraversalDecoderEE19OnAttributesDecodedEv(ptr noundef nonnull align 8 dereferenceable(744) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5draco26MeshEdgebreakerDecoderImplINS_31MeshEdgebreakerTraversalDecoderEE10GetDecoderEv(ptr noundef nonnull align 8 dereferenceable(744) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5draco26MeshEdgebreakerDecoderImplINS_31MeshEdgebreakerTraversalDecoderEE14GetCornerTableEv(ptr noundef nonnull align 8 dereferenceable(744) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5draco26MeshEdgebreakerDecoderImplINS_31MeshEdgebreakerTraversalDecoderEE18SetOppositeCornersENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES5_(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = load i32, ptr %1, align 4, !tbaa !225
  %i.d = load i32, ptr %2, align 4, !tbaa !225    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  store i32 %i.d, ptr %i.h, align 4, !tbaa !225
  %i.i = load i32, ptr %1, align 4, !tbaa !225
  %i.j = zext i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !225
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !225
  store i32 %i.e, ptr %i.b, align 4, !tbaa !225
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !220
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !111    ; 7 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load i32, ptr %1, align 4, !tbaa !225
  store i32 %i.t, ptr %i.s, align 4, !tbaa !225
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.u = add i64 %i.h, -4
  %i.v = sub i64 %i.u, %i.i                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ab ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.g, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep5, align 4, !tbaa !225
  %wide.load6 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !225
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !225
  store <4 x i32> %wide.load6, ptr %i.ad, align 4, !tbaa !225
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %i.af = load i32, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !225
  store i32 %i.af, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !225
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !660
end_hunk_0
begin_hunk_1_@_ZN5draco26MeshEdgebreakerDecoderImplINS_41MeshEdgebreakerTraversalPredictiveDecoderEE21AssignPointsToCornersEi:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread274

bb.z:                                             ; preds = %.lr.ph354, %bb.y
  %i.hw = phi i64 [ 0, %.lr.ph354 ], [ %i.hu, %bb.y ]
  %.034353 = phi i32 [ 0, %.lr.ph354 ], [ %i.ht, %bb.y ]
  %i.hx = getelementptr inbounds nuw [320 x i8], ptr %i.hm, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !212, !noalias !929 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hr
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !242, !noalias !929
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hs
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !242, !noalias !930
  %.not301 = icmp eq i32 %i.ib, %i.id
  br i1 %.not301, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = ptrtoint ptr %.sroa.13221.1359 to i64
  %i.if = ptrtoint ptr %.sroa.0214.1360 to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 6 uses
  %i.ih = ashr exact i64 %i.ig, 2                 ; 4 uses
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.hr
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !216
  %.not.i.i115 = icmp eq ptr %.sroa.13221.1359, %.sroa.22.1357
  br i1 %.not.i.i115, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %.sroa.0186.0356, ptr %.sroa.13221.1359, align 4, !tbaa !216
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.13221.1359, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

bb.ac:                                            ; preds = %bb.aa
  %i.il = icmp eq i64 %i.ig, 9223372036854775804
  br i1 %i.il, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i117 = call i64 @llvm.umax.i64(i64 %i.ih, i64 1)
  %i.im = add nsw i64 %.sroa.speculated.i.i.i.i117, %i.ih ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.ih
  %i.io = call i64 @llvm.umin.i64(i64 %i.im, i64 2305843009213693951)
  %i.ip = select i1 %i.in, i64 2305843009213693951, i64 %i.io ; 3 uses
  %.not.i.i.i.i118 = icmp ne i64 %i.ip, 0
  call void @llvm.assume(i1 %.not.i.i.i.i118)
  %i.iq = shl nuw nsw i64 %i.ip, 2
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #19
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.ig ; 2 uses
  store i32 %.sroa.0186.0356, ptr %i.is, align 4, !tbaa !216
  %i.it = icmp sgt i64 %i.ig, 0
  br i1 %i.it, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119

bb.ae:                                            ; preds = %.noexc123
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ir, ptr align 4 %.sroa.0214.1360, i64 %i.ig, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119: ; preds = %bb.ae, %.noexc123
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %.not.i17.i.i.i120 = icmp eq ptr %.sroa.0214.1360, null
  br i1 %.not.i17.i.i.i120, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.1360, i64 noundef %i.ig) #18
  %.pre423.pre = load ptr, ptr %i.e, align 8, !tbaa !123
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119
  %.pre423 = phi ptr [ %.pre423.pre, %bb.af ], [ %.pre423434, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119 ] ; 4 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ip
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116, %bb.ad
  %lpad.loopexit.split-lp517 = landingpad { ptr, i32 }
          cleanup
  br label %.thread274

.critedge90:                                      ; preds = %bb.y, %.preheader303..critedge90_crit_edge
  %.pre-phi439 = phi i64 [ %.pre438, %.preheader303..critedge90_crit_edge ], [ %i.hr, %bb.y ]
  %.pre-phi = phi i64 [ %.pre437, %.preheader303..critedge90_crit_edge ], [ %i.hs, %bb.y ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %.pre-phi
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !216
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %.pre-phi439
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !216
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

_ZNSt6vectorIiSaIiEE9push_backEOi.exit124:        ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121, %.critedge90
  %.pre423435 = phi ptr [ %.pre423434, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.pre423434, %bb.ab ] ; 4 uses
  %.pre426 = phi ptr [ %.pre427, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.pre427, %bb.ab ] ; 4 uses
  %i.iz = phi ptr [ %i.hj, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.hj, %bb.ab ] ; 4 uses
  %i.ja = phi ptr [ %i.hk, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.hk, %bb.ab ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.1357, %.critedge90 ], [ %i.iv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.sroa.22.1357, %bb.ab ] ; 4 uses
  %.sroa.13221.2 = phi ptr [ %.sroa.13221.1359, %.critedge90 ], [ %i.iu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.ik, %bb.ab ] ; 4 uses
  %.sroa.0214.2 = phi ptr [ %.sroa.0214.1360, %.critedge90 ], [ %i.ir, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.sroa.0214.1360, %bb.ab ] ; 4 uses
  %i.jb = urem i32 %.sroa.0186.0356, 3
  %.not.i.i125 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i125, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124
  %i.jc = add i32 %.sroa.0186.0356, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124
  %i.jd = add i32 %.sroa.0186.0356, 2             ; 2 uses
  %i.je = icmp eq i32 %i.jd, -1
  br i1 %i.je, label %.loopexit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126
  %.sink.i9.i128 = phi i32 [ %i.jc, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126 ], [ %i.jd, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jg = zext i32 %.sink.i9.i128 to i64
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !111, !noalias !931
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !225, !noalias !931 ; 3 uses
  %i.jk = icmp eq i32 %i.jj, -1
  br i1 %i.jk, label %.loopexit, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127
  %i.jl = urem i32 %i.jj, 3
  %.not.i1.i129 = icmp eq i32 %i.jl, 0
  %.494 = select i1 %.not.i1.i129, i32 2, i32 -1
  %i.jm = add i32 %i.jj, %.494                    ; 3 uses
  %i.jn = icmp ne i32 %i.jm, -1
  %i.jo = icmp ne i32 %i.jm, %.sroa.0183.5
  %or.cond = and i1 %i.jn, %i.jo
  br i1 %or.cond, label %.preheader303, label %.loopexit, !llvm.loop !918

.loopexit:                                        ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114, %bb.h
  %.pre423433 = phi ptr [ %.pre423432, %bb.h ], [ %.pre423430, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.pre423430, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.pre423430, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.pre423435, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.pre423435, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.pre423435, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %.pre425 = phi ptr [ %.pre424, %bb.h ], [ %.pre428, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.pre428, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.pre428, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.pre426, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.pre426, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.pre426, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %i.jp = phi ptr [ %i.dl, %bb.h ], [ %i.gu, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %i.gu, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %i.gu, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %i.iz, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %i.iz, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %i.iz, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 3 uses
  %.sroa.22.4.ph = phi ptr [ %.sroa.22.0363, %bb.h ], [ %.sroa.22.9, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.22.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.22.9, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %.sroa.13221.4.ph = phi ptr [ %.sroa.13221.0364, %bb.h ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %.sroa.0214.4.ph = phi ptr [ %.sroa.0214.0365, %bb.h ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !220
  %i.jt = load ptr, ptr %i.jq, align 8, !tbaa !111 ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = shl i64 %i.jw, 30
  %i.jy = ashr i64 %i.jx, 32
  %.not384 = icmp slt i64 %indvars.iv.next, %i.jy
  br i1 %.not384, label %bb.h, label %.preheader302.loopexit, !llvm.loop !919

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph374
  %indvars.iv408.epil.init = phi i64 [ 0, %.lr.ph374 ], [ %indvars.iv.next409.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod546 = trunc i64 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod546)
  %i.jz = trunc nuw i64 %indvars.iv408.epil.init to i32
  %i.ka = mul i32 %i.jz, 3                        ; 3 uses
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !216
  %i.ke = add i32 %i.ka, 1
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !216
  %i.ki = add i32 %i.ka, 2
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !216
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv408.epil.init ; 3 uses
  store i32 %i.kd, ptr %i.km, align 4, !tbaa !275
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 %i.kh, ptr %i.kn, align 4, !tbaa !275
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 %i.kl, ptr %i.ko, align 4, !tbaa !275
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader302
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !259
  %i.kr = ptrtoint ptr %.sroa.0214.0.lcssa to i64
  %i.ks = sub i64 %.sroa.13221.0.lcssa, %i.kr
  %i.kt = lshr exact i64 %i.ks, 2
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 160
  store i32 %i.ku, ptr %i.kv, align 8, !tbaa !273
  br label %.critedge

bb.ag:                                            ; preds = %bb.ag, %.lr.ph374.new
  %indvars.iv408 = phi i64 [ 0, %.lr.ph374.new ], [ %indvars.iv.next409.1, %bb.ag ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph374.new ], [ %niter.next.1, %bb.ag ]
  %i.kw = trunc nuw i64 %indvars.iv408 to i32
  %i.kx = mul i32 %i.kw, 3                        ; 3 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !216
  %i.lb = or disjoint i32 %i.kx, 1
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !216
  %i.lf = add i32 %i.kx, 2
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !216
  %i.lj = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv408 ; 3 uses
  store i32 %i.la, ptr %i.lj, align 4, !tbaa !275
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i32 %i.le, ptr %i.lk, align 4, !tbaa !275
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 %i.li, ptr %i.ll, align 4, !tbaa !275
  %indvars.iv.next409 = or disjoint i64 %indvars.iv408, 1 ; 2 uses
  %i.lm = trunc nuw i64 %indvars.iv.next409 to i32
  %i.ln = mul i32 %i.lm, 3                        ; 3 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !216
  %i.lr = add i32 %i.ln, 1
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !216
  %i.lv = add i32 %i.ln, 2
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !216
  %i.lz = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv.next409 ; 3 uses
  store i32 %i.lq, ptr %i.lz, align 4, !tbaa !275
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 %i.lu, ptr %i.ma, align 4, !tbaa !275
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i32 %i.ly, ptr %i.mb, align 4, !tbaa !275
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !920

.critedge:                                        ; preds = %.lr.ph, %._crit_edge
  %.sroa.22.0347 = phi ptr [ %.sroa.22.0.lcssa, %._crit_edge ], [ %.sroa.22.0363, %.lr.ph ]
  %.sroa.0214.0335 = phi ptr [ %.sroa.0214.0.lcssa, %._crit_edge ], [ %.sroa.0214.0365, %.lr.ph ] ; 3 uses
  %i.mc = phi i1 [ true, %._crit_edge ], [ false, %.lr.ph ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0206.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.md = ptrtoint ptr %.sroa.14.0 to i64
  %i.me = ptrtoint ptr %.sroa.0206.0 to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0, i64 noundef %i.mf) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge, %bb.ah
  %.not.i.i.i143 = icmp eq ptr %.sroa.0214.0335, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit144, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.mg = ptrtoint ptr %.sroa.22.0347 to i64
  %i.mh = ptrtoint ptr %.sroa.0214.0335 to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0335, i64 noundef %i.mi) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit144

.thread274:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp308.loopexit.split-lp
  %.sroa.22.5 = phi ptr [ %.sroa.13221.0364, %.loopexit.split-lp308.loopexit.split-lp ], [ %.sroa.13221.1359, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0214.5 = phi ptr [ %.sroa.0214.0365, %.loopexit.split-lp308.loopexit.split-lp ], [ %.sroa.0214.1360, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn78.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp308.loopexit.split-lp ], [ %lpad.loopexit.split-lp517, %.loopexit.split-lp.loopexit.split-lp ]
  %i.mj = ptrtoint ptr %.sroa.14.0 to i64
  %i.mk = ptrtoint ptr %.sroa.0206.0 to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0, i64 noundef %i.ml) #18
  %.not.i.i.i147 = icmp eq ptr %.sroa.0214.5, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIiSaIiEED2Ev.exit148, label %_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290

_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290:       ; preds = %.thread274
  %i.mm = ptrtoint ptr %.sroa.22.5 to i64
  %i.mn = ptrtoint ptr %.sroa.0214.5 to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.5, i64 noundef %i.mo) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit148

_ZNSt6vectorIiSaIiEED2Ev.exit148:                 ; preds = %.thread274, %_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290
  resume { ptr, i32 } %.pn78.pn.pn

_ZNSt6vectorIiSaIiEED2Ev.exit144:                 ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit, %._crit_edge379
  %.1063 = phi i1 [ true, %._crit_edge379 ], [ %i.mc, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.mc, %bb.ai ]
  ret i1 %.1063
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5draco26MeshEdgebreakerDecoderImplINS_41MeshEdgebreakerTraversalPredictiveDecoderEE19OnAttributesDecodedEv(ptr noundef nonnull align 8 dereferenceable(816) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5draco26MeshEdgebreakerDecoderImplINS_41MeshEdgebreakerTraversalPredictiveDecoderEE10GetDecoderEv(ptr noundef nonnull align 8 dereferenceable(816) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5draco26MeshEdgebreakerDecoderImplINS_41MeshEdgebreakerTraversalPredictiveDecoderEE14GetCornerTableEv(ptr noundef nonnull align 8 dereferenceable(816) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5draco26MeshEdgebreakerDecoderImplINS_41MeshEdgebreakerTraversalPredictiveDecoderEE18SetOppositeCornersENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES5_(ptr noundef nonnull align 8 dereferenceable(816) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = load i32, ptr %1, align 4, !tbaa !225
  %i.d = load i32, ptr %2, align 4, !tbaa !225    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  store i32 %i.d, ptr %i.h, align 4, !tbaa !225
  %i.i = load i32, ptr %1, align 4, !tbaa !225
  %i.j = zext i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !225
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5draco41MeshEdgebreakerTraversalPredictiveDecoder22NewActiveCornerReachedENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !225    ; 8 uses
  %i.c = icmp eq i32 %i.b, -1                     ; 4 uses
  br i1 %i.c, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.e = shufflevector <2 x i32> %i.d, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.f = add nuw <2 x i32> %i.e, <i32 0, i32 1>
  %i.g = urem <2 x i32> %i.f, splat (i32 3)
  %i.h = icmp eq <2 x i32> %i.g, zeroinitializer  ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 1
  %spec.select.i.v = select i1 %i.i, i32 -2, i32 1
  %spec.select.i = add i32 %i.b, %spec.select.i.v ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.b, -1
  br label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = add i32 %i.b, 2
  br label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sink.i64 = phi i32 [ %spec.select.i, %bb.c ], [ %spec.select.i, %bb.d ], [ -1, %bb.a ] ; 8 uses
  %.sink.i2 = phi i32 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ -1, %bb.a ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !294  ; 2 uses
  switch i32 %i.n, label %bb.t [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 5, label %bb.h
    i32 3, label %bb.l
    i32 7, label %bb.p
  ]

bb.e:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !306  ; 2 uses
  %i.q = icmp eq i32 %.sink.i64, -1
  br i1 %i.q, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = zext i32 %.sink.i64 to i64
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !212, !noalias !980
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !tbaa !242, !noalias !980
  %i.v = zext i32 %i.u to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.e, %bb.f
  %storemerge.i = phi i64 [ %i.v, %bb.f ], [ 4294967295, %bb.e ]
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %storemerge.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !216
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !216
  %i.aa = icmp eq i32 %.sink.i2, -1
  br i1 %i.aa, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit4, label %bb.g

bb.g:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ab = zext i32 %.sink.i2 to i64
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !212, !noalias !981
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242, !noalias !981
  %i.af = zext i32 %i.ae to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit4

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit4: ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.g
  %storemerge.i3 = phi i64 [ %i.af, %bb.g ], [ 4294967295, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %storemerge.i3 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !216
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !216
  br label %thread-pre-split

bb.h:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !306 ; 3 uses
  br i1 %i.c, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = zext i32 %i.b to i64
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !212, !noalias !982
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242, !noalias !982
  %i.ap = zext i32 %i.ao to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit6

end_hunk_1
begin_hunk_2_@_ZN5draco26MeshEdgebreakerDecoderImplINS_38MeshEdgebreakerTraversalValenceDecoderEE21AssignPointsToCornersEi:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread274

bb.z:                                             ; preds = %.lr.ph354, %bb.y
  %i.hw = phi i64 [ 0, %.lr.ph354 ], [ %i.hu, %bb.y ]
  %.034353 = phi i32 [ 0, %.lr.ph354 ], [ %i.ht, %bb.y ]
  %i.hx = getelementptr inbounds nuw [320 x i8], ptr %i.hm, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !212, !noalias !1265 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hr
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !242, !noalias !1265
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hs
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !242, !noalias !1266
  %.not301 = icmp eq i32 %i.ib, %i.id
  br i1 %.not301, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = ptrtoint ptr %.sroa.13221.1359 to i64
  %i.if = ptrtoint ptr %.sroa.0214.1360 to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 6 uses
  %i.ih = ashr exact i64 %i.ig, 2                 ; 4 uses
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.hr
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !216
  %.not.i.i115 = icmp eq ptr %.sroa.13221.1359, %.sroa.22.1357
  br i1 %.not.i.i115, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %.sroa.0186.0356, ptr %.sroa.13221.1359, align 4, !tbaa !216
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.13221.1359, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

bb.ac:                                            ; preds = %bb.aa
  %i.il = icmp eq i64 %i.ig, 9223372036854775804
  br i1 %i.il, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i117 = call i64 @llvm.umax.i64(i64 %i.ih, i64 1)
  %i.im = add nsw i64 %.sroa.speculated.i.i.i.i117, %i.ih ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.ih
  %i.io = call i64 @llvm.umin.i64(i64 %i.im, i64 2305843009213693951)
  %i.ip = select i1 %i.in, i64 2305843009213693951, i64 %i.io ; 3 uses
  %.not.i.i.i.i118 = icmp ne i64 %i.ip, 0
  call void @llvm.assume(i1 %.not.i.i.i.i118)
  %i.iq = shl nuw nsw i64 %i.ip, 2
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #19
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.ig ; 2 uses
  store i32 %.sroa.0186.0356, ptr %i.is, align 4, !tbaa !216
  %i.it = icmp sgt i64 %i.ig, 0
  br i1 %i.it, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119

bb.ae:                                            ; preds = %.noexc123
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ir, ptr align 4 %.sroa.0214.1360, i64 %i.ig, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119: ; preds = %bb.ae, %.noexc123
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %.not.i17.i.i.i120 = icmp eq ptr %.sroa.0214.1360, null
  br i1 %.not.i17.i.i.i120, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.1360, i64 noundef %i.ig) #18
  %.pre423.pre = load ptr, ptr %i.e, align 8, !tbaa !123
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119
  %.pre423 = phi ptr [ %.pre423.pre, %bb.af ], [ %.pre423434, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i119 ] ; 4 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ip
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i116, %bb.ad
  %lpad.loopexit.split-lp517 = landingpad { ptr, i32 }
          cleanup
  br label %.thread274

.critedge90:                                      ; preds = %bb.y, %.preheader303..critedge90_crit_edge
  %.pre-phi439 = phi i64 [ %.pre438, %.preheader303..critedge90_crit_edge ], [ %i.hr, %bb.y ]
  %.pre-phi = phi i64 [ %.pre437, %.preheader303..critedge90_crit_edge ], [ %i.hs, %bb.y ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %.pre-phi
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !216
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %.pre-phi439
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !216
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124

_ZNSt6vectorIiSaIiEE9push_backEOi.exit124:        ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121, %.critedge90
  %.pre423435 = phi ptr [ %.pre423434, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.pre423434, %bb.ab ] ; 4 uses
  %.pre426 = phi ptr [ %.pre427, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.pre427, %bb.ab ] ; 4 uses
  %i.iz = phi ptr [ %i.hj, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.hj, %bb.ab ] ; 4 uses
  %i.ja = phi ptr [ %i.hk, %.critedge90 ], [ %.pre423, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.hk, %bb.ab ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.1357, %.critedge90 ], [ %i.iv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.sroa.22.1357, %bb.ab ] ; 4 uses
  %.sroa.13221.2 = phi ptr [ %.sroa.13221.1359, %.critedge90 ], [ %i.iu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %i.ik, %bb.ab ] ; 4 uses
  %.sroa.0214.2 = phi ptr [ %.sroa.0214.1360, %.critedge90 ], [ %i.ir, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i121 ], [ %.sroa.0214.1360, %bb.ab ] ; 4 uses
  %i.jb = urem i32 %.sroa.0186.0356, 3
  %.not.i.i125 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i125, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124
  %i.jc = add i32 %.sroa.0186.0356, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit124
  %i.jd = add i32 %.sroa.0186.0356, 2             ; 2 uses
  %i.je = icmp eq i32 %i.jd, -1
  br i1 %i.je, label %.loopexit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126
  %.sink.i9.i128 = phi i32 [ %i.jc, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i126 ], [ %i.jd, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jg = zext i32 %.sink.i9.i128 to i64
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !111, !noalias !1267
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !225, !noalias !1267 ; 3 uses
  %i.jk = icmp eq i32 %i.jj, -1
  br i1 %i.jk, label %.loopexit, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127
  %i.jl = urem i32 %i.jj, 3
  %.not.i1.i129 = icmp eq i32 %i.jl, 0
  %.494 = select i1 %.not.i1.i129, i32 2, i32 -1
  %i.jm = add i32 %i.jj, %.494                    ; 3 uses
  %i.jn = icmp ne i32 %i.jm, -1
  %i.jo = icmp ne i32 %i.jm, %.sroa.0183.5
  %or.cond = and i1 %i.jn, %i.jo
  br i1 %or.cond, label %.preheader303, label %.loopexit, !llvm.loop !1254

.loopexit:                                        ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114, %bb.h
  %.pre423433 = phi ptr [ %.pre423432, %bb.h ], [ %.pre423430, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.pre423430, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.pre423430, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.pre423435, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.pre423435, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.pre423435, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %.pre425 = phi ptr [ %.pre424, %bb.h ], [ %.pre428, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.pre428, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.pre428, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.pre426, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.pre426, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.pre426, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ]
  %i.jp = phi ptr [ %i.dl, %bb.h ], [ %i.gu, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %i.gu, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %i.gu, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %i.iz, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %i.iz, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %i.iz, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 3 uses
  %.sroa.22.4.ph = phi ptr [ %.sroa.22.0363, %bb.h ], [ %.sroa.22.9, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.22.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.22.9, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.22.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %.sroa.13221.4.ph = phi ptr [ %.sroa.13221.0364, %bb.h ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.13221.6, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.13221.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %.sroa.0214.4.ph = phi ptr [ %.sroa.0214.0365, %bb.h ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit114 ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i109 ], [ %.sroa.0214.9, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i113 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit132 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i127 ], [ %.sroa.0214.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i131 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !220
  %i.jt = load ptr, ptr %i.jq, align 8, !tbaa !111 ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = shl i64 %i.jw, 30
  %i.jy = ashr i64 %i.jx, 32
  %.not384 = icmp slt i64 %indvars.iv.next, %i.jy
  br i1 %.not384, label %bb.h, label %.preheader302.loopexit, !llvm.loop !1255

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph374
  %indvars.iv408.epil.init = phi i64 [ 0, %.lr.ph374 ], [ %indvars.iv.next409.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod546 = trunc i64 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod546)
  %i.jz = trunc nuw i64 %indvars.iv408.epil.init to i32
  %i.ka = mul i32 %i.jz, 3                        ; 3 uses
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !216
  %i.ke = add i32 %i.ka, 1
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !216
  %i.ki = add i32 %i.ka, 2
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !216
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv408.epil.init ; 3 uses
  store i32 %i.kd, ptr %i.km, align 4, !tbaa !275
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 %i.kh, ptr %i.kn, align 4, !tbaa !275
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 %i.kl, ptr %i.ko, align 4, !tbaa !275
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader302
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !259
  %i.kr = ptrtoint ptr %.sroa.0214.0.lcssa to i64
  %i.ks = sub i64 %.sroa.13221.0.lcssa, %i.kr
  %i.kt = lshr exact i64 %i.ks, 2
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 160
  store i32 %i.ku, ptr %i.kv, align 8, !tbaa !273
  br label %.critedge

bb.ag:                                            ; preds = %bb.ag, %.lr.ph374.new
  %indvars.iv408 = phi i64 [ 0, %.lr.ph374.new ], [ %indvars.iv.next409.1, %bb.ag ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph374.new ], [ %niter.next.1, %bb.ag ]
  %i.kw = trunc nuw i64 %indvars.iv408 to i32
  %i.kx = mul i32 %i.kw, 3                        ; 3 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !216
  %i.lb = or disjoint i32 %i.kx, 1
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !216
  %i.lf = add i32 %i.kx, 2
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !216
  %i.lj = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv408 ; 3 uses
  store i32 %i.la, ptr %i.lj, align 4, !tbaa !275
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i32 %i.le, ptr %i.lk, align 4, !tbaa !275
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 %i.li, ptr %i.ll, align 4, !tbaa !275
  %indvars.iv.next409 = or disjoint i64 %indvars.iv408, 1 ; 2 uses
  %i.lm = trunc nuw i64 %indvars.iv.next409 to i32
  %i.ln = mul i32 %i.lm, 3                        ; 3 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !216
  %i.lr = add i32 %i.ln, 1
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !216
  %i.lv = add i32 %i.ln, 2
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !216
  %i.lz = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv.next409 ; 3 uses
  store i32 %i.lq, ptr %i.lz, align 4, !tbaa !275
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 %i.lu, ptr %i.ma, align 4, !tbaa !275
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i32 %i.ly, ptr %i.mb, align 4, !tbaa !275
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !1256

.critedge:                                        ; preds = %.lr.ph, %._crit_edge
  %.sroa.22.0347 = phi ptr [ %.sroa.22.0.lcssa, %._crit_edge ], [ %.sroa.22.0363, %.lr.ph ]
  %.sroa.0214.0335 = phi ptr [ %.sroa.0214.0.lcssa, %._crit_edge ], [ %.sroa.0214.0365, %.lr.ph ] ; 3 uses
  %i.mc = phi i1 [ true, %._crit_edge ], [ false, %.lr.ph ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0206.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.md = ptrtoint ptr %.sroa.14.0 to i64
  %i.me = ptrtoint ptr %.sroa.0206.0 to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0, i64 noundef %i.mf) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge, %bb.ah
  %.not.i.i.i143 = icmp eq ptr %.sroa.0214.0335, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit144, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.mg = ptrtoint ptr %.sroa.22.0347 to i64
  %i.mh = ptrtoint ptr %.sroa.0214.0335 to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0335, i64 noundef %i.mi) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit144

.thread274:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp308.loopexit.split-lp
  %.sroa.22.5 = phi ptr [ %.sroa.13221.0364, %.loopexit.split-lp308.loopexit.split-lp ], [ %.sroa.13221.1359, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0214.5 = phi ptr [ %.sroa.0214.0365, %.loopexit.split-lp308.loopexit.split-lp ], [ %.sroa.0214.1360, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn78.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp308.loopexit.split-lp ], [ %lpad.loopexit.split-lp517, %.loopexit.split-lp.loopexit.split-lp ]
  %i.mj = ptrtoint ptr %.sroa.14.0 to i64
  %i.mk = ptrtoint ptr %.sroa.0206.0 to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0, i64 noundef %i.ml) #18
  %.not.i.i.i147 = icmp eq ptr %.sroa.0214.5, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIiSaIiEED2Ev.exit148, label %_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290

_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290:       ; preds = %.thread274
  %i.mm = ptrtoint ptr %.sroa.22.5 to i64
  %i.mn = ptrtoint ptr %.sroa.0214.5 to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.5, i64 noundef %i.mo) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit148

_ZNSt6vectorIiSaIiEED2Ev.exit148:                 ; preds = %.thread274, %_ZNSt6vectorIiSaIiEED2Ev.exit146.thread290
  resume { ptr, i32 } %.pn78.pn.pn

_ZNSt6vectorIiSaIiEED2Ev.exit144:                 ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit, %._crit_edge379
  %.1063 = phi i1 [ true, %._crit_edge379 ], [ %i.mc, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.mc, %bb.ai ]
  ret i1 %.1063
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5draco26MeshEdgebreakerDecoderImplINS_38MeshEdgebreakerTraversalValenceDecoderEE19OnAttributesDecodedEv(ptr noundef nonnull align 8 dereferenceable(848) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5draco26MeshEdgebreakerDecoderImplINS_38MeshEdgebreakerTraversalValenceDecoderEE10GetDecoderEv(ptr noundef nonnull align 8 dereferenceable(848) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !327
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5draco26MeshEdgebreakerDecoderImplINS_38MeshEdgebreakerTraversalValenceDecoderEE14GetCornerTableEv(ptr noundef nonnull align 8 dereferenceable(848) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5draco26MeshEdgebreakerDecoderImplINS_38MeshEdgebreakerTraversalValenceDecoderEE18SetOppositeCornersENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES5_(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = load i32, ptr %1, align 4, !tbaa !225
  %i.d = load i32, ptr %2, align 4, !tbaa !225    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  store i32 %i.d, ptr %i.h, align 4, !tbaa !225
  %i.i = load i32, ptr %1, align 4, !tbaa !225
  %i.j = zext i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !225
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5draco38MeshEdgebreakerTraversalValenceDecoder22NewActiveCornerReachedENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !225    ; 8 uses
  %i.c = icmp eq i32 %i.b, -1                     ; 4 uses
  br i1 %i.c, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.e = shufflevector <2 x i32> %i.d, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.f = add nuw <2 x i32> %i.e, <i32 0, i32 1>
  %i.g = urem <2 x i32> %i.f, splat (i32 3)
  %i.h = icmp eq <2 x i32> %i.g, zeroinitializer  ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 1
  %spec.select.i.v = select i1 %i.i, i32 -2, i32 1
  %spec.select.i = add i32 %i.b, %spec.select.i.v ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.b, -1
  br label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = add i32 %i.b, 2
  br label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sink.i66 = phi i32 [ %spec.select.i, %bb.c ], [ %spec.select.i, %bb.d ], [ -1, %bb.a ] ; 10 uses
  %.sink.i8 = phi i32 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ -1, %bb.a ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load i32, ptr %i.m, align 8, !tbaa !343
  switch i32 %i.n, label %bb.t [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 5, label %bb.h
    i32 3, label %bb.l
    i32 7, label %bb.p
  ]

bb.e:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !333  ; 2 uses
  %i.q = icmp eq i32 %.sink.i66, -1
  br i1 %i.q, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = zext i32 %.sink.i66 to i64
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !212, !noalias !1316
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !tbaa !242, !noalias !1316
  %i.v = zext i32 %i.u to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.e, %bb.f
  %storemerge.i = phi i64 [ %i.v, %bb.f ], [ 4294967295, %bb.e ]
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %storemerge.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !216
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !216
  %i.aa = icmp eq i32 %.sink.i8, -1
  br i1 %i.aa, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ab = zext i32 %.sink.i8 to i64
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !212, !noalias !1317
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242, !noalias !1317
  %i.af = zext i32 %i.ae to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit10

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit10: ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.g
  %storemerge.i9 = phi i64 [ %i.af, %bb.g ], [ 4294967295, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %storemerge.i9 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !216
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !216
  br label %bb.t

bb.h:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !333 ; 3 uses
  br i1 %i.c, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = zext i32 %i.b to i64
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !212, !noalias !1318
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242, !noalias !1318
  %i.ap = zext i32 %i.ao to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit12

end_hunk_2
