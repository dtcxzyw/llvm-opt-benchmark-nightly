Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_handeye?download=true
inline.NumInlined: 1532
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv16calibrateHandEyeERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_NS_24HandEyeCalibrationMethodE:bb.a

bb.qe:                                            ; preds = %.loopexit432.i, %.lr.ph468.i
  %i.apl = phi ptr [ %i.anv, %.lr.ph468.i ], [ %i.ato, %.loopexit432.i ] ; 2 uses
  %i.apm = phi ptr [ %i.anu, %.lr.ph468.i ], [ %i.atn, %.loopexit432.i ]
  %.076467.i = phi i64 [ 0, %.lr.ph468.i ], [ %i.apn, %.loopexit432.i ] ; 3 uses
  %i.apn = add nuw i64 %.076467.i, 1              ; 4 uses
  %i.apo = ptrtoint ptr %i.apm to i64
  %i.app = ptrtoint ptr %i.apl to i64
  %i.apq = sub i64 %i.apo, %i.app
  %i.apr = sdiv exact i64 %i.apq, 208
  %i.aps = icmp ult i64 %i.apn, %i.apr
  br i1 %i.aps, label %.lr.ph.i210, label %._crit_edge.i202

.lr.ph.i210:                                      ; preds = %bb.qe, %bb.rj
  %i.apt = phi ptr [ %i.ato, %bb.rj ], [ %i.apl, %bb.qe ]
  %.075466.i = phi i64 [ %i.atm, %bb.rj ], [ %i.apn, %bb.qe ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #19
  %i.apu = getelementptr inbounds nuw [208 x i8], ptr %i.apt, i64 %.075466.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %83, ptr noundef nonnull align 8 dereferenceable(208) %i.apu)
          to label %bb.qf unwind label %bb.qm

bb.qf:                                            ; preds = %.lr.ph.i210
  %i.apv = load ptr, ptr %297, align 8, !tbaa !23
  %i.apw = getelementptr inbounds nuw [208 x i8], ptr %i.apv, i64 %.076467.i
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %82, ptr noundef nonnull align 8 dereferenceable(208) %83, ptr noundef nonnull align 8 dereferenceable(208) %i.apw)
          to label %bb.qg unwind label %bb.qn

bb.qg:                                            ; preds = %bb.qf
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %81) #19
  %i.apx = load ptr, ptr %82, align 8, !tbaa !38, !noalias !234 ; 2 uses
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !40
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 24
  %i.aqa = load ptr, ptr %i.apz, align 8
  invoke void %i.aqa(ptr noundef nonnull align 8 dereferenceable(8) %i.apx, ptr noundef nonnull align 8 dereferenceable(688) %82, ptr noundef nonnull align 8 dereferenceable(208) %81, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit207.i unwind label %.body205.i

.body205.i:                                       ; preds = %bb.qg
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %81) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %82) #19
  br label %bb.qo

_ZNK2cv7MatExprcvNS_3MatEEv.exit207.i:            ; preds = %bb.qg
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.anw) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.anx) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.any) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %83) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #19
  %i.aqc = load ptr, ptr %310, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #19
  %i.aqd = getelementptr inbounds nuw [208 x i8], ptr %i.aqc, i64 %.076467.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %86, ptr noundef nonnull align 8 dereferenceable(208) %i.aqd)
          to label %bb.qh unwind label %bb.qq

bb.qh:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit207.i
  %i.aqe = getelementptr inbounds nuw [208 x i8], ptr %i.aqc, i64 %.075466.i
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %85, ptr noundef nonnull align 8 dereferenceable(208) %i.aqe, ptr noundef nonnull align 8 dereferenceable(208) %86)
          to label %bb.qi unwind label %bb.qr

bb.qi:                                            ; preds = %bb.qh
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %84) #19
  %i.aqf = load ptr, ptr %85, align 8, !tbaa !38, !noalias !235 ; 2 uses
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !40
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 24
  %i.aqi = load ptr, ptr %i.aqh, align 8
  invoke void %i.aqi(ptr noundef nonnull align 8 dereferenceable(8) %i.aqf, ptr noundef nonnull align 8 dereferenceable(688) %85, ptr noundef nonnull align 8 dereferenceable(208) %84, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit210.i unwind label %.body208.i

.body208.i:                                       ; preds = %bb.qi
  %i.aqj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %85) #19
  br label %bb.qs

_ZNK2cv7MatExprcvNS_3MatEEv.exit210.i:            ; preds = %bb.qi
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.anz) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aoa) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aob) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #19
  store <4 x i32> <i32 0, i32 0, i32 3, i32 3>, ptr %88, align 16, !tbaa !41
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %87, ptr noundef nonnull align 8 dereferenceable(208) %81, ptr noundef nonnull align 4 dereferenceable(16) %88)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i213 unwind label %bb.qu

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i213:          ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit210.i
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #19
  store <4 x i32> <i32 0, i32 0, i32 3, i32 3>, ptr %90, align 16, !tbaa !41
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %89, ptr noundef nonnull align 8 dereferenceable(208) %84, ptr noundef nonnull align 4 dereferenceable(16) %90)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit211.i unwind label %bb.qv

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit211.i:          ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #19
  invoke fastcc void @_ZN2cvL8rot2quatERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %91, ptr noundef nonnull align 8 dereferenceable(208) %87)
          to label %bb.qj unwind label %bb.qw

bb.qj:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit211.i
  %i.aqk = load ptr, ptr %i.aod, align 8, !tbaa !56 ; 2 uses
  %i.aql = load double, ptr %i.aqk, align 8, !tbaa !57 ; 2 uses
  %i.aqm = fcmp olt double %i.aql, 0.000000e+00
  br i1 %i.aqm, label %bb.qk, label %bb.qy

bb.qk:                                            ; preds = %bb.qj
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #19
  store i64 0, ptr %i.aog, align 8
  store i32 33619968, ptr %78, align 8, !tbaa !45
  store ptr %91, ptr %i.aof, align 8, !tbaa !46
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %91, ptr noundef nonnull align 8 dereferenceable(24) %78, i32 noundef -1, double noundef -1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ql unwind label %bb.qx

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #19
  %.pre.i216 = load ptr, ptr %i.aod, align 8, !tbaa !56 ; 2 uses
  %.pre479.i = load double, ptr %.pre.i216, align 8, !tbaa !57
  br label %bb.qy

bb.qm:                                            ; preds = %.lr.ph.i210
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.qn:                                            ; preds = %bb.qf
  %i.aqo = landingpad { ptr, i32 }
          cleanup
  br label %bb.qo

bb.qo:                                            ; preds = %bb.qn, %.body205.i
  %.pn182.i212 = phi { ptr, i32 } [ %i.aqb, %.body205.i ], [ %i.aqo, %bb.qn ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %83) #19
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.qm
  %.pn182.pn.i211 = phi { ptr, i32 } [ %.pn182.i212, %bb.qo ], [ %i.aqn, %bb.qm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  br label %bb.rs

bb.qq:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit207.i
  %i.aqp = landingpad { ptr, i32 }
          cleanup
  br label %bb.qt

bb.qr:                                            ; preds = %bb.qh
  %i.aqq = landingpad { ptr, i32 }
          cleanup
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %.body208.i
  %.pn185.i = phi { ptr, i32 } [ %i.aqj, %.body208.i ], [ %i.aqq, %bb.qr ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #19
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.qq
  %.pn185.pn.i = phi { ptr, i32 } [ %.pn185.i, %bb.qs ], [ %i.aqp, %bb.qq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #19
  br label %bb.rr

bb.qu:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit210.i
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #19
  br label %bb.rq

bb.qv:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i213
  %i.aqs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #19
  br label %bb.rp

bb.qw:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit211.i
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ro

bb.qx:                                            ; preds = %bb.qk
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  br label %bb.rn

bb.qy:                                            ; preds = %bb.ql, %bb.qj
  %i.aqv = phi double [ %.pre479.i, %bb.ql ], [ %i.aql, %bb.qj ]
  %i.aqw = phi ptr [ %.pre.i216, %bb.ql ], [ %i.aqk, %bb.qj ] ; 3 uses
  %i.aqx = load i32, ptr %i.aoc, align 4, !tbaa !59
  %i.aqy = icmp slt i32 %i.aqx, 2                 ; 3 uses
  %i.aqz = load i64, ptr %i.aoe, align 8          ; 3 uses
  %.sink.idx.i.i = select i1 %i.aqy, i64 0, i64 %i.aqz
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.aqw, i64 %.sink.idx.i.i
  %i.ara = load double, ptr %.sink.i.i, align 8, !tbaa !57 ; 4 uses
  %i.arb = shl i64 %i.aqz, 1
  %.sink.idx.i212.i = select i1 %i.aqy, i64 0, i64 %i.arb
  %.sink.i213.i = getelementptr inbounds nuw i8, ptr %i.aqw, i64 %.sink.idx.i212.i
  %i.arc = load double, ptr %.sink.i213.i, align 8, !tbaa !57 ; 4 uses
  %i.ard = mul i64 %i.aqz, 3
  %.sink.idx.i214.i = select i1 %i.aqy, i64 0, i64 %i.ard
  %.sink.i215.i = getelementptr inbounds nuw i8, ptr %i.aqw, i64 %.sink.idx.i214.i
  %i.are = load double, ptr %.sink.i215.i, align 8, !tbaa !57 ; 4 uses
  %i.arf = fneg double %i.ara
  %i.arg = fneg double %i.arc
  %i.arh = fneg double %i.are
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #19
  invoke fastcc void @_ZN2cvL8rot2quatERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %92, ptr noundef nonnull align 8 dereferenceable(208) %89)
          to label %bb.qz unwind label %bb.rc

bb.qz:                                            ; preds = %bb.qy
  %i.ari = load ptr, ptr %i.aoi, align 8, !tbaa !56 ; 2 uses
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !57 ; 2 uses
  %i.ark = fcmp olt double %i.arj, 0.000000e+00
  br i1 %i.ark, label %bb.ra, label %bb.re

bb.ra:                                            ; preds = %bb.qz
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #19
  store i64 0, ptr %i.aol, align 8
  store i32 33619968, ptr %77, align 8, !tbaa !45
  store ptr %92, ptr %i.aok, align 8, !tbaa !46
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %92, ptr noundef nonnull align 8 dereferenceable(24) %77, i32 noundef -1, double noundef -1.000000e+00, double noundef 0.000000e+00)
          to label %bb.rb unwind label %bb.rd

bb.rb:                                            ; preds = %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  %.pre480.i = load ptr, ptr %i.aoi, align 8, !tbaa !56 ; 2 uses
  %.pre481.i = load double, ptr %.pre480.i, align 8, !tbaa !57
  br label %bb.re

bb.rc:                                            ; preds = %bb.qy
  %i.arl = landingpad { ptr, i32 }
          cleanup
  br label %bb.rm

bb.rd:                                            ; preds = %bb.ra
  %i.arm = landingpad { ptr, i32 }
          cleanup
  br label %bb.rl

bb.re:                                            ; preds = %bb.rb, %bb.qz
  %i.arn = phi double [ %i.arj, %bb.qz ], [ %.pre481.i, %bb.rb ]
  %i.aro = phi ptr [ %i.ari, %bb.qz ], [ %.pre480.i, %bb.rb ] ; 3 uses
  %i.arp = load i32, ptr %i.aoh, align 4, !tbaa !59
  %i.arq = icmp slt i32 %i.arp, 2                 ; 3 uses
  %i.arr = load i64, ptr %i.aoj, align 8          ; 3 uses
  %.sink.idx.i221.i = select i1 %i.arq, i64 0, i64 %i.arr
  %.sink.i222.i = getelementptr inbounds nuw i8, ptr %i.aro, i64 %.sink.idx.i221.i
  %i.ars = load double, ptr %.sink.i222.i, align 8, !tbaa !57 ; 4 uses
  %i.art = shl i64 %i.arr, 1
  %.sink.idx.i223.i = select i1 %i.arq, i64 0, i64 %i.art
  %.sink.i224.i = getelementptr inbounds nuw i8, ptr %i.aro, i64 %.sink.idx.i223.i
  %i.aru = load double, ptr %.sink.i224.i, align 8, !tbaa !57 ; 4 uses
  %i.arv = mul i64 %i.arr, 3
  %.sink.idx.i225.i = select i1 %i.arq, i64 0, i64 %i.arv
  %.sink.i226.i = getelementptr inbounds nuw i8, ptr %i.aro, i64 %.sink.idx.i225.i
  %i.arw = load double, ptr %.sink.i226.i, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #19
  %i.arx = insertelement <2 x double> poison, double %i.arc, i64 0
  %i.ary = insertelement <2 x double> %i.arx, double %i.are, i64 1 ; 2 uses
  %i.arz = insertelement <2 x double> poison, double %i.aru, i64 0
  %i.asa = insertelement <2 x double> %i.arz, double %i.arw, i64 1 ; 2 uses
  %i.asb = fsub <2 x double> %i.ary, %i.asa       ; 2 uses
  %327 = fadd <2 x double> %i.ary, %i.asa         ; 4 uses
  %328 = shufflevector <2 x double> %i.asb, <2 x double> %327, <2 x i32> <i32 0, i32 3>
  %329 = shufflevector <2 x double> %i.asb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %330 = fsub double %i.arf, %i.ars               ; 4 uses
  %i.asc = insertelement <2 x double> poison, double %i.aqv, i64 0
  %i.asd = insertelement <2 x double> %i.asc, double %i.ara, i64 1 ; 2 uses
  %i.ase = insertelement <2 x double> poison, double %i.arn, i64 0
  %i.asf = insertelement <2 x double> %i.ase, double %i.ars, i64 1 ; 2 uses
  %331 = fadd <2 x double> %i.asd, %i.asf         ; 2 uses
  %i.asg = fsub <2 x double> %i.asd, %i.asf       ; 6 uses
  %332 = shufflevector <2 x double> %331, <2 x double> %i.asg, <2 x i32> <i32 1, i32 2> ; 2 uses
  %333 = extractelement <2 x double> %i.asg, i64 0 ; 7 uses
  %334 = fsub double %i.ara, %i.ars
  %335 = fsub double %i.are, %i.arw
  %336 = fmul double %333, %333
  %i.ash = insertelement <2 x double> poison, double %334, i64 0 ; 2 uses
  %337 = shufflevector <2 x double> %i.ash, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %338 = shufflevector <2 x double> %i.ash, <2 x double> %i.asg, <2 x i32> <i32 0, i32 2>
  %339 = insertelement <2 x double> poison, double %336, i64 0
  %340 = insertelement <2 x double> poison, double %335, i64 0 ; 2 uses
  %341 = shufflevector <2 x double> %340, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.asi = shufflevector <2 x double> %i.asg, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %342 = insertelement <2 x double> %i.asi, double %330, i64 1 ; 2 uses
  %343 = extractelement <2 x double> %327, i64 1
  %344 = fsub double %i.ars, %i.ara               ; 5 uses
  %345 = fsub double %i.arg, %i.aru               ; 4 uses
  %346 = call double @llvm.fmuladd.f64(double %333, double %344, double 0.000000e+00)
  %347 = insertelement <2 x double> %339, double %346, i64 1
  %i.asj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %337, <2 x double> %338, <2 x double> %347)
  %348 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %329, <2 x double> %328, <2 x double> %i.asj)
  %i.ask = insertelement <2 x double> %340, double %345, i64 1
  %349 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %341, <2 x double> %i.ask, <2 x double> %348) ; 2 uses
  store <2 x double> %349, ptr %93, align 16, !tbaa !57
  %i.asl = extractelement <2 x double> %349, i64 1
  store double %i.asl, ptr %i.aon, align 16, !tbaa !57
  %350 = fmul double %344, %344
  %351 = insertelement <2 x double> poison, double %350, i64 0
  %i.asm = shufflevector <2 x double> %327, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %352 = shufflevector <2 x double> %327, <2 x double> %i.asg, <2 x i32> <i32 1, i32 2>
  %353 = insertelement <2 x double> poison, double %345, i64 0
  %i.asn = shufflevector <2 x double> %353, <2 x double> poison, <2 x i32> zeroinitializer
  %354 = shufflevector <2 x double> %331, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %355 = insertelement <2 x double> %354, double %345, i64 0
  %i.aso = fsub double %i.arw, %i.are             ; 5 uses
  %i.asp = fsub double %i.aru, %i.arc             ; 5 uses
  %356 = insertelement <2 x double> poison, double %i.asp, i64 0
  %357 = insertelement <2 x double> %356, double %i.aso, i64 1
  %358 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asi, <2 x double> %357, <2 x double> zeroinitializer)
  %359 = call double @llvm.fmuladd.f64(double %344, double %i.asp, double 0.000000e+00)
  %i.asq = insertelement <2 x double> %351, double %359, i64 1
  %360 = call double @llvm.fmuladd.f64(double %344, double %i.aso, double 0.000000e+00)
  %361 = fmul double %i.asp, %i.asp
  %i.asr = insertelement <2 x double> <double poison, double 0.000000e+00>, double %361, i64 0
  %362 = fmul double %i.aso, %i.aso
  %363 = insertelement <2 x double> poison, double %i.arh, i64 0
  %i.ass = insertelement <2 x double> %363, double %i.arc, i64 1 ; 2 uses
  %i.ast = insertelement <2 x double> poison, double %i.arw, i64 0
  %364 = insertelement <2 x double> %i.ast, double %i.aru, i64 1 ; 2 uses
  %365 = fsub <2 x double> %i.ass, %364           ; 5 uses
  %366 = fadd <2 x double> %i.ass, %364           ; 4 uses
  %367 = shufflevector <2 x double> %365, <2 x double> %366, <2 x i32> <i32 0, i32 3>
  %368 = extractelement <2 x double> %366, i64 1
  %369 = shufflevector <2 x double> %365, <2 x double> %366, <2 x i32> <i32 0, i32 3>
  %i.asu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %337, <2 x double> %369, <2 x double> %358)
  %370 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %329, <2 x double> %342, <2 x double> %i.asu)
  %i.asv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %341, <2 x double> %332, <2 x double> %370) ; 3 uses
  store <2 x double> %i.asv, ptr %i.aom, align 16, !tbaa !57
  %371 = shufflevector <2 x double> %i.asg, <2 x double> %365, <2 x i32> <i32 0, i32 2>
  %372 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asi, <2 x double> %371, <2 x double> %i.asq)
  %i.asw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asm, <2 x double> %352, <2 x double> %372)
  %373 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asn, <2 x double> %355, <2 x double> %i.asw) ; 2 uses
  store <2 x double> %373, ptr %i.aoo, align 8, !tbaa !57
  %i.asx = call double @llvm.fmuladd.f64(double %333, double %368, double %360)
  %i.asy = call double @llvm.fmuladd.f64(double %343, double %330, double %i.asx)
  %i.asz = call double @llvm.fmuladd.f64(double %345, double %333, double %i.asy) ; 2 uses
  store double %i.asz, ptr %i.aop, align 8, !tbaa !57
  %i.ata = shufflevector <2 x double> %i.asv, <2 x double> %373, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ata, ptr %i.aoq, align 16, !tbaa !57
  %374 = insertelement <2 x double> %365, double %i.asp, i64 1
  %i.atb = insertelement <2 x double> %365, double %i.aso, i64 1
  %i.atc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %374, <2 x double> %i.atb, <2 x double> %i.asr) ; 2 uses
  %375 = shufflevector <2 x double> %366, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %376 = shufflevector <2 x double> %i.atc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %377 = insertelement <2 x double> %376, double %362, i64 1
  %i.atd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %367, <2 x double> %375, <2 x double> %377) ; 2 uses
  %378 = shufflevector <2 x double> %i.atc, <2 x double> %i.atd, <2 x i32> <i32 0, i32 2>
  %379 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asi, <2 x double> %342, <2 x double> %378)
  %i.ate = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %354, <2 x double> %332, <2 x double> %379) ; 2 uses
  store <2 x double> %i.ate, ptr %i.aor, align 16, !tbaa !57
  %i.atf = extractelement <2 x double> %i.asv, i64 1
  store double %i.atf, ptr %i.aos, align 16, !tbaa !57
  store double %i.asz, ptr %i.aot, align 8, !tbaa !57
  %i.atg = extractelement <2 x double> %i.ate, i64 1
  store double %i.atg, ptr %i.aou, align 16, !tbaa !57
  %380 = extractelement <2 x double> %i.atd, i64 1
  %i.ath = call double @llvm.fmuladd.f64(double %330, double %330, double %380)
  %i.ati = call double @llvm.fmuladd.f64(double %333, double %333, double %i.ath)
  store double %i.ati, ptr %i.aov, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #19
  store i32 0, ptr %i.aow, align 8, !tbaa !47
  store i32 0, ptr %i.aox, align 4, !tbaa !48
  store i32 16842752, ptr %73, align 8, !tbaa !45
  store ptr %79, ptr %i.aoy, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #19
  store <4 x i32> <i32 1124024326, i32 2, i32 4, i32 4>, ptr %75, align 16, !tbaa !41
  store i32 153, ptr %i.aoz, align 16, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.apa, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.apb, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc.i214 unwind label %bb.rk

.noexc.i214:                                      ; preds = %bb.re
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.apc, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %71, i32 noundef 4, i32 noundef 4, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(128) %93, i64 noundef 0)
          to label %.noexc227.i unwind label %bb.rk

.noexc227.i:                                      ; preds = %.noexc.i214
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #19
  store i64 0, ptr %i.ape, align 8
  store i32 33619968, ptr %72, align 8, !tbaa !45
  store ptr %75, ptr %i.apd, align 8, !tbaa !46
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %71, ptr noundef nonnull align 8 dereferenceable(24) %72)
          to label %bb.rg unwind label %bb.rf

bb.rf:                                            ; preds = %.noexc227.i
  %i.atj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  br label %.body.i.i215

bb.rg:                                            ; preds = %.noexc227.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  store i32 0, ptr %i.apf, align 8, !tbaa !47
  store i32 0, ptr %i.apg, align 4, !tbaa !48
  store i32 16842752, ptr %74, align 8, !tbaa !45
  store ptr %75, ptr %i.aph, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #19
  store i64 0, ptr %i.apj, align 8
  store i32 -1040121856, ptr %76, align 8, !tbaa !45
  store ptr %79, ptr %i.api, align 8, !tbaa !46
  %i.atk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.rh unwind label %bb.ri

bb.rh:                                            ; preds = %bb.rg
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %i.atk, i32 noundef -1)
          to label %bb.rj unwind label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg
  %i.atl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %75) #19
  br label %.body.i.i215

.body.i.i215:                                     ; preds = %bb.ri, %bb.rf
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.atl, %bb.ri ], [ %i.atj, %bb.rf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  br label %.body228.i

bb.rj:                                            ; preds = %bb.rh
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %75) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %92) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %91) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %89) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %87) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %81) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  %i.atm = add nuw i64 %.075466.i, 1              ; 2 uses
  %i.atn = load ptr, ptr %i.ant, align 8, !tbaa !22 ; 2 uses
  %i.ato = load ptr, ptr %297, align 8, !tbaa !23 ; 3 uses
  %i.atp = ptrtoint ptr %i.atn to i64
  %i.atq = ptrtoint ptr %i.ato to i64
  %i.atr = sub i64 %i.atp, %i.atq
  %i.ats = sdiv exact i64 %i.atr, 208             ; 2 uses
  %i.att = icmp ult i64 %i.atm, %i.ats
  br i1 %i.att, label %.lr.ph.i210, label %.loopexit432.i, !llvm.loop !154

bb.rk:                                            ; preds = %.noexc.i214, %bb.re
  %i.atu = landingpad { ptr, i32 }
          cleanup
  br label %.body228.i

.body228.i:                                       ; preds = %bb.rk, %.body.i.i215
  %.pn188.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body.i.i215 ], [ %i.atu, %bb.rk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #19
  br label %bb.rl

bb.rl:                                            ; preds = %.body228.i, %bb.rd
  %.pn188.pn.i = phi { ptr, i32 } [ %.pn188.i, %.body228.i ], [ %i.arm, %bb.rd ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %92) #19
  br label %bb.rm

bb.rm:                                            ; preds = %bb.rl, %bb.rc
  %.pn188.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.i, %bb.rl ], [ %i.arl, %bb.rc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #19
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.qx
  %.pn188.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.i, %bb.rm ], [ %i.aqu, %bb.qx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %91) #19
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %bb.qw
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.i, %bb.rn ], [ %i.aqt, %bb.qw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %89) #19
  br label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %bb.qv
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ro ], [ %i.aqs, %bb.qv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %87) #19
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.qu
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.rp ], [ %i.aqr, %bb.qu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #19
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.qt
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.rq ], [ %.pn185.pn.i, %bb.qt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %81) #19
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.qp
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.rr ], [ %.pn182.pn.i211, %bb.qp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  br label %bb.un

._crit_edge.i202:                                 ; preds = %bb.qe, %.loopexit432.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i200
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %94) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %95) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #19
  %i.atv = getelementptr inbounds nuw i8, ptr %96, i64 16
  store i32 0, ptr %i.atv, align 8, !tbaa !47
  %i.atw = getelementptr inbounds nuw i8, ptr %96, i64 20
  store i32 0, ptr %i.atw, align 4, !tbaa !48
  store i32 16842752, ptr %96, align 8, !tbaa !45
  %i.atx = getelementptr inbounds nuw i8, ptr %96, i64 8
  store ptr %79, ptr %i.atx, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #19
  %i.aty = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.atz = getelementptr inbounds nuw i8, ptr %97, i64 16
  store i64 0, ptr %i.atz, align 8
  store i32 33619968, ptr %97, align 8, !tbaa !45
  store ptr %94, ptr %i.aty, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #19
  %i.aua = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.aub = getelementptr inbounds nuw i8, ptr %98, i64 16
  store i64 0, ptr %i.aub, align 8
  store i32 33619968, ptr %98, align 8, !tbaa !45
  store ptr %95, ptr %i.aua, align 8, !tbaa !46
  %i.auc = invoke noundef zeroext i1 @_ZN2cv5eigenERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %96, ptr noundef nonnull align 8 dereferenceable(24) %97, ptr noundef nonnull align 8 dereferenceable(24) %98)
          to label %bb.rt unwind label %bb.sb     ; 0 uses

bb.rt:                                            ; preds = %._crit_edge.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #19, !noalias !236
  store i32 3, ptr %69, align 4, !tbaa !62, !noalias !236
  %i.aud = getelementptr inbounds nuw i8, ptr %69, i64 4
  store i32 4, ptr %i.aud, align 4, !tbaa !63, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #19, !noalias !236
  store i64 9223372034707292160, ptr %70, align 8, !noalias !236
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %102, ptr noundef nonnull align 8 dereferenceable(208) %95, ptr noundef nonnull align 4 dereferenceable(8) %69, ptr noundef nonnull align 4 dereferenceable(8) %70)
          to label %bb.ru unwind label %bb.sc

bb.ru:                                            ; preds = %bb.rt
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19, !noalias !236
end_hunk_0
