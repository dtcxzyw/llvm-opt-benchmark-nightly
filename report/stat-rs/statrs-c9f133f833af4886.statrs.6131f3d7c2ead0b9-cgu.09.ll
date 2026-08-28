Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.09?download=true
inline.NumInlined: 196
inline.NumDeleted: 105
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0INtNtB18_3vec3VecdEEB1Q_:bb.a
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE19as_uninit_slice_mutCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #20
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0INtNtB18_3vec3VecdEEB1Q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 512         ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE13with_capacityCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE19as_uninit_slice_mutCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #20
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8lmMd0ZksV9_6statrs(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !9, !noalias !12
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !9, !noalias !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !12, !noalias !4
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !12, !noalias !4
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !9, !noalias !12
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !9, !noalias !12
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !12, !noalias !4
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !12, !noalias !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !4, !noalias !7
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !7, !noalias !4
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !4, !noalias !7
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !7, !noalias !4
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !4, !noalias !7
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !7, !noalias !4
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !4, !noalias !7
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !7, !noalias !4
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !17, !noalias !19
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !19, !noalias !17
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !17, !noalias !19
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !19, !noalias !17
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !21
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3q_3VecdE14extend_trustedBN_E0E0EB1v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !22 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !22 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !22, !align !23, !noundef !22 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !22, !align !23, !noundef !22 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3
  %scevgep = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j ; 2 uses
  %i.k = add i64 %.sroa.4.0.copyload, %i.d
  %i.l = sub i64 %i.k, %i.b
  %i.m = shl i64 %i.l, 3
  %scevgep2 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.m ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.e, i64 8
  %scevgep4 = getelementptr i8, ptr %i.g, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %i.e, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  %bound05 = icmp ult ptr %scevgep, %scevgep4
  %bound16 = icmp ult ptr %i.g, %scevgep2
  %found.conflict7 = and i1 %bound05, %bound16
  %conflict.rdx = or i1 %found.conflict, %found.conflict7
  br i1 %conflict.rdx, label %.lr.ph.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -2                       ; 4 uses
  %i.n = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.o = add i64 %i.b, %n.vec
  %i.p = load double, ptr %i.e, align 8, !alias.scope !24, !noalias !27, !noundef !22
  %broadcast.splatinsert10 = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat11 = shufflevector <2 x double> %broadcast.splatinsert10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = load double, ptr %i.g, align 8, !alias.scope !32, !noalias !27, !noundef !22
  %broadcast.splatinsert8 = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat9 = shufflevector <2 x double> %broadcast.splatinsert8, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.r = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.s = uitofp <2 x i64> %vec.ind to <2 x double>
  %i.t = fmul <2 x double> %broadcast.splat9, %i.s
  %i.u = fadd <2 x double> %broadcast.splat11, %i.t
  %i.v = tail call <2 x double> @llvm.pow.v2f64(<2 x double> splat (double 1.000000e+01), <2 x double> %i.u)
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %index
  store <2 x double> %i.v, ptr %i.w, align 8, !alias.scope !34, !noalias !36
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit, label %.lr.ph.i.preheader13

.lr.ph.i.preheader13:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.0.010.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.010.i.ph
  %.neg = add i64 %.sroa.0.010.i.ph, 1
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader13
  %i.z = add nuw i64 %.sroa.0.010.i.ph, 1
  %i.aa = load double, ptr %i.e, align 8, !noalias !27, !noundef !22
  %i.ab = uitofp i64 %.sroa.0.010.i.ph to double
  %i.ac = load double, ptr %i.g, align 8, !noalias !27, !noundef !22
  %i.ad = fmul double %i.ac, %i.ab
  %i.ae = fadd double %i.aa, %i.ad
  %i.af = tail call noundef double @llvm.pow.f64(double 1.000000e+01, double %i.ae)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph
  store double %i.af, ptr %i.ag, align 8, !noalias !42
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader13
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader13 ], [ %i.ah, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader13 ], [ %i.ah, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %.lr.ph.i.preheader13 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ai = icmp eq i64 %i.d, %.neg
  br i1 %i.ai, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.aj = phi i64 [ %i.bb, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.as, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ak = add nuw i64 %.sroa.0.010.i, 1
  %i.al = load double, ptr %i.e, align 8, !noalias !27, !noundef !22
  %i.am = uitofp i64 %.sroa.0.010.i to double
  %i.an = load double, ptr %i.g, align 8, !noalias !27, !noundef !22
  %i.ao = fmul double %i.an, %i.am
  %i.ap = fadd double %i.al, %i.ao
  %i.aq = tail call noundef double @llvm.pow.f64(double 1.000000e+01, double %i.ap)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.aj
  store double %i.aq, ptr %i.ar, align 8, !noalias !42
  %i.as = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %i.at = load double, ptr %i.e, align 8, !noalias !27, !noundef !22
  %i.au = uitofp i64 %i.ak to double
  %i.av = load double, ptr %i.g, align 8, !noalias !27, !noundef !22
  %i.aw = fmul double %i.av, %i.au
  %i.ax = fadd double %i.at, %i.aw
  %i.ay = tail call noundef double @llvm.pow.f64(double 1.000000e+01, double %i.ax)
  %i.az = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store double %i.ay, ptr %i.ba, align 8, !noalias !42
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.as, %i.d
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit, label %.lr.ph.i, !llvm.loop !43

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bb, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !44
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4calljNCINvMsk_B1q_IB1o_jE14extend_trustedBN_E0E0EB25_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 96
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.c ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val15.i = load i64, ptr %i.i, align 8, !noalias !45, !noundef !22 ; 2 uses
  %i.j = icmp ult i64 %.val15.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  store i64 %.val15.i, ptr %i.k, align 8, !noalias !48
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %.val15.i.1 = load i64, ptr %i.m, align 8, !noalias !45, !noundef !22 ; 2 uses
  %i.n = icmp ult i64 %.val15.i.1, 1152921504606846976
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store i64 %.val15.i.1, ptr %i.p, align 8, !noalias !48
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.r = getelementptr i8, ptr %i.q, i64 64
  %.val15.i.2 = load i64, ptr %i.r, align 8, !noalias !45, !noundef !22 ; 2 uses
  %i.s = icmp ult i64 %.val15.i.2, 1152921504606846976
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i64 %.val15.i.2, ptr %i.u, align 8, !noalias !48
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.w = getelementptr i8, ptr %i.v, i64 88
  %.val15.i.3 = load i64, ptr %i.w, align 8, !noalias !45, !noundef !22 ; 2 uses
  %i.x = icmp ult i64 %.val15.i.3, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.z = getelementptr i8, ptr %i.y, i64 24
  store i64 %.val15.i.3, ptr %i.z, align 8, !noalias !48
  %i.aa = add i64 %i.g, 4                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ac = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ah, %bb.d ] ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val15.i.epil = load i64, ptr %i.ae, align 8, !noalias !45, !noundef !22 ; 2 uses
  %i.af = icmp ult i64 %.val15.i.epil, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i64 %.val15.i.epil, ptr %i.ag, align 8, !noalias !48
  %i.ah = add i64 %i.ac, 1                        ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit, label %bb.d, !llvm.loop !55

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.ah, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef double @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0ENtNtNtBa_6traits8iterator8Iterator4folddNCINvB6_8map_folddddNCB1r_s_0NCINvXs26_NtB2v_5accumdNtB3I_3Sum3sumIBO_BN_B3p_EE0E0EB1x_(ptr noundef nonnull %0, ptr noundef %1, double noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = load double, ptr %3, align 8, !alias.scope !57, !noundef !22 ; 6 uses
  %i.g = icmp eq i64 %i.d, 8
  br i1 %i.g, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ] ; 3 uses
  %.sroa.02.0.i = phi double [ %2, %.new ], [ %i.t, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.h, align 8, !noalias !57, !noundef !22
  %i.i = uitofp i64 %.val11.i to double
  %i.j = fsub double %i.i, %i.f                   ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = fdiv double %i.k, %i.f
  %i.m = fadd double %.sroa.02.0.i, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val11.i.1 = load i64, ptr %i.o, align 8, !noalias !57, !noundef !22
  %i.p = uitofp i64 %.val11.i.1 to double
  %i.q = fsub double %i.p, %i.f                   ; 2 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = fdiv double %i.r, %i.f
  %i.t = fadd double %i.m, %i.s                   ; 3 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %4 = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ %2, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init
  %.val11.i.epil = load i64, ptr %i.v, align 8, !noalias !57, !noundef !22
  %i.w = uitofp i64 %.val11.i.epil to double
  %i.x = fsub double %i.w, %i.f                   ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fdiv double %i.y, %i.f
  %i.aa = fadd double %.sroa.02.0.i.epil.init, %i.z
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB12_3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB3I_zEEB27_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecdEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1g_8adapters3map12map_try_foldBX_BX_B2e_INtNtB1i_6result6ResultB2e_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B3G_EB4h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB5_8CholeskydNtNtNtB9_4base9dimension3DynE12new_internalCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, i64 noundef range(i64 0, 2) %2, double %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val17 = load i64, ptr %i.f, align 8, !noundef !22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val18 = load i64, ptr %i.g, align 8, !noundef !22
  %i.h = icmp eq i64 %.val17, %.val18
  br i1 %i.h, label %.preheader, label %bb.c, !prof !60

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %.val17, 0
  br i1 %.not, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = trunc nuw i64 %2 to i1                   ; 2 uses
  %i.l = tail call double @llvm.sqrt.f64(double %3)
  %narrow.i.i.i.i = fcmp ogt double %3, 0.000000e+00
  %.sroa.3.0.i.i = select i1 %i.k, double %i.l, double undef
  %narrow.i.i = select i1 %i.k, i1 %narrow.i.i.i.i, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.e

bb.b:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

._crit_edge53:                                    ; preds = %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph52, %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit
  %.sroa.010.051 = phi i64 [ 0, %.lr.ph52 ], [ %i.o, %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit ] ; 10 uses
  %i.o = add nuw i64 %.sroa.010.051, 1            ; 3 uses
  %.not54 = icmp eq i64 %.sroa.010.051, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit, %._crit_edge53
  ret void

._crit_edge:                                      ; preds = %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit, %bb.e
  %.val21 = load ptr, ptr %i.i, align 8, !nonnull !22, !noundef !22
  %.val22 = load i64, ptr %i.f, align 8, !noundef !22
  %i.p = mul i64 %.val22, %.sroa.010.051
  %i.q = getelementptr [8 x i8], ptr %.val21, i64 %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.010.051 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !alias.scope !61, !noundef !22 ; 2 uses
  %i.t = call double @llvm.sqrt.f64(double %i.s)
  %narrow.i = fcmp ogt double %i.s, 0.000000e+00  ; 2 uses
  %brmerge = select i1 %narrow.i, i1 true, i1 %narrow.i.i
  %.mux = select i1 %narrow.i, double %i.t, double %.sroa.3.0.i.i ; 3 uses
  br i1 %brmerge, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.f

bb.j:                                             ; preds = %.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.thread:                                          ; preds = %._crit_edge
  store double %.mux, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEjECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.o, i64 noundef %.sroa.010.051)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %.val7.i = load i64, ptr %i.m, align 8, !alias.scope !64, !noundef !22 ; 4 uses
  %.val8.i = load ptr, ptr %i.c, align 8, !alias.scope !64 ; 2 uses
  switch i64 %.val7.i, label %vector.ph [
    i64 0, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit
    i64 1, label %.preheader.i.preheader
  ]

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %.val7.i, -2                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.mux, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %.val8.i, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.x, align 8, !alias.scope !67, !noalias !64
  %i.y = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.y, ptr %i.x, align 8, !alias.scope !67, !noalias !64
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i, %n.vec
  br i1 %cmp.n, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.k, %middle.block
  %.sroa.05.010.i.ph = phi i64 [ 0, %bb.k ], [ %n.vec, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.05.010.i = phi i64 [ %i.aa, %.preheader.i ], [ %.sroa.05.010.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.aa = add nuw i64 %.sroa.05.010.i, 1          ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %.val8.i, i64 %.sroa.05.010.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !alias.scope !67, !noalias !64, !noundef !22
  %i.ad = fdiv double %i.ac, %.mux
  store double %i.ad, ptr %i.ab, align 8, !alias.scope !67, !noalias !64
  %exitcond.not.i = icmp eq i64 %i.aa, %.val7.i
  br i1 %exitcond.not.i, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, label %.preheader.i, !llvm.loop !71

_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit: ; preds = %.preheader.i, %middle.block, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond55.not = icmp eq i64 %i.o, %.val17
  br i1 %exitcond55.not, label %._crit_edge53, label %bb.e

.lr.ph:                                           ; preds = %bb.e, %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit
  %.sroa.012.050 = phi i64 [ %i.ae, %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit ], [ 0, %bb.e ] ; 3 uses
  %i.ae = add nuw i64 %.sroa.012.050, 1           ; 2 uses
  %.val19 = load ptr, ptr %i.i, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %.val20 = load i64, ptr %i.f, align 8, !noundef !22 ; 5 uses
  %i.af = mul i64 %.val20, %.sroa.012.050
  %i.ag = getelementptr [8 x i8], ptr %.val19, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.sroa.010.051 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !alias.scope !72, !noundef !22
  %i.aj = fneg double %i.ai
  %.val10.i = load i64, ptr %i.g, align 8, !alias.scope !75, !noalias !78, !noundef !22
  %.not.i27.not = icmp ult i64 %.sroa.012.050, %.val10.i
  br i1 %.not.i27.not, label %bb.m, label %bb.l, !prof !60

bb.l:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %.noexc28 unwind label %.loopexit.split-lp

end_hunk_0
