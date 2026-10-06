Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/scene?download=true
inline.NumInlined: 8765
inline.NumDeleted: 2913
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN4pbrt10Integrator6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ParameterDictionaryENS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaISG_EEPKNS_13RGBColorSpaceEPKNS_7FileLocE
declare void @_ZN4pbrt10Integrator6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ParameterDictionaryENS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaISG_EEPKNS_13RGBColorSpaceEPKNS_7FileLocE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(108), ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr nofree noundef align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10BasicSceneC2Ev(ptr noundef nonnull align 8 dereferenceable(1520) initializes((0, 48), (112, 136), (144, 192), (256, 280), (296, 368), (376, 380), (384, 392)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.b, align 4, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %i.c, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.f, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.i, align 8, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.j, align 4, !tbaa !105
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.n, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !167
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr null, ptr %i.t, align 8, !tbaa !168
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i8 0, i64 72, i1 false)
  store ptr %i.s, ptr %i.u, align 8, !tbaa !169
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.s, ptr %i.v, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEZN4pbrt10BasicSceneC1EvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.z, align 8, !tbaa !422
  store ptr @"_ZNSt17_Function_handlerIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.y, align 8, !tbaa !314
  invoke void @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEC2EOSt8functionIFS5_vEE(ptr noundef nonnull align 8 dereferenceable(112) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !314 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  store i32 0, ptr %i.af, align 8, !tbaa !167
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr null, ptr %i.ag, align 8, !tbaa !168
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ae, i8 0, i64 152, i1 false)
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !169
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !170
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 0, ptr %i.aj, align 8, !tbaa !171
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !167
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr null, ptr %i.al, align 8, !tbaa !168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !167
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr null, ptr %i.aq, align 8, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 0, i64 48, i1 false)
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !169
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !170
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i64 0, ptr %i.at, align 8, !tbaa !171
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  store i32 0, ptr %i.au, align 8, !tbaa !167
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr null, ptr %i.av, align 8, !tbaa !168
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 896
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !169
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !170
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  store i32 0, ptr %i.az, align 8, !tbaa !167
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr null, ptr %i.ba, align 8, !tbaa !168
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.ay, i8 0, i64 296, i1 false)
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !169
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !170
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i64 0, ptr %i.bd, align 8, !tbaa !171
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  store i32 0, ptr %i.be, align 8, !tbaa !167
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store ptr null, ptr %i.bf, align 8, !tbaa !168
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !169
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !170
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i64 0, ptr %i.bi, align 8, !tbaa !171
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 3 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !167
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store ptr null, ptr %i.bk, align 8, !tbaa !168
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !169
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !170
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 0, ptr %i.bn, align 8, !tbaa !171
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 0, ptr %i.bo, align 8, !tbaa !402
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bp, i8 0, i64 160, i1 false)
  ret void

bb.e:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !314 ; 2 uses
  %.not.i4 = icmp eq ptr %i.br, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @_ZNSt3mapIN4pbrt14InternedStringEPNS0_29InstanceDefinitionSceneEntityESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.r) #32
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !191
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #33
  br label %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit

_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit5, %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cb) #32
  call void @_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #32
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.h) #32
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #32
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEC2EOSt8functionIFS5_vEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = tail call noundef i32 @_ZN4pbrt14RunningThreadsEv() ; 3 uses
  %i.c = shl nsw i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.190) #34
  unreachable

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  %i.f = mul nuw nsw i64 %i.d, 24                 ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 4 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.g, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sink = phi ptr [ %i.g, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i ]
  %.sink.i = phi ptr [ %i.h, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i ]
  store ptr %.sink, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %.sink.i, ptr %i.j, align 8, !tbaa !994
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.i, align 8, !tbaa !420
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !443
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !443
  br label %_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !314  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit: ; preds = %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.e, %bb.f
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !994
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #33
  br label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIN4pbrt14InternedStringEPNS0_29InstanceDefinitionSceneEntityESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  invoke void @_ZNSt8_Rb_treeIN4pbrt14InternedStringESt4pairIKS1_PNS0_29InstanceDefinitionSceneEntityEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4pbrt14InternedStringESt4pairIKS1_PNS0_29InstanceDefinitionSceneEntityEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZNSt8_Rb_treeIN4pbrt14InternedStringESt4pairIKS1_PNS0_29InstanceDefinitionSceneEntityEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !386
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !367
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4pbrt24AnimatedShapeSceneEntityEEEvT_S5_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityES1_EvT_S3_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityES1_EvT_S3_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !386    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4pbrt24AnimatedShapeSceneEntityESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityES1_EvT_S3_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !368
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #33
  br label %_ZNSt12_Vector_baseIN4pbrt24AnimatedShapeSceneEntityESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4pbrt24AnimatedShapeSceneEntityESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10BasicScene22startLoadingNormalMapsERKNS_19ParameterDictionaryE(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(108) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::_Bind.338", align 8    ; 8 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %3 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @.str.102, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.d, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !87
  store i8 0, ptr %i.e, align 8, !tbaa !88
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN4pbrt15ResolveFilenameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !88
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = load ptr, ptr %7, align 8, !tbaa !89     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load i64, ptr %i.e, align 8, !tbaa !88
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.p = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.r = load i64, ptr %i.b, align 8, !tbaa !88
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !87   ; 9 uses
  %i.v = icmp eq i64 %i.u, 0
  %.pre46 = load ptr, ptr %4, align 8             ; 6 uses
  br i1 %i.v, label %bb.t, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.d:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
end_hunk_0
