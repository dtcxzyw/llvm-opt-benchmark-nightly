Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3g2o17RegisterTypeProxyINS_25EdgeInverseSim3ProjectXYZEED2Ev:bb.a

_ZNSt12__shared_ptrIN3g2o32AbstractHyperGraphElementCreatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN3g2o32AbstractHyperGraphElementCreatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !20
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN3g2o32AbstractHyperGraphElementCreatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o16VertexSim3ExpmapC2Ev(ptr noundef nonnull align 16 dereferenceable(369) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph6VertexC2Ev(ptr noundef nonnull align 16 dereferenceable(296) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.b, align 16, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 7, ptr %i.h, align 8, !tbaa !362
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o16VertexSim3ExpmapE, i64 16), ptr %0, align 16, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o16VertexSim3ExpmapE, i64 288), ptr %i.a, align 16, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 0, ptr %i.m, align 1, !tbaa !363
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.n, align 16, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.k, align 16, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.l, align 16, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o8EdgeSim3C2Ev(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  tail call void @_ZN3g2o16OptimizableGraph4EdgeC2Ev(ptr noundef nonnull align 16 dereferenceable(776) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 7, ptr %i.g, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o18BaseFixedSizedEdgeILi7ENS_4Sim3EJNS_16VertexSim3ExpmapES2_EEE, i64 16), ptr %0, align 16, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o18BaseFixedSizedEdgeILi7ENS_4Sim3EJNS_16VertexSim3ExpmapES2_EEE, i64 264), ptr %i.b, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i8 0, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr null, ptr %i.i, align 8, !alias.scope !368
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr null, ptr %i.j, align 8, !alias.scope !369
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !116 ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !117  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp ult i64 %i.t, 2
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = sub nuw nsw i64 2, %i.t
  invoke void @_ZNSt6vectorIPN3g2o10HyperGraph6VertexESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.o, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN3g2o14BaseBinaryEdgeILi7ENS_4Sim3ENS_16VertexSim3ExpmapES2_EC2Ev.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.s, 16
  br i1 %.not.i.i, label %_ZN3g2o14BaseBinaryEdgeILi7ENS_4Sim3ENS_16VertexSim3ExpmapES2_EC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.w
  br i1 %.not.i.i.i.i, label %_ZN3g2o14BaseBinaryEdgeILi7ENS_4Sim3ENS_16VertexSim3ExpmapES2_EC2Ev.exit, label %_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.w, ptr %i.n, align 16, !tbaa !116
  br label %_ZN3g2o14BaseBinaryEdgeILi7ENS_4Sim3ENS_16VertexSim3ExpmapES2_EC2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(688) dereferenceable(776) %0) #26
  resume { ptr, i32 } %i.x

_ZN3g2o14BaseBinaryEdgeILi7ENS_4Sim3ENS_16VertexSim3ExpmapES2_EC2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.l, ptr %i.y, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr %i.k, ptr %i.z, align 16, !tbaa !371
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o8EdgeSim3E, i64 16), ptr %0, align 16, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o8EdgeSim3E, i64 264), ptr %i.b, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o16VertexSim3Expmap4readERSi(ptr noundef nonnull align 16 dereferenceable(369) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 4 uses
  %3 = alloca %"struct.g2o::Sim3", align 16       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = call noundef zeroext i1 @_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.b = load ptr, ptr %1, align 8, !tbaa !22
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !126  ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit13

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !22
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !126  ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit, label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit13

_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 0 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !22
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 -24
  %.pre11.i = load i64, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert12.i = getelementptr inbounds i8, ptr %1, i64 %.pre11.i
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert12.i, i64 32
  %.pre14.i = load i32, ptr %.phi.trans.insert13.i, align 8, !tbaa !126 ; 3 uses
  %i.t = icmp eq i32 %.pre14.i, 0
  br i1 %i.t, label %bb.c, label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit13

bb.c:                                             ; preds = %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !22
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit13

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %.pre.i7 = load ptr, ptr %1, align 8, !tbaa !22
  %.phi.trans.insert.i8 = getelementptr i8, ptr %.pre.i7, i64 -24
  %.pre11.i9 = load i64, ptr %.phi.trans.insert.i8, align 8
  %.phi.trans.insert12.i10 = getelementptr inbounds i8, ptr %1, i64 %.pre11.i9
  %.phi.trans.insert13.i11 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert12.i10, i64 32
  %.pre14.i12 = load i32, ptr %.phi.trans.insert13.i11, align 8, !tbaa !126
  br label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit13

_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit13: ; preds = %bb.a, %bb.b, %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit, %bb.c, %bb.d
  %i.af = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ false, %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit ], [ false, %bb.b ], [ false, %bb.a ]
  %i.ag = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ %.pre14.i, %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit ], [ %i.p, %bb.b ], [ %i.g, %bb.a ]
  %i.ah = phi i32 [ %.pre14.i12, %bb.d ], [ %i.ab, %bb.c ], [ %.pre14.i, %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit ], [ %i.p, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN3g2o4Sim3C2ERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.ai = load <2 x i64>, ptr %3, align 16, !tbaa !20, !noalias !382
  %i.aj = xor <2 x i64> %i.ai, splat (i64 -9223372036854775808)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load <2 x i64>, ptr %i.ak, align 16, !tbaa !20, !noalias !382
  %i.am = xor <2 x i64> %i.al, <i64 -9223372036854775808, i64 0>
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ao = load double, ptr %i.an, align 8, !tbaa !47, !noalias !383
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load <2 x double>, ptr %i.ap, align 16, !tbaa !20, !noalias !384
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.as = load double, ptr %i.ar, align 16, !tbaa !36, !noalias !384
  %bc.i = bitcast <2 x i64> %i.aj to <2 x double> ; 4 uses
  %bc6.i = bitcast <2 x i64> %i.am to <2 x double> ; 5 uses
  %i.at = extractelement <2 x double> %bc6.i, i64 1 ; 2 uses
  %i.au = fcmp olt double %i.at, 0.000000e+00     ; 2 uses
  %i.av = fneg <2 x double> %bc.i
  %i.aw = fneg <2 x double> %bc6.i
  %i.ax = select i1 %i.au, <2 x double> %i.aw, <2 x double> %bc6.i ; 4 uses
  %i.ay = select i1 %i.au, <2 x double> %i.av, <2 x double> %bc.i ; 4 uses
  %i.az = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.ba ; 3 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 1
  %i.bd = fmul double %i.bc, %i.as                ; 3 uses
  %i.be = extractelement <2 x double> %bc.i, i64 0 ; 4 uses
  %i.bf = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = fmul <2 x double> %i.aq, %i.bf          ; 3 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.bg, i64 1 ; 2 uses
  %i.bh = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.bg, i64 0 ; 2 uses
  %i.bi = fneg double %.sroa.0.0.vec.extract.i.i.i
  %i.bj = fmul double %i.bh, %i.bi
  %i.bk = call double @llvm.fmuladd.f64(double %i.be, double %.sroa.0.8.vec.extract.i.i.i, double %i.bj) ; 2 uses
  %i.bl = fadd double %i.bk, %i.bk                ; 3 uses
  %i.bm = fmul double %i.at, %i.bl
  %i.bn = fadd double %i.bd, %i.bm
  %i.bo = extractelement <2 x double> %bc6.i, i64 0 ; 4 uses
  %i.bp = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = call double @llvm.fmuladd.f64(double %i.bh, double %i.bd, double %i.bq)
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bs = fneg double %i.bd
  %i.bt = fmul double %i.be, %i.bs
  %i.bu = call double @llvm.fmuladd.f64(double %i.bo, double %.sroa.0.0.vec.extract.i.i.i, double %i.bt)
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.bu, i64 1 ; 2 uses
  %i.bv = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %4 = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %5 = fmul double %i.bh, %4
  %6 = call double @llvm.fmuladd.f64(double %i.be, double %.sroa.027.8.vec.extract.i.i.i.i, double %5)
  %7 = fadd double %i.bn, %6
  %8 = shufflevector <2 x double> %bc6.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fmul <2 x double> %8, %i.bv
  %9 = fadd <2 x double> %i.bg, %i.bw
  %10 = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %11 = fmul double %i.bo, %10
  %12 = call double @llvm.fmuladd.f64(double %i.bh, double %i.bl, double %11)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %12, i64 0
  %i.bx = fneg double %i.bl
  %i.by = fmul double %i.be, %i.bx
  %i.bz = call double @llvm.fmuladd.f64(double %i.bo, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.by)
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.bz, i64 1
  %i.ca = fadd <2 x double> %9, %.sroa.0.8.vec.insert.i.i.i.i
  %i.cb = and i32 %i.ag, 2
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = or i1 %i.af, %i.cc
  %i.ce = and i1 %i.a, %i.cd
  %i.cf = icmp eq i32 %i.ah, 0
  %i.cg = and i32 %i.ah, 2
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = or i1 %i.cf, %i.ch
  %i.cj = and i1 %i.ce, %i.ci
  %i.ck = fmul <2 x double> %i.ay, %i.ay
  %i.cl = fmul <2 x double> %i.ax, %i.ax
  %i.cm = fadd <2 x double> %i.cl, %i.ck          ; 2 uses
  %shift = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cm, %shift
  %i.cn = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.co = fcmp ogt double %i.cn, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i.i = call double @llvm.sqrt.f64(double %i.cn)
  %i.cp = insertelement <2 x double> poison, double %.scalar.i.i.i.i.i, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fdiv <2 x double> %i.ay, %i.cq
  %i.cs = fdiv <2 x double> %i.ax, %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cu = select i1 %i.co, <2 x double> %i.cr, <2 x double> %i.ay
  store <2 x double> %i.cu, ptr %i.ct, align 16, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cw = select i1 %i.co, <2 x double> %i.cs, <2 x double> %i.ax
  store <2 x double> %i.cw, ptr %i.cv, align 16, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x double> %i.ca, ptr %i.cx, align 16, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %7, ptr %i.cy, align 16, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.da = extractelement <2 x double> %i.bb, i64 0
  store double %i.da, ptr %i.cz, align 8, !tbaa !47
  %i.db = load ptr, ptr %0, align 16, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 216
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 16 dereferenceable(296) %0), !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %i.cj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = phi i32 [ %.pre14, %bb.h ], [ %i.bl, %bb.g ], [ %i.bc, %bb.f ], [ %i.at, %bb.e ], [ %i.ak, %bb.d ], [ %i.ab, %bb.c ], [ %i.s, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = and i32 %i.h, 2
  %i.k = icmp ne i32 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  ret i1 %i.l

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !22
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !126  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !22
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !22
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !126 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 0 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !22
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !126 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.av) ; 0 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !22
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !126 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 0 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !22
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !126 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bn) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert12 = getelementptr inbounds i8, ptr %0, i64 %.pre11
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert12, i64 32
  %.pre14 = load i32, ptr %.phi.trans.insert13, align 8, !tbaa !126
  br label %.critedge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o4Sim3C2ERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2 = alloca [4 x double], align 16        ; 7 uses
  %.sroa.0221 = alloca [3 x double], align 16     ; 5 uses
  %.sroa.0333 = alloca [9 x double], align 16     ; 23 uses
  %.sroa.7 = alloca [4 x double], align 16        ; 13 uses
  %2 = alloca %"class.Eigen::Matrix.178", align 16 ; 26 uses
  %3 = alloca %"class.Eigen::Quaternion", align 16 ; 10 uses
  %.sroa.3 = alloca [4 x double], align 16        ; 5 uses
  %.sroa.0223.0.copyload = load <2 x double>, ptr %1, align 8, !tbaa !36 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0221)
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0221, ptr noundef nonnull align 8 dereferenceable(24) %scevgep, i64 24, i1 false), !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load double, ptr %i.a, align 8, !tbaa !36 ; 12 uses
  %i.c = fmul <2 x double> %.sroa.0223.0.copyload, %.sroa.0223.0.copyload ; 2 uses
  %shift = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.c, %shift
  %i.d = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.e = fmul double %.sroa.6.0.copyload, %.sroa.6.0.copyload
  %i.f = fadd double %i.e, %i.d
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %i.f) ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0333)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0333, i8 0, i64 72, i1 false), !alias.scope !387
  %i.g = fneg double %.sroa.6.0.copyload
  %.sroa.0333.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx359 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 24
  store double %i.g, ptr %.sroa.0333.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx359, align 8, !tbaa !36, !alias.scope !387
  %.sroa.0333.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx352 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 8
  store double %.sroa.6.0.copyload, ptr %.sroa.0333.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx352, align 8, !tbaa !36, !alias.scope !387
  %i.h = fneg <2 x double> %.sroa.0223.0.copyload ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %.sroa.0333.56..07.i.i.i.i.ptr.7.i.i.i.i.i.i.i.i.i.i.sroa_idx367 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 56
  store double %i.i, ptr %.sroa.0333.56..07.i.i.i.i.ptr.7.i.i.i.i.i.i.i.i.i.i.sroa_idx367, align 8, !tbaa !36, !alias.scope !387
  %i.j = extractelement <2 x double> %i.h, i64 1
  %.sroa.0333.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx356 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 16
  store double %i.j, ptr %.sroa.0333.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx356, align 16, !tbaa !36, !alias.scope !387
  %.sroa.0333.40..07.i.i.i.i.ptr.5.i.i.i.i.i.i.i.i.i.i.sroa_idx362 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 40
  store <2 x double> %.sroa.0223.0.copyload, ptr %.sroa.0333.40..07.i.i.i.i.ptr.5.i.i.i.i.i.i.i.i.i.i.sroa_idx362, align 8, !tbaa !36, !alias.scope !387
  %i.k = tail call double @exp(double noundef %i.b) #26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.k, ptr %i.l, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.0333.0..sroa.0333.0.334 = load <2 x double>, ptr %.sroa.0333, align 16 ; 8 uses
  %i.m = shufflevector <2 x double> %.sroa.0333.0..sroa.0333.0.334, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %.sroa.0333.0..sroa.0333.0.334, %i.m
  %.sroa.0333.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx357 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 24
  %.sroa.0333.24..sroa.0333.24. = load <2 x double>, ptr %.sroa.0333.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx357, align 8, !tbaa !20 ; 4 uses
  %.sroa.0333.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx351 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 8
  %.sroa.0333.8..sroa.0333.8. = load <2 x double>, ptr %.sroa.0333.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx351, align 8 ; 3 uses
  %i.o = shufflevector <2 x double> %.sroa.0333.8..sroa.0333.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %.sroa.0333.24..sroa.0333.24., %i.o
  %i.q = fadd <2 x double> %i.n, %i.p
  %.sroa.0333.48..07.i.i.i.i.ptr.6.i.i.i.i.i.i.i.i.i.i.sroa_idx363 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 48
  %.sroa.0333.48..sroa.0333.48. = load <2 x double>, ptr %.sroa.0333.48..07.i.i.i.i.ptr.6.i.i.i.i.i.i.i.i.i.i.sroa_idx363, align 16, !tbaa !20 ; 7 uses
  %.sroa.0333.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx353 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 16
  %.sroa.0333.16..sroa.0333.16. = load <2 x double>, ptr %.sroa.0333.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx353, align 16 ; 9 uses
  %i.r = shufflevector <2 x double> %.sroa.0333.16..sroa.0333.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %.sroa.0333.48..sroa.0333.48., %i.r
  %i.t = fadd <2 x double> %i.q, %i.s             ; 5 uses
  %i.u = extractelement <2 x double> %.sroa.0333.16..sroa.0333.16., i64 0
  %foldExtExtBinop291 = fmul <2 x double> %.sroa.0333.0..sroa.0333.0.334, %.sroa.0333.16..sroa.0333.16.
  %i.v = extractelement <2 x double> %foldExtExtBinop291, i64 0 ; 2 uses
  %foldExtExtBinop293 = fmul <2 x double> %.sroa.0223.0.copyload, %.sroa.0333.8..sroa.0333.8.
  %i.w = extractelement <2 x double> %foldExtExtBinop293, i64 0
  %i.x = fmul double %i.u, 0.000000e+00           ; 2 uses
  %i.y = fadd double %i.w, %i.x
  %i.z = fadd double %i.v, %i.y
  store double %i.z, ptr %.sroa.7, align 16, !tbaa !36
  %i.aa = shufflevector <2 x double> %.sroa.0333.24..sroa.0333.24., <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fmul <2 x double> %i.aa, %.sroa.0333.0..sroa.0333.0.334
  %.sroa.0333.32..sroa_idx360 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 32
  %.sroa.0333.32..sroa.0333.32. = load <2 x double>, ptr %.sroa.0333.32..sroa_idx360, align 16 ; 7 uses
  %i.ac = shufflevector <2 x double> %.sroa.0333.32..sroa.0333.32., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %.sroa.0333.24..sroa.0333.24., %i.ac ; 2 uses
  %i.ae = fadd <2 x double> %i.ab, %i.ad
  %.sroa.0333.40..07.i.i.i.i.ptr.5.i.i.i.i.i.i.i.i.i.i.sroa_idx361 = getelementptr inbounds nuw i8, ptr %.sroa.0333, i64 40
  %.sroa.0333.40..sroa.0333.40. = load <2 x double>, ptr %.sroa.0333.40..07.i.i.i.i.ptr.5.i.i.i.i.i.i.i.i.i.i.sroa_idx361, align 8 ; 6 uses
  %i.af = shufflevector <2 x double> %.sroa.0333.40..sroa.0333.40., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x double> %.sroa.0333.48..sroa.0333.48., %i.af ; 2 uses
  %i.ah = fadd <2 x double> %i.ae, %i.ag
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 8
  store <2 x double> %i.ah, ptr %.sroa.7.8..sroa_idx, align 8, !tbaa !20
end_hunk_0
