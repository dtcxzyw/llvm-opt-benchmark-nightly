Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_gif?download=true
inline.NumInlined: 1655
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv10GifEncoder16OctreeColorQuant10reduceTreeEv:bb.a
  %.not.i.i.i = icmp eq ptr %i.ap, %i.ah
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEaSERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not7.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !117
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !117
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !135
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.av = phi ptr [ %i.ah, %bb.g ], [ %i.ah, %bb.i ], [ %.pr.pre.i.i.i, %bb.j ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aw, align 8, !tbaa !131
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !132
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #21, !inline_history !6
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #21, !inline_history !6
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i9.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i9.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.az, %bb.n ], [ %i.bj, %bb.o ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.p, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !128

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ap, ptr %i.ac, align 8, !tbaa !135
  br label %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEaSERKS4_.exit

_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEaSERKS4_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.f, %bb.e, %.lr.ph51
  %i.bl = phi ptr [ %i.ah, %bb.e ], [ %i.ah, %.lr.ph51 ], [ %i.ah, %bb.f ], [ %i.ap, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %.123 = phi i32 [ %.02250, %bb.e ], [ %.02250, %.lr.ph51 ], [ %i.ak, %bb.f ], [ %i.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.049, i64 16 ; 2 uses
  %.not40 = icmp eq ptr %i.bm, %i.af
  br i1 %.not40, label %._crit_edge, label %.lr.ph51

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %._crit_edge.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv10GifEncoder16OctreeColorQuant10reduceTreeEv, ptr noundef nonnull @.str.4, i32 noundef 1210) #24
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %._crit_edge.thread
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !93
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.s ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bo, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ad

bb.u:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv10GifEncoder16OctreeColorQuant13recurseReduceERKSt10shared_ptrINS1_10OctreeNodeEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !135 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bv, align 8, !tbaa !131
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !132
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #21, !inline_history !5
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #21, !inline_history !5
  br label %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i31 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.by, %bb.z ], [ %i.ci, %bb.aa ]
  %i.cj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cj, label %bb.ab, label %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !128

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #21
  br label %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ck = load i32, ptr %i.w, align 4, !tbaa !181
  %i.cl = load i32, ptr %i.x, align 8, !tbaa !182
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.d, label %._crit_edge53, !llvm.loop !429

bb.ac:                                            ; preds = %bb.u
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn29 = phi { ptr, i32 } [ %i.cn, %bb.ac ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn29

._crit_edge53:                                    ; preds = %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10GifEncoder16OctreeColorQuant13recurseReduceERKSt10shared_ptrINS1_10OctreeNodeEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.41", align 8    ; 12 uses
  %3 = alloca %"class.std::shared_ptr.38", align 16 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !189    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 8, !tbaa !191, !range !110, !noundef !111
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  invoke void @_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit.preheader unwind label %bb.o

_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit.preheader: ; preds = %bb.c
  %i.e = load ptr, ptr %2, align 8, !tbaa !187    ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !187  ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIPSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph28, %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.k = phi ptr [ %i.f, %.lr.ph28 ], [ %i.ci, %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !135  ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !186
  store <2 x ptr> %i.o, ptr %3, align 16, !tbaa !186
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i14 = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !117
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !117
  br label %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit

_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !166  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  store ptr %i.v, ptr %i.d, align 8, !tbaa !166
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135  ; 8 uses
  %.not.i.i.i15 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE8pop_backEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !132
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #21, !inline_history !430
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #21, !inline_history !430
  br label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE8pop_backEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i16 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE8pop_backEv.exit, !prof !128

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #21
  br label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  %i.an = load ptr, ptr %3, align 16, !tbaa !189  ; 3 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !191, !range !110, !noundef !111
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.n, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE8pop_backEv.exit
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !188
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %.loopexit

bb.n:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE8pop_backEv.exit
  %i.as = load i32, ptr %i.j, align 8, !tbaa !182
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.j, align 8, !tbaa !182
  store i8 0, ptr %i.an, align 8, !tbaa !191
  br label %.loopexit

bb.o:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit23
  %i.av = phi ptr [ %i.bn, %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit23 ], [ %i.an, %.preheader ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit23 ], [ 0, %.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !189 ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit23, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !166 ; 6 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !167
  %.not.i17 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i17, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !189
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !135 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !135
  %.not.i.i.i.i18 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i18, label %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit.i20, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i19 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i19, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !117
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !117
  br label %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit.i20

bb.t:                                             ; preds = %bb.r
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i21 = load ptr, ptr %i.d, align 8, !tbaa !166
  %.pre = load ptr, ptr %3, align 16, !tbaa !189
  br label %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit.i20

_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit.i20: ; preds = %bb.t, %bb.s, %bb.q
  %i.bj = phi ptr [ %i.av, %bb.q ], [ %i.av, %bb.s ], [ %.pre, %bb.t ]
  %i.bk = phi ptr [ %i.az, %bb.q ], [ %i.az, %bb.s ], [ %.pre.i21, %bb.t ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !166
  br label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit23

bb.u:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit23 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ae

_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit23: ; preds = %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit.i20, %bb.u, %.lr.ph
  %i.bn = phi ptr [ %i.bj, %_ZNSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEEC2ERKS4_.exit.i20 ], [ %i.av, %bb.u ], [ %i.av, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = load i32, ptr %i.i, align 8, !tbaa !188
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.loopexit, !llvm.loop !431

.loopexit:                                        ; preds = %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit23, %.preheader, %bb.n
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !135 ; 8 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bs, align 8, !tbaa !131
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !132
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #21, !inline_history !5
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #21, !inline_history !5
  br label %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i24 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i24, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.bv, %bb.z ], [ %i.cf, %bb.aa ]
  %i.cg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cg, label %bb.ab, label %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !128

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #21
  br label %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ch = load ptr, ptr %2, align 8, !tbaa !187   ; 2 uses
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !187 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZSt8_DestroyIPSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEES5_EvT_S7_RSaIT0_E.exit.i, label %bb.d, !llvm.loop !432

_ZSt8_DestroyIPSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit.preheader
  %.lcssa = phi ptr [ %i.e, %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EE9push_backERKS5_.exit.preheader ], [ %i.ch, %_ZNSt12__shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !182
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !182
  %i.cn = load ptr, ptr %1, align 8, !tbaa !189
  store i8 1, ptr %i.cn, align 8, !tbaa !191
  %.not.i.i1.i = icmp eq ptr %.lcssa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEES5_EvT_S7_RSaIT0_E.exit.i
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load ptr, ptr %5, align 8, !tbaa !167
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %.lcssa to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa, i64 noundef %i.cr) #22
  br label %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.b, %_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EED2Ev.exit
  ret void

bb.ae:                                            ; preds = %bb.v, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.au, %bb.o ]
  call void @_ZNSt6vectorISt10shared_ptrIN2cv10GifEncoder16OctreeColorQuant10OctreeNodeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv16BaseImageDecoder4typeEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  ret i32 %i.b
}

declare noundef zeroext i1 @_ZNK2cv16BaseImageDecoder12haveMetadataENS_17ImageMetadataTypeE(ptr noundef nonnull align 8 dereferenceable(720), i32 noundef) unnamed_addr #1

declare void @_ZNK2cv16BaseImageDecoder11getMetadataENS_17ImageMetadataTypeE(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(720), i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv16BaseImageDecoder9setSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(720), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv16BaseImageDecoder9setSourceERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(720), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZN2cv16BaseImageDecoder6setRGBEb(ptr noundef nonnull align 8 dereferenceable(720), i1 noundef zeroext) unnamed_addr #1

declare noundef i64 @_ZNK2cv16BaseImageDecoder15signatureLengthEv(ptr noundef nonnull align 8 dereferenceable(720)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK2cv16BaseImageDecoder14checkSignatureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(720), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK2cv16BaseImageEncoder17isFormatSupportedEi(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK2cv16BaseImageEncoder16isValidEncodeKeyEi(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv16BaseImageEncoder14setDestinationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv16BaseImageEncoder14setDestinationERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv16BaseImageEncoder11addMetadataENS_17ImageMetadataTypeERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv16BaseImageEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv16BaseImageEncoder10writemultiERKSt6vectorINS_3MatESaIS2_EERKS1_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK2cv16BaseImageEncoder14getDescriptionB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZNK2cv16BaseImageEncoder12throwOnErrorEv(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZN2cv11RBaseStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(65)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv10ExifReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !122    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv10GifDecoder8lzwNodeDEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv10GifDecoder8lzwNodeDEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 5                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !124
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #24
  unreachable

_ZNKSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 5
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 5, i1 false), !alias.scope !439
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !440, !alias.scope !438
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !440, !alias.scope !437
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82, !alias.scope !438
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !82, !alias.scope !437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !438
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !436

_ZNSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv10GifDecoder8lzwNodeDESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #22
  br label %_ZNSt12_Vector_baseIN2cv10GifDecoder8lzwNodeDESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv10GifDecoder8lzwNodeDESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv10GifDecoder8lzwNodeDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !122
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %1
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aj, ptr %i.h, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv10GifDecoder8lzwNodeDEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv10GifDecoder8lzwNodeDESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !441
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !117  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
end_hunk_0
