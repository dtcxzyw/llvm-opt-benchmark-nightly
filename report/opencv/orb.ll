Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/orb?download=true
inline.NumInlined: 877
inline.NumDeleted: 379
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv8ORB_Impl16detectAndComputeERKNS_11_InputArrayES3_RSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayEb:bb.a

._crit_edge717:                                   ; preds = %._crit_edge717.loopexit, %_ZNSt12_Vector_baseISt6vectorIN2cv8KeyPointESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.anw = phi ptr [ %.pre791, %._crit_edge717.loopexit ], [ %i.alz, %_ZNSt12_Vector_baseISt6vectorIN2cv8KeyPointESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i ]
  %i.anx = phi ptr [ %.pre, %._crit_edge717.loopexit ], [ %i.ama, %_ZNSt12_Vector_baseISt6vectorIN2cv8KeyPointESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i ] ; 2 uses
  %.not.i.i299 = icmp eq ptr %i.anw, %i.anx
  br i1 %.not.i.i299, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge717
  store ptr %i.anx, ptr %i.ar, align 8, !tbaa !39
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit: ; preds = %._crit_edge717, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i
  br i1 %.not.i.i.i.i891, label %._crit_edge720, label %.lr.ph719.preheader

.lr.ph719.preheader:                              ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit
  %wide.trip.count782 = zext nneg i32 %.1880889 to i64
  br label %.lr.ph719

.lr.ph719:                                        ; preds = %.lr.ph719.preheader, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS7_EET0_T_SC_SB_.exit
  %indvars.iv778 = phi i64 [ 0, %.lr.ph719.preheader ], [ %indvars.iv.next779, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS7_EET0_T_SC_SB_.exit ] ; 2 uses
  %i.any = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv778 ; 2 uses
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !170
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !170
  %i.aoc = invoke ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN2cv8KeyPointESt20back_insert_iteratorISt6vectorIS4_SaIS4_EEEEET0_T_SC_SB_(ptr noundef %i.anz, ptr noundef %i.aob, ptr nonnull %3)
          to label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS7_EET0_T_SC_SB_.exit unwind label %.loopexit658 ; 0 uses

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS7_EET0_T_SC_SB_.exit: ; preds = %.lr.ph719
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1 ; 2 uses
  %exitcond783.not = icmp eq i64 %indvars.iv.next779, %wide.trip.count782
  br i1 %exitcond783.not, label %._crit_edge720, label %.lr.ph719, !llvm.loop !124

._crit_edge720:                                   ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS7_EET0_T_SC_SB_.exit, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.alw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge720, %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aoj, %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge720 ] ; 3 uses
  %i.aod = load ptr, ptr %.05.i.i.i, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aod, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph.i.i.i
  %i.aoe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !54
  %i.aog = ptrtoint ptr %i.aof to i64
  %i.aoh = ptrtoint ptr %i.aod to i64
  %i.aoi = sub i64 %i.aog, %i.aoh
  call void @_ZdlPvm(ptr noundef nonnull %i.aod, i64 noundef %i.aoi) #25
  br label %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.gj, %.lr.ph.i.i.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i301 = icmp eq ptr %i.aoj, %i.alw
  br i1 %.not.i.i.i301, label %_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i, %._crit_edge720
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev.exit, label %bb.gk

bb.gk:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.aok = ptrtoint ptr %i.alv to i64
  %i.aol = ptrtoint ptr %.pr.i to i64
  %i.aom = sub i64 %i.aok, %i.aol
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.aom) #25
  br label %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24
  br label %bb.gm

.loopexit.split-lp659:                            ; preds = %.loopexit658, %.loopexit.split-lp659.loopexit.split-lp, %.loopexit.split-lp659.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288
  %.pn184 = phi { ptr, i32 } [ %.pn182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ], [ %lpad.loopexit660, %.loopexit658 ], [ %lpad.loopexit663, %.loopexit.split-lp659.loopexit ], [ %lpad.loopexit.split-lp664, %.loopexit.split-lp659.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %64) #24
  br label %bb.gl

bb.gl:                                            ; preds = %.loopexit.split-lp659, %bb.fy
  %.pn184.pn = phi { ptr, i32 } [ %.pn184, %.loopexit.split-lp659 ], [ %i.amm, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24
  br label %.body

bb.gm:                                            ; preds = %_ZN2cvL16computeKeyPointsERKNS_3MatERKNS_4UMatES2_RKSt6vectorINS_5Rect_IiEESaIS8_EES5_RKS6_IfSaIfEERS6_INS_8KeyPointESaISH_EEidiiNS_3ORB9ScoreTypeEbi.exit, %bb.fx, %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev.exit
  br i1 %i.k, label %bb.gn, label %bb.id

bb.gn:                                            ; preds = %bb.gm
  %i.aon = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.aoo = load ptr, ptr %3, align 8, !tbaa !40
  %i.aop = ptrtoint ptr %i.aon to i64
  %i.aoq = ptrtoint ptr %i.aoo to i64
  %i.aor = sub i64 %i.aop, %i.aoq
  %i.aos = sdiv exact i64 %i.aor, 28
  %i.aot = trunc i64 %i.aos to i32                ; 2 uses
  %.not201 = icmp eq i32 %i.aot, 0
  br i1 %.not201, label %bb.go, label %bb.gq

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.id unwind label %bb.gp

bb.gp:                                            ; preds = %bb.gq, %bb.go
  %i.aou = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gq:                                            ; preds = %bb.gn
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.aot, i32 noundef 32, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.gr unwind label %bb.gp

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %68, i8 0, i64 4096, i1 false), !tbaa !12
  %i.aov = load i32, ptr %i.a, align 4, !tbaa !35 ; 3 uses
  %.not188 = icmp eq i32 %i.aov, 31
  br i1 %.not188, label %_ZN2cvL17makeRandomPatternEiPNS_6Point_IiEEi.exit, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aow = sdiv i32 %i.aov, -2                    ; 5 uses
  %i.aox = sdiv i32 %i.aov, 2
  %i.aoy = add nsw i32 %i.aox, 1                  ; 2 uses
  %i.aoz = icmp eq i32 %i.aow, %i.aoy
  %i.apa = sub nsw i32 %i.aoy, %i.aow             ; 2 uses
  br i1 %i.aoz, label %vector.ph1012, label %_ZN2cv3RNG7uniformEii.exit10.i

vector.ph1012:                                    ; preds = %bb.gs
  %broadcast.splatinsert1013 = insertelement <2 x i32> poison, i32 %i.aow, i64 0 ; 4 uses
  %i.apb = shufflevector <2 x i32> %broadcast.splatinsert1013, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.apc = shufflevector <2 x i32> %broadcast.splatinsert1013, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.apd = shufflevector <2 x i32> %broadcast.splatinsert1013, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ape = shufflevector <2 x i32> %broadcast.splatinsert1013, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %vector.ph1012
  %index1016 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1018.3, %vector.body1015 ] ; 6 uses
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %index1016
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %index1016
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 16
  store <4 x i32> %i.apb, ptr %i.apf, align 16, !tbaa !12
  store <4 x i32> %i.apb, ptr %i.aph, align 16, !tbaa !12
  %index.next1018 = or disjoint i64 %index1016, 4 ; 2 uses
  %i.api = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %index.next1018
  %i.apj = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %index.next1018
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 16
  store <4 x i32> %i.apc, ptr %i.api, align 16, !tbaa !12
  store <4 x i32> %i.apc, ptr %i.apk, align 16, !tbaa !12
  %index.next1018.1 = or disjoint i64 %index1016, 8 ; 2 uses
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %index.next1018.1
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %index.next1018.1
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 16
  store <4 x i32> %i.apd, ptr %i.apl, align 16, !tbaa !12
  store <4 x i32> %i.apd, ptr %i.apn, align 16, !tbaa !12
  %index.next1018.2 = or disjoint i64 %index1016, 12 ; 2 uses
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %index.next1018.2
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %index.next1018.2
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  store <4 x i32> %i.ape, ptr %i.apo, align 16, !tbaa !12
  store <4 x i32> %i.ape, ptr %i.apq, align 16, !tbaa !12
  %index.next1018.3 = add nuw nsw i64 %index1016, 16 ; 2 uses
  %i.apr = icmp eq i64 %index.next1018.3, 512
  br i1 %i.apr, label %_ZN2cvL17makeRandomPatternEiPNS_6Point_IiEEi.exit, label %vector.body1015, !llvm.loop !125

_ZN2cv3RNG7uniformEii.exit10.i:                   ; preds = %bb.gs, %_ZN2cv3RNG7uniformEii.exit10.i
  %indvars.iv.i302 = phi i64 [ %indvars.iv.next.i303, %_ZN2cv3RNG7uniformEii.exit10.i ], [ 0, %bb.gs ] ; 2 uses
  %.sroa.0.013.i = phi i64 [ %i.aqd, %_ZN2cv3RNG7uniformEii.exit10.i ], [ 882399033, %bb.gs ] ; 2 uses
  %i.aps = and i64 %.sroa.0.013.i, 4294967295
  %i.apt = mul nuw i64 %i.aps, 4164903690
  %i.apu = lshr i64 %.sroa.0.013.i, 32
  %i.apv = add nuw i64 %i.apt, %i.apu             ; 3 uses
  %i.apw = trunc i64 %i.apv to i32
  %i.apx = urem i32 %i.apw, %i.apa
  %i.apy = add i32 %i.apx, %i.aow
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %indvars.iv.i302 ; 2 uses
  store i32 %i.apy, ptr %i.apz, align 8, !tbaa !179
  %i.aqa = and i64 %i.apv, 4294967295
  %i.aqb = mul nuw i64 %i.aqa, 4164903690
  %i.aqc = lshr i64 %i.apv, 32
  %i.aqd = add nuw i64 %i.aqb, %i.aqc             ; 2 uses
  %i.aqe = trunc i64 %i.aqd to i32
  %i.aqf = urem i32 %i.aqe, %i.apa
  %i.aqg = add i32 %i.aqf, %i.aow
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apz, i64 4
  store i32 %i.aqg, ptr %i.aqh, align 4, !tbaa !180
  %indvars.iv.next.i303 = add nuw nsw i64 %indvars.iv.i302, 1 ; 2 uses
  %exitcond.not.i304 = icmp eq i64 %indvars.iv.next.i303, 512
  br i1 %exitcond.not.i304, label %_ZN2cvL17makeRandomPatternEiPNS_6Point_IiEEi.exit, label %_ZN2cv3RNG7uniformEii.exit10.i, !llvm.loop !126

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp:                               ; preds = %bb.hd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

_ZN2cvL17makeRandomPatternEiPNS_6Point_IiEEi.exit: ; preds = %_ZN2cv3RNG7uniformEii.exit10.i, %vector.body1015, %bb.gr
  %.0155 = phi ptr [ @_ZN2cvL15bit_pattern_31_E, %bb.gr ], [ %68, %vector.body1015 ], [ %68, %_ZN2cv3RNG7uniformEii.exit10.i ] ; 5 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !34 ; 6 uses
  %.off = add i32 %i.aqj, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.gy, label %bb.gt

bb.gt:                                            ; preds = %_ZN2cvL17makeRandomPatternEiPNS_6Point_IiEEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %70)
          to label %bb.gu unwind label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @__func__._ZN2cv8ORB_Impl16detectAndComputeERKNS_11_InputArrayES3_RSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayEb, ptr noundef nonnull @.str.11, i32 noundef 1218) #26
          to label %bb.gv unwind label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  unreachable

bb.gw:                                            ; preds = %bb.gt
  %i.aqk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

bb.gx:                                            ; preds = %bb.gu
  %i.aql = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqm = load ptr, ptr %69, align 8, !tbaa !22  ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.aqo = icmp eq ptr %i.aqm, %i.aqn
  br i1 %i.aqo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.gx
  %i.aqp = load i64, ptr %i.aqn, align 8, !tbaa !23
  %i.aqq = add i64 %i.aqp, 1
  call void @_ZdlPvm(ptr noundef %i.aqm, i64 noundef %i.aqq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305, %bb.gw
  %.pn189 = phi { ptr, i32 } [ %i.aqk, %bb.gw ], [ %i.aql, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305 ], [ %i.aql, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24
  br label %bb.ib

bb.gy:                                            ; preds = %_ZN2cvL17makeRandomPatternEiPNS_6Point_IiEEi.exit
  %i.aqr = icmp eq i32 %i.aqj, 2
  br i1 %i.aqr, label %bb.gz, label %bb.hf

bb.gz:                                            ; preds = %bb.gy
  %i.aqs = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  br label %bb.ha

bb.ha:                                            ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i, %bb.gz
  %i.aqu = phi ptr [ null, %bb.gz ], [ %i.aru, %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i ] ; 6 uses
  %i.aqv = phi ptr [ null, %bb.gz ], [ %i.arv, %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i ] ; 5 uses
  %i.aqw = phi ptr [ null, %bb.gz ], [ %i.arw, %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i ] ; 3 uses
  %.07.i = phi i64 [ 512, %bb.gz ], [ %i.ary, %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i ] ; 2 uses
  %.056.i = phi ptr [ %.0155, %bb.gz ], [ %i.arx, %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i ] ; 3 uses
  %.not.i.i.i353 = icmp eq ptr %i.aqw, %i.aqv
  br i1 %.not.i.i.i353, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aqx = load i64, ptr %.056.i, align 4, !tbaa !12
  store i64 %i.aqx, ptr %i.aqw, align 4, !tbaa !12
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8 ; 2 uses
  store ptr %i.aqy, ptr %i.aqs, align 8, !tbaa !69
  br label %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i

bb.hc:                                            ; preds = %bb.ha
  %i.aqz = ptrtoint ptr %i.aqv to i64
  %i.ara = ptrtoint ptr %i.aqu to i64             ; 2 uses
  %i.arb = sub i64 %i.aqz, %i.ara                 ; 3 uses
  %i.arc = icmp eq i64 %i.arb, 9223372036854775800
  br i1 %i.arc, label %bb.hd, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #26
          to label %.noexc356 unwind label %.loopexit.split-lp

.noexc356:                                        ; preds = %bb.hd
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.hc
  %i.ard = ashr exact i64 %i.arb, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ard, i64 1)
  %i.are = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ard ; 2 uses
  %i.arf = icmp ult i64 %i.are, %i.ard
  %i.arg = call i64 @llvm.umin.i64(i64 %i.are, i64 1152921504606846975)
  %i.arh = select i1 %i.arf, i64 1152921504606846975, i64 %i.arg ; 3 uses
  %.not.i.i.i.i.i354 = icmp ne i64 %i.arh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i354)
  %i.ari = shl nuw nsw i64 %i.arh, 3
  %i.arj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ari) #27
          to label %.noexc357 unwind label %.loopexit ; 6 uses

.noexc357:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.arb
  %i.arl = load i64, ptr %.056.i, align 4, !tbaa !12
  store i64 %i.arl, ptr %i.ark, align 4, !tbaa !12
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aqu, %i.aqv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc357, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aro, %.lr.ph.i.i.i.i.i.i.i ], [ %i.arj, %.noexc357 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.arn, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aqu, %.noexc357 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.arm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !tbaa !12, !alias.scope !182, !noalias !181
  store i64 %i.arm, ptr %.012.i.i.i.i.i.i.i, align 4, !tbaa !12, !alias.scope !181, !noalias !182
  %i.arn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i355 = icmp eq ptr %i.arn, %i.aqv
  br i1 %.not.i.i.i.i.i.i.i355, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc357
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.arj, %.noexc357 ], [ %i.aro, %.lr.ph.i.i.i.i.i.i.i ]
  %i.arp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.aqu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.arq = load ptr, ptr %i.aqt, align 8, !tbaa !70
  %i.arr = ptrtoint ptr %i.arq to i64
  %i.ars = sub i64 %i.arr, %i.ara
  call void @_ZdlPvm(ptr noundef nonnull %i.aqu, i64 noundef %i.ars) #25
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.he, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.arj, ptr %67, align 8, !tbaa !71
  store ptr %i.arp, ptr %i.aqs, align 8, !tbaa !69
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %i.arh ; 2 uses
  store ptr %i.art, ptr %i.aqt, align 8, !tbaa !70
  br label %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.hb
  %i.aru = phi ptr [ %i.aqu, %bb.hb ], [ %i.arj, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ]
  %i.arv = phi ptr [ %i.aqv, %bb.hb ], [ %i.art, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ]
  %i.arw = phi ptr [ %i.aqy, %bb.hb ], [ %i.arp, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ]
  %i.arx = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.ary = add nsw i64 %.07.i, -1
  %i.arz = icmp samesign ugt i64 %.07.i, 1
  br i1 %i.arz, label %bb.ha, label %_ZSt4copyIPKN2cv6Point_IiEESt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET0_T_SB_SA_.exit, !llvm.loop !130

bb.hf:                                            ; preds = %bb.gy
  %i.asa = shl nuw nsw i32 %i.aqj, 7
  %i.asb = zext nneg i32 %i.asa to i64
  invoke void @_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %67, i64 noundef %i.asb)
          to label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit.split.split.i unwind label %bb.hh

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit.split.split.i: ; preds = %bb.hf
  %.pre793 = load ptr, ptr %67, align 8, !tbaa !71
  %i.asc = zext nneg i32 %i.aqj to i64
  %exitcond57.not.i = icmp eq i32 %i.aqj, 1
  %exitcond57.not.i.2 = icmp eq i32 %i.aqj, 3
  br label %.preheader33.i

.preheader33.i:                                   ; preds = %._crit_edge.i314, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit.split.split.i
  %indvars.iv58.i = phi i64 [ 0, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit.split.split.i ], [ %indvars.iv.next59.i, %._crit_edge.i314 ] ; 2 uses
  %.sroa.031.049.i = phi i64 [ 305419896, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit.split.split.i ], [ %.us-phi.i.lcssa, %._crit_edge.i314 ] ; 2 uses
  %i.asd = mul nuw nsw i64 %indvars.iv58.i, %i.asc
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.pre793, i64 %i.asd ; 16 uses
  %i.ase = and i64 %.sroa.031.049.i, 4294967295
  %i.asf = mul nuw i64 %i.ase, 4164903690
  %i.asg = lshr i64 %.sroa.031.049.i, 32
  %i.ash = add nuw i64 %i.asf, %i.asg             ; 3 uses
  %i.asi = and i64 %i.ash, 511
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %i.asi
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !12
  store i64 %i.ask, ptr %invariant.gep.i, align 4, !tbaa !12
  br i1 %exitcond57.not.i, label %._crit_edge.i314, label %.lr.ph.us.i.preheader.1

.lr.ph.us.i.preheader.1:                          ; preds = %.preheader33.i
  %.val.us.i.11090 = load i32, ptr %invariant.gep.i, align 4, !tbaa !179
  %75 = getelementptr i8, ptr %invariant.gep.i, i64 4
  %.val28.us.i.11091 = load i32, ptr %75, align 4
  br label %.lr.ph.us.i.1

.lr.ph.us.i.1:                                    ; preds = %.lr.ph.us.i.1, %.lr.ph.us.i.preheader.1
  %.sroa.031.2.us.i.1 = phi i64 [ %i.ash, %.lr.ph.us.i.preheader.1 ], [ %i.aso, %.lr.ph.us.i.1 ] ; 2 uses
  %i.asl = and i64 %.sroa.031.2.us.i.1, 4294967295
  %i.asm = mul nuw i64 %i.asl, 4164903690
  %i.asn = lshr i64 %.sroa.031.2.us.i.1, 32
  %i.aso = add nuw i64 %i.asm, %i.asn             ; 3 uses
  %i.asp = and i64 %i.aso, 511
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %i.asp
  %i.asr = load i64, ptr %i.asq, align 8, !tbaa !12 ; 3 uses
  %.sroa.5.0.extract.shift.us.i.1 = lshr i64 %i.asr, 32
  %.sroa.5.0.extract.trunc.us.i.1 = trunc nuw i64 %.sroa.5.0.extract.shift.us.i.1 to i32
  %.sroa.0.0.extract.trunc.us.i.1 = trunc i64 %i.asr to i32
  %i.ass = icmp eq i32 %.val.us.i.11090, %.sroa.0.0.extract.trunc.us.i.1
  %i.ast = icmp eq i32 %.val28.us.i.11091, %.sroa.5.0.extract.trunc.us.i.1
  %i.asu = select i1 %i.ass, i1 %i.ast, i1 false
  br i1 %i.asu, label %.lr.ph.us.i.1, label %._crit_edge.us.i.1

._crit_edge.us.i.1:                               ; preds = %.lr.ph.us.i.1
  %gep68.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 8
  store i64 %i.asr, ptr %gep68.i.1, align 4, !tbaa !12
  %.val.us.i.21093 = load i32, ptr %invariant.gep.i, align 4, !tbaa !179
  %i.asv = getelementptr i8, ptr %invariant.gep.i, i64 4
  %.val28.us.i.21094 = load i32, ptr %i.asv, align 4
  %gep.i.1.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 8
  %i.asw = getelementptr i8, ptr %invariant.gep.i, i64 12
  br label %.lr.ph.us.i.2

.lr.ph.us.i.2:                                    ; preds = %.lr.ph.us.i.2, %._crit_edge.us.i.2, %._crit_edge.us.i.1
  %.sroa.031.2.us.i.2 = phi i64 [ %i.ata, %._crit_edge.us.i.2 ], [ %i.aso, %._crit_edge.us.i.1 ], [ %i.ata, %.lr.ph.us.i.2 ] ; 2 uses
  %i.asx = and i64 %.sroa.031.2.us.i.2, 4294967295
  %i.asy = mul nuw i64 %i.asx, 4164903690
  %i.asz = lshr i64 %.sroa.031.2.us.i.2, 32
  %i.ata = add nuw i64 %i.asy, %i.asz             ; 5 uses
  %i.atb = and i64 %i.ata, 511
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %i.atb
  %i.atd = load i64, ptr %i.atc, align 8, !tbaa !12 ; 3 uses
  %.sroa.0.0.extract.trunc.us.i.2 = trunc i64 %i.atd to i32 ; 2 uses
  %.sroa.5.0.extract.shift.us.i.2 = lshr i64 %i.atd, 32
  %.sroa.5.0.extract.trunc.us.i.2 = trunc nuw i64 %.sroa.5.0.extract.shift.us.i.2 to i32 ; 2 uses
  %i.ate = icmp eq i32 %.val.us.i.21093, %.sroa.0.0.extract.trunc.us.i.2
  %i.atf = icmp eq i32 %.val28.us.i.21094, %.sroa.5.0.extract.trunc.us.i.2
  %i.atg = select i1 %i.ate, i1 %i.atf, i1 false
  br i1 %i.atg, label %.lr.ph.us.i.2, label %._crit_edge.us.i.2

._crit_edge.us.i.2:                               ; preds = %.lr.ph.us.i.2
  %.val.us.i.1.2 = load i32, ptr %gep.i.1.2, align 4, !tbaa !179
  %.val28.us.i.1.2 = load i32, ptr %i.asw, align 4
  %i.ath = icmp eq i32 %.val.us.i.1.2, %.sroa.0.0.extract.trunc.us.i.2
  %i.ati = icmp eq i32 %.val28.us.i.1.2, %.sroa.5.0.extract.trunc.us.i.2
  %i.atj = select i1 %i.ath, i1 %i.ati, i1 false
  %spec.select1138 = select i1 %i.atj, i1 false, i1 true
  br i1 %spec.select1138, label %.split.us.i.2, label %.lr.ph.us.i.2

.split.us.i.2:                                    ; preds = %._crit_edge.us.i.2
  %gep68.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 16
  store i64 %i.atd, ptr %gep68.i.2, align 4, !tbaa !12
  br i1 %exitcond57.not.i.2, label %._crit_edge.i314, label %.lr.ph.us.i.preheader.3

.lr.ph.us.i.preheader.3:                          ; preds = %.split.us.i.2
  %.val.us.i.3 = load i32, ptr %invariant.gep.i, align 4, !tbaa !179
  %i.atk = getelementptr i8, ptr %invariant.gep.i, i64 4
  %.val28.us.i.3 = load i32, ptr %i.atk, align 4
  %gep.i.1.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 8
  %i.atl = getelementptr i8, ptr %invariant.gep.i, i64 12
  %gep.i.2.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 16
  %i.atm = getelementptr i8, ptr %invariant.gep.i, i64 20
  br label %.lr.ph.us.i.3

.lr.ph.us.i.3.critedge:                           ; preds = %bb.hg, %.lr.ph.us.i.3
  br label %.lr.ph.us.i.3

.lr.ph.us.i.3:                                    ; preds = %.lr.ph.us.i.3.critedge, %._crit_edge.us.i.3, %.lr.ph.us.i.preheader.3
  %.sroa.031.2.us.i.3 = phi i64 [ %i.atq, %._crit_edge.us.i.3 ], [ %i.ata, %.lr.ph.us.i.preheader.3 ], [ %i.atq, %.lr.ph.us.i.3.critedge ] ; 2 uses
  %i.atn = and i64 %.sroa.031.2.us.i.3, 4294967295
  %i.ato = mul nuw i64 %i.atn, 4164903690
  %i.atp = lshr i64 %.sroa.031.2.us.i.3, 32
  %i.atq = add nuw i64 %i.ato, %i.atp             ; 4 uses
  %i.atr = and i64 %i.atq, 511
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %i.atr
  %i.att = load i64, ptr %i.ats, align 8, !tbaa !12 ; 3 uses
  %.sroa.0.0.extract.trunc.us.i.3 = trunc i64 %i.att to i32 ; 3 uses
  %.sroa.5.0.extract.shift.us.i.3 = lshr i64 %i.att, 32
  %.sroa.5.0.extract.trunc.us.i.3 = trunc nuw i64 %.sroa.5.0.extract.shift.us.i.3 to i32 ; 3 uses
  %i.atu = icmp eq i32 %.val.us.i.3, %.sroa.0.0.extract.trunc.us.i.3
  %i.atv = icmp eq i32 %.val28.us.i.3, %.sroa.5.0.extract.trunc.us.i.3
  %i.atw = select i1 %i.atu, i1 %i.atv, i1 false
  br i1 %i.atw, label %.lr.ph.us.i.3.critedge, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph.us.i.3
  %.val.us.i.1.3 = load i32, ptr %gep.i.1.3, align 4, !tbaa !179
  %.val28.us.i.1.3 = load i32, ptr %i.atl, align 4
  %i.atx = icmp eq i32 %.val.us.i.1.3, %.sroa.0.0.extract.trunc.us.i.3
  %i.aty = icmp eq i32 %.val28.us.i.1.3, %.sroa.5.0.extract.trunc.us.i.3
  %i.atz = select i1 %i.atx, i1 %i.aty, i1 false
  br i1 %i.atz, label %.lr.ph.us.i.3.critedge, label %._crit_edge.us.i.3

._crit_edge.us.i.3:                               ; preds = %bb.hg
  %.val.us.i.2.3 = load i32, ptr %gep.i.2.3, align 4, !tbaa !179
  %.val28.us.i.2.3 = load i32, ptr %i.atm, align 4
  %i.aua = icmp eq i32 %.val.us.i.2.3, %.sroa.0.0.extract.trunc.us.i.3
  %i.aub = icmp eq i32 %.val28.us.i.2.3, %.sroa.5.0.extract.trunc.us.i.3
  %i.auc = select i1 %i.aua, i1 %i.aub, i1 false
  %spec.select1139 = select i1 %i.auc, i1 false, i1 true
  br i1 %spec.select1139, label %.split.us.i.3, label %.lr.ph.us.i.3

.split.us.i.3:                                    ; preds = %._crit_edge.us.i.3
  %gep68.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 24
  store i64 %i.att, ptr %gep68.i.3, align 4, !tbaa !12
  br label %._crit_edge.i314

._crit_edge.i314:                                 ; preds = %.split.us.i.3, %.split.us.i.2, %.preheader33.i
  %.us-phi.i.lcssa = phi i64 [ %i.ash, %.preheader33.i ], [ %i.atq, %.split.us.i.3 ], [ %i.ata, %.split.us.i.2 ]
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next59.i, 128
  br i1 %exitcond61.not.i, label %_ZSt4copyIPKN2cv6Point_IiEESt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET0_T_SB_SA_.exit, label %.preheader33.i, !llvm.loop !131

bb.hh:                                            ; preds = %bb.hf
  %i.aud = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

_ZSt4copyIPKN2cv6Point_IiEESt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET0_T_SB_SA_.exit: ; preds = %._crit_edge.i314, %_ZNSt20back_insert_iteratorISt6vectorIN2cv6Point_IiEESaIS3_EEEaSERKS3_.exit.i
  br i1 %.not.i.i.i.i891, label %._crit_edge723, label %.lr.ph722

.lr.ph722:                                        ; preds = %_ZSt4copyIPKN2cv6Point_IiEESt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET0_T_SB_SA_.exit
  %i.aue = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.auf = getelementptr inbounds nuw i8, ptr %72, i64 20
  %i.aug = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.auh = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.aui = getelementptr inbounds nuw i8, ptr %73, i64 16
  %wide.trip.count788 = zext nneg i32 %.1880889 to i64
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph722, %bb.hk
  %indvars.iv784 = phi i64 [ 0, %.lr.ph722 ], [ %indvars.iv.next785, %bb.hk ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #24
  %i.auj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0414.0492551, i64 %indvars.iv784
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %71, ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 4 dereferenceable(16) %i.auj)
          to label %bb.hj unwind label %bb.hl

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24
  store i32 0, ptr %i.aue, align 8, !tbaa !159
  store i32 0, ptr %i.auf, align 4, !tbaa !160
  store i32 16842752, ptr %72, align 8, !tbaa !143
  store ptr %71, ptr %i.aug, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #24
  store i64 0, ptr %i.aui, align 8
  store i32 33619968, ptr %73, align 8, !tbaa !143
  store ptr %71, ptr %i.auh, align 8, !tbaa !141
  invoke void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %73, i64 30064771079, double noundef 2.000000e+00, double noundef 2.000000e+00, i32 noundef 4, i32 noundef 0)
          to label %bb.hk unwind label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next785, %wide.trip.count788
  br i1 %exitcond789.not, label %._crit_edge723, label %bb.hi, !llvm.loop !132

bb.hl:                                            ; preds = %bb.hi
  %i.auk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hj
  %i.aul = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #24
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.pn194.pn.pn = phi { ptr, i32 } [ %i.aul, %bb.hm ], [ %i.auk, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  br label %bb.ib

._crit_edge723:                                   ; preds = %bb.hk, %_ZSt4copyIPKN2cv6Point_IiEESt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET0_T_SB_SA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #24
  %i.aum = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc319 unwind label %bb.hy

.noexc319:                                        ; preds = %._crit_edge723
  %i.aun = icmp eq i32 %i.aum, 65536
  br i1 %i.aun, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %.noexc319
  %i.auo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !141, !noalias !183
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %74, ptr noundef nonnull align 8 dereferenceable(208) %i.aup)
          to label %_ZNK2cv11_InputArray6getMatEi.exit322 unwind label %bb.hy

bb.hp:                                            ; preds = %.noexc319
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %74, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit322 unwind label %bb.hy

_ZNK2cv11_InputArray6getMatEi.exit322:            ; preds = %bb.ho, %bb.hp
  %i.auq = load i32, ptr %i.aqi, align 4, !tbaa !34
  %i.aur = getelementptr inbounds nuw i8, ptr %31, i64 128 ; 2 uses
  %i.aus = load i64, ptr %i.aur, align 8, !tbaa !28
  %i.aut = trunc i64 %i.aus to i32                ; 44 uses
  %i.auu = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.auv = load ptr, ptr %3, align 8, !tbaa !40
  %i.auw = ptrtoint ptr %i.auu to i64
  %i.aux = ptrtoint ptr %i.auv to i64
  %i.auy = sub i64 %i.auw, %i.aux
  %i.auz = sdiv exact i64 %i.auy, 28              ; 2 uses
  %i.ava = trunc i64 %i.auz to i32
  %i.avb = icmp sgt i32 %i.ava, 0
  br i1 %i.avb, label %.lr.ph.i324, label %_ZN2cvL21computeOrbDescriptorsERKNS_3MatERKSt6vectorINS_5Rect_IiEESaIS5_EERKS3_IfSaIfEERS3_INS_8KeyPointESaISE_EERS0_RKS3_INS_6Point_IiEESaISK_EEii.exit

.lr.ph.i324:                                      ; preds = %_ZNK2cv11_InputArray6getMatEi.exit322
  %i.avc = getelementptr inbounds nuw i8, ptr %31, i64 4
  %i.avd = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.ave = getelementptr inbounds nuw i8, ptr %74, i64 24
  %i.avf = getelementptr inbounds nuw i8, ptr %74, i64 128
  %wide.trip.count.i325 = and i64 %i.auz, 2147483647
  br label %bb.hq

bb.hq:                                            ; preds = %.loopexit.i329, %.lr.ph.i324
  %indvars.iv833.i = phi i64 [ 0, %.lr.ph.i324 ], [ %indvars.iv.next834.i, %.loopexit.i329 ] ; 3 uses
  %i.avg = load ptr, ptr %3, align 8, !tbaa !40
  %i.avh = getelementptr inbounds nuw [28 x i8], ptr %i.avg, i64 %indvars.iv833.i ; 3 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 20
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !44
  %i.avk = sext i32 %i.avj to i64                 ; 2 uses
  %i.avl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0414.0492551, i64 %i.avk ; 2 uses
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0400.0, i64 %i.avk
  %i.avn = load float, ptr %i.avm, align 4, !tbaa !46
  %i.avo = fdiv float 1.000000e+00, %i.avn
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avh, i64 12
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !173
  %i.avr = fmul float %i.avq, f0x3C8EFA35
  %i.avs = fpext float %i.avr to double           ; 2 uses
  %i.avt = call double @cos(double noundef %i.avs) #24
  %i.avu = call double @sin(double noundef %i.avs) #24
  %i.avv = insertelement <2 x double> poison, double %i.avt, i64 0
  %i.avw = insertelement <2 x double> %i.avv, double %i.avu, i64 1
  %i.avx = fptrunc <2 x double> %i.avw to <2 x float> ; 5 uses
  %i.avy = shufflevector <2 x float> %i.avx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 22 uses
  %i.avz = extractelement <2 x float> %i.avx, i64 1 ; 3 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avl, i64 4
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !158
  %i.awc = load <2 x float>, ptr %i.avh, align 4, !tbaa !46
  %i.awd = insertelement <2 x float> poison, float %i.avo, i64 0
  %i.awe = shufflevector <2 x float> %i.awd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awf = fmul <2 x float> %i.awe, %i.awc        ; 2 uses
  %i.awg = shufflevector <2 x float> %i.awf, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.awh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.awg)
  %i.awi = add nsw i32 %i.awb, %i.awh
  %i.awj = shufflevector <2 x float> %i.awf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.awk = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.awj)
  %i.awl = load i32, ptr %i.avl, align 4, !tbaa !157
  %i.awm = add nsw i32 %i.awl, %i.awk
  %i.awn = load i32, ptr %i.avc, align 4, !tbaa !174
  %i.awo = icmp slt i32 %i.awn, 2
  %i.awp = load ptr, ptr %i.avd, align 8, !tbaa !167
  %i.awq = load i64, ptr %i.aur, align 8
  %i.awr = sext i32 %i.awi to i64
  %i.aws = mul i64 %i.awq, %i.awr
  %.sink.idx.i.i = select i1 %i.awo, i64 0, i64 %i.aws
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.awp, i64 %.sink.idx.i.i
  %i.awt = sext i32 %i.awm to i64
  %i.awu = getelementptr inbounds i8, ptr %.sink.i.i, i64 %i.awt ; 44 uses
  %i.awv = load ptr, ptr %67, align 8, !tbaa !71  ; 3 uses
  %i.aww = load ptr, ptr %i.ave, align 8, !tbaa !167
  %i.awx = load i64, ptr %i.avf, align 8, !tbaa !28
  %i.awy = mul i64 %i.awx, %indvars.iv833.i
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 %i.awy ; 3 uses
  switch i32 %i.auq, label %bb.hu [
    i32 2, label %.preheader.i330
    i32 3, label %.preheader811.i
    i32 4, label %.preheader813.i
  ]

.preheader813.i:                                  ; preds = %bb.hq
  %i.axa = fneg float %i.avz
  %i.axb = shufflevector <2 x float> %i.avx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.axc = insertelement <2 x float> %i.axb, float %i.axa, i64 0
  %i.axd = shufflevector <2 x float> %i.axc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 8 uses
  br label %bb.ht

.preheader811.i:                                  ; preds = %bb.hq
  %i.axe = fneg float %i.avz
  %i.axf = shufflevector <2 x float> %i.avx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.axg = insertelement <2 x float> %i.axf, float %i.axe, i64 0
  %i.axh = shufflevector <2 x float> %i.axg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 6 uses
  br label %bb.hs

.preheader.i330:                                  ; preds = %bb.hq
  %i.axi = fneg float %i.avz
  %i.axj = shufflevector <2 x float> %i.avx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.axk = insertelement <2 x float> %i.axj, float %i.axi, i64 0
  %i.axl = shufflevector <2 x float> %i.axk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 8 uses
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hr, %.preheader.i330
  %indvars.iv829.i = phi i64 [ 0, %.preheader.i330 ], [ %indvars.iv.next830.i, %bb.hr ] ; 2 uses
  %.0781819.i = phi ptr [ %i.awv, %.preheader.i330 ], [ %i.bgr, %bb.hr ] ; 9 uses
  %i.axm = load <4 x i32>, ptr %.0781819.i, align 4, !tbaa !12 ; 2 uses
  %i.axn = sitofp <4 x i32> %i.axm to <4 x float>
  %i.axo = shufflevector <4 x float> %i.axn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.axp = sitofp <4 x i32> %i.axm to <4 x float>
  %i.axq = shufflevector <4 x float> %i.axp, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.axr = fmul <4 x float> %i.axl, %i.axq
  %i.axs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.axo, <4 x float> %i.avy, <4 x float> %i.axr) ; 4 uses
  %i.axt = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.axs)
  %i.axu = shufflevector <4 x float> %i.axs, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.axv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.axu)
end_hunk_0
