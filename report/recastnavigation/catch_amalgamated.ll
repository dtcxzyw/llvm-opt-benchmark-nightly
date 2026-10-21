Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9346
  %.not.i21 = icmp eq i64 %i.am, 0
  br i1 %.not.i21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.c, i64 noundef 1) #49
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i8 noundef signext 32) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.e, %bb.f
  %.0.i22 = phi ptr [ %i.an, %bb.e ], [ %i.ag, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i15, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  %i.ap = load ptr, ptr %1, align 8, !tbaa !9326
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ap, i64 noundef %i.f) #49 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !9325
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !3603
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9346
  %.not.i24 = icmp eq i64 %i.aw, 0
  br i1 %.not.i24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.b, i64 noundef 1) #49
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.i:                                             ; preds = %bb.g
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.h, %bb.i
  %.0.i25 = phi ptr [ %i.ax, %bb.h ], [ %i.aq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %.0.i25, ptr noundef %2, i64 noundef %3) #49 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9325
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3603
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9346
  %.not.i27 = icmp eq i64 %i.bf, 0
  br i1 %.not.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull %i.a, i64 noundef 1) #49
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit29

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit29

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit29: ; preds = %bb.j, %bb.k
  %.0.i28 = phi ptr [ %i.bg, %bb.j ], [ %i.az, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23
  %.0.i28.sink = phi ptr [ %.0.i28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit29 ], [ %.0.i22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ]
  %i.bi = load ptr, ptr %4, align 8, !tbaa !9326
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !9324
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i28.sink, ptr noundef %i.bi, i64 noundef %i.bj) #49 ; 0 uses
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #28

declare void @_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #22

declare void @_ZNSt12domain_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #22

; Function Attrs: cold mustprogress noreturn nounwind uwtable
define dso_local void @_ZN5Catch19throw_runtime_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 {
bb.a:
  %1 = alloca %"class.std::runtime_error", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  call void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #49
  call void @_ZN5Catch15throw_exceptionERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %1) #61
  unreachable
}

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5Catch26IMutableEnumValuesRegistryD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN5Catch26IMutableEnumValuesRegistryD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #58
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch6Detail10parseEnumsENS_9StringRefE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.85") align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.std::vector.85", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @_ZN5Catch14splitStringRefENS_9StringRefEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.85") align 8 %3, ptr %1, i64 %2, i8 noundef signext 44)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16299 ; 4 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !16298  ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.499) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %0, align 8, !tbaa !16298
  store ptr %i.i, ptr %i.j, align 8, !tbaa !16299
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !tbaa !16300
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.promoted27 = phi ptr [ null, %bb.c ], [ %i.i, %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.k, %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.l = icmp eq ptr %i.c, %i.b
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE7reserveEm.exit
  %.lcssa28 = phi ptr [ %.promoted27, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE7reserveEm.exit ], [ %i.bh, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ]
  store ptr %.lcssa, ptr %i.h, align 8
  store ptr %.lcssa28, ptr %0, align 8
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16300
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.q) #60
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit: ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit
  %i.r = phi ptr [ %.promoted27, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %.sroa.019.030 = phi ptr [ %i.c, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.s = phi ptr [ %.promoted, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.t = phi ptr [ %.promoted27, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.019.030, align 8, !tbaa !9357 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.019.030, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9358 ; 5 uses
  %.not.i72 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i72, label %_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit, label %.lr.ph75

bb.f:                                             ; preds = %.lr.ph75
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit, label %.lr.ph75, !llvm.loop !70728

.lr.ph75:                                         ; preds = %bb.e, %bb.f
  %.0.i73 = phi i64 [ %i.u, %bb.f ], [ %.sroa.2.0.copyload, %bb.e ] ; 2 uses
  %i.u = add i64 %.0.i73, -1                      ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9325
  %.not5.i = icmp eq i8 %i.w, 58
  br i1 %.not5.i, label %._ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit_crit_edge76, label %bb.f, !llvm.loop !70728

._ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit_crit_edge76: ; preds = %.lr.ph75
  br label %_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit, !llvm.loop !70728

_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit: ; preds = %bb.f, %._ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit_crit_edge76, %bb.e
  %.0.i.lcssa = phi i64 [ %.sroa.2.0.copyload, %bb.e ], [ %.0.i73, %._ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit_crit_edge76 ], [ %i.u, %bb.f ] ; 3 uses
  %i.x = icmp ult i64 %.0.i.lcssa, %.sroa.2.0.copyload
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.0.i.lcssa ; 3 uses
  %spec.select9.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.2.0.copyload, i64 %.0.i.lcssa) ; 5 uses
  br i1 %i.x, label %.lr.ph.i, label %_ZN5Catch4trimENS_9StringRefE.exit

.lr.ph.i:                                         ; preds = %_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit, %bb.g
  %.01219.i = phi i64 [ %i.ab, %bb.g ], [ 0, %_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit ] ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.01219.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9325
  switch i8 %i.aa, label %.critedge.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ab = add nuw i64 %.01219.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %spec.select9.i
  br i1 %exitcond.not.i, label %_ZN5Catch4trimENS_9StringRefE.exit, label %.lr.ph.i, !llvm.loop !670

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %.01219.i ; 2 uses
  %i.ad = icmp ugt i64 %spec.select9.i, %.01219.i
  br i1 %i.ad, label %.lr.ph25.i, label %.critedge2.thread.i

.critedge2.thread.i:                              ; preds = %.critedge.i
  %i.ae = sub i64 %spec.select9.i, %.01219.i
  br label %_ZN5Catch4trimENS_9StringRefE.exit

.lr.ph25.i:                                       ; preds = %.critedge.i, %bb.h
  %.024.i = phi i64 [ %i.af, %bb.h ], [ %spec.select9.i, %.critedge.i ] ; 2 uses
  %i.af = add i64 %.024.i, -1                     ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9325
  switch i8 %i.ah, label %.critedge2.i [
    i8 32, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph25.i, %.lr.ph25.i, %.lr.ph25.i, %.lr.ph25.i
  %i.ai = icmp ugt i64 %i.af, %.01219.i
  br i1 %i.ai, label %.lr.ph25.i, label %.critedge2.i, !llvm.loop !671

.critedge2.i:                                     ; preds = %bb.h, %.lr.ph25.i
  %.0.lcssa.i = phi i64 [ %.024.i, %.lr.ph25.i ], [ %.01219.i, %bb.h ]
  %i.aj = sub i64 %.0.lcssa.i, %.01219.i
  %i.ak = sub nuw i64 %spec.select9.i, %.01219.i
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aj)
  br label %_ZN5Catch4trimENS_9StringRefE.exit

_ZN5Catch4trimENS_9StringRefE.exit:               ; preds = %bb.g, %_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit, %.critedge2.thread.i, %.critedge2.i
  %i.am = phi ptr [ %i.ac, %.critedge2.thread.i ], [ %i.ac, %.critedge2.i ], [ @.str.15, %_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit ], [ @.str.15, %bb.g ] ; 2 uses
  %i.an = phi i64 [ %i.ae, %.critedge2.thread.i ], [ %i.al, %.critedge2.i ], [ 0, %_ZN5Catch6Detail12_GLOBAL__N_119extractInstanceNameENS_9StringRefE.exit ], [ 0, %bb.g ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5Catch4trimENS_9StringRefE.exit
  store ptr %i.am, ptr %i.r, align 8, !tbaa !9357
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !9358
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.m, align 8, !tbaa !16299
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %_ZN5Catch4trimENS_9StringRefE.exit
  %i.ap = ptrtoint ptr %i.r to i64
  %i.aq = ptrtoint ptr %i.t to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %bb.k, label %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.s, ptr %i.h, align 8
  store ptr %i.t, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.at = ashr exact i64 %i.ar, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 576460752303423487)
  %i.ax = select i1 %i.av, i64 576460752303423487, i64 %i.aw ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #59 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar ; 2 uses
  store ptr %i.am, ptr %i.ba, align 8, !tbaa !9357
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx16, align 8, !tbaa !9358
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16152, !alias.scope !70732
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !672

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ar) #60
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !16299
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ax
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.i, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bf = phi ptr [ %i.ao, %bb.i ], [ %i.bd, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bg = phi ptr [ %i.t, %bb.i ], [ %i.az, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bh = phi ptr [ %i.s, %bb.i ], [ %i.be, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.019.030, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.b
  br i1 %i.bj, label %._crit_edge, label %bb.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch14splitStringRefENS_9StringRefEc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.85") align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2, i8 noundef signext %3) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit33, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h
  store ptr %i.am, ptr %0, align 8
  %i.c = icmp ult i64 %.1, %2
  br i1 %i.c, label %_ZNK5Catch9StringRef6substrEmm.exit19, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit33

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.d = phi ptr [ null, %.lr.ph ], [ %i.ak, %bb.h ] ; 7 uses
  %i.e = phi ptr [ null, %.lr.ph ], [ %i.al, %bb.h ] ; 6 uses
  %.054 = phi i64 [ 0, %.lr.ph ], [ %.pre-phi, %bb.h ] ; 4 uses
  %.01353 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.h ] ; 5 uses
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.am, %bb.h ] ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.054
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9325
  %i.i = icmp eq i8 %i.h, %3
  br i1 %i.i, label %bb.c, label %._crit_edge60

._crit_edge60:                                    ; preds = %bb.b
  %.pre = add nuw i64 %.054, 1
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = sub i64 %.054, %.01353                   ; 2 uses
  %i.k = icmp ugt i64 %i.j, 1
  br i1 %i.k, label %_ZNK5Catch9StringRef6substrEmm.exit, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit

_ZNK5Catch9StringRef6substrEmm.exit:              ; preds = %bb.c
  %i.l = icmp ult i64 %.01353, %2                 ; 2 uses
  %i.m = sub nuw i64 %2, %.01353
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.01353
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.j)
  %.sroa.0.0.i = select i1 %i.l, ptr %i.n, ptr @.str.15 ; 2 uses
  %.sroa.4.0.i = select i1 %i.l, i64 %i.o, i64 0  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5Catch9StringRef6substrEmm.exit
  store ptr %.sroa.0.0.i, ptr %i.e, align 8, !tbaa !9357
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !9358
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !16299
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNK5Catch9StringRef6substrEmm.exit
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775792
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.f, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 576460752303423487)
  %i.y = select i1 %i.w, i64 576460752303423487, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #59 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.ab, align 8, !tbaa !9357
  %.sroa.539.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.539.0..sroa_idx40, align 8, !tbaa !9358
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16152, !alias.scope !70740
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !672

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.s) #60
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
end_hunk_0
