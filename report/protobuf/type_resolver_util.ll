inline.NumInlined: 859
inline.NumDeleted: 458
begin_hunk_0_@_ZN6google8protobuf4util23ConvertDescriptorToTypeESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorE:bb.a

_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  invoke void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull %24)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40   ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = inttoptr i64 %i.k to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 5 uses
  %i.r = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_15DescriptorProtoEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %.0.i.i.i)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !3
  %i.u = or i32 %i.t, 2
  store i32 %i.u, ptr %i.s, align 8, !tbaa !3
  invoke void @_ZNK6google8protobuf10Descriptor6CopyToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef %i.r)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = and i64 %i.w, 1
  %i.y = icmp eq i64 %i.x, 0
  %i.z = add i64 %i.w, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.i.i.i.i = select i1 %i.y, ptr %i.q, ptr %i.ab
  %i.ac = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %24, i64 176
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %.not.i.i.i = icmp eq ptr %.val, null
  %i.ae = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf30_FileOptions_default_instance_E, ptr %.val
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.ag, null
  %i.ah = select i1 %.not.i.i18.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.ag
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %.not1.i = icmp eq ptr %i.aj, null
  br i1 %.not1.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %.0142.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.bd, %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  invoke void @_ZN6google8protobuf15DescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(176) %23, ptr noundef null)
          to label %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i unwind label %bb.m

_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i:  ; preds = %bb.g
  invoke void @_ZNK6google8protobuf10Descriptor13CopyHeadingToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %.0142.i, ptr noundef nonnull %23)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %.not.i.i19.i = icmp eq ptr %i.an, null
  %i.ao = select i1 %.not.i.i19.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.at, null
  %i.au = select i1 %.not.i.i21.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.at ; 2 uses
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !51 ; 3 uses
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.au)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.j
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr %i.ay, ptr %i.al, align 8, !tbaa !51
  br label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.au)
          to label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i unwind label %bb.n

bb.l:                                             ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.t, %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j, %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(176) %23) #20
  br label %bb.o

_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i: ; preds = %bb.k, %.noexc.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.0142.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50 ; 2 uses
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(176) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !54

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ab

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !51
  %.pre4.i = load ptr, ptr %22, align 8, !tbaa !56
  %i.be = ptrtoint ptr %.pre.i to i64
  %i.bf = ptrtoint ptr %.pre4.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc
  %i.bi = phi i64 [ %i.bh, %._crit_edge.loopexit.i ], [ 0, %.noexc ]
  %i.bj = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i: ; preds = %bb.q, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ %i.bi, %._crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1  ; 3 uses
  %i.bk = and i64 %indvars.iv.next.i, 2147483648
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bm = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %bb.s unwind label %bb.l

bb.q:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bn = and i64 %indvars.iv.next.i, 2147483647
  %i.bo = load ptr, ptr %22, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw [72 x i8], ptr %i.bo, i64 %i.bn
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.bp)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %.not15.i = icmp eq i64 %i.bm, 0
  br i1 %.not15.i, label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %i.bs, null
  %i.bt = select i1 %.not.i.i24.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !17 ; 2 uses
  %.not.i.i25.i = icmp eq ptr %i.bv, null
  %i.bw = select i1 %.not.i.i25.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.bv
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.bw)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i unwind label %bb.l

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i: ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !3
  %i.bz = or i32 %i.by, 512
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !3
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.u, label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i

bb.u:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !40 ; 3 uses
  %i.ce = trunc i64 %i.cd to i1
  br i1 %i.ce, label %bb.v, label %bb.w, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i64 %i.cd, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ci = inttoptr i64 %i.cd to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.ch, %bb.v ], [ %i.ci, %bb.w ]
  %i.cj = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_14MessageOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc28.i unwind label %bb.l ; 2 uses

.noexc28.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.cj, ptr %i.br, align 8, !tbaa !17
  br label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i: ; preds = %.noexc28.i, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i
  %i.ck = phi ptr [ %i.cj, %.noexc28.i ], [ %i.ca, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = or i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.x, label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

bb.x:                                             ; preds = %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !40 ; 3 uses
  %i.ct = trunc i64 %i.cs to i1
  br i1 %i.ct, label %bb.y, label %bb.z, !prof !42

bb.y:                                             ; preds = %bb.x
  %i.cu = add nsw i64 %i.cs, -1
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i

bb.z:                                             ; preds = %bb.x
  %i.cx = inttoptr i64 %i.cs to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i30.i = phi ptr [ %i.cw, %bb.y ], [ %i.cx, %bb.z ]
  %i.cy = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i30.i)
          to label %.noexc31.i unwind label %bb.l ; 2 uses

.noexc31.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i
  store ptr %i.cy, ptr %i.co, align 8, !tbaa !17
  br label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i: ; preds = %.noexc31.i, %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i
  %i.cz = phi ptr [ %i.cy, %.noexc31.i ], [ %i.cp, %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cz, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i unwind label %bb.l

_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i:   ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i, %bb.s
  %i.da = load ptr, ptr %22, align 8, !tbaa !56   ; 3 uses
  %i.db = load ptr, ptr %i.bj, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %i.da, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 2 uses
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %.05.i.i.i.i) #20
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, %i.db
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %22, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i
  %i.dd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.da, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i1.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !53
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #21
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r, %bb.o, %bb.l
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.o ], [ %i.bq, %bb.r ], [ %i.az, %bb.l ]
  call void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %.body

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.dj = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.dk = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dl = and i64 %i.dk, 1
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = add i64 %i.dk, -1
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.0.i.i.i.i.i10 = select i1 %i.dm, ptr %i.q, ptr %i.dp
  %i.dq = load ptr, ptr %.0.i.i.i.i.i10, align 8, !tbaa !49 ; 2 uses
  invoke void @_ZN6google8protobuf4Type5ClearEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !58 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.dt, align 1
  %i.du = zext i16 %.0.copyload.i.i.i.i to i64    ; 2 uses
  %i.dv = xor i64 %i.du, -1
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !3
  %i.dz = or i32 %i.dy, 8
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.ed = trunc i64 %i.ec to i1
  br i1 %i.ed, label %bb.ad, label %bb.ae, !prof !42

bb.ad:                                            ; preds = %.noexc26
  %i.ee = add nsw i64 %i.ec, -1
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i11

bb.ae:                                            ; preds = %.noexc26
  %i.eh = inttoptr i64 %i.ec to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i11

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i11: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i12 = phi ptr [ %i.eg, %bb.ad ], [ %i.eh, %bb.ae ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i64 %i.du, ptr nonnull %i.dw, ptr noundef %.0.i.i.i12)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i11
  %i.ei = getelementptr inbounds nuw i8, ptr %24, i64 168
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !59
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.ek, -4
  %i.em = inttoptr i64 %i.el to ptr               ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !15 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !18
  switch i64 %i.ep, label %bb.af [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
    i64 0, label %_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.noexc27
  %i.eq = load i32, ptr %i.en, align 1
  %i.er = xor i32 %i.eq, 1953460848
  %i.es = getelementptr i8, ptr %i.en, i64 4
  %i.et = load i16, ptr %i.es, align 1
  %i.eu = zext i16 %i.et to i32
  %i.ev = xor i32 %i.eu, 12911
  %i.ew = or i32 %i.er, %i.ev
  %i.ex = icmp ne i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.fa = load i32, ptr %i.en, align 1
  %i.fb = xor i32 %i.fa, 1953460848
  %i.fc = getelementptr i8, ptr %i.en, i64 4
  %i.fd = load i16, ptr %i.fc, align 1
  %i.fe = zext i16 %i.fd to i32
  %i.ff = xor i32 %i.fe, 13167
  %i.fg = or i32 %i.fb, %i.ff
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, label %bb.af

_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.noexc27
  %.0.i.ph.i = phi i32 [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ 0, %.noexc27 ]
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util23ConvertDescriptorToTypeESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorE:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.gt = add nsw i64 %i.gr, -1
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !43
  br label %.noexc.i25

bb.am:                                            ; preds = %bb.ak
  %i.gw = inttoptr i64 %i.gr to ptr
  br label %.noexc.i25

.noexc.i25:                                       ; preds = %bb.am, %bb.al
  %.0.i.i43.i = phi ptr [ %i.gv, %bb.al ], [ %i.gw, %bb.am ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %.0.i.i43.i)
          to label %_ZN6google8protobuf4Type11set_editionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i unwind label %bb.ao

_ZN6google8protobuf4Type11set_editionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i: ; preds = %.noexc.i25
  %i.gx = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.gc
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6google8protobuf4Type11set_editionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i
  %i.gz = load i64, ptr %i.gc, align 8, !tbaa !17
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN6google8protobuf4Type11set_editionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hb = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.fs
  br i1 %i.hc, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hd = load i64, ptr %i.fs, align 8, !tbaa !17
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #21
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ap

bb.an:                                            ; preds = %.noexc.i.i.i, %.noexc.i.i, %.noexc39.i, %bb.af
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

bb.ao:                                            ; preds = %.noexc.i25
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gc
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i: ; preds = %bb.ao
  %i.hj = load i64, ptr %i.gc, align 8, !tbaa !17
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i, %bb.an
  %.pn.i24 = phi { ptr, i32 } [ %i.hf, %bb.an ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i ], [ %i.hg, %bb.ao ]
  %i.hl = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.fs
  br i1 %i.hm, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  %i.hn = load i64, ptr %i.fs, align 8, !tbaa !17
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #21
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %.body

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i, %_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !66
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %.lr.ph.i17, label %.preheader.i

.lr.ph.i17:                                       ; preds = %bb.ap
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 26 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 8 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0..sroa_idx.i.i65.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0..sroa_idx.i5.i67.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  br label %bb.aq

.preheader.i:                                     ; preds = %.noexc55, %bb.ap
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !67
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph72.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i
  %.pre.i13 = load i32, ptr %i.dx, align 8, !tbaa !3
  br label %._crit_edge.i14

.lr.ph72.i:                                       ; preds = %.preheader.i
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.cy

bb.aq:                                            ; preds = %.noexc55, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i23, %.noexc55 ] ; 3 uses
  %i.is = load ptr, ptr %i.hs, align 8, !tbaa !68
  %i.it = getelementptr inbounds nuw [88 x i8], ptr %i.is, i64 %indvars.iv.i18 ; 19 uses
  %i.iu = load ptr, ptr %i.ht, align 8, !tbaa !46
  %i.iv = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %i.ix = icmp eq i64 %i.iw, 0
  %i.iy = add i64 %i.iv, -1
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.i18
  %.0.i.i.i.i.i.i = select i1 %i.ix, ptr %i.ht, ptr %i.jb
  %i.jc = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !49
  %i.jd = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.je = trunc i64 %i.jd to i1
  br i1 %i.je, label %bb.ar, label %bb.as, !prof !42

bb.ar:                                            ; preds = %bb.aq
  %i.jf = add nsw i64 %i.jd, -1
  %i.jg = inttoptr i64 %i.jf to ptr
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !43
  br label %_ZN6google8protobuf4Type10add_fieldsEv.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.ji = inttoptr i64 %i.jd to ptr
  br label %_ZN6google8protobuf4Type10add_fieldsEv.exit.i

_ZN6google8protobuf4Type10add_fieldsEv.exit.i:    ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i19 = phi ptr [ %i.jh, %bb.ar ], [ %i.ji, %bb.as ]
  %i.jj = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_5FieldEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef %.0.i.i.i.i19)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit ; 14 uses

.noexc30:                                         ; preds = %_ZN6google8protobuf4Type10add_fieldsEv.exit.i
  %i.jk = load i32, ptr %i.dx, align 8, !tbaa !3
  %i.jl = or i32 %i.jk, 1
  store i32 %i.jl, ptr %i.dx, align 8, !tbaa !3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 2 ; 3 uses
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !69
  %i.jo = zext i8 %i.jn to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 72
  store i32 %i.jo, ptr %i.jp, align 8, !tbaa !17
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 19 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !3
  %i.js = or i32 %i.jr, 32
  store i32 %i.js, ptr %i.jq, align 8, !tbaa !3
  %i.jt = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor11is_requiredEv(ptr noundef nonnull align 8 dereferenceable(88) %i.it)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit

.noexc31:                                         ; preds = %.noexc30
  br i1 %i.jt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc31
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jj, i64 76
  store i32 2, ptr %i.ju, align 4, !tbaa !17
  br label %bb.ax

bb.au:                                            ; preds = %.noexc31
  %i.jv = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = and i8 %i.jw, 32
  %.not.i.i20 = icmp eq i8 %i.jx, 0
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jj, i64 76 ; 2 uses
  br i1 %.not.i.i20, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 3, ptr %i.jy, align 4, !tbaa !17
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  store i32 1, ptr %i.jy, align 4, !tbaa !17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at
  %i.jz = load i32, ptr %i.jq, align 8, !tbaa !3  ; 3 uses
  %i.ka = or i32 %i.jz, 64
  store i32 %i.ka, ptr %i.jq, align 8, !tbaa !3
  %i.kb = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !73
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 80
  store i32 %i.kc, ptr %i.kd, align 8, !tbaa !17
  %i.ke = or i32 %i.jz, 192
  store i32 %i.ke, ptr %i.jq, align 8, !tbaa !3
  %i.kf = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !58 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.kg, align 1
  %i.kh = zext i16 %.0.copyload.i.i.i.i.i to i64  ; 2 uses
  %i.ki = xor i64 %i.kh, -1
  %i.kj = getelementptr inbounds i8, ptr %i.kg, i64 %i.ki
  %i.kk = or i32 %i.jz, 194
  store i32 %i.kk, ptr %i.jq, align 8, !tbaa !3
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.km = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 5 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !40 ; 3 uses
  %i.ko = trunc i64 %i.kn to i1
  br i1 %i.ko, label %bb.ay, label %bb.az, !prof !42

bb.ay:                                            ; preds = %bb.ax
  %i.kp = add nsw i64 %i.kn, -1
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %i.ks = inttoptr i64 %i.kn to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i51.i = phi ptr [ %i.kr, %bb.ay ], [ %i.ks, %bb.az ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, i64 %i.kh, ptr nonnull %i.kj, ptr noundef %.0.i.i.i51.i)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.kt = load ptr, ptr %i.kf, align 8, !tbaa !58 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  %.0.copyload.i.i.i47.i.i = load i16, ptr %i.ku, align 1
  %i.kv = zext i16 %.0.copyload.i.i.i47.i.i to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 14
  %.0.copyload.i1.i.i.i.i = load i16, ptr %i.kw, align 1
  %i.kx = zext i16 %.0.copyload.i1.i.i.i.i to i64
  %i.ky = sub nsw i64 0, %i.kv
  %i.kz = getelementptr inbounds i8, ptr %i.kt, i64 %i.ky
  %i.la = load i32, ptr %i.jq, align 8, !tbaa !3
  %i.lb = or i32 %i.la, 8
  store i32 %i.lb, ptr %i.jq, align 8, !tbaa !3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  %i.ld = load i64, ptr %i.km, align 8, !tbaa !40 ; 3 uses
  %i.le = trunc i64 %i.ld to i1
  br i1 %i.le, label %bb.ba, label %bb.bb, !prof !42

bb.ba:                                            ; preds = %.noexc32
  %i.lf = add nsw i64 %i.ld, -1
  %i.lg = inttoptr i64 %i.lf to ptr
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit51.i.i

bb.bb:                                            ; preds = %.noexc32
  %i.li = inttoptr i64 %i.ld to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit51.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit51.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i50.i.i = phi ptr [ %i.lh, %bb.ba ], [ %i.li, %bb.bb ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, i64 %i.kx, ptr nonnull %i.kz, ptr noundef %.0.i.i50.i.i)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit51.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.it, i64 1 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1
  %i.ll = trunc i8 %i.lk to i1
  br i1 %i.ll, label %bb.bc, label %bb.cg

bb.bc:                                            ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.lm = load i8, ptr %i.jm, align 2, !tbaa !69, !noalias !74 ; 2 uses
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !77, !noalias !74
  switch i32 %i.lp, label %._crit_edge.i.i46.i.i.i [
    i32 1, label %bb.bd
    i32 2, label %bb.bg
    i32 3, label %bb.bj
    i32 4, label %bb.bm
    i32 6, label %bb.bp
    i32 5, label %bb.bq
    i32 7, label %._crit_edge.i.i.i.i.i
    i32 9, label %bb.br
    i32 8, label %bb.by
  ]

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !74
  %i.lq = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !17, !noalias !74
  %i.ls = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.lr, ptr noundef nonnull %i.ig)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %bb.bd
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = sub i64 %i.lt, %i.ih                    ; 5 uses
  store i64 %i.lu, ptr %10, align 8, !tbaa !79, !noalias !74
  store ptr %i.ig, ptr %i.ii, align 8, !tbaa !81, !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  store ptr %i.hv, ptr %14, align 8, !tbaa !9, !alias.scope !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20, !noalias !85
  store i64 %i.lu, ptr %i.f, align 8, !tbaa !13, !noalias !85
  %i.lv = icmp ugt i64 %i.lu, 15
  br i1 %i.lv, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc34
  %i.lw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc35:                                         ; preds = %.noexc.i.i.i.i.i
  store ptr %i.lw, ptr %14, align 8, !tbaa !15, !alias.scope !85
  %i.lx = load i64, ptr %i.f, align 8, !tbaa !13, !noalias !85
  store i64 %i.lx, ptr %i.hv, align 8, !tbaa !17, !alias.scope !85
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc35, %.noexc34
  %i.ly = phi ptr [ %i.lw, %.noexc35 ], [ %i.hv, %.noexc34 ] ; 2 uses
  switch i64 %i.lu, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit.i.i.i
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.lz = load i8, ptr %i.ig, align 8, !tbaa !17, !noalias !74
  store i8 %i.lz, ptr %i.ly, align 1, !tbaa !17
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit.i.i.i

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ly, ptr nonnull align 8 %i.ig, i64 %i.lu, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit.i.i.i

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit.i.i.i: ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i.i.i.i
  %i.ma = load i64, ptr %i.f, align 8, !tbaa !13, !noalias !85 ; 2 uses
  store i64 %i.ma, ptr %i.hw, align 8, !tbaa !18, !alias.scope !85
  %i.mb = load ptr, ptr %14, align 8, !tbaa !15, !alias.scope !85
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.ma
  store i8 0, ptr %i.mc, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !74
  br label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !74
  %i.md = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.me = load i64, ptr %i.md, align 8, !tbaa !17, !noalias !74
  %i.mf = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %i.me, ptr noundef nonnull %i.id)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit

.noexc36:                                         ; preds = %bb.bg
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = sub i64 %i.mg, %i.ie                    ; 5 uses
  store i64 %i.mh, ptr %11, align 8, !tbaa !79, !noalias !74
  store ptr %i.id, ptr %i.if, align 8, !tbaa !81, !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  store ptr %i.hv, ptr %14, align 8, !tbaa !9, !alias.scope !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20, !noalias !89
  store i64 %i.mh, ptr %i.e, align 8, !tbaa !13, !noalias !89
  %i.mi = icmp ugt i64 %i.mh, 15
  br i1 %i.mi, label %.noexc.i.i17.i.i.i, label %._crit_edge.i.i.i16.i.i.i

.noexc.i.i17.i.i.i:                               ; preds = %.noexc36
  %i.mj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc37:                                         ; preds = %.noexc.i.i17.i.i.i
  store ptr %i.mj, ptr %14, align 8, !tbaa !15, !alias.scope !89
  %i.mk = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !89
  store i64 %i.mk, ptr %i.hv, align 8, !tbaa !17, !alias.scope !89
  br label %._crit_edge.i.i.i16.i.i.i

._crit_edge.i.i.i16.i.i.i:                        ; preds = %.noexc37, %.noexc36
  %i.ml = phi ptr [ %i.mj, %.noexc37 ], [ %i.hv, %.noexc36 ] ; 2 uses
  switch i64 %i.mh, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit19.i.i.i
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i.i16.i.i.i
  %i.mm = load i8, ptr %i.id, align 8, !tbaa !17, !noalias !74
  store i8 %i.mm, ptr %i.ml, align 1, !tbaa !17
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit19.i.i.i

bb.bi:                                            ; preds = %._crit_edge.i.i.i16.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr nonnull align 8 %i.id, i64 %i.mh, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit19.i.i.i

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit19.i.i.i: ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i.i16.i.i.i
  %i.mn = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !89 ; 2 uses
  store i64 %i.mn, ptr %i.hw, align 8, !tbaa !18, !alias.scope !89
  %i.mo = load ptr, ptr %14, align 8, !tbaa !15, !alias.scope !89
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mn
  store i8 0, ptr %i.mp, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !74
  br label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i

bb.bj:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !74
  %i.mq = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !17, !noalias !74
  %i.ms = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %i.mr, ptr noundef nonnull %i.ia)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit

.noexc38:                                         ; preds = %bb.bj
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = sub i64 %i.mt, %i.ib                    ; 5 uses
  store i64 %i.mu, ptr %12, align 8, !tbaa !79, !noalias !74
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !81, !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  store ptr %i.hv, ptr %14, align 8, !tbaa !9, !alias.scope !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !93
  store i64 %i.mu, ptr %i.d, align 8, !tbaa !13, !noalias !93
  %i.mv = icmp ugt i64 %i.mu, 15
  br i1 %i.mv, label %.noexc.i.i22.i.i.i, label %._crit_edge.i.i.i21.i.i.i

.noexc.i.i22.i.i.i:                               ; preds = %.noexc38
  %i.mw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %.noexc.i.i22.i.i.i
  store ptr %i.mw, ptr %14, align 8, !tbaa !15, !alias.scope !93
  %i.mx = load i64, ptr %i.d, align 8, !tbaa !13, !noalias !93
  store i64 %i.mx, ptr %i.hv, align 8, !tbaa !17, !alias.scope !93
  br label %._crit_edge.i.i.i21.i.i.i

._crit_edge.i.i.i21.i.i.i:                        ; preds = %.noexc39, %.noexc38
  %i.my = phi ptr [ %i.mw, %.noexc39 ], [ %i.hv, %.noexc38 ] ; 2 uses
  switch i64 %i.mu, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit24.i.i.i
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i21.i.i.i
  %i.mz = load i8, ptr %i.ia, align 8, !tbaa !17, !noalias !74
  store i8 %i.mz, ptr %i.my, align 1, !tbaa !17
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit24.i.i.i

bb.bl:                                            ; preds = %._crit_edge.i.i.i21.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.my, ptr nonnull align 8 %i.ia, i64 %i.mu, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit24.i.i.i

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf4util23ConvertDescriptorToTypeESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorE:bb.a
  store ptr %i.hv, ptr %14, align 8, !tbaa !9, !alias.scope !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !97
  store i64 %i.nh, ptr %i.c, align 8, !tbaa !13, !noalias !97
  %i.ni = icmp ugt i64 %i.nh, 15
  br i1 %i.ni, label %.noexc.i.i27.i.i.i, label %._crit_edge.i.i.i26.i.i.i

.noexc.i.i27.i.i.i:                               ; preds = %.noexc40
  %i.nj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc41:                                         ; preds = %.noexc.i.i27.i.i.i
  store ptr %i.nj, ptr %14, align 8, !tbaa !15, !alias.scope !97
  %i.nk = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !97
  store i64 %i.nk, ptr %i.hv, align 8, !tbaa !17, !alias.scope !97
  br label %._crit_edge.i.i.i26.i.i.i

._crit_edge.i.i.i26.i.i.i:                        ; preds = %.noexc41, %.noexc40
  %i.nl = phi ptr [ %i.nj, %.noexc41 ], [ %i.hv, %.noexc40 ] ; 2 uses
  switch i64 %i.nh, label %bb.bo [
    i64 1, label %bb.bn
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit29.i.i.i
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i26.i.i.i
  %i.nm = load i8, ptr %i.hx, align 8, !tbaa !17, !noalias !74
  store i8 %i.nm, ptr %i.nl, align 1, !tbaa !17
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit29.i.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i.i26.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nl, ptr nonnull align 8 %i.hx, i64 %i.nh, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit29.i.i.i

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit29.i.i.i: ; preds = %bb.bo, %bb.bn, %._crit_edge.i.i.i26.i.i.i
  %i.nn = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !97 ; 2 uses
  store i64 %i.nn, ptr %i.hw, align 8, !tbaa !18, !alias.scope !97
  %i.no = load ptr, ptr %14, align 8, !tbaa !15, !alias.scope !97
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nn
  store i8 0, ptr %i.np, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !74
  br label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i

bb.bp:                                            ; preds = %bb.bc
  %i.nq = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.nr = load float, ptr %i.nq, align 8, !tbaa !17, !noalias !74
  invoke void @_ZN6google8protobuf2io10SimpleFtoaB5cxx11Ef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, float noundef %i.nr)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i unwind label %.loopexit.split-lp.loopexit

bb.bq:                                            ; preds = %bb.bc
  %i.ns = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !17, !noalias !74
  invoke void @_ZN6google8protobuf2io10SimpleDtoaB5cxx11Ed(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, double noundef %i.nt)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bc
  %i.nu = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.nv = load i8, ptr %i.nu, align 8, !tbaa !17, !range !98, !noalias !74, !noundef !99
  %i.nw = trunc nuw i8 %i.nv to i1                ; 3 uses
  %i.nx = select i1 %i.nw, ptr @.str.10, ptr @.str.11
  store ptr %i.hv, ptr %14, align 8, !tbaa !9, !alias.scope !74
  %i.ny = select i1 %i.nw, i64 4, i64 5           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.hv, ptr noundef nonnull align 1 dereferenceable(4) %i.nx, i64 %i.ny, i1 false)
  store i64 %i.ny, ptr %i.hw, align 8, !tbaa !18, !alias.scope !74
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.nw, i64 20, i64 21
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %14, i64 %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !17, !alias.scope !74
  br label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i

bb.br:                                            ; preds = %bb.bc
  %i.nz = icmp eq i8 %i.lm, 12
  %i.oa = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !17, !noalias !74 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !15, !noalias !74 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !18, !noalias !74 ; 6 uses
  br i1 %i.nz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.oe, ptr %i.oc)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i unwind label %.loopexit.split-lp.loopexit

bb.bt:                                            ; preds = %bb.br
  store ptr %i.hv, ptr %14, align 8, !tbaa !9, !alias.scope !74
  %i.of = icmp eq ptr %i.oc, null
  %i.og = icmp ne i64 %i.oe, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.of, %i.og
  br i1 %or.cond.i.i.i.i.i.i, label %.noexc43.i.i.i.invoke, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !74
  store i64 %i.oe, ptr %i.b, align 8, !tbaa !13, !noalias !74
  %i.oh = icmp ugt i64 %i.oe, 15
  br i1 %i.oh, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bu
  %i.oi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc46:                                         ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.oi, ptr %14, align 8, !tbaa !15, !alias.scope !74
  %i.oj = load i64, ptr %i.b, align 8, !tbaa !13, !noalias !74
  store i64 %i.oj, ptr %i.hv, align 8, !tbaa !17, !alias.scope !74
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc46, %bb.bu
  %i.ok = phi ptr [ %i.oi, %.noexc46 ], [ %i.hv, %bb.bu ] ; 2 uses
  switch i64 %i.oe, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %bb.bx
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ol = load i8, ptr %i.oc, align 1, !tbaa !17
  store i8 %i.ol, ptr %i.ok, align 1, !tbaa !17
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ok, ptr align 1 %i.oc, i64 %i.oe, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i.i.i.i.i.i
  %i.om = load i64, ptr %i.b, align 8, !tbaa !13, !noalias !74 ; 2 uses
  store i64 %i.om, ptr %i.hw, align 8, !tbaa !18, !alias.scope !74
  %i.on = load ptr, ptr %14, align 8, !tbaa !15, !alias.scope !74
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.om
  store i8 0, ptr %i.oo, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !74
  br label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i

bb.by:                                            ; preds = %bb.bc
  %i.op = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor18default_value_enumEv(ptr noundef nonnull align 8 dereferenceable(88) %i.it)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %bb.by
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !100, !noalias !74 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !15, !noalias !74 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !18, !noalias !74 ; 5 uses
  store ptr %i.hv, ptr %14, align 8, !tbaa !9, !alias.scope !74
  %i.ov = icmp eq ptr %i.os, null
  %i.ow = icmp ne i64 %i.ou, 0
  %or.cond.i.i.i40.i.i.i = and i1 %i.ov, %i.ow
  br i1 %or.cond.i.i.i40.i.i.i, label %.noexc43.i.i.i.invoke, label %bb.bz

.noexc43.i.i.i.invoke:                            ; preds = %.noexc47, %bb.bt
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc43.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc43.i.i.i.cont:                              ; preds = %.noexc43.i.i.i.invoke
  unreachable

bb.bz:                                            ; preds = %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !74
  store i64 %i.ou, ptr %i.a, align 8, !tbaa !13, !noalias !74
  %i.ox = icmp ugt i64 %i.ou, 15
  br i1 %i.ox, label %.noexc.i.i.i42.i.i.i, label %._crit_edge.i.i.i.i41.i.i.i

.noexc.i.i.i42.i.i.i:                             ; preds = %bb.bz
  %i.oy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc49:                                         ; preds = %.noexc.i.i.i42.i.i.i
  store ptr %i.oy, ptr %14, align 8, !tbaa !15, !alias.scope !74
  %i.oz = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !74
  store i64 %i.oz, ptr %i.hv, align 8, !tbaa !17, !alias.scope !74
  br label %._crit_edge.i.i.i.i41.i.i.i

._crit_edge.i.i.i.i41.i.i.i:                      ; preds = %.noexc49, %bb.bz
  %i.pa = phi ptr [ %i.oy, %.noexc49 ], [ %i.hv, %bb.bz ] ; 2 uses
  switch i64 %i.ou, label %bb.cb [
    i64 1, label %bb.ca
    i64 0, label %bb.cc
  ]

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i41.i.i.i
  %i.pb = load i8, ptr %i.os, align 1, !tbaa !17
  store i8 %i.pb, ptr %i.pa, align 1, !tbaa !17
  br label %bb.cc

bb.cb:                                            ; preds = %._crit_edge.i.i.i.i41.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pa, ptr align 1 %i.os, i64 %i.ou, i1 false)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %._crit_edge.i.i.i.i41.i.i.i
  %i.pc = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !74 ; 2 uses
  store i64 %i.pc, ptr %i.hw, align 8, !tbaa !18, !alias.scope !74
  %i.pd = load ptr, ptr %14, align 8, !tbaa !15, !alias.scope !74
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pc
  store i8 0, ptr %i.pe, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !74
  br label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i

._crit_edge.i.i46.i.i.i:                          ; preds = %bb.bc
  store ptr %i.hv, ptr %14, align 8, !tbaa !9, !alias.scope !74
  store i64 0, ptr %i.hw, align 8, !tbaa !18, !alias.scope !74
  store i8 0, ptr %i.hv, align 8, !tbaa !17, !alias.scope !74
  br label %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i

_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.bs, %bb.bq, %bb.bp, %._crit_edge.i.i46.i.i.i, %bb.cc, %bb.bx, %._crit_edge.i.i.i.i.i, %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit29.i.i.i, %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit24.i.i.i, %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit19.i.i.i, %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit.i.i.i
  %i.pf = load i32, ptr %i.jq, align 8, !tbaa !3
  %i.pg = or i32 %i.pf, 16
  store i32 %i.pg, ptr %i.jq, align 8, !tbaa !3
  %i.ph = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %i.pi = load i64, ptr %i.km, align 8, !tbaa !40 ; 3 uses
  %i.pj = trunc i64 %i.pi to i1
  br i1 %i.pj, label %bb.cd, label %bb.ce, !prof !42

bb.cd:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i
  %i.pk = add nsw i64 %i.pi, -1
  %i.pl = inttoptr i64 %i.pk to ptr
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !43
  br label %.noexc.i52.i

bb.ce:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_120DefaultValueAsStringB5cxx11ERKNS0_15FieldDescriptorE.exit.i.i
  %i.pn = inttoptr i64 %i.pi to ptr
  br label %.noexc.i52.i

.noexc.i52.i:                                     ; preds = %bb.ce, %bb.cd
  %.0.i.i52.i.i = phi ptr [ %i.pm, %bb.cd ], [ %i.pn, %bb.ce ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ph, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %.0.i.i52.i.i)
          to label %_ZN6google8protobuf5Field17set_default_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i.i unwind label %bb.cf

_ZN6google8protobuf5Field17set_default_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i.i: ; preds = %.noexc.i52.i
  %i.po = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.hv
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i: ; preds = %_ZN6google8protobuf5Field17set_default_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i.i
  %i.pq = load i64, ptr %i.hv, align 8, !tbaa !17
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN6google8protobuf5Field17set_default_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.cg

bb.cf:                                            ; preds = %.noexc.i52.i
  %i.ps = landingpad { ptr, i32 }
          cleanup
  %i.pt = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.hv
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i: ; preds = %bb.cf
  %i.pv = load i64, ptr %i.hv, align 8, !tbaa !17
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.pw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.body

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc33
  %i.px = load i8, ptr %i.jm, align 2, !tbaa !69
  switch i8 %i.px, label %bb.cp [
    i8 11, label %bb.ch
    i8 10, label %bb.ch
    i8 14, label %bb.cl
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.py = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.it)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit

.noexc50:                                         ; preds = %bb.ch
  %i.pz = getelementptr i8, ptr %i.py, i64 16
  %.val.i.i = load ptr, ptr %i.pz, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !106
  store i64 %1, ptr %7, align 8, !tbaa !13, !noalias !106
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !109, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !106
  store i64 1, ptr %8, align 8, !noalias !106
  store ptr @.str.2, ptr %i.il, align 8, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !106
  %i.qa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.qa, align 1, !noalias !106
  %i.qb = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.qc = xor i64 %i.qb, -1
  %i.qd = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.qc
  store i64 %i.qb, ptr %9, align 8, !tbaa !13, !noalias !106
  store ptr %i.qd, ptr %.sroa.2.0..sroa_idx.i5.i.i.i, align 8, !tbaa !109, !noalias !106
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit

.noexc51:                                         ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !106
  %i.qe = load i32, ptr %i.jq, align 8, !tbaa !3
  %i.qf = or i32 %i.qe, 4
  store i32 %i.qf, ptr %i.jq, align 8, !tbaa !3
  %i.qg = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %i.qh = load i64, ptr %i.km, align 8, !tbaa !40 ; 3 uses
  %i.qi = trunc i64 %i.qh to i1
  br i1 %i.qi, label %bb.ci, label %bb.cj, !prof !42

bb.ci:                                            ; preds = %.noexc51
  %i.qj = add nsw i64 %i.qh, -1
  %i.qk = inttoptr i64 %i.qj to ptr
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !43
  br label %.noexc43.i.i

bb.cj:                                            ; preds = %.noexc51
  %i.qm = inttoptr i64 %i.qh to ptr
  br label %.noexc43.i.i

.noexc43.i.i:                                     ; preds = %bb.cj, %bb.ci
  %.0.i.i57.i.i = phi ptr [ %i.ql, %bb.ci ], [ %i.qm, %bb.cj ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.qg, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %.0.i.i57.i.i)
          to label %_ZN6google8protobuf5Field12set_type_urlINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit45.i.i unwind label %bb.ck

_ZN6google8protobuf5Field12set_type_urlINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit45.i.i: ; preds = %.noexc43.i.i
  %i.qn = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.im
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i: ; preds = %_ZN6google8protobuf5Field12set_type_urlINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit45.i.i
  %i.qp = load i64, ptr %i.im, align 8, !tbaa !17
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i: ; preds = %_ZN6google8protobuf5Field12set_type_urlINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit45.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.cp

bb.ck:                                            ; preds = %.noexc43.i.i
  %i.qr = landingpad { ptr, i32 }
          cleanup
  %i.qs = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.im
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i: ; preds = %bb.ck
  %i.qu = load i64, ptr %i.im, align 8, !tbaa !17
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body

bb.cl:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.qw = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.it)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %bb.cl
  %i.qx = getelementptr i8, ptr %i.qw, i64 8
  %.val46.i.i = load ptr, ptr %i.qx, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !110
  store i64 %1, ptr %4, align 8, !tbaa !13, !noalias !110
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i65.i.i, align 8, !tbaa !109, !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !110
  store i64 1, ptr %5, align 8, !noalias !110
  store ptr @.str.2, ptr %i.ij, align 8, !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !110
  %i.qy = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 2
  %.0.copyload.i.i.i.i66.i.i = load i16, ptr %i.qy, align 1, !noalias !110
  %i.qz = zext i16 %.0.copyload.i.i.i.i66.i.i to i64 ; 2 uses
  %i.ra = xor i64 %i.qz, -1
  %i.rb = getelementptr inbounds i8, ptr %.val46.i.i, i64 %i.ra
  store i64 %i.qz, ptr %6, align 8, !tbaa !13, !noalias !110
  store ptr %i.rb, ptr %.sroa.2.0..sroa_idx.i5.i67.i.i, align 8, !tbaa !109, !noalias !110
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %.noexc52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !110
  %i.rc = load i32, ptr %i.jq, align 8, !tbaa !3
  %i.rd = or i32 %i.rc, 4
  store i32 %i.rd, ptr %i.jq, align 8, !tbaa !3
  %i.re = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %i.rf = load i64, ptr %i.km, align 8, !tbaa !40 ; 3 uses
  %i.rg = trunc i64 %i.rf to i1
  br i1 %i.rg, label %bb.cm, label %bb.cn, !prof !42

bb.cm:                                            ; preds = %.noexc53
  %i.rh = add nsw i64 %i.rf, -1
  %i.ri = inttoptr i64 %i.rh to ptr
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !43
  br label %.noexc41.i.i

bb.cn:                                            ; preds = %.noexc53
  %i.rk = inttoptr i64 %i.rf to ptr
  br label %.noexc41.i.i

.noexc41.i.i:                                     ; preds = %bb.cn, %bb.cm
  %.0.i.i68.i.i = phi ptr [ %i.rj, %bb.cm ], [ %i.rk, %bb.cn ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.re, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %.0.i.i68.i.i)
          to label %_ZN6google8protobuf5Field12set_type_urlINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i.i unwind label %bb.co

_ZN6google8protobuf5Field12set_type_urlINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i.i: ; preds = %.noexc41.i.i
  %i.rl = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.ik
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i: ; preds = %_ZN6google8protobuf5Field12set_type_urlINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i.i
  %i.rn = load i64, ptr %i.ik, align 8, !tbaa !17
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.ro) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i: ; preds = %_ZN6google8protobuf5Field12set_type_urlINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpT0_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.cp

bb.co:                                            ; preds = %.noexc41.i.i
  %i.rp = landingpad { ptr, i32 }
          cleanup
  %i.rq = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.ik
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i: ; preds = %bb.co
  %i.rs = load i64, ptr %i.ik, align 8, !tbaa !17
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i, %bb.cg
  %i.ru = load i8, ptr %i.lj, align 1
  %i.rv = and i8 %i.ru, 16
  %.not.i.i.i21 = icmp eq i8 %i.rv, 0
  br i1 %.not.i.i.i21, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rw = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.rx = load ptr, ptr %i.rw, align 8, !nonnull !99 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !113
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 72
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !116
  %i.sc = ptrtoint ptr %i.rx to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = sdiv exact i64 %i.se, 56
  %i.sg = trunc i64 %i.sf to i32
  %i.sh = add nsw i32 %i.sg, 1
  %i.si = getelementptr inbounds nuw i8, ptr %i.jj, i64 84
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !17
  %i.sj = load i32, ptr %i.jq, align 8, !tbaa !3
  %i.sk = or i32 %i.sj, 256
  store i32 %i.sk, ptr %i.jq, align 8, !tbaa !3
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.sl = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.it)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit

.noexc54:                                         ; preds = %bb.cr
  %.pre.i.i = load i32, ptr %i.jq, align 8, !tbaa !3 ; 2 uses
  br i1 %i.sl, label %bb.cs, label %_ZN6google8protobuf4util12_GLOBAL__N_122ConvertFieldDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoEPNS0_5FieldE.exit.i

bb.cs:                                            ; preds = %.noexc54
  %i.sm = getelementptr inbounds nuw i8, ptr %i.jj, i64 88
  store i8 1, ptr %i.sm, align 8, !tbaa !17
  %i.sn = or i32 %.pre.i.i, 512                   ; 2 uses
  store i32 %i.sn, ptr %i.jq, align 8, !tbaa !3
  br label %_ZN6google8protobuf4util12_GLOBAL__N_122ConvertFieldDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoEPNS0_5FieldE.exit.i

_ZN6google8protobuf4util12_GLOBAL__N_122ConvertFieldDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoEPNS0_5FieldE.exit.i: ; preds = %bb.cs, %.noexc54
  %i.so = phi i32 [ %i.sn, %bb.cs ], [ %.pre.i.i, %.noexc54 ]
  %i.sp = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.sq, null
  %i.sr = select i1 %.not.i.i.i.i22, ptr @_ZN6google8protobuf31_FieldOptions_default_instance_E, ptr %i.sq
  %i.ss = or i32 %i.so, 1
  store i32 %i.ss, ptr %i.jq, align 8, !tbaa !3
  %i.st = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_122ConvertOptionsInternalERKNS0_7MessageERNS0_16RepeatedPtrFieldINS0_6OptionEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.sr, ptr noundef nonnull align 8 dereferenceable(16) %i.st)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit

.noexc55:                                         ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_122ConvertFieldDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoEPNS0_5FieldE.exit.i
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %i.su = load i32, ptr %i.hp, align 8, !tbaa !66
  %i.sv = sext i32 %i.su to i64
  %i.sw = icmp slt i64 %indvars.iv.next.i23, %i.sv
  br i1 %i.sw, label %bb.aq, label %.preheader.i, !llvm.loop !117

._crit_edge.i14:                                  ; preds = %.noexc60, %.preheader.._crit_edge_crit_edge.i
  %i.sx = phi i32 [ %.pre.i13, %.preheader.._crit_edge_crit_edge.i ], [ %i.uz, %.noexc60 ]
  %i.sy = or i32 %i.sx, 32
  store i32 %i.sy, ptr %i.dx, align 8, !tbaa !3
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !17 ; 2 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %bb.ct, label %_ZN6google8protobuf4Type22mutable_source_contextEv.exit.i

bb.ct:                                            ; preds = %._crit_edge.i14
  %i.tc = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.td = trunc i64 %i.tc to i1
  br i1 %i.td, label %bb.cu, label %bb.cv, !prof !42

bb.cu:                                            ; preds = %bb.ct
  %i.te = add nsw i64 %i.tc, -1
  %i.tf = inttoptr i64 %i.te to ptr
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i15

bb.cv:                                            ; preds = %bb.ct
  %i.th = inttoptr i64 %i.tc to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i15

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i15: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i16 = phi ptr [ %i.tg, %bb.cu ], [ %i.th, %bb.cv ]
  %i.ti = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_13SourceContextEEEPvPS1_(ptr noundef %.0.i.i.i.i.i16)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56:                                         ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i15
  store ptr %i.ti, ptr %i.sz, align 8, !tbaa !17
  br label %_ZN6google8protobuf4Type22mutable_source_contextEv.exit.i

_ZN6google8protobuf4Type22mutable_source_contextEv.exit.i: ; preds = %.noexc56, %._crit_edge.i14
  %i.tj = phi ptr [ %i.ti, %.noexc56 ], [ %i.ta, %._crit_edge.i14 ] ; 3 uses
  %i.tk = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !118 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !15
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !18
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tj, i64 16 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !3
  %i.ts = or i32 %i.tr, 1
  store i32 %i.ts, ptr %i.tq, align 4, !tbaa !3
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !40 ; 3 uses
  %i.tv = trunc i64 %i.tu to i1
  br i1 %i.tv, label %bb.cw, label %bb.cx, !prof !42

bb.cw:                                            ; preds = %_ZN6google8protobuf4Type22mutable_source_contextEv.exit.i
  %i.tw = add nsw i64 %i.tu, -1
  %i.tx = inttoptr i64 %i.tw to ptr
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit56.i

bb.cx:                                            ; preds = %_ZN6google8protobuf4Type22mutable_source_contextEv.exit.i
  %i.tz = inttoptr i64 %i.tu to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit56.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit56.i: ; preds = %bb.cx, %bb.cw
  %.0.i.i55.i = phi ptr [ %i.ty, %bb.cw ], [ %i.tz, %bb.cx ]
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ua, i64 %i.tp, ptr %i.tn, ptr noundef %.0.i.i55.i)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit56.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.dq, i64 160
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !17 ; 2 uses
  %.not.i.i57.i = icmp eq ptr %i.uc, null
  %i.ud = select i1 %.not.i.i57.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %i.uc
  %i.ue = load i32, ptr %i.dx, align 8, !tbaa !3
  %i.uf = or i32 %i.ue, 4
  store i32 %i.uf, ptr %i.dx, align 8, !tbaa !3
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_122ConvertOptionsInternalERKNS0_7MessageERNS0_16RepeatedPtrFieldINS0_6OptionEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ud, ptr noundef nonnull align 8 dereferenceable(16) %i.ug)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_117ConvertDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorERKNS0_19FileDescriptorProtoERKNS0_15DescriptorProtoEPNS0_4TypeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %.noexc60, %.lr.ph72.i
  %indvars.iv74.i = phi i64 [ 0, %.lr.ph72.i ], [ %indvars.iv.next75.i, %.noexc60 ] ; 2 uses
  %i.uh = load ptr, ptr %i.iq, align 8, !tbaa !116
  %i.ui = getelementptr inbounds nuw [56 x i8], ptr %i.uh, i64 %indvars.iv74.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !58 ; 2 uses
  %.0.copyload.i.i.i58.i = load i16, ptr %i.uk, align 1
  %i.ul = zext i16 %.0.copyload.i.i.i58.i to i64  ; 2 uses
  %i.um = xor i64 %i.ul, -1
  %i.un = getelementptr inbounds i8, ptr %i.uk, i64 %i.um
  %i.uo = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.up = trunc i64 %i.uo to i1
  br i1 %i.up, label %bb.cz, label %bb.da, !prof !42

bb.cz:                                            ; preds = %bb.cy
  %i.uq = add nsw i64 %i.uo, -1
  %i.ur = inttoptr i64 %i.uq to ptr
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !43
  br label %_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i

bb.da:                                            ; preds = %bb.cy
  %i.ut = inttoptr i64 %i.uo to ptr
  br label %_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i

_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i: ; preds = %bb.da, %bb.cz
  %.0.i.i.i62.i = phi ptr [ %i.us, %bb.cz ], [ %i.ut, %bb.da ]
  %i.uu = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef %.0.i.i.i62.i)
          to label %.noexc59 unwind label %.loopexit ; 2 uses

.noexc59:                                         ; preds = %_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !18
  %i.ux = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.uu, i64 noundef 0, i64 noundef %i.uw, ptr noundef nonnull %i.un, i64 noundef %i.ul)
          to label %.noexc60 unwind label %.loopexit ; 0 uses

.noexc60:                                         ; preds = %.noexc59
  %i.uy = load i32, ptr %i.dx, align 8, !tbaa !3
  %i.uz = or i32 %i.uy, 2                         ; 2 uses
  store i32 %i.uz, ptr %i.dx, align 8, !tbaa !3
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.va = load i32, ptr %i.in, align 8, !tbaa !67
  %i.vb = sext i32 %i.va to i64
  %i.vc = icmp slt i64 %indvars.iv.next75.i, %i.vb
  br i1 %i.vc, label %bb.cy, label %._crit_edge.i14, !llvm.loop !128

_ZN6google8protobuf4util12_GLOBAL__N_117ConvertDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorERKNS0_19FileDescriptorProtoERKNS0_15DescriptorProtoEPNS0_4TypeE.exit: ; preds = %.noexc57
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  ret void

bb.db:                                            ; preds = %bb.a
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit:                                        ; preds = %_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i, %.noexc59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_122ConvertFieldDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoEPNS0_5FieldE.exit.i, %bb.cr, %.noexc52, %bb.cl, %.noexc50, %bb.ch, %.noexc.i.i.i42.i.i.i, %bb.by, %.noexc.i.i.i.i.i.i, %bb.bs, %bb.bq, %bb.bp, %.noexc.i.i27.i.i.i, %bb.bm, %.noexc.i.i22.i.i.i, %bb.bj, %.noexc.i.i17.i.i.i, %bb.bg, %.noexc.i.i.i.i.i, %bb.bd, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit51.i.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i, %.noexc30, %_ZN6google8protobuf4Type10add_fieldsEv.exit.i
  %lpad.loopexit62 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc43.i.i.i.invoke, %.noexc57, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit56.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i15, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i11, %bb.ac, %bb.f, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, %bb.e, %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i, %bb.ab ], [ %i.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i ], [ %.pn.i24, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i ], [ %i.rp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit62, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %24) #20
  br label %bb.dc

bb.dc:                                            ; preds = %.body, %bb.db
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.vd, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #4

declare void @_ZNK6google8protobuf10Descriptor6CopyToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util23ConvertDescriptorToTypeERKNS0_14EnumDescriptorE(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Enum") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 10 uses
  %6 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.115", align 8   ; 14 uses
  %8 = alloca %"class.google::protobuf::DescriptorProto", align 8 ; 8 uses
  %9 = alloca %"class.google::protobuf::FileDescriptorProto", align 8 ; 13 uses
  tail call void @_ZN6google8protobuf4EnumC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null)
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf4util23ConvertDescriptorToTypeERKNS0_14EnumDescriptorE:bb.a

_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129
  invoke void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %i.c, ptr noundef nonnull %9)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40   ; 3 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.e to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 5 uses
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_19EnumDescriptorProtoEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %.0.i.i.i)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !3
  %i.o = or i32 %i.n, 4
  store i32 %i.o, ptr %i.m, align 8, !tbaa !3
  invoke void @_ZNK6google8protobuf14EnumDescriptor6CopyToEPNS0_19EnumDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.l)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  %i.t = add i64 %i.q, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.i.i.i.i = select i1 %i.s, ptr %i.k, ptr %i.v
  %i.w = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 176
  %.val = load ptr, ptr %i.x, align 8, !tbaa !17  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %.not.i.i.i = icmp eq ptr %.val, null
  %i.y = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf30_FileOptions_default_instance_E, ptr %.val
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.aa, null
  %i.ab = select i1 %.not.i.i18.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.aa
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !134 ; 2 uses
  %.not1.i = icmp eq ptr %i.ad, null
  br i1 %.not1.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %.0142.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ax, %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN6google8protobuf15DescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(176) %8, ptr noundef null)
          to label %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i unwind label %bb.m

_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i:  ; preds = %bb.g
  invoke void @_ZNK6google8protobuf10Descriptor13CopyHeadingToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %.0142.i, ptr noundef nonnull %8)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %.not.i.i19.i = icmp eq ptr %i.ah, null
  %i.ai = select i1 %.not.i.i19.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.an, null
  %i.ao = select i1 %.not.i.i21.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !51 ; 3 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ao)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.j
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr %i.as, ptr %i.af, align 8, !tbaa !51
  br label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.ao)
          to label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i unwind label %bb.n

bb.l:                                             ; preds = %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.t, %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j, %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(176) %8) #20
  br label %bb.o

_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i: ; preds = %bb.k, %.noexc.i, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.0142.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 2 uses
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(176) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !135

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ab

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !51
  %.pre4.i = load ptr, ptr %7, align 8, !tbaa !56
  %i.ay = ptrtoint ptr %.pre.i to i64
  %i.az = ptrtoint ptr %.pre4.i to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc
  %i.bc = phi i64 [ %i.bb, %._crit_edge.loopexit.i ], [ 0, %.noexc ]
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i: ; preds = %bb.q, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ %i.bc, %._crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1  ; 3 uses
  %i.be = and i64 %indvars.iv.next.i, 2147483648
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bg = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.s unwind label %bb.l

bb.q:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bh = and i64 %indvars.iv.next.i, 2147483647
  %i.bi = load ptr, ptr %7, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %i.bi, i64 %i.bh
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.bj)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %.not15.i = icmp eq i64 %i.bg, 0
  br i1 %.not15.i, label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %i.bm, null
  %i.bn = select i1 %.not.i.i24.i, ptr @_ZN6google8protobuf30_EnumOptions_default_instance_E, ptr %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %.not.i.i25.i = icmp eq ptr %i.bp, null
  %i.bq = select i1 %.not.i.i25.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.bp
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.bq)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i unwind label %bb.l

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i: ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !3
  %i.bt = or i32 %i.bs, 16
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !3
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.u, label %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i

bb.u:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !40 ; 3 uses
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %bb.v, label %bb.w, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.bz = add nsw i64 %i.bx, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = inttoptr i64 %i.bx to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.cb, %bb.v ], [ %i.cc, %bb.w ]
  %i.cd = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_11EnumOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc28.i unwind label %bb.l ; 2 uses

.noexc28.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.cd, ptr %i.bl, align 8, !tbaa !17
  br label %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i: ; preds = %.noexc28.i, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i
  %i.ce = phi ptr [ %i.cd, %.noexc28.i ], [ %i.bu, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = or i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !17 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.x, label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

bb.x:                                             ; preds = %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !40 ; 3 uses
  %i.cn = trunc i64 %i.cm to i1
  br i1 %i.cn, label %bb.y, label %bb.z, !prof !42

bb.y:                                             ; preds = %bb.x
  %i.co = add nsw i64 %i.cm, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i

bb.z:                                             ; preds = %bb.x
  %i.cr = inttoptr i64 %i.cm to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i30.i = phi ptr [ %i.cq, %bb.y ], [ %i.cr, %bb.z ]
  %i.cs = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i30.i)
          to label %.noexc31.i unwind label %bb.l ; 2 uses

.noexc31.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !17
  br label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i: ; preds = %.noexc31.i, %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i
  %i.ct = phi ptr [ %i.cs, %.noexc31.i ], [ %i.cj, %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i unwind label %bb.l

_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i:   ; preds = %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i, %bb.s
  %i.cu = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cu, %i.cv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i ], [ %i.cu, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 2 uses
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %.05.i.i.i.i) #20
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cw, %i.cv
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i
  %i.cx = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cu, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !53
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #21
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r, %bb.o, %bb.l
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.o ], [ %i.bk, %bb.r ], [ %i.at, %bb.l ]
  call void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = and i64 %i.de, 1
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = add i64 %i.de, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.0.i.i.i.i.i8 = select i1 %i.dg, ptr %i.k, ptr %i.dj
  %i.dk = load ptr, ptr %.0.i.i.i.i.i8, align 8, !tbaa !49 ; 2 uses
  invoke void @_ZN6google8protobuf4Enum5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !59
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, -4
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !15 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !18
  switch i64 %i.ds, label %bb.ad [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
    i64 0, label %_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.noexc20
  %i.dt = load i32, ptr %i.dq, align 1
  %i.du = xor i32 %i.dt, 1953460848
  %i.dv = getelementptr i8, ptr %i.dq, i64 4
  %i.dw = load i16, ptr %i.dv, align 1
  %i.dx = zext i16 %i.dw to i32
  %i.dy = xor i32 %i.dx, 12911
  %i.dz = or i32 %i.du, %i.dy
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ed = load i32, ptr %i.dq, align 1
  %i.ee = xor i32 %i.ed, 1953460848
  %i.ef = getelementptr i8, ptr %i.dq, i64 4
  %i.eg = load i16, ptr %i.ef, align 1
  %i.eh = zext i16 %i.eg to i32
  %i.ei = xor i32 %i.eh, 13167
  %i.ej = or i32 %i.ee, %i.ei
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, label %bb.ad

_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.noexc20
  %.0.i.ph.i = phi i32 [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ 0, %.noexc20 ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.0.i.ph.i, ptr %i.en, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !3
  %i.eq = or i32 %i.ep, 32                        ; 2 uses
  store i32 %i.eq, ptr %i.eo, align 8, !tbaa !3
  br label %bb.an

bb.ad:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i3.i.i, %.noexc20
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 2, ptr %i.er, align 8, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !3
  %i.eu = or i32 %i.et, 32
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false)
  store ptr %i.ex, ptr %5, align 8, !tbaa !9
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ey, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ez = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %i.ew)
          to label %.noexc36.i unwind label %bb.al ; 2 uses

.noexc36.i:                                       ; preds = %bb.ad
  %i.fa = extractvalue { i64, ptr } %i.ez, 0
  store i64 %i.fa, ptr %3, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = extractvalue { i64, ptr } %i.ez, 1
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf4util12_GLOBAL__N_122ConvertOptionsInternalERKNS0_7MessageERNS0_16RepeatedPtrFieldINS0_6OptionEEE:bb.a
.noexc38:                                         ; preds = %.noexc37
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !49
  %i.ap = load ptr, ptr %1, align 8, !tbaa !46
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 2, ptr %i.at, align 4, !tbaa !148
  store i32 2, ptr %i.g, align 8, !tbaa !3
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit32

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i: ; preds = %bb.l
  %i.au = add nsw i64 %i.ai, -1
  %i.av = inttoptr i64 %i.au to ptr               ; 4 uses
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !147 ; 5 uses
  %i.ax = load i32, ptr %i.av, align 8, !tbaa !150
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.p, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i.i, !prof !42

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  %i.az = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, ptr noundef %.0.i.i.i.i)
          to label %.noexc39 unwind label %bb.t   ; 0 uses

.noexc39:                                         ; preds = %bb.p
  %i.ba = load ptr, ptr %1, align 8, !tbaa !46
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !148
  %.pre21.i.i = load i32, ptr %i.g, align 8, !tbaa !147
  br label %bb.r

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !148 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %i.aw
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bi = add nsw i32 %i.aw, 1
  store i32 %i.bi, ptr %i.g, align 8, !tbaa !3
  %i.bj = sext i32 %i.aw to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bj
  %.1.i.pre.i = load ptr, ptr %i.bk, align 8, !tbaa !49
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit32

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i.i, %.noexc39
  %i.bl = phi i32 [ %.pre21.i.i, %.noexc39 ], [ %i.aw, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i.i ] ; 2 uses
  %i.bm = phi i32 [ %.pre.i.i, %.noexc39 ], [ %i.bf, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i.i ]
  %.015.i.i = phi ptr [ %i.bd, %.noexc39 ], [ %i.av, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %i.bo = add nsw i32 %i.bm, 1
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !148
  %i.bp = add nsw i32 %i.bl, 1
  store i32 %i.bp, ptr %i.g, align 8, !tbaa !3
  %i.bq = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_6OptionEEEPvPS1_(ptr noundef %.0.i.i.i.i)
          to label %.noexc40 unwind label %bb.t   ; 2 uses

.noexc40:                                         ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %i.bs = sext i32 %i.bl to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !49
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit32

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit32: ; preds = %.noexc40, %bb.q, %.noexc38, %bb.n, %.noexc36
  %.1.i.i = phi ptr [ %i.ah, %.noexc36 ], [ %i.af, %bb.n ], [ %i.ao, %.noexc38 ], [ %i.bq, %.noexc40 ], [ %.1.i.pre.i, %bb.q ]
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_118ConvertOptionFieldEPKNS0_10ReflectionERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNS0_6OptionE(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.o, i32 noundef %.049, ptr noundef %.1.i.i)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit32
  %i.bu = add nuw nsw i32 %.049, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %i.s
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !157

bb.t:                                             ; preds = %bb.r, %bb.p, %.noexc37, %bb.o, %bb.k, %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit32
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.e
  %i.bw = load i32, ptr %i.f, align 4, !tbaa !141 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.noexc, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !40 ; 3 uses
  %i.cb = trunc i64 %i.ca to i1
  br i1 %i.cb, label %bb.w, label %bb.x, !prof !42

bb.w:                                             ; preds = %bb.v
  %i.cc = add nsw i64 %i.ca, -1
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43
  br label %.noexc

bb.x:                                             ; preds = %bb.v
  %i.cf = inttoptr i64 %i.ca to ptr
  br label %.noexc

.noexc:                                           ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i.i.i41 = phi ptr [ null, %bb.u ], [ %i.ce, %bb.w ], [ %i.cf, %bb.x ]
  %i.cg = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_6OptionEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i.i.i.i41)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit unwind label %bb.y

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit: ; preds = %.noexc
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_118ConvertOptionFieldEPKNS0_10ReflectionERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNS0_6OptionE(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.o, i32 noundef -1, ptr noundef %i.cg)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.noexc, %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %bb.s, %.preheader, %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE3AddEv.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.045.051, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ci, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e

bb.z:                                             ; preds = %bb.y, %bb.t, %bb.g, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ch, %bb.y ], [ %i.bv, %bb.t ], [ %i.u, %bb.g ]
  %i.cj = load ptr, ptr %2, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit44, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !155
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #21
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit44

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit44: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_118ConvertOptionFieldEPKNS0_10ReflectionERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNS0_6OptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.google::protobuf::DoubleValue", align 8 ; 9 uses
  %6 = alloca %"class.google::protobuf::FloatValue", align 8 ; 9 uses
  %7 = alloca %"class.google::protobuf::Int64Value", align 8 ; 9 uses
  %8 = alloca %"class.google::protobuf::UInt64Value", align 8 ; 9 uses
  %9 = alloca %"class.google::protobuf::Int32Value", align 8 ; 9 uses
  %10 = alloca %"class.google::protobuf::UInt32Value", align 8 ; 9 uses
  %11 = alloca %"class.google::protobuf::BoolValue", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.google::protobuf::StringValue", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.google::protobuf::BytesValue", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.google::protobuf::Int32Value", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 11 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = lshr i8 %i.d, 2
  %i.h = and i8 %i.g, 2
  %.0.copyload.i.i.i116.sink.in.idx = zext nneg i8 %i.h to i64
  %.0.copyload.i.i.i116.sink.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.copyload.i.i.i116.sink.in.idx
  %.0.copyload.i.i.i116.sink = load i16, ptr %.0.copyload.i.i.i116.sink.in, align 1
  %i.i = zext i16 %.0.copyload.i.i.i116.sink to i64 ; 2 uses
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = or i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !40   ; 3 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.v = inttoptr i64 %i.q to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.u, %bb.b ], [ %i.v, %bb.c ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 %i.i, ptr nonnull %i.k, ptr noundef %.0.i.i)
  %i.w = load i32, ptr %i.l, align 8, !tbaa !3
  %i.x = or i32 %i.w, 2
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.d, label %_ZN6google8protobuf6Option13mutable_valueEv.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !40  ; 3 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = inttoptr i64 %i.ab to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ag, %bb.f ]
  %i.ah = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_3AnyEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !17
  br label %_ZN6google8protobuf6Option13mutable_valueEv.exit

_ZN6google8protobuf6Option13mutable_valueEv.exit: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.ai = phi ptr [ %i.ah, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %i.z, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 44 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !69
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !77
  switch i32 %i.an, label %bb.dq [
    i32 10, label %bb.g
    i32 5, label %bb.o
    i32 6, label %bb.x
    i32 2, label %bb.ag
    i32 4, label %bb.ap
    i32 1, label %bb.ay
    i32 3, label %bb.bh
    i32 7, label %bb.bq
    i32 9, label %bb.bz
    i32 8, label %bb.dh
  ]

bb.g:                                             ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  %i.ao = load i8, ptr %i.c, align 1
  %i.ap = and i8 %i.ao, 32
  %.not233 = icmp eq i8 %i.ap, 0
  br i1 %.not233, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ar = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef null)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = phi ptr [ %i.aq, %bb.h ], [ %i.ar, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = or i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !40 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.be = tail call noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %.0.i.i.i.i.i)
  %i.bf = load i32, ptr %i.at, align 8, !tbaa !3
  %i.bg = or i32 %i.bf, 2
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !3
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !40 ; 3 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %bb.n, !prof !42

bb.m:                                             ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i
  %i.bj = add nsw i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit

bb.n:                                             ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i
  %i.bm = inttoptr i64 %i.bh to ptr
  br label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i2.i = phi ptr [ %i.bl, %bb.m ], [ %i.bm, %bb.n ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bo = tail call noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %.0.i.i.i.i2.i)
  %i.bp = tail call noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef %i.be, ptr noundef %i.bo) ; 0 uses
  br label %bb.dq

bb.o:                                             ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bq = load i8, ptr %i.c, align 1
  %i.br = and i8 %i.bq, 32
  %.not232 = icmp eq i8 %i.br, 0
  br i1 %.not232, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = tail call noundef double @_ZNK6google8protobuf10Reflection17GetRepeatedDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bt = tail call noundef double @_ZNK6google8protobuf10Reflection9GetDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bu = phi double [ %i.bs, %bb.p ], [ %i.bt, %bb.q ]
  call void @_ZN6google8protobuf11DoubleValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null)
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %i.bu, ptr %i.bv, align 8, !tbaa !17, !alias.scope !158
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !3, !alias.scope !158
  %i.by = or i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !3, !alias.scope !158
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = or i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !40 ; 3 uses
  %i.ce = trunc i64 %i.cd to i1
  br i1 %i.ce, label %bb.s, label %bb.t, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.cf = add nsw i64 %i.cd, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i119

bb.t:                                             ; preds = %bb.r
  %i.ci = inttoptr i64 %i.cd to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i119

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i119: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i120 = phi ptr [ %i.ch, %bb.s ], [ %i.ci, %bb.t ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ck = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %.0.i.i.i.i.i120)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i119
  %i.cl = load i32, ptr %i.bz, align 8, !tbaa !3
  %i.cm = or i32 %i.cl, 2
  store i32 %i.cm, ptr %i.bz, align 8, !tbaa !3
  %i.cn = load i64, ptr %i.cc, align 8, !tbaa !40 ; 3 uses
  %i.co = trunc i64 %i.cn to i1
  br i1 %i.co, label %bb.u, label %bb.v, !prof !42

bb.u:                                             ; preds = %.noexc
  %i.cp = add nsw i64 %i.cn, -1
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i

bb.v:                                             ; preds = %.noexc
  %i.cs = inttoptr i64 %i.cn to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i2.i121 = phi ptr [ %i.cr, %bb.u ], [ %i.cs, %bb.v ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.cu = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef %.0.i.i.i.i2.i121)
          to label %.noexc122 unwind label %bb.w

.noexc122:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i
  %i.cv = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ck, ptr noundef %i.cu)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit124 unwind label %bb.w ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit124: ; preds = %.noexc122
  call void @_ZN6google8protobuf11DoubleValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.dq

bb.w:                                             ; preds = %.noexc122, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i119
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf11DoubleValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.dr

bb.x:                                             ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.cx = load i8, ptr %i.c, align 1
  %i.cy = and i8 %i.cx, 32
  %.not231 = icmp eq i8 %i.cy, 0
  br i1 %.not231, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = tail call noundef float @_ZNK6google8protobuf10Reflection16GetRepeatedFloatERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.da = tail call noundef float @_ZNK6google8protobuf10Reflection8GetFloatERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.db = phi float [ %i.cz, %bb.y ], [ %i.da, %bb.z ]
  call void @_ZN6google8protobuf10FloatValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef null)
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.db, ptr %i.dc, align 8, !tbaa !17, !alias.scope !161
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !3, !alias.scope !161
  %i.df = or i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !3, !alias.scope !161
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = or i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !40 ; 3 uses
  %i.dl = trunc i64 %i.dk to i1
  br i1 %i.dl, label %bb.ab, label %bb.ac, !prof !42

bb.ab:                                            ; preds = %bb.aa
  %i.dm = add nsw i64 %i.dk, -1
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i125

bb.ac:                                            ; preds = %bb.aa
  %i.dp = inttoptr i64 %i.dk to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i125

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i125: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i126 = phi ptr [ %i.do, %bb.ab ], [ %i.dp, %bb.ac ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.dr = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %.0.i.i.i.i.i126)
          to label %.noexc129 unwind label %bb.af

.noexc129:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i125
  %i.ds = load i32, ptr %i.dg, align 8, !tbaa !3
  %i.dt = or i32 %i.ds, 2
  store i32 %i.dt, ptr %i.dg, align 8, !tbaa !3
  %i.du = load i64, ptr %i.dj, align 8, !tbaa !40 ; 3 uses
  %i.dv = trunc i64 %i.du to i1
  br i1 %i.dv, label %bb.ad, label %bb.ae, !prof !42

bb.ad:                                            ; preds = %.noexc129
  %i.dw = add nsw i64 %i.du, -1
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i127

bb.ae:                                            ; preds = %.noexc129
  %i.dz = inttoptr i64 %i.du to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i127

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i127: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i2.i128 = phi ptr [ %i.dy, %bb.ad ], [ %i.dz, %bb.ae ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.eb = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %.0.i.i.i.i2.i128)
          to label %.noexc130 unwind label %bb.af

.noexc130:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i127
  %i.ec = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dr, ptr noundef %i.eb)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit132 unwind label %bb.af ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit132: ; preds = %.noexc130
  call void @_ZN6google8protobuf10FloatValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.dq

bb.af:                                            ; preds = %.noexc130, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i127, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i125
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf10FloatValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.dr

bb.ag:                                            ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ee = load i8, ptr %i.c, align 1
  %i.ef = and i8 %i.ee, 32
  %.not230 = icmp eq i8 %i.ef, 0
  br i1 %.not230, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eg = tail call noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.eh = tail call noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ei = phi i64 [ %i.eg, %bb.ah ], [ %i.eh, %bb.ai ]
  call void @_ZN6google8protobuf10Int64ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef null)
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !17, !alias.scope !164
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !3, !alias.scope !164
  %i.em = or i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !3, !alias.scope !164
  %i.en = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = or i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !40 ; 3 uses
  %i.es = trunc i64 %i.er to i1
  br i1 %i.es, label %bb.ak, label %bb.al, !prof !42

bb.ak:                                            ; preds = %bb.aj
  %i.et = add nsw i64 %i.er, -1
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i133

bb.al:                                            ; preds = %bb.aj
  %i.ew = inttoptr i64 %i.er to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i133

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i133: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i134 = phi ptr [ %i.ev, %bb.ak ], [ %i.ew, %bb.al ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ey = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef %.0.i.i.i.i.i134)
          to label %.noexc137 unwind label %bb.ao

.noexc137:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i133
  %i.ez = load i32, ptr %i.en, align 8, !tbaa !3
  %i.fa = or i32 %i.ez, 2
  store i32 %i.fa, ptr %i.en, align 8, !tbaa !3
  %i.fb = load i64, ptr %i.eq, align 8, !tbaa !40 ; 3 uses
  %i.fc = trunc i64 %i.fb to i1
  br i1 %i.fc, label %bb.am, label %bb.an, !prof !42

bb.am:                                            ; preds = %.noexc137
  %i.fd = add nsw i64 %i.fb, -1
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i135

bb.an:                                            ; preds = %.noexc137
  %i.fg = inttoptr i64 %i.fb to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i135

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i135: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i2.i136 = phi ptr [ %i.ff, %bb.am ], [ %i.fg, %bb.an ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.fi = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef %.0.i.i.i.i2.i136)
          to label %.noexc138 unwind label %bb.ao

.noexc138:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i135
  %i.fj = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ey, ptr noundef %i.fi)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit140 unwind label %bb.ao ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit140: ; preds = %.noexc138
  call void @_ZN6google8protobuf10Int64ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.dq

bb.ao:                                            ; preds = %.noexc138, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i135, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i133
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf10Int64ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.dr

bb.ap:                                            ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.fl = load i8, ptr %i.c, align 1
  %i.fm = and i8 %i.fl, 32
  %.not229 = icmp eq i8 %i.fm, 0
  br i1 %.not229, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = tail call noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fo = tail call noundef i64 @_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fp = phi i64 [ %i.fn, %bb.aq ], [ %i.fo, %bb.ar ]
  call void @_ZN6google8protobuf11UInt64ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef null)
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !17, !alias.scope !167
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !3, !alias.scope !167
  %i.ft = or i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !3, !alias.scope !167
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = or i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !40 ; 3 uses
  %i.fz = trunc i64 %i.fy to i1
  br i1 %i.fz, label %bb.at, label %bb.au, !prof !42

bb.at:                                            ; preds = %bb.as
  %i.ga = add nsw i64 %i.fy, -1
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i141

bb.au:                                            ; preds = %bb.as
  %i.gd = inttoptr i64 %i.fy to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i141

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i141: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i142 = phi ptr [ %i.gc, %bb.at ], [ %i.gd, %bb.au ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.gf = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef %.0.i.i.i.i.i142)
          to label %.noexc145 unwind label %bb.ax

.noexc145:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i141
  %i.gg = load i32, ptr %i.fu, align 8, !tbaa !3
  %i.gh = or i32 %i.gg, 2
  store i32 %i.gh, ptr %i.fu, align 8, !tbaa !3
  %i.gi = load i64, ptr %i.fx, align 8, !tbaa !40 ; 3 uses
  %i.gj = trunc i64 %i.gi to i1
  br i1 %i.gj, label %bb.av, label %bb.aw, !prof !42

bb.av:                                            ; preds = %.noexc145
  %i.gk = add nsw i64 %i.gi, -1
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i143

bb.aw:                                            ; preds = %.noexc145
  %i.gn = inttoptr i64 %i.gi to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i143

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i143: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i2.i144 = phi ptr [ %i.gm, %bb.av ], [ %i.gn, %bb.aw ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.gp = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef %.0.i.i.i.i2.i144)
          to label %.noexc146 unwind label %bb.ax

.noexc146:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i143
  %i.gq = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.gf, ptr noundef %i.gp)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit148 unwind label %bb.ax ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit148: ; preds = %.noexc146
  call void @_ZN6google8protobuf11UInt64ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.dq

bb.ax:                                            ; preds = %.noexc146, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i143, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i141
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf11UInt64ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.dr

bb.ay:                                            ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.gs = load i8, ptr %i.c, align 1
  %i.gt = and i8 %i.gs, 32
  %.not228 = icmp eq i8 %i.gt, 0
  br i1 %.not228, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gu = tail call noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.gv = tail call noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gw = phi i32 [ %i.gu, %bb.az ], [ %i.gv, %bb.ba ]
  call void @_ZN6google8protobuf10Int32ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef null)
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %i.gw, ptr %i.gx, align 8, !tbaa !17, !alias.scope !170
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !3, !alias.scope !170
  %i.ha = or i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !3, !alias.scope !170
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = or i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !3
  %i.he = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !40 ; 3 uses
  %i.hg = trunc i64 %i.hf to i1
  br i1 %i.hg, label %bb.bc, label %bb.bd, !prof !42

bb.bc:                                            ; preds = %bb.bb
  %i.hh = add nsw i64 %i.hf, -1
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i149

bb.bd:                                            ; preds = %bb.bb
  %i.hk = inttoptr i64 %i.hf to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i149

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i149: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i150 = phi ptr [ %i.hj, %bb.bc ], [ %i.hk, %bb.bd ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.hm = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef %.0.i.i.i.i.i150)
          to label %.noexc153 unwind label %bb.bg

.noexc153:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i149
  %i.hn = load i32, ptr %i.hb, align 8, !tbaa !3
  %i.ho = or i32 %i.hn, 2
  store i32 %i.ho, ptr %i.hb, align 8, !tbaa !3
  %i.hp = load i64, ptr %i.he, align 8, !tbaa !40 ; 3 uses
  %i.hq = trunc i64 %i.hp to i1
  br i1 %i.hq, label %bb.be, label %bb.bf, !prof !42

bb.be:                                            ; preds = %.noexc153
  %i.hr = add nsw i64 %i.hp, -1
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i151

bb.bf:                                            ; preds = %.noexc153
  %i.hu = inttoptr i64 %i.hp to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i151

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i151: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i2.i152 = phi ptr [ %i.ht, %bb.be ], [ %i.hu, %bb.bf ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.hw = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef %.0.i.i.i.i2.i152)
          to label %.noexc154 unwind label %bb.bg

.noexc154:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i151
  %i.hx = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.hm, ptr noundef %i.hw)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit156 unwind label %bb.bg ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit156: ; preds = %.noexc154
  call void @_ZN6google8protobuf10Int32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.dq

bb.bg:                                            ; preds = %.noexc154, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i151, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i149
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf10Int32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.dr

bb.bh:                                            ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.hz = load i8, ptr %i.c, align 1
  %i.ia = and i8 %i.hz, 32
  %.not227 = icmp eq i8 %i.ia, 0
  br i1 %.not227, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ib = tail call noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ic = tail call noundef i32 @_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.id = phi i32 [ %i.ib, %bb.bi ], [ %i.ic, %bb.bj ]
  call void @_ZN6google8protobuf11UInt32ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef null)
  %i.ie = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %i.id, ptr %i.ie, align 8, !tbaa !17, !alias.scope !173
  %i.if = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !3, !alias.scope !173
  %i.ih = or i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 8, !tbaa !3, !alias.scope !173
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.ik = or i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !3
  %i.il = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !40 ; 3 uses
  %i.in = trunc i64 %i.im to i1
  br i1 %i.in, label %bb.bl, label %bb.bm, !prof !42

bb.bl:                                            ; preds = %bb.bk
  %i.io = add nsw i64 %i.im, -1
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i157

bb.bm:                                            ; preds = %bb.bk
  %i.ir = inttoptr i64 %i.im to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i157

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i157: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i158 = phi ptr [ %i.iq, %bb.bl ], [ %i.ir, %bb.bm ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.it = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef %.0.i.i.i.i.i158)
          to label %.noexc161 unwind label %bb.bp

.noexc161:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i157
  %i.iu = load i32, ptr %i.ii, align 8, !tbaa !3
  %i.iv = or i32 %i.iu, 2
  store i32 %i.iv, ptr %i.ii, align 8, !tbaa !3
  %i.iw = load i64, ptr %i.il, align 8, !tbaa !40 ; 3 uses
  %i.ix = trunc i64 %i.iw to i1
  br i1 %i.ix, label %bb.bn, label %bb.bo, !prof !42

bb.bn:                                            ; preds = %.noexc161
  %i.iy = add nsw i64 %i.iw, -1
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i159

bb.bo:                                            ; preds = %.noexc161
  %i.jb = inttoptr i64 %i.iw to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i159

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i159: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i2.i160 = phi ptr [ %i.ja, %bb.bn ], [ %i.jb, %bb.bo ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.jd = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef %.0.i.i.i.i2.i160)
          to label %.noexc162 unwind label %bb.bp

.noexc162:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i159
  %i.je = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.it, ptr noundef %i.jd)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit164 unwind label %bb.bp ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit164: ; preds = %.noexc162
  call void @_ZN6google8protobuf11UInt32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.dq

bb.bp:                                            ; preds = %.noexc162, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i159, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i157
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf11UInt32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.dr

bb.bq:                                            ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.jg = load i8, ptr %i.c, align 1
  %i.jh = and i8 %i.jg, 32
  %.not226 = icmp eq i8 %i.jh, 0
  br i1 %.not226, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ji = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection15GetRepeatedBoolERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.jj = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection7GetBoolERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.jk = phi i1 [ %i.ji, %bb.br ], [ %i.jj, %bb.bs ]
  call void @_ZN6google8protobuf9BoolValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef null)
  %i.jl = zext i1 %i.jk to i8
  %i.jm = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 %i.jl, ptr %i.jm, align 8, !tbaa !17, !alias.scope !176
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !3, !alias.scope !176
  %i.jp = or i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jn, align 8, !tbaa !3, !alias.scope !176
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3
  %i.js = or i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !40 ; 3 uses
  %i.jv = trunc i64 %i.ju to i1
  br i1 %i.jv, label %bb.bu, label %bb.bv, !prof !42

bb.bu:                                            ; preds = %bb.bt
  %i.jw = add nsw i64 %i.ju, -1
  %i.jx = inttoptr i64 %i.jw to ptr
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i165

bb.bv:                                            ; preds = %bb.bt
  %i.jz = inttoptr i64 %i.ju to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i165

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i165: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i166 = phi ptr [ %i.jy, %bb.bu ], [ %i.jz, %bb.bv ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.kb = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef %.0.i.i.i.i.i166)
          to label %.noexc169 unwind label %bb.by

.noexc169:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i165
  %i.kc = load i32, ptr %i.jq, align 8, !tbaa !3
  %i.kd = or i32 %i.kc, 2
  store i32 %i.kd, ptr %i.jq, align 8, !tbaa !3
  %i.ke = load i64, ptr %i.jt, align 8, !tbaa !40 ; 3 uses
  %i.kf = trunc i64 %i.ke to i1
  br i1 %i.kf, label %bb.bw, label %bb.bx, !prof !42

bb.bw:                                            ; preds = %.noexc169
  %i.kg = add nsw i64 %i.ke, -1
  %i.kh = inttoptr i64 %i.kg to ptr
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i167

bb.bx:                                            ; preds = %.noexc169
  %i.kj = inttoptr i64 %i.ke to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i167

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i167: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i2.i168 = phi ptr [ %i.ki, %bb.bw ], [ %i.kj, %bb.bx ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.kl = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef %.0.i.i.i.i2.i168)
          to label %.noexc170 unwind label %bb.by

.noexc170:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i167
  %i.km = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.kb, ptr noundef %i.kl)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit172 unwind label %bb.by ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit172: ; preds = %.noexc170
  call void @_ZN6google8protobuf9BoolValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.dq

bb.by:                                            ; preds = %.noexc170, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i167, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i165
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf9BoolValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.dr

bb.bz:                                            ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ko = load i8, ptr %i.c, align 1
  %i.kp = and i8 %i.ko, 32
  %.not225 = icmp eq i8 %i.kp, 0
  br i1 %.not225, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZNK6google8protobuf10Reflection17GetRepeatedStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  call void @_ZNK6google8protobuf10Reflection9GetStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.kq = load i8, ptr %i.aj, align 2, !tbaa !69
  %i.kr = icmp eq i8 %i.kq, 9
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  br i1 %i.kr, label %bb.cd, label %bb.cr

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.kt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.kt, ptr %14, align 8, !tbaa !9
  %i.ku = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.kv = load i64, ptr %i.ks, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.kv, ptr %i.b, align 8, !tbaa !13
  %i.kw = icmp ugt i64 %i.kv, 15
  br i1 %i.kw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.cd
  %i.kx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc173 unwind label %bb.co ; 2 uses

.noexc173:                                        ; preds = %.noexc.i
  store ptr %i.kx, ptr %14, align 8, !tbaa !15
  %i.ky = load i64, ptr %i.b, align 8, !tbaa !13
  store i64 %i.ky, ptr %i.kt, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc173, %bb.cd
  %i.kz = phi ptr [ %i.kx, %.noexc173 ], [ %i.kt, %bb.cd ] ; 2 uses
  switch i64 %i.kv, label %bb.cf [
    i64 1, label %bb.ce
    i64 0, label %bb.cg
  ]

bb.ce:                                            ; preds = %._crit_edge.i.i
  %i.la = load i8, ptr %i.ku, align 1, !tbaa !17
  store i8 %i.la, ptr %i.kz, align 1, !tbaa !17
  br label %bb.cg

bb.cf:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr align 1 %i.ku, i64 %i.kv, i1 false)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %._crit_edge.i.i
  %i.lb = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !18
  %i.ld = load ptr, ptr %14, align 8, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  store i8 0, ptr %i.le, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZN6google8protobuf11StringValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef null)
          to label %.noexc175 unwind label %bb.cp

.noexc175:                                        ; preds = %bb.cg
  %i.lf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !3, !alias.scope !179
  %i.lh = or i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 8, !tbaa !3, !alias.scope !179
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !40, !alias.scope !179 ; 3 uses
  %i.ll = trunc i64 %i.lk to i1
  br i1 %i.ll, label %bb.ch, label %bb.ci, !prof !42

bb.ch:                                            ; preds = %.noexc175
  %i.lm = add nsw i64 %i.lk, -1
  %i.ln = inttoptr i64 %i.lm to ptr
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !43
  br label %.noexc.i174

bb.ci:                                            ; preds = %.noexc175
  %i.lp = inttoptr i64 %i.lk to ptr
  br label %.noexc.i174

.noexc.i174:                                      ; preds = %bb.ci, %bb.ch
  %.0.i.i.i = phi ptr [ %i.lo, %bb.ch ], [ %i.lp, %bb.ci ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %.0.i.i.i)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_19WrapValueINS0_11StringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_T0_.exit unwind label %bb.cj

bb.cj:                                            ; preds = %.noexc.i174
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf11StringValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  br label %.body

_ZN6google8protobuf4util12_GLOBAL__N_19WrapValueINS0_11StringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_T0_.exit: ; preds = %.noexc.i174
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3
  %i.lt = or i32 %i.ls, 1
  store i32 %i.lt, ptr %i.lr, align 4, !tbaa !3
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !40 ; 3 uses
  %i.lw = trunc i64 %i.lv to i1
  br i1 %i.lw, label %bb.ck, label %bb.cl, !prof !42

bb.ck:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_19WrapValueINS0_11StringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_T0_.exit
  %i.lx = add nsw i64 %i.lv, -1
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i176

bb.cl:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_19WrapValueINS0_11StringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_T0_.exit
  %i.ma = inttoptr i64 %i.lv to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i176

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i176: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i.i177 = phi ptr [ %i.lz, %bb.ck ], [ %i.ma, %bb.cl ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.mc = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.mb, ptr noundef %.0.i.i.i.i.i177)
          to label %.noexc180 unwind label %bb.cq

.noexc180:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i176
  %i.md = load i32, ptr %i.lr, align 8, !tbaa !3
  %i.me = or i32 %i.md, 2
  store i32 %i.me, ptr %i.lr, align 8, !tbaa !3
  %i.mf = load i64, ptr %i.lu, align 8, !tbaa !40 ; 3 uses
  %i.mg = trunc i64 %i.mf to i1
  br i1 %i.mg, label %bb.cm, label %bb.cn, !prof !42

bb.cm:                                            ; preds = %.noexc180
  %i.mh = add nsw i64 %i.mf, -1
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i178

bb.cn:                                            ; preds = %.noexc180
  %i.mk = inttoptr i64 %i.mf to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i178

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i178: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i2.i179 = phi ptr [ %i.mj, %bb.cm ], [ %i.mk, %bb.cn ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.mm = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef %.0.i.i.i.i2.i179)
          to label %.noexc181 unwind label %bb.cq

.noexc181:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i178
  %i.mn = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.mc, ptr noundef %i.mm)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit183 unwind label %bb.cq ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit183: ; preds = %.noexc181
  call void @_ZN6google8protobuf11StringValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  %i.mo = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.kt
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit183
  %i.mq = load i64, ptr %i.kt, align 8, !tbaa !17
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.df

bb.co:                                            ; preds = %.noexc.i
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.cp:                                            ; preds = %bb.cg
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cq:                                            ; preds = %.noexc181, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i178, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i176
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf11StringValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  br label %.body

.body:                                            ; preds = %bb.cp, %bb.cj, %bb.cq
  %.pn110 = phi { ptr, i32 } [ %i.mu, %bb.cq ], [ %i.mt, %bb.cp ], [ %i.lq, %bb.cj ] ; 2 uses
  %i.mv = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.kt
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %.body
  %i.mx = load i64, ptr %i.kt, align 8, !tbaa !17
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.co
  %.pn110.pn = phi { ptr, i32 } [ %i.ms, %bb.co ], [ %.pn110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %.pn110, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.dg

bb.cr:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.mz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.mz, ptr %16, align 8, !tbaa !9
  %i.na = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.nb = load i64, ptr %i.ks, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.nb, ptr %i.a, align 8, !tbaa !13
  %i.nc = icmp ugt i64 %i.nb, 15
  br i1 %i.nc, label %.noexc.i188, label %._crit_edge.i.i187

.noexc.i188:                                      ; preds = %bb.cr
  %i.nd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc189 unwind label %bb.dc ; 2 uses

.noexc189:                                        ; preds = %.noexc.i188
  store ptr %i.nd, ptr %16, align 8, !tbaa !15
  %i.ne = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.ne, ptr %i.mz, align 8, !tbaa !17
  br label %._crit_edge.i.i187

._crit_edge.i.i187:                               ; preds = %.noexc189, %bb.cr
  %i.nf = phi ptr [ %i.nd, %.noexc189 ], [ %i.mz, %bb.cr ] ; 2 uses
  switch i64 %i.nb, label %bb.ct [
    i64 1, label %bb.cs
    i64 0, label %bb.cu
  ]

bb.cs:                                            ; preds = %._crit_edge.i.i187
  %i.ng = load i8, ptr %i.na, align 1, !tbaa !17
  store i8 %i.ng, ptr %i.nf, align 1, !tbaa !17
  br label %bb.cu

bb.ct:                                            ; preds = %._crit_edge.i.i187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nf, ptr align 1 %i.na, i64 %i.nb, i1 false)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %._crit_edge.i.i187
  %i.nh = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !18
  %i.nj = load ptr, ptr %16, align 8, !tbaa !15
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nh
  store i8 0, ptr %i.nk, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN6google8protobuf10BytesValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef null)
          to label %.noexc193 unwind label %bb.dd

.noexc193:                                        ; preds = %bb.cu
  %i.nl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !3, !alias.scope !182
  %i.nn = or i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nl, align 8, !tbaa !3, !alias.scope !182
  %i.no = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.np = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !40, !alias.scope !182 ; 3 uses
  %i.nr = trunc i64 %i.nq to i1
  br i1 %i.nr, label %bb.cv, label %bb.cw, !prof !42

bb.cv:                                            ; preds = %.noexc193
  %i.ns = add nsw i64 %i.nq, -1
  %i.nt = inttoptr i64 %i.ns to ptr
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !43
  br label %.noexc.i191

bb.cw:                                            ; preds = %.noexc193
  %i.nv = inttoptr i64 %i.nq to ptr
  br label %.noexc.i191

.noexc.i191:                                      ; preds = %bb.cw, %bb.cv
  %.0.i.i.i192 = phi ptr [ %i.nu, %bb.cv ], [ %i.nv, %bb.cw ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %.0.i.i.i192)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_19WrapValueINS0_10BytesValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_T0_.exit unwind label %bb.cx

bb.cx:                                            ; preds = %.noexc.i191
  %i.nw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf10BytesValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #20
  br label %.body194

_ZN6google8protobuf4util12_GLOBAL__N_19WrapValueINS0_10BytesValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_T0_.exit: ; preds = %.noexc.i191
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !3
  %i.nz = or i32 %i.ny, 1
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !3
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !40 ; 3 uses
  %i.oc = trunc i64 %i.ob to i1
  br i1 %i.oc, label %bb.cy, label %bb.cz, !prof !42

bb.cy:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_19WrapValueINS0_10BytesValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_T0_.exit
  %i.od = add nsw i64 %i.ob, -1
  %i.oe = inttoptr i64 %i.od to ptr
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i196

bb.cz:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_19WrapValueINS0_10BytesValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_T0_.exit
  %i.og = inttoptr i64 %i.ob to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i196

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i196: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i197 = phi ptr [ %i.of, %bb.cy ], [ %i.og, %bb.cz ]
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.oi = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef %.0.i.i.i.i.i197)
          to label %.noexc200 unwind label %bb.de

.noexc200:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i196
  %i.oj = load i32, ptr %i.nx, align 8, !tbaa !3
  %i.ok = or i32 %i.oj, 2
  store i32 %i.ok, ptr %i.nx, align 8, !tbaa !3
  %i.ol = load i64, ptr %i.oa, align 8, !tbaa !40 ; 3 uses
  %i.om = trunc i64 %i.ol to i1
  br i1 %i.om, label %bb.da, label %bb.db, !prof !42

bb.da:                                            ; preds = %.noexc200
  %i.on = add nsw i64 %i.ol, -1
  %i.oo = inttoptr i64 %i.on to ptr
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i198

bb.db:                                            ; preds = %.noexc200
  %i.oq = inttoptr i64 %i.ol to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i198

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i198: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i2.i199 = phi ptr [ %i.op, %bb.da ], [ %i.oq, %bb.db ]
  %i.or = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.os = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.or, ptr noundef %.0.i.i.i.i2.i199)
          to label %.noexc201 unwind label %bb.de

.noexc201:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i198
  %i.ot = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %i.oi, ptr noundef %i.os)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit203 unwind label %bb.de ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit203: ; preds = %.noexc201
  call void @_ZN6google8protobuf10BytesValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #20
  %i.ou = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.mz
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit203
  %i.ow = load i64, ptr %i.mz, align 8, !tbaa !17
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.ox) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.df

bb.dc:                                            ; preds = %.noexc.i188
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

bb.dd:                                            ; preds = %bb.cu
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %.body194

bb.de:                                            ; preds = %.noexc201, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i198, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i196
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf10BytesValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #20
  br label %.body194

.body194:                                         ; preds = %bb.dd, %bb.cx, %bb.de
  %.pn = phi { ptr, i32 } [ %i.pa, %bb.de ], [ %i.oz, %bb.dd ], [ %i.nw, %bb.cx ] ; 2 uses
  %i.pb = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.mz
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %.body194
  %i.pd = load i64, ptr %i.mz, align 8, !tbaa !17
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %.body194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %bb.dc
  %.pn.pn = phi { ptr, i32 } [ %i.oy, %bb.dc ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %.pn, %.body194 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.dg

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pf = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.df
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !17
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.dq

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %.pn110.pn.pn = phi { ptr, i32 } [ %.pn110.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  %i.pk = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.pm = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.dg
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !17
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.dr

bb.dh:                                            ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit
  %i.pp = load i8, ptr %i.c, align 1
  %i.pq = and i8 %i.pp, 32
  %.not224 = icmp eq i8 %i.pq, 0
  br i1 %.not224, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pr = tail call noundef ptr @_ZNK6google8protobuf10Reflection15GetRepeatedEnumERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.ps = tail call noundef ptr @_ZNK6google8protobuf10Reflection7GetEnumERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.pt = phi ptr [ %i.pr, %bb.di ], [ %i.ps, %bb.dj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !142
  call void @_ZN6google8protobuf10Int32ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef null)
  %i.pw = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %i.pv, ptr %i.pw, align 8, !tbaa !17, !alias.scope !185
  %i.px = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !3, !alias.scope !185
  %i.pz = or i32 %i.py, 1
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !3, !alias.scope !185
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !3
  %i.qc = or i32 %i.qb, 1
  store i32 %i.qc, ptr %i.qa, align 4, !tbaa !3
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !40 ; 3 uses
  %i.qf = trunc i64 %i.qe to i1
  br i1 %i.qf, label %bb.dl, label %bb.dm, !prof !42

bb.dl:                                            ; preds = %bb.dk
  %i.qg = add nsw i64 %i.qe, -1
  %i.qh = inttoptr i64 %i.qg to ptr
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i216

bb.dm:                                            ; preds = %bb.dk
  %i.qj = inttoptr i64 %i.qe to ptr
  br label %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i216

_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i216: ; preds = %bb.dm, %bb.dl
  %.0.i.i.i.i.i217 = phi ptr [ %i.qi, %bb.dl ], [ %i.qj, %bb.dm ]
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ql = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.qk, ptr noundef %.0.i.i.i.i.i217)
          to label %.noexc220 unwind label %bb.dp

.noexc220:                                        ; preds = %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i216
  %i.qm = load i32, ptr %i.qa, align 8, !tbaa !3
  %i.qn = or i32 %i.qm, 2
  store i32 %i.qn, ptr %i.qa, align 8, !tbaa !3
  %i.qo = load i64, ptr %i.qd, align 8, !tbaa !40 ; 3 uses
  %i.qp = trunc i64 %i.qo to i1
  br i1 %i.qp, label %bb.dn, label %bb.do, !prof !42

bb.dn:                                            ; preds = %.noexc220
  %i.qq = add nsw i64 %i.qo, -1
  %i.qr = inttoptr i64 %i.qq to ptr
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !43
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i218

bb.do:                                            ; preds = %.noexc220
  %i.qt = inttoptr i64 %i.qo to ptr
  br label %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i218

_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i218: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i2.i219 = phi ptr [ %i.qs, %bb.dn ], [ %i.qt, %bb.do ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.qv = invoke noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, ptr noundef %.0.i.i.i.i2.i219)
          to label %.noexc221 unwind label %bb.dp

.noexc221:                                        ; preds = %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i218
  %i.qw = invoke noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %i.ql, ptr noundef %i.qv)
          to label %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit223 unwind label %bb.dp ; 0 uses

_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit223: ; preds = %.noexc221
  call void @_ZN6google8protobuf10Int32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.dq

bb.dp:                                            ; preds = %.noexc221, %_ZN6google8protobuf3Any13mutable_valueB5cxx11Ev.exit.i218, %_ZN6google8protobuf3Any16mutable_type_urlB5cxx11Ev.exit.i216
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf10Int32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.dr

bb.dq:                                            ; preds = %_ZN6google8protobuf6Option13mutable_valueEv.exit, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit172, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit164, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit156, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit148, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit140, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit132, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit124, %_ZN6google8protobuf3Any8PackFromERKNS0_7MessageE.exit
  ret void

bb.dr:                                            ; preds = %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %bb.by, %bb.bp, %bb.bg, %bb.ax, %bb.ao, %bb.af, %bb.w
  %.pn114 = phi { ptr, i32 } [ %i.cw, %bb.w ], [ %i.ed, %bb.af ], [ %i.fk, %bb.ao ], [ %i.gr, %bb.ax ], [ %i.hy, %bb.bg ], [ %i.jf, %bb.bp ], [ %i.kn, %bb.by ], [ %.pn110.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %i.qx, %bb.dp ]
  resume { ptr, i32 } %.pn114
}

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef double @_ZNK6google8protobuf10Reflection17GetRepeatedDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef double @_ZNK6google8protobuf10Reflection9GetDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf11DoubleValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef float @_ZNK6google8protobuf10Reflection16GetRepeatedFloatERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef float @_ZNK6google8protobuf10Reflection8GetFloatERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf10FloatValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf10Int64ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf11UInt64ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf10Int32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf11UInt32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection15GetRepeatedBoolERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection7GetBoolERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf9BoolValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZNK6google8protobuf10Reflection17GetRepeatedStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZNK6google8protobuf10Reflection9GetStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf11StringValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6google8protobuf10BytesValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef ptr @_ZNK6google8protobuf10Reflection15GetRepeatedEnumERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK6google8protobuf10Reflection7GetEnumERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_3AnyEEEPvPS1_(ptr noundef %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 40)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @_ZN6google8protobuf3AnyC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef %0)
  ret ptr %i.c
}

declare void @_ZN6google8protobuf3AnyC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN6google8protobuf8internal16InternalPackFromERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf11DoubleValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf10FloatValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf10Int64ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf11UInt64ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf10Int32ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf11UInt32ValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf9BoolValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf11StringValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf10BytesValueC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_6OptionEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !3
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_6OptionEEEPvPS1_(ptr noundef %1) ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !49
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.prefetch.p0(ptr nonnull %i.a, i32 0, i32 3, i32 1)
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = and i64 %i.e, 1
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !147
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.h, align 8, !tbaa !3
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, ptr noundef %1)
  %i.l = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_6OptionEEEPvPS1_(ptr noundef %1) ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !49
  %i.m = load ptr, ptr %0, align 8, !tbaa !46
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 2, ptr %i.q, align 4, !tbaa !148
end_hunk_4
