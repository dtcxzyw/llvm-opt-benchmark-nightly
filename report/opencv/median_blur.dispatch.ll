Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/median_blur.dispatch?download=true
inline.NumInlined: 1467
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  %i.kjj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kji ; 2 uses
  %i.kjk = load i32, ptr %i.kjj, align 4, !tbaa !29
  %i.kjl = add nsw i32 %i.kjk, 1
  store i32 %i.kjl, ptr %i.kjj, align 4, !tbaa !29
  %i.kjm = lshr i8 %i.kjh, 4
  %i.kjn = zext nneg i8 %i.kjm to i64
  %i.kjo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kjn ; 2 uses
  %i.kjp = load i32, ptr %i.kjo, align 4, !tbaa !29
  %i.kjq = add nsw i32 %i.kjp, 1
  store i32 %i.kjq, ptr %i.kjo, align 4, !tbaa !29
  %i.kjr = getelementptr inbounds nuw i8, ptr %.3212290.i, i64 %i.khw
  %i.kjs = load i8, ptr %i.kjr, align 1, !tbaa !28 ; 2 uses
  %i.kjt = zext i8 %i.kjs to i64
  %i.kju = getelementptr inbounds nuw [4 x i8], ptr %i.jpz, i64 %i.kjt ; 2 uses
  %i.kjv = load i32, ptr %i.kju, align 4, !tbaa !29
  %i.kjw = add nsw i32 %i.kjv, 1
  store i32 %i.kjw, ptr %i.kju, align 4, !tbaa !29
  %i.kjx = lshr i8 %i.kjs, 4
  %i.kjy = zext nneg i8 %i.kjx to i64
  %i.kjz = getelementptr inbounds nuw [4 x i8], ptr %i.jqa, i64 %i.kjy ; 2 uses
  %i.kka = load i32, ptr %i.kjz, align 4, !tbaa !29
  %i.kkb = add nsw i32 %i.kka, 1
  store i32 %i.kkb, ptr %i.kjz, align 4, !tbaa !29
  %i.kkc = getelementptr inbounds nuw i8, ptr %.3212290.i, i64 %i.kii
  %i.kkd = load i8, ptr %i.kkc, align 1, !tbaa !28 ; 2 uses
  %i.kke = zext i8 %i.kkd to i64
  %i.kkf = getelementptr inbounds nuw [4 x i8], ptr %i.jqb, i64 %i.kke ; 2 uses
  %i.kkg = load i32, ptr %i.kkf, align 4, !tbaa !29
  %i.kkh = add nsw i32 %i.kkg, 1
  store i32 %i.kkh, ptr %i.kkf, align 4, !tbaa !29
  %i.kki = lshr i8 %i.kkd, 4
  %i.kkj = zext nneg i8 %i.kki to i64
  %i.kkk = getelementptr inbounds nuw [4 x i8], ptr %i.jqc, i64 %i.kkj ; 2 uses
  %i.kkl = load i32, ptr %i.kkk, align 4, !tbaa !29
  %i.kkm = add nsw i32 %i.kkl, 1
  store i32 %i.kkm, ptr %i.kkk, align 4, !tbaa !29
  %i.kkn = getelementptr inbounds nuw i8, ptr %.3212290.i, i64 %i.kiu
  %i.kko = load i8, ptr %i.kkn, align 1, !tbaa !28 ; 2 uses
  %i.kkp = zext i8 %i.kko to i64
  %i.kkq = getelementptr inbounds nuw [4 x i8], ptr %i.jqd, i64 %i.kkp ; 2 uses
  %i.kkr = load i32, ptr %i.kkq, align 4, !tbaa !29
  %i.kks = add nsw i32 %i.kkr, 1
  store i32 %i.kks, ptr %i.kkq, align 4, !tbaa !29
  %i.kkt = lshr i8 %i.kko, 4
  %i.kku = zext nneg i8 %i.kkt to i64
  %i.kkv = getelementptr inbounds nuw [4 x i8], ptr %i.jqe, i64 %i.kku ; 2 uses
  %i.kkw = load i32, ptr %i.kkv, align 4, !tbaa !29
  %i.kkx = add nsw i32 %i.kkw, 1
  store i32 %i.kkx, ptr %i.kkv, align 4, !tbaa !29
  %indvars.iv.next334.i = add nuw nsw i64 %indvars.iv333.i, 4 ; 2 uses
  %i.kky = icmp samesign ult i64 %indvars.iv.next334.i, %i.jqh
  br i1 %i.kky, label %.lr.ph.i542, label %.loopexit263.i, !llvm.loop !110

.loopexit263.i:                                   ; preds = %.lr.ph.i542, %.lr.ph287.i, %.lr.ph289.i, %.preheader262.i, %.preheader264.i, %.preheader266.i
  %i.kkz = getelementptr inbounds nuw i8, ptr %.3212290.i, i64 %i.jsj
  %i.kla = icmp uge ptr %i.kkz, %i.jph
  %or.cond250.not303.i = select i1 %i.jsi, i1 true, i1 %i.kla
  %i.klb = getelementptr inbounds i8, ptr %.3212290.i, i64 %i.jsl
  %.not240.i = icmp ult ptr %i.klb, %.0202296.i
  %or.cond252.i = select i1 %i.jsk, i1 true, i1 %.not240.i
  %or.cond300.i = select i1 %or.cond250.not303.i, i1 %or.cond252.i, i1 false
  %.4.idx.i = select i1 %or.cond300.i, i64 0, i64 %i.jsl
  %.4.i = getelementptr inbounds i8, ptr %.3212290.i, i64 %.4.idx.i
  %.not241.i = icmp slt i32 %.1293.i, %i.jmw
  %narrow.i541 = select i1 %.not241.i, i32 0, i32 %.0225.i
  %.2208.idx.i = sext i32 %narrow.i541 to i64
  %.2208.i = getelementptr inbounds i8, ptr %.1207291.i, i64 %.2208.idx.i
  %i.klc = getelementptr inbounds i8, ptr %.1205292.i, i64 %i.jsm
  br label %.preheader268.i

._crit_edge.i539:                                 ; preds = %bb.np, %.preheader270.i
  %i.kld = add nuw nsw i32 %.0297.i, 1            ; 2 uses
  %i.kle = getelementptr inbounds nuw i8, ptr %.0202296.i, i64 %i.jpp
  %i.klf = getelementptr inbounds nuw i8, ptr %.0203295.i, i64 %i.jpp
  %exitcond344.not.i = icmp eq i32 %i.kld, %i.jop
  br i1 %exitcond344.not.i, label %._crit_edge299.i, label %bb.mw, !llvm.loop !111

._crit_edge299.i:                                 ; preds = %._crit_edge.i539, %.preheader271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.klg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.klh = load i32, ptr %i.klg, align 8, !tbaa !43
  %.not.i256.i = icmp eq i32 %i.klh, 0
  br i1 %.not.i256.i, label %_ZN2cv12cpu_baselineL16medianBlur_8u_OmERKNS_3MatERS1_i.exit, label %bb.nw

bb.nw:                                            ; preds = %._crit_edge299.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %11)
          to label %_ZN2cv12cpu_baselineL16medianBlur_8u_OmERKNS_3MatERS1_i.exit unwind label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.kli = landingpad { ptr, i32 }
          catch ptr null
  %i.klj = extractvalue { ptr, i32 } %i.kli, 0
  call void @__clang_call_terminate(ptr %i.klj) #17
  unreachable

.body.i531:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i534
  %.pn236.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn236.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255.i ], [ %i.jru, %bb.mq ], [ %i.jnx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i534 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %.body

_ZN2cv12cpu_baselineL16medianBlur_8u_OmERKNS_3MatERS1_i.exit: ; preds = %._crit_edge299.i, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.px

bb.ny:                                            ; preds = %bb.nz, %bb.mh, %bb.mf
  %i.klk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.nz:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL16medianBlur_8u_O1ERKNS_3MatERS1_iE24__cv_trace_location_fn87)
          to label %.noexc567 unwind label %bb.ny

.noexc567:                                        ; preds = %bb.nz
  %i.kll = load i32, ptr %1, align 8, !tbaa !8
  %i.klm = lshr i32 %i.kll, 5                     ; 2 uses
  %i.kln = and i32 %i.klm, 127                    ; 2 uses
  %i.klo = add nuw nsw i32 %i.kln, 1              ; 6 uses
  %i.klp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.klq = load i32, ptr %i.klp, align 8, !tbaa !112 ; 3 uses
  %i.klr = add nsw i32 %2, -1                     ; 4 uses
  %i.kls = lshr i32 %i.klr, 1                     ; 8 uses
  %or.cond.i550 = icmp samesign ult i32 %i.kln, 4
  br i1 %or.cond.i550, label %bb.of, label %bb.oa

bb.oa:                                            ; preds = %.noexc567
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ob unwind label %bb.od

bb.ob:                                            ; preds = %bb.oa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv12cpu_baselineL16medianBlur_8u_O1ERKNS_3MatERS1_i, ptr noundef nonnull @.str.1, i32 noundef 120) #15
          to label %bb.oc unwind label %bb.oe

bb.oc:                                            ; preds = %bb.ob
  unreachable

bb.od:                                            ; preds = %bb.oa
  %i.klt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i551

bb.oe:                                            ; preds = %bb.ob
  %i.klu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.klv = load ptr, ptr %4, align 8, !tbaa !25   ; 2 uses
  %i.klw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.klx = icmp eq ptr %i.klv, %i.klw
  br i1 %i.klx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i551, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i553: ; preds = %bb.oe
  %i.kly = load i64, ptr %i.klw, align 8, !tbaa !28
  %i.klz = add i64 %i.kly, 1
  call void @_ZdlPvm(ptr noundef %i.klv, i64 noundef %i.klz) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i551

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i551: ; preds = %bb.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i553, %bb.od
  %.pn.i552 = phi { ptr, i32 } [ %i.klt, %bb.od ], [ %i.klu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i553 ], [ %i.klu, %bb.oe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNSt6vectorItSaItEED2Ev.exit390.i

bb.of:                                            ; preds = %.noexc567
  %i.kma = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.kmb = load i64, ptr %i.kma, align 8, !tbaa !22 ; 3 uses
  %i.kmc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.kmd = load i64, ptr %i.kmc, align 8, !tbaa !22
  %i.kme = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %.rhs.trunc.i = trunc nuw nsw i32 %i.klo to i16
  %i.kmf = udiv i16 512, %.rhs.trunc.i            ; 2 uses
  %.zext.i = zext nneg i16 %i.kmf to i32
  %i.kmg = load i32, ptr %i.kme, align 4, !tbaa !29 ; 2 uses
  %.sroa.speculated433.i = call i32 @llvm.smin.i32(i32 %i.kmg, i32 %.zext.i) ; 2 uses
  %i.kmh = and i32 %i.klr, -2                     ; 8 uses
  %i.kmi = add nsw i32 %.sroa.speculated433.i, %i.kmh ; 2 uses
  %i.kmj = shl nsw i32 %i.kmi, 4
  %i.kmk = mul nsw i32 %i.kmj, %i.klo             ; 2 uses
  %i.kml = add nsw i32 %i.kmk, 16                 ; 2 uses
  %i.kmm = sext i32 %i.kml to i64                 ; 2 uses
  %i.kmn = icmp slt i32 %i.kmk, -16
  br i1 %i.kmn, label %bb.og, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.og:                                            ; preds = %bb.of
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #15
          to label %.noexc.i566 unwind label %bb.on

.noexc.i566:                                      ; preds = %bb.og
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.of
  %.not.i.i.i.i.i = icmp eq i32 %i.kml, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit.i, label %bb.oh

bb.oh:                                            ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.kmo = shl nuw nsw i64 %i.kmm, 1              ; 2 uses
  %i.kmp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kmo) #18
          to label %.noexc360.i unwind label %bb.on ; 4 uses

.noexc360.i:                                      ; preds = %bb.oh
  %i.kmq = getelementptr inbounds nuw [2 x i8], ptr %i.kmp, i64 %i.kmm
  store i16 0, ptr %i.kmp, align 2, !tbaa !46
  %i.kmr = getelementptr i8, ptr %i.kmp, i64 2
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.kmo, -2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kmr, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !46
  %i.kms = ptrtoint ptr %i.kmq to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit.i

_ZNSt6vectorItSaItEEC2EmRKS0_.exit.i:             ; preds = %.noexc360.i, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10.0.i = phi i64 [ %i.kms, %.noexc360.i ], [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.sroa.0427.0.i = phi ptr [ %i.kmp, %.noexc360.i ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 6 uses
  %i.kmt = shl nsw i32 %i.kmi, 8
  %i.kmu = mul nsw i32 %i.kmt, %i.klo             ; 2 uses
  %i.kmv = icmp slt i32 %i.kmu, 0
  br i1 %i.kmv, label %bb.oi, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i361.i

bb.oi:                                            ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #15
          to label %.noexc366.i unwind label %bb.oo

.noexc366.i:                                      ; preds = %bb.oi
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i361.i: ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit.i
  %i.kmw = shl nuw i32 %i.kmu, 1
  %i.kmx = or disjoint i32 %i.kmw, 32
  %i.kmy = zext i32 %i.kmx to i64                 ; 4 uses
  %i.kmz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kmy) #18
          to label %bb.oj unwind label %bb.oo     ; 5 uses

bb.oj:                                            ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i361.i
  store i16 0, ptr %i.kmz, align 2, !tbaa !46
  %i.kna = getelementptr i8, ptr %i.kmz, i64 2
  %.idx.i.i.i.i.i.i.i363.i = add nsw i64 %i.kmy, -2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kna, i8 0, i64 %.idx.i.i.i.i.i.i.i363.i, i1 false), !tbaa !46
  %i.knb = ptrtoint ptr %.sroa.0427.0.i to i64    ; 2 uses
  %i.knc = add i64 %i.knb, 15
  %i.knd = and i64 %i.knc, -16
  %i.kne = inttoptr i64 %i.knd to ptr             ; 10 uses
  %i.knf = ptrtoint ptr %i.kmz to i64
  %i.kng = add i64 %i.knf, 15
  %i.knh = and i64 %i.kng, -16
  %i.kni = inttoptr i64 %i.knh to ptr             ; 8 uses
  %i.knj = load i32, ptr %i.kme, align 4, !tbaa !113 ; 2 uses
  %i.knk = icmp sgt i32 %i.knj, 0
  br i1 %i.knk, label %.lr.ph501.i, label %_ZNSt6vectorItSaItEED2Ev.exit.i

.lr.ph501.i:                                      ; preds = %bb.oj
  %i.knl = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.knm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.knn = shl nuw nsw i32 %i.klo, 8
  %i.kno = trunc i32 %i.kls to i16
  %i.knp = add i16 %i.kno, 2                      ; 2 uses
  %i.knq = add nsw i32 %i.klq, -1                 ; 2 uses
  %i.knr = icmp sgt i32 %i.klq, 0
  %i.kns = xor i32 %i.kls, -1
  %i.knt = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.knu = trunc i32 %i.klr to i16
  %i.knv = or i16 %i.knu, 1                       ; 16 uses
  %i.knw = add nuw nsw i32 %i.kls, 1
  %i.knx = mul i32 %i.knw, %i.kmh                 ; 32 uses
  %i.kny = or i32 %i.klr, 1
  %i.knz = zext nneg i32 %i.klo to i64            ; 8 uses
  %i.koa = zext nneg i32 %i.kls to i64            ; 4 uses
  %.zext667.i = zext nneg i16 %i.kmf to i64
  %i.kob = sext i32 %i.kmg to i64
  %smin.i = call i64 @llvm.smin.i64(i64 %.zext667.i, i64 %i.kob)
  %wide.trip.count568.i = zext nneg i32 %i.klq to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 4 uses
  %.phi.trans.insert588.i = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %.phi.trans.insert590.i = getelementptr inbounds nuw i8, ptr %6, i64 6 ; 4 uses
  %.phi.trans.insert592.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.phi.trans.insert594.i = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 4 uses
  %.phi.trans.insert596.i = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %.phi.trans.insert598.i = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 4 uses
  %.phi.trans.insert600.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.phi.trans.insert602.i = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 4 uses
  %.phi.trans.insert604.i = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %.phi.trans.insert606.i = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 4 uses
  %.phi.trans.insert608.i = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %.phi.trans.insert610.i = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 4 uses
  %.phi.trans.insert612.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 4 uses
  %.phi.trans.insert614.i = getelementptr inbounds nuw i8, ptr %6, i64 30 ; 4 uses
  %i.koc = add i32 %i.kmh, -2
  %i.kod = zext i32 %i.koc to i64
  %i.koe = shl nuw nsw i64 %i.kod, 5
  %i.kof = getelementptr i8, ptr %i.kne, i64 %i.koe
  %scevgep = getelementptr i8, ptr %i.kof, i64 64
  %i.kog = shl nuw nsw i32 %i.klm, 1
  %i.koh = and i32 %i.kog, 254
  %i.koi = zext nneg i32 %i.koh to i64
  %i.koj = add i32 %i.kmh, -2                     ; 2 uses
  %i.kok = zext i32 %i.koj to i64
  %i.kol = add nuw nsw i64 %i.kok, 2              ; 2 uses
  %min.iters.check1453 = icmp ult i32 %i.koj, 6
  %bound1 = icmp ugt ptr %i.knt, %i.kne
  %n.vec1455 = and i64 %i.kol, 8589934584         ; 4 uses
  %i.kom = shl nuw nsw i64 %n.vec1455, 5
  %i.kon = trunc i64 %n.vec1455 to i32
  %cmp.n1483 = icmp eq i64 %i.kol, %n.vec1455
  br label %bb.op

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %._crit_edge498.i, %bb.oj
  call void @_ZdlPvm(ptr noundef nonnull %i.kmz, i64 noundef %i.kmy) #16
  %.not.i.i.i369.i = icmp eq ptr %.sroa.0427.0.i, null
  br i1 %.not.i.i.i369.i, label %_ZNSt6vectorItSaItEED2Ev.exit370.i, label %bb.ok

bb.ok:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.koo = sub i64 %.sroa.10.0.i, %i.knb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0427.0.i, i64 noundef %i.koo) #16
  br label %_ZNSt6vectorItSaItEED2Ev.exit370.i

_ZNSt6vectorItSaItEED2Ev.exit370.i:               ; preds = %bb.ok, %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.kop = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.koq = load i32, ptr %i.kop, align 8, !tbaa !43
  %.not.i.i555 = icmp eq i32 %i.koq, 0
  br i1 %.not.i.i555, label %_ZN2cv12cpu_baselineL16medianBlur_8u_O1ERKNS_3MatERS1_i.exit, label %bb.ol

bb.ol:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit370.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv12cpu_baselineL16medianBlur_8u_O1ERKNS_3MatERS1_i.exit unwind label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.kor = landingpad { ptr, i32 }
          catch ptr null
  %i.kos = extractvalue { ptr, i32 } %i.kor, 0
  call void @__clang_call_terminate(ptr %i.kos) #17
  unreachable

bb.on:                                            ; preds = %bb.oh, %bb.og
  %i.kot = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit390.i

bb.oo:                                            ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i361.i, %bb.oi
  %i.kou = landingpad { ptr, i32 }
          cleanup
  br label %bb.pt

bb.op:                                            ; preds = %._crit_edge498.i, %.lr.ph501.i
  %indvars.iv570.i = phi i64 [ 0, %.lr.ph501.i ], [ %indvars.iv.next571.i, %._crit_edge498.i ] ; 4 uses
  %i.kov = phi i32 [ %i.knj, %.lr.ph501.i ], [ %i.mjy, %._crit_edge498.i ]
  %i.kow = trunc nsw i64 %indvars.iv570.i to i32
  %i.kox = sub nsw i32 %i.kov, %i.kow
  %.sroa.speculated411.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated433.i, i32 %i.kox)
  %i.koy = add nsw i32 %.sroa.speculated411.i, %i.kmh ; 12 uses
  %i.koz = load ptr, ptr %i.knl, align 8, !tbaa !17
  %i.kpa = mul nsw i64 %indvars.iv570.i, %i.knz
  %i.kpb = getelementptr inbounds i8, ptr %i.koz, i64 %i.kpa ; 3 uses
  %i.kpc = load ptr, ptr %i.knm, align 8, !tbaa !17
  %i.kpd = shl i32 %i.koy, 4                      ; 4 uses
  %i.kpe = mul nsw i32 %i.kpd, %i.klo
  %i.kpf = sext i32 %i.kpe to i64
  %i.kpg = shl nsw i64 %i.kpf, 1
  call void @llvm.memset.p0.i64(ptr align 16 %i.kne, i8 0, i64 %i.kpg, i1 false)
  %i.kph = mul i32 %i.knn, %i.koy
  %i.kpi = sext i32 %i.kph to i64
  %i.kpj = shl nsw i64 %i.kpi, 1
  call void @llvm.memset.p0.i64(ptr align 16 %i.kni, i8 0, i64 %i.kpj, i1 false)
  %i.kpk = icmp sgt i32 %i.koy, 0                 ; 2 uses
  %i.kpl = sext i32 %i.koy to i64                 ; 4 uses
  %i.kpm = zext nneg i32 %i.koy to i64
  br i1 %i.kpk, label %.preheader451.i, label %.preheader452.i.split

.preheader452.i.split:                            ; preds = %._crit_edge463.split.i.loopexit, %bb.op
  %i.kpn = sub nsw i64 %indvars.iv570.i, %i.koa
  %i.kpo = mul nsw i64 %i.kpn, %i.knz
  %i.kpp = getelementptr inbounds i8, ptr %i.kpc, i64 %i.kpo
  br i1 %i.knr, label %.lr.ph497.i, label %._crit_edge498.i

.lr.ph497.i:                                      ; preds = %.preheader452.i.split
  %i.kpq = sub nsw i32 %i.koy, %i.kls             ; 2 uses
  %i.kpr = icmp slt i32 %i.kls, %i.kpq
  %i.kps = sext i32 %i.kpd to i64                 ; 3 uses
  %i.kpt = sext i32 %i.kpq to i64
  %i.kpu = mul nsw i64 %i.koi, %i.kps
  %scevgep1451 = getelementptr i8, ptr %scevgep, i64 %i.kpu
  %bound0 = icmp ult ptr %6, %scevgep1451
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.kpd, 0
  %i.kpv = or i1 %found.conflict, %stride.check
  br label %bb.os

.preheader451.i:                                  ; preds = %bb.op, %._crit_edge463.split.i.loopexit
  %indvars.iv514.i = phi i64 [ %indvars.iv.next515.i, %._crit_edge463.split.i.loopexit ], [ 0, %bb.op ] ; 4 uses
  %i.kpw = mul nuw nsw i64 %indvars.iv514.i, %i.kpm ; 2 uses
  %invariant.gep670.i = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %indvars.iv514.i ; 2 uses
  %indvars.iv514.tr.i = trunc nuw nsw i64 %indvars.iv514.i to i32
  %i.kpx = shl nuw nsw i32 %indvars.iv514.tr.i, 4 ; 2 uses
  br label %bb.oq

bb.oq:                                            ; preds = %bb.oq, %.preheader451.i
  %indvars.iv.i562 = phi i64 [ 0, %.preheader451.i ], [ %indvars.iv.next.i563, %bb.oq ] ; 4 uses
  %i.kpy = add nuw nsw i64 %indvars.iv.i562, %i.kpw
  %i.kpz = shl nuw nsw i64 %i.kpy, 4
  %i.kqa = mul nuw nsw i64 %indvars.iv.i562, %i.knz
  %gep671.i = getelementptr inbounds nuw i8, ptr %invariant.gep670.i, i64 %i.kqa ; 2 uses
  %i.kqb = load i8, ptr %gep671.i, align 1, !tbaa !28
  %i.kqc = lshr i8 %i.kqb, 4
  %i.kqd = zext nneg i8 %i.kqc to i64
  %.masked.i = and i64 %i.kpz, 4294967280
  %i.kqe = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %.masked.i
  %i.kqf = getelementptr inbounds nuw [2 x i8], ptr %i.kqe, i64 %i.kqd ; 2 uses
  %i.kqg = load i16, ptr %i.kqf, align 2, !tbaa !46
  %i.kqh = add i16 %i.kqg, %i.knp
  store i16 %i.kqh, ptr %i.kqf, align 2, !tbaa !46
  %i.kqi = load i8, ptr %gep671.i, align 1, !tbaa !28
  %i.kqj = zext i8 %i.kqi to i32                  ; 2 uses
  %i.kqk = lshr i32 %i.kqj, 4
  %i.kql = or disjoint i32 %i.kqk, %i.kpx
  %i.kqm = mul nuw nsw i32 %i.kql, %i.koy
  %i.kqn = trunc nuw nsw i64 %indvars.iv.i562 to i32
  %i.kqo = add nuw nsw i32 %i.kqm, %i.kqn
  %i.kqp = shl nsw i32 %i.kqo, 4
  %i.kqq = and i32 %i.kqj, 15
  %i.kqr = or disjoint i32 %i.kqp, %i.kqq
  %i.kqs = zext nneg i32 %i.kqr to i64
  %i.kqt = getelementptr inbounds nuw [2 x i8], ptr %i.kni, i64 %i.kqs ; 2 uses
  %i.kqu = load i16, ptr %i.kqt, align 2, !tbaa !46
  %i.kqv = add i16 %i.kqu, %i.knp
  store i16 %i.kqv, ptr %i.kqt, align 2, !tbaa !46
  %indvars.iv.next.i563 = add nuw nsw i64 %indvars.iv.i562, 1 ; 2 uses
  %i.kqw = icmp slt i64 %indvars.iv.next.i563, %i.kpl
  br i1 %i.kqw, label %bb.oq, label %.lr.ph460.i, !llvm.loop !114

.lr.ph460.i:                                      ; preds = %bb.oq, %._crit_edge.i564
  %storemerge356461.i = phi i32 [ %i.krt, %._crit_edge.i564 ], [ 1, %bb.oq ] ; 2 uses
  %.sroa.speculated407.i = call i32 @llvm.smin.i32(i32 %i.knq, i32 %storemerge356461.i)
  %i.kqx = sext i32 %.sroa.speculated407.i to i64
  %i.kqy = mul i64 %i.kmb, %i.kqx
  %gep675.i = getelementptr i8, ptr %invariant.gep670.i, i64 %i.kqy
  br label %bb.or

bb.or:                                            ; preds = %bb.or, %.lr.ph460.i
  %indvars.iv511.i = phi i64 [ 0, %.lr.ph460.i ], [ %indvars.iv.next512.i, %bb.or ] ; 4 uses
  %38 = add nuw nsw i64 %indvars.iv511.i, %i.kpw
  %39 = shl nuw nsw i64 %38, 4
  %i.kqz = mul nuw nsw i64 %indvars.iv511.i, %i.knz
  %gep673.i = getelementptr inbounds nuw i8, ptr %gep675.i, i64 %i.kqz ; 2 uses
  %i.kra = load i8, ptr %gep673.i, align 1, !tbaa !28
  %i.krb = lshr i8 %i.kra, 4
  %40 = zext nneg i8 %i.krb to i64
  %.masked664.i = and i64 %39, 4294967280
  %41 = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %.masked664.i
  %i.krc = getelementptr inbounds nuw [2 x i8], ptr %41, i64 %40 ; 2 uses
  %i.krd = load i16, ptr %i.krc, align 2, !tbaa !46
  %i.kre = add i16 %i.krd, 1
  store i16 %i.kre, ptr %i.krc, align 2, !tbaa !46
  %i.krf = load i8, ptr %gep673.i, align 1, !tbaa !28
  %i.krg = zext i8 %i.krf to i32                  ; 2 uses
  %i.krh = lshr i32 %i.krg, 4
  %i.kri = or disjoint i32 %i.krh, %i.kpx
  %i.krj = mul nuw nsw i32 %i.kri, %i.koy
  %42 = trunc nuw nsw i64 %indvars.iv511.i to i32
  %i.krk = add nuw nsw i32 %i.krj, %42
  %i.krl = shl nsw i32 %i.krk, 4
  %i.krm = and i32 %i.krg, 15
  %i.krn = or disjoint i32 %i.krl, %i.krm
  %i.kro = zext nneg i32 %i.krn to i64
  %i.krp = getelementptr inbounds nuw [2 x i8], ptr %i.kni, i64 %i.kro ; 2 uses
  %i.krq = load i16, ptr %i.krp, align 2, !tbaa !46
  %i.krr = add i16 %i.krq, 1
  store i16 %i.krr, ptr %i.krp, align 2, !tbaa !46
  %indvars.iv.next512.i = add nuw nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %i.krs = icmp slt i64 %indvars.iv.next512.i, %i.kpl
  br i1 %i.krs, label %bb.or, label %._crit_edge.i564, !llvm.loop !115

._crit_edge.i564:                                 ; preds = %bb.or
  %i.krt = add nuw nsw i32 %storemerge356461.i, 1 ; 2 uses
  %exitcond.not.i565 = icmp eq i32 %i.krt, %i.kls
  br i1 %exitcond.not.i565, label %._crit_edge463.split.i.loopexit, label %.lr.ph460.i, !llvm.loop !116

._crit_edge463.split.i.loopexit:                  ; preds = %._crit_edge.i564
  %indvars.iv.next515.i = add nuw nsw i64 %indvars.iv514.i, 1 ; 2 uses
  %exitcond517.not.i = icmp eq i64 %indvars.iv.next515.i, %i.knz
  br i1 %exitcond517.not.i, label %.preheader452.i.split, label %.preheader451.i, !llvm.loop !117

bb.os:                                            ; preds = %bb.ps, %.lr.ph497.i
  %indvars.iv565.i = phi i64 [ 0, %.lr.ph497.i ], [ %indvars.iv.next566.i, %bb.ps ] ; 3 uses
  %i.kru = trunc i64 %indvars.iv565.i to i32      ; 2 uses
  %i.krv = add i32 %i.kru, %i.kns
  %.sroa.speculated402.i = call i32 @llvm.smax.i32(i32 %i.krv, i32 0)
  %i.krw = zext nneg i32 %.sroa.speculated402.i to i64
  %i.krx = mul i64 %i.kmb, %i.krw
  %i.kry = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %i.krx
  %i.krz = add i32 %i.kls, %i.kru
  %.sroa.speculated397.i = call i32 @llvm.smin.i32(i32 %i.krz, i32 %i.knq)
  %i.ksa = sext i32 %.sroa.speculated397.i to i64
  %i.ksb = mul i64 %i.kmb, %i.ksa
  %i.ksc = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %i.ksb
  %i.ksd = mul i64 %indvars.iv565.i, %i.kmd
  %i.kse = getelementptr i8, ptr %i.kpp, i64 %i.ksd
  br label %bb.ot

bb.ot:                                            ; preds = %._crit_edge494.i, %bb.os
  %indvars.iv560.i = phi i64 [ 0, %bb.os ], [ %indvars.iv.next561.i, %._crit_edge494.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %6, i8 0, i64 544, i1 false)
  store i16 0, ptr %.sroa.0.i, align 16
  store i16 0, ptr %.sroa.5.i, align 2
  store i16 0, ptr %.sroa.6.i, align 4
  store i16 0, ptr %.sroa.7.i, align 2
  store i16 0, ptr %.sroa.8.i, align 8
  store i16 0, ptr %.sroa.9.i, align 2
  store i16 0, ptr %.sroa.10.i, align 4
  store i16 0, ptr %.sroa.11.i, align 2
  store i16 0, ptr %.sroa.12.i, align 16
  store i16 0, ptr %.sroa.13.i, align 2
  store i16 0, ptr %.sroa.14.i, align 4
  store i16 0, ptr %.sroa.15.i, align 2
  store i16 0, ptr %.sroa.16.i, align 8
  store i16 0, ptr %.sroa.17.i, align 2
  store i16 0, ptr %.sroa.18.i, align 4
  store i16 0, ptr %.sroa.19.i, align 2
  %i.ksf = shl nuw nsw i64 %indvars.iv560.i, 4    ; 4 uses
  br i1 %i.kpk, label %.lr.ph468.i, label %.preheader447.i.preheader

.lr.ph468.i:                                      ; preds = %bb.ot
  %i.ksg = trunc i64 %indvars.iv560.i to i32
  %i.ksh = mul i32 %i.koy, %i.ksg
  %i.ksi = trunc nuw nsw i64 %i.ksf to i32        ; 2 uses
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ou, %.lr.ph468.i
  %indvars.iv518.i = phi i64 [ 0, %.lr.ph468.i ], [ %indvars.iv.next519.i, %bb.ou ] ; 3 uses
  %i.ksj = trunc i64 %indvars.iv518.i to i32      ; 3 uses
  %i.ksk = add i32 %i.ksh, %i.ksj
  %i.ksl = shl nsw i32 %i.ksk, 4                  ; 2 uses
  %i.ksm = mul nuw nsw i64 %indvars.iv518.i, %i.knz
  %i.ksn = add nuw nsw i64 %i.ksm, %indvars.iv560.i ; 2 uses
  %i.kso = getelementptr inbounds nuw i8, ptr %i.kry, i64 %i.ksn ; 2 uses
  %i.ksp = load i8, ptr %i.kso, align 1, !tbaa !28
  %i.ksq = lshr i8 %i.ksp, 4
  %i.ksr = zext nneg i8 %i.ksq to i32
  %i.kss = or disjoint i32 %i.ksl, %i.ksr
  %i.kst = zext nneg i32 %i.kss to i64
  %i.ksu = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %i.kst ; 2 uses
  %i.ksv = load i16, ptr %i.ksu, align 2, !tbaa !46
  %i.ksw = add i16 %i.ksv, -1
  store i16 %i.ksw, ptr %i.ksu, align 2, !tbaa !46
  %i.ksx = load i8, ptr %i.kso, align 1, !tbaa !28
  %i.ksy = zext i8 %i.ksx to i32                  ; 2 uses
  %i.ksz = lshr i32 %i.ksy, 4
  %i.kta = or disjoint i32 %i.ksz, %i.ksi
  %i.ktb = mul nuw nsw i32 %i.kta, %i.koy
  %i.ktc = add nuw nsw i32 %i.ktb, %i.ksj
  %i.ktd = shl nsw i32 %i.ktc, 4
  %i.kte = and i32 %i.ksy, 15
  %i.ktf = or disjoint i32 %i.ktd, %i.kte
  %i.ktg = zext nneg i32 %i.ktf to i64
  %i.kth = getelementptr inbounds nuw [2 x i8], ptr %i.kni, i64 %i.ktg ; 2 uses
  %i.kti = load i16, ptr %i.kth, align 2, !tbaa !46
  %i.ktj = add i16 %i.kti, -1
  store i16 %i.ktj, ptr %i.kth, align 2, !tbaa !46
  %i.ktk = getelementptr inbounds nuw i8, ptr %i.ksc, i64 %i.ksn ; 2 uses
  %i.ktl = load i8, ptr %i.ktk, align 1, !tbaa !28
  %i.ktm = lshr i8 %i.ktl, 4
  %i.ktn = zext nneg i8 %i.ktm to i32
  %i.kto = or disjoint i32 %i.ksl, %i.ktn
  %i.ktp = zext nneg i32 %i.kto to i64
  %i.ktq = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %i.ktp ; 2 uses
  %i.ktr = load i16, ptr %i.ktq, align 2, !tbaa !46
  %i.kts = add i16 %i.ktr, 1
  store i16 %i.kts, ptr %i.ktq, align 2, !tbaa !46
  %i.ktt = load i8, ptr %i.ktk, align 1, !tbaa !28
  %i.ktu = zext i8 %i.ktt to i32                  ; 2 uses
  %i.ktv = lshr i32 %i.ktu, 4
  %i.ktw = or disjoint i32 %i.ktv, %i.ksi
  %i.ktx = mul nuw nsw i32 %i.ktw, %i.koy
  %i.kty = add nuw nsw i32 %i.ktx, %i.ksj
  %i.ktz = shl nsw i32 %i.kty, 4
  %i.kua = and i32 %i.ktu, 15
  %i.kub = or disjoint i32 %i.ktz, %i.kua
  %i.kuc = zext nneg i32 %i.kub to i64
  %i.kud = getelementptr inbounds nuw [2 x i8], ptr %i.kni, i64 %i.kuc ; 2 uses
  %i.kue = load i16, ptr %i.kud, align 2, !tbaa !46
  %i.kuf = add i16 %i.kue, 1
  store i16 %i.kuf, ptr %i.kud, align 2, !tbaa !46
  %indvars.iv.next519.i = add nuw nsw i64 %indvars.iv518.i, 1 ; 2 uses
  %i.kug = icmp slt i64 %indvars.iv.next519.i, %i.kpl
  br i1 %i.kug, label %bb.ou, label %.preheader447.i.preheader, !llvm.loop !118

.preheader447.i.preheader:                        ; preds = %bb.ou, %bb.ot
  br label %.preheader447.i

.preheader447.i:                                  ; preds = %.preheader447.i.preheader, %.preheader447.i
  %indvars.iv525.i = phi i64 [ %indvars.iv.next526.i, %.preheader447.i ], [ 0, %.preheader447.i.preheader ] ; 3 uses
  %i.kuh = getelementptr inbounds nuw [32 x i8], ptr %i.knt, i64 %indvars.iv525.i ; 17 uses
  %i.kui = add nuw nsw i64 %indvars.iv525.i, %i.ksf
  %i.kuj = mul nsw i64 %i.kui, %i.kps
  %i.kuk = load i16, ptr %i.kuh, align 16, !tbaa !46
  %i.kul = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %i.kuj ; 16 uses
  %i.kum = load i16, ptr %i.kul, align 16, !tbaa !46
  %i.kun = mul i16 %i.kum, %i.knv
  %i.kuo = add i16 %i.kun, %i.kuk
  store i16 %i.kuo, ptr %i.kuh, align 16, !tbaa !46
  %i.kup = getelementptr inbounds nuw i8, ptr %i.kuh, i64 2 ; 2 uses
  %i.kuq = load i16, ptr %i.kup, align 2, !tbaa !46
  %i.kur = getelementptr i8, ptr %i.kul, i64 2
  %i.kus = load i16, ptr %i.kur, align 2, !tbaa !46
  %i.kut = mul i16 %i.kus, %i.knv
  %i.kuu = add i16 %i.kut, %i.kuq
  store i16 %i.kuu, ptr %i.kup, align 2, !tbaa !46
  %i.kuv = getelementptr inbounds nuw i8, ptr %i.kuh, i64 4 ; 2 uses
  %i.kuw = load i16, ptr %i.kuv, align 4, !tbaa !46
  %i.kux = getelementptr i8, ptr %i.kul, i64 4
  %i.kuy = load i16, ptr %i.kux, align 4, !tbaa !46
  %i.kuz = mul i16 %i.kuy, %i.knv
  %i.kva = add i16 %i.kuz, %i.kuw
  store i16 %i.kva, ptr %i.kuv, align 4, !tbaa !46
  %i.kvb = getelementptr inbounds nuw i8, ptr %i.kuh, i64 6 ; 2 uses
  %i.kvc = load i16, ptr %i.kvb, align 2, !tbaa !46
  %i.kvd = getelementptr i8, ptr %i.kul, i64 6
  %i.kve = load i16, ptr %i.kvd, align 2, !tbaa !46
  %i.kvf = mul i16 %i.kve, %i.knv
  %i.kvg = add i16 %i.kvf, %i.kvc
  store i16 %i.kvg, ptr %i.kvb, align 2, !tbaa !46
  %i.kvh = getelementptr inbounds nuw i8, ptr %i.kuh, i64 8 ; 2 uses
  %i.kvi = load i16, ptr %i.kvh, align 8, !tbaa !46
  %i.kvj = getelementptr i8, ptr %i.kul, i64 8
  %i.kvk = load i16, ptr %i.kvj, align 8, !tbaa !46
  %i.kvl = mul i16 %i.kvk, %i.knv
  %i.kvm = add i16 %i.kvl, %i.kvi
  store i16 %i.kvm, ptr %i.kvh, align 8, !tbaa !46
  %i.kvn = getelementptr inbounds nuw i8, ptr %i.kuh, i64 10 ; 2 uses
  %i.kvo = load i16, ptr %i.kvn, align 2, !tbaa !46
  %i.kvp = getelementptr i8, ptr %i.kul, i64 10
  %i.kvq = load i16, ptr %i.kvp, align 2, !tbaa !46
  %i.kvr = mul i16 %i.kvq, %i.knv
  %i.kvs = add i16 %i.kvr, %i.kvo
  store i16 %i.kvs, ptr %i.kvn, align 2, !tbaa !46
  %i.kvt = getelementptr inbounds nuw i8, ptr %i.kuh, i64 12 ; 2 uses
  %i.kvu = load i16, ptr %i.kvt, align 4, !tbaa !46
  %i.kvv = getelementptr i8, ptr %i.kul, i64 12
  %i.kvw = load i16, ptr %i.kvv, align 4, !tbaa !46
  %i.kvx = mul i16 %i.kvw, %i.knv
  %i.kvy = add i16 %i.kvx, %i.kvu
  store i16 %i.kvy, ptr %i.kvt, align 4, !tbaa !46
  %i.kvz = getelementptr inbounds nuw i8, ptr %i.kuh, i64 14 ; 2 uses
end_hunk_0
