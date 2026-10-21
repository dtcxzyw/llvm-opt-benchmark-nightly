Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/import2ozz_anim?download=true
inline.NumInlined: 815
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3ozz9animation7offline16ImportAnimationsERKN4Json5ValueEPNS1_11OzzImporterENS_10EndiannessE:bb.a
bb.kd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i348.i
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 67
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i

bb.ke:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i348.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ajh)
          to label %.noexc353.i unwind label %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp

.noexc353.i:                                      ; preds = %bb.ke
  %i.ajm = load ptr, ptr %i.ajh, align 8, !tbaa !15
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 48
  %i.ajo = load ptr, ptr %i.ajn, align 8
  %i.ajp = invoke noundef signext i8 %i.ajo(ptr noundef nonnull align 8 dereferenceable(570) %i.ajh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i unwind label %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i: ; preds = %.noexc353.i, %bb.kd
  %.0.i.i.i351.i = phi i8 [ %i.ajl, %bb.kd ], [ %i.ajp, %.noexc353.i ]
  %i.ajq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aja, i8 noundef signext %.0.i.i.i351.i)
          to label %.noexc355.i unwind label %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp

.noexc355.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i
  %i.ajr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ajq)
          to label %_ZNSolsEPFRSoS_E.exit209.i unwind label %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit209.i:                       ; preds = %.noexc355.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.kh

bb.kf:                                            ; preds = %bb.ka
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kg

.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc355.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i350.i, %.noexc353.i, %bb.ke, %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit.i, %_ZN3ozz3log6LoggerlsIA29_cEERSoRKT_.exit.i161, %bb.kb, %bb.kc
  %lpad.loopexit.split-lp1851 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %15) #19
  br label %bb.kg

bb.kg:                                            ; preds = %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp, %bb.kf
  %.pn.i160 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1851, %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp ], [ %i.ajs, %bb.kf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.qi

bb.kh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit209.i, %_ZN3ozz9animation7offline18AnimationOptimizerD2Ev.exit.i
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.me, ptr noundef nonnull @.str.46)
          to label %bb.ki unwind label %bb.gl

bb.ki:                                            ; preds = %bb.kh
  %i.aju = invoke noundef zeroext i1 @_ZNK4Json5Value6asBoolEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ajt)
          to label %bb.kj unwind label %bb.gl

bb.kj:                                            ; preds = %bb.ki
  br i1 %i.aju, label %bb.kk, label %bb.mo

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %16)
          to label %bb.kl unwind label %bb.lh

bb.kl:                                            ; preds = %bb.kk
  %i.ajv = load ptr, ptr %16, align 8, !tbaa !87, !nonnull !88, !align !89 ; 4 uses
  %i.ajw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajv, ptr noundef nonnull @.str.47, i64 noundef 25)
          to label %_ZN3ozz3log6LoggerlsIA26_cEERSoRKT_.exit.i unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN3ozz3log6LoggerlsIA26_cEERSoRKT_.exit.i:       ; preds = %bb.kl
  %i.ajx = load ptr, ptr %i.ajv, align 8, !tbaa !15
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 -24
  %i.ajz = load i64, ptr %i.ajy, align 8
  %i.aka = getelementptr inbounds i8, ptr %i.ajv, i64 %i.ajz
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 240
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !103 ; 6 uses
  %.not.i.i.i358.i = icmp eq ptr %i.akc, null
  br i1 %.not.i.i.i358.i, label %bb.km, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359.i

bb.km:                                            ; preds = %_ZN3ozz3log6LoggerlsIA26_cEERSoRKT_.exit.i
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc363.i unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp

.noexc363.i:                                      ; preds = %bb.km
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359.i: ; preds = %_ZN3ozz3log6LoggerlsIA26_cEERSoRKT_.exit.i
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 56
  %i.ake = load i8, ptr %i.akd, align 8, !tbaa !109
  %.not.i1.i.i360.i = icmp eq i8 %i.ake, 0
  br i1 %.not.i1.i.i360.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359.i
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akc, i64 67
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361.i

bb.ko:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.akc)
          to label %.noexc364.i unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp

.noexc364.i:                                      ; preds = %bb.ko
  %i.akh = load ptr, ptr %i.akc, align 8, !tbaa !15
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 48
  %i.akj = load ptr, ptr %i.aki, align 8
  %i.akk = invoke noundef signext i8 %i.akj(ptr noundef nonnull align 8 dereferenceable(570) %i.akc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361.i unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp, !inline_history !63

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361.i: ; preds = %.noexc364.i, %bb.kn
  %.0.i.i.i362.i = phi i8 [ %i.akg, %bb.kn ], [ %i.akk, %.noexc364.i ]
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ajv, i8 noundef signext %.0.i.i.i362.i)
          to label %.noexc366.i unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp

.noexc366.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361.i
  %i.akm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.akl)
          to label %_ZNSolsEPFRSoS_E.exit212.i unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit212.i:                       ; preds = %.noexc366.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  invoke void @_ZN3ozz9animation7offline12RawAnimationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %bb.kp unwind label %bb.lj

bb.kp:                                            ; preds = %_ZNSolsEPFRSoS_E.exit212.i
  %i.akn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.me, ptr noundef nonnull @.str.48)
          to label %bb.kq unwind label %bb.ln

bb.kq:                                            ; preds = %bb.kp
  %i.ako = invoke noundef ptr @_ZNK4Json5Value9asCStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.akn)
          to label %bb.kr unwind label %bb.ln     ; 2 uses

bb.kr:                                            ; preds = %bb.kq
  %i.akp = load ptr, ptr @_ZZN3ozz9animation7offline17AdditiveReference8GetNamesEvE6kNames, align 16, !tbaa !142
  %i.akq = invoke noundef zeroext i1 @_ZN3ozz9animation7offline11CompareNameEPKcS3_(ptr noundef %i.akp, ptr noundef %i.ako)
          to label %.noexc213.i unwind label %bb.ln

.noexc213.i:                                      ; preds = %bb.kr
  br i1 %i.akq, label %_ZN3ozz9animation7offline8JsonEnumINS1_17AdditiveReferenceENS1_21AdditiveReferenceEnum5ValueEE15GetEnumFromNameEPKcPS5_.exit.thread.i, label %bb.ks

bb.ks:                                            ; preds = %.noexc213.i
  %i.akr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3ozz9animation7offline17AdditiveReference8GetNamesEvE6kNames, i64 8), align 8, !tbaa !142
  %i.aks = invoke noundef zeroext i1 @_ZN3ozz9animation7offline11CompareNameEPKcS3_(ptr noundef %i.akr, ptr noundef %i.ako)
          to label %.noexc214.i unwind label %bb.ln

.noexc214.i:                                      ; preds = %bb.ks
  br i1 %i.aks, label %bb.kt, label %_ZN3ozz9animation7offline8JsonEnumINS1_17AdditiveReferenceENS1_21AdditiveReferenceEnum5ValueEE15GetEnumFromNameEPKcPS5_.exit.thread.i

bb.kt:                                            ; preds = %.noexc214.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.akt = getelementptr inbounds nuw i8, ptr %i.rf, i64 32 ; 6 uses
  %i.aku = load i64, ptr %i.akt, align 8, !tbaa !137, !noalias !145 ; 3 uses
  %i.akv = shl i64 %i.aku, 32                     ; 2 uses
  %i.akw = ashr exact i64 %i.akv, 32              ; 6 uses
  %i.akx = icmp ugt i64 %i.akw, 230584300921369395
  br i1 %i.akx, label %bb.ku, label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i.i.i

bb.ku:                                            ; preds = %bb.kt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #20
          to label %.noexc218.i unwind label %bb.lk

.noexc218.i:                                      ; preds = %bb.ku
  unreachable

_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i.i.i: ; preds = %bb.kt
  %.not.i.i.i.i.i.i = icmp eq i64 %i.akv, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i, label %bb.kv

_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !alias.scope !145
  br label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i

bb.kv:                                            ; preds = %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.aky = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.kw unwind label %bb.kx, !noalias !145 ; 2 uses

bb.kw:                                            ; preds = %bb.kv
  %i.akz = mul nuw nsw i64 %i.akw, 40
  %i.ala = load ptr, ptr %i.aky, align 8, !tbaa !15, !noalias !145
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 16
  %i.alc = load ptr, ptr %i.alb, align 8, !noalias !145
  %i.ald = invoke noundef ptr %i.alc(ptr noundef nonnull align 8 dereferenceable(8) %i.aky, i64 noundef %i.akz, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i unwind label %bb.kx, !noalias !145 ; 5 uses

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %i.ale = landingpad { ptr, i32 }
          catch ptr null
  %i.alf = extractvalue { ptr, i32 } %i.ale, 0
  call void @__clang_call_terminate(ptr %i.alf) #21, !noalias !145
  unreachable

_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i: ; preds = %bb.kw
  store ptr %i.ald, ptr %19, align 8, !tbaa !59, !alias.scope !145
  %i.alg = getelementptr inbounds nuw [40 x i8], ptr %i.ald, i64 %i.akw
  store ptr %i.alg, ptr %i.lo, align 8, !tbaa !146, !alias.scope !145
  %xtraiter = and i64 %i.aku, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.015.i.i.i.i.i.prol = phi ptr [ %i.alj, %.lr.ph.i.i.i.i.i.prol ], [ %i.ald, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.prol = phi i64 [ %i.ali, %.lr.ph.i.i.i.i.i.prol ], [ %i.akw, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ]
  %i.alh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.prol, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i.i.i.i.prol, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.alh, align 4, !noalias !145
  %63 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.prol, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %63, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.prol, i64 36
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.prol, align 4, !noalias !145
  %i.ali = add nsw i64 %.01214.i.i.i.i.i.prol, -1 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !78

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i
  %.lcssa1908.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ], [ %i.alj, %.lr.ph.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.unr = phi ptr [ %i.ald, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ], [ %i.alj, %.lr.ph.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.unr = phi i64 [ %i.akw, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i.i ], [ %i.ali, %.lr.ph.i.i.i.i.i.prol ]
  %i.alk = icmp ult i64 %i.akw, 4
  br i1 %i.alk, label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.alt, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01214.i.i.i.i.i = phi i64 [ %i.als, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.all = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i.i.i.i, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.all, align 4, !noalias !145
  %64 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %64, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 36
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !145
  %i.alm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 40
  %i.aln = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.alm, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.aln, align 4, !noalias !145
  %65 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 68
  store <2 x float> splat (float 1.000000e+00), ptr %65, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 76
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.1, align 4, !noalias !145
  %i.alo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 80
  %i.alp = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.alo, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.alp, align 4, !noalias !145
  %66 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 108
  store <2 x float> splat (float 1.000000e+00), ptr %66, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 116
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.2, align 4, !noalias !145
  %i.alq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 120
  %i.alr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.alq, i8 0, i64 20, i1 false), !noalias !145
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.alr, align 4, !noalias !145
  %67 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 148
  store <2 x float> splat (float 1.000000e+00), ptr %67, align 4, !noalias !145
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 156
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.3, align 4, !noalias !145
  %i.als = add nsw i64 %.01214.i.i.i.i.i, -4      ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i215.i.3 = icmp eq i64 %i.als, 0
  br i1 %.not.i.i.i.i215.i.3, label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !79

_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa1908 = phi ptr [ %.lcssa1908.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.alt, %.lr.ph.i.i.i.i.i ]
  %.pre.i.i = load i64, ptr %i.akt, align 8, !tbaa !137, !noalias !145
  br label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i

_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i
  %i.alu = phi ptr [ null, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i ], [ %i.ald, %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i ] ; 8 uses
  %i.alv = phi i64 [ %i.aku, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i ], [ %.pre.i.i, %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i ] ; 2 uses
  %i.alw = phi ptr [ null, %_ZNSt12_Vector_baseIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i.i.i ], [ %.lcssa1908, %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.loopexit.i.i ] ; 2 uses
  store ptr %i.alw, ptr %i.lp, align 8, !tbaa !148, !alias.scope !145
  %i.alx = trunc i64 %i.alv to i32
  %i.aly = icmp sgt i32 %i.alx, 0
  br i1 %i.aly, label %.lr.ph.i217.i, label %.loopexit.i

.lr.ph.i217.i:                                    ; preds = %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i
  %i.alz = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  br label %bb.ky

bb.ky:                                            ; preds = %.critedge.i.i, %.lr.ph.i217.i
  %i.ama = phi i64 [ %i.alv, %.lr.ph.i217.i ], [ %i.ang, %.critedge.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i217.i ], [ %indvars.iv.next.i.i, %.critedge.i.i ] ; 3 uses
  %i.amb = load ptr, ptr %i.alz, align 8, !tbaa !151, !noalias !145
  %i.amc = getelementptr inbounds nuw [160 x i8], ptr %i.amb, i64 %indvars.iv.i.i ; 10 uses
  %i.amd = load <4 x float>, ptr %i.amc, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amc, i64 16
  %i.amf = load <4 x float>, ptr %i.ame, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amc, i64 32
  %i.amh = load <4 x float>, ptr %i.amg, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amc, i64 48
  %i.amj = load <4 x float>, ptr %i.ami, align 16, !tbaa !17, !noalias !145 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amc, i64 80
  %i.aml = load <4 x float>, ptr %i.amk, align 16, !tbaa !17, !noalias !145 ; 2 uses
  %i.amm = shufflevector <4 x float> %i.amj, <4 x float> %i.aml, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amc, i64 64
  %i.amo = load <4 x float>, ptr %i.amn, align 16, !tbaa !17, !noalias !145 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amc, i64 96
  %i.amq = load <4 x float>, ptr %i.amp, align 16, !tbaa !17, !noalias !145 ; 2 uses
  %i.amr = shufflevector <4 x float> %i.amo, <4 x float> %i.amq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ams = shufflevector <4 x float> %i.amj, <4 x float> %i.aml, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.amt = shufflevector <4 x float> %i.amo, <4 x float> %i.amq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.amu = shufflevector <4 x float> %i.amm, <4 x float> %i.amr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.amv = shufflevector <4 x float> %i.ams, <4 x float> %i.amt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.amw = shufflevector <4 x float> %i.ams, <4 x float> %i.amt, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amc, i64 112
  %i.amy = load <4 x float>, ptr %i.amx, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amc, i64 128
  %i.ana = load <4 x float>, ptr %i.amz, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amc, i64 144
  %i.anc = load <4 x float>, ptr %i.anb, align 16, !tbaa !17, !noalias !145 ; 4 uses
  %i.and = shl nuw nsw i64 %indvars.iv.i.i, 2     ; 5 uses
  %sext.i.i = shl i64 %i.ama, 32
  %i.ane = ashr exact i64 %sext.i.i, 32
  %i.anf = icmp slt i64 %i.and, %i.ane
  br i1 %i.anf, label %bb.kz, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky
  %i.ang = phi i64 [ %.pre48.i.i, %bb.lc ], [ %i.apa, %bb.lb ], [ %i.aon, %bb.la ], [ %i.aoa, %bb.kz ], [ %i.ama, %bb.ky ] ; 2 uses
  %.pre-phi.i.i = trunc i64 %i.ang to i32
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.anh = add nsw i32 %.pre-phi.i.i, 3
  %i.ani = sdiv i32 %i.anh, 4
  %i.anj = sext i32 %i.ani to i64
  %i.ank = icmp slt i64 %indvars.iv.next.i.i, %i.anj
  br i1 %i.ank, label %bb.ky, label %.loopexit.i, !llvm.loop !80

bb.kz:                                            ; preds = %bb.ky
  %i.anl = shufflevector <4 x float> %i.amm, <4 x float> %i.amr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.anm = getelementptr inbounds nuw [40 x i8], ptr %i.alu, i64 %i.and ; 7 uses
  %i.ann = extractelement <4 x float> %i.amd, i64 0
  store float %i.ann, ptr %i.anm, align 1, !tbaa !17, !noalias !145
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anm, i64 4
  %i.anp = extractelement <4 x float> %i.amf, i64 0
  store float %i.anp, ptr %i.ano, align 1, !tbaa !17, !noalias !145
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anm, i64 8
  %i.anr = extractelement <4 x float> %i.amh, i64 0
  store float %i.anr, ptr %i.anq, align 1, !tbaa !17, !noalias !145
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anm, i64 12
  store <4 x float> %i.anl, ptr %i.ans, align 1, !tbaa !17, !noalias !145
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anm, i64 28
  %i.anu = extractelement <4 x float> %i.amy, i64 0
  store float %i.anu, ptr %i.ant, align 1, !tbaa !17, !noalias !145
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anm, i64 32
  %i.anw = extractelement <4 x float> %i.ana, i64 0
  store float %i.anw, ptr %i.anv, align 1, !tbaa !17, !noalias !145
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anm, i64 36
  %i.any = extractelement <4 x float> %i.anc, i64 0
  store float %i.any, ptr %i.anx, align 1, !tbaa !17, !noalias !145
  %i.anz = or disjoint i64 %i.and, 1              ; 2 uses
  %i.aoa = load i64, ptr %i.akt, align 8, !tbaa !137, !noalias !145 ; 2 uses
  %sext54.i.i = shl i64 %i.aoa, 32
  %i.aob = ashr exact i64 %sext54.i.i, 32
  %i.aoc = icmp slt i64 %i.anz, %i.aob
  br i1 %i.aoc, label %bb.la, label %.critedge.i.i

bb.la:                                            ; preds = %bb.kz
  %i.aod = getelementptr inbounds nuw [40 x i8], ptr %i.alu, i64 %i.anz ; 5 uses
  %i.aoe = shufflevector <4 x float> %i.amd, <4 x float> %i.amf, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.aoe, ptr %i.aod, align 1, !tbaa !17, !noalias !145
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aog = extractelement <4 x float> %i.amh, i64 1
  store float %i.aog, ptr %i.aof, align 1, !tbaa !17, !noalias !145
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aod, i64 12
  store <4 x float> %i.amu, ptr %i.aoh, align 1, !tbaa !17, !noalias !145
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aod, i64 28
  %i.aoj = shufflevector <4 x float> %i.amy, <4 x float> %i.ana, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.aoj, ptr %i.aoi, align 1, !tbaa !17, !noalias !145
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aod, i64 36
  %i.aol = extractelement <4 x float> %i.anc, i64 1
  store float %i.aol, ptr %i.aok, align 1, !tbaa !17, !noalias !145
  %i.aom = or disjoint i64 %i.and, 2              ; 2 uses
  %i.aon = load i64, ptr %i.akt, align 8, !tbaa !137, !noalias !145 ; 2 uses
  %sext55.i.i = shl i64 %i.aon, 32
  %i.aoo = ashr exact i64 %sext55.i.i, 32
  %i.aop = icmp slt i64 %i.aom, %i.aoo
  br i1 %i.aop, label %bb.lb, label %.critedge.i.i

bb.lb:                                            ; preds = %bb.la
  %i.aoq = getelementptr inbounds nuw [40 x i8], ptr %i.alu, i64 %i.aom ; 5 uses
  %i.aor = shufflevector <4 x float> %i.amd, <4 x float> %i.amf, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aor, ptr %i.aoq, align 1, !tbaa !17, !noalias !145
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoq, i64 8
  %i.aot = extractelement <4 x float> %i.amh, i64 2
  store float %i.aot, ptr %i.aos, align 1, !tbaa !17, !noalias !145
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoq, i64 12
  store <4 x float> %i.amv, ptr %i.aou, align 1, !tbaa !17, !noalias !145
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoq, i64 28
  %i.aow = shufflevector <4 x float> %i.amy, <4 x float> %i.ana, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aow, ptr %i.aov, align 1, !tbaa !17, !noalias !145
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoq, i64 36
  %i.aoy = extractelement <4 x float> %i.anc, i64 2
  store float %i.aoy, ptr %i.aox, align 1, !tbaa !17, !noalias !145
  %i.aoz = or disjoint i64 %i.and, 3              ; 2 uses
  %i.apa = load i64, ptr %i.akt, align 8, !tbaa !137, !noalias !145 ; 2 uses
  %sext56.i.i = shl i64 %i.apa, 32
  %i.apb = ashr exact i64 %sext56.i.i, 32
  %i.apc = icmp slt i64 %i.aoz, %i.apb
  br i1 %i.apc, label %bb.lc, label %.critedge.i.i

bb.lc:                                            ; preds = %bb.lb
  %i.apd = getelementptr inbounds nuw [40 x i8], ptr %i.alu, i64 %i.aoz ; 5 uses
  %i.ape = shufflevector <4 x float> %i.amd, <4 x float> %i.amf, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ape, ptr %i.apd, align 1, !tbaa !17, !noalias !145
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apg = extractelement <4 x float> %i.amh, i64 3
  store float %i.apg, ptr %i.apf, align 1, !tbaa !17, !noalias !145
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apd, i64 12
  store <4 x float> %i.amw, ptr %i.aph, align 1, !tbaa !17, !noalias !145
  %i.api = getelementptr inbounds nuw i8, ptr %i.apd, i64 28
  %i.apj = shufflevector <4 x float> %i.amy, <4 x float> %i.ana, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.apj, ptr %i.api, align 1, !tbaa !17, !noalias !145
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apd, i64 36
  %i.apl = extractelement <4 x float> %i.anc, i64 3
  store float %i.apl, ptr %i.apk, align 1, !tbaa !17, !noalias !145
  %.pre48.i.i = load i64, ptr %i.akt, align 8, !tbaa !137, !noalias !145
  br label %.critedge.i.i

.loopexit.i:                                      ; preds = %.critedge.i.i, %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.apm = ptrtoint ptr %i.alw to i64
  %i.apn = ptrtoint ptr %i.alu to i64
  %i.apo = sub i64 %i.apm, %i.apn
  %i.app = sdiv exact i64 %i.apo, 40
  store ptr %i.alu, ptr %20, align 8
  store i64 %i.app, ptr %i.lq, align 8
  %i.apq = invoke noundef zeroext i1 @_ZNK3ozz9animation7offline24AdditiveAnimationBuilderclERKNS1_12RawAnimationERKNS_4spanIKNS_4math9TransformEEEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %18)
          to label %bb.ld unwind label %bb.ll

bb.ld:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %.not.i.i.i221.i = icmp eq ptr %i.alu, null
  br i1 %.not.i.i.i221.i, label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEED2Ev.exit.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.apr = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.lf unwind label %bb.lg     ; 2 uses

bb.lf:                                            ; preds = %bb.le
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !15
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 24
  %i.apu = load ptr, ptr %i.apt, align 8
  invoke void %i.apu(ptr noundef nonnull align 8 dereferenceable(8) %i.apr, ptr noundef nonnull %i.alu)
          to label %_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEED2Ev.exit.i unwind label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.apv = landingpad { ptr, i32 }
          catch ptr null
  %i.apw = extractvalue { ptr, i32 } %i.apv, 0
  call void @__clang_call_terminate(ptr %i.apw) #21
  unreachable

_ZNSt6vectorIN3ozz4math9TransformENS0_12StdAllocatorIS2_EEED2Ev.exit.i: ; preds = %bb.lf, %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br i1 %i.apq, label %bb.lw, label %bb.lp
end_hunk_0
