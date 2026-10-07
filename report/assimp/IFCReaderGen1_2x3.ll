Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCReaderGen1_2x3?download=true
inline.NumInlined: 30568
inline.NumDeleted: 15922
begin_hunk_0_@_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x317IfcLocalPlacementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !noalias !1792
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.u, align 4, !noalias !1792
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !noalias !1792
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4, !noalias !1792 ; 0 uses
  %.pre = load ptr, ptr %6, align 8
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %bb.g, %bb.i, %bb.j
  %i.z = phi ptr [ %i.q, %bb.g ], [ %i.q, %bb.i ], [ %.pre, %bb.j ]
  %i.aa = tail call ptr @__dynamic_cast(ptr nonnull %i.z, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS5UNSETE, i64 0) #25
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x318IfcObjectPlacementEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(9) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(392) %0)
          to label %_ZN6Assimp4STEP14GenericConvertINS0_5MaybeINS0_4LazyINS_3IFC10Schema_2x318IfcObjectPlacementEEEEEEEvRT_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE.exit unwind label %bb.l

_ZN6Assimp4STEP14GenericConvertINS0_5MaybeINS0_4LazyINS_3IFC10Schema_2x318IfcObjectPlacementEEEEEEEvRT_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 1, ptr %i.ac, align 8
  br label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.ae = extractvalue { ptr, i32 } %i.ad, 1
  %i.af = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.m, label %bb.ar

bb.m:                                             ; preds = %bb.l
  %i.ah = extractvalue { ptr, i32 } %i.ad, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #25 ; 2 uses
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ak = load ptr, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1065, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.au unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread: ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  %.023 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aq = load ptr, ptr %7, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.q
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.av = load ptr, ptr %8, align 8               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread: ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %8, align 8               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #26
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.be = load i64, ptr %i.aw, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.bf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.023, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.023, label %bb.r, label %bb.s

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread
  %.pn.pn77.ph = phi { ptr, i32 } [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn.pn77 = phi { ptr, i32 } [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn.pn77.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.aj) #25
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn.pn76 = phi { ptr, i32 } [ %.pn.pn77, %bb.r ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ]
  invoke void @__cxa_end_catch()
          to label %bb.ar unwind label %bb.at

bb.t:                                             ; preds = %_ZN6Assimp4STEP14GenericConvertINS0_5MaybeINS0_4LazyINS_3IFC10Schema_2x318IfcObjectPlacementEEEEEEEvRT_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE.exit, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.bg = load ptr, ptr %i.r, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bh, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #25, !inline_history !0
  %i.bp = load ptr, ptr %i.bg, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #25, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bs = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bk, %bb.x ], [ %i.bu, %bb.y ]
  %i.bv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bv, label %bb.z, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bw = load ptr, ptr %i.a, align 8, !noalias !1793 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !1793 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !1793 ; 13 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.ca, null       ; 2 uses
  br i1 %.not.i.i.i.i56, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !noalias !1793
  %.not.i.i.i.i.i57 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i57, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load i32, ptr %i.cb, align 4, !noalias !1793
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cb, align 4, !noalias !1793
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58

bb.ac:                                            ; preds = %bb.aa
  %i.cf = atomicrmw volatile add ptr %i.cb, i32 1 acq_rel, align 4, !noalias !1793 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58:         ; preds = %bb.ab, %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.by, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %.not.i.i.i.i.i59 = icmp eq ptr %i.ca, %i.ci
  br i1 %.not.i.i.i.i.i59, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread104, label %bb.ad

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58.thread:  ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.by, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not.i.i.i.i.i59102 = icmp eq ptr %i.ca, %i.cl
  br i1 %.not.i.i.i.i.i59102, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.ad:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = load i32, ptr %i.cm, align 4
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.pr.i.i.i.i.i = load ptr, ptr %i.ch, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i
  %i.cr = phi ptr [ %i.ch, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ %i.ck, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58.thread ]
  %i.cs = phi ptr [ %.pr.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ %i.cl, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58.thread ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not8.i.i.i.i.i, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ct, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4
  %i.cy = load ptr, ptr %i.cs, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !1
  %i.db = load ptr, ptr %i.cs, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !1
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.de = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.aj ], [ %i.dg, %bb.ak ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.al, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, !prof !71

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.al
  store ptr %i.ca, ptr %i.cr, align 8
  br i1 %.not.i.i.i.i56, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread104

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread104: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread104
  store i32 0, ptr %i.di, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.dm, align 4
  %i.dn = load ptr, ptr %i.ca, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25, !inline_history !0
  %i.dq = load ptr, ptr %i.ca, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

bb.an:                                            ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread104
  %i.dt = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i61 = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i61, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

bb.ap:                                            ; preds = %bb.an
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i63 = phi i32 [ %i.dl, %bb.ao ], [ %i.dv, %bb.ap ]
  %i.dw = icmp eq i32 %.0.i.i.i.i63, 1
  br i1 %i.dw, label %bb.aq, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, !prof !71

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit58.thread, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62, %bb.aq
  ret i64 2

bb.ar:                                            ; preds = %bb.s, %bb.l
  %.merged49 = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %.pn.pn76, %bb.s ]
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.ar
  %.merged = phi { ptr, i32 } [ %.pn4673, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.merged49, %bb.ar ]
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.s
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable

bb.au:                                            ; preds = %bb.p, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x317IfcSweptAreaSolidEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::STEP::InternGenericConvert.5571", align 1 ; 3 uses
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.5586", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %11 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::allocator.3", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 17
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1067, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.az unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.028 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %5, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.028, label %bb.f, label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.028, label %bb.f, label %bb.ax

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4977 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #25
  br label %bb.ax

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  %i.q = load ptr, ptr %i.d, align 8, !noalias !1798 ; 3 uses
  store ptr %i.q, ptr %7, align 8, !alias.scope !1798
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1798 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !alias.scope !1798
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !noalias !1798
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.u, align 4, !noalias !1798
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !noalias !1798
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4, !noalias !1798 ; 0 uses
  %.pre = load ptr, ptr %7, align 8
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %bb.g, %bb.i, %bb.j
  %i.z = phi ptr [ %i.q, %bb.g ], [ %i.q, %bb.i ], [ %.pre, %bb.j ]
  %i.aa = tail call ptr @__dynamic_cast(ptr nonnull %i.z, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS9ISDERIVEDE, i64 0) #25
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = or i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8
  br label %bb.u

bb.l:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x313IfcProfileDefEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %0)
          to label %_ZN6Assimp4STEP14GenericConvertINS0_4LazyINS_3IFC10Schema_2x313IfcProfileDefEEEEEvRT_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE.exit unwind label %bb.m

_ZN6Assimp4STEP14GenericConvertINS0_4LazyINS_3IFC10Schema_2x313IfcProfileDefEEEEEvRT_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
end_hunk_0
