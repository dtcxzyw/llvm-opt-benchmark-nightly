Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/animation_builder?download=true
inline.NumInlined: 2405
inline.NumDeleted: 1006
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_SO_T2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.038.164.i.i.i, i64 24, i1 false), !tbaa.struct !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.038.164.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.037.065.i.i.i, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.037.065.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i.i, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(24) %i.ci, i64 24, i1 false), !tbaa.struct !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ci, ptr noundef nonnull align 4 dereferenceable(24) %i.cj, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cj, ptr noundef nonnull align 4 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i.i, i64 48 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i.i, i64 48 ; 2 uses
  %niter154.next.1 = add i64 %niter154, 2         ; 2 uses
  %niter154.ncmp.1 = icmp eq i64 %niter154.next.1, %unroll_iter153
  br i1 %niter154.ncmp.1, label %._crit_edge69.i.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i.i, !llvm.loop !33

bb.ag:                                            ; preds = %._crit_edge69.i.i.i
  %i.cm = sub nsw i64 %.0.i.i.i, %i.ch
  br label %.backedge

bb.ah:                                            ; preds = %bb.ae
  %i.cn = getelementptr inbounds [24 x i8], ptr %.sroa.038.0.i.i.i, i64 %.058.i.i.i ; 3 uses
  %i.co = sub i64 0, %i.cb
  %i.cp = getelementptr inbounds [24 x i8], ptr %i.cn, i64 %i.co ; 3 uses
  %i.cq = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ah
  %xtraiter = and i64 %.0.i.i.i, 1
  %i.cr = icmp eq i64 %.0.i.i.i, 1
  br i1 %i.cr, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i, 9223372036854775806
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.062.i.i.i.epil.init = phi ptr [ %i.cn, %.lr.ph.i.i.i.preheader ], [ %i.cy, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.sroa.038.261.i.i.i.epil.init = phi ptr [ %i.cp, %.lr.ph.i.i.i.preheader ], [ %i.cx, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod148 = trunc i64 %.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.cs = getelementptr inbounds i8, ptr %.sroa.038.261.i.i.i.epil.init, i64 -24 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.062.i.i.i.epil.init, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %i.cs, i64 24, i1 false), !tbaa.struct !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cs, ptr noundef nonnull align 4 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ct, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.ah
  %.sroa.038.2.lcssa.i.i.i = phi ptr [ %i.cp, %bb.ah ], [ %.sroa.038.0.i.i.i, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.sroa.038.0.i.i.i, %.lr.ph.i.i.i.epil.preheader ]
  %i.cu = srem i64 %.058.i.i.i, %i.cb             ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i, label %_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_lET_SG_SG_SG_T1_SH_T0_SH_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i.i, %bb.ag
  %.058.i.i.i.be = phi i64 [ %.0.i.i.i, %bb.ag ], [ %i.cb, %._crit_edge.i.i.i ]
  %.0.i.i.i.be = phi i64 [ %i.cm, %bb.ag ], [ %i.cu, %._crit_edge.i.i.i ]
  %.sroa.038.0.i.i.i.be = phi ptr [ %.sroa.038.1.lcssa.i.i.i, %bb.ag ], [ %.sroa.038.2.lcssa.i.i.i, %._crit_edge.i.i.i ]
  br label %bb.ae, !llvm.loop !34

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.062.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.preheader.new ], [ %i.cy, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.038.261.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.preheader.new ], [ %i.cx, %.lr.ph.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.cv = getelementptr inbounds i8, ptr %.sroa.038.261.i.i.i, i64 -24 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.062.i.i.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %i.cv, i64 24, i1 false), !tbaa.struct !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cv, ptr noundef nonnull align 4 dereferenceable(24) %i.cw, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cw, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cx = getelementptr inbounds i8, ptr %.sroa.038.261.i.i.i, i64 -48 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.062.i.i.i, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cx, ptr noundef nonnull align 4 dereferenceable(24) %i.cy, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cy, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_lET_SG_SG_SG_T1_SH_T0_SH_.exit: ; preds = %._crit_edge69.i.i.i, %._crit_edge.i.i.i, %.lr.ph.i.i.i.i, %bb.d, %_ZSt4moveIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEET0_T_SH_SG_.exit.i, %bb.p, %_ZSt13move_backwardIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEET0_T_SH_SG_.exit.i, %bb.aa, %bb.ab
  %.sroa.032.0.i = phi ptr [ %i.av, %_ZSt4moveIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEET0_T_SH_SG_.exit.i ], [ %.sroa.0.0, %bb.p ], [ %i.bl, %_ZSt13move_backwardIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEET0_T_SH_SG_.exit.i ], [ %.sroa.085.0, %bb.d ], [ %.sroa.085.0, %bb.ab ], [ %.sroa.0.0, %bb.aa ], [ %.tr95107, %.lr.ph.i.i.i.i ], [ %i.ca, %._crit_edge.i.i.i ], [ %i.ca, %._crit_edge69.i.i.i ] ; 3 uses
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %.tr106, ptr %.sroa.085.0, ptr %.sroa.032.0.i, i64 noundef %.0, i64 noundef %.060, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.cz = sub nsw i64 %.tr98109, %.060            ; 3 uses
  %.not = icmp sgt i64 %i.ah, %6
  %.not64 = icmp sgt i64 %i.cz, %6
  %or.cond = and i1 %.not, %.not64
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.0.val) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %.0.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.0.val)
          to label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZNSt6vectorIhN3ozz12StdAllocatorIhEEED2Ev.exit:  ; preds = %bb.a, %bb.c
  ret void
}

declare noundef i64 @_ZN3ozz25ComputeGV4WorstBufferSizeERKNS_4spanIKjEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare { ptr, i64 } @_ZN3ozz15EncodeGV4StreamERKNS_4spanIKjEERKNS0_IhEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !104    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not37 = icmp ult i64 %i.j, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPhmN3ozz12StdAllocatorIhEEET_S4_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPhmN3ozz12StdAllocatorIhEEET_S4_T0_RT1_.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.b, i8 0, i64 %1, i1 false), !tbaa !106
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %1
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !105
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.l, %1
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.o = add nuw i64 %.sroa.speculated.i, %i.f
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807) ; 2 uses
  %i.q = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.p, i64 noundef 1)
          to label %bb.g unwind label %bb.f       ; 9 uses

bb.f:                                             ; preds = %bb.e, %_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %1, i1 false), !tbaa !106
  %.not13.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.y = ptrtoaddr ptr %i.u to i64
  %min.iters.check = icmp samesign ult i64 %i.f, 16
  %i.z = sub i64 %i.e, %i.y
  %diff.check = icmp ugt i64 %i.z, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp samesign ult i64 %i.f, 128
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.f, 112
  %n.vec = and i64 %i.f, 9223372036854775680      ; 5 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 %n.vec
  %i.ac = getelementptr i8, ptr %i.c, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %index ; 4 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %index ; 4 uses
  %i.ad = getelementptr i8, ptr %next.gep48, i64 32
  %i.ae = getelementptr i8, ptr %next.gep48, i64 64
  %i.af = getelementptr i8, ptr %next.gep48, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep48, align 1, !tbaa !106
  %wide.load49 = load <32 x i8>, ptr %i.ad, align 1, !tbaa !106
  %wide.load50 = load <32 x i8>, ptr %i.ae, align 1, !tbaa !106
  %wide.load51 = load <32 x i8>, ptr %i.af, align 1, !tbaa !106
  %i.ag = getelementptr i8, ptr %next.gep, i64 32
  %i.ah = getelementptr i8, ptr %next.gep, i64 64
  %i.ai = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !106
  store <32 x i8> %wide.load49, ptr %i.ag, align 1, !tbaa !106
  store <32 x i8> %wide.load50, ptr %i.ah, align 1, !tbaa !106
  store <32 x i8> %wide.load51, ptr %i.ai, align 1, !tbaa !106
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !111

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.f, 9223372036854775792    ; 4 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 %n.vec53
  %i.al = getelementptr i8, ptr %i.c, i64 %n.vec53
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.u, i64 %index54
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %index54
  %wide.load57 = load <16 x i8>, ptr %next.gep56, align 1, !tbaa !106
  store <16 x i8> %wide.load57, ptr %next.gep55, align 1, !tbaa !106
  %index.next58 = add nuw i64 %index54, 16        ; 2 uses
  %i.am = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !359

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.f, %n.vec53
  br i1 %cmp.n59, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.010.014.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.010.014.i.i.ph62 = ptrtoaddr ptr %.sroa.010.014.i.i.ph to i64 ; 2 uses
  %i.an = sub i64 %i.d, %.sroa.010.014.i.i.ph62
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.015.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i.prol ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.prol ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ao = load i8, ptr %.sroa.010.014.i.i.prol, align 1, !tbaa !106
  store i8 %i.ao, ptr %.015.i.i.prol, align 1, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.prol, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !360

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.015.i.i.unr = phi ptr [ %.015.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.aq, %.lr.ph.i.i.prol ]
  %.sroa.010.014.i.i.unr = phi ptr [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.prol ]
  %i.ar = sub i64 %.sroa.010.014.i.i.ph62, %i.d
  %i.as = icmp ugt i64 %i.ar, -8
  br i1 %i.as, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.at = load i8, ptr %.sroa.010.014.i.i, align 1, !tbaa !106
  store i8 %i.at, ptr %.015.i.i, align 1, !tbaa !106
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !106
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !106
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !106
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !106
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 3
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 3
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !106
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !106
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 5
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 5
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !106
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 6
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 6
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !106
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !106
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 7
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 7
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !106
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !106
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i.i.7 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.7, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !361

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE13_M_deallocateEPhm.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit
  %i.br = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE13_M_deallocateEPhm.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #22
  unreachable

_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !104
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 %1
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !105
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p
  store ptr %i.by, ptr %i.g, align 8, !tbaa !110
  br label %bb.k

bb.k:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmN3ozz12StdAllocatorIhEEET_S4_T0_RT1_.exit, %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !102    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775804
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIjN3ozz12StdAllocatorIjEEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
  unreachable

_ZNKSt6vectorIjN3ozz12StdAllocatorIjEEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 2305843009213693951)
  %i.l = select i1 %i.j, i64 2305843009213693951, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIjN3ozz12StdAllocatorIjEEE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.l, 2
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 10 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIjN3ozz12StdAllocatorIjEEE12_M_check_lenEmPKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  %i.x = load i32, ptr %2, align 4, !tbaa !93
  store i32 %i.x, ptr %i.w, align 4, !tbaa !93
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.y = ptrtoaddr ptr %i.t to i64
  %i.z = add i64 %i.m, -4
  %i.aa = sub i64 %i.z, %i.e                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.aa, 28
  %i.ad = sub i64 %i.e, %i.y
  %diff.check = icmp ugt i64 %i.ad, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %i.aa, 124
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, 9223372036854775776     ; 4 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.t, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 4 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  %i.aj = getelementptr i8, ptr %next.gep48, i64 32
  %i.ak = getelementptr i8, ptr %next.gep48, i64 64
  %i.al = getelementptr i8, ptr %next.gep48, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep48, align 4, !tbaa !93
  %wide.load49 = load <8 x i32>, ptr %i.aj, align 4, !tbaa !93
  %wide.load50 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !93
  %wide.load51 = load <8 x i32>, ptr %i.al, align 4, !tbaa !93
  %i.am = getelementptr i8, ptr %next.gep, i64 32
  %i.an = getelementptr i8, ptr %next.gep, i64 64
  %i.ao = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !93
  store <8 x i32> %wide.load49, ptr %i.am, align 4, !tbaa !93
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_:bb.a
  %n.vec53 = and i64 %i.ac, 9223372036854775800   ; 3 uses
  %i.aq = shl i64 %n.vec53, 2                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.t, i64 %i.aq   ; 2 uses
  %i.as = getelementptr i8, ptr %i.c, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index54, 2                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.t, i64 %i.at
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.at
  %wide.load57 = load <8 x i32>, ptr %next.gep56, align 4, !tbaa !93
  store <8 x i32> %wide.load57, ptr %next.gep55, align 4, !tbaa !93
  %index.next58 = add nuw i64 %index54, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !363

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ac, %n.vec53
  br i1 %cmp.n59, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.av = load i32, ptr %.sroa.010.014.i.i, align 4, !tbaa !93
  store i32 %i.av, ptr %.015.i.i, align 4, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !364

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.ar, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ax, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i63 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 4 ; 7 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit34, label %iter.check83

iter.check83:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit
  %i.az = add i64 %i.d, -4
  %i.ba = sub i64 %i.az, %i.m                     ; 3 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 5 uses
  %min.iters.check65 = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check65, label %.lr.ph.i.i29.preheader, label %vector.memcheck62

vector.memcheck62:                                ; preds = %iter.check83
  %i.bd = sub i64 %.0.lcssa.i.i63, %i.m
  %i.be = add i64 %i.bd, 3
  %diff.check64 = icmp ult i64 %i.be, 127
  br i1 %diff.check64, label %.lr.ph.i.i29.preheader, label %vector.main.loop.iter.check66

vector.main.loop.iter.check66:                    ; preds = %vector.memcheck62
  %min.iters.check67 = icmp ult i64 %i.ba, 124
  br i1 %min.iters.check67, label %vec.epilog.ph87, label %vector.ph68

vector.ph68:                                      ; preds = %vector.main.loop.iter.check66
  %i.bf = and i64 %i.bc, 24
  %n.vec69 = and i64 %i.bc, 9223372036854775776   ; 4 uses
  %i.bg = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 %i.bg
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next78, %vector.body70 ] ; 2 uses
  %i.bj = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ay, i64 %i.bj ; 4 uses
  %next.gep73 = getelementptr i8, ptr %1, i64 %i.bj ; 4 uses
  %i.bk = getelementptr i8, ptr %next.gep73, i64 32
  %i.bl = getelementptr i8, ptr %next.gep73, i64 64
  %i.bm = getelementptr i8, ptr %next.gep73, i64 96
  %wide.load74 = load <8 x i32>, ptr %next.gep73, align 4, !tbaa !93
  %wide.load75 = load <8 x i32>, ptr %i.bk, align 4, !tbaa !93
  %wide.load76 = load <8 x i32>, ptr %i.bl, align 4, !tbaa !93
  %wide.load77 = load <8 x i32>, ptr %i.bm, align 4, !tbaa !93
  %i.bn = getelementptr i8, ptr %next.gep72, i64 32
  %i.bo = getelementptr i8, ptr %next.gep72, i64 64
  %i.bp = getelementptr i8, ptr %next.gep72, i64 96
  store <8 x i32> %wide.load74, ptr %next.gep72, align 4, !tbaa !93
  store <8 x i32> %wide.load75, ptr %i.bn, align 4, !tbaa !93
  store <8 x i32> %wide.load76, ptr %i.bo, align 4, !tbaa !93
  store <8 x i32> %wide.load77, ptr %i.bp, align 4, !tbaa !93
  %index.next78 = add nuw i64 %index71, 32        ; 2 uses
  %i.bq = icmp eq i64 %index.next78, %n.vec69
  br i1 %i.bq, label %middle.block79, label %vector.body70, !llvm.loop !365

middle.block79:                                   ; preds = %vector.body70
  %cmp.n80 = icmp eq i64 %i.bc, %n.vec69
  br i1 %cmp.n80, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit34, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block79
  %min.epilog.iters.check86 = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph87, !prof !109

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check66, %vec.epilog.iter.check85
  %vec.epilog.resume.val81 = phi i64 [ %n.vec69, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check66 ]
  %n.vec88 = and i64 %i.bc, 9223372036854775800   ; 3 uses
  %i.br = shl i64 %n.vec88, 2                     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ay, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %1, i64 %i.br
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph87
  %index90 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph87 ], [ %index.next94, %vec.epilog.vector.body89 ] ; 2 uses
  %i.bu = shl i64 %index90, 2                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.ay, i64 %i.bu
  %next.gep92 = getelementptr i8, ptr %1, i64 %i.bu
  %wide.load93 = load <8 x i32>, ptr %next.gep92, align 4, !tbaa !93
  store <8 x i32> %wide.load93, ptr %next.gep91, align 4, !tbaa !93
  %index.next94 = add nuw i64 %index90, 8         ; 2 uses
  %i.bv = icmp eq i64 %index.next94, %n.vec88
  br i1 %i.bv, label %vec.epilog.middle.block95, label %vec.epilog.vector.body89, !llvm.loop !366

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body89
  %cmp.n96 = icmp eq i64 %i.bc, %n.vec88
  br i1 %cmp.n96, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %vector.memcheck62, %iter.check83, %vec.epilog.iter.check85, %vec.epilog.middle.block95
  %.015.i.i30.ph = phi ptr [ %i.ay, %iter.check83 ], [ %i.ay, %vector.memcheck62 ], [ %i.bh, %vec.epilog.iter.check85 ], [ %i.bs, %vec.epilog.middle.block95 ]
  %.sroa.010.014.i.i31.ph = phi ptr [ %1, %iter.check83 ], [ %1, %vector.memcheck62 ], [ %i.bi, %vec.epilog.iter.check85 ], [ %i.bt, %vec.epilog.middle.block95 ]
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.by, %.lr.ph.i.i29 ], [ %.015.i.i30.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.bx, %.lr.ph.i.i29 ], [ %.sroa.010.014.i.i31.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.010.014.i.i31, align 4, !tbaa !93
  store i32 %i.bw, ptr %.015.i.i30, align 4, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 4 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bx, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !367

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit34: ; preds = %.lr.ph.i.i29, %middle.block79, %vec.epilog.middle.block95, %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.ay, %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit ], [ %i.bs, %vec.epilog.middle.block95 ], [ %i.bh, %middle.block79 ], [ %i.by, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjN3ozz12StdAllocatorIjEEE13_M_deallocateEPjm.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit34
  %i.bz = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIjN3ozz12StdAllocatorIjEEE13_M_deallocateEPjm.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #22
  unreachable

_ZNSt12_Vector_baseIjN3ozz12StdAllocatorIjEEE13_M_deallocateEPjm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N3ozz12StdAllocatorIjEEET0_T_S5_S4_RT1_.exit34, %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !102
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !101
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.l
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS3_EEEEvNS6_IPhS3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %.not93 = icmp eq ptr %2, %3
  br i1 %.not93, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 20 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 10 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.d
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 14 uses
  %i.n = icmp ugt i64 %i.m, %i.d
  br i1 %i.n, label %iter.check187, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEElEvRT_T0_St26random_access_iterator_tag.exit

iter.check187:                                    ; preds = %bb.c
  %i.o = sub i64 0, %i.d
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o ; 6 uses
  %min.iters.check169 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check169, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check170

vector.main.loop.iter.check170:                   ; preds = %iter.check187
  %min.iters.check171 = icmp ult i64 %i.d, 128
  br i1 %min.iters.check171, label %vec.epilog.ph191, label %vector.ph172

vector.ph172:                                     ; preds = %vector.main.loop.iter.check170
  %i.q = and i64 %i.d, 112
  %n.vec173 = and i64 %i.d, -128                  ; 5 uses
  %i.r = getelementptr i8, ptr %i.h, i64 %n.vec173
  %i.s = getelementptr i8, ptr %i.p, i64 %n.vec173
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next182, %vector.body174 ] ; 3 uses
  %next.gep176 = getelementptr i8, ptr %i.h, i64 %index175 ; 4 uses
  %next.gep177 = getelementptr i8, ptr %i.p, i64 %index175 ; 4 uses
  %i.t = getelementptr i8, ptr %next.gep177, i64 32
  %i.u = getelementptr i8, ptr %next.gep177, i64 64
  %i.v = getelementptr i8, ptr %next.gep177, i64 96
  %wide.load178 = load <32 x i8>, ptr %next.gep177, align 1, !tbaa !106
  %wide.load179 = load <32 x i8>, ptr %i.t, align 1, !tbaa !106
  %wide.load180 = load <32 x i8>, ptr %i.u, align 1, !tbaa !106
  %wide.load181 = load <32 x i8>, ptr %i.v, align 1, !tbaa !106
  %i.w = getelementptr i8, ptr %next.gep176, i64 32
  %i.x = getelementptr i8, ptr %next.gep176, i64 64
  %i.y = getelementptr i8, ptr %next.gep176, i64 96
  store <32 x i8> %wide.load178, ptr %next.gep176, align 1, !tbaa !106
  store <32 x i8> %wide.load179, ptr %i.w, align 1, !tbaa !106
  store <32 x i8> %wide.load180, ptr %i.x, align 1, !tbaa !106
  store <32 x i8> %wide.load181, ptr %i.y, align 1, !tbaa !106
  %index.next182 = add nuw i64 %index175, 128     ; 2 uses
  %i.z = icmp eq i64 %index.next182, %n.vec173
  br i1 %i.z, label %middle.block183, label %vector.body174, !llvm.loop !368

middle.block183:                                  ; preds = %vector.body174
  %cmp.n184 = icmp eq i64 %i.d, %n.vec173
  br i1 %cmp.n184, label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check189

vec.epilog.iter.check189:                         ; preds = %middle.block183
  %min.epilog.iters.check190 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check190, label %.lr.ph.i.i.preheader, label %vec.epilog.ph191, !prof !111

vec.epilog.ph191:                                 ; preds = %vector.main.loop.iter.check170, %vec.epilog.iter.check189
  %vec.epilog.resume.val185 = phi i64 [ %n.vec173, %vec.epilog.iter.check189 ], [ 0, %vector.main.loop.iter.check170 ]
  %n.vec192 = and i64 %i.d, -16                   ; 4 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %n.vec192
  %i.ab = getelementptr i8, ptr %i.p, i64 %n.vec192
  br label %vec.epilog.vector.body193

vec.epilog.vector.body193:                        ; preds = %vec.epilog.vector.body193, %vec.epilog.ph191
  %index194 = phi i64 [ %vec.epilog.resume.val185, %vec.epilog.ph191 ], [ %index.next198, %vec.epilog.vector.body193 ] ; 3 uses
  %next.gep195 = getelementptr i8, ptr %i.h, i64 %index194
  %next.gep196 = getelementptr i8, ptr %i.p, i64 %index194
  %wide.load197 = load <16 x i8>, ptr %next.gep196, align 1, !tbaa !106
  store <16 x i8> %wide.load197, ptr %next.gep195, align 1, !tbaa !106
  %index.next198 = add nuw i64 %index194, 16      ; 2 uses
  %i.ac = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.ac, label %vec.epilog.middle.block199, label %vec.epilog.vector.body193, !llvm.loop !369

vec.epilog.middle.block199:                       ; preds = %vec.epilog.vector.body193
  %cmp.n200 = icmp eq i64 %i.d, %n.vec192
  br i1 %cmp.n200, label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check187, %vec.epilog.iter.check189, %vec.epilog.middle.block199
  %.015.i.i.ph = phi ptr [ %i.h, %iter.check187 ], [ %i.r, %vec.epilog.iter.check189 ], [ %i.aa, %vec.epilog.middle.block199 ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.p, %iter.check187 ], [ %i.s, %vec.epilog.iter.check189 ], [ %i.ab, %vec.epilog.middle.block199 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ad = load i8, ptr %.sroa.010.014.i.i, align 1, !tbaa !106
  store i8 %i.ad, ptr %.015.i.i, align 1, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %.not.i.i = icmp eq ptr %i.ae, %i.h
  br i1 %.not.i.i, label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block199, %middle.block183
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.d
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !105
  %i.ai = ptrtoint ptr %i.p to i64
  %i.aj = sub i64 %i.ai, %i.l                     ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !89

bb.d:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds i8, ptr %i.h, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %1, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit
  %i.an = icmp eq i64 %i.aj, 1
  br i1 %i.an, label %bb.f, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.ap = load i8, ptr %1, align 1, !tbaa !106
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !106
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.d, %bb.e, %bb.f
  %i.aq = icmp sgt i64 %i.d, 1
  br i1 %i.aq, label %bb.g, label %bb.h, !prof !89

bb.g:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit

bb.h:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ar = icmp eq i64 %i.d, 1
  br i1 %i.ar, label %bb.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.h
  %i.as = load i8, ptr %2, align 1, !tbaa !106
  store i8 %i.as, ptr %1, align 1, !tbaa !106
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.m ; 6 uses
  %.not13.i = icmp eq ptr %i.at, %3
  br i1 %.not13.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.au = add i64 %i.b, %i.l
  %i.av = add i64 %i.j, %i.c
  %i.aw = sub i64 %i.au, %i.av                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.aw, 16
  %i.ax = sub i64 %i.c, %i.l
  %diff.check = icmp ugt i64 %i.ax, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check118 = icmp ult i64 %i.aw, 128
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.aw, 112
  %n.vec = and i64 %i.aw, -128                    ; 5 uses
  %i.az = getelementptr i8, ptr %i.h, i64 %n.vec
  %i.ba = getelementptr i8, ptr %i.at, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %index ; 4 uses
  %next.gep119 = getelementptr i8, ptr %i.at, i64 %index ; 4 uses
  %i.bb = getelementptr i8, ptr %next.gep119, i64 32
  %i.bc = getelementptr i8, ptr %next.gep119, i64 64
  %i.bd = getelementptr i8, ptr %next.gep119, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep119, align 1, !tbaa !106
  %wide.load120 = load <32 x i8>, ptr %i.bb, align 1, !tbaa !106
  %wide.load121 = load <32 x i8>, ptr %i.bc, align 1, !tbaa !106
  %wide.load122 = load <32 x i8>, ptr %i.bd, align 1, !tbaa !106
  %i.be = getelementptr i8, ptr %next.gep, i64 32
  %i.bf = getelementptr i8, ptr %next.gep, i64 64
  %i.bg = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !106
  store <32 x i8> %wide.load120, ptr %i.be, align 1, !tbaa !106
  store <32 x i8> %wide.load121, ptr %i.bf, align 1, !tbaa !106
  store <32 x i8> %wide.load122, ptr %i.bg, align 1, !tbaa !106
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !111

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i64 %i.aw, -16                  ; 4 uses
  %i.bi = getelementptr i8, ptr %i.h, i64 %n.vec124
  %i.bj = getelementptr i8, ptr %i.at, i64 %n.vec124
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ] ; 3 uses
  %next.gep126 = getelementptr i8, ptr %i.h, i64 %index125
  %next.gep127 = getelementptr i8, ptr %i.at, i64 %index125
  %wide.load128 = load <16 x i8>, ptr %next.gep127, align 1, !tbaa !106
  store <16 x i8> %wide.load128, ptr %next.gep126, align 1, !tbaa !106
  %index.next129 = add nuw i64 %index125, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !372

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n130 = icmp eq i64 %i.aw, %n.vec124
  br i1 %cmp.n130, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.010.014.i.ph = phi ptr [ %i.at, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.010.014.i.ph318 = ptrtoaddr ptr %.sroa.010.014.i.ph to i64 ; 2 uses
  %i.bl = sub i64 %i.b, %.sroa.010.014.i.ph318
  %xtraiter = and i64 %i.bl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.prol = phi ptr [ %i.bo, %.lr.ph.i.prol ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.010.014.i.prol = phi ptr [ %i.bn, %.lr.ph.i.prol ], [ %.sroa.010.014.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bm = load i8, ptr %.sroa.010.014.i.prol, align 1, !tbaa !106
  store i8 %i.bm, ptr %.015.i.prol, align 1, !tbaa !106
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.prol, i64 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !373

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.unr = phi ptr [ %.015.i.ph, %.lr.ph.i.preheader ], [ %i.bo, %.lr.ph.i.prol ]
  %.sroa.010.014.i.unr = phi ptr [ %.sroa.010.014.i.ph, %.lr.ph.i.preheader ], [ %i.bn, %.lr.ph.i.prol ]
  %i.bp = sub i64 %.sroa.010.014.i.ph318, %i.b
  %i.bq = icmp ugt i64 %i.bp, -8
  br i1 %i.bq, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %.sroa.010.014.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.br = load i8, ptr %.sroa.010.014.i, align 1, !tbaa !106
  store i8 %i.br, ptr %.015.i, align 1, !tbaa !106
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !106
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.015.i, i64 2
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !106
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !106
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 3
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i, i64 3
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !106
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !106
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !106
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !106
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 5
  %i.cf = getelementptr inbounds nuw i8, ptr %.015.i, i64 5
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !106
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !106
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 6
  %i.ci = getelementptr inbounds nuw i8, ptr %.015.i, i64 6
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !106
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !106
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 7
  %i.cl = getelementptr inbounds nuw i8, ptr %.015.i, i64 7
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !106
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !106
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.not.i.7 = icmp eq ptr %i.cn, %3
  br i1 %.not.i.7, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !374

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit.loopexit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !105
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cp = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = sub nuw i64 %i.d, %i.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr ; 8 uses
  store ptr %i.cs, ptr %i.g, align 8, !tbaa !105
  %.not13.i.i51 = icmp eq ptr %1, %i.h
  br i1 %.not13.i.i51, label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57, label %iter.check153

iter.check153:                                    ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit
  %min.iters.check135 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check135, label %.lr.ph.i.i52.preheader, label %vector.memcheck133

vector.memcheck133:                               ; preds = %iter.check153
  %i.ct = add i64 %i.cq, %i.b
  %i.cu = add i64 %i.j, %i.c
  %i.cv = sub i64 %i.cu, %i.ct
  %diff.check134 = icmp ugt i64 %i.cv, -128
  br i1 %diff.check134, label %.lr.ph.i.i52.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %vector.memcheck133
  %min.iters.check137 = icmp ult i64 %i.m, 128
  br i1 %min.iters.check137, label %vec.epilog.ph157, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %i.cw = and i64 %i.m, 112
  %n.vec139 = and i64 %i.m, -128                  ; 5 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 %n.vec139
  %i.cy = getelementptr i8, ptr %1, i64 %n.vec139
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next148, %vector.body140 ] ; 3 uses
  %next.gep142 = getelementptr i8, ptr %i.cs, i64 %index141 ; 4 uses
  %next.gep143 = getelementptr i8, ptr %1, i64 %index141 ; 4 uses
  %i.cz = getelementptr i8, ptr %next.gep143, i64 32
  %i.da = getelementptr i8, ptr %next.gep143, i64 64
  %i.db = getelementptr i8, ptr %next.gep143, i64 96
  %wide.load144 = load <32 x i8>, ptr %next.gep143, align 1, !tbaa !106
  %wide.load145 = load <32 x i8>, ptr %i.cz, align 1, !tbaa !106
  %wide.load146 = load <32 x i8>, ptr %i.da, align 1, !tbaa !106
  %wide.load147 = load <32 x i8>, ptr %i.db, align 1, !tbaa !106
  %i.dc = getelementptr i8, ptr %next.gep142, i64 32
  %i.dd = getelementptr i8, ptr %next.gep142, i64 64
  %i.de = getelementptr i8, ptr %next.gep142, i64 96
  store <32 x i8> %wide.load144, ptr %next.gep142, align 1, !tbaa !106
  store <32 x i8> %wide.load145, ptr %i.dc, align 1, !tbaa !106
  store <32 x i8> %wide.load146, ptr %i.dd, align 1, !tbaa !106
  store <32 x i8> %wide.load147, ptr %i.de, align 1, !tbaa !106
  %index.next148 = add nuw i64 %index141, 128     ; 2 uses
  %i.df = icmp eq i64 %index.next148, %n.vec139
  br i1 %i.df, label %middle.block149, label %vector.body140, !llvm.loop !375

middle.block149:                                  ; preds = %vector.body140
  %cmp.n150 = icmp eq i64 %i.m, %n.vec139
  br i1 %cmp.n150, label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57.loopexit, label %vec.epilog.iter.check155

vec.epilog.iter.check155:                         ; preds = %middle.block149
  %min.epilog.iters.check156 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check156, label %.lr.ph.i.i52.preheader, label %vec.epilog.ph157, !prof !111

vec.epilog.ph157:                                 ; preds = %vector.main.loop.iter.check136, %vec.epilog.iter.check155
  %vec.epilog.resume.val151 = phi i64 [ %n.vec139, %vec.epilog.iter.check155 ], [ 0, %vector.main.loop.iter.check136 ]
  %n.vec158 = and i64 %i.m, -16                   ; 4 uses
  %i.dg = getelementptr i8, ptr %i.cs, i64 %n.vec158
  %i.dh = getelementptr i8, ptr %1, i64 %n.vec158
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph157
  %index160 = phi i64 [ %vec.epilog.resume.val151, %vec.epilog.ph157 ], [ %index.next164, %vec.epilog.vector.body159 ] ; 3 uses
  %next.gep161 = getelementptr i8, ptr %i.cs, i64 %index160
  %next.gep162 = getelementptr i8, ptr %1, i64 %index160
  %wide.load163 = load <16 x i8>, ptr %next.gep162, align 1, !tbaa !106
  store <16 x i8> %wide.load163, ptr %next.gep161, align 1, !tbaa !106
  %index.next164 = add nuw i64 %index160, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.di, label %vec.epilog.middle.block165, label %vec.epilog.vector.body159, !llvm.loop !376

vec.epilog.middle.block165:                       ; preds = %vec.epilog.vector.body159
  %cmp.n166 = icmp eq i64 %i.m, %n.vec158
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57.loopexit, label %.lr.ph.i.i52.preheader

.lr.ph.i.i52.preheader:                           ; preds = %vector.memcheck133, %iter.check153, %vec.epilog.iter.check155, %vec.epilog.middle.block165
  %.015.i.i53.ph = phi ptr [ %i.cs, %iter.check153 ], [ %i.cs, %vector.memcheck133 ], [ %i.cx, %vec.epilog.iter.check155 ], [ %i.dg, %vec.epilog.middle.block165 ] ; 2 uses
  %.sroa.010.014.i.i54.ph = phi ptr [ %1, %iter.check153 ], [ %1, %vector.memcheck133 ], [ %i.cy, %vec.epilog.iter.check155 ], [ %i.dh, %vec.epilog.middle.block165 ] ; 3 uses
  %.sroa.010.014.i.i54.ph319 = ptrtoaddr ptr %.sroa.010.014.i.i54.ph to i64 ; 2 uses
  %i.dj = sub i64 %i.j, %.sroa.010.014.i.i54.ph319
  %xtraiter320 = and i64 %i.dj, 7                 ; 2 uses
  %lcmp.mod321.not = icmp eq i64 %xtraiter320, 0
  br i1 %lcmp.mod321.not, label %.lr.ph.i.i52.prol.loopexit, label %.lr.ph.i.i52.prol

.lr.ph.i.i52.prol:                                ; preds = %.lr.ph.i.i52.preheader, %.lr.ph.i.i52.prol
  %.015.i.i53.prol = phi ptr [ %i.dm, %.lr.ph.i.i52.prol ], [ %.015.i.i53.ph, %.lr.ph.i.i52.preheader ] ; 2 uses
  %.sroa.010.014.i.i54.prol = phi ptr [ %i.dl, %.lr.ph.i.i52.prol ], [ %.sroa.010.014.i.i54.ph, %.lr.ph.i.i52.preheader ] ; 2 uses
  %prol.iter322 = phi i64 [ %prol.iter322.next, %.lr.ph.i.i52.prol ], [ 0, %.lr.ph.i.i52.preheader ]
  %i.dk = load i8, ptr %.sroa.010.014.i.i54.prol, align 1, !tbaa !106
  store i8 %i.dk, ptr %.015.i.i53.prol, align 1, !tbaa !106
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54.prol, i64 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.015.i.i53.prol, i64 1 ; 2 uses
  %prol.iter322.next = add i64 %prol.iter322, 1   ; 2 uses
  %prol.iter322.cmp.not = icmp eq i64 %prol.iter322.next, %xtraiter320
  br i1 %prol.iter322.cmp.not, label %.lr.ph.i.i52.prol.loopexit, label %.lr.ph.i.i52.prol, !llvm.loop !377

.lr.ph.i.i52.prol.loopexit:                       ; preds = %.lr.ph.i.i52.prol, %.lr.ph.i.i52.preheader
  %.015.i.i53.unr = phi ptr [ %.015.i.i53.ph, %.lr.ph.i.i52.preheader ], [ %i.dm, %.lr.ph.i.i52.prol ]
  %.sroa.010.014.i.i54.unr = phi ptr [ %.sroa.010.014.i.i54.ph, %.lr.ph.i.i52.preheader ], [ %i.dl, %.lr.ph.i.i52.prol ]
  %i.dn = sub i64 %.sroa.010.014.i.i54.ph319, %i.j
  %i.do = icmp ugt i64 %i.dn, -8
  br i1 %i.do, label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57.loopexit, label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %.lr.ph.i.i52.prol.loopexit, %.lr.ph.i.i52
  %.015.i.i53 = phi ptr [ %i.em, %.lr.ph.i.i52 ], [ %.015.i.i53.unr, %.lr.ph.i.i52.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i.i54 = phi ptr [ %i.el, %.lr.ph.i.i52 ], [ %.sroa.010.014.i.i54.unr, %.lr.ph.i.i52.prol.loopexit ] ; 9 uses
  %i.dp = load i8, ptr %.sroa.010.014.i.i54, align 1, !tbaa !106
  store i8 %i.dp, ptr %.015.i.i53, align 1, !tbaa !106
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.015.i.i53, i64 1
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !106
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !106
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %.015.i.i53, i64 2
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !106
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !106
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54, i64 3
  %i.dx = getelementptr inbounds nuw i8, ptr %.015.i.i53, i64 3
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !106
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !106
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.015.i.i53, i64 4
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !106
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !106
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54, i64 5
  %i.ed = getelementptr inbounds nuw i8, ptr %.015.i.i53, i64 5
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !106
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !106
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54, i64 6
  %i.eg = getelementptr inbounds nuw i8, ptr %.015.i.i53, i64 6
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !106
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !106
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54, i64 7
  %i.ej = getelementptr inbounds nuw i8, ptr %.015.i.i53, i64 7
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !106
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !106
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i54, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.015.i.i53, i64 8
  %.not.i.i55.7 = icmp eq ptr %i.el, %i.h
  br i1 %.not.i.i55.7, label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57.loopexit, label %.lr.ph.i.i52, !llvm.loop !378

_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i52.prol.loopexit, %.lr.ph.i.i52, %vec.epilog.middle.block165, %middle.block149
  %.pre98 = load ptr, ptr %i.g, align 8, !tbaa !105
  br label %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57

_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit
  %i.en = phi ptr [ %.pre98, %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57.loopexit ], [ %i.cs, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.m
  store ptr %i.eo, ptr %i.g, align 8, !tbaa !105
  %i.ep = icmp sgt i64 %i.m, 1
  br i1 %i.ep, label %bb.j, label %bb.k, !prof !89

bb.j:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit57
  %i.eq = icmp eq i64 %i.m, 1
  br i1 %i.eq, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.k
  %i.er = load i8, ptr %2, align 1, !tbaa !106
  store i8 %i.er, ptr %1, align 1, !tbaa !106
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.b
  %i.es = load ptr, ptr %0, align 8, !tbaa !104   ; 9 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 3 uses
  %i.eu = sub i64 %i.j, %i.et                     ; 4 uses
  %i.ev = sub i64 9223372036854775807, %i.eu
  %i.ew = icmp ult i64 %i.ev, %i.d
  br i1 %i.ew, label %bb.n, label %_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit: ; preds = %bb.m
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.d)
  %i.ex = add i64 %.sroa.speculated.i, %i.eu      ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 9223372036854775807)
  %i.fa = select i1 %i.ey, i64 9223372036854775807, i64 %i.ez ; 3 uses
  %.not.i59 = icmp eq i64 %i.fa, 0
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE11_M_allocateEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit
  %i.fb = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !48
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = invoke noundef ptr %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, i64 noundef %i.fa, i64 noundef 1)
          to label %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE11_M_allocateEm.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  tail call void @__clang_call_terminate(ptr %i.fh) #22
  unreachable

_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit, %bb.p
  %i.fi = phi ptr [ null, %_ZNKSt6vectorIhN3ozz12StdAllocatorIhEEE12_M_check_lenEmPKc.exit ], [ %i.ff, %bb.p ] ; 9 uses
  %.not13.i.i60 = icmp eq ptr %i.es, %1
  br i1 %.not13.i.i60, label %iter.check260, label %iter.check223

iter.check223:                                    ; preds = %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE11_M_allocateEm.exit
  %i.fj = ptrtoaddr ptr %i.fi to i64
  %i.fk = sub i64 %i.a, %i.et                     ; 7 uses
  %min.iters.check205 = icmp ult i64 %i.fk, 16
  %i.fl = sub i64 %i.et, %i.fj
  %diff.check204 = icmp ugt i64 %i.fl, -128
  %or.cond313 = or i1 %min.iters.check205, %diff.check204
  br i1 %or.cond313, label %.lr.ph.i.i61.preheader, label %vector.main.loop.iter.check206

vector.main.loop.iter.check206:                   ; preds = %iter.check223
  %min.iters.check207 = icmp ult i64 %i.fk, 128
  br i1 %min.iters.check207, label %vec.epilog.ph227, label %vector.ph208

vector.ph208:                                     ; preds = %vector.main.loop.iter.check206
  %i.fm = and i64 %i.fk, 112
  %n.vec209 = and i64 %i.fk, -128                 ; 5 uses
  %i.fn = getelementptr i8, ptr %i.fi, i64 %n.vec209 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.es, i64 %n.vec209
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next218, %vector.body210 ] ; 3 uses
  %next.gep212 = getelementptr i8, ptr %i.fi, i64 %index211 ; 4 uses
  %next.gep213 = getelementptr i8, ptr %i.es, i64 %index211 ; 4 uses
  %i.fp = getelementptr i8, ptr %next.gep213, i64 32
  %i.fq = getelementptr i8, ptr %next.gep213, i64 64
  %i.fr = getelementptr i8, ptr %next.gep213, i64 96
  %wide.load214 = load <32 x i8>, ptr %next.gep213, align 1, !tbaa !106
  %wide.load215 = load <32 x i8>, ptr %i.fp, align 1, !tbaa !106
  %wide.load216 = load <32 x i8>, ptr %i.fq, align 1, !tbaa !106
  %wide.load217 = load <32 x i8>, ptr %i.fr, align 1, !tbaa !106
  %i.fs = getelementptr i8, ptr %next.gep212, i64 32
  %i.ft = getelementptr i8, ptr %next.gep212, i64 64
  %i.fu = getelementptr i8, ptr %next.gep212, i64 96
  store <32 x i8> %wide.load214, ptr %next.gep212, align 1, !tbaa !106
  store <32 x i8> %wide.load215, ptr %i.fs, align 1, !tbaa !106
  store <32 x i8> %wide.load216, ptr %i.ft, align 1, !tbaa !106
  store <32 x i8> %wide.load217, ptr %i.fu, align 1, !tbaa !106
  %index.next218 = add nuw i64 %index211, 128     ; 2 uses
  %i.fv = icmp eq i64 %index.next218, %n.vec209
  br i1 %i.fv, label %middle.block219, label %vector.body210, !llvm.loop !379

middle.block219:                                  ; preds = %vector.body210
  %cmp.n220 = icmp eq i64 %i.fk, %n.vec209
  br i1 %cmp.n220, label %iter.check260, label %vec.epilog.iter.check225

vec.epilog.iter.check225:                         ; preds = %middle.block219
  %min.epilog.iters.check226 = icmp eq i64 %i.fm, 0
  br i1 %min.epilog.iters.check226, label %.lr.ph.i.i61.preheader, label %vec.epilog.ph227, !prof !111

vec.epilog.ph227:                                 ; preds = %vector.main.loop.iter.check206, %vec.epilog.iter.check225
  %vec.epilog.resume.val221 = phi i64 [ %n.vec209, %vec.epilog.iter.check225 ], [ 0, %vector.main.loop.iter.check206 ]
  %n.vec228 = and i64 %i.fk, -16                  ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fi, i64 %n.vec228 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.es, i64 %n.vec228
  br label %vec.epilog.vector.body229

vec.epilog.vector.body229:                        ; preds = %vec.epilog.vector.body229, %vec.epilog.ph227
  %index230 = phi i64 [ %vec.epilog.resume.val221, %vec.epilog.ph227 ], [ %index.next234, %vec.epilog.vector.body229 ] ; 3 uses
  %next.gep231 = getelementptr i8, ptr %i.fi, i64 %index230
  %next.gep232 = getelementptr i8, ptr %i.es, i64 %index230
  %wide.load233 = load <16 x i8>, ptr %next.gep232, align 1, !tbaa !106
  store <16 x i8> %wide.load233, ptr %next.gep231, align 1, !tbaa !106
  %index.next234 = add nuw i64 %index230, 16      ; 2 uses
  %i.fy = icmp eq i64 %index.next234, %n.vec228
  br i1 %i.fy, label %vec.epilog.middle.block235, label %vec.epilog.vector.body229, !llvm.loop !380

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body229
  %cmp.n236 = icmp eq i64 %i.fk, %n.vec228
  br i1 %cmp.n236, label %iter.check260, label %.lr.ph.i.i61.preheader

.lr.ph.i.i61.preheader:                           ; preds = %iter.check223, %vec.epilog.iter.check225, %vec.epilog.middle.block235
  %.015.i.i62.ph = phi ptr [ %i.fi, %iter.check223 ], [ %i.fn, %vec.epilog.iter.check225 ], [ %i.fw, %vec.epilog.middle.block235 ] ; 2 uses
  %.sroa.010.014.i.i63.ph = phi ptr [ %i.es, %iter.check223 ], [ %i.fo, %vec.epilog.iter.check225 ], [ %i.fx, %vec.epilog.middle.block235 ] ; 3 uses
  %.sroa.010.014.i.i63.ph323 = ptrtoaddr ptr %.sroa.010.014.i.i63.ph to i64 ; 2 uses
  %i.fz = sub i64 %i.a, %.sroa.010.014.i.i63.ph323
  %xtraiter324 = and i64 %i.fz, 7                 ; 2 uses
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.lr.ph.i.i61.prol.loopexit, label %.lr.ph.i.i61.prol

.lr.ph.i.i61.prol:                                ; preds = %.lr.ph.i.i61.preheader, %.lr.ph.i.i61.prol
  %.015.i.i62.prol = phi ptr [ %i.gc, %.lr.ph.i.i61.prol ], [ %.015.i.i62.ph, %.lr.ph.i.i61.preheader ] ; 2 uses
  %.sroa.010.014.i.i63.prol = phi ptr [ %i.gb, %.lr.ph.i.i61.prol ], [ %.sroa.010.014.i.i63.ph, %.lr.ph.i.i61.preheader ] ; 2 uses
  %prol.iter326 = phi i64 [ %prol.iter326.next, %.lr.ph.i.i61.prol ], [ 0, %.lr.ph.i.i61.preheader ]
  %i.ga = load i8, ptr %.sroa.010.014.i.i63.prol, align 1, !tbaa !106
  store i8 %i.ga, ptr %.015.i.i62.prol, align 1, !tbaa !106
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63.prol, i64 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.015.i.i62.prol, i64 1 ; 3 uses
  %prol.iter326.next = add i64 %prol.iter326, 1   ; 2 uses
  %prol.iter326.cmp.not = icmp eq i64 %prol.iter326.next, %xtraiter324
  br i1 %prol.iter326.cmp.not, label %.lr.ph.i.i61.prol.loopexit, label %.lr.ph.i.i61.prol, !llvm.loop !381

.lr.ph.i.i61.prol.loopexit:                       ; preds = %.lr.ph.i.i61.prol, %.lr.ph.i.i61.preheader
  %.lcssa317.unr = phi ptr [ poison, %.lr.ph.i.i61.preheader ], [ %i.gc, %.lr.ph.i.i61.prol ]
  %.015.i.i62.unr = phi ptr [ %.015.i.i62.ph, %.lr.ph.i.i61.preheader ], [ %i.gc, %.lr.ph.i.i61.prol ]
  %.sroa.010.014.i.i63.unr = phi ptr [ %.sroa.010.014.i.i63.ph, %.lr.ph.i.i61.preheader ], [ %i.gb, %.lr.ph.i.i61.prol ]
  %i.gd = sub i64 %.sroa.010.014.i.i63.ph323, %i.a
  %i.ge = icmp ugt i64 %i.gd, -8
  br i1 %i.ge, label %iter.check260, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %.lr.ph.i.i61.prol.loopexit, %.lr.ph.i.i61
  %.015.i.i62 = phi ptr [ %i.hc, %.lr.ph.i.i61 ], [ %.015.i.i62.unr, %.lr.ph.i.i61.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i.i63 = phi ptr [ %i.hb, %.lr.ph.i.i61 ], [ %.sroa.010.014.i.i63.unr, %.lr.ph.i.i61.prol.loopexit ] ; 9 uses
  %i.gf = load i8, ptr %.sroa.010.014.i.i63, align 1, !tbaa !106
  store i8 %i.gf, ptr %.015.i.i62, align 1, !tbaa !106
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.015.i.i62, i64 1
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !106
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !106
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63, i64 2
  %i.gk = getelementptr inbounds nuw i8, ptr %.015.i.i62, i64 2
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !106
  store i8 %i.gl, ptr %i.gk, align 1, !tbaa !106
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63, i64 3
  %i.gn = getelementptr inbounds nuw i8, ptr %.015.i.i62, i64 3
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !106
  store i8 %i.go, ptr %i.gn, align 1, !tbaa !106
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %.015.i.i62, i64 4
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !106
  store i8 %i.gr, ptr %i.gq, align 1, !tbaa !106
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63, i64 5
  %i.gt = getelementptr inbounds nuw i8, ptr %.015.i.i62, i64 5
  %i.gu = load i8, ptr %i.gs, align 1, !tbaa !106
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !106
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63, i64 6
  %i.gw = getelementptr inbounds nuw i8, ptr %.015.i.i62, i64 6
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !106
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !106
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63, i64 7
  %i.gz = getelementptr inbounds nuw i8, ptr %.015.i.i62, i64 7
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !106
  store i8 %i.ha, ptr %i.gz, align 1, !tbaa !106
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i63, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.015.i.i62, i64 8 ; 2 uses
  %.not.i.i64.7 = icmp eq ptr %i.hb, %1
  br i1 %.not.i.i64.7, label %iter.check260, label %.lr.ph.i.i61, !llvm.loop !382

iter.check260:                                    ; preds = %.lr.ph.i.i61.prol.loopexit, %.lr.ph.i.i61, %middle.block219, %vec.epilog.middle.block235, %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE11_M_allocateEm.exit
  %.0.lcssa.i.i65 = phi ptr [ %i.fi, %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE11_M_allocateEm.exit ], [ %i.fw, %vec.epilog.middle.block235 ], [ %i.fn, %middle.block219 ], [ %.lcssa317.unr, %.lr.ph.i.i61.prol.loopexit ], [ %i.hc, %.lr.ph.i.i61 ] ; 6 uses
  %min.iters.check242 = icmp ult i64 %i.d, 16
  %.0.lcssa.i.i65240 = ptrtoaddr ptr %.0.lcssa.i.i65 to i64
  %i.hd = sub i64 %i.c, %.0.lcssa.i.i65240
  %diff.check241 = icmp ugt i64 %i.hd, -128
  %or.cond314 = select i1 %min.iters.check242, i1 true, i1 %diff.check241
  br i1 %or.cond314, label %.lr.ph.i67.preheader, label %vector.main.loop.iter.check243

vector.main.loop.iter.check243:                   ; preds = %iter.check260
  %min.iters.check244 = icmp ult i64 %i.d, 128
  br i1 %min.iters.check244, label %vec.epilog.ph264, label %vector.ph245

vector.ph245:                                     ; preds = %vector.main.loop.iter.check243
  %i.he = and i64 %i.d, 112
  %n.vec246 = and i64 %i.d, -128                  ; 5 uses
  %i.hf = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %n.vec246 ; 2 uses
  %i.hg = getelementptr i8, ptr %2, i64 %n.vec246
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next255, %vector.body247 ] ; 3 uses
  %next.gep249 = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %index248 ; 4 uses
  %next.gep250 = getelementptr i8, ptr %2, i64 %index248 ; 4 uses
  %i.hh = getelementptr i8, ptr %next.gep250, i64 32
  %i.hi = getelementptr i8, ptr %next.gep250, i64 64
  %i.hj = getelementptr i8, ptr %next.gep250, i64 96
  %wide.load251 = load <32 x i8>, ptr %next.gep250, align 1, !tbaa !106
  %wide.load252 = load <32 x i8>, ptr %i.hh, align 1, !tbaa !106
  %wide.load253 = load <32 x i8>, ptr %i.hi, align 1, !tbaa !106
  %wide.load254 = load <32 x i8>, ptr %i.hj, align 1, !tbaa !106
  %i.hk = getelementptr i8, ptr %next.gep249, i64 32
  %i.hl = getelementptr i8, ptr %next.gep249, i64 64
  %i.hm = getelementptr i8, ptr %next.gep249, i64 96
  store <32 x i8> %wide.load251, ptr %next.gep249, align 1, !tbaa !106
  store <32 x i8> %wide.load252, ptr %i.hk, align 1, !tbaa !106
  store <32 x i8> %wide.load253, ptr %i.hl, align 1, !tbaa !106
  store <32 x i8> %wide.load254, ptr %i.hm, align 1, !tbaa !106
  %index.next255 = add nuw i64 %index248, 128     ; 2 uses
  %i.hn = icmp eq i64 %index.next255, %n.vec246
  br i1 %i.hn, label %middle.block256, label %vector.body247, !llvm.loop !383

middle.block256:                                  ; preds = %vector.body247
  %cmp.n257 = icmp eq i64 %i.d, %n.vec246
  br i1 %cmp.n257, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit72, label %vec.epilog.iter.check262

vec.epilog.iter.check262:                         ; preds = %middle.block256
  %min.epilog.iters.check263 = icmp eq i64 %i.he, 0
  br i1 %min.epilog.iters.check263, label %.lr.ph.i67.preheader, label %vec.epilog.ph264, !prof !111

vec.epilog.ph264:                                 ; preds = %vector.main.loop.iter.check243, %vec.epilog.iter.check262
  %vec.epilog.resume.val258 = phi i64 [ %n.vec246, %vec.epilog.iter.check262 ], [ 0, %vector.main.loop.iter.check243 ]
  %n.vec265 = and i64 %i.d, -16                   ; 4 uses
  %i.ho = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %n.vec265 ; 2 uses
  %i.hp = getelementptr i8, ptr %2, i64 %n.vec265
  br label %vec.epilog.vector.body266

vec.epilog.vector.body266:                        ; preds = %vec.epilog.vector.body266, %vec.epilog.ph264
  %index267 = phi i64 [ %vec.epilog.resume.val258, %vec.epilog.ph264 ], [ %index.next271, %vec.epilog.vector.body266 ] ; 3 uses
  %next.gep268 = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %index267
  %next.gep269 = getelementptr i8, ptr %2, i64 %index267
  %wide.load270 = load <16 x i8>, ptr %next.gep269, align 1, !tbaa !106
  store <16 x i8> %wide.load270, ptr %next.gep268, align 1, !tbaa !106
  %index.next271 = add nuw i64 %index267, 16      ; 2 uses
  %i.hq = icmp eq i64 %index.next271, %n.vec265
  br i1 %i.hq, label %vec.epilog.middle.block272, label %vec.epilog.vector.body266, !llvm.loop !384

vec.epilog.middle.block272:                       ; preds = %vec.epilog.vector.body266
  %cmp.n273 = icmp eq i64 %i.d, %n.vec265
  br i1 %cmp.n273, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit72, label %.lr.ph.i67.preheader

.lr.ph.i67.preheader:                             ; preds = %iter.check260, %vec.epilog.iter.check262, %vec.epilog.middle.block272
  %.015.i68.ph = phi ptr [ %.0.lcssa.i.i65, %iter.check260 ], [ %i.hf, %vec.epilog.iter.check262 ], [ %i.ho, %vec.epilog.middle.block272 ] ; 2 uses
  %.sroa.010.014.i69.ph = phi ptr [ %2, %iter.check260 ], [ %i.hg, %vec.epilog.iter.check262 ], [ %i.hp, %vec.epilog.middle.block272 ] ; 3 uses
  %.sroa.010.014.i69.ph327 = ptrtoaddr ptr %.sroa.010.014.i69.ph to i64 ; 2 uses
  %i.hr = sub i64 %i.b, %.sroa.010.014.i69.ph327
  %xtraiter328 = and i64 %i.hr, 7                 ; 2 uses
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %.lr.ph.i67.prol.loopexit, label %.lr.ph.i67.prol

.lr.ph.i67.prol:                                  ; preds = %.lr.ph.i67.preheader, %.lr.ph.i67.prol
  %.015.i68.prol = phi ptr [ %i.hu, %.lr.ph.i67.prol ], [ %.015.i68.ph, %.lr.ph.i67.preheader ] ; 2 uses
  %.sroa.010.014.i69.prol = phi ptr [ %i.ht, %.lr.ph.i67.prol ], [ %.sroa.010.014.i69.ph, %.lr.ph.i67.preheader ] ; 2 uses
  %prol.iter330 = phi i64 [ %prol.iter330.next, %.lr.ph.i67.prol ], [ 0, %.lr.ph.i67.preheader ]
  %i.hs = load i8, ptr %.sroa.010.014.i69.prol, align 1, !tbaa !106
  store i8 %i.hs, ptr %.015.i68.prol, align 1, !tbaa !106
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69.prol, i64 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.015.i68.prol, i64 1 ; 3 uses
  %prol.iter330.next = add i64 %prol.iter330, 1   ; 2 uses
  %prol.iter330.cmp.not = icmp eq i64 %prol.iter330.next, %xtraiter328
  br i1 %prol.iter330.cmp.not, label %.lr.ph.i67.prol.loopexit, label %.lr.ph.i67.prol, !llvm.loop !385

.lr.ph.i67.prol.loopexit:                         ; preds = %.lr.ph.i67.prol, %.lr.ph.i67.preheader
  %.lcssa316.unr = phi ptr [ poison, %.lr.ph.i67.preheader ], [ %i.hu, %.lr.ph.i67.prol ]
  %.015.i68.unr = phi ptr [ %.015.i68.ph, %.lr.ph.i67.preheader ], [ %i.hu, %.lr.ph.i67.prol ]
  %.sroa.010.014.i69.unr = phi ptr [ %.sroa.010.014.i69.ph, %.lr.ph.i67.preheader ], [ %i.ht, %.lr.ph.i67.prol ]
  %i.hv = sub i64 %.sroa.010.014.i69.ph327, %i.b
  %i.hw = icmp ugt i64 %i.hv, -8
  br i1 %i.hw, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit72, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67.prol.loopexit, %.lr.ph.i67
  %.015.i68 = phi ptr [ %i.iu, %.lr.ph.i67 ], [ %.015.i68.unr, %.lr.ph.i67.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i69 = phi ptr [ %i.it, %.lr.ph.i67 ], [ %.sroa.010.014.i69.unr, %.lr.ph.i67.prol.loopexit ] ; 9 uses
  %i.hx = load i8, ptr %.sroa.010.014.i69, align 1, !tbaa !106
  store i8 %i.hx, ptr %.015.i68, align 1, !tbaa !106
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69, i64 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.015.i68, i64 1
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !106
  store i8 %i.ia, ptr %i.hz, align 1, !tbaa !106
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69, i64 2
  %i.ic = getelementptr inbounds nuw i8, ptr %.015.i68, i64 2
  %i.id = load i8, ptr %i.ib, align 1, !tbaa !106
  store i8 %i.id, ptr %i.ic, align 1, !tbaa !106
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69, i64 3
  %i.if = getelementptr inbounds nuw i8, ptr %.015.i68, i64 3
  %i.ig = load i8, ptr %i.ie, align 1, !tbaa !106
  store i8 %i.ig, ptr %i.if, align 1, !tbaa !106
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.015.i68, i64 4
  %i.ij = load i8, ptr %i.ih, align 1, !tbaa !106
  store i8 %i.ij, ptr %i.ii, align 1, !tbaa !106
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69, i64 5
  %i.il = getelementptr inbounds nuw i8, ptr %.015.i68, i64 5
  %i.im = load i8, ptr %i.ik, align 1, !tbaa !106
  store i8 %i.im, ptr %i.il, align 1, !tbaa !106
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69, i64 6
  %i.io = getelementptr inbounds nuw i8, ptr %.015.i68, i64 6
  %i.ip = load i8, ptr %i.in, align 1, !tbaa !106
  store i8 %i.ip, ptr %i.io, align 1, !tbaa !106
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69, i64 7
  %i.ir = getelementptr inbounds nuw i8, ptr %.015.i68, i64 7
  %i.is = load i8, ptr %i.iq, align 1, !tbaa !106
  store i8 %i.is, ptr %i.ir, align 1, !tbaa !106
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i69, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.015.i68, i64 8 ; 2 uses
  %.not.i70.7 = icmp eq ptr %i.it, %3
  br i1 %.not.i70.7, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit72, label %.lr.ph.i67, !llvm.loop !386

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit72: ; preds = %.lr.ph.i67.prol.loopexit, %.lr.ph.i67, %vec.epilog.middle.block272, %middle.block256
  %.lcssa116 = phi ptr [ %i.ho, %vec.epilog.middle.block272 ], [ %i.hf, %middle.block256 ], [ %.lcssa316.unr, %.lr.ph.i67.prol.loopexit ], [ %i.iu, %.lr.ph.i67 ] ; 7 uses
  %.not13.i.i73 = icmp eq ptr %1, %i.h
  br i1 %.not13.i.i73, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit79, label %iter.check297

iter.check297:                                    ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit72
  %.lcssa116277 = ptrtoaddr ptr %.lcssa116 to i64
  %i.iv = sub i64 %i.j, %i.a                      ; 7 uses
  %min.iters.check279 = icmp ult i64 %i.iv, 16
  %i.iw = sub i64 %i.a, %.lcssa116277
  %diff.check278 = icmp ugt i64 %i.iw, -128
  %or.cond315 = select i1 %min.iters.check279, i1 true, i1 %diff.check278
  br i1 %or.cond315, label %.lr.ph.i.i74.preheader, label %vector.main.loop.iter.check280

vector.main.loop.iter.check280:                   ; preds = %iter.check297
  %min.iters.check281 = icmp ult i64 %i.iv, 128
  br i1 %min.iters.check281, label %vec.epilog.ph301, label %vector.ph282

vector.ph282:                                     ; preds = %vector.main.loop.iter.check280
  %i.ix = and i64 %i.iv, 112
  %n.vec283 = and i64 %i.iv, -128                 ; 5 uses
  %i.iy = getelementptr i8, ptr %.lcssa116, i64 %n.vec283 ; 2 uses
  %i.iz = getelementptr i8, ptr %1, i64 %n.vec283
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph282
  %index285 = phi i64 [ 0, %vector.ph282 ], [ %index.next292, %vector.body284 ] ; 3 uses
  %next.gep286 = getelementptr i8, ptr %.lcssa116, i64 %index285 ; 4 uses
  %next.gep287 = getelementptr i8, ptr %1, i64 %index285 ; 4 uses
  %i.ja = getelementptr i8, ptr %next.gep287, i64 32
  %i.jb = getelementptr i8, ptr %next.gep287, i64 64
  %i.jc = getelementptr i8, ptr %next.gep287, i64 96
  %wide.load288 = load <32 x i8>, ptr %next.gep287, align 1, !tbaa !106
  %wide.load289 = load <32 x i8>, ptr %i.ja, align 1, !tbaa !106
  %wide.load290 = load <32 x i8>, ptr %i.jb, align 1, !tbaa !106
  %wide.load291 = load <32 x i8>, ptr %i.jc, align 1, !tbaa !106
  %i.jd = getelementptr i8, ptr %next.gep286, i64 32
  %i.je = getelementptr i8, ptr %next.gep286, i64 64
  %i.jf = getelementptr i8, ptr %next.gep286, i64 96
  store <32 x i8> %wide.load288, ptr %next.gep286, align 1, !tbaa !106
  store <32 x i8> %wide.load289, ptr %i.jd, align 1, !tbaa !106
  store <32 x i8> %wide.load290, ptr %i.je, align 1, !tbaa !106
  store <32 x i8> %wide.load291, ptr %i.jf, align 1, !tbaa !106
  %index.next292 = add nuw i64 %index285, 128     ; 2 uses
  %i.jg = icmp eq i64 %index.next292, %n.vec283
  br i1 %i.jg, label %middle.block293, label %vector.body284, !llvm.loop !387

middle.block293:                                  ; preds = %vector.body284
  %cmp.n294 = icmp eq i64 %i.iv, %n.vec283
  br i1 %cmp.n294, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit79, label %vec.epilog.iter.check299

vec.epilog.iter.check299:                         ; preds = %middle.block293
  %min.epilog.iters.check300 = icmp eq i64 %i.ix, 0
  br i1 %min.epilog.iters.check300, label %.lr.ph.i.i74.preheader, label %vec.epilog.ph301, !prof !111

vec.epilog.ph301:                                 ; preds = %vector.main.loop.iter.check280, %vec.epilog.iter.check299
  %vec.epilog.resume.val295 = phi i64 [ %n.vec283, %vec.epilog.iter.check299 ], [ 0, %vector.main.loop.iter.check280 ]
  %n.vec302 = and i64 %i.iv, -16                  ; 4 uses
  %i.jh = getelementptr i8, ptr %.lcssa116, i64 %n.vec302 ; 2 uses
  %i.ji = getelementptr i8, ptr %1, i64 %n.vec302
  br label %vec.epilog.vector.body303

vec.epilog.vector.body303:                        ; preds = %vec.epilog.vector.body303, %vec.epilog.ph301
  %index304 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph301 ], [ %index.next308, %vec.epilog.vector.body303 ] ; 3 uses
  %next.gep305 = getelementptr i8, ptr %.lcssa116, i64 %index304
  %next.gep306 = getelementptr i8, ptr %1, i64 %index304
  %wide.load307 = load <16 x i8>, ptr %next.gep306, align 1, !tbaa !106
  store <16 x i8> %wide.load307, ptr %next.gep305, align 1, !tbaa !106
  %index.next308 = add nuw i64 %index304, 16      ; 2 uses
  %i.jj = icmp eq i64 %index.next308, %n.vec302
  br i1 %i.jj, label %vec.epilog.middle.block309, label %vec.epilog.vector.body303, !llvm.loop !388

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body303
  %cmp.n310 = icmp eq i64 %i.iv, %n.vec302
  br i1 %cmp.n310, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit79, label %.lr.ph.i.i74.preheader

.lr.ph.i.i74.preheader:                           ; preds = %iter.check297, %vec.epilog.iter.check299, %vec.epilog.middle.block309
  %.015.i.i75.ph = phi ptr [ %.lcssa116, %iter.check297 ], [ %i.iy, %vec.epilog.iter.check299 ], [ %i.jh, %vec.epilog.middle.block309 ] ; 2 uses
  %.sroa.010.014.i.i76.ph = phi ptr [ %1, %iter.check297 ], [ %i.iz, %vec.epilog.iter.check299 ], [ %i.ji, %vec.epilog.middle.block309 ] ; 3 uses
  %.sroa.010.014.i.i76.ph331 = ptrtoaddr ptr %.sroa.010.014.i.i76.ph to i64 ; 2 uses
  %i.jk = sub i64 %i.j, %.sroa.010.014.i.i76.ph331
  %xtraiter332 = and i64 %i.jk, 7                 ; 2 uses
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph.i.i74.prol.loopexit, label %.lr.ph.i.i74.prol

.lr.ph.i.i74.prol:                                ; preds = %.lr.ph.i.i74.preheader, %.lr.ph.i.i74.prol
  %.015.i.i75.prol = phi ptr [ %i.jn, %.lr.ph.i.i74.prol ], [ %.015.i.i75.ph, %.lr.ph.i.i74.preheader ] ; 2 uses
  %.sroa.010.014.i.i76.prol = phi ptr [ %i.jm, %.lr.ph.i.i74.prol ], [ %.sroa.010.014.i.i76.ph, %.lr.ph.i.i74.preheader ] ; 2 uses
  %prol.iter334 = phi i64 [ %prol.iter334.next, %.lr.ph.i.i74.prol ], [ 0, %.lr.ph.i.i74.preheader ]
  %i.jl = load i8, ptr %.sroa.010.014.i.i76.prol, align 1, !tbaa !106
  store i8 %i.jl, ptr %.015.i.i75.prol, align 1, !tbaa !106
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76.prol, i64 1 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.015.i.i75.prol, i64 1 ; 3 uses
  %prol.iter334.next = add i64 %prol.iter334, 1   ; 2 uses
  %prol.iter334.cmp.not = icmp eq i64 %prol.iter334.next, %xtraiter332
  br i1 %prol.iter334.cmp.not, label %.lr.ph.i.i74.prol.loopexit, label %.lr.ph.i.i74.prol, !llvm.loop !389

.lr.ph.i.i74.prol.loopexit:                       ; preds = %.lr.ph.i.i74.prol, %.lr.ph.i.i74.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i74.preheader ], [ %i.jn, %.lr.ph.i.i74.prol ]
  %.015.i.i75.unr = phi ptr [ %.015.i.i75.ph, %.lr.ph.i.i74.preheader ], [ %i.jn, %.lr.ph.i.i74.prol ]
  %.sroa.010.014.i.i76.unr = phi ptr [ %.sroa.010.014.i.i76.ph, %.lr.ph.i.i74.preheader ], [ %i.jm, %.lr.ph.i.i74.prol ]
  %i.jo = sub i64 %.sroa.010.014.i.i76.ph331, %i.j
  %i.jp = icmp ugt i64 %i.jo, -8
  br i1 %i.jp, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit79, label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %.lr.ph.i.i74.prol.loopexit, %.lr.ph.i.i74
  %.015.i.i75 = phi ptr [ %i.kn, %.lr.ph.i.i74 ], [ %.015.i.i75.unr, %.lr.ph.i.i74.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i.i76 = phi ptr [ %i.km, %.lr.ph.i.i74 ], [ %.sroa.010.014.i.i76.unr, %.lr.ph.i.i74.prol.loopexit ] ; 9 uses
  %i.jq = load i8, ptr %.sroa.010.014.i.i76, align 1, !tbaa !106
  store i8 %i.jq, ptr %.015.i.i75, align 1, !tbaa !106
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76, i64 1
  %i.js = getelementptr inbounds nuw i8, ptr %.015.i.i75, i64 1
  %i.jt = load i8, ptr %i.jr, align 1, !tbaa !106
  store i8 %i.jt, ptr %i.js, align 1, !tbaa !106
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76, i64 2
  %i.jv = getelementptr inbounds nuw i8, ptr %.015.i.i75, i64 2
  %i.jw = load i8, ptr %i.ju, align 1, !tbaa !106
  store i8 %i.jw, ptr %i.jv, align 1, !tbaa !106
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76, i64 3
  %i.jy = getelementptr inbounds nuw i8, ptr %.015.i.i75, i64 3
  %i.jz = load i8, ptr %i.jx, align 1, !tbaa !106
  store i8 %i.jz, ptr %i.jy, align 1, !tbaa !106
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76, i64 4
  %i.kb = getelementptr inbounds nuw i8, ptr %.015.i.i75, i64 4
  %i.kc = load i8, ptr %i.ka, align 1, !tbaa !106
  store i8 %i.kc, ptr %i.kb, align 1, !tbaa !106
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76, i64 5
  %i.ke = getelementptr inbounds nuw i8, ptr %.015.i.i75, i64 5
  %i.kf = load i8, ptr %i.kd, align 1, !tbaa !106
  store i8 %i.kf, ptr %i.ke, align 1, !tbaa !106
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76, i64 6
  %i.kh = getelementptr inbounds nuw i8, ptr %.015.i.i75, i64 6
  %i.ki = load i8, ptr %i.kg, align 1, !tbaa !106
  store i8 %i.ki, ptr %i.kh, align 1, !tbaa !106
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76, i64 7
  %i.kk = getelementptr inbounds nuw i8, ptr %.015.i.i75, i64 7
  %i.kl = load i8, ptr %i.kj, align 1, !tbaa !106
  store i8 %i.kl, ptr %i.kk, align 1, !tbaa !106
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i76, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.015.i.i75, i64 8 ; 2 uses
  %.not.i.i77.7 = icmp eq ptr %i.km, %i.h
  br i1 %.not.i.i77.7, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit79, label %.lr.ph.i.i74, !llvm.loop !390

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit79: ; preds = %.lr.ph.i.i74.prol.loopexit, %.lr.ph.i.i74, %middle.block293, %vec.epilog.middle.block309, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit72
  %.0.lcssa.i.i78 = phi ptr [ %.lcssa116, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEEPhS7_ET0_T_SC_SB_RT1_.exit72 ], [ %i.jh, %vec.epilog.middle.block309 ], [ %i.iy, %middle.block293 ], [ %.lcssa.unr, %.lr.ph.i.i74.prol.loopexit ], [ %i.kn, %.lr.ph.i.i74 ]
  %.not.i80 = icmp eq ptr %i.es, null
  br i1 %.not.i80, label %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE13_M_deallocateEPhm.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit79
  %i.ko = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.s unwind label %bb.t       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !48
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull %i.es)
          to label %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE13_M_deallocateEPhm.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  tail call void @__clang_call_terminate(ptr %i.kt) #22
  unreachable

_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N3ozz12StdAllocatorIhEEET0_T_S5_S4_RT1_.exit79, %bb.s
  store ptr %i.fi, ptr %0, align 8, !tbaa !104
  store ptr %.0.lcssa.i.i78, ptr %i.g, align 8, !tbaa !105
  %i.ku = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  store ptr %i.ku, ptr %i.e, align 8, !tbaa !110
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhN3ozz12StdAllocatorIhEEEEENS1_IPhS8_EEET0_T_SD_SC_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!36, !37, !38}
!llvm.ident = !{!39}
!llvm.errno.tbaa = !{!44}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = distinct !{!2, !59}
!3 = distinct !{!3, !59}
!4 = distinct !{!4, !59}
!5 = distinct !{!5, !59}
!6 = distinct !{!6, !59}
!7 = distinct !{!7, !59}
!8 = distinct !{!8, !59}
!9 = distinct !{null}
!10 = distinct !{!10, !59}
!11 = distinct !{!11, !59}
!12 = distinct !{null, null}
!13 = distinct !{!13, !59}
!14 = distinct !{null, null}
!15 = distinct !{!15, !59}
!16 = distinct !{!16, !59}
!17 = distinct !{!17, !59}
!18 = distinct !{!18, !59}
!19 = distinct !{!19, !59}
!20 = distinct !{null, null}
!21 = distinct !{!21, !59}
!22 = distinct !{null, null}
!23 = distinct !{!23, !59}
!24 = distinct !{!24, !59}
!25 = distinct !{!25, !59}
!26 = distinct !{!26, !59}
!27 = distinct !{!27, !59}
!28 = distinct !{null, null}
!29 = distinct !{!29, !59}
!30 = distinct !{null, null}
!31 = distinct !{!31, !59}
!32 = distinct !{!32, !59}
!33 = distinct !{!33, !59}
!34 = distinct !{!34, !59}
!35 = distinct !{!35, !59}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"omnipotent char", !40, i64 0}
!42 = !{!"int", !41, i64 0}
!43 = !{!"__libc_errno", !42, i64 0}
!44 = !{!43, !42, i64 0}
!45 = !{!"any pointer", !41, i64 0}
!46 = !{!"p1 _ZTSN3ozz9animation9AnimationE", !45, i64 0}
!47 = !{!"vtable pointer", !40, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!46, !46, i64 0}
!50 = !{!"float", !41, i64 0}
!51 = !{!"p1 omnipotent char", !45, i64 0}
!52 = !{!"p1 float", !45, i64 0}
!53 = !{!"p1 int", !45, i64 0}
!54 = !{!"p1 _ZTSN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS1_12RawAnimation14TranslationKeyEEE", !45, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 0}
!57 = !{!55, !54, i64 8}
!58 = !{!55, !54, i64 16}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"p1 _ZTSN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS1_12RawAnimation11RotationKeyEEE", !45, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 0}
!63 = !{!61, !60, i64 8}
!64 = !{!61, !60, i64 16}
!65 = !{!"p1 _ZTSN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS1_12RawAnimation8ScaleKeyEEE", !45, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!66, !65, i64 0}
!68 = !{!66, !65, i64 8}
!69 = !{!66, !65, i64 16}
!70 = !{!"short", !41, i64 0}
!71 = !{!"_ZTSN3ozz4math6Float3E", !50, i64 0, !50, i64 4, !50, i64 8}
!72 = !{!"_ZTSN3ozz9animation7offline12RawAnimation14TranslationKeyE", !50, i64 0, !71, i64 4}
!73 = !{!"_ZTSN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS1_12RawAnimation14TranslationKeyEEE", !70, i64 0, !50, i64 4, !72, i64 8}
!74 = !{!73, !70, i64 0}
!75 = !{!73, !50, i64 4}
!76 = !{!50, !50, i64 0}
!77 = !{!70, !70, i64 0}
!78 = !{i64 0, i64 2, !77, i64 4, i64 4, !76, i64 8, i64 4, !76, i64 12, i64 4, !76, i64 16, i64 4, !76, i64 20, i64 4, !76}
!79 = !{!"_ZTSN3ozz4math10QuaternionE", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!80 = !{!"_ZTSN3ozz9animation7offline12RawAnimation11RotationKeyE", !50, i64 0, !79, i64 4}
!81 = !{!"_ZTSN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS1_12RawAnimation11RotationKeyEEE", !70, i64 0, !50, i64 4, !80, i64 8}
!82 = !{!81, !70, i64 0}
!83 = !{!81, !50, i64 4}
!84 = !{i64 0, i64 2, !77, i64 4, i64 4, !76, i64 8, i64 4, !76, i64 12, i64 4, !76, i64 16, i64 4, !76, i64 20, i64 4, !76, i64 24, i64 4, !76}
!85 = !{!"_ZTSN3ozz9animation7offline12RawAnimation8ScaleKeyE", !50, i64 0, !71, i64 4}
!86 = !{!"_ZTSN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS1_12RawAnimation8ScaleKeyEEE", !70, i64 0, !50, i64 4, !85, i64 8}
!87 = !{!86, !70, i64 0}
!88 = !{!86, !50, i64 4}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!"p1 _ZTSSt4pairIiiE", !45, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!91, !90, i64 0}
!93 = !{!42, !42, i64 0}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"_ZTSNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!96 = !{!95, !52, i64 8}
!97 = !{!95, !52, i64 16}
!98 = !{!95, !52, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseIjN3ozz12StdAllocatorIjEEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!101 = !{!100, !53, i64 8}
!102 = !{!100, !53, i64 0}
!103 = !{!100, !53, i64 16}
!104 = !{!99, !51, i64 0}
!105 = !{!99, !51, i64 8}
!106 = !{!41, !41, i64 0}
!107 = !{!"llvm.loop.isvectorized", i32 1}
!108 = !{!"llvm.loop.unroll.runtime.disable"}
!109 = !{!"branch_weights", i32 8, i32 24}
!110 = !{!99, !51, i64 16}
!111 = !{!"branch_weights", i32 16, i32 112}
!112 = distinct !{!112, !"_ZN3ozz11make_uniqueINS_9animation9AnimationEJEEESt10unique_ptrIT_NS_7DeleterIS4_EEEDpOT0_"}
!113 = distinct !{!113, !112, !"_ZN3ozz11make_uniqueINS_9animation9AnimationEJEEESt10unique_ptrIT_NS_7DeleterIS4_EEEDpOT0_: argument 0"}
!114 = distinct !{null, null}
!115 = distinct !{!115, !59}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = distinct !{!118, !59}
!119 = distinct !{!119, !59}
!120 = distinct !{!120, !59}
!121 = distinct !{!121, !59}
!122 = distinct !{!122, !59}
!123 = distinct !{!123, !59}
!124 = distinct !{!124, !59}
!125 = distinct !{!125, !59}
!126 = distinct !{!126, !94}
!127 = distinct !{!127, !59}
!128 = distinct !{!128, !59}
!129 = distinct !{!129, !59}
!130 = distinct !{!130, !59}
!131 = distinct !{!131, !59}
!132 = distinct !{!132, !59}
!133 = distinct !{!133, !59}
!134 = distinct !{!134, !94}
!135 = distinct !{!135, !59}
!136 = distinct !{!136, !59}
!137 = distinct !{!137, !59}
!138 = distinct !{!138, !59}
!139 = distinct !{!139, !59}
!140 = distinct !{!140, !59}
!141 = distinct !{!141, !59}
!142 = distinct !{!142, !94}
!143 = distinct !{!143, !59}
!144 = distinct !{!144, !59}
!145 = distinct !{!145, !59}
!146 = distinct !{!146, !"_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE"}
!147 = distinct !{!147, !146, !"_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE: argument 0"}
!148 = distinct !{!148, !59}
!149 = distinct !{!149, !59}
!150 = distinct !{!150, !"_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff"}
!151 = distinct !{!151, !150, !"_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff: argument 0"}
!152 = distinct !{!152, !"_ZN3ozz9animation7offline12_GLOBAL__N_111BuildIFrameINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEENS2_13BuilderIFrameERKNS_4spanIT_EEfm"}
!153 = distinct !{!153, !152, !"_ZN3ozz9animation7offline12_GLOBAL__N_111BuildIFrameINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEENS2_13BuilderIFrameERKNS_4spanIT_EEfm: argument 0"}
!154 = distinct !{!154, !59}
!155 = distinct !{!155, !59}
!156 = distinct !{!156, !"_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff"}
!157 = distinct !{!157, !156, !"_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff: argument 0"}
!158 = distinct !{!158, !"_ZN3ozz9animation7offline12_GLOBAL__N_111BuildIFrameINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEENS2_13BuilderIFrameERKNS_4spanIT_EEfm"}
!159 = distinct !{!159, !158, !"_ZN3ozz9animation7offline12_GLOBAL__N_111BuildIFrameINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEENS2_13BuilderIFrameERKNS_4spanIT_EEfm: argument 0"}
!160 = distinct !{!160, !59}
!161 = distinct !{!161, !59}
!162 = distinct !{!162, !"_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff"}
!163 = distinct !{!163, !162, !"_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff: argument 0"}
!164 = distinct !{!164, !"_ZN3ozz9animation7offline12_GLOBAL__N_111BuildIFrameINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEENS2_13BuilderIFrameERKNS_4spanIT_EEfm"}
!165 = distinct !{!165, !164, !"_ZN3ozz9animation7offline12_GLOBAL__N_111BuildIFrameINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEENS2_13BuilderIFrameERKNS_4spanIT_EEfm: argument 0"}
!166 = distinct !{!166, !59}
!167 = distinct !{!167, !59}
!168 = distinct !{!168, !59}
!169 = distinct !{!169, !59}
!170 = distinct !{!170, !59}
!171 = distinct !{!171, !59}
!172 = distinct !{!172, !59, !107, !108}
!173 = distinct !{!173, !59, !107, !108}
!174 = distinct !{!174, !94}
!175 = distinct !{!175, !59, !107}
!176 = !{!"_ZTSSt10_Head_baseILm0EPN3ozz9animation9AnimationELb0EE", !46, i64 0}
!177 = !{!176, !46, i64 0}
!178 = !{!113}
!179 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation10JointTrackE", !45, i64 0}
!180 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!181 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE12_Vector_implE", !180, i64 0}
!182 = !{!"_ZTSSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE", !181, i64 0}
!183 = !{!"_ZTSSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE", !182, i64 0}
!184 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE12_Alloc_hiderE", !51, i64 0}
!185 = !{!"long", !41, i64 0}
!186 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEE", !184, i64 0, !185, i64 8, !41, i64 16}
!187 = !{!"_ZTSN3ozz9animation7offline12RawAnimationE", !183, i64 0, !50, i64 24, !186, i64 32}
!188 = !{!187, !50, i64 24}
!189 = !{!"_ZTSN3ozz4spanIfEE", !52, i64 0, !185, i64 8}
!190 = !{!"_ZTSN3ozz4spanIhEE", !51, i64 0, !185, i64 8}
!191 = !{!"p1 short", !45, i64 0}
!192 = !{!"_ZTSN3ozz4spanItEE", !191, i64 0, !185, i64 8}
!193 = !{!"_ZTSN3ozz4spanIjEE", !53, i64 0, !185, i64 8}
!194 = !{!"_ZTSN3ozz9animation9Animation14TKeyframesCtrlILb0EEE", !190, i64 0, !192, i64 16, !190, i64 32, !193, i64 48, !50, i64 64}
!195 = !{!"p1 _ZTSN3ozz9animation8internal9Float3KeyE", !45, i64 0}
!196 = !{!"_ZTSN3ozz4spanINS_9animation8internal9Float3KeyEEE", !195, i64 0, !185, i64 8}
!197 = !{!"p1 _ZTSN3ozz9animation8internal13QuaternionKeyE", !45, i64 0}
!198 = !{!"_ZTSN3ozz4spanINS_9animation8internal13QuaternionKeyEEE", !197, i64 0, !185, i64 8}
!199 = !{!"_ZTSN3ozz9animation9AnimationE", !50, i64 0, !42, i64 4, !45, i64 8, !51, i64 16, !189, i64 24, !194, i64 40, !194, i64 112, !194, i64 184, !196, i64 256, !198, i64 272, !196, i64 288}
!200 = !{!199, !50, i64 0}
!201 = !{!180, !179, i64 8}
!202 = !{!180, !179, i64 0}
!203 = !{!199, !42, i64 4}
!204 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation14TranslationKeyE", !45, i64 0}
!205 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !204, i64 0, !204, i64 8, !204, i64 16}
!206 = !{!205, !204, i64 8}
!207 = !{!205, !204, i64 0}
!208 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation11RotationKeyE", !45, i64 0}
!209 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !208, i64 0, !208, i64 8, !208, i64 16}
!210 = !{!209, !208, i64 8}
!211 = !{!209, !208, i64 0}
!212 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation8ScaleKeyE", !45, i64 0}
!213 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !212, i64 0, !212, i64 8, !212, i64 16}
!214 = !{!213, !212, i64 8}
!215 = !{!213, !212, i64 0}
!216 = !{!54, !54, i64 0}
!217 = !{!73, !50, i64 8}
!218 = !{!72, !50, i64 0}
!219 = !{i64 0, i64 4, !76, i64 4, i64 4, !76, i64 8, i64 4, !76}
!220 = !{!60, !60, i64 0}
!221 = !{!81, !50, i64 8}
!222 = !{!80, !50, i64 0}
!223 = !{i64 0, i64 4, !76, i64 4, i64 4, !76, i64 8, i64 4, !76, i64 12, i64 4, !76}
!224 = !{!65, !65, i64 0}
!225 = !{!86, !50, i64 8}
!226 = !{!85, !50, i64 0}
!227 = !{!81, !50, i64 12}
!228 = !{!81, !50, i64 16}
!229 = !{!81, !50, i64 20}
!230 = !{!81, !50, i64 24}
!231 = !{!91, !90, i64 16}
!232 = !{!91, !90, i64 8}
!233 = !{!"_ZTSSt4pairIiiE", !42, i64 0, !42, i64 4}
!234 = !{!233, !42, i64 0}
!235 = !{!233, !42, i64 4}
!236 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!237 = !{!90, !90, i64 0}
!238 = !{i64 0, i64 4, !76, i64 4, i64 4, !76, i64 8, i64 4, !76, i64 12, i64 4, !76, i64 16, i64 4, !76}
!239 = !{!147}
!240 = !{!52, !52, i64 0}
!241 = !{!"_ZTSN3ozz9animation7offline16AnimationBuilderE", !50, i64 0}
!242 = !{!241, !50, i64 0}
!243 = !{!151}
!244 = !{!"_ZTSNSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE12_Vector_implE", !99, i64 0}
!245 = !{!"_ZTSSt12_Vector_baseIhN3ozz12StdAllocatorIhEEE", !244, i64 0}
!246 = !{!"_ZTSSt6vectorIhN3ozz12StdAllocatorIhEEE", !245, i64 0}
!247 = !{!"_ZTSNSt12_Vector_baseIjN3ozz12StdAllocatorIjEEE12_Vector_implE", !100, i64 0}
!248 = !{!"_ZTSSt12_Vector_baseIjN3ozz12StdAllocatorIjEEE", !247, i64 0}
!249 = !{!"_ZTSSt6vectorIjN3ozz12StdAllocatorIjEEE", !248, i64 0}
!250 = !{!"_ZTSN3ozz9animation7offline12_GLOBAL__N_114BuilderIFramesE", !246, i64 0, !249, i64 24, !50, i64 48}
!251 = !{!250, !50, i64 48}
!252 = !{!51, !51, i64 0}
!253 = !{!153}
!254 = !{!153, !151}
!255 = !{!"_ZTSN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameE", !246, i64 0, !185, i64 24}
!256 = !{!255, !185, i64 24}
!257 = !{!53, !53, i64 0}
!258 = !{!157}
!259 = !{!159}
!260 = !{!159, !157}
!261 = !{!163}
!262 = !{!165}
!263 = !{!165, !163}
!264 = !{!186, !185, i64 8}
!265 = !{!"_ZTSN3ozz9animation9Animation14AllocateParams7IFramesE", !185, i64 0, !185, i64 8}
!266 = !{!"_ZTSN3ozz9animation9Animation14AllocateParamsE", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !265, i64 40, !265, i64 56, !265, i64 72}
!267 = !{!266, !185, i64 0}
!268 = !{!266, !185, i64 8}
!269 = !{!266, !185, i64 16}
!270 = !{!266, !185, i64 24}
!271 = !{!266, !185, i64 32}
!272 = !{!265, !185, i64 0}
!273 = !{!265, !185, i64 8}
!274 = !{!190, !51, i64 0}
!275 = !{!193, !53, i64 0}
!276 = !{!194, !50, i64 64}
!277 = !{!196, !195, i64 0}
!278 = !{!195, !195, i64 0}
!279 = !{!198, !197, i64 0}
!280 = !{!192, !191, i64 0}
!281 = !{!71, !50, i64 0}
!282 = !{!71, !50, i64 4}
!283 = !{!71, !50, i64 8}
!284 = !{!197, !197, i64 0}
!285 = !{!79, !50, i64 0}
!286 = !{!79, !50, i64 4}
!287 = !{!79, !50, i64 8}
!288 = !{!79, !50, i64 12}
!289 = !{!"branch_weights", i32 4, i32 28}
!290 = !{!199, !51, i64 16}
!291 = !{!186, !51, i64 0}
!292 = distinct !{!292, !59, !107, !108}
!293 = distinct !{!293, !59, !107, !108}
!294 = distinct !{!294, !59, !107}
!295 = distinct !{!295, !59, !107, !108}
!296 = distinct !{!296, !59, !107, !108}
!297 = distinct !{!297, !59, !107}
!298 = distinct !{!298, !59}
!299 = distinct !{!299, !59}
!300 = distinct !{!300, !59}
!301 = distinct !{!301, !59}
!302 = distinct !{!302, !59}
!303 = distinct !{!303, !59}
!304 = distinct !{!304, !59}
!305 = distinct !{!305, !59}
!306 = distinct !{!306, !59}
!307 = distinct !{!307, !59}
!308 = distinct !{null, null, null, null, null}
!309 = distinct !{!309, !59}
!310 = distinct !{null, null, null, null, null, null}
!311 = distinct !{!311, !59}
end_hunk_1
