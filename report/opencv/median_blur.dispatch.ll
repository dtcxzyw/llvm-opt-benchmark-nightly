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
  %i.kmo = shl nsw i64 %i.kmm, 1                  ; 2 uses
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
  %i.kov = phi i32 [ %i.knj, %.lr.ph501.i ], [ %i.mju, %._crit_edge498.i ]
  %i.kow = trunc nsw i64 %indvars.iv570.i to i32
  %i.kox = sub nsw i32 %i.kov, %i.kow
  %.sroa.speculated411.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated433.i, i32 %i.kox)
  %i.koy = add nsw i32 %.sroa.speculated411.i, %i.kmh ; 13 uses
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
  %i.kpw = mul nuw nsw i64 %indvars.iv514.i, %i.kpm
  %invariant.gep670.i = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %indvars.iv514.i ; 2 uses
  %indvars.iv514.tr.i = trunc i64 %indvars.iv514.i to i32 ; 2 uses
  %i.kpx = shl i32 %indvars.iv514.tr.i, 4         ; 2 uses
  br label %bb.oq

.lr.ph460.preheader.i:                            ; preds = %bb.oq
  %38 = mul i32 %i.koy, %indvars.iv514.tr.i
  br label %.lr.ph460.i

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
  %39 = sext i32 %i.kqr to i64
  %i.kqs = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %39 ; 2 uses
  %i.kqt = load i16, ptr %i.kqs, align 2, !tbaa !46
  %i.kqu = add i16 %i.kqt, %i.knp
  store i16 %i.kqu, ptr %i.kqs, align 2, !tbaa !46
  %indvars.iv.next.i563 = add nuw nsw i64 %indvars.iv.i562, 1 ; 2 uses
  %i.kqv = icmp slt i64 %indvars.iv.next.i563, %i.kpl
  br i1 %i.kqv, label %bb.oq, label %.lr.ph460.preheader.i, !llvm.loop !114

.lr.ph460.i:                                      ; preds = %._crit_edge.i564, %.lr.ph460.preheader.i
  %storemerge356461.i = phi i32 [ %i.krr, %._crit_edge.i564 ], [ 1, %.lr.ph460.preheader.i ] ; 2 uses
  %.sroa.speculated407.i = call i32 @llvm.smin.i32(i32 %i.knq, i32 %storemerge356461.i)
  %i.kqw = sext i32 %.sroa.speculated407.i to i64
  %i.kqx = mul i64 %i.kmb, %i.kqw
  %gep675.i = getelementptr i8, ptr %invariant.gep670.i, i64 %i.kqx
  br label %bb.or

bb.or:                                            ; preds = %bb.or, %.lr.ph460.i
  %indvars.iv511.i = phi i64 [ 0, %.lr.ph460.i ], [ %indvars.iv.next512.i, %bb.or ] ; 3 uses
  %40 = trunc i64 %indvars.iv511.i to i32         ; 2 uses
  %41 = add i32 %38, %40
  %42 = shl nsw i32 %41, 4
  %i.kqy = mul nuw nsw i64 %indvars.iv511.i, %i.knz
  %gep673.i = getelementptr inbounds nuw i8, ptr %gep675.i, i64 %i.kqy ; 2 uses
  %i.kqz = load i8, ptr %gep673.i, align 1, !tbaa !28
  %i.kra = lshr i8 %i.kqz, 4
  %43 = zext nneg i8 %i.kra to i32
  %44 = or disjoint i32 %42, %43
  %45 = zext nneg i32 %44 to i64
  %i.krb = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %45 ; 2 uses
  %i.krc = load i16, ptr %i.krb, align 2, !tbaa !46
  %i.krd = add i16 %i.krc, 1
  store i16 %i.krd, ptr %i.krb, align 2, !tbaa !46
  %i.kre = load i8, ptr %gep673.i, align 1, !tbaa !28
  %i.krf = zext i8 %i.kre to i32                  ; 2 uses
  %i.krg = lshr i32 %i.krf, 4
  %i.krh = or disjoint i32 %i.krg, %i.kpx
  %i.kri = mul nuw nsw i32 %i.krh, %i.koy
  %i.krj = add nuw nsw i32 %i.kri, %40
  %i.krk = shl nsw i32 %i.krj, 4
  %i.krl = and i32 %i.krf, 15
  %i.krm = or disjoint i32 %i.krk, %i.krl
  %46 = sext i32 %i.krm to i64
  %i.krn = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %46 ; 2 uses
  %i.kro = load i16, ptr %i.krn, align 2, !tbaa !46
  %i.krp = add i16 %i.kro, 1
  store i16 %i.krp, ptr %i.krn, align 2, !tbaa !46
  %indvars.iv.next512.i = add nuw nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %i.krq = icmp slt i64 %indvars.iv.next512.i, %i.kpl
  br i1 %i.krq, label %bb.or, label %._crit_edge.i564, !llvm.loop !115

._crit_edge.i564:                                 ; preds = %bb.or
  %i.krr = add nuw nsw i32 %storemerge356461.i, 1 ; 2 uses
  %exitcond.not.i565 = icmp eq i32 %i.krr, %i.kls
  br i1 %exitcond.not.i565, label %._crit_edge463.split.i.loopexit, label %.lr.ph460.i, !llvm.loop !116

._crit_edge463.split.i.loopexit:                  ; preds = %._crit_edge.i564
  %indvars.iv.next515.i = add nuw nsw i64 %indvars.iv514.i, 1 ; 2 uses
  %exitcond517.not.i = icmp eq i64 %indvars.iv.next515.i, %i.knz
  br i1 %exitcond517.not.i, label %.preheader452.i.split, label %.preheader451.i, !llvm.loop !117

bb.os:                                            ; preds = %bb.ps, %.lr.ph497.i
  %indvars.iv565.i = phi i64 [ 0, %.lr.ph497.i ], [ %indvars.iv.next566.i, %bb.ps ] ; 3 uses
  %i.krs = trunc i64 %indvars.iv565.i to i32      ; 2 uses
  %i.krt = add i32 %i.krs, %i.kns
  %.sroa.speculated402.i = call i32 @llvm.smax.i32(i32 %i.krt, i32 0)
  %i.kru = zext nneg i32 %.sroa.speculated402.i to i64
  %i.krv = mul i64 %i.kmb, %i.kru
  %i.krw = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %i.krv
  %i.krx = add i32 %i.kls, %i.krs
  %.sroa.speculated397.i = call i32 @llvm.smin.i32(i32 %i.krx, i32 %i.knq)
  %i.kry = sext i32 %.sroa.speculated397.i to i64
  %i.krz = mul i64 %i.kmb, %i.kry
  %i.ksa = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %i.krz
  %i.ksb = mul i64 %indvars.iv565.i, %i.kmd
  %i.ksc = getelementptr i8, ptr %i.kpp, i64 %i.ksb
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
  %i.ksd = shl nuw nsw i64 %indvars.iv560.i, 4    ; 4 uses
  br i1 %i.kpk, label %.lr.ph468.i, label %.preheader447.i.preheader

.lr.ph468.i:                                      ; preds = %bb.ot
  %i.kse = trunc i64 %indvars.iv560.i to i32
  %i.ksf = mul i32 %i.koy, %i.kse
  %i.ksg = trunc nuw nsw i64 %i.ksd to i32        ; 2 uses
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ou, %.lr.ph468.i
  %indvars.iv518.i = phi i64 [ 0, %.lr.ph468.i ], [ %indvars.iv.next519.i, %bb.ou ] ; 3 uses
  %i.ksh = trunc i64 %indvars.iv518.i to i32      ; 3 uses
  %i.ksi = add i32 %i.ksf, %i.ksh
  %i.ksj = shl nsw i32 %i.ksi, 4                  ; 2 uses
  %i.ksk = mul nuw nsw i64 %indvars.iv518.i, %i.knz
  %i.ksl = add nuw nsw i64 %i.ksk, %indvars.iv560.i ; 2 uses
  %i.ksm = getelementptr inbounds nuw i8, ptr %i.krw, i64 %i.ksl ; 2 uses
  %i.ksn = load i8, ptr %i.ksm, align 1, !tbaa !28
  %i.kso = lshr i8 %i.ksn, 4
  %i.ksp = zext nneg i8 %i.kso to i32
  %i.ksq = or disjoint i32 %i.ksj, %i.ksp
  %i.ksr = zext nneg i32 %i.ksq to i64
  %i.kss = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %i.ksr ; 2 uses
  %i.kst = load i16, ptr %i.kss, align 2, !tbaa !46
  %i.ksu = add i16 %i.kst, -1
  store i16 %i.ksu, ptr %i.kss, align 2, !tbaa !46
  %i.ksv = load i8, ptr %i.ksm, align 1, !tbaa !28
  %i.ksw = zext i8 %i.ksv to i32                  ; 2 uses
  %i.ksx = lshr i32 %i.ksw, 4
  %i.ksy = or disjoint i32 %i.ksx, %i.ksg
  %i.ksz = mul nuw nsw i32 %i.ksy, %i.koy
  %i.kta = add nuw nsw i32 %i.ksz, %i.ksh
  %i.ktb = shl nsw i32 %i.kta, 4
  %i.ktc = and i32 %i.ksw, 15
  %i.ktd = or disjoint i32 %i.ktb, %i.ktc
  %47 = sext i32 %i.ktd to i64
  %i.kte = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %47 ; 2 uses
  %i.ktf = load i16, ptr %i.kte, align 2, !tbaa !46
  %i.ktg = add i16 %i.ktf, -1
  store i16 %i.ktg, ptr %i.kte, align 2, !tbaa !46
  %i.kth = getelementptr inbounds nuw i8, ptr %i.ksa, i64 %i.ksl ; 2 uses
  %i.kti = load i8, ptr %i.kth, align 1, !tbaa !28
  %i.ktj = lshr i8 %i.kti, 4
  %i.ktk = zext nneg i8 %i.ktj to i32
  %i.ktl = or disjoint i32 %i.ksj, %i.ktk
  %i.ktm = zext nneg i32 %i.ktl to i64
  %i.ktn = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %i.ktm ; 2 uses
  %i.kto = load i16, ptr %i.ktn, align 2, !tbaa !46
  %i.ktp = add i16 %i.kto, 1
  store i16 %i.ktp, ptr %i.ktn, align 2, !tbaa !46
  %i.ktq = load i8, ptr %i.kth, align 1, !tbaa !28
  %i.ktr = zext i8 %i.ktq to i32                  ; 2 uses
  %i.kts = lshr i32 %i.ktr, 4
  %i.ktt = or disjoint i32 %i.kts, %i.ksg
  %i.ktu = mul nuw nsw i32 %i.ktt, %i.koy
  %i.ktv = add nuw nsw i32 %i.ktu, %i.ksh
  %i.ktw = shl nsw i32 %i.ktv, 4
  %i.ktx = and i32 %i.ktr, 15
  %i.kty = or disjoint i32 %i.ktw, %i.ktx
  %48 = sext i32 %i.kty to i64
  %i.ktz = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %48 ; 2 uses
  %i.kua = load i16, ptr %i.ktz, align 2, !tbaa !46
  %i.kub = add i16 %i.kua, 1
  store i16 %i.kub, ptr %i.ktz, align 2, !tbaa !46
  %indvars.iv.next519.i = add nuw nsw i64 %indvars.iv518.i, 1 ; 2 uses
  %i.kuc = icmp slt i64 %indvars.iv.next519.i, %i.kpl
  br i1 %i.kuc, label %bb.ou, label %.preheader447.i.preheader, !llvm.loop !118

.preheader447.i.preheader:                        ; preds = %bb.ou, %bb.ot
  br label %.preheader447.i

.preheader447.i:                                  ; preds = %.preheader447.i.preheader, %.preheader447.i
  %indvars.iv525.i = phi i64 [ %indvars.iv.next526.i, %.preheader447.i ], [ 0, %.preheader447.i.preheader ] ; 3 uses
  %i.kud = getelementptr inbounds nuw [32 x i8], ptr %i.knt, i64 %indvars.iv525.i ; 17 uses
  %i.kue = add nuw nsw i64 %indvars.iv525.i, %i.ksd
  %i.kuf = mul nsw i64 %i.kue, %i.kps
  %i.kug = load i16, ptr %i.kud, align 16, !tbaa !46
  %i.kuh = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %i.kuf ; 16 uses
  %i.kui = load i16, ptr %i.kuh, align 16, !tbaa !46
  %i.kuj = mul i16 %i.kui, %i.knv
  %i.kuk = add i16 %i.kuj, %i.kug
  store i16 %i.kuk, ptr %i.kud, align 16, !tbaa !46
  %i.kul = getelementptr inbounds nuw i8, ptr %i.kud, i64 2 ; 2 uses
  %i.kum = load i16, ptr %i.kul, align 2, !tbaa !46
  %i.kun = getelementptr i8, ptr %i.kuh, i64 2
  %i.kuo = load i16, ptr %i.kun, align 2, !tbaa !46
  %i.kup = mul i16 %i.kuo, %i.knv
  %i.kuq = add i16 %i.kup, %i.kum
  store i16 %i.kuq, ptr %i.kul, align 2, !tbaa !46
  %i.kur = getelementptr inbounds nuw i8, ptr %i.kud, i64 4 ; 2 uses
  %i.kus = load i16, ptr %i.kur, align 4, !tbaa !46
  %i.kut = getelementptr i8, ptr %i.kuh, i64 4
  %i.kuu = load i16, ptr %i.kut, align 4, !tbaa !46
  %i.kuv = mul i16 %i.kuu, %i.knv
  %i.kuw = add i16 %i.kuv, %i.kus
  store i16 %i.kuw, ptr %i.kur, align 4, !tbaa !46
  %i.kux = getelementptr inbounds nuw i8, ptr %i.kud, i64 6 ; 2 uses
  %i.kuy = load i16, ptr %i.kux, align 2, !tbaa !46
  %i.kuz = getelementptr i8, ptr %i.kuh, i64 6
  %i.kva = load i16, ptr %i.kuz, align 2, !tbaa !46
  %i.kvb = mul i16 %i.kva, %i.knv
  %i.kvc = add i16 %i.kvb, %i.kuy
  store i16 %i.kvc, ptr %i.kux, align 2, !tbaa !46
  %i.kvd = getelementptr inbounds nuw i8, ptr %i.kud, i64 8 ; 2 uses
  %i.kve = load i16, ptr %i.kvd, align 8, !tbaa !46
  %i.kvf = getelementptr i8, ptr %i.kuh, i64 8
  %i.kvg = load i16, ptr %i.kvf, align 8, !tbaa !46
  %i.kvh = mul i16 %i.kvg, %i.knv
  %i.kvi = add i16 %i.kvh, %i.kve
  store i16 %i.kvi, ptr %i.kvd, align 8, !tbaa !46
  %i.kvj = getelementptr inbounds nuw i8, ptr %i.kud, i64 10 ; 2 uses
  %i.kvk = load i16, ptr %i.kvj, align 2, !tbaa !46
  %i.kvl = getelementptr i8, ptr %i.kuh, i64 10
  %i.kvm = load i16, ptr %i.kvl, align 2, !tbaa !46
  %i.kvn = mul i16 %i.kvm, %i.knv
  %i.kvo = add i16 %i.kvn, %i.kvk
  store i16 %i.kvo, ptr %i.kvj, align 2, !tbaa !46
  %i.kvp = getelementptr inbounds nuw i8, ptr %i.kud, i64 12 ; 2 uses
  %i.kvq = load i16, ptr %i.kvp, align 4, !tbaa !46
  %i.kvr = getelementptr i8, ptr %i.kuh, i64 12
  %i.kvs = load i16, ptr %i.kvr, align 4, !tbaa !46
  %i.kvt = mul i16 %i.kvs, %i.knv
  %i.kvu = add i16 %i.kvt, %i.kvq
  store i16 %i.kvu, ptr %i.kvp, align 4, !tbaa !46
  %i.kvv = getelementptr inbounds nuw i8, ptr %i.kud, i64 14 ; 2 uses
  %i.kvw = load i16, ptr %i.kvv, align 2, !tbaa !46
  %i.kvx = getelementptr i8, ptr %i.kuh, i64 14
  %i.kvy = load i16, ptr %i.kvx, align 2, !tbaa !46
  %i.kvz = mul i16 %i.kvy, %i.knv
  %i.kwa = add i16 %i.kvz, %i.kvw
  store i16 %i.kwa, ptr %i.kvv, align 2, !tbaa !46
  %i.kwb = getelementptr inbounds nuw i8, ptr %i.kud, i64 16 ; 2 uses
  %i.kwc = load i16, ptr %i.kwb, align 16, !tbaa !46
  %i.kwd = getelementptr i8, ptr %i.kuh, i64 16
  %i.kwe = load i16, ptr %i.kwd, align 16, !tbaa !46
  %i.kwf = mul i16 %i.kwe, %i.knv
  %i.kwg = add i16 %i.kwf, %i.kwc
  store i16 %i.kwg, ptr %i.kwb, align 16, !tbaa !46
  %i.kwh = getelementptr inbounds nuw i8, ptr %i.kud, i64 18 ; 2 uses
  %i.kwi = load i16, ptr %i.kwh, align 2, !tbaa !46
  %i.kwj = getelementptr i8, ptr %i.kuh, i64 18
  %i.kwk = load i16, ptr %i.kwj, align 2, !tbaa !46
  %i.kwl = mul i16 %i.kwk, %i.knv
  %i.kwm = add i16 %i.kwl, %i.kwi
  store i16 %i.kwm, ptr %i.kwh, align 2, !tbaa !46
  %i.kwn = getelementptr inbounds nuw i8, ptr %i.kud, i64 20 ; 2 uses
  %i.kwo = load i16, ptr %i.kwn, align 4, !tbaa !46
  %i.kwp = getelementptr i8, ptr %i.kuh, i64 20
  %i.kwq = load i16, ptr %i.kwp, align 4, !tbaa !46
  %i.kwr = mul i16 %i.kwq, %i.knv
  %i.kws = add i16 %i.kwr, %i.kwo
  store i16 %i.kws, ptr %i.kwn, align 4, !tbaa !46
  %i.kwt = getelementptr inbounds nuw i8, ptr %i.kud, i64 22 ; 2 uses
  %i.kwu = load i16, ptr %i.kwt, align 2, !tbaa !46
  %i.kwv = getelementptr i8, ptr %i.kuh, i64 22
  %i.kww = load i16, ptr %i.kwv, align 2, !tbaa !46
  %i.kwx = mul i16 %i.kww, %i.knv
  %i.kwy = add i16 %i.kwx, %i.kwu
  store i16 %i.kwy, ptr %i.kwt, align 2, !tbaa !46
  %i.kwz = getelementptr inbounds nuw i8, ptr %i.kud, i64 24 ; 2 uses
  %i.kxa = load i16, ptr %i.kwz, align 8, !tbaa !46
  %i.kxb = getelementptr i8, ptr %i.kuh, i64 24
  %i.kxc = load i16, ptr %i.kxb, align 8, !tbaa !46
  %i.kxd = mul i16 %i.kxc, %i.knv
  %i.kxe = add i16 %i.kxd, %i.kxa
  store i16 %i.kxe, ptr %i.kwz, align 8, !tbaa !46
  %i.kxf = getelementptr inbounds nuw i8, ptr %i.kud, i64 26 ; 2 uses
  %i.kxg = load i16, ptr %i.kxf, align 2, !tbaa !46
  %i.kxh = getelementptr i8, ptr %i.kuh, i64 26
  %i.kxi = load i16, ptr %i.kxh, align 2, !tbaa !46
  %i.kxj = mul i16 %i.kxi, %i.knv
  %i.kxk = add i16 %i.kxj, %i.kxg
  store i16 %i.kxk, ptr %i.kxf, align 2, !tbaa !46
  %i.kxl = getelementptr inbounds nuw i8, ptr %i.kud, i64 28 ; 2 uses
  %i.kxm = load i16, ptr %i.kxl, align 4, !tbaa !46
  %i.kxn = getelementptr i8, ptr %i.kuh, i64 28
  %i.kxo = load i16, ptr %i.kxn, align 4, !tbaa !46
  %i.kxp = mul i16 %i.kxo, %i.knv
  %i.kxq = add i16 %i.kxp, %i.kxm
  store i16 %i.kxq, ptr %i.kxl, align 4, !tbaa !46
  %i.kxr = getelementptr inbounds nuw i8, ptr %i.kud, i64 30 ; 2 uses
  %i.kxs = load i16, ptr %i.kxr, align 2, !tbaa !46
  %i.kxt = getelementptr i8, ptr %i.kuh, i64 30
  %i.kxu = load i16, ptr %i.kxt, align 2, !tbaa !46
  %i.kxv = mul i16 %i.kxu, %i.knv
  %i.kxw = add i16 %i.kxv, %i.kxs
  store i16 %i.kxw, ptr %i.kxr, align 2, !tbaa !46
  %indvars.iv.next526.i = add nuw nsw i64 %indvars.iv525.i, 1 ; 2 uses
  %exitcond528.not.i = icmp eq i64 %indvars.iv.next526.i, 16
  br i1 %exitcond528.not.i, label %.preheader446.preheader.i, label %.preheader447.i, !llvm.loop !119

.preheader446.preheader.i:                        ; preds = %.preheader447.i
  %i.kxx = mul nsw i64 %indvars.iv560.i, %i.kps
  %i.kxy = getelementptr inbounds [2 x i8], ptr %i.kne, i64 %i.kxx ; 10 uses
  %i.kxz = load <16 x i16>, ptr %6, align 16, !tbaa !46 ; 17 uses
  %brmerge1682 = select i1 %min.iters.check1453, i1 true, i1 %i.kpv
  br i1 %brmerge1682, label %.preheader446.i.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %.preheader446.preheader.i
  %i.kya = getelementptr i8, ptr %i.kxy, i64 %i.kom
  %i.kyb = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyc = shufflevector <8 x i16> %i.kyb, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyd = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kye = shufflevector <8 x i16> %i.kyd, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyf = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyg = shufflevector <8 x i16> %i.kyf, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyh = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyi = shufflevector <8 x i16> %i.kyh, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyj = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyk = shufflevector <8 x i16> %i.kyj, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyl = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kym = shufflevector <8 x i16> %i.kyl, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyn = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyo = shufflevector <8 x i16> %i.kyn, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyp = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyq = shufflevector <8 x i16> %i.kyp, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyr = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kxz, <8 x i32> <i32 23, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kys = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kxz, <8 x i32> <i32 22, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kyt = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kxz, <8 x i32> <i32 21, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kyu = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kxz, <8 x i32> <i32 20, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kyv = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kxz, <8 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kyw = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kxz, <8 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kyx = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kxz, <8 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kyy = shufflevector <16 x i16> %i.kxz, <16 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyz = shufflevector <8 x i16> %i.kyy, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1481, %vector.body1456 ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.kyc, %vector.ph1454 ], [ %i.loj, %vector.body1456 ]
  %vec.phi1458 = phi <8 x i16> [ %i.kye, %vector.ph1454 ], [ %i.lnk, %vector.body1456 ]
  %vec.phi1459 = phi <8 x i16> [ %i.kyg, %vector.ph1454 ], [ %i.lml, %vector.body1456 ]
  %vec.phi1460 = phi <8 x i16> [ %i.kyi, %vector.ph1454 ], [ %i.llm, %vector.body1456 ]
  %vec.phi1461 = phi <8 x i16> [ %i.kyk, %vector.ph1454 ], [ %i.lkn, %vector.body1456 ]
  %vec.phi1462 = phi <8 x i16> [ %i.kym, %vector.ph1454 ], [ %i.ljo, %vector.body1456 ]
  %vec.phi1463 = phi <8 x i16> [ %i.kyo, %vector.ph1454 ], [ %i.lip, %vector.body1456 ]
  %vec.phi1464 = phi <8 x i16> [ %i.kyq, %vector.ph1454 ], [ %i.lhq, %vector.body1456 ]
  %vec.phi1465 = phi <8 x i16> [ %i.kyr, %vector.ph1454 ], [ %i.lgr, %vector.body1456 ]
  %vec.phi1466 = phi <8 x i16> [ %i.kys, %vector.ph1454 ], [ %i.lfs, %vector.body1456 ]
  %vec.phi1467 = phi <8 x i16> [ %i.kyt, %vector.ph1454 ], [ %i.let, %vector.body1456 ]
  %vec.phi1468 = phi <8 x i16> [ %i.kyu, %vector.ph1454 ], [ %i.ldu, %vector.body1456 ]
  %vec.phi1469 = phi <8 x i16> [ %i.kyv, %vector.ph1454 ], [ %i.lcv, %vector.body1456 ]
  %vec.phi1470 = phi <8 x i16> [ %i.kyw, %vector.ph1454 ], [ %i.lbw, %vector.body1456 ]
  %vec.phi1471 = phi <8 x i16> [ %i.kyx, %vector.ph1454 ], [ %i.lax, %vector.body1456 ]
  %vec.phi1472 = phi <8 x i16> [ %i.kyz, %vector.ph1454 ], [ %i.kzy, %vector.body1456 ]
  %i.kza = shl i64 %index1457, 5                  ; 8 uses
  %next.gep1473 = getelementptr i8, ptr %i.kxy, i64 %i.kza ; 16 uses
  %i.kzb = getelementptr i8, ptr %i.kxy, i64 %i.kza ; 16 uses
  %next.gep1474 = getelementptr i8, ptr %i.kzb, i64 32
  %i.kzc = getelementptr i8, ptr %i.kxy, i64 %i.kza ; 16 uses
  %next.gep1475 = getelementptr i8, ptr %i.kzc, i64 64
  %i.kzd = getelementptr i8, ptr %i.kxy, i64 %i.kza ; 16 uses
  %next.gep1476 = getelementptr i8, ptr %i.kzd, i64 96
  %i.kze = getelementptr i8, ptr %i.kxy, i64 %i.kza ; 16 uses
  %next.gep1477 = getelementptr i8, ptr %i.kze, i64 128
  %i.kzf = getelementptr i8, ptr %i.kxy, i64 %i.kza ; 16 uses
  %next.gep1478 = getelementptr i8, ptr %i.kzf, i64 160
  %i.kzg = getelementptr i8, ptr %i.kxy, i64 %i.kza ; 16 uses
  %next.gep1479 = getelementptr i8, ptr %i.kzg, i64 192
  %i.kzh = getelementptr i8, ptr %i.kxy, i64 %i.kza ; 16 uses
  %next.gep1480 = getelementptr i8, ptr %i.kzh, i64 224
end_hunk_0
