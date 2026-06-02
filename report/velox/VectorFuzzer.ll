inline.NumInlined: 35813
inline.NumDeleted: 7889
begin_hunk_0_@_ZN8facebook5velox18randRowTypeByWidthERN5folly12xoshiro256ppIjDv4_yEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISA_EEi:bb.a
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !184
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit40

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE9push_backEOS5_.exit35 unwind label %bb.aj

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE9push_backEOS5_.exit35: ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50 ; 8 uses
  %.not.i.i36 = icmp eq ptr %.pre, null
  br i1 %.not.i.i36, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit40, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE9push_backEOS5_.exit35
  %i.az = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.az, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !63
  %i.be = load ptr, ptr %.pre, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #34, !inline_history !410
  %i.bh = load ptr, ptr %.pre, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #34, !inline_history !410
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit40

bb.x:                                             ; preds = %bb.v
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i37 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i37, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

bb.z:                                             ; preds = %bb.x
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i39 = phi i32 [ %i.bc, %bb.y ], [ %i.bm, %bb.z ]
  %i.bn = icmp eq i32 %.0.i.i.i.i39, 1
  br i1 %i.bn, label %bb.aa, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit40, !prof !40

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #34
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit40

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit40: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE9push_backEOS5_.exit35.thread, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE9push_backEOS5_.exit35, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN8facebook5velox3ROWEOSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.124") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.al

_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit40
  %i.bo = load <2 x ptr>, ptr %7, align 16, !tbaa !60
  store <2 x ptr> %i.bo, ptr %0, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.bp = load ptr, ptr %4, align 8, !tbaa !186   ; 3 uses
  %i.bq = load ptr, ptr %i.at, align 8, !tbaa !184 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i ], [ %i.bp, %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bt, align 8, !tbaa !61
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !63
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #34, !inline_history !425
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #34, !inline_history !425
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.ae ], [ %i.cg, %bb.af ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.ag, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, !prof !40

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #34
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ac, %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.ci, %i.bq
  br i1 %.not.i.i.i45, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !426

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !186
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bp, %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ck = load ptr, ptr %i.av, align 8, !tbaa !417
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #44
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.ai:                                            ; preds = %._crit_edge
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.aj ], [ %i.co, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.am

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit40
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.am

bb.am:                                            ; preds = %bb.s, %bb.al, %bb.ak
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.cq, %bb.al ], [ %.pn26, %bb.s ]
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn26.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox12VectorFuzzer18randRowTypeByWidthEi(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.5") align 8 captures(none) %0, ptr noundef nonnull align 32 dereferenceable(1528) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN8facebook5velox18defaultScalarTypesEv() ; 0 uses
  tail call void @_ZN8facebook5velox18randRowTypeByWidthERN5folly12xoshiro256ppIjDv4_yEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISA_EEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.5") align 8 %0, ptr noundef nonnull align 32 dereferenceable(1288) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox18defaultScalarTypesEvE12kScalarTypes, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox12VectorFuzzer11randInRangeEmm(ptr noundef nonnull align 32 dereferenceable(1528) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = tail call noundef i64 @_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEEmEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 32 dereferenceable(1288) %i.a, i64 noundef %1, i64 noundef %2)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox12VectorFuzzer21fuzzRowChildrenToLazyESt10shared_ptrINS0_9RowVectorEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.115") align 8 captures(none) %0, ptr noundef nonnull align 32 dereferenceable(1528) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.110", align 8   ; 16 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 10 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %2, align 8, !tbaa !421    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.b, !prof !91

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12VectorFuzzer21fuzzRowChildrenToLazyESt10shared_ptrINS0_9RowVectorEEE18veloxCheckFailArgs) #42
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !434  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !434  ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1152 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1408 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1344 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1376 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36
  %.pre = load ptr, ptr %2, align 8, !tbaa !421
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bf = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr null, ptr %i.a, align 8, !tbaa !960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !82
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  store ptr null, ptr %0, align 8, !tbaa !421, !alias.scope !1062
  %i.bi = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #43
          to label %.noexc unwind label %bb.bp    ; 6 uses

.noexc:                                           ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 1, ptr %i.bl, align 8, !tbaa !61, !noalias !1062
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 1, ptr %i.bm, align 4, !tbaa !63, !noalias !1062
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bi, align 8, !tbaa !64, !noalias !1062
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9RowVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDniSt6vectorIS7_INS1_10BaseVectorEESaISF_EEEEvPT_DpOT0_(ptr noundef nonnull %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bh unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !1062

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 168) #44, !noalias !1062
  br label %.body

bb.f:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36
  %.sroa.064.0113 = phi ptr [ %i.i, %.lr.ph ], [ %i.kh, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36 ] ; 3 uses
  %6 = load ptr, ptr %.sroa.064.0113, align 8, !tbaa !76 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.064.0113, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !50       ; 20 uses
  %.not.i.i.i = icmp eq ptr %8, null              ; 5 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %bb.j, label %bb.m, !prof !40

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12VectorFuzzer21fuzzRowChildrenToLazyESt10shared_ptrINS0_9RowVectorEEE18veloxCheckFailArgs_0) #42
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !374
  %i.bx = icmp eq i32 %i.bw, 9
  br i1 %i.bx, label %bb.n, label %bb.q, !prof !40

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12VectorFuzzer21fuzzRowChildrenToLazyESt10shared_ptrINS0_9RowVectorEEE18veloxCheckFailArgs_1) #42
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %.pre.i.i = load i64, ptr %i.n, align 32, !tbaa !56
  %.promoted = load <4 x i64>, ptr %i.o, align 32
  %.promoted82 = load <4 x i64>, ptr %i.p, align 32
  %.promoted83 = load <4 x i64>, ptr %i.q, align 32
  %.promoted84 = load <4 x i64>, ptr %i.r, align 32
  %.promoted85 = load <4 x i64>, ptr %i.s, align 32
  %.promoted86 = load <4 x i64>, ptr %i.t, align 32
  %.promoted87 = load <4 x i64>, ptr %i.v, align 32
  %.promoted88 = load <4 x i64>, ptr %i.w, align 32
  %.promoted89 = load <4 x i64>, ptr %i.x, align 32
  %.promoted90 = load <4 x i64>, ptr %i.y, align 32
  %.promoted91 = load <4 x i64>, ptr %i.aa, align 32
  %.promoted92 = load <4 x i64>, ptr %i.ab, align 32
  %.promoted93 = load <4 x i64>, ptr %i.ac, align 32
  %.promoted94 = load <4 x i64>, ptr %i.ad, align 32
  %.promoted95 = load <4 x i64>, ptr %i.af, align 32
  %.promoted96 = load <4 x i64>, ptr %i.ag, align 32
  %.promoted97 = load <4 x i64>, ptr %i.ah, align 32
  %.promoted98 = load <4 x i64>, ptr %i.ai, align 32
  %.promoted99 = load <4 x i64>, ptr %i.ak, align 32
  %.promoted100 = load <4 x i64>, ptr %i.al, align 32
  %.promoted101 = load <4 x i64>, ptr %i.am, align 32
  %.promoted102 = load <4 x i64>, ptr %i.an, align 32
  %.promoted103 = load <4 x i64>, ptr %i.ap, align 32
  %.promoted104 = load <4 x i64>, ptr %i.aq, align 32
  %.promoted105 = load <4 x i64>, ptr %i.ar, align 32
  %.promoted106 = load <4 x i64>, ptr %i.as, align 32
  %.promoted107 = load <4 x i64>, ptr %i.au, align 32
  %.promoted108 = load <4 x i64>, ptr %i.av, align 32
  %.promoted109 = load <4 x i64>, ptr %i.aw, align 32
  %.promoted110 = load <4 x i64>, ptr %i.ax, align 32
  %.promoted111 = load <4 x i64>, ptr %i.az, align 32
  %.promoted112 = load <4 x i64>, ptr %i.ba, align 32
  br label %bb.r

bb.r:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i, %bb.q
  %i.bz = phi <4 x i64> [ %i.gj, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted112, %bb.q ] ; 2 uses
  %i.ca = phi <4 x i64> [ %i.gk, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted111, %bb.q ] ; 4 uses
  %i.cb = phi <4 x i64> [ %i.gl, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted110, %bb.q ] ; 3 uses
  %i.cc = phi <4 x i64> [ %i.gm, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted109, %bb.q ] ; 5 uses
  %i.cd = phi <4 x i64> [ %i.gn, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted108, %bb.q ] ; 2 uses
  %i.ce = phi <4 x i64> [ %i.go, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted107, %bb.q ] ; 4 uses
  %i.cf = phi <4 x i64> [ %i.gp, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted106, %bb.q ] ; 3 uses
  %i.cg = phi <4 x i64> [ %i.gq, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted105, %bb.q ] ; 5 uses
  %i.ch = phi <4 x i64> [ %i.gr, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted104, %bb.q ] ; 2 uses
  %i.ci = phi <4 x i64> [ %i.gs, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted103, %bb.q ] ; 4 uses
  %i.cj = phi <4 x i64> [ %i.gt, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted102, %bb.q ] ; 3 uses
  %i.ck = phi <4 x i64> [ %i.gu, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted101, %bb.q ] ; 5 uses
  %i.cl = phi <4 x i64> [ %i.gv, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted100, %bb.q ] ; 2 uses
  %i.cm = phi <4 x i64> [ %i.gw, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted99, %bb.q ] ; 4 uses
  %i.cn = phi <4 x i64> [ %i.gx, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted98, %bb.q ] ; 3 uses
  %i.co = phi <4 x i64> [ %i.gy, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted97, %bb.q ] ; 5 uses
  %i.cp = phi <4 x i64> [ %i.gz, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted96, %bb.q ] ; 2 uses
  %i.cq = phi <4 x i64> [ %i.ha, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted95, %bb.q ] ; 4 uses
  %i.cr = phi <4 x i64> [ %i.hb, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted94, %bb.q ] ; 3 uses
  %i.cs = phi <4 x i64> [ %i.hc, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted93, %bb.q ] ; 5 uses
  %i.ct = phi <4 x i64> [ %i.hd, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted92, %bb.q ] ; 2 uses
  %i.cu = phi <4 x i64> [ %i.he, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted91, %bb.q ] ; 4 uses
  %i.cv = phi <4 x i64> [ %i.hf, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted90, %bb.q ] ; 3 uses
  %i.cw = phi <4 x i64> [ %i.hg, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted89, %bb.q ] ; 5 uses
  %i.cx = phi <4 x i64> [ %i.hh, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted88, %bb.q ] ; 2 uses
  %i.cy = phi <4 x i64> [ %i.hi, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted87, %bb.q ] ; 4 uses
  %i.cz = phi <4 x i64> [ %i.hj, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted86, %bb.q ] ; 3 uses
  %i.da = phi <4 x i64> [ %i.hk, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted85, %bb.q ] ; 5 uses
  %i.db = phi <4 x i64> [ %i.hl, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted84, %bb.q ] ; 2 uses
  %i.dc = phi <4 x i64> [ %i.hm, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted83, %bb.q ] ; 4 uses
  %i.dd = phi <4 x i64> [ %i.hn, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted82, %bb.q ] ; 3 uses
  %i.de = phi <4 x i64> [ %i.ho, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.promoted, %bb.q ] ; 5 uses
  %i.df = phi i64 [ %i.hq, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.pre.i.i, %bb.q ] ; 2 uses
  %i.dg = icmp eq i64 %i.df, 64
  br i1 %i.dg, label %bb.s, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i, !prof !40

bb.s:                                             ; preds = %bb.r
  %i.dh = add <4 x i64> %i.dd, %i.de              ; 2 uses
  %i.di = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dh, <4 x i64> %i.dh, <4 x i64> splat (i64 23))
  %i.dj = add <4 x i64> %i.di, %i.de
  store <4 x i64> %i.dj, ptr %i.m, align 32, !tbaa !51
  %i.dk = shl <4 x i64> %i.dc, splat (i64 17)
  %i.dl = xor <4 x i64> %i.db, %i.de              ; 2 uses
  %i.dm = xor <4 x i64> %i.dc, %i.dd              ; 3 uses
  %i.dn = xor <4 x i64> %i.dl, %i.dc              ; 2 uses
  store <4 x i64> %i.dn, ptr %i.q, align 32, !tbaa !51
  %i.do = xor <4 x i64> %i.dm, %i.de              ; 2 uses
  store <4 x i64> %i.do, ptr %i.o, align 32, !tbaa !51
  %i.dp = xor <4 x i64> %i.dl, %i.dk              ; 2 uses
  store <4 x i64> %i.dp, ptr %i.r, align 32, !tbaa !51
  %i.dq = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dm, <4 x i64> %i.dm, <4 x i64> splat (i64 45)) ; 2 uses
  store <4 x i64> %i.dq, ptr %i.p, align 32, !tbaa !51
  %i.dr = add <4 x i64> %i.cz, %i.da              ; 2 uses
  %i.ds = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dr, <4 x i64> %i.dr, <4 x i64> splat (i64 23))
  %i.dt = add <4 x i64> %i.ds, %i.da
  store <4 x i64> %i.dt, ptr %i.u, align 32, !tbaa !51
  %i.du = shl <4 x i64> %i.cy, splat (i64 17)
  %i.dv = xor <4 x i64> %i.cx, %i.da              ; 2 uses
  %i.dw = xor <4 x i64> %i.cy, %i.cz              ; 3 uses
  %i.dx = xor <4 x i64> %i.dv, %i.cy              ; 2 uses
  store <4 x i64> %i.dx, ptr %i.v, align 32, !tbaa !51
  %i.dy = xor <4 x i64> %i.dw, %i.da              ; 2 uses
  store <4 x i64> %i.dy, ptr %i.s, align 32, !tbaa !51
  %i.dz = xor <4 x i64> %i.dv, %i.du              ; 2 uses
  store <4 x i64> %i.dz, ptr %i.w, align 32, !tbaa !51
  %i.ea = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dw, <4 x i64> %i.dw, <4 x i64> splat (i64 45)) ; 2 uses
  store <4 x i64> %i.ea, ptr %i.t, align 32, !tbaa !51
  %i.eb = add <4 x i64> %i.cv, %i.cw              ; 2 uses
  %i.ec = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.eb, <4 x i64> %i.eb, <4 x i64> splat (i64 23))
  %i.ed = add <4 x i64> %i.ec, %i.cw
  store <4 x i64> %i.ed, ptr %i.z, align 32, !tbaa !51
  %i.ee = shl <4 x i64> %i.cu, splat (i64 17)
  %i.ef = xor <4 x i64> %i.ct, %i.cw              ; 2 uses
  %i.eg = xor <4 x i64> %i.cu, %i.cv              ; 3 uses
  %i.eh = xor <4 x i64> %i.ef, %i.cu              ; 2 uses
  store <4 x i64> %i.eh, ptr %i.aa, align 32, !tbaa !51
  %i.ei = xor <4 x i64> %i.eg, %i.cw              ; 2 uses
  store <4 x i64> %i.ei, ptr %i.x, align 32, !tbaa !51
  %i.ej = xor <4 x i64> %i.ef, %i.ee              ; 2 uses
  store <4 x i64> %i.ej, ptr %i.ab, align 32, !tbaa !51
  %i.ek = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.eg, <4 x i64> %i.eg, <4 x i64> splat (i64 45)) ; 2 uses
  store <4 x i64> %i.ek, ptr %i.y, align 32, !tbaa !51
  %i.el = add <4 x i64> %i.cr, %i.cs              ; 2 uses
  %i.em = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.el, <4 x i64> %i.el, <4 x i64> splat (i64 23))
  %i.en = add <4 x i64> %i.em, %i.cs
  store <4 x i64> %i.en, ptr %i.ae, align 32, !tbaa !51
  %i.eo = shl <4 x i64> %i.cq, splat (i64 17)
  %i.ep = xor <4 x i64> %i.cp, %i.cs              ; 2 uses
  %i.eq = xor <4 x i64> %i.cq, %i.cr              ; 3 uses
  %i.er = xor <4 x i64> %i.ep, %i.cq              ; 2 uses
  store <4 x i64> %i.er, ptr %i.af, align 32, !tbaa !51
  %i.es = xor <4 x i64> %i.eq, %i.cs              ; 2 uses
  store <4 x i64> %i.es, ptr %i.ac, align 32, !tbaa !51
  %i.et = xor <4 x i64> %i.ep, %i.eo              ; 2 uses
  store <4 x i64> %i.et, ptr %i.ag, align 32, !tbaa !51
  %i.eu = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.eq, <4 x i64> %i.eq, <4 x i64> splat (i64 45)) ; 2 uses
  store <4 x i64> %i.eu, ptr %i.ad, align 32, !tbaa !51
  %i.ev = add <4 x i64> %i.cn, %i.co              ; 2 uses
  %i.ew = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ev, <4 x i64> %i.ev, <4 x i64> splat (i64 23))
  %i.ex = add <4 x i64> %i.ew, %i.co
  store <4 x i64> %i.ex, ptr %i.aj, align 32, !tbaa !51
  %i.ey = shl <4 x i64> %i.cm, splat (i64 17)
  %i.ez = xor <4 x i64> %i.cl, %i.co              ; 2 uses
  %i.fa = xor <4 x i64> %i.cm, %i.cn              ; 3 uses
  %i.fb = xor <4 x i64> %i.ez, %i.cm              ; 2 uses
  store <4 x i64> %i.fb, ptr %i.ak, align 32, !tbaa !51
  %i.fc = xor <4 x i64> %i.fa, %i.co              ; 2 uses
  store <4 x i64> %i.fc, ptr %i.ah, align 32, !tbaa !51
  %i.fd = xor <4 x i64> %i.ez, %i.ey              ; 2 uses
  store <4 x i64> %i.fd, ptr %i.al, align 32, !tbaa !51
  %i.fe = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fa, <4 x i64> %i.fa, <4 x i64> splat (i64 45)) ; 2 uses
  store <4 x i64> %i.fe, ptr %i.ai, align 32, !tbaa !51
  %i.ff = add <4 x i64> %i.cj, %i.ck              ; 2 uses
  %i.fg = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ff, <4 x i64> %i.ff, <4 x i64> splat (i64 23))
  %i.fh = add <4 x i64> %i.fg, %i.ck
  store <4 x i64> %i.fh, ptr %i.ao, align 32, !tbaa !51
  %i.fi = shl <4 x i64> %i.ci, splat (i64 17)
  %i.fj = xor <4 x i64> %i.ch, %i.ck              ; 2 uses
  %i.fk = xor <4 x i64> %i.ci, %i.cj              ; 3 uses
  %i.fl = xor <4 x i64> %i.fj, %i.ci              ; 2 uses
  store <4 x i64> %i.fl, ptr %i.ap, align 32, !tbaa !51
  %i.fm = xor <4 x i64> %i.fk, %i.ck              ; 2 uses
  store <4 x i64> %i.fm, ptr %i.am, align 32, !tbaa !51
  %i.fn = xor <4 x i64> %i.fj, %i.fi              ; 2 uses
  store <4 x i64> %i.fn, ptr %i.aq, align 32, !tbaa !51
  %i.fo = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fk, <4 x i64> %i.fk, <4 x i64> splat (i64 45)) ; 2 uses
  store <4 x i64> %i.fo, ptr %i.an, align 32, !tbaa !51
  %i.fp = add <4 x i64> %i.cf, %i.cg              ; 2 uses
  %i.fq = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fp, <4 x i64> %i.fp, <4 x i64> splat (i64 23))
  %i.fr = add <4 x i64> %i.fq, %i.cg
  store <4 x i64> %i.fr, ptr %i.at, align 32, !tbaa !51
  %i.fs = shl <4 x i64> %i.ce, splat (i64 17)
  %i.ft = xor <4 x i64> %i.cd, %i.cg              ; 2 uses
  %i.fu = xor <4 x i64> %i.ce, %i.cf              ; 3 uses
  %i.fv = xor <4 x i64> %i.ft, %i.ce              ; 2 uses
  store <4 x i64> %i.fv, ptr %i.au, align 32, !tbaa !51
  %i.fw = xor <4 x i64> %i.fu, %i.cg              ; 2 uses
  store <4 x i64> %i.fw, ptr %i.ar, align 32, !tbaa !51
  %i.fx = xor <4 x i64> %i.ft, %i.fs              ; 2 uses
  store <4 x i64> %i.fx, ptr %i.av, align 32, !tbaa !51
  %i.fy = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fu, <4 x i64> %i.fu, <4 x i64> splat (i64 45)) ; 2 uses
  store <4 x i64> %i.fy, ptr %i.as, align 32, !tbaa !51
  %i.fz = add <4 x i64> %i.cb, %i.cc              ; 2 uses
  %i.ga = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fz, <4 x i64> %i.fz, <4 x i64> splat (i64 23))
  %i.gb = add <4 x i64> %i.ga, %i.cc
  store <4 x i64> %i.gb, ptr %i.ay, align 32, !tbaa !51
  %i.gc = shl <4 x i64> %i.ca, splat (i64 17)
  %i.gd = xor <4 x i64> %i.bz, %i.cc              ; 2 uses
  %i.ge = xor <4 x i64> %i.ca, %i.cb              ; 3 uses
  %i.gf = xor <4 x i64> %i.gd, %i.ca              ; 2 uses
  store <4 x i64> %i.gf, ptr %i.az, align 32, !tbaa !51
  %i.gg = xor <4 x i64> %i.ge, %i.cc              ; 2 uses
  store <4 x i64> %i.gg, ptr %i.aw, align 32, !tbaa !51
  %i.gh = xor <4 x i64> %i.gd, %i.gc              ; 2 uses
  store <4 x i64> %i.gh, ptr %i.ba, align 32, !tbaa !51
  %i.gi = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ge, <4 x i64> %i.ge, <4 x i64> splat (i64 45)) ; 2 uses
  store <4 x i64> %i.gi, ptr %i.ax, align 32, !tbaa !51
  store i64 0, ptr %i.n, align 32, !tbaa !56
  br label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i

_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i:     ; preds = %bb.s, %bb.r
  %i.gj = phi <4 x i64> [ %i.bz, %bb.r ], [ %i.gh, %bb.s ]
  %i.gk = phi <4 x i64> [ %i.ca, %bb.r ], [ %i.gf, %bb.s ]
  %i.gl = phi <4 x i64> [ %i.cb, %bb.r ], [ %i.gi, %bb.s ]
  %i.gm = phi <4 x i64> [ %i.cc, %bb.r ], [ %i.gg, %bb.s ]
  %i.gn = phi <4 x i64> [ %i.cd, %bb.r ], [ %i.fx, %bb.s ]
  %i.go = phi <4 x i64> [ %i.ce, %bb.r ], [ %i.fv, %bb.s ]
  %i.gp = phi <4 x i64> [ %i.cf, %bb.r ], [ %i.fy, %bb.s ]
  %i.gq = phi <4 x i64> [ %i.cg, %bb.r ], [ %i.fw, %bb.s ]
  %i.gr = phi <4 x i64> [ %i.ch, %bb.r ], [ %i.fn, %bb.s ]
  %i.gs = phi <4 x i64> [ %i.ci, %bb.r ], [ %i.fl, %bb.s ]
  %i.gt = phi <4 x i64> [ %i.cj, %bb.r ], [ %i.fo, %bb.s ]
  %i.gu = phi <4 x i64> [ %i.ck, %bb.r ], [ %i.fm, %bb.s ]
  %i.gv = phi <4 x i64> [ %i.cl, %bb.r ], [ %i.fd, %bb.s ]
  %i.gw = phi <4 x i64> [ %i.cm, %bb.r ], [ %i.fb, %bb.s ]
  %i.gx = phi <4 x i64> [ %i.cn, %bb.r ], [ %i.fe, %bb.s ]
  %i.gy = phi <4 x i64> [ %i.co, %bb.r ], [ %i.fc, %bb.s ]
  %i.gz = phi <4 x i64> [ %i.cp, %bb.r ], [ %i.et, %bb.s ]
  %i.ha = phi <4 x i64> [ %i.cq, %bb.r ], [ %i.er, %bb.s ]
  %i.hb = phi <4 x i64> [ %i.cr, %bb.r ], [ %i.eu, %bb.s ]
  %i.hc = phi <4 x i64> [ %i.cs, %bb.r ], [ %i.es, %bb.s ]
  %i.hd = phi <4 x i64> [ %i.ct, %bb.r ], [ %i.ej, %bb.s ]
  %i.he = phi <4 x i64> [ %i.cu, %bb.r ], [ %i.eh, %bb.s ]
  %i.hf = phi <4 x i64> [ %i.cv, %bb.r ], [ %i.ek, %bb.s ]
  %i.hg = phi <4 x i64> [ %i.cw, %bb.r ], [ %i.ei, %bb.s ]
  %i.hh = phi <4 x i64> [ %i.cx, %bb.r ], [ %i.dz, %bb.s ]
  %i.hi = phi <4 x i64> [ %i.cy, %bb.r ], [ %i.dx, %bb.s ]
  %i.hj = phi <4 x i64> [ %i.cz, %bb.r ], [ %i.ea, %bb.s ]
  %i.hk = phi <4 x i64> [ %i.da, %bb.r ], [ %i.dy, %bb.s ]
  %i.hl = phi <4 x i64> [ %i.db, %bb.r ], [ %i.dp, %bb.s ]
  %i.hm = phi <4 x i64> [ %i.dc, %bb.r ], [ %i.dn, %bb.s ]
  %i.hn = phi <4 x i64> [ %i.dd, %bb.r ], [ %i.dq, %bb.s ]
  %i.ho = phi <4 x i64> [ %i.de, %bb.r ], [ %i.do, %bb.s ]
  %i.hp = phi i64 [ %i.df, %bb.r ], [ 0, %bb.s ]  ; 2 uses
  %i.hq = add i64 %i.hp, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.n, align 32, !tbaa !56
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !51
  %i.ht = uitofp i32 %i.hs to double
  %i.hu = fmul nnan double %i.ht, f0x3DF0000000000000 ; 2 uses
  %i.hv = fcmp uge double %i.hu, 1.000000e+00
  br i1 %i.hv, label %bb.r, label %bb.t

bb.t:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i
  %i.hw = fcmp olt double %i.hu, 5.000000e-01     ; 3 uses
  br i1 %i.hw, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  store ptr %6, ptr %5, align 8, !tbaa !76
  store ptr %8, ptr %i.bc, align 8, !tbaa !50
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit20, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i19 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i19, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hz = load i32, ptr %i.hx, align 4, !tbaa !3
  %i.ia = add nsw i32 %i.hz, 1
  store i32 %i.ia, ptr %i.hx, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit20

bb.x:                                             ; preds = %bb.v
  %i.ib = atomicrmw volatile add ptr %i.hx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit20

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit20: ; preds = %bb.u, %bb.w, %bb.x
  invoke void @_ZN8facebook5velox12VectorFuzzer16wrapInLazyVectorESt10shared_ptrINS0_10BaseVectorEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull %5)
          to label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit23 unwind label %.thread

bb.y:                                             ; preds = %bb.t
  store ptr %6, ptr %4, align 16, !tbaa !76
  store ptr %8, ptr %i.bb, align 8, !tbaa !50
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit23, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i22 = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i.i22, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = load i32, ptr %i.ic, align 4, !tbaa !3
  %i.if = add nsw i32 %i.ie, 1
  store i32 %i.if, ptr %i.ic, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit23

bb.ab:                                            ; preds = %bb.z
  %i.ig = atomicrmw volatile add ptr %i.ic, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit23

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit23: ; preds = %bb.ab, %bb.aa, %bb.y, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit20
  %i.ih = load ptr, ptr %i.bd, align 8, !tbaa !190 ; 5 uses
  %i.ii = load ptr, ptr %i.be, align 8, !tbaa !191
  %.not.i.i = icmp eq ptr %i.ih, %i.ii
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit23
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr null, ptr %i.ij, align 8, !tbaa !50
  %i.ik = load <2 x ptr>, ptr %4, align 16, !tbaa !60
  store ptr null, ptr %i.bb, align 8, !tbaa !50
  store <2 x ptr> %i.ik, ptr %i.ih, align 8, !tbaa !60
  store ptr null, ptr %4, align 16, !tbaa !76
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store ptr %i.il, ptr %i.bd, align 8, !tbaa !190
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE9push_backEOS4_.exit

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit23
  invoke void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE9push_backEOS4_.exit unwind label %bb.ax

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.ac, %bb.ad
  %i.im = load ptr, ptr %i.bb, align 8, !tbaa !50 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.im, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE9push_backEOS4_.exit
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.in, align 8, !tbaa !61
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 0, ptr %i.ir, align 4, !tbaa !63
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !64
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #34, !inline_history !67
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #34, !inline_history !67
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.iy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i26 = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i26, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi i32 [ %i.iq, %bb.ah ], [ %i.ja, %bb.ai ]
  %i.jb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jb, label %bb.aj, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !40

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #34
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE9push_backEOS4_.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aj
  br i1 %i.hw, label %bb.ak, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jc = load ptr, ptr %i.bc, align 8, !tbaa !50 ; 8 uses
  %.not.i.i27 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i27, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 4 uses
  %i.je = load atomic i64, ptr %i.jd acquire, align 8 ; 2 uses
  %i.jf = icmp eq i64 %i.je, 4294967297
  %i.jg = trunc i64 %i.je to i32                  ; 2 uses
  br i1 %i.jf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.jd, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  store i32 0, ptr %i.jh, align 4, !tbaa !63
  %i.ji = load ptr, ptr %i.jc, align 8, !tbaa !64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #34, !inline_history !67
  %i.jl = load ptr, ptr %i.jc, align 8, !tbaa !64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #34, !inline_history !67
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31

bb.an:                                            ; preds = %bb.al
  %i.jo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i28 = icmp eq i8 %i.jo, 0
  br i1 %.not.i.i.i28, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jp = add nsw i32 %i.jg, -1
  store i32 %i.jp, ptr %i.jd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29

bb.ap:                                            ; preds = %bb.an
  %i.jq = atomicrmw volatile add ptr %i.jd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i30 = phi i32 [ %i.jg, %bb.ao ], [ %i.jq, %bb.ap ]
  %i.jr = icmp eq i32 %.0.i.i.i.i30, 1
  br i1 %i.jr, label %bb.aq, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31, !prof !40

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #34
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29, %bb.am, %bb.ak, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.js, align 8, !tbaa !61
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !63
  %i.jx = load ptr, ptr %8, align 8, !tbaa !64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %8) #34, !inline_history !67
  %i.ka = load ptr, ptr %8, align 8, !tbaa !64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %8) #34, !inline_history !67
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

bb.at:                                            ; preds = %bb.ar
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i33 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i33, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

bb.av:                                            ; preds = %bb.at
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i35 = phi i32 [ %i.jv, %bb.au ], [ %i.kf, %bb.av ]
  %i.kg = icmp eq i32 %.0.i.i.i.i35, 1
  br i1 %i.kg, label %bb.aw, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, !prof !40

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #34
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34, %bb.aw
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.064.0113, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.k
  br i1 %i.ki, label %._crit_edge.loopexit, label %bb.f

.thread:                                          ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit20
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ad
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #34
  br i1 %i.hw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.thread, %bb.ax
  %.pn69 = phi { ptr, i32 } [ %i.kj, %.thread ], [ %i.kk, %bb.ax ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #34
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %.pn69, %bb.ay ], [ %i.kk, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.p, %bb.l
  %.pn14 = phi { ptr, i32 } [ %i.bu, %bb.l ], [ %i.by, %bb.p ], [ %.pn.pn, %bb.az ] ; 4 uses
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.km = load atomic i64, ptr %i.kl acquire, align 8 ; 2 uses
  %i.kn = icmp eq i64 %i.km, 4294967297
  %i.ko = trunc i64 %i.km to i32                  ; 2 uses
  br i1 %i.kn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.kl, align 8, !tbaa !61
  %i.kp = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.kp, align 4, !tbaa !63
  %i.kq = load ptr, ptr %8, align 8, !tbaa !64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %8) #34, !inline_history !67
  %i.kt = load ptr, ptr %8, align 8, !tbaa !64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(16) %8) #34, !inline_history !67
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41

bb.bd:                                            ; preds = %bb.bb
  %i.kw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i38 = icmp eq i8 %i.kw, 0
  br i1 %.not.i.i.i38, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kx = add nsw i32 %i.ko, -1
  store i32 %i.kx, ptr %i.kl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.bf:                                            ; preds = %bb.bd
  %i.ky = atomicrmw volatile add ptr %i.kl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i40 = phi i32 [ %i.ko, %bb.be ], [ %i.ky, %bb.bf ]
  %i.kz = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.kz, label %bb.bg, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41, !prof !40

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #34
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41

bb.bh:                                            ; preds = %.noexc
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.la, align 8, !tbaa !50, !alias.scope !1062
  store ptr %i.bn, ptr %0, align 8, !tbaa !424, !alias.scope !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.lb = load ptr, ptr %3, align 8, !tbaa !187   ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !190 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lb, %i.ld
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bh, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lv, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i ], [ %i.lb, %bb.bh ] ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 4 uses
  %i.lh = load atomic i64, ptr %i.lg acquire, align 8 ; 2 uses
  %i.li = icmp eq i64 %i.lh, 4294967297
  %i.lj = trunc i64 %i.lh to i32                  ; 2 uses
  br i1 %i.li, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.lg, align 8, !tbaa !61
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store i32 0, ptr %i.lk, align 4, !tbaa !63
  %i.ll = load ptr, ptr %i.lf, align 8, !tbaa !64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #34, !inline_history !199
  %i.lo = load ptr, ptr %i.lf, align 8, !tbaa !64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #34, !inline_history !199
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.lr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.lr, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ls = add nsw i32 %i.lj, -1
  store i32 %i.ls, ptr %i.lg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.lt = atomicrmw volatile add ptr %i.lg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lj, %bb.bl ], [ %i.lt, %bb.bm ]
  %i.lu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.lu, label %bb.bn, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i, !prof !40

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #34
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i: ; preds = %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bj, %.lr.ph.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.lv, %i.ld
  br i1 %.not.i.i.i42, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !200

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.bh
  %i.lw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.lb, %bb.bh ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !191
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.mb) #44
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.bp:                                            ; preds = %._crit_edge
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, %bb.bp
  %eh.lpad-body = phi { ptr, i32 } [ %i.mc, %bb.bp ], [ %i.bo, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.bc, %bb.ba, %.body, %bb.d
  %.pn16 = phi { ptr, i32 } [ %i.g, %bb.d ], [ %eh.lpad-body, %.body ], [ %.pn14, %bb.ba ], [ %.pn14, %bb.bc ], [ %.pn14, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39 ], [ %.pn14, %bb.bg ]
  %i.md = load ptr, ptr %3, align 8, !tbaa !187   ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !190 ; 2 uses
  %.not4.i.i.i43 = icmp eq ptr %i.md, %i.mf
  br i1 %.not4.i.i.i43, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i54, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i50
  %.05.i.i.i45 = phi ptr [ %i.mx, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i50 ], [ %i.md, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i46 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i.i.i.i.i46, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i50, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i44
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 4 uses
  %i.mj = load atomic i64, ptr %i.mi acquire, align 8 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 4294967297
  %i.ml = trunc i64 %i.mj to i32                  ; 2 uses
  br i1 %i.mk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.mi, align 8, !tbaa !61
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 0, ptr %i.mm, align 4, !tbaa !63
  %i.mn = load ptr, ptr %i.mh, align 8, !tbaa !64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(16) %i.mh) #34, !inline_history !199
  %i.mq = load ptr, ptr %i.mh, align 8, !tbaa !64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8
  call void %i.ms(ptr noundef nonnull align 8 dereferenceable(16) %i.mh) #34, !inline_history !199
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i50

bb.bs:                                            ; preds = %bb.bq
  %i.mt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i47 = icmp eq i8 %i.mt, 0
  br i1 %.not.i.i.i.i.i.i.i.i47, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mu = add nsw i32 %i.ml, -1
  store i32 %i.mu, ptr %i.mi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48

bb.bu:                                            ; preds = %bb.bs
  %i.mv = atomicrmw volatile add ptr %i.mi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i.i.i.i49 = phi i32 [ %i.ml, %bb.bt ], [ %i.mv, %bb.bu ]
  %i.mw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i49, 1
  br i1 %i.mw, label %bb.bv, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i50, !prof !40

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mh) #34
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i50

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i50: ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48, %bb.br, %.lr.ph.i.i.i44
  %i.mx = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 16 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.mx, %i.mf
  br i1 %.not.i.i.i51, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i52, label %.lr.ph.i.i.i44, !llvm.loop !200

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i52: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i50
  %.pr.i53 = load ptr, ptr %3, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i54

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i54: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i52, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41
  %i.my = phi ptr [ %.pr.i53, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i52 ], [ %i.md, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41 ] ; 3 uses
  %.not.i.i1.i55 = icmp eq ptr %i.my, null
  br i1 %.not.i.i1.i55, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit56, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i54
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !191
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nd) #44
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit56

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit56: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i54, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN8facebook5velox21canWrapRowChildInLazyERKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !209
  %i.d = icmp eq i8 %i.c, 32
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
end_hunk_0
