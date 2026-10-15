Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/import2ozz_anim?download=true
inline.NumInlined: 815
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3ozz9animation7offline16ImportAnimationsERKN4Json5ValueEPNS1_11OzzImporterENS_10EndiannessE:bb.a
.noexc353.i:                                      ; preds = %bb.lb
  %i.ajy = load ptr, ptr %i.ajt, align 8, !tbaa !15
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 48
  %i.aka = load ptr, ptr %i.ajz, align 8
  %i.akb = invoke noundef signext i8 %i.aka(ptr noundef nonnull align 8 dereferenceable(570) %i.ajt, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i unwind label %.loopexit326, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i: ; preds = %.noexc353.i, %bb.la
  %.0.i.i.i351.i = phi i8 [ %i.ajx, %bb.la ], [ %i.akb, %.noexc353.i ]
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ajm, i8 noundef signext %.0.i.i.i351.i)
          to label %.noexc355.i unwind label %.loopexit326

.noexc355.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i
  %i.akd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.akc)
          to label %_ZNSolsEPFRSoS_E.exit209.i unwind label %.loopexit326 ; 0 uses

_ZNSolsEPFRSoS_E.exit209.i:                       ; preds = %.noexc355.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.lf

bb.lc:                                            ; preds = %bb.kx
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %bb.le

.loopexit326:                                     ; preds = %bb.ky, %_ZN3ozz3log6LoggerlsIA29_cEERSoRKT_.exit.i161, %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit.i, %bb.lb, %.noexc353.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i, %.noexc355.i
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp327:                            ; preds = %bb.kz
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp327, %.loopexit326
  %lpad.phi330 = phi { ptr, i32 } [ %lpad.loopexit328, %.loopexit326 ], [ %lpad.loopexit.split-lp329, %.loopexit.split-lp327 ]
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %15) #19
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %.pn.i160 = phi { ptr, i32 } [ %lpad.phi330, %bb.ld ], [ %i.ake, %bb.lc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.rq

bb.lf:                                            ; preds = %_ZNSolsEPFRSoS_E.exit209.i, %_ZN3ozz9animation7offline18AnimationOptimizerD2Ev.exit.i
  %i.akf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull @.str.46)
          to label %bb.lg unwind label %bb.gw

bb.lg:                                            ; preds = %bb.lf
  %i.akg = invoke noundef zeroext i1 @_ZNK4Json5Value6asBoolEv(ptr noundef nonnull align 8 dereferenceable(32) %i.akf)
          to label %bb.lh unwind label %bb.gw

bb.lh:                                            ; preds = %bb.lg
  br i1 %i.akg, label %bb.li, label %bb.np

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %16)
          to label %bb.lj unwind label %bb.mf

bb.lj:                                            ; preds = %bb.li
  %i.akh = load ptr, ptr %16, align 8, !tbaa !87, !nonnull !88, !align !89 ; 4 uses
  %i.aki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akh, ptr noundef nonnull @.str.47, i64 noundef 25)
          to label %_ZN3ozz3log6LoggerlsIA26_cEERSoRKT_.exit.i unwind label %.loopexit346 ; 0 uses

_ZN3ozz3log6LoggerlsIA26_cEERSoRKT_.exit.i:       ; preds = %bb.lj
  %i.akj = load ptr, ptr %i.akh, align 8, !tbaa !15
  %i.akk = getelementptr i8, ptr %i.akj, i64 -24
  %i.akl = load i64, ptr %i.akk, align 8
  %i.akm = getelementptr inbounds i8, ptr %i.akh, i64 %i.akl
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 240
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !103 ; 6 uses
  %.not.i.i.i358.i = icmp eq ptr %i.ako, null
  br i1 %.not.i.i.i358.i, label %bb.lk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359.i

bb.lk:                                            ; preds = %_ZN3ozz3log6LoggerlsIA26_cEERSoRKT_.exit.i
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc363.i unwind label %.loopexit.split-lp347

.noexc363.i:                                      ; preds = %bb.lk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359.i: ; preds = %_ZN3ozz3log6LoggerlsIA26_cEERSoRKT_.exit.i
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 56
  %i.akq = load i8, ptr %i.akp, align 8, !tbaa !109
  %.not.i1.i.i360.i = icmp eq i8 %i.akq, 0
  br i1 %.not.i1.i.i360.i, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359.i
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ako, i64 67
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361.i

bb.lm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ako)
          to label %.noexc364.i unwind label %.loopexit346

.noexc364.i:                                      ; preds = %bb.lm
  %i.akt = load ptr, ptr %i.ako, align 8, !tbaa !15
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 48
  %i.akv = load ptr, ptr %i.aku, align 8
  %i.akw = invoke noundef signext i8 %i.akv(ptr noundef nonnull align 8 dereferenceable(570) %i.ako, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361.i unwind label %.loopexit346, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361.i: ; preds = %.noexc364.i, %bb.ll
  %.0.i.i.i362.i = phi i8 [ %i.aks, %bb.ll ], [ %i.akw, %.noexc364.i ]
  %i.akx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.akh, i8 noundef signext %.0.i.i.i362.i)
          to label %.noexc366.i unwind label %.loopexit346

.noexc366.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361.i
  %i.aky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.akx)
          to label %_ZNSolsEPFRSoS_E.exit212.i unwind label %.loopexit346 ; 0 uses

_ZNSolsEPFRSoS_E.exit212.i:                       ; preds = %.noexc366.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  invoke void @_ZN3ozz9animation7offline12RawAnimationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %bb.ln unwind label %bb.mi

bb.ln:                                            ; preds = %_ZNSolsEPFRSoS_E.exit212.i
  %i.akz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull @.str.48)
          to label %bb.lo unwind label %bb.mj

bb.lo:                                            ; preds = %bb.ln
  %i.ala = invoke noundef ptr @_ZNK4Json5Value9asCStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.akz)
          to label %bb.lp unwind label %bb.mj     ; 2 uses

bb.lp:                                            ; preds = %bb.lo
  %i.alb = load ptr, ptr @_ZZN3ozz9animation7offline17AdditiveReference8GetNamesEvE6kNames, align 16, !tbaa !142
  %i.alc = invoke noundef zeroext i1 @_ZN3ozz9animation7offline11CompareNameEPKcS3_(ptr noundef %i.alb, ptr noundef %i.ala)
          to label %.noexc213.i unwind label %bb.mj

.noexc213.i:                                      ; preds = %bb.lp
  br i1 %i.alc, label %_ZN3ozz9animation7offline8JsonEnumINS1_17AdditiveReferenceENS1_21AdditiveReferenceEnum5ValueEE15GetEnumFromNameEPKcPS5_.exit.thread.i, label %bb.lq

bb.lq:                                            ; preds = %.noexc213.i
  %i.ald = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3ozz9animation7offline17AdditiveReference8GetNamesEvE6kNames, i64 8), align 8, !tbaa !142
  %i.ale = invoke noundef zeroext i1 @_ZN3ozz9animation7offline11CompareNameEPKcS3_(ptr noundef %i.ald, ptr noundef %i.ala)
          to label %.noexc214.i unwind label %bb.mj

.noexc214.i:                                      ; preds = %bb.lq
  br i1 %i.ale, label %bb.lr, label %_ZN3ozz9animation7offline8JsonEnumINS1_17AdditiveReferenceENS1_21AdditiveReferenceEnum5ValueEE15GetEnumFromNameEPKcPS5_.exit.thread.i

bb.lr:                                            ; preds = %.noexc214.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.alf = getelementptr inbounds nuw i8, ptr %i.rm, i64 32 ; 6 uses
  %i.alg = load i64, ptr %i.alf, align 8, !tbaa !137, !noalias !145 ; 3 uses
  %i.alh = shl i64 %i.alg, 32                     ; 2 uses
  %i.ali = ashr exact i64 %i.alh, 32              ; 6 uses
  %i.alj = icmp ugt i64 %i.ali, 230584300921369395
  br i1 %i.alj, label %bb.ls, label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i.i.i

bb.ls:                                            ; preds = %bb.lr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #20
          to label %.noexc218.i unwind label %bb.mk

.noexc218.i:                                      ; preds = %bb.ls
  unreachable

_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i.i.i: ; preds = %bb.lr
  %.not.i.i.i.i.i.i = icmp eq i64 %i.alh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i, label %bb.lt

_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !alias.scope !145
  br label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i

bb.lt:                                            ; preds = %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.alk = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.lu unwind label %bb.lv, !noalias !145 ; 2 uses

bb.lu:                                            ; preds = %bb.lt
  %i.all = mul nuw nsw i64 %i.ali, 40
  %i.alm = load ptr, ptr %i.alk, align 8, !tbaa !15, !noalias !145
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 16
  %i.alo = load ptr, ptr %i.aln, align 8, !noalias !145
  %i.alp = invoke noundef ptr %i.alo(ptr noundef nonnull align 8 dereferenceable(8) %i.alk, i64 noundef %i.all, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i unwind label %bb.lv, !noalias !145 ; 5 uses

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %i.alq = landingpad { ptr, i32 }
          catch ptr null
  %i.alr = extractvalue { ptr, i32 } %i.alq, 0
  call void @__clang_call_terminate(ptr %i.alr) #21, !noalias !145
  unreachable

_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i: ; preds = %bb.lu
  store ptr %i.alp, ptr %19, align 8, !tbaa !59, !alias.scope !145
  %i.als = getelementptr inbounds nuw [40 x i8], ptr %i.alp, i64 %i.ali
  store ptr %i.als, ptr %i.lp, align 8, !tbaa !146, !alias.scope !145
  %xtraiter = and i64 %i.alg, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.015.i.i.i.i.i.prol = phi ptr [ %i.alv, %.lr.ph.i.i.i.i.i.prol ], [ %i.alp, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.prol = phi i64 [ %i.alu, %.lr.ph.i.i.i.i.i.prol ], [ %i.ali, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ]
  %i.alt = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.prol, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i.i.i.i.prol, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.alt, align 4, !noalias !145
  %63 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.prol, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %63, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.prol, i64 36
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.prol, align 4, !noalias !145
  %i.alu = add nsw i64 %.01214.i.i.i.i.i.prol, -1 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !78

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i
  %.lcssa1807.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ], [ %i.alv, %.lr.ph.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.unr = phi ptr [ %i.alp, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ], [ %i.alv, %.lr.ph.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.unr = phi i64 [ %i.ali, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ], [ %i.alu, %.lr.ph.i.i.i.i.i.prol ]
  %i.alw = icmp ult i64 %i.ali, 4
  br i1 %i.alw, label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.amf, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01214.i.i.i.i.i = phi i64 [ %i.ame, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.alx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i.i.i.i, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.alx, align 4, !noalias !145
  %64 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %64, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 36
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !145
  %i.aly = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 40
  %i.alz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aly, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.alz, align 4, !noalias !145
  %65 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 68
  store <2 x float> splat (float 1.000000e+00), ptr %65, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 76
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.1, align 4, !noalias !145
  %i.ama = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 80
  %i.amb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ama, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.amb, align 4, !noalias !145
  %66 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 108
  store <2 x float> splat (float 1.000000e+00), ptr %66, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 116
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.2, align 4, !noalias !145
  %i.amc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 120
  %i.amd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.amc, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.amd, align 4, !noalias !145
  %67 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 148
  store <2 x float> splat (float 1.000000e+00), ptr %67, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 156
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.3, align 4, !noalias !145
  %i.ame = add nsw i64 %.01214.i.i.i.i.i, -4      ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i215.i.3 = icmp eq i64 %i.ame, 0
  br i1 %.not.i.i.i.i215.i.3, label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !79

_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa1807 = phi ptr [ %.lcssa1807.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.amf, %.lr.ph.i.i.i.i.i ]
  %.pre.i.i = load i64, ptr %i.alf, align 8, !tbaa !137, !noalias !145
  br label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i

_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i
  %i.amg = phi ptr [ null, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i ], [ %i.alp, %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i ] ; 8 uses
  %i.amh = phi i64 [ %i.alg, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i ], [ %.pre.i.i, %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i ] ; 2 uses
  %i.ami = phi ptr [ null, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i ], [ %.lcssa1807, %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i ] ; 2 uses
  store ptr %i.ami, ptr %i.lq, align 8, !tbaa !148, !alias.scope !145
  %i.amj = trunc i64 %i.amh to i32
  %i.amk = icmp sgt i32 %i.amj, 0
  br i1 %i.amk, label %.lr.ph.i217.i, label %.loopexit.i

.lr.ph.i217.i:                                    ; preds = %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i
  %i.aml = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  br label %bb.lw

bb.lw:                                            ; preds = %.critedge.i.i, %.lr.ph.i217.i
  %i.amm = phi i64 [ %i.amh, %.lr.ph.i217.i ], [ %i.ans, %.critedge.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i217.i ], [ %indvars.iv.next.i.i, %.critedge.i.i ] ; 3 uses
  %i.amn = load ptr, ptr %i.aml, align 8, !tbaa !151, !noalias !145
  %i.amo = getelementptr inbounds nuw [160 x i8], ptr %i.amn, i64 %indvars.iv.i.i ; 10 uses
  %i.amp = load <4 x float>, ptr %i.amo, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  %i.amr = load <4 x float>, ptr %i.amq, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  %i.amt = load <4 x float>, ptr %i.ams, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amo, i64 48
  %i.amv = load <4 x float>, ptr %i.amu, align 16, !tbaa !17, !noalias !145 ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amo, i64 80
  %i.amx = load <4 x float>, ptr %i.amw, align 16, !tbaa !17, !noalias !145 ; 2 uses
  %i.amy = shufflevector <4 x float> %i.amv, <4 x float> %i.amx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amo, i64 64
  %i.ana = load <4 x float>, ptr %i.amz, align 16, !tbaa !17, !noalias !145 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amo, i64 96
  %i.anc = load <4 x float>, ptr %i.anb, align 16, !tbaa !17, !noalias !145 ; 2 uses
  %i.and = shufflevector <4 x float> %i.ana, <4 x float> %i.anc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ane = shufflevector <4 x float> %i.amv, <4 x float> %i.amx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.anf = shufflevector <4 x float> %i.ana, <4 x float> %i.anc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ang = shufflevector <4 x float> %i.amy, <4 x float> %i.and, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.anh = shufflevector <4 x float> %i.ane, <4 x float> %i.anf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ani = shufflevector <4 x float> %i.ane, <4 x float> %i.anf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amo, i64 112
  %i.ank = load <4 x float>, ptr %i.anj, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amo, i64 128
  %i.anm = load <4 x float>, ptr %i.anl, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.ano = load <4 x float>, ptr %i.ann, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.anp = shl nuw nsw i64 %indvars.iv.i.i, 2     ; 5 uses
  %sext.i.i = shl i64 %i.amm, 32
  %i.anq = ashr exact i64 %sext.i.i, 32
  %i.anr = icmp slt i64 %i.anp, %i.anq
  br i1 %i.anr, label %bb.lx, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw
  %i.ans = phi i64 [ %.pre48.i.i, %bb.ma ], [ %i.apm, %bb.lz ], [ %i.aoz, %bb.ly ], [ %i.aom, %bb.lx ], [ %i.amm, %bb.lw ] ; 2 uses
  %.pre-phi.i.i = trunc i64 %i.ans to i32
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ant = add nsw i32 %.pre-phi.i.i, 3
  %i.anu = sdiv i32 %i.ant, 4
  %i.anv = sext i32 %i.anu to i64
  %i.anw = icmp slt i64 %indvars.iv.next.i.i, %i.anv
  br i1 %i.anw, label %bb.lw, label %.loopexit.i, !llvm.loop !80

bb.lx:                                            ; preds = %bb.lw
  %i.anx = shufflevector <4 x float> %i.amy, <4 x float> %i.and, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.any = getelementptr inbounds nuw [40 x i8], ptr %i.amg, i64 %i.anp ; 7 uses
  %i.anz = extractelement <4 x float> %i.amp, i64 0
  store float %i.anz, ptr %i.any, align 1, !tbaa !17, !noalias !145
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.any, i64 4
  %i.aob = extractelement <4 x float> %i.amr, i64 0
  store float %i.aob, ptr %i.aoa, align 1, !tbaa !17, !noalias !145
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %i.aod = extractelement <4 x float> %i.amt, i64 0
  store float %i.aod, ptr %i.aoc, align 1, !tbaa !17, !noalias !145
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.any, i64 12
  store <4 x float> %i.anx, ptr %i.aoe, align 1, !tbaa !17, !noalias !145
  %i.aof = getelementptr inbounds nuw i8, ptr %i.any, i64 28
  %i.aog = extractelement <4 x float> %i.ank, i64 0
  store float %i.aog, ptr %i.aof, align 1, !tbaa !17, !noalias !145
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.any, i64 32
  %i.aoi = extractelement <4 x float> %i.anm, i64 0
  store float %i.aoi, ptr %i.aoh, align 1, !tbaa !17, !noalias !145
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.any, i64 36
  %i.aok = extractelement <4 x float> %i.ano, i64 0
  store float %i.aok, ptr %i.aoj, align 1, !tbaa !17, !noalias !145
  %i.aol = or disjoint i64 %i.anp, 1              ; 2 uses
  %i.aom = load i64, ptr %i.alf, align 8, !tbaa !137, !noalias !145 ; 2 uses
  %sext54.i.i = shl i64 %i.aom, 32
  %i.aon = ashr exact i64 %sext54.i.i, 32
  %i.aoo = icmp slt i64 %i.aol, %i.aon
  br i1 %i.aoo, label %bb.ly, label %.critedge.i.i

bb.ly:                                            ; preds = %bb.lx
  %i.aop = getelementptr inbounds nuw [40 x i8], ptr %i.amg, i64 %i.aol ; 5 uses
  %i.aoq = shufflevector <4 x float> %i.amp, <4 x float> %i.amr, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.aoq, ptr %i.aop, align 1, !tbaa !17, !noalias !145
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  %i.aos = extractelement <4 x float> %i.amt, i64 1
  store float %i.aos, ptr %i.aor, align 1, !tbaa !17, !noalias !145
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store <4 x float> %i.ang, ptr %i.aot, align 1, !tbaa !17, !noalias !145
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aop, i64 28
  %i.aov = shufflevector <4 x float> %i.ank, <4 x float> %i.anm, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.aov, ptr %i.aou, align 1, !tbaa !17, !noalias !145
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aop, i64 36
  %i.aox = extractelement <4 x float> %i.ano, i64 1
  store float %i.aox, ptr %i.aow, align 1, !tbaa !17, !noalias !145
  %i.aoy = or disjoint i64 %i.anp, 2              ; 2 uses
  %i.aoz = load i64, ptr %i.alf, align 8, !tbaa !137, !noalias !145 ; 2 uses
  %sext55.i.i = shl i64 %i.aoz, 32
  %i.apa = ashr exact i64 %sext55.i.i, 32
  %i.apb = icmp slt i64 %i.aoy, %i.apa
  br i1 %i.apb, label %bb.lz, label %.critedge.i.i

bb.lz:                                            ; preds = %bb.ly
  %i.apc = getelementptr inbounds nuw [40 x i8], ptr %i.amg, i64 %i.aoy ; 5 uses
  %i.apd = shufflevector <4 x float> %i.amp, <4 x float> %i.amr, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.apd, ptr %i.apc, align 1, !tbaa !17, !noalias !145
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 8
  %i.apf = extractelement <4 x float> %i.amt, i64 2
  store float %i.apf, ptr %i.ape, align 1, !tbaa !17, !noalias !145
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 12
  store <4 x float> %i.anh, ptr %i.apg, align 1, !tbaa !17, !noalias !145
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apc, i64 28
  %i.api = shufflevector <4 x float> %i.ank, <4 x float> %i.anm, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.api, ptr %i.aph, align 1, !tbaa !17, !noalias !145
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apc, i64 36
  %i.apk = extractelement <4 x float> %i.ano, i64 2
  store float %i.apk, ptr %i.apj, align 1, !tbaa !17, !noalias !145
  %i.apl = or disjoint i64 %i.anp, 3              ; 2 uses
  %i.apm = load i64, ptr %i.alf, align 8, !tbaa !137, !noalias !145 ; 2 uses
  %sext56.i.i = shl i64 %i.apm, 32
  %i.apn = ashr exact i64 %sext56.i.i, 32
  %i.apo = icmp slt i64 %i.apl, %i.apn
  br i1 %i.apo, label %bb.ma, label %.critedge.i.i

bb.ma:                                            ; preds = %bb.lz
  %i.app = getelementptr inbounds nuw [40 x i8], ptr %i.amg, i64 %i.apl ; 5 uses
  %i.apq = shufflevector <4 x float> %i.amp, <4 x float> %i.amr, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.apq, ptr %i.app, align 1, !tbaa !17, !noalias !145
  %i.apr = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  %i.aps = extractelement <4 x float> %i.amt, i64 3
  store float %i.aps, ptr %i.apr, align 1, !tbaa !17, !noalias !145
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 12
  store <4 x float> %i.ani, ptr %i.apt, align 1, !tbaa !17, !noalias !145
  %i.apu = getelementptr inbounds nuw i8, ptr %i.app, i64 28
  %i.apv = shufflevector <4 x float> %i.ank, <4 x float> %i.anm, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.apv, ptr %i.apu, align 1, !tbaa !17, !noalias !145
  %i.apw = getelementptr inbounds nuw i8, ptr %i.app, i64 36
  %i.apx = extractelement <4 x float> %i.ano, i64 3
  store float %i.apx, ptr %i.apw, align 1, !tbaa !17, !noalias !145
  %.pre48.i.i = load i64, ptr %i.alf, align 8, !tbaa !137, !noalias !145
  br label %.critedge.i.i

.loopexit.i:                                      ; preds = %.critedge.i.i, %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.apy = ptrtoint ptr %i.ami to i64
  %i.apz = ptrtoint ptr %i.amg to i64
  %i.aqa = sub i64 %i.apy, %i.apz
  %i.aqb = sdiv exact i64 %i.aqa, 40
  store ptr %i.amg, ptr %20, align 8
  store i64 %i.aqb, ptr %i.lr, align 8
  %i.aqc = invoke noundef zeroext i1 @_ZNK3ozz9animation7offline24AdditiveAnimationBuilderclERKNS1_12RawAnimationERKNS_4spanIKNS_4math9TransformEEEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %18)
          to label %bb.mb unwind label %bb.ml

bb.mb:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %.not.i.i.i221.i = icmp eq ptr %i.amg, null
  br i1 %.not.i.i.i221.i, label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEED2Ev.exit.i, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.aqd = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.md unwind label %bb.me     ; 2 uses

bb.md:                                            ; preds = %bb.mc
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !15
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 24
  %i.aqg = load ptr, ptr %i.aqf, align 8
  invoke void %i.aqg(ptr noundef nonnull align 8 dereferenceable(8) %i.aqd, ptr noundef nonnull %i.amg)
          to label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEED2Ev.exit.i unwind label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.mc
  %i.aqh = landingpad { ptr, i32 }
          catch ptr null
  %i.aqi = extractvalue { ptr, i32 } %i.aqh, 0
  call void @__clang_call_terminate(ptr %i.aqi) #21
  unreachable

_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEED2Ev.exit.i: ; preds = %bb.md, %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br i1 %i.aqc, label %bb.mx, label %bb.mp
end_hunk_0
