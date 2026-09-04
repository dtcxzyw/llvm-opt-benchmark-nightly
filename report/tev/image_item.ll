Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/image_item?download=true
inline.NumInlined: 5479
inline.NumDeleted: 2972
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_:bb.a
  %i.ag = phi ptr [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %.pre11, %.loopexit.loopexit ] ; 2 uses
  %i.ah = phi ptr [ %i.ab, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.s, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %i.ad, %.loopexit.loopexit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !161
  store ptr %i.z, ptr %i.b, align 8, !tbaa !161
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !161
  store ptr %i.t, ptr %i.a, align 8, !tbaa !161
  %.not2.i.i.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %i.aj = phi ptr [ %i.ak, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.ag, %.loopexit ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !160 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw add ptr %i.an, i64 -1 acq_rel, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #24, !inline_history !25
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #24
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i
  %.not.i.i.i.i5 = icmp eq ptr %i.ah, %i.ak
  br i1 %.not.i.i.i.i5, label %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, %.loopexit
  %.not.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i6, label %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.at = ptrtoint ptr %i.ai to i64
  %i.au = ptrtoint ptr %i.ah to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.av) #25
  br label %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.g
  ret ptr %i.z
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.31) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !120
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #27
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.32) #27
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EENS8_IPS3_EENS8_IPKS3_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 9 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_10shared_ptrI8Box_colrEEEEPNS2_I3BoxEEEET0_T_SB_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !157  ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.s, %3
  br i1 %.not8.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.i.i
  %.010.i.i.i = phi ptr [ %i.y, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %storemerge9.i.i.i = phi ptr [ %i.z, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !273  ; 2 uses
  %i.v = load <2 x ptr>, ptr %.010.i.i.i, align 8, !tbaa !173
  store <2 x ptr> %i.v, ptr %storemerge9.i.i.i, align 8, !tbaa !173
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %3
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1012

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit.loopexit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.i.i
  %.pre56 = ptrtoint ptr %i.z to i64
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre56, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit.loopexit ], [ %i.l, %bb.d ]
  %i.aa = sub i64 %.pre-phi, %i.l
  %i.ab = getelementptr inbounds i8, ptr %i.j, i64 %i.aa ; 3 uses
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !157
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_10shared_ptrI8Box_colrEEEEPNS2_I3BoxEEEET0_T_SB_SA_.exit

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit
  %.pre57 = ptrtoint ptr %i.ab to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi58 = phi i64 [ %.pre57, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ]
  %i.ad = phi ptr [ %i.ab, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPNS1_I8Box_colrEEEESC_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %.pre-phi58, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.e, i64 %i.ag ; 3 uses
  %i.ai = icmp ult ptr %i.ah, %i.j
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.ad, %.critedge ], [ %i.aw, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !157
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i ], [ %i.ah, %._crit_edge.i ]
  %.079.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i ], [ %i.ad, %._crit_edge.i ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8
  %i.am = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !173
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !277 ; 5 uses
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !173
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 acq_rel, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #24, !inline_history !26
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #24
  br label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01924.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.ah, %.critedge ] ; 3 uses
  %.sroa.6.023.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.ad, %.critedge ] ; 2 uses
  %i.au = load <2 x ptr>, ptr %.01924.i, align 8, !tbaa !173
  store <2 x ptr> %i.au, ptr %.sroa.6.023.i, align 8, !tbaa !173
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01924.i, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.01924.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 16 ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.j
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !28

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit: ; preds = %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i, %._crit_edge.i
  %.not6.i.i.i.i.i = icmp eq ptr %2, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_10shared_ptrI8Box_colrEEEEPNS2_I3BoxEEEET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100I8Box_colrvEERS2_RKNS0_IT_EE.exit.i.i.i.i.i
  %storemerge8.i.i.i.i.i = phi ptr [ %i.bm, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100I8Box_colrvEERS2_RKNS0_IT_EE.exit.i.i.i.i.i ], [ %i.e, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ] ; 3 uses
  %.07.i.i.i.i.i = phi ptr [ %i.bl, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100I8Box_colrvEERS2_RKNS0_IT_EE.exit.i.i.i.i.i ], [ %2, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !273 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %.07.i.i.i.i.i, align 8, !tbaa !173
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i38, label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !277 ; 5 uses
  store <2 x ptr> %i.ba, ptr %storemerge8.i.i.i.i.i, align 8, !tbaa !173
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i2.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100I8Box_colrvEERS2_RKNS0_IT_EE.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 acq_rel, align 8
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100I8Box_colrvEERS2_RKNS0_IT_EE.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(24) %i.be) #24, !inline_history !1013
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be) #24
  br label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100I8Box_colrvEERS2_RKNS0_IT_EE.exit.i.i.i.i.i

_ZNSt3__110shared_ptrI3BoxEaSB8ne180100I8Box_colrvEERS2_RKNS0_IT_EE.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.0.0
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_10shared_ptrI8Box_colrEEEEPNS2_I3BoxEEEET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1014

bb.k:                                             ; preds = %bb.b
  %i.bn = sub i64 %i.l, %i.c
  %i.bo = ashr exact i64 %i.bn, 4
  %i.bp = add i64 %i.bo, %4                       ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 1152921504606846975
  br i1 %i.bq, label %bb.l, label %_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  unreachable

_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.k
  %i.br = sub i64 %i.k, %i.c                      ; 2 uses
  %.not.i = icmp ult i64 %i.br, 9223372036854775792
  %i.bs = ashr exact i64 %i.br, 3
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bp)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 1152921504606846975 ; 4 uses
  %i.bt = icmp eq i64 %.0.i, 0
  br i1 %i.bt, label %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.bu = icmp ugt i64 %.0.i, 1152921504606846975
  br i1 %i.bu, label %bb.n, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI3BoxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #27
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI3BoxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i: ; preds = %bb.m
  %i.bv = shl nuw i64 %.0.i, 4
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26
  br label %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit

_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI3BoxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %storemerge.i = phi ptr [ %i.bw, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI3BoxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 8 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i = shl i64 %4, 4                         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i ; 3 uses
  %i.ca = add i64 %.idx.i, -16                    ; 2 uses
  %i.cb = and i64 %i.ca, 16
  %lcmp.mod.not.not = icmp eq i64 %i.cb, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i39.prol, label %.lr.ph.i39.prol.loopexit

.lr.ph.i39.prol:                                  ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !273 ; 2 uses
  %i.ce = load <2 x ptr>, ptr %2, align 8, !tbaa !173
  store <2 x ptr> %i.ce, ptr %i.bx, align 8, !tbaa !173
  %.not.i.i.i.i.i40.prol = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i40.prol, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.prol, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i39.prol
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.prol

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.prol: ; preds = %bb.o, %.lr.ph.i39.prol
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i39.prol.loopexit

.lr.ph.i39.prol.loopexit:                         ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.prol, %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.0.012.i.unr = phi ptr [ %i.bx, %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.ch, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.prol ]
  %.sroa.08.011.i.unr = phi ptr [ %2, %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.ci, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.prol ]
  %i.cj = icmp eq i64 %i.ca, 0
  br i1 %i.cj, label %.unr-lcssa, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.prol.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.1
  %.sroa.0.012.i = phi ptr [ %i.cw, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.1 ], [ %.sroa.0.012.i.unr, %.lr.ph.i39.prol.loopexit ] ; 3 uses
  %.sroa.08.011.i = phi ptr [ %i.cx, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.1 ], [ %.sroa.08.011.i.unr, %.lr.ph.i39.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !273 ; 2 uses
  %i.cm = load <2 x ptr>, ptr %.sroa.08.011.i, align 8, !tbaa !173
  store <2 x ptr> %i.cm, ptr %.sroa.0.012.i, align 8, !tbaa !173
  %.not.i.i.i.i.i40 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i40, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i39
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = atomicrmw add ptr %i.cn, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i: ; preds = %bb.p, %.lr.ph.i39
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !273 ; 2 uses
  %i.ct = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !173
  store <2 x ptr> %i.ct, ptr %i.cp, align 8, !tbaa !173
  %.not.i.i.i.i.i40.1 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i40.1, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.1, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.1

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i.1: ; preds = %bb.q, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRNS2_I8Box_colrEEEvvEEvRS5_PT_DpOT0_.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE18__assign_with_sizeB8ne180100IPS1_S6_EEvT_T0_l:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.e, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i.i.i17 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i17, align 8
  %.sroa.5.0..sroa_idx.i.i.i18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx.i.i.i18, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.dz, align 8, !tbaa !470, !alias.scope !1089
  %.not8.i.i.i19 = icmp eq ptr %1, %2
  br i1 %.not8.i.i.i19, label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE18__construct_at_endIPS1_S6_EEvT_T0_m.exit25, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE11__vallocateB8ne180100Em.exit, %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE9constructB8ne180100IS2_JRS2_EvvEEvRS3_PT_DpOT0_.exit.i.i.i23
  %i.ea = phi ptr [ %i.ed, %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE9constructB8ne180100IS2_JRS2_EvvEEvRS3_PT_DpOT0_.exit.i.i.i23 ], [ %i.dw, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE11__vallocateB8ne180100Em.exit ]
  %.09.i.i.i21 = phi ptr [ %i.eb, %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE9constructB8ne180100IS2_JRS2_EvvEEvRS3_PT_DpOT0_.exit.i.i.i23 ], [ %1, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE11__vallocateB8ne180100Em.exit ] ; 2 uses
  invoke void @_ZN29SensorNonUniformityCorrectionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(88) %i.ea, ptr noundef nonnull align 8 dereferenceable(88) %.09.i.i.i21)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE9constructB8ne180100IS2_JRS2_EvvEEvRS3_PT_DpOT0_.exit.i.i.i23 unwind label %.body.i22

_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE9constructB8ne180100IS2_JRS2_EvvEEvRS3_PT_DpOT0_.exit.i.i.i23: ; preds = %.lr.ph.i.i.i20
  %i.eb = getelementptr inbounds nuw i8, ptr %.09.i.i.i21, i64 88 ; 2 uses
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !419
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 88 ; 3 uses
  store ptr %i.ed, ptr %i.a, align 8, !tbaa !419
  %.not.i.i.i24 = icmp eq ptr %i.eb, %2
  br i1 %.not.i.i.i24, label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE18__construct_at_endIPS1_S6_EEvT_T0_m.exit25, label %.lr.ph.i.i.i20, !llvm.loop !33

.body.i22:                                        ; preds = %.lr.ph.i.i.i20
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !305
  br label %common.resume

_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE18__construct_at_endIPS1_S6_EEvT_T0_m.exit25: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE9constructB8ne180100IS2_JRS2_EvvEEvRS3_PT_DpOT0_.exit.i.i.i23, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE11__vallocateB8ne180100Em.exit
  %i.ef = phi ptr [ %i.dw, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE11__vallocateB8ne180100Em.exit ], [ %i.ed, %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE9constructB8ne180100IS2_JRS2_EvvEEvRS3_PT_DpOT0_.exit.i.i.i23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.dw to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.dw, i64 %i.ei
  store ptr %i.ej, ptr %i.dx, align 8, !tbaa !305
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE18__construct_at_endIPS1_S6_EEvT_T0_m.exit, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_.exit, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE18__construct_at_endIPS1_S6_EEvT_T0_m.exit25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE13__vdeallocateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !304    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 9 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !424  ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !425
  %i.h = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !426
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.l) #25
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i.i

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.m = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !424  ; 4 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !425
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !426
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.t) #25
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i.i

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i.i: ; preds = %bb.d, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !413  ; 4 uses
  %.not.i.i3.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i.i
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -80
  store ptr %i.u, ptr %i.v, align 8, !tbaa !414
  %i.w = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !415
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.aa) #25
  br label %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i: ; preds = %bb.e, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.loopexit, label %.lr.ph.i.i.i

_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.loopexit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !304
  br label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit

_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.loopexit, %bb.b
  %i.ab = phi ptr [ %.pre, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !305
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !419
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ag) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPS3_EESA_EESA_NS8_IPKS3_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 9 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_10shared_ptrI3BoxEEEES5_EET0_T_S8_S7_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !157  ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.s, %3
  br i1 %.not8.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i
  %.010.i.i.i = phi ptr [ %i.y, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %storemerge9.i.i.i = phi ptr [ %i.z, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !160  ; 2 uses
  %i.v = load <2 x ptr>, ptr %.010.i.i.i, align 8, !tbaa !173
  store <2 x ptr> %i.v, ptr %storemerge9.i.i.i, align 8, !tbaa !173
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %3
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1090

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit.loopexit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i
  %.pre56 = ptrtoint ptr %i.z to i64
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre56, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit.loopexit ], [ %i.l, %bb.d ]
  %i.aa = sub i64 %.pre-phi, %i.l
  %i.ab = getelementptr inbounds i8, ptr %i.j, i64 %i.aa ; 3 uses
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !157
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_10shared_ptrI3BoxEEEES5_EET0_T_S8_S7_.exit

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit
  %.pre57 = ptrtoint ptr %i.ab to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi58 = phi i64 [ %.pre57, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ]
  %i.ad = phi ptr [ %i.ab, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %.pre-phi58, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.e, i64 %i.ag ; 3 uses
  %i.ai = icmp ult ptr %i.ah, %i.j
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.ad, %.critedge ], [ %i.aw, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !157
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i ], [ %i.ah, %._crit_edge.i ]
  %.079.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i ], [ %i.ad, %._crit_edge.i ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8
  %i.am = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !173
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !277 ; 5 uses
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !173
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 acq_rel, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #24, !inline_history !26
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #24
  br label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01924.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.ah, %.critedge ] ; 3 uses
  %.sroa.6.023.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.ad, %.critedge ] ; 2 uses
  %i.au = load <2 x ptr>, ptr %.01924.i, align 8, !tbaa !173
  store <2 x ptr> %i.au, ptr %.sroa.6.023.i, align 8, !tbaa !173
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01924.i, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.01924.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 16 ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.j
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !28

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit: ; preds = %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i, %._crit_edge.i
  %.not6.i.i.i.i.i = icmp eq ptr %2, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_10shared_ptrI3BoxEEEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100ERKS2_.exit.i.i.i.i.i
  %storemerge8.i.i.i.i.i = phi ptr [ %i.bm, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100ERKS2_.exit.i.i.i.i.i ], [ %i.e, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ] ; 3 uses
  %.07.i.i.i.i.i = phi ptr [ %i.bl, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100ERKS2_.exit.i.i.i.i.i ], [ %2, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !160 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %.07.i.i.i.i.i, align 8, !tbaa !173
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i38, label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !277 ; 5 uses
  store <2 x ptr> %i.ba, ptr %storemerge8.i.i.i.i.i, align 8, !tbaa !173
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i2.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100ERKS2_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 acq_rel, align 8
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100ERKS2_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(24) %i.be) #24, !inline_history !1091
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be) #24
  br label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100ERKS2_.exit.i.i.i.i.i

_ZNSt3__110shared_ptrI3BoxEaSB8ne180100ERKS2_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.0.0
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_10shared_ptrI3BoxEEEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1092

bb.k:                                             ; preds = %bb.b
  %i.bn = sub i64 %i.l, %i.c
  %i.bo = ashr exact i64 %i.bn, 4
  %i.bp = add i64 %i.bo, %4                       ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 1152921504606846975
  br i1 %i.bq, label %bb.l, label %_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  unreachable

_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.k
  %i.br = sub i64 %i.k, %i.c                      ; 2 uses
  %.not.i = icmp ult i64 %i.br, 9223372036854775792
  %i.bs = ashr exact i64 %i.br, 3
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bp)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 1152921504606846975 ; 4 uses
  %i.bt = icmp eq i64 %.0.i, 0
  br i1 %i.bt, label %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.bu = icmp ugt i64 %.0.i, 1152921504606846975
  br i1 %i.bu, label %bb.n, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI3BoxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #27
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI3BoxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i: ; preds = %bb.m
  %i.bv = shl nuw i64 %.0.i, 4
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26
  br label %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit

_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI3BoxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %storemerge.i = phi ptr [ %i.bw, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI3BoxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 8 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i = shl i64 %4, 4                         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i ; 3 uses
  %i.ca = add i64 %.idx.i, -16                    ; 2 uses
  %i.cb = and i64 %i.ca, 16
  %lcmp.mod.not.not = icmp eq i64 %i.cb, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i39.prol, label %.lr.ph.i39.prol.loopexit

.lr.ph.i39.prol:                                  ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !160 ; 2 uses
  %i.ce = load <2 x ptr>, ptr %2, align 8, !tbaa !173
  store <2 x ptr> %i.ce, ptr %i.bx, align 8, !tbaa !173
  %.not.i.i.i.i.i40.prol = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i40.prol, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.prol, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i39.prol
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.prol

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.prol: ; preds = %bb.o, %.lr.ph.i39.prol
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i39.prol.loopexit

.lr.ph.i39.prol.loopexit:                         ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.prol, %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.0.012.i.unr = phi ptr [ %i.bx, %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.ch, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.prol ]
  %.sroa.08.011.i.unr = phi ptr [ %2, %_ZNSt3__114__split_bufferINS_10shared_ptrI3BoxEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.ci, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.prol ]
  %i.cj = icmp eq i64 %i.ca, 0
  br i1 %i.cj, label %.unr-lcssa, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.prol.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.1
  %.sroa.0.012.i = phi ptr [ %i.cw, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.1 ], [ %.sroa.0.012.i.unr, %.lr.ph.i39.prol.loopexit ] ; 3 uses
  %.sroa.08.011.i = phi ptr [ %i.cx, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.1 ], [ %.sroa.08.011.i.unr, %.lr.ph.i39.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !160 ; 2 uses
  %i.cm = load <2 x ptr>, ptr %.sroa.08.011.i, align 8, !tbaa !173
  store <2 x ptr> %i.cm, ptr %.sroa.0.012.i, align 8, !tbaa !173
  %.not.i.i.i.i.i40 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i40, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i39
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = atomicrmw add ptr %i.cn, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i: ; preds = %bb.p, %.lr.ph.i39
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !160 ; 2 uses
  %i.ct = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !173
  store <2 x ptr> %i.ct, ptr %i.cp, align 8, !tbaa !173
  %.not.i.i.i.i.i40.1 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i40.1, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.1, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.1

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.1: ; preds = %bb.q, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 32 ; 2 uses
end_hunk_1
