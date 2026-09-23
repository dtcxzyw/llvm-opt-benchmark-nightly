Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/set-union-tq-csa?download=true
inline.NumInlined: 1627
inline.NumDeleted: 659
begin_hunk_0_@_ZN2v88internal26SetPrototypeUnionAssembler29GenerateSetPrototypeUnionImplEv:bb.a
  %i.vl = sub i64 %i.vj, %i.vk
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.vl) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit178

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit178: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %124, ptr noundef nonnull %58) #7
  %i.vm = load ptr, ptr %58, align 8              ; 3 uses
  %.not.i.i.i.i.i179 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i.i.i.i179, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit180, label %bb.by

bb.by:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit178
  %i.vn = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = ptrtoint ptr %i.vo to i64
  %i.vq = ptrtoint ptr %i.vm to i64
  %i.vr = sub i64 %i.vp, %i.vq
  call void @_ZdlPvm(ptr noundef nonnull %i.vm, i64 noundef %i.vr) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit180

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit180: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit178, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.el) #7
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit180, %bb.bv
  %i.vs = getelementptr inbounds nuw i8, ptr %113, i64 64
  %i.vt = load i64, ptr %i.vs, align 8
  %.not1330 = icmp eq i64 %i.vt, 0
  br i1 %.not1330, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.ca) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %i.vu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %113, ptr noundef nonnull %57) #7 ; 0 uses
  %i.vv = load ptr, ptr %57, align 8              ; 3 uses
  %.not.i.i.i.i.i181 = icmp eq ptr %i.vv, null
  br i1 %.not.i.i.i.i.i181, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit182, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.vw = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.vx = load ptr, ptr %i.vw, align 8
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = ptrtoint ptr %i.vv to i64
  %i.wa = sub i64 %i.vy, %i.vz
  call void @_ZdlPvm(ptr noundef nonnull %i.vv, i64 noundef %i.wa) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit182

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit182: ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #7
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %195, ptr noundef nonnull %94, i64 noundef 0, ptr noundef null, i32 noundef 1) #7
  store ptr %.sroa.0.0, ptr %196, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %196, i64 8
  store ptr %.sroa.01271.0, ptr %i.wb, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %196, i64 16
  store ptr %.sroa.01273.0, ptr %i.wc, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %196, i64 24
  store ptr %.sroa.01275.0, ptr %i.wd, align 8
  call void @_ZN2v88internal31CheckSetRecordHasJSMapMethods_0EPNS0_8compiler18CodeAssemblerStateENS0_21TorqueStructSetRecordEPNS1_18CodeAssemblerLabelE(ptr noundef %i.a, ptr noundef nonnull dead_on_return %196, ptr noundef nonnull %195) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %115, ptr noundef nonnull %56) #7
  %i.we = load ptr, ptr %56, align 8              ; 3 uses
  %.not.i.i.i.i.i183 = icmp eq ptr %i.we, null
  br i1 %.not.i.i.i.i.i183, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit184, label %bb.cc

bb.cc:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit182
  %i.wf = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = ptrtoint ptr %i.we to i64
  %i.wj = sub i64 %i.wh, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.we, i64 noundef %i.wj) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit184

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit184: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit182, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cg) #7
  %i.wk = getelementptr inbounds nuw i8, ptr %195, i64 8
  %i.wl = load i64, ptr %i.wk, align 8
  %.not1331 = icmp eq i64 %i.wl, 0
  br i1 %.not1331, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit184
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %195) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %114, ptr noundef nonnull %55) #7
  %i.wm = load ptr, ptr %55, align 8              ; 3 uses
  %.not.i.i.i.i.i185 = icmp eq ptr %i.wm, null
  br i1 %.not.i.i.i.i.i185, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit186, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wn = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8
  %i.wp = ptrtoint ptr %i.wo to i64
  %i.wq = ptrtoint ptr %i.wm to i64
  %i.wr = sub i64 %i.wp, %i.wq
  call void @_ZdlPvm(ptr noundef nonnull %i.wm, i64 noundef %i.wr) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit186

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit186: ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cd) #7
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit186, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit184
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %195) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #7
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bz
  %i.ws = getelementptr inbounds nuw i8, ptr %114, i64 64
  %i.wt = load i64, ptr %i.ws, align 8
  %.not1332 = icmp eq i64 %i.wt, 0
  br i1 %.not1332, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cd) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %i.wu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %114, ptr noundef nonnull %54) #7 ; 0 uses
  %i.wv = load ptr, ptr %54, align 8              ; 3 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i.i.i.i187, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit188, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ww = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8
  %i.wy = ptrtoint ptr %i.wx to i64
  %i.wz = ptrtoint ptr %i.wv to i64
  %i.xa = sub i64 %i.wy, %i.wz
  call void @_ZdlPvm(ptr noundef nonnull %i.wv, i64 noundef %i.xa) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit188

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit188: ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %124, ptr noundef nonnull %53) #7
  %i.xb = load ptr, ptr %53, align 8              ; 3 uses
  %.not.i.i.i.i.i189 = icmp eq ptr %i.xb, null
  br i1 %.not.i.i.i.i.i189, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit190, label %bb.cj

bb.cj:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit188
  %i.xc = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8
  %i.xe = ptrtoint ptr %i.xd to i64
  %i.xf = ptrtoint ptr %i.xb to i64
  %i.xg = sub i64 %i.xe, %i.xf
  call void @_ZdlPvm(ptr noundef nonnull %i.xb, i64 noundef %i.xg) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit190

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit190: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit188, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.el) #7
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit190, %bb.cg
  %i.xh = getelementptr inbounds nuw i8, ptr %115, i64 64
  %i.xi = load i64, ptr %i.xh, align 8
  %.not1333 = icmp eq i64 %i.xi, 0
  br i1 %.not1333, label %bb.cr, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cg) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %i.xj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %115, ptr noundef nonnull %52) #7 ; 0 uses
  %i.xk = load ptr, ptr %52, align 8              ; 3 uses
  %.not.i.i.i.i.i191 = icmp eq ptr %i.xk, null
  br i1 %.not.i.i.i.i.i191, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit192, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.xl = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.xm = load ptr, ptr %i.xl, align 8
  %i.xn = ptrtoint ptr %i.xm to i64
  %i.xo = ptrtoint ptr %i.xk to i64
  %i.xp = sub i64 %i.xn, %i.xo
  call void @_ZdlPvm(ptr noundef nonnull %i.xk, i64 noundef %i.xp) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit192

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit192: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #7
  store ptr %.sroa.01220.0, ptr %198, align 8
  call void @_ZN2v88internal30NewStableBackingTableWitness_1EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_5JSMapEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructStableJSMapBackingTableWitness_0") align 8 %197, ptr noundef %i.a, ptr noundef nonnull dead_on_return %198) #7
  %i.xq = getelementptr inbounds nuw i8, ptr %197, i64 8
  %i.xr = load ptr, ptr %i.xq, align 8, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #7
  store ptr %i.xr, ptr %200, align 8
  call void @_ZN2v88internal37NewUnmodifiedOrderedHashMapIterator_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_14OrderedHashMapEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructUnmodifiedOrderedHashMapIterator_0") align 8 %199, ptr noundef %i.a, ptr noundef nonnull dead_on_return %200) #7
  %i.xs = getelementptr inbounds nuw i8, ptr %199, i64 8
  %i.xt = getelementptr inbounds nuw i8, ptr %199, i64 16
  %i.xu = getelementptr inbounds nuw i8, ptr %199, i64 24
  %i.xv = getelementptr inbounds nuw i8, ptr %199, i64 40
  %306 = load ptr, ptr %i.xv, align 8, !noalias !160
  %307 = load <2 x ptr>, ptr %i.xu, align 8, !noalias !160
  %i.xw = load ptr, ptr %i.xt, align 8, !noalias !160
  %i.xx = load ptr, ptr %i.xs, align 8, !noalias !160
  %i.xy = load ptr, ptr %199, align 8, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #7
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %202, ptr noundef %i.a) #7
  store ptr %.sroa.01279.0, ptr %203, align 8
  call void @_ZN2v88internal17CodeStubAssembler15CloneFixedArrayENS0_5TNodeINS0_14FixedArrayBaseEEENS_4base5FlagsINS1_21ExtractFixedArrayFlagEiiEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.74") align 8 %201, ptr noundef nonnull align 8 dereferenceable(16) %202, ptr noundef nonnull dead_on_return %203, i32 1) #7
  %i.xz = load ptr, ptr %201, align 8, !noalias !161
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %202) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %204) #7
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %204, ptr noundef nonnull %94, i64 noundef 0, ptr noundef null, i32 noundef 1) #7
  store ptr %i.xz, ptr %206, align 8
  call void @_ZN2v88internal21Cast_OrderedHashSet_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_10HeapObjectEEEPNS1_18CodeAssemblerLabelE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.42") align 8 %205, ptr noundef %i.a, ptr noundef nonnull dead_on_return %206, ptr noundef nonnull %204) #7
  %i.ya = load ptr, ptr %205, align 8, !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %117, ptr noundef nonnull %51) #7
  %i.yb = load ptr, ptr %51, align 8              ; 3 uses
  %.not.i.i.i.i.i193 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i.i.i193, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit194, label %bb.cn

bb.cn:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit192
  %i.yc = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8
  %i.ye = ptrtoint ptr %i.yd to i64
  %i.yf = ptrtoint ptr %i.yb to i64
  %i.yg = sub i64 %i.ye, %i.yf
  call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.yg) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit194

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit194: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit192, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cm) #7
  %i.yh = getelementptr inbounds nuw i8, ptr %204, i64 8
  %i.yi = load i64, ptr %i.yh, align 8
  %.not1334 = icmp eq i64 %i.yi, 0
  br i1 %.not1334, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit194
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %204) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %116, ptr noundef nonnull %50) #7
  %i.yj = load ptr, ptr %50, align 8              ; 3 uses
  %.not.i.i.i.i.i195 = icmp eq ptr %i.yj, null
  br i1 %.not.i.i.i.i.i195, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit196, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yk = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.yl = load ptr, ptr %i.yk, align 8
  %i.ym = ptrtoint ptr %i.yl to i64
  %i.yn = ptrtoint ptr %i.yj to i64
  %i.yo = sub i64 %i.ym, %i.yn
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.yo) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit196

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit196: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cj) #7
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit196, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit194
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %204) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %204) #7
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.ck
  %.sroa.01301.0 = phi ptr [ %306, %bb.cq ], [ null, %bb.ck ]
  %.sroa.01298.0 = phi ptr [ %i.xw, %bb.cq ], [ null, %bb.ck ]
  %.sroa.01297.0 = phi ptr [ %i.xx, %bb.cq ], [ null, %bb.ck ]
  %.sroa.01296.0 = phi ptr [ %i.xy, %bb.cq ], [ null, %bb.ck ]
  %.sroa.01132.0 = phi ptr [ %i.ya, %bb.cq ], [ null, %bb.ck ]
  %308 = phi <2 x ptr> [ %307, %bb.cq ], [ splat (ptr null), %bb.ck ]
  %i.yp = getelementptr inbounds nuw i8, ptr %116, i64 64
  %i.yq = load i64, ptr %i.yp, align 8
  %.not1335 = icmp eq i64 %i.yq, 0
  br i1 %.not1335, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cj) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %i.yr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %116, ptr noundef nonnull %49) #7 ; 0 uses
  %i.ys = load ptr, ptr %49, align 8              ; 3 uses
  %.not.i.i.i.i.i197 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i.i.i.i197, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit198, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.yt = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8
  %i.yv = ptrtoint ptr %i.yu to i64
  %i.yw = ptrtoint ptr %i.ys to i64
  %i.yx = sub i64 %i.yv, %i.yw
  call void @_ZdlPvm(ptr noundef nonnull %i.ys, i64 noundef %i.yx) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit198

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit198: ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #7
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %207, ptr noundef %i.a) #7
  call void @_ZN2v88internal8compiler13CodeAssembler11UnreachableEv(ptr noundef nonnull align 8 dereferenceable(8) %207) #7
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %207) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #7
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit198, %bb.cr
  %i.yy = getelementptr inbounds nuw i8, ptr %117, i64 64
  %i.yz = load i64, ptr %i.yy, align 8
  %.not1336 = icmp eq i64 %i.yz, 0
  br i1 %.not1336, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cm) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  %i.za = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %117, ptr noundef nonnull %48) #7 ; 0 uses
  %i.zb = load ptr, ptr %48, align 8              ; 3 uses
  %.not.i.i.i.i.i199 = icmp eq ptr %i.zb, null
  br i1 %.not.i.i.i.i.i199, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit200, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zc = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.zd = load ptr, ptr %i.zc, align 8
  %i.ze = ptrtoint ptr %i.zd to i64
  %i.zf = ptrtoint ptr %i.zb to i64
  %i.zg = sub i64 %i.ze, %i.zf
  call void @_ZdlPvm(ptr noundef nonnull %i.zb, i64 noundef %i.zg) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit200

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit200: ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  %i.zh = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8 ; 5 uses
  store ptr %i.zh, ptr %47, align 8
  %309 = getelementptr inbounds nuw i8, ptr %i.zh, i64 32 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  store ptr %309, ptr %i.zi, align 8
  store ptr %.sroa.01132.0, ptr %i.zh, align 8
  %.sroa.4.0..sroa_idx.i.i201 = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store <2 x ptr> %308, ptr %.sroa.4.0..sroa_idx.i.i201, align 8
  %.sroa.6.0..sroa_idx.i.i203 = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  store ptr %.sroa.01301.0, ptr %.sroa.6.0..sroa_idx.i.i203, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %309, ptr %i.zj, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %118, ptr noundef nonnull %47) #7
  %i.zk = load ptr, ptr %47, align 8              ; 3 uses
  %.not.i.i.i.i.i204 = icmp eq ptr %i.zk, null
  br i1 %.not.i.i.i.i.i204, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJNS0_5TNodeIS4_EENSH_ISF_EESJ_NSH_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit200
  %i.zl = load ptr, ptr %i.zi, align 8
  %i.zm = ptrtoint ptr %i.zl to i64
  %i.zn = ptrtoint ptr %i.zk to i64
  %i.zo = sub i64 %i.zm, %i.zn
  call void @_ZdlPvm(ptr noundef nonnull %i.zk, i64 noundef %i.zo) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJNS0_5TNodeIS4_EENSH_ISF_EESJ_NSH_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJNS0_5TNodeIS4_EENSH_ISF_EESJ_NSH_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit200, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cu) #7
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJNS0_5TNodeIS4_EENSH_ISF_EESJ_NSH_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, %bb.cu
  %i.zp = getelementptr inbounds nuw i8, ptr %118, i64 64
  %i.zq = load i64, ptr %i.zp, align 8
  %.not1337 = icmp eq i64 %i.zq, 0
  br i1 %.not1337, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit216, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.cu) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  %i.zr = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #8 ; 3 uses
  store ptr %i.zr, ptr %46, align 8
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 4 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  store ptr %i.zs, ptr %i.zt, align 8
  store <4 x i8> <i8 8, i8 9, i8 9, i8 5>, ptr %i.zr, align 1
  %i.zu = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %i.zs, ptr %i.zu, align 8
  %i.zv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %118, ptr noundef nonnull %46) #7
  %i.zw = load ptr, ptr %46, align 8              ; 3 uses
  %.not.i.i.i.i.i208 = icmp eq ptr %i.zw, null
  br i1 %.not.i.i.i.i.i208, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i209, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zx = load ptr, ptr %i.zt, align 8
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = ptrtoint ptr %i.zw to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  call void @_ZdlPvm(ptr noundef nonnull %i.zw, i64 noundef %i.aaa) #9
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i209

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i209: ; preds = %bb.da, %bb.cz
  %i.aab = load ptr, ptr %i.zv, align 8           ; 4 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aad = load ptr, ptr %i.aab, align 8          ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aaf = load ptr, ptr %i.aac, align 8          ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  %i.aah = load ptr, ptr %i.aae, align 8          ; 2 uses
  %i.aai = load ptr, ptr %i.aag, align 8          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @_ZN2v88internal35FromConstexpr_bool_constexpr_bool_0EPNS0_8compiler18CodeAssemblerStateEb(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.96") align 8 %208, ptr noundef %i.a, i1 noundef zeroext true) #7
  %i.aaj = load ptr, ptr %208, align 8, !noalias !163
  store ptr %i.aaj, ptr %209, align 8
  %i.aak = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8 ; 6 uses
  store ptr %i.aak, ptr %210, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 32 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %210, i64 16 ; 2 uses
  store ptr %i.aal, ptr %i.aam, align 8
  store ptr %i.aad, ptr %i.aak, align 8
  %.sroa.41099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  store ptr %i.aaf, ptr %.sroa.41099.0..sroa_idx, align 8
  %.sroa.51100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  store ptr %i.aah, ptr %.sroa.51100.0..sroa_idx, align 8
  %.sroa.61101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  store ptr %i.aai, ptr %.sroa.61101.0..sroa_idx, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %210, i64 8
  store ptr %i.aal, ptr %i.aan, align 8
  %i.aao = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8 ; 6 uses
  store ptr %i.aao, ptr %211, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 32 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %211, i64 16 ; 2 uses
  store ptr %i.aap, ptr %i.aaq, align 8
  store ptr %i.aad, ptr %i.aao, align 8
  %.sroa.41095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  store ptr %i.aaf, ptr %.sroa.41095.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  store ptr %i.aah, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.61096.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  store ptr %i.aai, ptr %.sroa.61096.0..sroa_idx, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %211, i64 8
  store ptr %i.aap, ptr %i.aar, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJNS0_14OrderedHashSetENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJS4_SF_SF_SG_EEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISR_EEPNSK_IJDpT0_EEEST_(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull dead_on_return %209, ptr noundef nonnull %119, ptr noundef nonnull %210, ptr noundef nonnull %122, ptr noundef nonnull %211)
  %i.aas = load ptr, ptr %211, align 8            ; 3 uses
  %.not.i.i.i213 = icmp eq ptr %i.aas, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit214, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i209
  %i.aat = load ptr, ptr %i.aaq, align 8
  %i.aau = ptrtoint ptr %i.aat to i64
  %i.aav = ptrtoint ptr %i.aas to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  call void @_ZdlPvm(ptr noundef nonnull %i.aas, i64 noundef %i.aaw) #9
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit214

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit214: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i209, %bb.db
  %i.aax = load ptr, ptr %210, align 8            ; 3 uses
  %.not.i.i.i215 = icmp eq ptr %i.aax, null
  br i1 %.not.i.i.i215, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit216, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit214
  %i.aay = load ptr, ptr %i.aam, align 8
  %i.aaz = ptrtoint ptr %i.aay to i64
  %i.aba = ptrtoint ptr %i.aax to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  call void @_ZdlPvm(ptr noundef nonnull %i.aax, i64 noundef %i.abb) #9
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit216

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit216: ; preds = %bb.dc, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit214, %bb.cy
  %i.abc = getelementptr inbounds nuw i8, ptr %119, i64 64
  %i.abd = load i64, ptr %i.abc, align 8
  %.not1338 = icmp eq i64 %i.abd, 0
  br i1 %.not1338, label %bb.dj, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit216
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.dc) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  %i.abe = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #8 ; 3 uses
  store ptr %i.abe, ptr %45, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 4 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  store ptr %i.abf, ptr %i.abg, align 8
  store <4 x i8> <i8 8, i8 9, i8 9, i8 5>, ptr %i.abe, align 1
  %i.abh = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %i.abf, ptr %i.abh, align 8
  %i.abi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %119, ptr noundef nonnull %45) #7
  %i.abj = load ptr, ptr %45, align 8             ; 3 uses
  %.not.i.i.i.i.i220 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i.i.i.i220, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i221, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.abk = load ptr, ptr %i.abg, align 8
  %i.abl = ptrtoint ptr %i.abk to i64
  %i.abm = ptrtoint ptr %i.abj to i64
  %i.abn = sub i64 %i.abl, %i.abm
  call void @_ZdlPvm(ptr noundef nonnull %i.abj, i64 noundef %i.abn) #9
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i221

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i221: ; preds = %bb.de, %bb.dd
  %i.abo = load ptr, ptr %i.abi, align 8          ; 4 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abq = load ptr, ptr %i.abo, align 8          ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.abs = load ptr, ptr %i.abp, align 8          ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abo, i64 24
  %i.abu = load ptr, ptr %i.abr, align 8          ; 2 uses
  %i.abv = load ptr, ptr %i.abt, align 8          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %212) #7
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %212, ptr noundef nonnull %94, i64 noundef 0, ptr noundef null, i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %214) #7
  %i.abw = getelementptr inbounds nuw i8, ptr %214, i64 8 ; 2 uses
  call void @_ZN2v88internal17CodeStubAssemblerC2EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.abw, ptr noundef %i.a) #7
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal28CollectionsBuiltinsAssemblerE, i64 16), ptr %214, align 8
  store ptr %.sroa.01296.0, ptr %215, align 8
  store ptr %.sroa.01297.0, ptr %216, align 8
  store ptr %.sroa.01298.0, ptr %217, align 8
  store ptr %i.abv, ptr %218, align 8
  call void @_ZN2v88internal28CollectionsBuiltinsAssembler37NextKeyValueIndexTupleUnmodifiedTableENS0_5TNodeINS0_14OrderedHashMapEEENS2_INS0_6Int32TEEES6_NS2_INS0_7IntPtrTEEEPNS0_8compiler18CodeAssemblerLabelE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructKeyValueIndexTuple") align 8 %213, ptr noundef nonnull align 8 dereferenceable(24) %214, ptr noundef nonnull dead_on_return %215, ptr noundef nonnull dead_on_return %216, ptr noundef nonnull dead_on_return %217, ptr noundef nonnull dead_on_return %218, ptr noundef nonnull %212) #7
  %i.abx = getelementptr inbounds nuw i8, ptr %213, i64 8
  %i.aby = load <2 x ptr>, ptr %i.abx, align 8, !noalias !164
  %i.abz = load ptr, ptr %213, align 8, !noalias !164
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.abw) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  %i.aca = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #8 ; 7 uses
  store ptr %i.aca, ptr %44, align 8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 40 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  store ptr %i.acb, ptr %i.acc, align 8
  store ptr %i.abq, ptr %i.aca, align 8
  %.sroa.4.0..sroa_idx.i.i230 = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store ptr %i.abs, ptr %.sroa.4.0..sroa_idx.i.i230, align 8
  %.sroa.5.0..sroa_idx.i.i231 = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  store ptr %i.abu, ptr %.sroa.5.0..sroa_idx.i.i231, align 8
  %.sroa.6.0..sroa_idx.i.i232 = getelementptr inbounds nuw i8, ptr %i.aca, i64 24
  store ptr %i.abv, ptr %.sroa.6.0..sroa_idx.i.i232, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aca, i64 32
  store ptr %i.abv, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %i.acd = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %i.acb, ptr %i.acd, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %121, ptr noundef nonnull %44) #7
  %i.ace = load ptr, ptr %44, align 8             ; 3 uses
  %.not.i.i.i.i.i233 = icmp eq ptr %i.ace, null
  br i1 %.not.i.i.i.i.i233, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_ISF_EESJ_NSH_ISG_EESK_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i221
  %i.acf = load ptr, ptr %i.acc, align 8
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %i.ace to i64
  %i.aci = sub i64 %i.acg, %i.ach
  call void @_ZdlPvm(ptr noundef nonnull %i.ace, i64 noundef %i.aci) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_ISF_EESJ_NSH_ISG_EESK_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_ISF_EESJ_NSH_ISG_EESK_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i221, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull %i.ds) #7
  %i.acj = getelementptr inbounds nuw i8, ptr %212, i64 8
end_hunk_0
