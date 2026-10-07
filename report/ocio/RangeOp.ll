Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/RangeOp?download=true
inline.NumInlined: 415
inline.NumDeleted: 230
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_17RangeOp14canCombineWithERSt10shared_ptrIKNS_2OpEE:bb.a

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %.217

bb.bs:                                            ; preds = %bb.bf, %bb.k, %bb.j
  %.pn20 = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.ac, %bb.k ], [ %.pn, %bb.bf ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.i
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.bs ], [ %i.aa, %bb.i ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn20.pn

bb.bu:                                            ; preds = %bb.av, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_17RangeOp11combineWithERNS_10OpRcPtrVecERSt10shared_ptrIKNS_2OpEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.13", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.29", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.29", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #18
  br label %bb.bl

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.g = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61, !noalias !180 ; 3 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !74, !alias.scope !180
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27, !noalias !180 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !27, !alias.scope !180
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !180
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.m, align 4, !tbaa !30, !noalias !180
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !30, !noalias !180
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit

bb.h:                                             ; preds = %bb.f
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !180 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !74
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit

_ZNK16OpenColorIO_v2_52Op4dataEv.exit:            ; preds = %bb.e, %bb.g, %bb.h
  %i.r = phi ptr [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(168) %i.r)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit
  %i.w = and i32 %i.v, -2
  %or.cond = icmp eq i32 %i.w, 10
  br i1 %or.cond, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27, !noalias !181 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %2, align 8, !tbaa !32, !noalias !181
  store <2 x ptr> %i.aa, ptr %4, align 16, !tbaa !32, !alias.scope !181
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZSt18const_pointer_castIN16OpenColorIO_v2_52OpEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !181
  %.not.i.i.i.i.i26 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !30, !noalias !181
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !30, !noalias !181
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_52OpEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.m:                                             ; preds = %bb.k
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4, !noalias !181 ; 0 uses
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_52OpEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt18const_pointer_castIN16OpenColorIO_v2_52OpEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.j, %bb.l, %bb.m
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVec9push_backERKSt10shared_ptrINS_2OpEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_52OpEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !27  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ah, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !21
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #18, !inline_history !1
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #18, !inline_history !1
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.r ], [ %i.au, %bb.s ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.t, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #18
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bd

bb.u:                                             ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.v:                                             ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_52OpEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bk

bb.w:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val19 = load ptr, ptr %i.ay, align 8, !tbaa !61, !noalias !70
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val20 = load ptr, ptr %i.az, align 8, !tbaa !27, !noalias !70
  call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_17RangeOp9rangeDataEv(ptr dead_on_unwind noalias writable align 8 %5, ptr %.val19, ptr %.val20)
  %.val21 = load ptr, ptr %2, align 8, !tbaa !64, !nonnull !65, !noundef !65
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val22 = load ptr, ptr %i.ba, align 8          ; 10 uses
  %i.bb = tail call ptr @__dynamic_cast(ptr nonnull %.val21, ptr nonnull @_ZTIN16OpenColorIO_v2_52OpE, ptr nonnull @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpE, i64 0) #18, !noalias !182 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %.not.i.i.i.i.i27 = icmp eq ptr %.val22, null   ; 2 uses
  br i1 %.not.i.i.i.i.i27, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_17RangeOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %.val22, i64 8 ; 3 uses
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !182
  %.not.i.i.i.i.i.i28 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i28, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !30, !noalias !182
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !30, !noalias !182
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_17RangeOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit

bb.z:                                             ; preds = %bb.x
  %i.bg = atomicrmw volatile add ptr %i.bc, i32 1 acq_rel, align 4, !noalias !182 ; 0 uses
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_17RangeOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_17RangeOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit: ; preds = %bb.w, %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bh = getelementptr i8, ptr %i.bb, i64 8
  %.val = load ptr, ptr %i.bh, align 8, !tbaa !61, !noalias !70
  %i.bi = getelementptr i8, ptr %i.bb, i64 16
  %.val18 = load ptr, ptr %i.bi, align 8, !tbaa !27, !noalias !70
  call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_17RangeOp9rangeDataEv(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val, ptr %.val18)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bj = load ptr, ptr %5, align 8, !tbaa !67
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(228) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.aa unwind label %bb.ba

bb.aa:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_17RangeOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit
  invoke void @_ZN16OpenColorIO_v2_513CreateRangeOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11RangeOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0)
          to label %bb.ab unwind label %bb.bb

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27 ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !21
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18, !inline_history !0
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i30 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i30, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i32 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.ca, label %bb.ah, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27 ; 8 uses
  %.not.i.i33 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i33, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.cd, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !21
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #18, !inline_history !4
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #18, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i34 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i34, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

bb.am:                                            ; preds = %bb.ak
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i36 = phi i32 [ %i.cg, %bb.al ], [ %i.cq, %bb.am ]
  %i.cr = icmp eq i32 %.0.i.i.i.i36, 1
  br i1 %i.cr, label %bb.an, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #18
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.not.i.i.i.i.i27, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.val22, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.cs, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %.val22, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !21
  %i.cx = load ptr, ptr %.val22, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %.val22) #18, !inline_history !5
  %i.da = load ptr, ptr %.val22, align 8, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %.val22) #18, !inline_history !5
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i38 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i38, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.as:                                            ; preds = %bb.aq
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i40 = phi i32 [ %i.cv, %bb.ar ], [ %i.df, %bb.as ]
  %i.dg = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.dg, label %bb.at, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val22) #18
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.at
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.di, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dj, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !21
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #18, !inline_history !4
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #18, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45

bb.aw:                                            ; preds = %bb.au
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i42 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i42, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

bb.ay:                                            ; preds = %bb.aw
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i44 = phi i32 [ %i.dm, %bb.ax ], [ %i.dw, %bb.ay ]
  %i.dx = icmp eq i32 %.0.i.i.i.i44, 1
  br i1 %i.dx, label %bb.az, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, !prof !31

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #18
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bd

bb.ba:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_17RangeOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aa
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.bb ], [ %i.dy, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call fastcc void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.val22) #18
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bk

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ea = load ptr, ptr %i.j, align 8, !tbaa !27  ; 8 uses
  %.not.i.i46 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i46, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.eb, align 8, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !21
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #18, !inline_history !3
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #18, !inline_history !3
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i47 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i47, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48

bb.bi:                                            ; preds = %bb.bg
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i49 = phi i32 [ %i.ee, %bb.bh ], [ %i.eo, %bb.bi ]
  %i.ep = icmp eq i32 %.0.i.i.i.i49, 1
  br i1 %i.ep, label %bb.bj, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #18
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bd, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.bk:                                            ; preds = %bb.bc, %bb.v, %bb.u
  %.pn15 = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %.pn, %bb.bc ], [ %i.aw, %bb.u ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.d
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.bk ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_52Op19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_52Op12dumpMetadataERSt10shared_ptrINS_17ProcessorMetadataEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
end_hunk_0
