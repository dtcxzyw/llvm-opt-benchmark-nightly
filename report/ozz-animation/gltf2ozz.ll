Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/gltf2ozz?download=true
inline.NumInlined: 15962
inline.NumDeleted: 4531
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN12GltfImporter6ImportEPKcRKN3ozz9animation8SkeletonEfPNS3_7offline12RawAnimationE:bb.a
bb.ae:                                            ; preds = %.critedge
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.262) #44
          to label %.noexc140 unwind label %.loopexit.split-lp

.noexc140:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %.critedge
  %i.fb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ez) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %i.fb, ptr %i.a, align 8, !tbaa !398
  %i.fc = icmp ugt i64 %i.fb, 15
  br i1 %i.fc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.af
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc141 unwind label %.loopexit ; 2 uses

.noexc141:                                        ; preds = %.noexc.i
  store ptr %i.fd, ptr %12, align 8, !tbaa !89
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !398
  store i64 %i.fe, ptr %i.dp, align 8, !tbaa !75
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc141, %bb.af
  %i.ff = phi ptr [ %i.fd, %.noexc141 ], [ %i.dp, %bb.af ] ; 2 uses
  switch i64 %i.fb, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !75
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !75
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ff, ptr nonnull align 1 %i.ez, i64 %i.fb, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !398 ; 2 uses
  store i64 %i.fh, ptr %i.dq, align 8, !tbaa !129
  %i.fi = load ptr, ptr %12, align 8, !tbaa !89
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 0, ptr %i.fj, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.fk = load ptr, ptr %i.dr, align 8, !tbaa !542 ; 3 uses
  %i.fl = load ptr, ptr %i.ds, align 8, !tbaa !542 ; 3 uses
  %.not17.i = icmp eq ptr %i.fk, %i.fl
  %.pre = load ptr, ptr %12, align 8              ; 3 uses
  br i1 %.not17.i, label %_ZNK12GltfImporter14FindNodeByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai
  %i.fm = load i64, ptr %i.dq, align 8, !tbaa !129
  %.fr = freeze i64 %i.fm                         ; 3 uses
  %i.fn = icmp eq i64 %.fr, 0
  br i1 %i.fn, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i.us
  %.sroa.010.018.i.us = phi ptr [ %i.fr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i.us ], [ %i.fk, %.lr.ph.i ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.us, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !129
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_ZNK12GltfImporter14FindNodeByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i.us: ; preds = %.lr.ph.i.split.us
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.us, i64 488 ; 2 uses
  %.not.i.us = icmp eq ptr %i.fr, %i.fl
  br i1 %.not.i.us, label %_ZNK12GltfImporter14FindNodeByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i
  %.sroa.010.018.i = phi ptr [ %i.fy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i ], [ %i.fk, %.lr.ph.i ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !129
  %i.fu = icmp eq i64 %i.ft, %.fr
  br i1 %i.fu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i.split
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !89
  %bcmp.i.i = call i32 @bcmp(ptr %i.fw, ptr %.pre, i64 %.fr)
  %i.fx = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fx, label %_ZNK12GltfImporter14FindNodeByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 488 ; 2 uses
  %.not.i = icmp eq ptr %i.fy, %i.fl
  br i1 %.not.i, label %_ZNK12GltfImporter14FindNodeByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.split

_ZNK12GltfImporter14FindNodeByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i.us, %.lr.ph.i.split.us, %bb.ai
  %i.fz = phi ptr [ null, %bb.ai ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i.us ], [ %.sroa.010.018.i.us, %.lr.ph.i.split.us ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i ], [ %.sroa.010.018.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ] ; 6 uses
  %i.ga = icmp eq ptr %.pre, %i.dp
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK12GltfImporter14FindNodeByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gb = load i64, ptr %i.dp, align 8, !tbaa !75
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.gc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK12GltfImporter14FindNodeByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.gd = load ptr, ptr %i.el, align 8, !tbaa !649
  %i.ge = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !649
  %i.gg = icmp eq ptr %i.gd, %i.gf
  br i1 %i.gg, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.gh = getelementptr i8, ptr %i.fz, i64 152
  %.val = load ptr, ptr %i.gh, align 8, !tbaa !581 ; 4 uses
  %i.gi = getelementptr i8, ptr %i.fz, i64 160
  %.val117 = load ptr, ptr %i.gi, align 8, !tbaa !581
  %i.gj = icmp eq ptr %.val, %.val117
  br i1 %i.gj, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load double, ptr %.val, align 8, !tbaa !133
  %i.gl = fptrunc double %i.gk to float
  %i.gm = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !133
  %i.go = fptrunc double %i.gn to float
  %i.gp = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !133
  %i.gr = fptrunc double %i.gq to float
  %.sroa.0223.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.gl, i64 1
  %.sroa.5224.8.vec.insert = insertelement <2 x float> <float poison, float undef>, float %i.go, i64 0
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.0223.0 = phi <2 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.0223.4.vec.insert, %bb.ak ]
  %.sroa.5224.0 = phi <2 x float> [ <float 0.000000e+00, float undef>, %bb.aj ], [ %.sroa.5224.8.vec.insert, %bb.ak ]
  %storemerge.i = phi float [ 0.000000e+00, %bb.aj ], [ %i.gr, %bb.ak ]
  %.sroa.5224.12.vec.insert = insertelement <2 x float> %.sroa.5224.0, float %storemerge.i, i64 1
  store <2 x float> %.sroa.0223.0, ptr %13, align 8
  store <2 x float> %.sroa.5224.12.vec.insert, ptr %i.dt, align 8
  %i.gs = load ptr, ptr %i.ge, align 8, !tbaa !651 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !652
  %.not.i.i144 = icmp eq ptr %i.gs, %i.gu
  br i1 %.not.i.i144, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !654
  %i.gv = load ptr, ptr %i.ge, align 8, !tbaa !651
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store ptr %i.gw, ptr %i.ge, align 8, !tbaa !651
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit

bb.an:                                            ; preds = %bb.al
  invoke void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr %i.gs, ptr noundef nonnull align 4 dereferenceable(16) %13)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit unwind label %bb.ap

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.aq

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %bb.by

bb.ap:                                            ; preds = %bb.an
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.by

bb.aq:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !656
  %i.ha = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 4 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !656
  %i.hc = icmp eq ptr %i.gz, %i.hb
  br i1 %i.hc, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.hd = getelementptr i8, ptr %i.fz, i64 104
  %.val118 = load ptr, ptr %i.hd, align 8, !tbaa !581 ; 2 uses
  %i.he = getelementptr i8, ptr %i.fz, i64 112
  %.val119 = load ptr, ptr %i.he, align 8, !tbaa !581
  call void @llvm.experimental.noalias.scope.decl(metadata !3861)
  store float 0.000000e+00, ptr %14, align 4, !tbaa !659, !alias.scope !3861
  %i.hf = icmp eq ptr %.val118, %.val119
  br i1 %i.hf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store <2 x float> zeroinitializer, ptr %i.du, align 4, !alias.scope !3861
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.dv, align 4, !alias.scope !3861
  br label %_ZN12_GLOBAL__N_125CreateRotationRestPoseKeyERKN8tinygltf4NodeE.exit

bb.at:                                            ; preds = %bb.ar
  %i.hg = load <4 x double>, ptr %.val118, align 8, !tbaa !133, !noalias !3861
  %i.hh = fptrunc <4 x double> %i.hg to <4 x float>
  store <4 x float> %i.hh, ptr %i.du, align 4, !tbaa !653, !alias.scope !3861
  br label %_ZN12_GLOBAL__N_125CreateRotationRestPoseKeyERKN8tinygltf4NodeE.exit

_ZN12_GLOBAL__N_125CreateRotationRestPoseKeyERKN8tinygltf4NodeE.exit: ; preds = %bb.at, %bb.as
  %i.hi = load ptr, ptr %i.ha, align 8, !tbaa !661 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !662
  %.not.i.i146 = icmp eq ptr %i.hi, %i.hk
  br i1 %.not.i.i146, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_125CreateRotationRestPoseKeyERKN8tinygltf4NodeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hi, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false), !tbaa.struct !663
  %i.hl = load ptr, ptr %i.ha, align 8, !tbaa !661
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  store ptr %i.hm, ptr %i.ha, align 8, !tbaa !661
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit

bb.av:                                            ; preds = %_ZN12_GLOBAL__N_125CreateRotationRestPoseKeyERKN8tinygltf4NodeE.exit
  invoke void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr %i.hi, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit unwind label %bb.aw

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.by

bb.ax:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit, %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %i.el, i64 48 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !665
  %i.hq = getelementptr inbounds nuw i8, ptr %i.el, i64 56 ; 4 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !665
  %i.hs = icmp eq ptr %i.hp, %i.hr
  br i1 %i.hs, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.ht = getelementptr i8, ptr %i.fz, i64 128
  %.val120 = load ptr, ptr %i.ht, align 8, !tbaa !581 ; 3 uses
  %i.hu = getelementptr i8, ptr %i.fz, i64 136
  %.val121 = load ptr, ptr %i.hu, align 8, !tbaa !581
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.hv = icmp eq ptr %.val120, %.val121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  br i1 %i.hv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store <2 x float> splat (float 1.000000e+00), ptr %.4..4..4..4..4..sroa_idx, align 4
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hw = getelementptr inbounds nuw i8, ptr %.val120, i64 16
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !133
  %i.hy = fptrunc double %i.hx to float
  %i.hz = load <2 x double>, ptr %.val120, align 8, !tbaa !133
  %i.ia = fptrunc <2 x double> %i.hz to <2 x float>
  store <2 x float> %i.ia, ptr %.4..4..4..4..4..sroa_idx311, align 4, !tbaa !653
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %storemerge.i150 = phi float [ %i.hy, %bb.ba ], [ 1.000000e+00, %bb.az ]
  store float %storemerge.i150, ptr %.12..12..12..12..12..sroa_idx, align 4, !tbaa !653
  %.0..0..0..0..0..fca.0.load.i152 = load <2 x float>, ptr %5, align 8
  %.8..8..8..8..8..fca.1.load.i154 = load <2 x float>, ptr %.8..8..8..8..8..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store <2 x float> %.0..0..0..0..0..fca.0.load.i152, ptr %15, align 8
  store <2 x float> %.8..8..8..8..8..fca.1.load.i154, ptr %i.dw, align 8
  %i.ib = load ptr, ptr %i.hq, align 8, !tbaa !667 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !668
  %.not.i.i156 = icmp eq ptr %i.ib, %i.id
  br i1 %.not.i.i156, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ib, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !654
  %i.ie = load ptr, ptr %i.hq, align 8, !tbaa !667
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store ptr %i.if, ptr %i.hq, align 8, !tbaa !667
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit

bb.bd:                                            ; preds = %bb.bb
  invoke void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr %i.ib, ptr noundef nonnull align 4 dereferenceable(16) %15)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit unwind label %bb.be

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.by

bb.bf:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backEOS4_.exit, %bb.ax
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge116, label %bb.w, !llvm.loop !3848

.critedge116:                                     ; preds = %bb.bf, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  invoke void @_ZN3ozz3log4LogVC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %16)
          to label %bb.bg unwind label %bb.bq

bb.bg:                                            ; preds = %.critedge116
  %i.ih = load ptr, ptr %16, align 8, !tbaa !614, !nonnull !136, !align !563 ; 2 uses
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef nonnull @.str.266, i64 noundef 21)
          to label %_ZN3ozz3log6LoggerlsIA22_cEERSoRKT_.exit unwind label %bb.br ; 0 uses

_ZN3ozz3log6LoggerlsIA22_cEERSoRKT_.exit:         ; preds = %bb.bg
  %i.ij = load ptr, ptr %i.ah, align 8, !tbaa !630
  %i.ik = load i64, ptr %i.ai, align 8, !tbaa !631
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef %i.ij, i64 noundef %i.ik)
          to label %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit unwind label %bb.br ; 2 uses

_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit: ; preds = %_ZN3ozz3log6LoggerlsIA22_cEERSoRKT_.exit
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef nonnull @.str.267, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161: ; preds = %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit
  %i.in = load ptr, ptr %i.ar, align 8, !tbaa !639
  %i.io = load ptr, ptr %4, align 8, !tbaa !640
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = sdiv exact i64 %i.ir, 72
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.il, i64 noundef %i.is)
          to label %_ZNSolsEm.exit unwind label %bb.br ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.it, ptr noundef nonnull @.str.268, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %_ZNSolsEm.exit
  %i.iv = load float, ptr %i.am, align 8, !tbaa !3853
  %i.iw = fpext float %i.iv to double
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.it, double noundef %i.iw)
          to label %_ZNSolsEf.exit166 unwind label %bb.br ; 4 uses

_ZNSolsEf.exit166:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef nonnull @.str.269, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %_ZNSolsEf.exit166
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !421
  %i.ja = getelementptr i8, ptr %i.iz, i64 -24
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds i8, ptr %i.ix, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 240
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i184 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i184, label %bb.bh, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc189 unwind label %bb.br

.noexc189:                                        ; preds = %bb.bh
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 56
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !491
  %.not.i1.i.i186 = icmp eq i8 %i.jg, 0
  br i1 %.not.i1.i.i186, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 67
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187

bb.bj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.je)
          to label %.noexc190 unwind label %bb.br

.noexc190:                                        ; preds = %bb.bj
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !421
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef signext i8 %i.jl(ptr noundef nonnull align 8 dereferenceable(570) %i.je, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187 unwind label %bb.br, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187: ; preds = %.noexc190, %bb.bi
  %.0.i.i.i188 = phi i8 [ %i.ji, %bb.bi ], [ %i.jm, %.noexc190 ]
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, i8 noundef signext %.0.i.i.i188)
          to label %.noexc192 unwind label %bb.br

.noexc192:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jn)
          to label %_ZNSolsEPFRSoS_E.exit170 unwind label %bb.br ; 0 uses

_ZNSolsEPFRSoS_E.exit170:                         ; preds = %.noexc192
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  %i.jp = invoke noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.bk unwind label %bb.bt

bb.bk:                                            ; preds = %_ZNSolsEPFRSoS_E.exit170
  br i1 %i.jp, label %.critedge115, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  invoke void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %17)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.jq = load ptr, ptr %17, align 8, !tbaa !614, !nonnull !136, !align !563 ; 2 uses
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull @.str.270, i64 noundef 11)
          to label %_ZN3ozz3log6LoggerlsIA12_cEERSoRKT_.exit unwind label %bb.bv ; 0 uses

_ZN3ozz3log6LoggerlsIA12_cEERSoRKT_.exit:         ; preds = %bb.bm
  %i.js = load ptr, ptr %i.ah, align 8, !tbaa !630
  %i.jt = load i64, ptr %i.ai, align 8, !tbaa !631
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef %i.js, i64 noundef %i.jt)
          to label %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit173 unwind label %bb.bv ; 4 uses

_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit173: ; preds = %_ZN3ozz3log6LoggerlsIA12_cEERSoRKT_.exit
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull @.str.271, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175 unwind label %bb.bv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit173
  %i.jw = load ptr, ptr %i.ju, align 8, !tbaa !421
  %i.jx = getelementptr i8, ptr %i.jw, i64 -24
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds i8, ptr %i.ju, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 240
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i195 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i195, label %bb.bn, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i196

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc200 unwind label %bb.bv

.noexc200:                                        ; preds = %bb.bn
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i196: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !491
  %.not.i1.i.i197 = icmp eq i8 %i.kd, 0
  br i1 %.not.i1.i.i197, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i196
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 67
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i198

end_hunk_0
begin_hunk_1_@_ZN12GltfImporter24FindSkinRootJointIndicesERKSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS2_EEERS0_IiNS4_IiEEE:bb.a
  br i1 %.not3947, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %._crit_edge46
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.1, %.lr.ph45.new
  %indvars.iv = phi i64 [ 0, %.lr.ph45.new ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph45.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.ao = getelementptr inbounds nuw [488 x i8], ptr %.pre54, i64 %indvars.iv ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !517 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !517 ; 2 uses
  %.not4042 = icmp eq ptr %i.aq, %i.as
  br i1 %.not4042, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [488 x i8], ptr %.pre54, i64 %indvars.iv.next ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !517 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !517 ; 2 uses
  %.not4042.1 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not4042.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.az = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.sroa.035.043.1 = phi ptr [ %i.bd, %.lr.ph.1 ], [ %i.aw, %.lr.ph.preheader.1 ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.035.043.1, align 4, !tbaa !385
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bb
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !385
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.035.043.1, i64 4 ; 2 uses
  %.not40.1 = icmp eq ptr %i.bd, %i.ay
  br i1 %.not40.1, label %._crit_edge.1, label %.lr.ph.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge46.loopexit.unr-lcssa, label %bb.f, !llvm.loop !3881

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.035.043 = phi ptr [ %i.bh, %.lr.ph ], [ %i.aq, %.lr.ph.preheader ] ; 2 uses
  %i.be = load i32, ptr %.sroa.035.043, align 4, !tbaa !385
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bf
  store i32 %i.at, ptr %i.bg, align 4, !tbaa !385
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.035.043, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.bh, %i.as
  br i1 %.not40, label %._crit_edge, label %.lr.ph

._crit_edge51:                                    ; preds = %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit, %._crit_edge46
  %.not.i.i.i27 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge51
  %i.bi = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !421
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.ai)
          to label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #40
  unreachable

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEED2Ev.exit:  ; preds = %._crit_edge51, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.j:                                             ; preds = %.lr.ph50, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit
  %.sroa.031.048 = phi ptr [ %i.aj, %.lr.ph50 ], [ %i.cj, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.031.048, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !517 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.031.048, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !517
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.031.048, i64 36 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !379 ; 2 uses
  %.not = icmp eq i32 %i.bu, -1
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bv
  store i32 -2, ptr %i.bw, align 4, !tbaa !385
  %i.bx = load ptr, ptr %i.am, align 8, !tbaa !617 ; 4 uses
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !618
  %.not.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load i32, ptr %i.bt, align 4, !tbaa !385
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !385
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.ca, ptr %i.am, align 8, !tbaa !617
  br label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit

bb.n:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.bt)
          to label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %storemerge.pr = load i32, ptr %i.bp, align 4, !tbaa !385
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %storemerge = phi i32 [ %storemerge.pr, %bb.p ], [ %i.ce, %bb.r ] ; 4 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !385
  %.not23 = icmp eq i32 %storemerge, -2
  br i1 %.not23, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit30, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = sext i32 %storemerge to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !385 ; 2 uses
  %.not24 = icmp eq i32 %i.ce, -1
  br i1 %.not24, label %.critedge, label %bb.q, !llvm.loop !3882

.critedge:                                        ; preds = %bb.r
  %i.cf = load ptr, ptr %i.am, align 8, !tbaa !617 ; 4 uses
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !618
  %.not.i28 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  store i32 %storemerge, ptr %i.cf, align 4, !tbaa !385
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store ptr %i.ch, ptr %i.am, align 8, !tbaa !617
  br label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit30

bb.t:                                             ; preds = %.critedge
  invoke void @_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cf, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit30 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.v

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit30: ; preds = %bb.q, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit: ; preds = %bb.m, %bb.n, %bb.j, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit30
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.031.048, i64 328 ; 2 uses
  %.not39 = icmp eq ptr %i.cj, %i.al
  br i1 %.not39, label %._crit_edge51, label %bb.j

bb.v:                                             ; preds = %bb.u, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.o ], [ %i.ci, %bb.u ]
  call void @_ZNSt6vectorIiN3ozz12StdAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12GltfImporter10ImportNodeERKN8tinygltf4NodeEPN3ozz9animation7offline11RawSkeleton5JointE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef %2) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ozz::log::Err", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !631
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #41
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %i.b, i64 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.663.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.864.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.864.0..sroa_idx.i, align 4, !tbaa !653
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !581  ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !581
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load <2 x double>, ptr %i.j, align 8, !tbaa !133
  %i.o = fptrunc <2 x double> %i.n to <2 x float> ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !133
  %i.r = fptrunc <2 x double> %i.q to <2 x float> ; 3 uses
  %i.s = shufflevector <2 x float> %i.o, <2 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !133
  %i.v = fptrunc <2 x double> %i.u to <2 x float> ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.x = load <2 x double>, ptr %i.w, align 8, !tbaa !133
  %i.y = fptrunc <2 x double> %i.x to <2 x float> ; 3 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.aa = shufflevector <2 x float> %i.v, <2 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ac = load <2 x double>, ptr %i.ab, align 8, !tbaa !133
  %i.ad = fptrunc <2 x double> %i.ac to <2 x float> ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.af = load <2 x double>, ptr %i.ae, align 8, !tbaa !133
  %i.ag = fptrunc <2 x double> %i.af to <2 x float> ; 3 uses
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.aj = load <2 x double>, ptr %i.ai, align 8, !tbaa !133
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float> ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.am = load double, ptr %i.al, align 8, !tbaa !133
  %i.an = fptrunc double %i.am to float           ; 2 uses
  %i.ao = insertelement <4 x float> poison, float %i.an, i64 2
  %i.ap = shufflevector <2 x float> %i.o, <2 x float> %i.ad, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.aq = shufflevector <2 x float> %i.v, <2 x float> %i.ak, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.ar = shufflevector <2 x float> %i.r, <2 x float> %i.ag, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.as = shufflevector <4 x float> %i.z, <4 x float> %i.ao, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.au = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 3 uses
  %i.av = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.aw = fmul <4 x float> %i.at, %i.at
  %i.ax = fmul <4 x float> %i.au, %i.au
  %i.ay = fmul <4 x float> %i.av, %i.av
  %i.az = fadd <4 x float> %i.ax, %i.ay
  %i.ba = fadd <4 x float> %i.aw, %i.az           ; 2 uses
  %i.bb = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ba) ; 5 uses
  %i.bc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ba)
  %i.bd = fcmp olt <4 x float> %i.bc, splat (float 1.000000e-16)
  %i.be = bitcast <4 x i1> %i.bd to i4
  %i.bf = zext i4 %i.be to i32                    ; 4 uses
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = and i32 %i.bf, 6
  %.not66.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not66.i.i, label %bb.d, label %_ZN3ozz4math8ToAffineERKNS0_8Float4x4EPNS0_9TransformE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.bi = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bj = fdiv <4 x float> %i.aa, %i.bi           ; 4 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ag, <2 x float> %i.ad, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.bm = fmul <4 x float> %i.ah, %i.bk
  %i.bn = fmul <4 x float> %i.bl, %i.bk
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.bp = fsub <4 x float> %i.bn, %i.bo           ; 4 uses
  %i.bq = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.bp, <4 x float> %i.bp, i8 127)
  %i.br = extractelement <4 x float> %i.bq, i64 0
  %i.bs = tail call float @llvm.sqrt.f32(float %i.br)
  %i.bt = fdiv float 1.000000e+00, %i.bs
  %i.bu = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 1, i32 0>
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.bx = fmul <4 x float> %i.bv, %i.bw
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> %i.bp, <4 x i32> <i32 3, i32 2, i32 1, i32 7> ; 2 uses
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.cb = fmul <4 x float> %i.bj, %i.bz
  %i.cc = fmul <4 x float> %i.ca, %i.bz
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ce = fsub <4 x float> %i.cc, %i.cd           ; 4 uses
  %i.cf = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.ce, <4 x float> %i.ce, i8 127)
  %i.cg = extractelement <4 x float> %i.cf, i64 0
  %i.ch = tail call float @llvm.sqrt.f32(float %i.cg)
  %i.ci = fdiv float 1.000000e+00, %i.ch
  %i.cj = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 1, i32 0>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.cm = fmul <4 x float> %i.cl, %i.ck
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.ce, <4 x i32> <i32 3, i32 2, i32 1, i32 7>
  br label %_ZN3ozz4math8ToAffineERKNS0_8Float4x4EPNS0_9TransformE.exit.thread.i

bb.e:                                             ; preds = %bb.b
  %i.co = and i32 %i.bf, 4
  %.not64.i.i = icmp eq i32 %i.co, 0
  br i1 %.not64.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = and i32 %i.bf, 2
  %.not65.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not65.i.i, label %bb.g, label %_ZN3ozz4math8ToAffineERKNS0_8Float4x4EPNS0_9TransformE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.cq = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = fdiv <4 x float> %i.s, %i.cq            ; 4 uses
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.ct = shufflevector <2 x float> %i.y, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.cu = fmul <4 x float> %i.aa, %i.cs
  %i.cv = fmul <4 x float> %i.ct, %i.cs
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.cx = fsub <4 x float> %i.cv, %i.cw           ; 4 uses
  %i.cy = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.cx, <4 x float> %i.cx, i8 127)
  %i.cz = extractelement <4 x float> %i.cy, i64 0
  %i.da = tail call float @llvm.sqrt.f32(float %i.cz)
  %i.db = fdiv float 1.000000e+00, %i.da
  %i.dc = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 1, i32 0>
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.df = fmul <4 x float> %i.dd, %i.de
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.cx, <4 x i32> <i32 3, i32 2, i32 1, i32 7> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.di = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.dj = fmul <4 x float> %i.cr, %i.dh
  %i.dk = fmul <4 x float> %i.di, %i.dh
  %i.dl = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.dm = fsub <4 x float> %i.dk, %i.dl           ; 4 uses
  %i.dn = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.dm, <4 x float> %i.dm, i8 127)
  %i.do = extractelement <4 x float> %i.dn, i64 0
  %i.dp = tail call float @llvm.sqrt.f32(float %i.do)
  %i.dq = fdiv float 1.000000e+00, %i.dp
  %i.dr = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.ds = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 1, i32 0>
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.du = fmul <4 x float> %i.dt, %i.ds
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.dm, <4 x i32> <i32 3, i32 2, i32 1, i32 7>
  br label %_ZN3ozz4math8ToAffineERKNS0_8Float4x4EPNS0_9TransformE.exit.thread.i

bb.h:                                             ; preds = %bb.e
  %i.dw = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dx = fdiv <4 x float> %i.ah, %i.dw           ; 4 uses
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.dz = shufflevector <2 x float> %i.r, <2 x float> %i.o, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.ea = fmul <4 x float> %i.s, %i.dy
  %i.eb = fmul <4 x float> %i.dz, %i.dy
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ed = fsub <4 x float> %i.eb, %i.ec           ; 4 uses
  %i.ee = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.ed, <4 x float> %i.ed, i8 127)
  %i.ef = extractelement <4 x float> %i.ee, i64 0
  %i.eg = tail call float @llvm.sqrt.f32(float %i.ef)
  %i.eh = fdiv float 1.000000e+00, %i.eg
  %i.ei = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 1, i32 0>
  %i.ek = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.el = fmul <4 x float> %i.ej, %i.ek
  %i.em = shufflevector <4 x float> %i.el, <4 x float> %i.ed, <4 x i32> <i32 3, i32 2, i32 1, i32 7> ; 2 uses
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.eo = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ep = fmul <4 x float> %i.dx, %i.en
  %i.eq = fmul <4 x float> %i.eo, %i.en
  %i.er = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.es = fsub <4 x float> %i.eq, %i.er           ; 4 uses
  %i.et = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.es, <4 x float> %i.es, i8 127)
  %i.eu = extractelement <4 x float> %i.et, i64 0
  %i.ev = tail call float @llvm.sqrt.f32(float %i.eu)
  %i.ew = fdiv float 1.000000e+00, %i.ev
  %i.ex = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 1, i32 0>
  %i.ez = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.fa = fmul <4 x float> %i.ez, %i.ey
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.es, <4 x i32> <i32 3, i32 2, i32 1, i32 7>
  br label %_ZN3ozz4math8ToAffineERKNS0_8Float4x4EPNS0_9TransformE.exit.thread.i

_ZN3ozz4math8ToAffineERKNS0_8Float4x4EPNS0_9TransformE.exit.thread.i: ; preds = %bb.h, %bb.g, %bb.d
  %.sroa.077.0.i = phi <4 x float> [ %i.fb, %bb.h ], [ %i.cr, %bb.g ], [ %i.by, %bb.d ] ; 6 uses
  %.sroa.1384.0.i = phi <4 x float> [ %i.em, %bb.h ], [ %i.dv, %bb.g ], [ %i.bj, %bb.d ] ; 6 uses
  %.sroa.24.0.i = phi <4 x float> [ %i.dx, %bb.h ], [ %i.dg, %bb.g ], [ %i.cn, %bb.d ] ; 6 uses
  %i.fc = shufflevector <4 x float> %.sroa.077.0.i, <4 x float> %.sroa.24.0.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fd = shufflevector <4 x float> %.sroa.1384.0.i, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fe = shufflevector <4 x float> %.sroa.077.0.i, <4 x float> %.sroa.24.0.i, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ff = shufflevector <4 x float> %.sroa.1384.0.i, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.fh = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.fi = shufflevector <4 x float> %i.fe, <4 x float> %i.ff, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.fj = fmul <4 x float> %i.at, %i.fg
  %i.fk = fmul <4 x float> %i.au, %i.fh
  %i.fl = fmul <4 x float> %i.av, %i.fi
  %i.fm = fadd <4 x float> %i.fk, %i.fl
  %i.fn = fadd <4 x float> %i.fj, %i.fm
  %i.fo = fcmp ogt <4 x float> %i.fn, zeroinitializer
  %i.fp = fsub <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, %i.bb
  %i.fq = select <4 x i1> %i.fo, <4 x float> %i.bb, <4 x float> %i.fp ; 2 uses
  %i.fr = shufflevector <4 x float> %.sroa.077.0.i, <4 x float> %.sroa.1384.0.i, <4 x i32> <i32 0, i32 5, i32 poison, i32 0>
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> %.sroa.24.0.i, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN12GltfImporter22SampleAnimationChannelERKN8tinygltf5ModelERKNS0_16AnimationSamplerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfPfPN3ozz9animation7offline12RawAnimation10JointTrackE:bb.a
  %i.gx = sub nuw nsw i64 %i.go, %i.gv
  tail call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.gx)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.gy = icmp ult i64 %i.go, %i.gv
  br i1 %i.gy, label %bb.am, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.go ; 2 uses
  %.not.i.i36.i.i = icmp eq ptr %i.gq, %i.gz
  br i1 %.not.i.i36.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.gz, ptr %i.gp, align 8, !tbaa !651
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ha = load i64, ptr %i.fj, align 8, !tbaa !126
  %.not8.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, %bb.ar
  %.0327.i.i = phi i64 [ %i.id, %bb.ar ], [ 0, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i ] ; 5 uses
  %i.hb = shl i64 %.0327.i.i, 1                   ; 4 uses
  %i.hc = load ptr, ptr %i.gp, align 8, !tbaa !651
  %i.hd = load ptr, ptr %6, align 8, !tbaa !673   ; 2 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = ashr exact i64 %i.hg, 4                 ; 2 uses
  %.not.i.i37.i.i = icmp ult i64 %i.hb, %i.hh
  br i1 %.not.i.i37.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i54.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %i.hb, i64 noundef %i.hh) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i: ; preds = %.lr.ph.i54.i
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hb ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0327.i.i ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !653
  store float %i.hk, ptr %i.hi, align 4, !tbaa !3934
  %i.hl = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %.0327.i.i ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hm, ptr noundef nonnull align 4 dereferenceable(12) %i.hl, i64 12, i1 false), !tbaa.struct !3935
  %i.hn = load i64, ptr %i.fj, align 8, !tbaa !126 ; 2 uses
  %i.ho = add i64 %i.hn, -1
  %i.hp = icmp ult i64 %.0327.i.i, %i.ho
  br i1 %i.hp, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i
  %i.hq = or disjoint i64 %i.hb, 1                ; 3 uses
  %i.hr = load ptr, ptr %i.gp, align 8, !tbaa !651
  %i.hs = load ptr, ptr %6, align 8, !tbaa !673   ; 2 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = ashr exact i64 %i.hv, 4                 ; 2 uses
  %.not.i.i38.i.i = icmp ult i64 %i.hq, %i.hw
  br i1 %.not.i.i38.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %i.hq, i64 noundef %i.hw) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i: ; preds = %bb.ap
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %i.hq ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !653
  %i.ia = tail call float @nexttowardf(float noundef %i.hz, x86_fp80 noundef 0.000000e+00) #41
  store float %i.ia, ptr %i.hx, align 4, !tbaa !3934
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ib, ptr noundef nonnull align 4 dereferenceable(12) %i.hl, i64 12, i1 false), !tbaa.struct !3935
  %.pre.i.i = load i64, ptr %i.fj, align 8, !tbaa !126
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i
  %i.ic = phi i64 [ %.pre.i.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i ], [ %i.hn, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i ]
  %i.id = add nuw i64 %.0327.i.i, 1               ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  br i1 %i.ie, label %.lr.ph.i54.i, label %.loopexit.i, !llvm.loop !3912

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.pre43.i = load ptr, ptr %i.a, align 8, !tbaa !89 ; 2 uses
  %i.if = load i64, ptr %.pre43.i, align 1
  %i.ig = xor i64 %i.if, 5498986693476373827
  %i.ih = getelementptr i8, ptr %.pre43.i, i64 3
  %i.ii = load i64, ptr %i.ih, align 1
  %i.ij = xor i64 %i.ii, 4994009628914434889
  %i.ik = or i64 %i.ig, %i.ij
  %i.il = icmp ne i64 %i.ik, 0
  %i.im = zext i1 %i.il to i32
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !126 ; 2 uses
  %i.iq = icmp ult i64 %i.ip, 3
  br i1 %i.iq, label %bb.as, label %bb.au

bb.as:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i
  %i.ir = load ptr, ptr %6, align 8, !tbaa !673   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !651
  %.not.i.i.i72.i = icmp eq ptr %i.it, %i.ir
  br i1 %.not.i.i.i72.i, label %.loopexit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !651
  br label %.loopexit.i

bb.au:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i
  %i.iu = udiv i64 %i.ip, 3                       ; 2 uses
  %i.iv = tail call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_110BufferViewIN3ozz4math6Float3EEENS1_4spanIKT_EERKN8tinygltf5ModelERKNS8_8AccessorE(ptr readonly %.val41, ptr readonly %.val42, ptr noundef nonnull readonly align 8 dereferenceable(1216) %i.al) ; 2 uses
  %i.iw = extractvalue { ptr, i64 } %i.iv, 0      ; 2 uses
  %i.ix = extractvalue { ptr, i64 } %i.iv, 1
  %i.iy = mul i64 %i.ix, 12
  %i.iz = udiv i64 %i.iy, 36
  %.not.i58.i = icmp eq i64 %i.iz, %i.iu
  %.not59.i.i = icmp eq i64 %i.cl, %i.iu
  %or.cond363 = and i1 %.not59.i.i, %.not.i58.i
  br i1 %or.cond363, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %23)
  %i.ja = load ptr, ptr %23, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, ptr noundef nonnull @.str.283, i64 noundef 47)
          to label %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i unwind label %bb.az ; 0 uses

_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i:   ; preds = %bb.av
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !421
  %i.jd = getelementptr i8, ptr %i.jc, i64 -24
  %i.je = load i64, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds i8, ptr %i.ja, i64 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 240
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i.i60.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i60.i, label %bb.aw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i

bb.aw:                                            ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc.i67.i unwind label %bb.az

.noexc.i67.i:                                     ; preds = %bb.aw
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i: ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jj = load i8, ptr %i.ji, align 8, !tbaa !491
  %.not.i1.i.i.i62.i = icmp eq i8 %i.jj, 0
  br i1 %.not.i1.i.i.i62.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 67
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jh)
          to label %.noexc68.i.i unwind label %bb.az

.noexc68.i.i:                                     ; preds = %bb.ay
  %i.jm = load ptr, ptr %i.jh, align 8, !tbaa !421
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = invoke noundef signext i8 %i.jo(ptr noundef nonnull align 8 dereferenceable(570) %i.jh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i unwind label %bb.az, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i: ; preds = %.noexc68.i.i, %bb.ax
  %.0.i.i.i.i64.i = phi i8 [ %i.jl, %bb.ax ], [ %i.jp, %.noexc68.i.i ]
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, i8 noundef signext %.0.i.i.i.i64.i)
          to label %.noexc70.i.i unwind label %bb.az

.noexc70.i.i:                                     ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jq)
          to label %_ZNSolsEPFRSoS_E.exit.i65.i unwind label %bb.az ; 0 uses

_ZNSolsEPFRSoS_E.exit.i65.i:                      ; preds = %.noexc70.i.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.az:                                            ; preds = %.noexc70.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i, %.noexc68.i.i, %bb.ay, %bb.aw, %bb.av
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br label %common.resume

bb.ba:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  %i.jt = getelementptr [4 x i8], ptr %i.cj, i64 %i.cl
  %i.ju = getelementptr i8, ptr %i.jt, i64 -4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !653
  %i.jw = load float, ptr %i.cj, align 4, !tbaa !653
  %i.jx = fsub float %i.jv, %i.jw
  call void @_ZN3ozz9animation7offline21FixedRateSamplingTimeC1Eff(ptr noundef nonnull align 8 dereferenceable(16) %24, float noundef %i.jx, float noundef %4)
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !3937 ; 7 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !651 ; 2 uses
  %i.kc = load ptr, ptr %6, align 8, !tbaa !673   ; 2 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = ashr exact i64 %i.kf, 4                 ; 3 uses
  %i.kh = icmp ugt i64 %i.jz, %i.kg
  br i1 %i.kh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ki = sub nuw i64 %i.jz, %i.kg
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ki)
  %.pre.i71.i = load i64, ptr %i.jy, align 8, !tbaa !3937
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

bb.bc:                                            ; preds = %bb.ba
  %i.kj = icmp ult i64 %i.jz, %i.kg
  br i1 %i.kj, label %bb.bd, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

bb.bd:                                            ; preds = %bb.bc
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %i.jz ; 2 uses
  %.not.i.i66.i.i = icmp eq ptr %i.kb, %i.kk
  br i1 %.not.i.i66.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.kk, ptr %i.ka, align 8, !tbaa !651
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.kl = phi i64 [ %.pre.i71.i, %bb.bb ], [ %i.jz, %bb.bc ], [ %i.jz, %bb.bd ], [ %i.jz, %bb.be ]
  %.not20.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not20.i.i, label %._crit_edge.i.i, label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i
  %i.km = getelementptr inbounds nuw i8, ptr %24, i64 4
  br label %bb.bf

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  br label %.loopexit.i

bb.bf:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, %.lr.ph.i69.i
  %.05419.i.i = phi i64 [ 0, %.lr.ph.i69.i ], [ %.155.i.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i ]
  %.05618.i.i = phi i64 [ 0, %.lr.ph.i69.i ], [ %i.ni, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i ] ; 5 uses
  %i.kn = uitofp i64 %.05618.i.i to float
  %i.ko = load float, ptr %i.km, align 4, !tbaa !3938
  %i.kp = fmul float %i.ko, %i.kn                 ; 2 uses
  %i.kq = load float, ptr %24, align 8, !tbaa !3939 ; 2 uses
  %i.kr = fcmp olt float %i.kp, %i.kq
  %i.ks = select i1 %i.kr, float %i.kp, float %i.kq
  %i.kt = load float, ptr %i.cj, align 4, !tbaa !653
  %i.ku = fadd float %i.kt, %i.ks                 ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.155.i.i = phi i64 [ %.05419.i.i, %bb.bf ], [ %i.kv, %bb.bg ] ; 4 uses
  %i.kv = add i64 %.155.i.i, 1                    ; 3 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.kv
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !653 ; 2 uses
  %i.ky = fcmp olt float %i.kx, %i.ku
  br i1 %i.ky, label %bb.bg, label %bb.bh, !llvm.loop !3913

bb.bh:                                            ; preds = %bb.bg
  %33 = load ptr, ptr %i.ka, align 8, !tbaa !651
  %34 = load ptr, ptr %6, align 8, !tbaa !673     ; 2 uses
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = ashr exact i64 %37, 4                     ; 2 uses
  %.not.i.i67.i.i = icmp ult i64 %.05618.i.i, %38
  br i1 %.not.i.i67.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %.05618.i.i, i64 noundef %38) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i: ; preds = %bb.bh
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.155.i.i
  %i.la = load float, ptr %i.kz, align 4, !tbaa !653 ; 2 uses
  %i.lb = fsub float %i.ku, %i.la
  %i.lc = fsub float %i.kx, %i.la                 ; 4 uses
  %i.ld = fdiv float %i.lb, %i.lc                 ; 4 uses
  %i.le = fmul float %i.ld, %i.ld                 ; 4 uses
  %i.lf = fmul float %i.ld, %i.le                 ; 4 uses
  %i.lg = fmul float %i.le, 3.000000e+00          ; 2 uses
  %i.lh = fneg float %i.lg
  %.idx.i.i = mul i64 %.155.i.i, 36
  %i.li = getelementptr i8, ptr %i.iw, i64 %.idx.i.i ; 4 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 12
  %i.lk = getelementptr i8, ptr %i.li, i64 24
  %i.ll = call float @llvm.fmuladd.f32(float %i.lf, float -2.000000e+00, float %i.lg) ; 2 uses
  %.idx36.i.i = mul i64 %i.kv, 36
  %i.lm = getelementptr i8, ptr %i.iw, i64 %.idx36.i.i ; 4 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 12
  %i.lo = fsub float %i.lf, %i.le                 ; 2 uses
  %i.lp = call float @llvm.fmuladd.f32(float %i.lf, float 2.000000e+00, float %i.lh)
  %i.lq = fadd float %i.lp, 1.000000e+00          ; 2 uses
  %i.lr = call float @llvm.fmuladd.f32(float %i.le, float -2.000000e+00, float %i.lf)
  %i.ls = fadd float %i.ld, %i.lr                 ; 2 uses
  %i.lt = load <2 x float>, ptr %i.lj, align 4, !tbaa !653
  %i.lu = insertelement <2 x float> poison, float %i.lq, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x float> %i.lt, %i.lv
  %i.lx = load <2 x float>, ptr %i.lk, align 4, !tbaa !653
  %i.ly = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ma = fmul <2 x float> %i.lz, %i.lx
  %i.mb = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = fmul <2 x float> %i.ma, %i.mc
  %i.me = fadd <2 x float> %i.lw, %i.md
  %i.mf = load <2 x float>, ptr %i.ln, align 4, !tbaa !653
  %i.mg = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x float> %i.mf, %i.mh
  %i.mj = fadd <2 x float> %i.mi, %i.me
  %i.mk = load <2 x float>, ptr %i.lm, align 4, !tbaa !653
  %i.ml = fmul <2 x float> %i.lz, %i.mk
  %i.mm = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mo = fmul <2 x float> %i.mn, %i.ml
  %i.mp = fadd <2 x float> %i.mo, %i.mj
  %i.mq = getelementptr i8, ptr %i.li, i64 20
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !3940
  %i.ms = fmul float %i.lq, %i.mr
  %i.mt = getelementptr i8, ptr %i.li, i64 32
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !3940
  %i.mv = fmul float %i.lc, %i.mu
  %i.mw = fmul float %i.ls, %i.mv
  %i.mx = fadd float %i.ms, %i.mw
  %i.my = getelementptr i8, ptr %i.lm, i64 20
  %i.mz = load float, ptr %i.my, align 4, !tbaa !3940
  %i.na = fmul float %i.ll, %i.mz
  %i.nb = fadd float %i.na, %i.mx
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !3940
  %i.ne = fmul float %i.lc, %i.nd
  %i.nf = fmul float %i.lo, %i.ne
  %i.ng = fadd float %i.nb, %i.nf
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %34, i64 %.05618.i.i ; 3 uses
  store float %i.ku, ptr %i.nh, align 4, !tbaa !653
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store <2 x float> %i.mp, ptr %.sroa.4.0..sroa_idx4.i.i, align 4
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store float %i.ng, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !653
  %i.ni = add nuw i64 %.05618.i.i, 1              ; 2 uses
  %39 = load i64, ptr %i.jy, align 8, !tbaa !3937
  %40 = icmp ult i64 %i.ni, %39
  br i1 %40, label %bb.bf, label %._crit_edge.i.i, !llvm.loop !3914

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %28)
  %i.nj = load ptr, ptr %28, align 8, !tbaa !614, !nonnull !136, !align !563 ; 2 uses
  %i.nk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, ptr noundef nonnull @.str.279, i64 noundef 39)
          to label %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i unwind label %bb.bm ; 0 uses

_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i:       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i
  %i.nl = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.nm = load i64, ptr %i.b, align 8, !tbaa !129
  %i.nn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, ptr noundef %i.nl, i64 noundef %i.nm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.bm ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nn, ptr noundef nonnull @.str.280, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i49 unwind label %bb.bm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i49: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.np = load ptr, ptr %i.nn, align 8, !tbaa !421
  %i.nq = getelementptr i8, ptr %i.np, i64 -24
  %i.nr = load i64, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds i8, ptr %i.nn, i64 %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 240
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i83.i = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i83.i, label %bb.bj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i50

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i49
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc.i55 unwind label %bb.bm

.noexc.i55:                                       ; preds = %bb.bj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i50: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i49
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  %i.nw = load i8, ptr %i.nv, align 8, !tbaa !491
  %.not.i1.i.i.i51 = icmp eq i8 %i.nw, 0
  br i1 %.not.i1.i.i.i51, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i50
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 67
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i52

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i50
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.nu)
          to label %.noexc84.i unwind label %bb.bm

.noexc84.i:                                       ; preds = %bb.bl
  %i.nz = load ptr, ptr %i.nu, align 8, !tbaa !421
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = invoke noundef signext i8 %i.ob(ptr noundef nonnull align 8 dereferenceable(570) %i.nu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i52 unwind label %bb.bm, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i52: ; preds = %.noexc84.i, %bb.bk
  %.0.i.i.i.i53 = phi i8 [ %i.ny, %bb.bk ], [ %i.oc, %.noexc84.i ]
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.nn, i8 noundef signext %.0.i.i.i.i53)
          to label %.noexc86.i unwind label %bb.bm

.noexc86.i:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i52
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.od)
          to label %_ZNSolsEPFRSoS_E.exit.i54 unwind label %bb.bm ; 0 uses

_ZNSolsEPFRSoS_E.exit.i54:                        ; preds = %.noexc86.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %28) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.bm:                                            ; preds = %.noexc86.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i52, %.noexc84.i, %bb.bl, %bb.bj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %28) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %common.resume

.loopexit.i:                                      ; preds = %bb.ar, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i, %._crit_edge.i.i, %bb.at, %bb.as, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, %bb.ac, %bb.ab, %bb.x, %bb.q, %bb.p
  %i.og = load ptr, ptr %6, align 8, !tbaa !649   ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !649 ; 6 uses
  %i.oj = icmp eq ptr %i.og, %i.oi
  br i1 %i.oj, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.loopexit.i, %bb.bn
  %.sroa.03.0.i.i.i.i = phi ptr [ %.sroa.04.0.i.i.i.i, %bb.bn ], [ %i.og, %.loopexit.i ] ; 2 uses
  %.sroa.04.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i73.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.oi
  br i1 %.not.i.i.i73.i, label %.preheader.i.i.i75.i, label %bb.bn

bb.bn:                                            ; preds = %.preheader.i.i.i.i
  %.val.i.i.i.i.i = load float, ptr %.sroa.04.0.i.i.i.i, align 4, !tbaa !3934
  %.val1.i.i.i.i.i = load float, ptr %.sroa.03.0.i.i.i.i, align 4, !tbaa !3934
  %i.ok = fcmp olt float %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.ok, label %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i, label %.preheader.i.i.i.i, !llvm.loop !3915

_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i: ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  call void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %29)
  %i.ol = load ptr, ptr %29, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.om = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull @.str.281, i64 noundef 64)
          to label %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i unwind label %bb.br ; 0 uses

_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i:       ; preds = %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i
  %i.on = load ptr, ptr %i.ol, align 8, !tbaa !421
  %i.oo = getelementptr i8, ptr %i.on, i64 -24
  %i.op = load i64, ptr %i.oo, align 8
  %i.oq = getelementptr inbounds i8, ptr %i.ol, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 240
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i88.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i88.i, label %bb.bo, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i

bb.bo:                                            ; preds = %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc93.i unwind label %bb.br

.noexc93.i:                                       ; preds = %bb.bo
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i: ; preds = %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 56
  %i.ou = load i8, ptr %i.ot, align 8, !tbaa !491
  %.not.i1.i.i90.i = icmp eq i8 %i.ou, 0
  br i1 %.not.i1.i.i90.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 67
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i

bb.bq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.os)
          to label %.noexc94.i unwind label %bb.br

.noexc94.i:                                       ; preds = %bb.bq
  %i.ox = load ptr, ptr %i.os, align 8, !tbaa !421
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 48
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = invoke noundef signext i8 %i.oz(ptr noundef nonnull align 8 dereferenceable(570) %i.os, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i unwind label %bb.br, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i: ; preds = %.noexc94.i, %bb.bp
  %.0.i.i.i92.i = phi i8 [ %i.ow, %bb.bp ], [ %i.pa, %.noexc94.i ]
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, i8 noundef signext %.0.i.i.i92.i)
          to label %.noexc96.i unwind label %bb.br

.noexc96.i:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pb)
          to label %_ZNSolsEPFRSoS_E.exit74.i unwind label %bb.br ; 0 uses

_ZNSolsEPFRSoS_E.exit74.i:                        ; preds = %.noexc96.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.br:                                            ; preds = %.noexc96.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i, %.noexc94.i, %bb.bq, %bb.bo, %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  br label %common.resume

.preheader.i.i.i75.i:                             ; preds = %.preheader.i.i.i.i, %bb.bs
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.pe, %bb.bs ], [ %i.og, %.preheader.i.i.i.i ] ; 5 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i76.i = icmp eq ptr %i.pe, %i.oi
  br i1 %.not.i.i.i76.i, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %bb.bs

bb.bs:                                            ; preds = %.preheader.i.i.i75.i
  %.val.i.i.i.i77.i = load float, ptr %.sroa.09.0.i.i.i.i, align 4, !tbaa !3934
  %.val1.i.i.i.i78.i = load float, ptr %i.pe, align 4, !tbaa !3934
  %i.pf = fcmp oeq float %.val.i.i.i.i77.i, %.val1.i.i.i.i78.i
  br i1 %i.pf, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i, label %.preheader.i.i.i75.i, !llvm.loop !3916

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i: ; preds = %bb.bs
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 32 ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.pg, %i.oi
  br i1 %.not19.i.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i, %bb.bu
  %i.ph = phi ptr [ %i.pk, %bb.bu ], [ %i.pg, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.0.020.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.bu ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ] ; 3 uses
  %.val.i.i.i.i = load float, ptr %.sroa.0.020.i.i.i, align 4, !tbaa !3934
  %.val1.i.i.i.i = load float, ptr %i.ph, align 4, !tbaa !3934
  %i.pi = fcmp oeq float %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.pi, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pj, ptr noundef nonnull align 4 dereferenceable(16) %i.ph, i64 16, i1 false), !tbaa.struct !654
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.020.i.i.i, %.lr.ph.i.i.i ], [ %i.pj, %bb.bt ] ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  %.not.i.i79.i = icmp eq ptr %i.pk, %i.oi
  br i1 %.not.i.i79.i, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !3917

end_hunk_2
begin_hunk_3_@_ZN12GltfImporter22SampleAnimationChannelERKN8tinygltf5ModelERKNS0_16AnimationSamplerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfPfPN3ozz9animation7offline12RawAnimation10JointTrackE:bb.a
  %i.uj = sub nuw nsw i64 %i.ua, %i.uh
  tail call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qm, i64 noundef %i.uj)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.uk = icmp ult i64 %i.ua, %i.uh
  br i1 %i.uk, label %bb.cw, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.ul = getelementptr inbounds nuw [20 x i8], ptr %i.ud, i64 %i.ua ; 2 uses
  %.not.i.i36.i.i160 = icmp eq ptr %i.uc, %i.ul
  br i1 %.not.i.i36.i.i160, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.ul, ptr %i.ub, align 8, !tbaa !661
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i: ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %i.um = load i64, ptr %i.sw, align 8, !tbaa !126
  %.not8.i.i154 = icmp eq i64 %i.um, 0
  br i1 %.not8.i.i154, label %.loopexit.i93, label %.lr.ph.i54.i155

.lr.ph.i54.i155:                                  ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, %bb.db
  %.0327.i.i156 = phi i64 [ %i.vp, %bb.db ], [ 0, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i ] ; 5 uses
  %i.un = shl i64 %.0327.i.i156, 1                ; 4 uses
  %i.uo = load ptr, ptr %i.ub, align 8, !tbaa !661
  %i.up = load ptr, ptr %i.qm, align 8, !tbaa !674 ; 2 uses
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = sub i64 %i.uq, %i.ur
  %i.ut = sdiv exact i64 %i.us, 20                ; 2 uses
  %.not.i.i37.i.i157 = icmp ult i64 %i.un, %i.ut
  br i1 %.not.i.i37.i.i157, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i54.i155
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %i.un, i64 noundef %i.ut) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i: ; preds = %.lr.ph.i54.i155
  %i.uu = getelementptr inbounds nuw [20 x i8], ptr %i.up, i64 %i.un ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0327.i.i156 ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !653
  store float %i.uw, ptr %i.uu, align 4, !tbaa !659
  %i.ux = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %.0327.i.i156 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.uy, ptr noundef nonnull align 4 dereferenceable(16) %i.ux, i64 16, i1 false), !tbaa.struct !654
  %i.uz = load i64, ptr %i.sw, align 8, !tbaa !126 ; 2 uses
  %i.va = add i64 %i.uz, -1
  %i.vb = icmp ult i64 %.0327.i.i156, %i.va
  br i1 %i.vb, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i
  %i.vc = or disjoint i64 %i.un, 1                ; 3 uses
  %i.vd = load ptr, ptr %i.ub, align 8, !tbaa !661
  %i.ve = load ptr, ptr %i.qm, align 8, !tbaa !674 ; 2 uses
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = sdiv exact i64 %i.vh, 20                ; 2 uses
  %.not.i.i38.i.i158 = icmp ult i64 %i.vc, %i.vi
  br i1 %.not.i.i38.i.i158, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %i.vc, i64 noundef %i.vi) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i: ; preds = %bb.cz
  %i.vj = getelementptr inbounds nuw [20 x i8], ptr %i.ve, i64 %i.vc ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !653
  %i.vm = tail call float @nexttowardf(float noundef %i.vl, x86_fp80 noundef 0.000000e+00) #41
  store float %i.vm, ptr %i.vj, align 4, !tbaa !659
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vn, ptr noundef nonnull align 4 dereferenceable(16) %i.ux, i64 16, i1 false), !tbaa.struct !654
  %.pre.i.i159 = load i64, ptr %i.sw, align 8, !tbaa !126
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i
  %i.vo = phi i64 [ %.pre.i.i159, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i ], [ %i.uz, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i ]
  %i.vp = add nuw i64 %.0327.i.i156, 1            ; 2 uses
  %i.vq = icmp ult i64 %i.vp, %i.vo
  br i1 %i.vq, label %.lr.ph.i54.i155, label %.loopexit.i93, !llvm.loop !3919

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i59: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread
  %.pre43.i60 = load ptr, ptr %i.a, align 8, !tbaa !89 ; 2 uses
  %i.vr = load i64, ptr %.pre43.i60, align 1
  %i.vs = xor i64 %i.vr, 5498986693476373827
  %i.vt = getelementptr i8, ptr %.pre43.i60, i64 3
  %i.vu = load i64, ptr %i.vt, align 1
  %i.vv = xor i64 %i.vu, 4994009628914434889
  %i.vw = or i64 %i.vs, %i.vv
  %i.vx = icmp ne i64 %i.vw, 0
  %i.vy = zext i1 %i.vx to i32
  %i.vz = icmp eq i32 %i.vy, 0
  br i1 %i.vz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i78, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i62

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i78: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i59
  %i.wa = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !126 ; 2 uses
  %i.wc = icmp ult i64 %i.wb, 3
  br i1 %i.wc, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i78
  %i.wd = load ptr, ptr %i.qm, align 8, !tbaa !674 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !661
  %.not.i.i.i72.i137 = icmp eq ptr %i.wf, %i.wd
  br i1 %.not.i.i.i72.i137, label %.loopexit.i93, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr %i.wd, ptr %i.we, align 8, !tbaa !661
  br label %.loopexit.i93

bb.de:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i78
  %i.wg = udiv i64 %i.wb, 3                       ; 2 uses
  %i.wh = tail call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_110BufferViewIN3ozz4math10QuaternionEEENS1_4spanIKT_EERKN8tinygltf5ModelERKNS8_8AccessorE(ptr readonly %.val43, ptr readonly %.val44, ptr noundef nonnull readonly align 8 dereferenceable(1216) %i.al) ; 2 uses
  %i.wi = extractvalue { ptr, i64 } %i.wh, 0      ; 2 uses
  %i.wj = extractvalue { ptr, i64 } %i.wh, 1
  %i.wk = shl i64 %i.wj, 4
  %i.wl = udiv i64 %i.wk, 48
  %.not.i58.i79 = icmp eq i64 %i.wl, %i.wg
  %.not50.i.i = icmp eq i64 %i.cl, %i.wg
  %or.cond366 = and i1 %.not50.i.i, %.not.i58.i79
  br i1 %or.cond366, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %15)
  %i.wm = load ptr, ptr %15, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.wn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wm, ptr noundef nonnull @.str.283, i64 noundef 47)
          to label %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i80 unwind label %bb.dj ; 0 uses

_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i80: ; preds = %bb.df
  %i.wo = load ptr, ptr %i.wm, align 8, !tbaa !421
  %i.wp = getelementptr i8, ptr %i.wo, i64 -24
  %i.wq = load i64, ptr %i.wp, align 8
  %i.wr = getelementptr inbounds i8, ptr %i.wm, i64 %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 240
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i.i60.i81 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i.i60.i81, label %bb.dg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i82

bb.dg:                                            ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i80
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc.i67.i87 unwind label %bb.dj

.noexc.i67.i87:                                   ; preds = %bb.dg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i82: ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i80
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 56
  %i.wv = load i8, ptr %i.wu, align 8, !tbaa !491
  %.not.i1.i.i.i62.i83 = icmp eq i8 %i.wv, 0
  br i1 %.not.i1.i.i.i62.i83, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i82
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 67
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i84

bb.di:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i82
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.wt)
          to label %.noexc59.i.i unwind label %bb.dj

.noexc59.i.i:                                     ; preds = %bb.di
  %i.wy = load ptr, ptr %i.wt, align 8, !tbaa !421
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 48
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = invoke noundef signext i8 %i.xa(ptr noundef nonnull align 8 dereferenceable(570) %i.wt, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i84 unwind label %bb.dj, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i84: ; preds = %.noexc59.i.i, %bb.dh
  %.0.i.i.i.i64.i85 = phi i8 [ %i.wx, %bb.dh ], [ %i.xb, %.noexc59.i.i ]
  %i.xc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.wm, i8 noundef signext %.0.i.i.i.i64.i85)
          to label %.noexc61.i.i unwind label %bb.dj

.noexc61.i.i:                                     ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i84
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xc)
          to label %_ZNSolsEPFRSoS_E.exit.i65.i86 unwind label %bb.dj ; 0 uses

_ZNSolsEPFRSoS_E.exit.i65.i86:                    ; preds = %.noexc61.i.i
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.dj:                                            ; preds = %.noexc61.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i84, %.noexc59.i.i, %bb.di, %bb.dg, %bb.df
  %i.xe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %common.resume

bb.dk:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.xf = getelementptr [4 x i8], ptr %i.cj, i64 %i.cl
  %i.xg = getelementptr i8, ptr %i.xf, i64 -4
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !653
  %i.xi = load float, ptr %i.cj, align 4, !tbaa !653
  %i.xj = fsub float %i.xh, %i.xi
  call void @_ZN3ozz9animation7offline21FixedRateSamplingTimeC1Eff(ptr noundef nonnull align 8 dereferenceable(16) %16, float noundef %i.xj, float noundef %4)
  %i.xk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !3937 ; 7 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !661 ; 2 uses
  %i.xo = load ptr, ptr %i.qm, align 8, !tbaa !674 ; 2 uses
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = ptrtoint ptr %i.xo to i64
  %i.xr = sub i64 %i.xp, %i.xq
  %i.xs = sdiv exact i64 %i.xr, 20                ; 3 uses
  %i.xt = icmp ugt i64 %i.xl, %i.xs
  br i1 %i.xt, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.xu = sub nuw i64 %i.xl, %i.xs
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qm, i64 noundef %i.xu)
  %.pre.i71.i136 = load i64, ptr %i.xk, align 8, !tbaa !3937
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

bb.dm:                                            ; preds = %bb.dk
  %i.xv = icmp ult i64 %i.xl, %i.xs
  br i1 %i.xv, label %bb.dn, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

bb.dn:                                            ; preds = %bb.dm
  %i.xw = getelementptr inbounds nuw [20 x i8], ptr %i.xo, i64 %i.xl ; 2 uses
  %.not.i.i57.i.i = icmp eq ptr %i.xn, %i.xw
  br i1 %.not.i.i57.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store ptr %i.xw, ptr %i.xm, align 8, !tbaa !661
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i: ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl
  %i.xx = phi i64 [ %.pre.i71.i136, %bb.dl ], [ %i.xl, %bb.dm ], [ %i.xl, %bb.dn ], [ %i.xl, %bb.do ]
  %.not22.i.i = icmp eq i64 %i.xx, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i92, label %.lr.ph.i69.i88

.lr.ph.i69.i88:                                   ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i
  %i.xy = getelementptr inbounds nuw i8, ptr %16, i64 4
  br label %bb.dp

._crit_edge.i.i92:                                ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %.loopexit.i93

bb.dp:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, %.lr.ph.i69.i88
  %.04521.i.i = phi i64 [ 0, %.lr.ph.i69.i88 ], [ %.146.i.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i ]
  %.04720.i.i = phi i64 [ 0, %.lr.ph.i69.i88 ], [ %i.aau, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i ] ; 5 uses
  %i.xz = uitofp i64 %.04720.i.i to float
  %i.ya = load float, ptr %i.xy, align 4, !tbaa !3938
  %i.yb = fmul float %i.ya, %i.xz                 ; 2 uses
  %i.yc = load float, ptr %16, align 8, !tbaa !3939 ; 2 uses
  %i.yd = fcmp olt float %i.yb, %i.yc
  %i.ye = select i1 %i.yd, float %i.yb, float %i.yc
  %i.yf = load float, ptr %i.cj, align 4, !tbaa !653
  %i.yg = fadd float %i.yf, %i.ye                 ; 3 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %bb.dp
  %.146.i.i = phi i64 [ %.04521.i.i, %bb.dp ], [ %i.yh, %bb.dq ] ; 4 uses
  %i.yh = add i64 %.146.i.i, 1                    ; 3 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.yh
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !653 ; 2 uses
  %i.yk = fcmp olt float %i.yj, %i.yg
  br i1 %i.yk, label %bb.dq, label %bb.dr, !llvm.loop !3920

bb.dr:                                            ; preds = %bb.dq
  %41 = load ptr, ptr %i.xm, align 8, !tbaa !661
  %42 = load ptr, ptr %i.qm, align 8, !tbaa !674  ; 2 uses
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 20                    ; 2 uses
  %.not.i.i58.i.i = icmp ult i64 %.04720.i.i, %46
  br i1 %.not.i.i58.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %.04720.i.i, i64 noundef %46) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i: ; preds = %bb.dr
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.146.i.i
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !653 ; 2 uses
  %i.yn = fsub float %i.yg, %i.ym
  %i.yo = fsub float %i.yj, %i.ym                 ; 2 uses
  %i.yp = fdiv float %i.yn, %i.yo                 ; 4 uses
  %i.yq = fmul float %i.yp, %i.yp                 ; 4 uses
  %i.yr = fmul float %i.yp, %i.yq                 ; 4 uses
  %i.ys = fmul float %i.yq, 3.000000e+00          ; 2 uses
  %i.yt = fneg float %i.ys
  %.idx.i.i89 = mul i64 %.146.i.i, 48
  %i.yu = getelementptr i8, ptr %i.wi, i64 %.idx.i.i89 ; 4 uses
  %i.yv = getelementptr i8, ptr %i.yu, i64 24
  %i.yw = getelementptr i8, ptr %i.yu, i64 40
  %i.yx = call float @llvm.fmuladd.f32(float %i.yr, float -2.000000e+00, float %i.ys)
  %.idx38.i.i = mul i64 %i.yh, 48
  %i.yy = getelementptr i8, ptr %i.wi, i64 %.idx38.i.i ; 4 uses
  %i.yz = getelementptr i8, ptr %i.yy, i64 24
  %i.za = fsub float %i.yr, %i.yq
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.zc = getelementptr i8, ptr %i.yu, i64 16
  %i.zd = getelementptr i8, ptr %i.yu, i64 32
  %i.ze = getelementptr i8, ptr %i.yy, i64 16
  %i.zf = load <2 x float>, ptr %i.yv, align 4, !tbaa !653
  %i.zg = load <2 x float>, ptr %i.yw, align 4, !tbaa !653
  %i.zh = insertelement <2 x float> poison, float %i.yo, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.zj = fmul <2 x float> %i.zi, %i.zg
  %i.zk = load <2 x float>, ptr %i.yz, align 4, !tbaa !653
  %i.zl = insertelement <2 x float> poison, float %i.yx, i64 0
  %i.zm = shufflevector <2 x float> %i.zl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zn = fmul <2 x float> %i.zk, %i.zm
  %i.zo = load <2 x float>, ptr %i.zb, align 4, !tbaa !653
  %i.zp = fmul <2 x float> %i.zi, %i.zo
  %i.zq = insertelement <2 x float> poison, float %i.za, i64 0
  %i.zr = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zs = fmul <2 x float> %i.zr, %i.zp
  %i.zt = call float @llvm.fmuladd.f32(float %i.yr, float 2.000000e+00, float %i.yt)
  %i.zu = fadd float %i.zt, 1.000000e+00
  %i.zv = call float @llvm.fmuladd.f32(float %i.yq, float -2.000000e+00, float %i.yr)
  %i.zw = fadd float %i.yp, %i.zv
  %i.zx = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zz = fmul <2 x float> %i.zf, %i.zy
  %i.aaa = insertelement <2 x float> poison, float %i.zw, i64 0
  %i.aab = shufflevector <2 x float> %i.aaa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aac = fmul <2 x float> %i.zj, %i.aab
  %i.aad = fadd <2 x float> %i.zz, %i.aac
  %i.aae = fadd <2 x float> %i.zn, %i.aad
  %i.aaf = fadd <2 x float> %i.zs, %i.aae
  %i.aag = load <2 x float>, ptr %i.zc, align 4, !tbaa !653
  %i.aah = fmul <2 x float> %i.zy, %i.aag
  %i.aai = load <2 x float>, ptr %i.zd, align 4, !tbaa !653
  %i.aaj = fmul <2 x float> %i.zi, %i.aai
  %i.aak = fmul <2 x float> %i.aab, %i.aaj
  %i.aal = fadd <2 x float> %i.aah, %i.aak
  %i.aam = load <2 x float>, ptr %i.ze, align 4, !tbaa !653
  %i.aan = fmul <2 x float> %i.zm, %i.aam
  %i.aao = fadd <2 x float> %i.aan, %i.aal
  %i.aap = load <2 x float>, ptr %i.yy, align 4, !tbaa !653
  %i.aaq = fmul <2 x float> %i.zi, %i.aap
  %i.aar = fmul <2 x float> %i.zr, %i.aaq
  %i.aas = fadd <2 x float> %i.aao, %i.aar
  %i.aat = getelementptr inbounds nuw [20 x i8], ptr %42, i64 %.04720.i.i ; 3 uses
  store float %i.yg, ptr %i.aat, align 4, !tbaa !653
  %.sroa.4.0..sroa_idx4.i.i90 = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  store <2 x float> %i.aas, ptr %.sroa.4.0..sroa_idx4.i.i90, align 4
  %.sroa.7.0..sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %i.aat, i64 12
  store <2 x float> %i.aaf, ptr %.sroa.7.0..sroa_idx.i.i91, align 4
  %i.aau = add nuw i64 %.04720.i.i, 1             ; 2 uses
  %47 = load i64, ptr %i.xk, align 8, !tbaa !3937
  %48 = icmp ult i64 %i.aau, %47
  br i1 %48, label %bb.dp, label %._crit_edge.i.i92, !llvm.loop !3921

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i62: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i138, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i162, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %20)
  %i.aav = load ptr, ptr %20, align 8, !tbaa !614, !nonnull !136, !align !563 ; 2 uses
  %i.aaw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aav, ptr noundef nonnull @.str.279, i64 noundef 39)
          to label %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i65 unwind label %bb.dw ; 0 uses

_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i65:     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i62
  %i.aax = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.aay = load i64, ptr %i.b, align 8, !tbaa !129
  %i.aaz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aav, ptr noundef %i.aax, i64 noundef %i.aay)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i66 unwind label %bb.dw ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i66: ; preds = %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i65
  %i.aba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaz, ptr noundef nonnull @.str.280, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i67 unwind label %bb.dw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i67: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i66
  %i.abb = load ptr, ptr %i.aaz, align 8, !tbaa !421
  %i.abc = getelementptr i8, ptr %i.abb, i64 -24
  %i.abd = load i64, ptr %i.abc, align 8
  %i.abe = getelementptr inbounds i8, ptr %i.aaz, i64 %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 240
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i83.i68 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i83.i68, label %bb.dt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i69

bb.dt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i67
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc.i77 unwind label %bb.dw

.noexc.i77:                                       ; preds = %bb.dt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i67
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 56
  %i.abi = load i8, ptr %i.abh, align 8, !tbaa !491
  %.not.i1.i.i.i70 = icmp eq i8 %i.abi, 0
  br i1 %.not.i1.i.i.i70, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i69
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 67
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i71

bb.dv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i69
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.abg)
          to label %.noexc84.i76 unwind label %bb.dw

.noexc84.i76:                                     ; preds = %bb.dv
  %i.abl = load ptr, ptr %i.abg, align 8, !tbaa !421
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 48
  %i.abn = load ptr, ptr %i.abm, align 8
  %i.abo = invoke noundef signext i8 %i.abn(ptr noundef nonnull align 8 dereferenceable(570) %i.abg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i71 unwind label %bb.dw, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i71: ; preds = %.noexc84.i76, %bb.du
  %.0.i.i.i.i72 = phi i8 [ %i.abk, %bb.du ], [ %i.abo, %.noexc84.i76 ]
  %i.abp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aaz, i8 noundef signext %.0.i.i.i.i72)
          to label %.noexc86.i73 unwind label %bb.dw

.noexc86.i73:                                     ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i71
  %i.abq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abp)
          to label %_ZNSolsEPFRSoS_E.exit.i74 unwind label %bb.dw ; 0 uses

_ZNSolsEPFRSoS_E.exit.i74:                        ; preds = %.noexc86.i73
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %20) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.dw:                                            ; preds = %.noexc86.i73, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i71, %.noexc84.i76, %bb.dv, %bb.dt, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i66, %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i65, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i62
  %i.abr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %20) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %common.resume

.loopexit.i93:                                    ; preds = %bb.db, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i, %._crit_edge.i.i92, %bb.dd, %bb.dc, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, %bb.cm, %bb.cl, %bb.ch, %bb.ca, %bb.bz
  %i.abs = load ptr, ptr %i.qm, align 8, !tbaa !656 ; 5 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !656 ; 7 uses
  %i.abv = icmp eq ptr %i.abs, %i.abu
  br i1 %i.abv, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %.preheader.i.i.i.i94

.preheader.i.i.i.i94:                             ; preds = %.loopexit.i93, %bb.dx
  %.sroa.03.0.i.i.i.i95 = phi ptr [ %.sroa.04.0.i.i.i.i96, %bb.dx ], [ %i.abs, %.loopexit.i93 ] ; 2 uses
  %.sroa.04.0.i.i.i.i96 = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i95, i64 20 ; 3 uses
  %.not.i.i.i73.i97 = icmp eq ptr %.sroa.04.0.i.i.i.i96, %i.abu
  br i1 %.not.i.i.i73.i97, label %.preheader.i.i.i75.i110, label %bb.dx

bb.dx:                                            ; preds = %.preheader.i.i.i.i94
  %.val.i.i.i.i.i98 = load float, ptr %.sroa.04.0.i.i.i.i96, align 4, !tbaa !659
  %.val1.i.i.i.i.i99 = load float, ptr %.sroa.03.0.i.i.i.i95, align 4, !tbaa !659
  %i.abw = fcmp olt float %.val.i.i.i.i.i98, %.val1.i.i.i.i.i99
  br i1 %i.abw, label %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i, label %.preheader.i.i.i.i94, !llvm.loop !3922

_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i: ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  call void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %21)
  %i.abx = load ptr, ptr %21, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.aby = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abx, ptr noundef nonnull @.str.281, i64 noundef 64)
          to label %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i100 unwind label %bb.eb ; 0 uses

_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i100:    ; preds = %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i
  %i.abz = load ptr, ptr %i.abx, align 8, !tbaa !421
  %i.aca = getelementptr i8, ptr %i.abz, i64 -24
  %i.acb = load i64, ptr %i.aca, align 8
  %i.acc = getelementptr inbounds i8, ptr %i.abx, i64 %i.acb
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 240
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i88.i101 = icmp eq ptr %i.ace, null
  br i1 %.not.i.i.i88.i101, label %bb.dy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i102

bb.dy:                                            ; preds = %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i100
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc93.i109 unwind label %bb.eb

.noexc93.i109:                                    ; preds = %bb.dy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i102: ; preds = %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i100
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 56
  %i.acg = load i8, ptr %i.acf, align 8, !tbaa !491
  %.not.i1.i.i90.i103 = icmp eq i8 %i.acg, 0
  br i1 %.not.i1.i.i90.i103, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i102
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ace, i64 67
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i104

bb.ea:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i102
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ace)
          to label %.noexc94.i108 unwind label %bb.eb

.noexc94.i108:                                    ; preds = %bb.ea
  %i.acj = load ptr, ptr %i.ace, align 8, !tbaa !421
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 48
  %i.acl = load ptr, ptr %i.ack, align 8
  %i.acm = invoke noundef signext i8 %i.acl(ptr noundef nonnull align 8 dereferenceable(570) %i.ace, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i104 unwind label %bb.eb, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i104: ; preds = %.noexc94.i108, %bb.dz
  %.0.i.i.i92.i105 = phi i8 [ %i.aci, %bb.dz ], [ %i.acm, %.noexc94.i108 ]
  %i.acn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.abx, i8 noundef signext %.0.i.i.i92.i105)
          to label %.noexc96.i106 unwind label %bb.eb

.noexc96.i106:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i104
  %i.aco = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acn)
          to label %_ZNSolsEPFRSoS_E.exit74.i107 unwind label %bb.eb ; 0 uses

_ZNSolsEPFRSoS_E.exit74.i107:                     ; preds = %.noexc96.i106
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.eb:                                            ; preds = %.noexc96.i106, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i104, %.noexc94.i108, %bb.ea, %bb.dy, %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i
  %i.acp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %common.resume

.preheader.i.i.i75.i110:                          ; preds = %.preheader.i.i.i.i94, %bb.ec
  %.sroa.09.0.i.i.i.i111 = phi ptr [ %i.acq, %bb.ec ], [ %i.abs, %.preheader.i.i.i.i94 ] ; 5 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i111, i64 20 ; 3 uses
  %.not.i.i.i76.i112 = icmp eq ptr %i.acq, %i.abu
  br i1 %.not.i.i.i76.i112, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %bb.ec

bb.ec:                                            ; preds = %.preheader.i.i.i75.i110
  %.val.i.i.i.i77.i113 = load float, ptr %.sroa.09.0.i.i.i.i111, align 4, !tbaa !659
  %.val1.i.i.i.i78.i114 = load float, ptr %i.acq, align 4, !tbaa !659
  %i.acr = fcmp oeq float %.val.i.i.i.i77.i113, %.val1.i.i.i.i78.i114
  br i1 %i.acr, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i, label %.preheader.i.i.i75.i110, !llvm.loop !3923

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i: ; preds = %bb.ec
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i111, i64 40 ; 2 uses
  %.not19.i.i.i115 = icmp eq ptr %i.acs, %i.abu
  br i1 %.not19.i.i.i115, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i, label %.lr.ph.i.i.i116

.lr.ph.i.i.i116:                                  ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i, %bb.ee
  %i.act = phi ptr [ %i.acw, %bb.ee ], [ %i.acs, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.0.020.i.i.i117 = phi ptr [ %.sroa.0.1.i.i.i120, %bb.ee ], [ %.sroa.09.0.i.i.i.i111, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ] ; 3 uses
  %.val.i.i.i.i118 = load float, ptr %.sroa.0.020.i.i.i117, align 4, !tbaa !659
  %.val1.i.i.i.i119 = load float, ptr %i.act, align 4, !tbaa !659
  %i.acu = fcmp oeq float %.val.i.i.i.i118, %.val1.i.i.i.i119
  br i1 %i.acu, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i.i116
  %i.acv = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i117, i64 20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.acv, ptr noundef nonnull align 4 dereferenceable(20) %i.act, i64 20, i1 false), !tbaa.struct !663
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.lr.ph.i.i.i116
  %.sroa.0.1.i.i.i120 = phi ptr [ %.sroa.0.020.i.i.i117, %.lr.ph.i.i.i116 ], [ %i.acv, %bb.ed ] ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 20 ; 2 uses
  %.not.i.i79.i121 = icmp eq ptr %i.acw, %i.abu
  br i1 %.not.i.i79.i121, label %._crit_edge.i.i.loopexit.i122, label %.lr.ph.i.i.i116, !llvm.loop !3924

._crit_edge.i.i.loopexit.i122:                    ; preds = %bb.ee
  %.pre44.pre.i123 = load ptr, ptr %i.abt, align 8, !tbaa !656
  %.pre466.pre = load ptr, ptr %i.qm, align 8, !tbaa !656
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i: ; preds = %._crit_edge.i.i.loopexit.i122, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i
  %.pre466 = phi ptr [ %i.abs, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ], [ %.pre466.pre, %._crit_edge.i.i.loopexit.i122 ] ; 3 uses
  %.pre44.i124 = phi ptr [ %i.abu, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ], [ %.pre44.pre.i123, %._crit_edge.i.i.loopexit.i122 ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i125 = phi ptr [ %.sroa.09.0.i.i.i.i111, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i120, %._crit_edge.i.i.loopexit.i122 ]
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i125, i64 20 ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %.pre44.i124
  br i1 %i.acy, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S7_EESC_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S7_EESC_.exit.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i
  %i.acz = ptrtoint ptr %i.acx to i64
  %i.ada = ptrtoint ptr %.pre466 to i64
  %i.adb = sub i64 %i.acz, %i.ada
  %i.adc = getelementptr inbounds i8, ptr %.pre466, i64 %i.adb
  store ptr %i.adc, ptr %i.abt, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  call void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %22)
  %i.add = load ptr, ptr %22, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.ade = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.add, ptr noundef nonnull @.str.282, i64 noundef 130)
          to label %_ZN3ozz3log6LoggerlsIA131_cEERSoRKT_.exit.i126 unwind label %bb.ei ; 0 uses

_ZN3ozz3log6LoggerlsIA131_cEERSoRKT_.exit.i126:   ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S7_EESC_.exit.i
  %i.adf = load ptr, ptr %i.add, align 8, !tbaa !421
  %i.adg = getelementptr i8, ptr %i.adf, i64 -24
  %i.adh = load i64, ptr %i.adg, align 8
  %i.adi = getelementptr inbounds i8, ptr %i.add, i64 %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 240
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i99.i127 = icmp eq ptr %i.adk, null
  br i1 %.not.i.i.i99.i127, label %bb.ef, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100.i128

bb.ef:                                            ; preds = %_ZN3ozz3log6LoggerlsIA131_cEERSoRKT_.exit.i126
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc104.i135 unwind label %bb.ei

.noexc104.i135:                                   ; preds = %bb.ef
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100.i128: ; preds = %_ZN3ozz3log6LoggerlsIA131_cEERSoRKT_.exit.i126
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 56
  %i.adm = load i8, ptr %i.adl, align 8, !tbaa !491
  %.not.i1.i.i101.i129 = icmp eq i8 %i.adm, 0
  br i1 %.not.i1.i.i101.i129, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100.i128
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 67
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i130

bb.eh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100.i128
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.adk)
          to label %.noexc105.i134 unwind label %bb.ei

.noexc105.i134:                                   ; preds = %bb.eh
  %i.adp = load ptr, ptr %i.adk, align 8, !tbaa !421
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 48
  %i.adr = load ptr, ptr %i.adq, align 8
  %i.ads = invoke noundef signext i8 %i.adr(ptr noundef nonnull align 8 dereferenceable(570) %i.adk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i130 unwind label %bb.ei, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i130: ; preds = %.noexc105.i134, %bb.eg
  %.0.i.i.i103.i131 = phi i8 [ %i.ado, %bb.eg ], [ %i.ads, %.noexc105.i134 ]
  %i.adt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.add, i8 noundef signext %.0.i.i.i103.i131)
          to label %.noexc107.i132 unwind label %bb.ei

.noexc107.i132:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i130
  %i.adu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adt)
          to label %_ZNSolsEPFRSoS_E.exit82.i133 unwind label %bb.ei ; 0 uses

_ZNSolsEPFRSoS_E.exit82.i133:                     ; preds = %.noexc107.i132
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  %.pre465 = load ptr, ptr %i.qm, align 8, !tbaa !656
  %.pre467 = load ptr, ptr %i.abt, align 8, !tbaa !656
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.ei:                                            ; preds = %.noexc107.i132, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102.i130, %.noexc105.i134, %bb.eh, %bb.ef, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S7_EESC_.exit.i
  %i.adv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  br label %common.resume

_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit: ; preds = %.preheader.i.i.i75.i110, %_ZNSolsEPFRSoS_E.exit82.i133, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i
  %i.adw = phi ptr [ %.pre44.i124, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i ], [ %.pre467, %_ZNSolsEPFRSoS_E.exit82.i133 ], [ %i.abu, %.preheader.i.i.i75.i110 ] ; 2 uses
  %i.adx = phi ptr [ %.pre466, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i ], [ %.pre465, %_ZNSolsEPFRSoS_E.exit82.i133 ], [ %i.abs, %.preheader.i.i.i75.i110 ] ; 2 uses
  %.not416 = icmp eq ptr %i.adx, %i.adw
  br i1 %.not416, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, %.lr.ph
  %.sroa.0324.0417 = phi ptr [ %i.aeo, %.lr.ph ], [ %i.adx, %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit ] ; 3 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %.sroa.0324.0417, i64 4 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.0324.0417, i64 12 ; 2 uses
  %i.aea = load <2 x float>, ptr %i.adz, align 4, !tbaa !653 ; 3 uses
  %i.aeb = extractelement <2 x float> %i.aea, i64 0 ; 2 uses
  %i.aec = extractelement <2 x float> %i.aea, i64 1 ; 2 uses
  %i.aed = load <2 x float>, ptr %i.ady, align 4, !tbaa !653 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aed, %i.aed
  %i.aee = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aef = extractelement <2 x float> %i.aed, i64 0 ; 2 uses
  %i.aeg = call float @llvm.fmuladd.f32(float %i.aef, float %i.aef, float %i.aee)
  %i.aeh = call float @llvm.fmuladd.f32(float %i.aeb, float %i.aeb, float %i.aeg)
  %i.aei = call float @llvm.fmuladd.f32(float %i.aec, float %i.aec, float %i.aeh)
  %sqrt = call float @llvm.sqrt.f32(float %i.aei)
  %i.aej = fdiv float 1.000000e+00, %sqrt
  %i.aek = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.ael = shufflevector <2 x float> %i.aek, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aem = fmul <2 x float> %i.aed, %i.ael
  %i.aen = fmul <2 x float> %i.aea, %i.ael
  store <2 x float> %i.aem, ptr %i.ady, align 4
  store <2 x float> %i.aen, ptr %i.adz, align 4
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.0324.0417, i64 20 ; 2 uses
  %.not = icmp eq ptr %i.aeo, %i.adw
  br i1 %.not, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %.lr.ph

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit183: ; preds = %bb.o
  %.pre464 = load ptr, ptr %3, align 8, !tbaa !89
  %bcmp.i182 = tail call i32 @bcmp(ptr %.pre464, ptr nonnull @.str.187, i64 %i.co)
  %i.aep = icmp eq i32 %bcmp.i182, 0
  br i1 %i.aep, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit183.thread, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit183.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit183
  %i.aeq = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 14 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.val45 = load ptr, ptr %i.aer, align 8         ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.val46 = load ptr, ptr %i.aes, align 8         ; 3 uses
  switch i64 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i187 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i299
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i275
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i184
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i299: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit183.thread
  %i.aet = load ptr, ptr %i.a, align 8, !tbaa !89 ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 1
  %i.aev = xor i32 %i.aeu, 1162758476
  %i.aew = getelementptr i8, ptr %i.aet, i64 4
  %i.aex = load i16, ptr %i.aew, align 1
  %i.aey = zext i16 %i.aex to i32
  %i.aez = xor i32 %i.aey, 21057
  %i.afa = or i32 %i.aev, %i.aez
  %i.afb = icmp ne i32 %i.afa, 0
  %i.afc = zext i1 %i.afb to i32
  %i.afd = icmp eq i32 %i.afc, 0
  br i1 %i.afd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i301, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i187

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i301: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i299
  %i.afe = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 4 uses
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !126 ; 3 uses
  %i.afg = icmp eq i64 %i.aff, 0
  br i1 %i.afg, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i301
  %i.afh = load ptr, ptr %i.aeq, align 8, !tbaa !675 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !667
  %.not.i.i.i.i318 = icmp eq ptr %i.afj, %i.afh
  br i1 %.not.i.i.i.i318, label %.loopexit.i229, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  store ptr %i.afh, ptr %i.afi, align 8, !tbaa !667
  br label %.loopexit.i229

bb.el:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i301
  %i.afk = tail call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_110BufferViewIN3ozz4math6Float3EEENS1_4spanIKT_EERKN8tinygltf5ModelERKNS8_8AccessorE(ptr readonly %.val45, ptr readonly %.val46, ptr noundef nonnull readonly align 8 dereferenceable(1216) %i.al) ; 2 uses
  %i.afl = extractvalue { ptr, i64 } %i.afk, 0
  %i.afm = extractvalue { ptr, i64 } %i.afk, 1
  %i.afn = mul i64 %i.afm, 12
  %i.afo = udiv i64 %i.afn, 12
  %.not.i.i302 = icmp eq i64 %i.afo, %i.aff
  %.not21.i.i313 = icmp eq i64 %i.cl, %i.aff
  %or.cond367 = and i1 %.not21.i.i313, %.not.i.i302
  br i1 %or.cond367, label %bb.er, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %10)
  %i.afp = load ptr, ptr %10, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.afq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afp, ptr noundef nonnull @.str.283, i64 noundef 47)
          to label %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i.i303 unwind label %bb.eq ; 0 uses

_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i.i303:  ; preds = %bb.em
  %i.afr = load ptr, ptr %i.afp, align 8, !tbaa !421
  %i.afs = getelementptr i8, ptr %i.afr, i64 -24
  %i.aft = load i64, ptr %i.afs, align 8
  %i.afu = getelementptr inbounds i8, ptr %i.afp, i64 %i.aft
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 240
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i.i.i304 = icmp eq ptr %i.afw, null
  br i1 %.not.i.i.i.i.i304, label %bb.en, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i305

bb.en:                                            ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i.i303
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc.i.i312 unwind label %bb.eq

.noexc.i.i312:                                    ; preds = %bb.en
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i305: ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i.i303
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 56
  %i.afy = load i8, ptr %i.afx, align 8, !tbaa !491
  %.not.i1.i.i.i.i306 = icmp eq i8 %i.afy, 0
  br i1 %.not.i1.i.i.i.i306, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i305
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 67
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i307

bb.ep:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i305
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.afw)
          to label %.noexc23.i.i311 unwind label %bb.eq

.noexc23.i.i311:                                  ; preds = %bb.ep
  %i.agb = load ptr, ptr %i.afw, align 8, !tbaa !421
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 48
  %i.agd = load ptr, ptr %i.agc, align 8
  %i.age = invoke noundef signext i8 %i.agd(ptr noundef nonnull align 8 dereferenceable(570) %i.afw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i307 unwind label %bb.eq, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i307: ; preds = %.noexc23.i.i311, %bb.eo
  %.0.i.i.i.i.i308 = phi i8 [ %i.aga, %bb.eo ], [ %i.age, %.noexc23.i.i311 ]
  %i.agf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.afp, i8 noundef signext %.0.i.i.i.i.i308)
          to label %.noexc25.i.i309 unwind label %bb.eq

.noexc25.i.i309:                                  ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i307
  %i.agg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agf)
          to label %_ZNSolsEPFRSoS_E.exit.i.i310 unwind label %bb.eq ; 0 uses

_ZNSolsEPFRSoS_E.exit.i.i310:                     ; preds = %.noexc25.i.i309
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.eq:                                            ; preds = %.noexc25.i.i309, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i307, %.noexc23.i.i311, %bb.ep, %bb.en, %bb.em
  %i.agh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %common.resume

bb.er:                                            ; preds = %bb.el
  %i.agi = load i64, ptr %i.afe, align 8, !tbaa !126
  tail call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aeq, i64 noundef %i.agi)
  %i.agj = load i64, ptr %i.afe, align 8, !tbaa !126
  %.not2.i.i314 = icmp eq i64 %i.agj, 0
  br i1 %.not2.i.i314, label %.loopexit.i229, label %.lr.ph.i.i315

.lr.ph.i.i315:                                    ; preds = %bb.er
  %i.agk = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.agl = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %6, i64 64
  br label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i, %.lr.ph.i.i315
  %.01.i.i316 = phi i64 [ 0, %.lr.ph.i.i315 ], [ %i.agu, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.01.i.i316
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !653
  store float %i.ago, ptr %11, align 4, !tbaa !3942
  %i.agp = getelementptr inbounds nuw [12 x i8], ptr %i.afl, i64 %.01.i.i316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.agk, ptr noundef nonnull align 4 dereferenceable(12) %i.agp, i64 12, i1 false), !tbaa.struct !3935
  %i.agq = load ptr, ptr %i.agl, align 8, !tbaa !667 ; 3 uses
  %i.agr = load ptr, ptr %i.agm, align 8, !tbaa !668
  %.not.i.i.i317 = icmp eq ptr %i.agq, %i.agr
  br i1 %.not.i.i.i317, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agq, ptr noundef nonnull align 4 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !654
  %i.ags = load ptr, ptr %i.agl, align 8, !tbaa !667
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  store ptr %i.agt, ptr %i.agl, align 8, !tbaa !667
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i

bb.eu:                                            ; preds = %bb.es
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aeq, ptr %i.agq, ptr noundef nonnull align 4 dereferenceable(16) %11)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i: ; preds = %bb.eu, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.agu = add nuw i64 %.01.i.i316, 1             ; 2 uses
  %i.agv = load i64, ptr %i.afe, align 8, !tbaa !126
  %i.agw = icmp ult i64 %i.agu, %i.agv
  br i1 %i.agw, label %bb.es, label %.loopexit.i229, !llvm.loop !3925

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i275: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit183.thread
  %.pre.i276 = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.agx = load i32, ptr %.pre.i276, align 1
  %i.agy = icmp ne i32 %i.agx, 1346720851
  %i.agz = zext i1 %i.agy to i32
  %i.aha = icmp eq i32 %i.agz, 0
  br i1 %i.aha, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread.i278, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i187

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread.i278: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i275
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 4 uses
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !126 ; 3 uses
  %i.ahd = icmp eq i64 %i.ahc, 0
  br i1 %i.ahd, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread.i278
  %i.ahe = load ptr, ptr %i.aeq, align 8, !tbaa !675 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !667
  %.not.i.i.i55.i298 = icmp eq ptr %i.ahg, %i.ahe
  br i1 %.not.i.i.i55.i298, label %.loopexit.i229, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.ahe, ptr %i.ahf, align 8, !tbaa !667
  br label %.loopexit.i229

end_hunk_3
begin_hunk_4_@_ZN12GltfImporter22SampleAnimationChannelERKN8tinygltf5ModelERKNS0_16AnimationSamplerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfPfPN3ozz9animation7offline12RawAnimation10JointTrackE:bb.a
  %i.aip = sub nuw nsw i64 %i.aig, %i.ain
  tail call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aeq, i64 noundef %i.aip)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.aiq = icmp ult i64 %i.aig, %i.ain
  br i1 %i.aiq, label %bb.fg, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

bb.fg:                                            ; preds = %bb.ff
  %i.air = getelementptr inbounds nuw [16 x i8], ptr %i.aij, i64 %i.aig ; 2 uses
  %.not.i.i36.i.i297 = icmp eq ptr %i.aii, %i.air
  br i1 %.not.i.i36.i.i297, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  store ptr %i.air, ptr %i.aih, align 8, !tbaa !667
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i: ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fe
  %i.ais = load i64, ptr %i.ahb, align 8, !tbaa !126
  %.not8.i.i291 = icmp eq i64 %i.ais, 0
  br i1 %.not8.i.i291, label %.loopexit.i229, label %.lr.ph.i54.i292

.lr.ph.i54.i292:                                  ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, %bb.fl
  %.0327.i.i293 = phi i64 [ %i.ajv, %bb.fl ], [ 0, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i ] ; 5 uses
  %i.ait = shl i64 %.0327.i.i293, 1               ; 4 uses
  %i.aiu = load ptr, ptr %i.aih, align 8, !tbaa !667
  %i.aiv = load ptr, ptr %i.aeq, align 8, !tbaa !675 ; 2 uses
  %i.aiw = ptrtoint ptr %i.aiu to i64
  %i.aix = ptrtoint ptr %i.aiv to i64
  %i.aiy = sub i64 %i.aiw, %i.aix
  %i.aiz = ashr exact i64 %i.aiy, 4               ; 2 uses
  %.not.i.i37.i.i294 = icmp ult i64 %i.ait, %i.aiz
  br i1 %.not.i.i37.i.i294, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i54.i292
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %i.ait, i64 noundef %i.aiz) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i: ; preds = %.lr.ph.i54.i292
  %i.aja = getelementptr inbounds nuw [16 x i8], ptr %i.aiv, i64 %i.ait ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0327.i.i293 ; 2 uses
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !653
  store float %i.ajc, ptr %i.aja, align 4, !tbaa !3942
  %i.ajd = getelementptr inbounds nuw [12 x i8], ptr %i.ahi, i64 %.0327.i.i293 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aje, ptr noundef nonnull align 4 dereferenceable(12) %i.ajd, i64 12, i1 false), !tbaa.struct !3935
  %i.ajf = load i64, ptr %i.ahb, align 8, !tbaa !126 ; 2 uses
  %i.ajg = add i64 %i.ajf, -1
  %i.ajh = icmp ult i64 %.0327.i.i293, %i.ajg
  br i1 %i.ajh, label %bb.fj, label %bb.fl

bb.fj:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i
  %i.aji = or disjoint i64 %i.ait, 1              ; 3 uses
  %i.ajj = load ptr, ptr %i.aih, align 8, !tbaa !667
  %i.ajk = load ptr, ptr %i.aeq, align 8, !tbaa !675 ; 2 uses
  %i.ajl = ptrtoint ptr %i.ajj to i64
  %i.ajm = ptrtoint ptr %i.ajk to i64
  %i.ajn = sub i64 %i.ajl, %i.ajm
  %i.ajo = ashr exact i64 %i.ajn, 4               ; 2 uses
  %.not.i.i38.i.i295 = icmp ult i64 %i.aji, %i.ajo
  br i1 %.not.i.i38.i.i295, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %i.aji, i64 noundef %i.ajo) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i: ; preds = %bb.fj
  %i.ajp = getelementptr inbounds nuw [16 x i8], ptr %i.ajk, i64 %i.aji ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !653
  %i.ajs = tail call float @nexttowardf(float noundef %i.ajr, x86_fp80 noundef 0.000000e+00) #41
  store float %i.ajs, ptr %i.ajp, align 4, !tbaa !3942
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajp, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajt, ptr noundef nonnull align 4 dereferenceable(12) %i.ajd, i64 12, i1 false), !tbaa.struct !3935
  %.pre.i.i296 = load i64, ptr %i.ahb, align 8, !tbaa !126
  br label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i
  %i.aju = phi i64 [ %.pre.i.i296, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit39.i.i ], [ %i.ajf, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i.i ]
  %i.ajv = add nuw i64 %.0327.i.i293, 1           ; 2 uses
  %i.ajw = icmp ult i64 %i.ajv, %i.aju
  br i1 %i.ajw, label %.lr.ph.i54.i292, label %.loopexit.i229, !llvm.loop !3926

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i184: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit183.thread
  %.pre43.i185 = load ptr, ptr %i.a, align 8, !tbaa !89 ; 2 uses
  %i.ajx = load i64, ptr %.pre43.i185, align 1
  %i.ajy = xor i64 %i.ajx, 5498986693476373827
  %i.ajz = getelementptr i8, ptr %.pre43.i185, i64 3
  %i.aka = load i64, ptr %i.ajz, align 1
  %i.akb = xor i64 %i.aka, 4994009628914434889
  %i.akc = or i64 %i.ajy, %i.akb
  %i.akd = icmp ne i64 %i.akc, 0
  %i.ake = zext i1 %i.akd to i32
  %i.akf = icmp eq i32 %i.ake, 0
  br i1 %i.akf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i203, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i187

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i203: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i184
  %i.akg = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !126 ; 2 uses
  %i.aki = icmp ult i64 %i.akh, 3
  br i1 %i.aki, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i203
  %i.akj = load ptr, ptr %i.aeq, align 8, !tbaa !675 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !667
  %.not.i.i.i72.i274 = icmp eq ptr %i.akl, %i.akj
  br i1 %.not.i.i.i72.i274, label %.loopexit.i229, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  store ptr %i.akj, ptr %i.akk, align 8, !tbaa !667
  br label %.loopexit.i229

bb.fo:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread.i203
  %i.akm = udiv i64 %i.akh, 3                     ; 2 uses
  %i.akn = tail call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_110BufferViewIN3ozz4math6Float3EEENS1_4spanIKT_EERKN8tinygltf5ModelERKNS8_8AccessorE(ptr readonly %.val45, ptr readonly %.val46, ptr noundef nonnull readonly align 8 dereferenceable(1216) %i.al) ; 2 uses
  %i.ako = extractvalue { ptr, i64 } %i.akn, 0    ; 2 uses
  %i.akp = extractvalue { ptr, i64 } %i.akn, 1
  %i.akq = mul i64 %i.akp, 12
  %i.akr = udiv i64 %i.akq, 36
  %.not.i58.i204 = icmp eq i64 %i.akr, %i.akm
  %.not59.i.i215 = icmp eq i64 %i.cl, %i.akm
  %or.cond369 = and i1 %.not59.i.i215, %.not.i58.i204
  br i1 %or.cond369, label %bb.fu, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %7)
  %i.aks = load ptr, ptr %7, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.akt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aks, ptr noundef nonnull @.str.283, i64 noundef 47)
          to label %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i205 unwind label %bb.ft ; 0 uses

_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i205: ; preds = %bb.fp
  %i.aku = load ptr, ptr %i.aks, align 8, !tbaa !421
  %i.akv = getelementptr i8, ptr %i.aku, i64 -24
  %i.akw = load i64, ptr %i.akv, align 8
  %i.akx = getelementptr inbounds i8, ptr %i.aks, i64 %i.akw
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 240
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i.i60.i206 = icmp eq ptr %i.akz, null
  br i1 %.not.i.i.i.i60.i206, label %bb.fq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i207

bb.fq:                                            ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i205
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc.i67.i214 unwind label %bb.ft

.noexc.i67.i214:                                  ; preds = %bb.fq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i207: ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit.i59.i205
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 56
  %i.alb = load i8, ptr %i.ala, align 8, !tbaa !491
  %.not.i1.i.i.i62.i208 = icmp eq i8 %i.alb, 0
  br i1 %.not.i1.i.i.i62.i208, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i207
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akz, i64 67
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i209

bb.fs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i61.i207
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.akz)
          to label %.noexc68.i.i213 unwind label %bb.ft

.noexc68.i.i213:                                  ; preds = %bb.fs
  %i.ale = load ptr, ptr %i.akz, align 8, !tbaa !421
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 48
  %i.alg = load ptr, ptr %i.alf, align 8
  %i.alh = invoke noundef signext i8 %i.alg(ptr noundef nonnull align 8 dereferenceable(570) %i.akz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i209 unwind label %bb.ft, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i209: ; preds = %.noexc68.i.i213, %bb.fr
  %.0.i.i.i.i64.i210 = phi i8 [ %i.ald, %bb.fr ], [ %i.alh, %.noexc68.i.i213 ]
  %i.ali = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aks, i8 noundef signext %.0.i.i.i.i64.i210)
          to label %.noexc70.i.i211 unwind label %bb.ft

.noexc70.i.i211:                                  ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i209
  %i.alj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ali)
          to label %_ZNSolsEPFRSoS_E.exit.i65.i212 unwind label %bb.ft ; 0 uses

_ZNSolsEPFRSoS_E.exit.i65.i212:                   ; preds = %.noexc70.i.i211
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.ft:                                            ; preds = %.noexc70.i.i211, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i63.i209, %.noexc68.i.i213, %bb.fs, %bb.fq, %bb.fp
  %i.alk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %common.resume

bb.fu:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.all = getelementptr [4 x i8], ptr %i.cj, i64 %i.cl
  %i.alm = getelementptr i8, ptr %i.all, i64 -4
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !653
  %i.alo = load float, ptr %i.cj, align 4, !tbaa !653
  %i.alp = fsub float %i.aln, %i.alo
  call void @_ZN3ozz9animation7offline21FixedRateSamplingTimeC1Eff(ptr noundef nonnull align 8 dereferenceable(16) %8, float noundef %i.alp, float noundef %4)
  %i.alq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !3937 ; 7 uses
  %i.als = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !667 ; 2 uses
  %i.alu = load ptr, ptr %i.aeq, align 8, !tbaa !675 ; 2 uses
  %i.alv = ptrtoint ptr %i.alt to i64
  %i.alw = ptrtoint ptr %i.alu to i64
  %i.alx = sub i64 %i.alv, %i.alw
  %i.aly = ashr exact i64 %i.alx, 4               ; 3 uses
  %i.alz = icmp ugt i64 %i.alr, %i.aly
  br i1 %i.alz, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.ama = sub nuw i64 %i.alr, %i.aly
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aeq, i64 noundef %i.ama)
  %.pre.i71.i273 = load i64, ptr %i.alq, align 8, !tbaa !3937
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

bb.fw:                                            ; preds = %bb.fu
  %i.amb = icmp ult i64 %i.alr, %i.aly
  br i1 %i.amb, label %bb.fx, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

bb.fx:                                            ; preds = %bb.fw
  %i.amc = getelementptr inbounds nuw [16 x i8], ptr %i.alu, i64 %i.alr ; 2 uses
  %.not.i.i66.i.i272 = icmp eq ptr %i.alt, %i.amc
  br i1 %.not.i.i66.i.i272, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  store ptr %i.amc, ptr %i.als, align 8, !tbaa !667
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i: ; preds = %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %i.amd = phi i64 [ %.pre.i71.i273, %bb.fv ], [ %i.alr, %bb.fw ], [ %i.alr, %bb.fx ], [ %i.alr, %bb.fy ]
  %.not20.i.i216 = icmp eq i64 %i.amd, 0
  br i1 %.not20.i.i216, label %._crit_edge.i.i228, label %.lr.ph.i69.i217

.lr.ph.i69.i217:                                  ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i
  %i.ame = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.fz

._crit_edge.i.i228:                               ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %.loopexit.i229

bb.fz:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, %.lr.ph.i69.i217
  %.05419.i.i218 = phi i64 [ 0, %.lr.ph.i69.i217 ], [ %.155.i.i220, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i ]
  %.05618.i.i219 = phi i64 [ 0, %.lr.ph.i69.i217 ], [ %i.apa, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i ] ; 5 uses
  %i.amf = uitofp i64 %.05618.i.i219 to float
  %i.amg = load float, ptr %i.ame, align 4, !tbaa !3938
  %i.amh = fmul float %i.amg, %i.amf              ; 2 uses
  %i.ami = load float, ptr %8, align 8, !tbaa !3939 ; 2 uses
  %i.amj = fcmp olt float %i.amh, %i.ami
  %i.amk = select i1 %i.amj, float %i.amh, float %i.ami
  %i.aml = load float, ptr %i.cj, align 4, !tbaa !653
  %i.amm = fadd float %i.aml, %i.amk              ; 3 uses
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ga, %bb.fz
  %.155.i.i220 = phi i64 [ %.05419.i.i218, %bb.fz ], [ %i.amn, %bb.ga ] ; 4 uses
  %i.amn = add i64 %.155.i.i220, 1                ; 3 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.amn
  %i.amp = load float, ptr %i.amo, align 4, !tbaa !653 ; 2 uses
  %i.amq = fcmp olt float %i.amp, %i.amm
  br i1 %i.amq, label %bb.ga, label %bb.gb, !llvm.loop !3927

bb.gb:                                            ; preds = %bb.ga
  %49 = load ptr, ptr %i.als, align 8, !tbaa !667
  %50 = load ptr, ptr %i.aeq, align 8, !tbaa !675 ; 2 uses
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = ashr exact i64 %53, 4                     ; 2 uses
  %.not.i.i67.i.i221 = icmp ult i64 %.05618.i.i219, %54
  br i1 %.not.i.i67.i.i221, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.284, i64 noundef %.05618.i.i219, i64 noundef %54) #44
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE2atEm.exit.i70.i: ; preds = %bb.gb
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.155.i.i220
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !653 ; 2 uses
  %i.amt = fsub float %i.amm, %i.ams
  %i.amu = fsub float %i.amp, %i.ams              ; 4 uses
  %i.amv = fdiv float %i.amt, %i.amu              ; 4 uses
  %i.amw = fmul float %i.amv, %i.amv              ; 4 uses
  %i.amx = fmul float %i.amv, %i.amw              ; 4 uses
  %i.amy = fmul float %i.amw, 3.000000e+00        ; 2 uses
  %i.amz = fneg float %i.amy
  %.idx.i.i222 = mul i64 %.155.i.i220, 36
  %i.ana = getelementptr i8, ptr %i.ako, i64 %.idx.i.i222 ; 4 uses
  %i.anb = getelementptr i8, ptr %i.ana, i64 12
  %i.anc = getelementptr i8, ptr %i.ana, i64 24
  %i.and = call float @llvm.fmuladd.f32(float %i.amx, float -2.000000e+00, float %i.amy) ; 2 uses
  %.idx36.i.i223 = mul i64 %i.amn, 36
  %i.ane = getelementptr i8, ptr %i.ako, i64 %.idx36.i.i223 ; 4 uses
  %i.anf = getelementptr i8, ptr %i.ane, i64 12
  %i.ang = fsub float %i.amx, %i.amw              ; 2 uses
  %i.anh = call float @llvm.fmuladd.f32(float %i.amx, float 2.000000e+00, float %i.amz)
  %i.ani = fadd float %i.anh, 1.000000e+00        ; 2 uses
  %i.anj = call float @llvm.fmuladd.f32(float %i.amw, float -2.000000e+00, float %i.amx)
  %i.ank = fadd float %i.amv, %i.anj              ; 2 uses
  %i.anl = load <2 x float>, ptr %i.anb, align 4, !tbaa !653
  %i.anm = insertelement <2 x float> poison, float %i.ani, i64 0
  %i.ann = shufflevector <2 x float> %i.anm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ano = fmul <2 x float> %i.anl, %i.ann
  %i.anp = load <2 x float>, ptr %i.anc, align 4, !tbaa !653
  %i.anq = insertelement <2 x float> poison, float %i.amu, i64 0
  %i.anr = shufflevector <2 x float> %i.anq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ans = fmul <2 x float> %i.anr, %i.anp
  %i.ant = insertelement <2 x float> poison, float %i.ank, i64 0
  %i.anu = shufflevector <2 x float> %i.ant, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anv = fmul <2 x float> %i.ans, %i.anu
  %i.anw = fadd <2 x float> %i.ano, %i.anv
  %i.anx = load <2 x float>, ptr %i.anf, align 4, !tbaa !653
  %i.any = insertelement <2 x float> poison, float %i.and, i64 0
  %i.anz = shufflevector <2 x float> %i.any, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoa = fmul <2 x float> %i.anx, %i.anz
  %i.aob = fadd <2 x float> %i.aoa, %i.anw
  %i.aoc = load <2 x float>, ptr %i.ane, align 4, !tbaa !653
  %i.aod = fmul <2 x float> %i.anr, %i.aoc
  %i.aoe = insertelement <2 x float> poison, float %i.ang, i64 0
  %i.aof = shufflevector <2 x float> %i.aoe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aog = fmul <2 x float> %i.aof, %i.aod
  %i.aoh = fadd <2 x float> %i.aog, %i.aob
  %i.aoi = getelementptr i8, ptr %i.ana, i64 20
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !3940
  %i.aok = fmul float %i.ani, %i.aoj
  %i.aol = getelementptr i8, ptr %i.ana, i64 32
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !3940
  %i.aon = fmul float %i.amu, %i.aom
  %i.aoo = fmul float %i.ank, %i.aon
  %i.aop = fadd float %i.aok, %i.aoo
  %i.aoq = getelementptr i8, ptr %i.ane, i64 20
  %i.aor = load float, ptr %i.aoq, align 4, !tbaa !3940
  %i.aos = fmul float %i.and, %i.aor
  %i.aot = fadd float %i.aos, %i.aop
  %i.aou = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !3940
  %i.aow = fmul float %i.amu, %i.aov
  %i.aox = fmul float %i.ang, %i.aow
  %i.aoy = fadd float %i.aot, %i.aox
  %i.aoz = getelementptr inbounds nuw [16 x i8], ptr %50, i64 %.05618.i.i219 ; 3 uses
  store float %i.amm, ptr %i.aoz, align 4, !tbaa !653
  %.sroa.4.0..sroa_idx4.i.i226 = getelementptr inbounds nuw i8, ptr %i.aoz, i64 4
  store <2 x float> %i.aoh, ptr %.sroa.4.0..sroa_idx4.i.i226, align 4
  %.sroa.7.0..sroa_idx.i.i227 = getelementptr inbounds nuw i8, ptr %i.aoz, i64 12
  store float %i.aoy, ptr %.sroa.7.0..sroa_idx.i.i227, align 4, !tbaa !653
  %i.apa = add nuw i64 %.05618.i.i219, 1          ; 2 uses
  %55 = load i64, ptr %i.alq, align 8, !tbaa !3937
  %56 = icmp ult i64 %i.apa, %55
  br i1 %56, label %bb.fz, label %._crit_edge.i.i228, !llvm.loop !3928

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i187: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.i184, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.i275, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i299, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit183.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %12)
  %i.apb = load ptr, ptr %12, align 8, !tbaa !614, !nonnull !136, !align !563 ; 2 uses
  %i.apc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apb, ptr noundef nonnull @.str.279, i64 noundef 39)
          to label %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i190 unwind label %bb.gg ; 0 uses

_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i190:    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i187
  %i.apd = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.ape = load i64, ptr %i.b, align 8, !tbaa !129
  %i.apf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apb, ptr noundef %i.apd, i64 noundef %i.ape)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i191 unwind label %bb.gg ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i191: ; preds = %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i190
  %i.apg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apf, ptr noundef nonnull @.str.280, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i192 unwind label %bb.gg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i192: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i191
  %i.aph = load ptr, ptr %i.apf, align 8, !tbaa !421
  %i.api = getelementptr i8, ptr %i.aph, i64 -24
  %i.apj = load i64, ptr %i.api, align 8
  %i.apk = getelementptr inbounds i8, ptr %i.apf, i64 %i.apj
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 240
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i83.i193 = icmp eq ptr %i.apm, null
  br i1 %.not.i.i.i83.i193, label %bb.gd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i194

bb.gd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i192
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc.i202 unwind label %bb.gg

.noexc.i202:                                      ; preds = %bb.gd
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i194: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i192
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 56
  %i.apo = load i8, ptr %i.apn, align 8, !tbaa !491
  %.not.i1.i.i.i195 = icmp eq i8 %i.apo, 0
  br i1 %.not.i1.i.i.i195, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i194
  %i.app = getelementptr inbounds nuw i8, ptr %i.apm, i64 67
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i196

bb.gf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i194
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.apm)
          to label %.noexc84.i201 unwind label %bb.gg

.noexc84.i201:                                    ; preds = %bb.gf
  %i.apr = load ptr, ptr %i.apm, align 8, !tbaa !421
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 48
  %i.apt = load ptr, ptr %i.aps, align 8
  %i.apu = invoke noundef signext i8 %i.apt(ptr noundef nonnull align 8 dereferenceable(570) %i.apm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i196 unwind label %bb.gg, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i196: ; preds = %.noexc84.i201, %bb.ge
  %.0.i.i.i.i197 = phi i8 [ %i.apq, %bb.ge ], [ %i.apu, %.noexc84.i201 ]
  %i.apv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.apf, i8 noundef signext %.0.i.i.i.i197)
          to label %.noexc86.i198 unwind label %bb.gg

.noexc86.i198:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i196
  %i.apw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.apv)
          to label %_ZNSolsEPFRSoS_E.exit.i199 unwind label %bb.gg ; 0 uses

_ZNSolsEPFRSoS_E.exit.i199:                       ; preds = %.noexc86.i198
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.gg:                                            ; preds = %.noexc86.i198, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i196, %.noexc84.i201, %bb.gf, %bb.gd, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i191, %_ZN3ozz3log6LoggerlsIA40_cEERSoRKT_.exit.i190, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread8.i187
  %i.apx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %common.resume

.loopexit.i229:                                   ; preds = %bb.fl, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i.i, %._crit_edge.i.i228, %bb.fn, %bb.fm, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i.i, %bb.ew, %bb.ev, %bb.er, %bb.ek, %bb.ej
  %i.apy = load ptr, ptr %i.aeq, align 8, !tbaa !665 ; 3 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !665 ; 6 uses
  %i.aqb = icmp eq ptr %i.apy, %i.aqa
  br i1 %i.aqb, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %.preheader.i.i.i.i230

.preheader.i.i.i.i230:                            ; preds = %.loopexit.i229, %bb.gh
  %.sroa.03.0.i.i.i.i231 = phi ptr [ %.sroa.04.0.i.i.i.i232, %bb.gh ], [ %i.apy, %.loopexit.i229 ] ; 2 uses
  %.sroa.04.0.i.i.i.i232 = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i231, i64 16 ; 3 uses
  %.not.i.i.i73.i233 = icmp eq ptr %.sroa.04.0.i.i.i.i232, %i.aqa
  br i1 %.not.i.i.i73.i233, label %.preheader.i.i.i75.i246, label %bb.gh

bb.gh:                                            ; preds = %.preheader.i.i.i.i230
  %.val.i.i.i.i.i234 = load float, ptr %.sroa.04.0.i.i.i.i232, align 4, !tbaa !3942
  %.val1.i.i.i.i.i235 = load float, ptr %.sroa.03.0.i.i.i.i231, align 4, !tbaa !3942
  %i.aqc = fcmp olt float %.val.i.i.i.i.i234, %.val1.i.i.i.i.i235
  br i1 %i.aqc, label %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i, label %.preheader.i.i.i.i230, !llvm.loop !3929

_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i: ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %13)
  %i.aqd = load ptr, ptr %13, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.aqe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqd, ptr noundef nonnull @.str.281, i64 noundef 64)
          to label %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i236 unwind label %bb.gl ; 0 uses

_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i236:    ; preds = %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i
  %i.aqf = load ptr, ptr %i.aqd, align 8, !tbaa !421
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 -24
  %i.aqh = load i64, ptr %i.aqg, align 8
  %i.aqi = getelementptr inbounds i8, ptr %i.aqd, i64 %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 240
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i88.i237 = icmp eq ptr %i.aqk, null
  br i1 %.not.i.i.i88.i237, label %bb.gi, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i238

bb.gi:                                            ; preds = %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i236
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc93.i245 unwind label %bb.gl

.noexc93.i245:                                    ; preds = %bb.gi
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i238: ; preds = %_ZN3ozz3log6LoggerlsIA65_cEERSoRKT_.exit.i236
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 56
  %i.aqm = load i8, ptr %i.aql, align 8, !tbaa !491
  %.not.i1.i.i90.i239 = icmp eq i8 %i.aqm, 0
  br i1 %.not.i1.i.i90.i239, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i238
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 67
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i240

bb.gk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89.i238
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aqk)
          to label %.noexc94.i244 unwind label %bb.gl

.noexc94.i244:                                    ; preds = %bb.gk
  %i.aqp = load ptr, ptr %i.aqk, align 8, !tbaa !421
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 48
  %i.aqr = load ptr, ptr %i.aqq, align 8
  %i.aqs = invoke noundef signext i8 %i.aqr(ptr noundef nonnull align 8 dereferenceable(570) %i.aqk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i240 unwind label %bb.gl, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i240: ; preds = %.noexc94.i244, %bb.gj
  %.0.i.i.i92.i241 = phi i8 [ %i.aqo, %bb.gj ], [ %i.aqs, %.noexc94.i244 ]
  %i.aqt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aqd, i8 noundef signext %.0.i.i.i92.i241)
          to label %.noexc96.i242 unwind label %bb.gl

.noexc96.i242:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i240
  %i.aqu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aqt)
          to label %_ZNSolsEPFRSoS_E.exit74.i243 unwind label %bb.gl ; 0 uses

_ZNSolsEPFRSoS_E.exit74.i243:                     ; preds = %.noexc96.i242
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit

bb.gl:                                            ; preds = %.noexc96.i242, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91.i240, %.noexc94.i244, %bb.gk, %bb.gi, %_ZSt9is_sortedIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E_EbSZ_SZ_T0_.exit.i
  %i.aqv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %common.resume

.preheader.i.i.i75.i246:                          ; preds = %.preheader.i.i.i.i230, %bb.gm
  %.sroa.09.0.i.i.i.i247 = phi ptr [ %i.aqw, %bb.gm ], [ %i.apy, %.preheader.i.i.i.i230 ] ; 5 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i247, i64 16 ; 3 uses
  %.not.i.i.i76.i248 = icmp eq ptr %i.aqw, %i.aqa
  br i1 %.not.i.i.i76.i248, label %_ZN12_GLOBAL__N_113SampleChannelISt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS2_12StdAllocatorIS6_EEEEEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSA_8AccessorERKNS2_4spanIKfEEffPT_.exit, label %bb.gm

bb.gm:                                            ; preds = %.preheader.i.i.i75.i246
  %.val.i.i.i.i77.i249 = load float, ptr %.sroa.09.0.i.i.i.i247, align 4, !tbaa !3942
  %.val1.i.i.i.i78.i250 = load float, ptr %i.aqw, align 4, !tbaa !3942
  %i.aqx = fcmp oeq float %.val.i.i.i.i77.i249, %.val1.i.i.i.i78.i250
  br i1 %i.aqx, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i, label %.preheader.i.i.i75.i246, !llvm.loop !3930

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i: ; preds = %bb.gm
  %i.aqy = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i247, i64 32 ; 2 uses
  %.not19.i.i.i251 = icmp eq ptr %i.aqy, %i.aqa
  br i1 %.not19.i.i.i251, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSF_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S12_E0_ESZ_SZ_SZ_T0_.exit.i, label %.lr.ph.i.i.i252

.lr.ph.i.i.i252:                                  ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i, %bb.go
  %i.aqz = phi ptr [ %i.arc, %bb.go ], [ %i.aqy, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.0.020.i.i.i253 = phi ptr [ %.sroa.0.1.i.i.i256, %bb.go ], [ %.sroa.09.0.i.i.i.i247, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113SampleChannelISB_EEbRKN8tinygltf5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSH_8AccessorERKNS2_4spanIKfEEffPT_EUlRKS6_S14_E0_EEES11_S11_S11_T0_.exit.i.i.i ] ; 3 uses
  %.val.i.i.i.i254 = load float, ptr %.sroa.0.020.i.i.i253, align 4, !tbaa !3942
  %.val1.i.i.i.i255 = load float, ptr %i.aqz, align 4, !tbaa !3942
  %i.ara = fcmp oeq float %.val.i.i.i.i254, %.val1.i.i.i.i255
  br i1 %i.ara, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph.i.i.i252
  %i.arb = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i253, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.arb, ptr noundef nonnull align 4 dereferenceable(16) %i.aqz, i64 16, i1 false), !tbaa.struct !654
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %.lr.ph.i.i.i252
  %.sroa.0.1.i.i.i256 = phi ptr [ %.sroa.0.020.i.i.i253, %.lr.ph.i.i.i252 ], [ %i.arb, %bb.gn ] ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqz, i64 16 ; 2 uses
  %.not.i.i79.i257 = icmp eq ptr %i.arc, %i.aqa
  br i1 %.not.i.i79.i257, label %._crit_edge.i.i.loopexit.i258, label %.lr.ph.i.i.i252, !llvm.loop !3931

end_hunk_4
begin_hunk_5_@_ZN8nlohmann16json_abi_v3_11_36detail8to_charsIdEEPcS3_PKcT_:bb.a
  %i.l = load i32, ptr %i.b, align 4, !tbaa !385  ; 3 uses
  %i.m = add nsw i32 %i.l, %i.k                   ; 8 uses
  %.not.i = icmp slt i32 %i.l, 0
  %.not59.i = icmp sgt i32 %i.m, 15
  %or.cond61.i = select i1 %.not.i, i1 true, i1 %.not59.i
  br i1 %or.cond61.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds i8, ptr %.012, i64 %i.n
  %i.p = sext i32 %i.m to i64
  %i.q = zext nneg i32 %i.l to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 48, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.012, i64 %i.p ; 3 uses
  store i8 46, ptr %i.r, align 1, !tbaa !75
  %i.s = getelementptr i8, ptr %i.r, i64 1
  store i8 48, ptr %i.s, align 1, !tbaa !75
  %i.t = getelementptr i8, ptr %i.r, i64 2
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit

bb.g:                                             ; preds = %bb.e
  %i.u = icmp slt i32 %i.m, 1
  %i.v = add i32 %i.m, -16
  %or.cond62.i = icmp ult i32 %i.v, -15
  br i1 %or.cond62.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = zext nneg i32 %i.m to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = sext i32 %i.k to i64                     ; 2 uses
  %i.aa = sub nsw i64 %i.z, %i.w
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.x, i64 %i.aa, i1 false)
  store i8 46, ptr %i.x, align 1, !tbaa !75
  %i.ab = getelementptr i8, ptr %.012, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = add i32 %i.m, 3
  %or.cond.i = icmp ult i32 %i.ad, 4
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nsw i32 0, %i.m
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr i8, ptr %.012, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 2      ; 2 uses
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %.012, i64 %i.ai, i1 false)
  store i8 48, ptr %.012, align 1, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 46, ptr %i.aj, align 1, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %.012, i64 2
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 48, i64 %i.af, i1 false)
  %i.al = getelementptr i8, ptr %i.ah, i64 %i.ai
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit

bb.k:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.k, 1
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.012, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.012, i64 1 ; 2 uses
  %i.ap = sext i32 %i.k to i64                    ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ao, i64 %i.aq, i1 false)
  store i8 46, ptr %i.ao, align 1, !tbaa !75
  %i.ar = getelementptr i8, ptr %.012, i64 %i.ap
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi ptr [ %i.ar, %bb.l ], [ %.012, %bb.k ] ; 9 uses
  %.056.i = getelementptr i8, ptr %.pn.i, i64 1
  %i.as = getelementptr i8, ptr %.pn.i, i64 2
  store i8 101, ptr %.056.i, align 1, !tbaa !75
  %i.at = add nsw i32 %i.m, -1
  %storemerge.i.i = select i1 %i.u, i8 45, i8 43
  %.0.i.i = call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 6 uses
  %.023.i.i = getelementptr i8, ptr %.pn.i, i64 3 ; 3 uses
  store i8 %storemerge.i.i, ptr %i.as, align 1, !tbaa !75
  %i.au = icmp samesign ult i32 %.0.i.i, 10
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %.pn.i, i64 4
  store i8 48, ptr %.023.i.i, align 1, !tbaa !75
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !75
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit

bb.o:                                             ; preds = %bb.m
  %i.az = icmp samesign ult i32 %.0.i.i, 100
  %i.ba = getelementptr i8, ptr %.pn.i, i64 4     ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc.i.i = trunc nuw nsw i32 %.0.i.i to i8 ; 2 uses
  %i.bb = udiv i8 %.lhs.trunc.i.i, 10
  %i.bc = or disjoint i8 %i.bb, 48
  store i8 %i.bc, ptr %.023.i.i, align 1, !tbaa !75
  %i.bd = urem i8 %.lhs.trunc.i.i, 10
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !75
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = udiv i32 %.0.i.i, 100
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = add i8 %i.bh, 48
  store i8 %i.bi, ptr %.023.i.i, align 1, !tbaa !75
  %i.bj = urem i32 %.0.i.i, 100
  %.lhs.trunc28.i.i = trunc nuw nsw i32 %i.bj to i8 ; 2 uses
  %i.bk = udiv i8 %.lhs.trunc28.i.i, 10
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.bl, ptr %i.ba, align 1, !tbaa !75
  %i.bn = urem i8 %.lhs.trunc28.i.i, 10
  %i.bo = or disjoint i8 %i.bn, 48
  %i.bp = getelementptr i8, ptr %.pn.i, i64 6
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !75
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit

_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.n, %bb.p, %bb.q
  %.0.i = phi ptr [ %i.t, %bb.f ], [ %i.ac, %bb.h ], [ %i.al, %bb.j ], [ %i.ay, %bb.n ], [ %i.bf, %bb.p ], [ %i.bp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.r

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %.0.i, %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl13format_bufferEPciiii.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl6grisu2IdEEvPcRiS5_T_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, double noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.nlohmann::json_abi_v3_11_3::detail::dtoa_impl::diyfp", align 8 ; 5 uses
  %5 = alloca %"struct.nlohmann::json_abi_v3_11_3::detail::dtoa_impl::diyfp", align 8 ; 5 uses
  %i.a = bitcast double %3 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 52                        ; 2 uses
  %i.c = and i64 %i.a, 4503599627370495           ; 3 uses
  %i.d = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.e = or disjoint i64 %i.c, 4503599627370496
  %i.f = trunc nuw nsw i64 %i.b to i32
  %i.g = add nsw i32 %i.f, -1075
  %.sroa.037.0.i = select i1 %i.d, i64 %i.c, i64 %i.e ; 3 uses
  %.sroa.841.0.i = select i1 %i.d, i32 -1074, i32 %i.g ; 3 uses
  %i.h = shl nuw nsw i64 %.sroa.037.0.i, 1        ; 2 uses
  %i.i = or disjoint i64 %i.h, 1
  %i.j = add nsw i32 %.sroa.841.0.i, -1           ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.0.04.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.5.03.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.k = shl nuw i64 %.sroa.0.04.i.i, 1           ; 3 uses
  %i.l = add nsw i32 %.sroa.5.03.i.i, -1          ; 3 uses
  %i.m = icmp sgt i64 %i.k, -1
  br i1 %i.m, label %.lr.ph.i.i, label %.lr.ph.i32.i, !llvm.loop !4172

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i32.i
  %.sroa.0.04.i33.i = phi i64 [ %i.n, %.lr.ph.i32.i ], [ %.sroa.037.0.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.5.03.i34.i = phi i32 [ %i.o, %.lr.ph.i32.i ], [ %.sroa.841.0.i, %.lr.ph.i.i ]
  %i.n = shl nuw i64 %.sroa.0.04.i33.i, 1         ; 3 uses
  %i.o = add nsw i32 %.sroa.5.03.i34.i, -1        ; 2 uses
  %i.p = icmp sgt i64 %i.n, -1
  br i1 %i.p, label %.lr.ph.i32.i, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit, !llvm.loop !4172

_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit: ; preds = %.lr.ph.i32.i
  %i.q = icmp eq i64 %i.c, 0
  %i.r = icmp ugt i64 %i.a, 9007199254740991
  %i.s = and i1 %i.r, %i.q                        ; 2 uses
  %i.t = shl nuw nsw i64 %.sroa.037.0.i, 2
  %.sroa.0.0.v.i = select i1 %i.s, i64 %i.t, i64 %i.h
  %.sroa.0.0.i = add nsw i64 %.sroa.0.0.v.i, -1
  %i.u = add nsw i32 %.sroa.841.0.i, -2
  %.sroa.5.0.i = select i1 %i.s, i32 %i.u, i32 %i.j
  %i.v = sub nsw i32 %.sroa.5.0.i, %i.l
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %.sroa.0.0.i, %i.w               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.y = sub i32 -60, %.sroa.5.03.i.i             ; 2 uses
  %i.z = mul nsw i32 %i.y, 78913
  %i.aa = sdiv i32 %i.z, 262144
  %i.ab = icmp sgt i32 %i.y, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nsw i32 %i.aa, %i.ac
  %i.ae = trunc nsw i32 %i.ad to i16
  %.lhs.trunc.i.i = add nsw i16 %i.ae, 307
  %i.af = sdiv i16 %.lhs.trunc.i.i, 8
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr @_ZZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl36get_cached_power_for_binary_exponentEiE13kCachedPowers, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 8, !tbaa !398 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.418.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %i.ai = and i64 %i.n, 4294967294                ; 2 uses
  %i.aj = lshr i64 %.sroa.0.04.i33.i, 31          ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 6 uses
  %i.al = lshr i64 %.sroa.0.0.copyload.i.i, 32    ; 6 uses
  %i.am = mul nuw i64 %i.ak, %i.ai
  %i.an = mul nuw i64 %i.al, %i.ai                ; 2 uses
  %i.ao = mul nuw i64 %i.ak, %i.aj                ; 2 uses
  %i.ap = mul nuw i64 %i.al, %i.aj
  %i.aq = lshr i64 %i.am, 32
  %i.ar = and i64 %i.an, 4294967294
  %i.as = lshr i64 %i.an, 32
  %i.at = and i64 %i.ao, 4294967295
  %i.au = lshr i64 %i.ao, 32
  %i.av = add nuw nsw i64 %i.ar, 2147483648
  %i.aw = add nuw nsw i64 %i.av, %i.aq
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  %i.ay = add nuw i64 %i.au, %i.ap
  %i.az = add nuw i64 %i.ay, %i.as
  %i.ba = lshr i64 %i.ax, 32
  %i.bb = add nuw i64 %i.az, %i.ba
  %i.bc = add i32 %.sroa.418.8.extract.trunc.i, 64 ; 2 uses
  %i.bd = add i32 %i.bc, %i.o
  %i.be = and i64 %i.x, 4294967295                ; 2 uses
  %i.bf = lshr i64 %i.x, 32                       ; 2 uses
  %i.bg = mul nuw i64 %i.ak, %i.be
  %i.bh = mul nuw i64 %i.al, %i.be                ; 2 uses
  %i.bi = mul nuw i64 %i.ak, %i.bf                ; 2 uses
  %i.bj = mul nuw i64 %i.al, %i.bf
  %i.bk = lshr i64 %i.bg, 32
  %i.bl = and i64 %i.bh, 4294967295
  %i.bm = lshr i64 %i.bh, 32
  %i.bn = and i64 %i.bi, 4294967295
  %i.bo = lshr i64 %i.bi, 32
  %i.bp = add nuw nsw i64 %i.bl, 2147483648
  %i.bq = add nuw nsw i64 %i.bp, %i.bk
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  %i.bs = lshr i64 %i.br, 32
  %i.bt = add i32 %i.bc, %i.l                     ; 2 uses
  %i.bu = and i64 %i.k, 4294967294                ; 2 uses
  %i.bv = lshr i64 %.sroa.0.04.i.i, 31            ; 2 uses
  %i.bw = mul nuw i64 %i.ak, %i.bu
  %i.bx = mul nuw i64 %i.al, %i.bu                ; 2 uses
  %i.by = mul nuw i64 %i.ak, %i.bv                ; 2 uses
  %i.bz = mul nuw i64 %i.al, %i.bv
  %i.ca = lshr i64 %i.bw, 32
  %i.cb = and i64 %i.bx, 4294967294
  %i.cc = lshr i64 %i.bx, 32
  %i.cd = and i64 %i.by, 4294967295
  %i.ce = lshr i64 %i.by, 32
  %i.cf = add nuw nsw i64 %i.cb, 2147483648
  %i.cg = add nuw nsw i64 %i.cf, %i.ca
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = add nuw i64 %i.bj, 1
  %i.ck = add nuw i64 %i.cj, %i.bo
  %i.cl = add nuw i64 %i.ck, %i.bm
  %i.cm = add i64 %i.cl, %i.bs
  %i.cn = add i64 %i.bz, -1
  %i.co = add i64 %i.cn, %i.ce
  %i.cp = add i64 %i.co, %i.cc
  %i.cq = add i64 %i.cp, %i.ci
  %.sroa.418.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.418.12.extract.trunc.i = trunc nuw i64 %.sroa.418.12.extract.shift.i to i32
  %i.cr = sub nsw i32 0, %.sroa.418.12.extract.trunc.i
  store i32 %i.cr, ptr %2, align 4, !tbaa !385
  store i64 %i.bb, ptr %4, align 8, !tbaa !398
  %.sroa.416.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bd, ptr %.sroa.416.0..sroa_idx.i4, align 8, !tbaa !385
  store i64 %i.cq, ptr %5, align 8, !tbaa !398
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bt, ptr %.sroa.4.0..sroa_idx.i5, align 8, !tbaa !385
  tail call void @_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.cm, i32 %i.bt, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_11_3::detail::dtoa_impl::diyfp") align 8 %4, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_11_3::detail::dtoa_impl::diyfp") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i32 %4, ptr noundef byval(%"struct.nlohmann::json_abi_v3_11_3::detail::dtoa_impl::diyfp") align 8 %5, ptr noundef byval(%"struct.nlohmann::json_abi_v3_11_3::detail::dtoa_impl::diyfp") align 8 %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %6, align 8, !tbaa !4176   ; 4 uses
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !4177
  %i.e = load i64, ptr %5, align 8, !tbaa !4176
  %i.f = sub i64 %i.a, %i.e                       ; 6 uses
  %i.g = sub nsw i32 0, %i.d
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = shl nuw i64 1, %i.h                      ; 4 uses
  %i.j = lshr i64 %i.a, %i.h
  %i.k = trunc i64 %i.j to i32                    ; 10 uses
  %i.l = add i64 %i.i, -1                         ; 2 uses
  %i.m = and i64 %i.l, %i.a                       ; 2 uses
  %i.n = icmp ugt i32 %i.k, 999999999
  br i1 %i.n, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.k, 99999999
  br i1 %i.o, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i32 %i.k, 9999999
  br i1 %i.p, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ugt i32 %i.k, 999999
  br i1 %i.q, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp samesign ugt i32 %i.k, 99999
  br i1 %i.r, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ugt i32 %i.k, 9999
  br i1 %i.s, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ugt i32 %i.k, 999
  br i1 %i.t, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp samesign ugt i32 %i.k, 99
  br i1 %i.u, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.k, 9            ; 2 uses
  %..i = select i1 %i.v, i32 10, i32 1
  %.21.i = select i1 %i.v, i32 2, i32 1
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader

_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.054110.ph = phi i32 [ 10, %bb.a ], [ 9, %bb.b ], [ 8, %bb.c ], [ 7, %bb.d ], [ 6, %bb.e ], [ 5, %bb.f ], [ 4, %bb.g ], [ %.21.i, %bb.i ], [ 3, %bb.h ]
  %.077108.ph = phi i32 [ 1000000000, %bb.a ], [ 100000000, %bb.b ], [ 10000000, %bb.c ], [ 1000000, %bb.d ], [ 100000, %bb.e ], [ 10000, %bb.f ], [ 1000, %bb.g ], [ %..i, %bb.i ], [ 100, %bb.h ]
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit

bb.j:                                             ; preds = %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl12grisu2_roundEPcimmmm.exit
  %i.w = icmp sgt i32 %.054110, 1
  br i1 %i.w, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit, label %.preheader, !llvm.loop !4173

_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit: ; preds = %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, %bb.j
  %.054110 = phi i32 [ %i.af, %bb.j ], [ %.054110.ph, %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.056109 = phi i32 [ %i.y, %bb.j ], [ %i.k, %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.077108 = phi i32 [ %.1, %bb.j ], [ %.077108.ph, %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 6 uses
  %i.x = udiv i32 %.056109, %.077108
  %i.y = urem i32 %.056109, %.077108              ; 2 uses
  %i.z = trunc i32 %i.x to i8
  %i.aa = add i8 %i.z, 48
  %i.ab = load i32, ptr %1, align 4, !tbaa !385   ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !385
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store i8 %i.aa, ptr %i.ae, align 1, !tbaa !75
  %i.af = add nsw i32 %.054110, -1                ; 2 uses
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl i64 %i.ag, %i.h
  %i.ai = add i64 %i.ah, %i.m                     ; 4 uses
  %.not58 = icmp ugt i64 %i.ai, %i.b              ; 2 uses
  br i1 %.not58, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.aj = load i32, ptr %2, align 4, !tbaa !385
  %i.ak = add nsw i32 %i.aj, %i.af
  store i32 %i.ak, ptr %2, align 4, !tbaa !385
  %i.al = zext i32 %.077108 to i64
  %i.am = shl i64 %i.al, %i.h                     ; 3 uses
  %i.an = icmp uge i64 %i.ai, %i.f
  %i.ao = sub nuw i64 %i.b, %i.ai
  %.not21.i = icmp ult i64 %i.ao, %i.am
  %or.cond22.i = or i1 %i.an, %.not21.i
  br i1 %or.cond22.i, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ap = load i32, ptr %1, align 4, !tbaa !385
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -1     ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge2.i, %.lr.ph.i
  %.023.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.at, %.critedge2.i ] ; 2 uses
  %i.at = add i64 %.023.i, %i.am                  ; 5 uses
  %i.au = icmp ult i64 %i.at, %i.f
  br i1 %i.au, label %.critedge2.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sub nuw i64 %i.f, %.023.i
  %i.aw = sub nuw i64 %i.at, %i.f
  %i.ax = icmp ugt i64 %i.av, %i.aw
  br i1 %i.ax, label %.critedge2.i, label %_ZN8nlohmann16json_abi_v3_11_36detail9dtoa_impl12grisu2_roundEPcimmmm.exit

.critedge2.i:                                     ; preds = %bb.m, %bb.l
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !75
  %i.az = add i8 %i.ay, -1
  store i8 %i.az, ptr %i.as, align 1, !tbaa !75
  %i.ba = icmp uge i64 %i.at, %i.f
  %i.bb = sub i64 %i.b, %i.at
  %.not.i = icmp ult i64 %i.bb, %i.am
  %or.cond.i = or i1 %i.ba, %.not.i
end_hunk_5
