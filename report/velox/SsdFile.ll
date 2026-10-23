Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SsdFile?download=true
inline.NumInlined: 4657
inline.NumDeleted: 2099
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox5cache7SsdFile5clearEv:bb.a
.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = ptrtoaddr ptr %i.f to i64
  %i.k = add i64 %i.i, -4
  %i.l = sub i64 %i.k, %i.j
  %i.m = and i64 %i.l, -4
  %i.n = add i64 %i.m, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %i.n, i1 false), !tbaa !40
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !173  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !173  ; 2 uses
  %.not5.i.i.i.i9 = icmp eq ptr %i.p, %i.r
  br i1 %.not5.i.i.i.i9, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit13, label %.lr.ph.i.i.i.i10.preheader

.lr.ph.i.i.i.i10.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = ptrtoaddr ptr %i.p to i64
  %i.u = add i64 %i.s, -4
  %i.v = sub i64 %i.u, %i.t
  %i.w = and i64 %i.v, -4
  %i.x = add i64 %i.w, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.x, i1 false), !tbaa !40
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit13

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit13: ; preds = %.lr.ph.i.i.i.i10.preheader, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !170
  %i.ab = sext i32 %i.aa to i64                   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !172 ; 4 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !43  ; 5 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %i.ab
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit13
  %i.ak = sub nuw nsw i64 %i.ab, %i.ai
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.ak)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !173
  %.pre16 = load ptr, ptr %i.ac, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit13
  %i.al = icmp ugt i64 %i.ai, %i.ab
  br i1 %i.al, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.am
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.e, %bb.d
  %i.an = phi ptr [ %.pre16, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.am, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ad, %bb.e ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ao = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.ae, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ] ; 7 uses
  %i.ap = icmp eq ptr %i.ao, %i.an
  br i1 %i.ap, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.an to i64
  %i.as = add i64 %i.ar, -4
  %i.at = sub i64 %i.as, %i.aq                    ; 3 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %i.at, 124
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.av, 24
  %n.vec = and i64 %i.av, 9223372036854775776     ; 5 uses
  %i.ax = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ay = shl i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.ao, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw nsw <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add nuw nsw <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add nuw nsw <8 x i32> %vec.ind, splat (i32 24)
  %i.ba = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ba ; 4 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 32
  %i.bc = getelementptr i8, ptr %next.gep, i64 64
  %i.bd = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !40
  store <8 x i32> %step.add, ptr %i.bb, align 4, !tbaa !40
  store <8 x i32> %step.add.2, ptr %i.bc, align 4, !tbaa !40
  store <8 x i32> %step.add.3, ptr %i.bd, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i32> %vec.ind, splat (i32 32)
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !603

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.ax, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.av, 9223372036854775800   ; 4 uses
  %i.bf = trunc i64 %n.vec29 to i32
  %i.bg = shl i64 %n.vec29, 2
  %i.bh = getelementptr i8, ptr %i.ao, i64 %i.bg
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind31 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next34, %vec.epilog.vector.body ] ; 2 uses
  %i.bi = shl i64 %index30, 2
  %next.gep32 = getelementptr i8, ptr %i.ao, i64 %i.bi
  store <8 x i32> %vec.ind31, ptr %next.gep32, align 4, !tbaa !40
  %index.next33 = add nuw i64 %index30, 8         ; 2 uses
  %vec.ind.next34 = add nuw nsw <8 x i32> %vec.ind31, splat (i32 8)
  %i.bj = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !604

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %i.av, %n.vec29
  br i1 %cmp.n35, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.ph = phi i32 [ 0, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ao, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 %.06.i, ptr %.sroa.02.05.i, align 4, !tbaa !40
  %i.bk = add nuw nsw i32 %.06.i, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 4 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.an
  br i1 %i.bm, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !605

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !606 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !606 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not5.i.i.i.i.i, label %_ZN8facebook5velox5cache14SsdFileTracker5clearEv.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.br = ptrtoaddr ptr %i.bq to i64
  %i.bs = ptrtoaddr ptr %i.bo to i64
  %reass.sub = sub i64 %i.br, %i.bs
  %i.bt = and i64 %reass.sub, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.bt, i1 false), !tbaa !179
  br label %_ZN8facebook5velox5cache14SsdFileTracker5clearEv.exit

_ZN8facebook5velox5cache14SsdFileTracker5clearEv.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.bu = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #33 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #33 ; 0 uses
  resume { ptr, i32 } %i.bv
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox5cache7SsdFile17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.501", align 8    ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.464", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.464", align 16 ; 5 uses
  %6 = alloca %"struct.std::pair.501", align 8    ; 3 uses
  %7 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %9 = alloca %"class.folly::F14FastSet", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str.3, i32 noundef 589)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.43, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !107
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.44, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 50)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.45, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138: ; preds = %bb.d
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.bu

bb.e:                                             ; preds = %bb.d, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.bv

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.r = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #33
  %i.s = icmp eq i32 %i.r, 35
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #34
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !115
  %i.w = lshr i64 %i.v, 8                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %.032381 = phi i64 [ 0, %.lr.ph ], [ %.234, %bb.q ] ; 7 uses
  %.sroa.0242.0379 = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.0242.1, %bb.q ] ; 10 uses
  %.sroa.15.0377 = phi ptr [ %i.x, %.lr.ph ], [ %.sroa.15.1, %bb.q ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0242.0379, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0242.0379, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !196 ; 8 uses
  %.not353.a = icmp eq i64 %i.ag, -1
  br i1 %.not353.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp eq ptr %.sroa.0242.0379, %.sroa.15.0377
  %i.ai = getelementptr inbounds i8, ptr %.sroa.0242.0379, i64 -40
  br i1 %i.ah, label %._crit_edge, label %bb.q, !prof !44, !llvm.loop !607

bb.k:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.ak = lshr i64 %i.aj, 8
  switch i64 %i.ak, label %.noexc102 [
    i64 0, label %.thread298
    i64 1, label %.noexc86
  ]

.noexc86:                                         ; preds = %bb.k
  %i.al = load i64, ptr %i.aa, align 8, !tbaa !276
  %i.am = and i64 %i.al, -8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ap = icmp eq i64 %i.ag, %i.ao
  br i1 %i.ap, label %.thread303, label %.thread298

.noexc102:                                        ; preds = %bb.k
  %i.aq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ag) ; 2 uses
  %i.ar = lshr i64 %i.aq, 24
  %i.as = or i64 %i.ar, 128                       ; 2 uses
  %i.at = add i64 %i.aq, %i.ag
  %i.au = shl nuw nsw i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = trunc nuw i64 %i.as to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.az = and i64 %i.aj, 255                      ; 2 uses
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = load ptr, ptr %1, align 8, !tbaa !280
  br label %.noexc104

.noexc104:                                        ; preds = %.noexc102, %.noexc107
  %.023.i372 = phi i64 [ %i.ba, %.noexc102 ], [ %i.bv, %.noexc107 ]
  %.025.i371 = phi i64 [ %i.at, %.noexc102 ], [ %i.bw, %.noexc107 ] ; 2 uses
  %i.bc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i371, i64 range(i64 0, 256) %i.az)
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %i.bc ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.bf, i32 0, i32 3, i32 1)
  %i.bg = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bh = icmp eq <16 x i8> %i.bg, %i.ay
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383
  %i.bk = zext nneg i16 %i.bj to i32
  %i.bl = icmp ne ptr %i.bd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bm = extractelement <16 x i8> %i.bg, i64 15
  br label %.critedge.i91

.critedge.i91:                                    ; preds = %.noexc106, %.noexc104
  %.sroa.0275.0 = phi i32 [ %i.bk, %.noexc104 ], [ %i.bp, %.noexc106 ] ; 4 uses
  %.not354 = icmp eq i32 %.sroa.0275.0, 0
  br i1 %.not354, label %bb.l, label %.noexc106

.noexc106:                                        ; preds = %.critedge.i91
  %i.bn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0275.0, i1 true)
  %i.bo = add nuw nsw i32 %.sroa.0275.0, 16383
  %i.bp = and i32 %i.bo, %.sroa.0275.0
  %i.bq = zext nneg i32 %i.bn to i64
  call void @llvm.assume(i1 %i.bl)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39
  %i.bt = icmp eq i64 %i.ag, %i.bs
  br i1 %i.bt, label %.thread303, label %.critedge.i91, !prof !200, !llvm.loop !14

bb.l:                                             ; preds = %.critedge.i91
  %i.bu = icmp eq i8 %i.bm, 0
  br i1 %i.bu, label %.thread298, label %.noexc107, !prof !200

.noexc107:                                        ; preds = %bb.l
  %i.bv = add i64 %.023.i372, -1                  ; 2 uses
  %i.bw = add i64 %i.av, %.025.i371
  %.not.i90 = icmp eq i64 %i.bv, 0
  br i1 %.not.i90, label %.thread298, label %.noexc104, !llvm.loop !15

.thread298:                                       ; preds = %.noexc107, %bb.l, %.noexc86, %bb.k
  %i.bx = icmp eq ptr %.sroa.0242.0379, %.sroa.15.0377
  %i.by = getelementptr inbounds i8, ptr %.sroa.0242.0379, i64 -40
  br i1 %i.bx, label %._crit_edge, label %bb.q, !prof !44, !llvm.loop !607

.thread303:                                       ; preds = %.noexc106, %.noexc86
  %i.bz = load i64, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ca = lshr i64 %i.bz, 49                      ; 2 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %.noexc54

bb.m:                                             ; preds = %.thread303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !626
  %i.cf = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ag) ; 2 uses
  %i.cg = lshr i64 %i.cf, 24
  %i.ch = or i64 %i.cg, 128
  %i.ci = add i64 %i.cf, %i.ag
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE19tryEmplaceValueImplImJmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkImEEEEbES7_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.501") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.ci, i64 %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cj = icmp eq ptr %.sroa.0242.0379, %.sroa.15.0377
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0242.0379, i64 -40
  br i1 %i.cj, label %._crit_edge, label %bb.q, !prof !44, !llvm.loop !607

bb.o:                                             ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.bt

.noexc54:                                         ; preds = %.thread303
  %i.cm = trunc i64 %i.bz to i32
  %i.cn = and i32 %i.cm, 8388607
  %i.co = add nuw nsw i32 %i.cn, 1
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !185
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ca ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !40
  %i.cs = add i32 %i.co, %i.cr
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !40
  %i.ct = ptrtoint ptr %.sroa.0242.0379 to i64
  %i.cu = ptrtoint ptr %.sroa.15.0377 to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = sdiv exact i64 %i.cv, 40                ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 4294967296
  call void @llvm.assume(i1 %i.cx)
  %i.cy = trunc nuw i64 %i.cw to i32
  %i.cz = load i64, ptr %i.u, align 8, !tbaa !115 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 256
  br i1 %i.da, label %.noexc55, label %.noexc59

.noexc59:                                         ; preds = %.noexc54
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !199
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cv ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !196 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !198
  %i.dh = xor i64 %i.dg, %i.de
  %i.di = mul i64 %i.dh, -7070675565921424023     ; 2 uses
  %i.dj = lshr i64 %i.di, 47
  %i.dk = xor i64 %i.de, %i.dj
  %i.dl = xor i64 %i.dk, %i.di
  %i.dm = mul i64 %i.dl, -7070675565921424023     ; 2 uses
  %i.dn = lshr i64 %i.dm, 47
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = mul i64 %i.do, -7070675565921424023     ; 2 uses
  %i.dq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.dp) ; 2 uses
  %i.dr = lshr i64 %i.dq, 24
  %i.ds = or i64 %i.dr, 128                       ; 2 uses
  %i.dt = add i64 %i.dp, %i.dq
  %i.du = shl nuw nsw i64 %i.ds, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = trunc nuw i64 %i.ds to i8
  %i.dx = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.dy = shufflevector <16 x i8> %i.dx, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dz = and i64 %i.cz, 255                      ; 2 uses
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = load ptr, ptr %i.ad, align 8, !tbaa !114
  br label %.noexc67

.noexc67:                                         ; preds = %.noexc59, %.noexc69
  %.022.i376 = phi i64 [ %i.ea, %.noexc59 ], [ %i.eu, %.noexc69 ]
  %.024.i375 = phi i64 [ %i.dt, %.noexc59 ], [ %i.ev, %.noexc69 ] ; 2 uses
  %i.ec = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i375, i64 range(i64 0, 256) %i.dz)
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %i.eb, i64 %i.ec ; 3 uses
  %i.ee = load <16 x i8>, ptr %i.ed, align 16     ; 2 uses
  %i.ef = icmp eq <16 x i8> %i.ee, %i.dy
  %i.eg = bitcast <16 x i1> %i.ef to i16
  %i.eh = and i16 %i.eg, 4095
  %i.ei = zext nneg i16 %i.eh to i32
  %i.ej = icmp ne ptr %i.ed, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.el = extractelement <16 x i8> %i.ee, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc68, %.noexc67
  %.sroa.0260.0 = phi i32 [ %i.ei, %.noexc67 ], [ %i.eo, %.noexc68 ] ; 4 uses
  %.not355 = icmp eq i32 %.sroa.0260.0, 0
  br i1 %.not355, label %bb.p, label %.noexc68

.noexc68:                                         ; preds = %.critedge.i
  %i.em = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0260.0, i1 true)
  %i.en = add nuw nsw i32 %.sroa.0260.0, 4095
  %i.eo = and i32 %i.en, %.sroa.0260.0
  %i.ep = zext nneg i32 %i.em to i64              ; 3 uses
  call void @llvm.assume(i1 %i.ej)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !40
  %i.es = icmp eq i32 %i.er, %i.cy
  br i1 %i.es, label %.noexc55.loopexit, label %.critedge.i, !prof !200, !llvm.loop !7

bb.p:                                             ; preds = %.critedge.i
  %i.et = icmp eq i8 %i.el, 0
  br i1 %i.et, label %.noexc55, label %.noexc69, !prof !200

.noexc69:                                         ; preds = %bb.p
  %i.eu = add i64 %.022.i376, -1                  ; 2 uses
  %i.ev = add i64 %i.dv, %.024.i375
  %.not.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i, label %.noexc55, label %.noexc67, !llvm.loop !8

.noexc55.loopexit:                                ; preds = %.noexc68
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ep
  br label %.noexc55

.noexc55:                                         ; preds = %.noexc69, %bb.p, %.noexc55.loopexit, %.noexc54
  %.sroa.0258.0 = phi ptr [ null, %.noexc54 ], [ %i.ew, %.noexc55.loopexit ], [ null, %bb.p ], [ null, %.noexc69 ]
  %.sroa.5259.0 = phi i64 [ 0, %.noexc54 ], [ %i.ep, %.noexc55.loopexit ], [ 0, %bb.p ], [ 0, %.noexc69 ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %.sroa.0258.0, i64 %.sroa.5259.0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %.noexc56 unwind label %bb.r

.noexc56:                                         ; preds = %.noexc55
  %i.ex = icmp eq ptr %.sroa.0242.0379, %.sroa.15.0377
  br i1 %i.ex, label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit, label %.noexc58

.noexc58:                                         ; preds = %.noexc56
  %i.ey = add nuw nsw i64 %i.cw, 4294967295
  %i.ez = load ptr, ptr %i.t, align 8, !tbaa !199 ; 2 uses
  %i.fa = and i64 %i.ey, 4294967295
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %i.fa
  %.fca.0.insert.i148 = insertvalue { ptr, ptr } poison, ptr %i.fb, 0
  %.fca.1.insert.i149 = insertvalue { ptr, ptr } %.fca.0.insert.i148, ptr %i.ez, 1
  br label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit

_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit: ; preds = %.noexc58, %.noexc56
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i149, %.noexc58 ], [ zeroinitializer, %.noexc56 ] ; 2 uses
  %i.fc = add nsw i64 %.032381, 1
  %i.fd = extractvalue { ptr, ptr } %.pn.i, 0
  %i.fe = extractvalue { ptr, ptr } %.pn.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.n, %.thread298, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit
  %.sroa.15.1 = phi ptr [ %.sroa.15.0377, %.thread298 ], [ %.sroa.15.0377, %bb.n ], [ %i.fe, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ], [ %.sroa.15.0377, %bb.j ]
  %.sroa.0242.1 = phi ptr [ %i.by, %.thread298 ], [ %i.ck, %bb.n ], [ %i.fd, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ], [ %i.ai, %bb.j ] ; 2 uses
  %.234 = phi i64 [ %.032381, %.thread298 ], [ %.032381, %bb.n ], [ %i.fc, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ], [ %.032381, %bb.j ] ; 2 uses
  %.not351 = icmp eq ptr %.sroa.0242.1, null
  br i1 %.not351, label %._crit_edge, label %bb.i

bb.r:                                             ; preds = %.noexc55
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

._crit_edge:                                      ; preds = %bb.j, %bb.n, %.thread298, %bb.q, %bb.h
  %.032.lcssa = phi i64 [ 0, %bb.h ], [ %.032381, %bb.j ], [ %.032381, %bb.n ], [ %.032381, %.thread298 ], [ %.234, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !170 ; 3 uses
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = icmp slt i32 %i.fh, 0
  br i1 %i.fj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #34
          to label %.noexc150 unwind label %14

.noexc150:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.not462 = icmp eq i32 %i.fh, 0
  br i1 %.not462, label %._crit_edge392.thread, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.t
  %i.fl = shl nuw nsw i64 %i.fi, 2
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #37
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %14 ; 6 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.fm, ptr %8, align 8, !tbaa !43
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !172
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fi ; 3 uses
  store ptr %i.fo, ptr %i.fk, align 8, !tbaa !186
  %.pre = load i32, ptr %i.fg, align 8, !tbaa !170
  %i.fp = icmp sgt i32 %.pre, 0
  br i1 %i.fp, label %.lr.ph391, label %._crit_edge392.thread

.lr.ph391:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.u

._crit_edge392.thread:                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %bb.t
  %.ph472 = phi ptr [ %i.fo, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ null, %bb.t ]
  %.lcssa371.ph = phi ptr [ %i.fm, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ null, %bb.t ] ; 2 uses
  %i.fu = ptrtoint ptr %.lcssa371.ph to i64
  br label %bb.bj

._crit_edge392:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.fv = ptrtoint ptr %i.hh to i64
  %i.fw = ptrtoint ptr %i.hi to i64               ; 3 uses
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 2                 ; 2 uses
  %.not = icmp eq ptr %i.hh, %i.hi
  br i1 %.not, label %bb.bj, label %bb.ac

bb.u:                                             ; preds = %.lr.ph391, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %13 = phi ptr [ %i.fm, %.lr.ph391 ], [ %i.hi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 9 uses
  %i.fz = phi ptr [ %i.fm, %.lr.ph391 ], [ %i.hh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %i.ga = phi ptr [ %i.fo, %.lr.ph391 ], [ %i.hg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.gb = load ptr, ptr %i.fq, align 8, !tbaa !43
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !40
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.v, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.u
  %i.gf = load ptr, ptr %i.fr, align 8, !tbaa !185
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !40
  %i.gi = load ptr, ptr %i.fs, align 8, !tbaa !185
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !40
  %i.gl = mul i32 %i.gk, 50
  %i.gm = udiv i32 %i.gl, 100
  %i.gn = icmp ugt i32 %i.gh, %i.gm
  br i1 %i.gn, label %bb.w, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.w:                                             ; preds = %bb.v
  %.not.i152 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i152, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.go = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.go, ptr %i.fz, align 4, !tbaa !40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  store ptr %i.gp, ptr %i.ft, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %bb.w
  %i.gq = ptrtoint ptr %i.fz to i64
  %i.gr = ptrtoint ptr %13 to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 6 uses
  %i.gt = icmp eq i64 %i.gs, 9223372036854775804
  br i1 %i.gt, label %bb.z, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #34
          to label %.noexc153 unwind label %.loopexit.split-lp360

.noexc153:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.gu = ashr exact i64 %i.gs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gu, i64 1)
  %i.gv = add nsw i64 %.sroa.speculated.i.i.i, %i.gu ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gu
  %i.gx = call i64 @llvm.umin.i64(i64 %i.gv, i64 2305843009213693951)
  %i.gy = select i1 %i.gw, i64 2305843009213693951, i64 %i.gx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gz = shl nuw nsw i64 %i.gy, 2
  %i.ha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #37
          to label %.noexc154 unwind label %.loopexit359 ; 5 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 %i.gs ; 2 uses
  %i.hc = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !40
  %i.hd = icmp sgt i64 %i.gs, 0
  br i1 %i.hd, label %bb.aa, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %.noexc154
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ha, ptr align 4 %13, i64 %i.gs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %.noexc154
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %13, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %i.gs) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ha, ptr %8, align 8, !tbaa !43
  store ptr %i.he, ptr %i.ft, align 8, !tbaa !172
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.gy ; 2 uses
  store ptr %i.hf, ptr %i.fk, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.x, %bb.u, %bb.v
  %i.hg = phi ptr [ %i.ga, %bb.v ], [ %i.ga, %bb.u ], [ %i.ga, %bb.x ], [ %i.hf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 9 uses
  %i.hh = phi ptr [ %i.fz, %bb.v ], [ %i.fz, %bb.u ], [ %i.gp, %bb.x ], [ %i.he, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 4 uses
  %i.hi = phi ptr [ %13, %bb.v ], [ %13, %bb.u ], [ %13, %bb.x ], [ %i.ha, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 12 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hj = load i32, ptr %i.fg, align 8, !tbaa !170
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next, %i.hk
  br i1 %i.hl, label %bb.u, label %._crit_edge392, !llvm.loop !612

bb.ac:                                            ; preds = %._crit_edge392
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.hn = load i8, ptr %i.hm, align 4, !tbaa !102, !range !103, !noundef !104
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.ad, label %bb.af, !prof !44

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_E18veloxCheckFailArgs) #34
          to label %bb.ae unwind label %14

bb.ae:                                            ; preds = %bb.ad
  unreachable

14:                                               ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.s, %bb.af, %bb.ag, %bb.ad
  %15 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.s ], [ %i.hg, %bb.af ], [ %i.hg, %bb.ag ], [ %i.hg, %bb.ad ]
  %16 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.s ], [ %i.hi, %bb.af ], [ %i.hi, %bb.ag ], [ %i.hi, %bb.ad ]
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.af:                                            ; preds = %bb.ac
  invoke void @_ZN8facebook5velox5cache7SsdFile11logEvictionERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ag unwind label %14

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN8facebook5velox5cache7SsdFile24clearRegionEntriesLockedERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ah unwind label %14

bb.ah:                                            ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !172 ; 2 uses
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !43 ; 2 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hv = sub i64 %i.ht, %i.hu                    ; 2 uses
  %i.hw = ashr exact i64 %i.hv, 2
  %i.hx = add nsw i64 %i.hw, %i.fy
  %i.hy = load i32, ptr %i.fg, align 8, !tbaa !170
  %i.hz = sext i32 %i.hy to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.hx, i64 %i.hz) ; 4 uses
  %i.ia = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.ia, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #34
          to label %.noexc159 unwind label %.loopexit.split-lp360

.noexc159:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !186
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = sub i64 %i.id, %i.hu
  %i.if = ashr exact i64 %i.ie, 2
  %i.ig = icmp ult i64 %i.if, %.sroa.speculated
  br i1 %i.ig, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i155, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit161

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i155: ; preds = %bb.aj
  %i.ih = shl nuw nsw i64 %.sroa.speculated, 2
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #37
          to label %.noexc160 unwind label %.loopexit.split-lp360 ; 5 uses

.noexc160:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i155
  %i.ij = load ptr, ptr %i.hp, align 8, !tbaa !43 ; 4 uses
  %i.ik = load ptr, ptr %i.hq, align 8, !tbaa !172
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64               ; 2 uses
  %i.in = sub i64 %i.il, %i.im                    ; 2 uses
  %i.io = icmp sgt i64 %i.in, 0
  br i1 %i.io, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156

bb.ak:                                            ; preds = %.noexc160
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ii, ptr align 4 %i.ij, i64 %i.in, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156: ; preds = %bb.ak, %.noexc160
  %.not.i8.i157 = icmp eq ptr %i.ij, null
  br i1 %.not.i8.i157, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156
  %i.ip = load ptr, ptr %i.ib, align 8, !tbaa !186
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = sub i64 %i.iq, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.ir) #35
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158: ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156
  store ptr %i.ii, ptr %i.hp, align 8, !tbaa !43
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.hv ; 2 uses
  store ptr %i.is, ptr %i.hq, align 8, !tbaa !172
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.sroa.speculated
  store ptr %i.it, ptr %i.ib, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit161

_ZNSt6vectorIiSaIiEE7reserveEm.exit161:           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158, %bb.aj
  %i.iu = phi ptr [ %i.is, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158 ], [ %i.hr, %bb.aj ] ; 3 uses
  %i.iv = phi ptr [ %i.ii, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158 ], [ %i.hs, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %9, align 8, !tbaa !280
  %i.iw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iw, i8 0, i64 16, i1 false)
  %i.ix = icmp eq ptr %i.iu, %i.iv
  br i1 %i.ix, label %.lr.ph402, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit161
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 2
  %i.jc = add nsw i64 %i.jb, -1
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.jc, i64 noundef 1, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i:                                       ; preds = %bb.am, %.noexc10.i
  %.sroa.06.012.i.i = phi ptr [ %i.jj, %.noexc10.i ], [ %i.iv, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.jd = load i32, ptr %.sroa.06.012.i.i, align 4, !tbaa !40
  %i.je = sext i32 %i.jd to i64                   ; 3 uses
  store i64 %i.je, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !627
  %i.jf = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.je) ; 2 uses
  %i.jg = lshr i64 %i.jf, 24
  %i.jh = or i64 %i.jg, 128
  %i.ji = add nsw i64 %i.jf, %i.je
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE19tryEmplaceValueImplImJmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkImEEEEbES7_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.501") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %i.ji, i64 %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10.i:                                       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 4 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.iu
  br i1 %i.jk, label %.lr.ph402, label %.lr.ph.i.i, !llvm.loop !617

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.am
  %lpad.loopexit.split-lp529 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #33
  br label %.body

.lr.ph402:                                        ; preds = %.noexc10.i, %_ZNSt6vectorIiSaIiEE7reserveEm.exit161
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.ar

bb.an:                                            ; preds = %bb.bd
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0221.0401, i64 4 ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.hh
  br i1 %i.jp, label %._crit_edge403, label %bb.ar

._crit_edge403:                                   ; preds = %bb.an
  %i.jq = load ptr, ptr %9, align 8, !tbaa !280   ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 15
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !283
  %i.jt = icmp eq i8 %i.js, -1
  br i1 %i.jt, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge403
  %i.ju = load i64, ptr %i.iw, align 8, !tbaa !115 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 14
  %i.jw = icmp ult i64 %i.ju, 256
  br i1 %i.jw, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jx = and i64 %i.ju, 255                      ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.jy, align 8, !tbaa !39
  store i64 %i.jx, ptr %i.iw, align 8, !tbaa !115
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jz = phi i64 [ %i.ju, %bb.ao ], [ %i.jx, %bb.ap ] ; 2 uses
  %i.ka = load i8, ptr %i.jv, align 1, !tbaa !45
  %i.kb = icmp eq i64 %i.jz, 0
  %i.kc = shl i8 %i.ka, 3
  %i.kd = and i8 %i.kc, 120
  %narrow.i.i.i.i = add nuw i8 %i.kd, 16
  %i.ke = zext i8 %narrow.i.i.i.i to i64
  %i.kf = shl i64 128, %i.jz
  %.0.i.i.i.i.i = select i1 %i.kb, i64 %i.ke, i64 %i.kf
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %9, align 8, !tbaa !280
  store i64 0, ptr %i.iw, align 8, !tbaa !115
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %.0.i.i.i.i.i) #33
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit: ; preds = %._crit_edge403, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bj

.loopexit359:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit361 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp360:                            ; preds = %bb.ai, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i155, %bb.z
  %18 = phi ptr [ %i.hg, %bb.ai ], [ %i.hg, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i155 ], [ %i.fz, %bb.z ]
  %19 = phi ptr [ %i.hi, %bb.ai ], [ %i.hi, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i155 ], [ %13, %bb.z ]
  %lpad.loopexit.split-lp362 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ar:                                            ; preds = %.lr.ph402, %bb.an
  %.sroa.0221.0401 = phi ptr [ %i.hi, %.lr.ph402 ], [ %i.jo, %bb.an ] ; 2 uses
  %i.kg = load i32, ptr %.sroa.0221.0401, align 4, !tbaa !40 ; 3 uses
  %i.kh = sext i32 %i.kg to i64                   ; 6 uses
  %i.ki = load i64, ptr %i.iw, align 8, !tbaa !115 ; 2 uses
  %i.kj = lshr i64 %i.ki, 8
  switch i64 %i.kj, label %.noexc124 [
    i64 0, label %.thread341
    i64 1, label %.noexc78
  ]

.noexc78:                                         ; preds = %bb.ar
  %i.kk = load i64, ptr %i.jl, align 8, !tbaa !276
  %i.kl = and i64 %i.kk, -8
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !39
  %i.ko = icmp eq i64 %i.kn, %i.kh
  br i1 %i.ko, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176, label %.thread341

.noexc124:                                        ; preds = %bb.ar
  %i.kp = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.kh) ; 2 uses
  %i.kq = lshr i64 %i.kp, 24
  %i.kr = or i64 %i.kq, 128                       ; 2 uses
  %i.ks = add nsw i64 %i.kp, %i.kh
  %i.kt = shl nuw nsw i64 %i.kr, 1
  %i.ku = or disjoint i64 %i.kt, 1
  %i.kv = trunc nuw i64 %i.kr to i8
  %i.kw = insertelement <16 x i8> poison, i8 %i.kv, i64 0
  %i.kx = shufflevector <16 x i8> %i.kw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ky = and i64 %i.ki, 255                      ; 2 uses
  %i.kz = shl nuw i64 1, %i.ky
  %i.la = load ptr, ptr %9, align 8, !tbaa !280
  br label %.noexc126

.noexc126:                                        ; preds = %.noexc124, %.noexc129
  %.023.i109396 = phi i64 [ %i.kz, %.noexc124 ], [ %i.lu, %.noexc129 ]
  %.025.i108395 = phi i64 [ %i.ks, %.noexc124 ], [ %i.lv, %.noexc129 ] ; 2 uses
  %i.lb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i108395, i64 range(i64 0, 256) %i.ky)
  %i.lc = getelementptr inbounds nuw [128 x i8], ptr %i.la, i64 %i.lb ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.le, i32 0, i32 3, i32 1)
  %i.lf = load <16 x i8>, ptr %i.lc, align 16     ; 2 uses
  %i.lg = icmp eq <16 x i8> %i.lf, %i.kx
  %i.lh = bitcast <16 x i1> %i.lg to i16
  %i.li = and i16 %i.lh, 16383
  %i.lj = zext nneg i16 %i.li to i32
  %i.lk = icmp ne ptr %i.lc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ll = extractelement <16 x i8> %i.lf, i64 15
  br label %.critedge.i111

.critedge.i111:                                   ; preds = %.noexc128, %.noexc126
  %.sroa.0279.0 = phi i32 [ %i.lj, %.noexc126 ], [ %i.lo, %.noexc128 ] ; 4 uses
  %.not352 = icmp eq i32 %.sroa.0279.0, 0
  br i1 %.not352, label %bb.as, label %.noexc128

.noexc128:                                        ; preds = %.critedge.i111
  %i.lm = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0279.0, i1 true)
  %i.ln = add nuw nsw i32 %.sroa.0279.0, 16383
  %i.lo = and i32 %i.ln, %.sroa.0279.0
  %i.lp = zext nneg i32 %i.lm to i64
  call void @llvm.assume(i1 %i.lk)
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lp
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !39
  %i.ls = icmp eq i64 %i.lr, %i.kh
  br i1 %i.ls, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176, label %.critedge.i111, !prof !200, !llvm.loop !14

bb.as:                                            ; preds = %.critedge.i111
  %i.lt = icmp eq i8 %i.ll, 0
  br i1 %i.lt, label %.thread341, label %.noexc129, !prof !200

.noexc129:                                        ; preds = %bb.as
  %i.lu = add i64 %.023.i109396, -1               ; 2 uses
  %i.lv = add i64 %i.ku, %.025.i108395
  %.not.i110 = icmp eq i64 %i.lu, 0
  br i1 %.not.i110, label %.thread341, label %.noexc126, !llvm.loop !15

.thread341:                                       ; preds = %.noexc129, %bb.as, %.noexc78, %bb.ar
  %i.lw = load ptr, ptr %i.hq, align 8, !tbaa !172 ; 4 uses
  %i.lx = load ptr, ptr %i.ib, align 8, !tbaa !186
  %.not.i167 = icmp eq ptr %i.lw, %i.lx
  br i1 %.not.i167, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.thread341
  store i32 %i.kg, ptr %i.lw, align 4, !tbaa !40
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store ptr %i.ly, ptr %i.hq, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176

bb.au:                                            ; preds = %.thread341
  %i.lz = load ptr, ptr %i.hp, align 8, !tbaa !43 ; 4 uses
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = ptrtoint ptr %i.lz to i64               ; 2 uses
  %i.mc = sub i64 %i.ma, %i.mb                    ; 5 uses
  %i.md = icmp eq i64 %i.mc, 9223372036854775804
  br i1 %i.md, label %bb.av, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #34
          to label %.noexc174 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc174:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168: ; preds = %bb.au
  %i.me = ashr exact i64 %i.mc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i169 = call i64 @llvm.umax.i64(i64 %i.me, i64 1)
  %i.mf = add nsw i64 %.sroa.speculated.i.i.i169, %i.me ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.me
  %i.mh = call i64 @llvm.umin.i64(i64 %i.mf, i64 2305843009213693951)
  %i.mi = select i1 %i.mg, i64 2305843009213693951, i64 %i.mh ; 3 uses
  %.not.i.i.i170 = icmp ne i64 %i.mi, 0
  call void @llvm.assume(i1 %.not.i.i.i170)
  %i.mj = shl nuw nsw i64 %i.mi, 2
  %i.mk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mj) #37
          to label %.noexc175 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 %i.mc ; 2 uses
  store i32 %i.kg, ptr %i.ml, align 4, !tbaa !40
  %i.mm = icmp sgt i64 %i.mc, 0
  br i1 %i.mm, label %bb.aw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171

bb.aw:                                            ; preds = %.noexc175
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mk, ptr align 4 %i.lz, i64 %i.mc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171: ; preds = %bb.aw, %.noexc175
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %.not.i17.i.i172 = icmp eq ptr %i.lz, null
  br i1 %.not.i17.i.i172, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171
  %i.mo = load ptr, ptr %i.ib, align 8, !tbaa !186
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = sub i64 %i.mp, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.lz, i64 noundef %i.mq) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173: ; preds = %bb.ax, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171
  store ptr %i.mk, ptr %i.hp, align 8, !tbaa !43
  store ptr %i.mn, ptr %i.hq, align 8, !tbaa !172
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mi
  store ptr %i.mr, ptr %i.ib, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168, %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIiSaIiEE9push_backERKi.exit176:       ; preds = %.noexc128, %.noexc78, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173, %bb.at
  %i.ms = load ptr, ptr %i.jm, align 8, !tbaa !185
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.kh
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !40 ; 2 uses
  %.not36 = icmp eq i32 %i.mu, 0
  br i1 %.not36, label %bb.bd, label %bb.ay, !prof !200

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !628
  store i32 %i.mu, ptr %5, align 16, !tbaa !45, !noalias !628
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.mv, align 16, !tbaa !45, !alias.scope !629, !noalias !628
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.6, i64 11, i64 18, ptr nonnull %5)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !628
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_E18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.6) #34
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bc:                                            ; preds = %bb.az
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.my = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bc
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !45
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bb
  %.pn40 = phi { ptr, i32 } [ %i.mx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.mw, %bb.bb ], [ %i.mx, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.loopexit.split-lp

bb.bd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176
  %i.nd = load ptr, ptr %i.jn, align 8, !tbaa !185
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.kh
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !40 ; 2 uses
  %.not37 = icmp eq i32 %i.nf, 0
  br i1 %.not37, label %bb.an, label %bb.be, !prof !200

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !630
  store i32 %i.nf, ptr %4, align 16, !tbaa !45, !noalias !630
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ng, align 16, !tbaa !45, !alias.scope !631, !noalias !630
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.6, i64 11, i64 18, ptr nonnull %4)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !630
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.6) #34
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.bi:                                            ; preds = %bb.bf
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nj = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.bi
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !45
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.bh
  %.pn38 = phi { ptr, i32 } [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.nh, %bb.bh ], [ %i.ni, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #33
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp529, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.br

bb.bj:                                            ; preds = %._crit_edge392.thread, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit, %._crit_edge392
  %i.no = phi i64 [ 0, %._crit_edge392.thread ], [ %i.fy, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit ], [ 0, %._crit_edge392 ] ; 3 uses
  %i.np = phi i64 [ %i.fu, %._crit_edge392.thread ], [ %i.fw, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit ], [ %i.fw, %._crit_edge392 ]
  %i.nq = phi ptr [ %.lcssa371.ph, %._crit_edge392.thread ], [ %i.hi, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit ], [ %i.hi, %._crit_edge392 ] ; 3 uses
  %.lcssa387475 = phi ptr [ %.ph472, %._crit_edge392.thread ], [ %i.hg, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit ], [ %i.hg, %._crit_edge392 ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ns = load <2 x i64>, ptr %i.nr, align 8, !tbaa !39
  %i.nt = insertelement <2 x i64> poison, i64 %.032.lcssa, i64 0
  %i.nu = insertelement <2 x i64> %i.nt, i64 %i.no, i64 1
  %i.nv = add <2 x i64> %i.ns, %i.nu
  store <2 x i64> %i.nv, ptr %i.nr, align 8, !tbaa !39
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !192
  %i.ny = add i64 %i.nx, %i.no
  store i64 %i.ny, ptr %i.nw, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str.3, i32 noundef 654)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.bl unwind label %bb.bp     ; 3 uses

bb.bl:                                            ; preds = %bb.bk
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184: ; preds = %bb.bl
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull @.str.50, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, i64 noundef %.032.lcssa)
          to label %_ZNSolsEl.exit unwind label %bb.bp ; 2 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef nonnull @.str.51, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189: ; preds = %_ZNSolsEl.exit
  %i.oe = load ptr, ptr %0, align 8, !tbaa !49
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.og = load i64, ptr %i.of, align 8, !tbaa !107
  %i.oh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef %i.oe, i64 noundef %i.og)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit191 unwind label %bb.bp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit191: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189
  %i.oi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef nonnull @.str.52, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit191
  %i.oj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, i64 noundef %i.no)
          to label %_ZNSolsEm.exit unwind label %bb.bp ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
  %i.ok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef nonnull @.str.53, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196: ; preds = %_ZNSolsEm.exit
  %i.ol = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, i32 noundef 50)
          to label %bb.bm unwind label %bb.bp     ; 2 uses

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196
  %i.om = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull @.str.54, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198: ; preds = %bb.bm
  %i.on = load i64, ptr %i.u, align 8, !tbaa !115
  %i.oo = lshr i64 %i.on, 8
  %i.op = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, i64 noundef %i.oo)
          to label %_ZNSolsEm.exit200 unwind label %bb.bp

_ZNSolsEm.exit200:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.op, ptr noundef nonnull @.str.55, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202: ; preds = %_ZNSolsEm.exit200
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %.not.i.i.i203 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202
  %i.or = ptrtoint ptr %.lcssa387475 to i64
  %i.os = sub i64 %i.or, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.os) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ot = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #33 ; 0 uses
  br label %bb.bu

bb.bo:                                            ; preds = %bb.bj
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %_ZNSolsEm.exit200, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198, %bb.bm, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit191, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189, %_ZNSolsEl.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184, %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196, %bb.bk
  %i.ov = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #33
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn = phi { ptr, i32 } [ %i.ov, %bb.bp ], [ %i.ou, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.br

bb.br:                                            ; preds = %.loopexit359, %.loopexit.split-lp360, %bb.bq, %.body, %14
  %20 = phi ptr [ %.lcssa387475, %bb.bq ], [ %15, %14 ], [ %i.hg, %.body ], [ %i.fz, %.loopexit359 ], [ %18, %.loopexit.split-lp360 ]
  %21 = phi ptr [ %i.nq, %bb.bq ], [ %16, %14 ], [ %i.hi, %.body ], [ %13, %.loopexit359 ], [ %19, %.loopexit.split-lp360 ] ; 3 uses
  %.pn44 = phi { ptr, i32 } [ %.pn, %bb.bq ], [ %17, %14 ], [ %.pn40.pn.pn, %.body ], [ %lpad.loopexit361, %.loopexit359 ], [ %lpad.loopexit.split-lp362, %.loopexit.split-lp360 ]
  %.not.i.i.i204 = icmp eq ptr %21, null
  br i1 %.not.i.i.i204, label %_ZNSt6vectorIiSaIiEED2Ev.exit205, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ow = ptrtoint ptr %20 to i64
  %i.ox = ptrtoint ptr %21 to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %21, i64 noundef %i.oy) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit205

_ZNSt6vectorIiSaIiEED2Ev.exit205:                 ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.bt

bb.bt:                                            ; preds = %bb.r, %bb.o, %_ZNSt6vectorIiSaIiEED2Ev.exit205
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.r ], [ %.pn44, %_ZNSt6vectorIiSaIiEED2Ev.exit205 ], [ %i.cl, %bb.o ]
  %i.oz = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #33 ; 0 uses
  br label %bb.bv

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  ret i1 true

bb.bv:                                            ; preds = %bb.bt, %bb.e
  %.pn50 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn46.pn.pn, %bb.bt ]
  resume { ptr, i32 } %.pn50
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !280    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !283
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !115  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.h = icmp ult i64 %i.f, 256
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.f, 255                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !39
  store i64 %i.i, ptr %i.e, align 8, !tbaa !115
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load i8, ptr %i.g, align 1, !tbaa !45
  %i.m = icmp eq i64 %i.k, 0
  %i.n = shl i8 %i.l, 3
  %i.o = and i8 %i.n, 120
  %narrow.i.i.i = add nuw i8 %i.o, 16
  %i.p = zext i8 %narrow.i.i.i to i64
  %i.q = shl i64 128, %i.k
  %.0.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.q
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !280
  store i64 0, ptr %i.e, align 8, !tbaa !115
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %.0.i.i.i.i) #33
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile16deleteCheckpointEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(548) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.20", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.20", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load i8, ptr %i.a, align 8, !tbaa !123, !range !103, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = ptrtoint ptr %i.e to i64
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %_ZN8facebook5velox5cache7SsdFile12truncateFileEPNS0_9WriteFileE.exit, label %bb.d

_ZN8facebook5velox5cache7SsdFile12truncateFileEPNS0_9WriteFileE.exit: ; preds = %bb.c
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0), !inline_history !267
  br label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.d:                                             ; preds = %bb.c
  store i64 %i.f, ptr %2, align 8, !tbaa !168
  store ptr null, ptr %i.d, align 8, !tbaa !168
  invoke void @_ZN8facebook5velox5cache7SsdFile10deleteFileESt10unique_ptrINS0_9WriteFileESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %2, align 8, !tbaa !168    ; 2 uses
  %.not.i6 = icmp eq ptr %i.j, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !168    ; 2 uses
  %.not.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9.sink.split

_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit.sink.split: ; preds = %bb.e, %_ZN8facebook5velox5cache7SsdFile12truncateFileEPNS0_9WriteFileE.exit
  %.sink25 = phi ptr [ %i.e, %_ZN8facebook5velox5cache7SsdFile12truncateFileEPNS0_9WriteFileE.exit ], [ %i.j, %bb.e ] ; 2 uses
  %.sink24 = phi i64 [ 48, %_ZN8facebook5velox5cache7SsdFile12truncateFileEPNS0_9WriteFileE.exit ], [ 8, %bb.e ]
  %i.m = load ptr, ptr %.sink25, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sink24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %.sink25)
  br label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit.sink.split, %bb.e, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i10 = icmp eq ptr %i.q, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit13, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %3, align 8, !tbaa !168
  store ptr null, ptr %i.p, align 8, !tbaa !168
  invoke void @_ZN8facebook5velox5cache7SsdFile10deleteFileESt10unique_ptrINS0_9WriteFileESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %3, align 8, !tbaa !168    ; 3 uses
  %.not.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit13, label %_ZNKSt14default_deleteIN8facebook5velox9WriteFileEEclEPS2_.exit.i12

_ZNKSt14default_deleteIN8facebook5velox9WriteFileEEclEPS2_.exit.i12: ; preds = %bb.h
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !121
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #33, !inline_history !1
  br label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit13

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !168    ; 2 uses
  %.not.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9, label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9.sink.split

_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit13: ; preds = %_ZNKSt14default_deleteIN8facebook5velox9WriteFileEEclEPS2_.exit.i12, %bb.h, %bb.a, %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit
  ret void

_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9.sink.split: ; preds = %bb.i, %bb.f
  %.sink30 = phi ptr [ %i.l, %bb.f ], [ %i.x, %bb.i ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.w, %bb.i ]
  %i.y = load ptr, ptr %.sink30, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %.sink30) #33
  br label %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9

_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9: ; preds = %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9.sink.split, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.f ], [ %.pn.ph, %_ZNSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EED2Ev.exit9.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile12truncateFileEPNS0_9WriteFileE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(548) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile12truncateFileEPNS0_9WriteFileEE18veloxCheckFailArgs) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0)
  %i.d = load ptr, ptr %1, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile10deleteFileESt10unique_ptrINS0_9WriteFileESt14default_deleteIS4_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(548) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.506", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !168    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile10deleteFileESt10unique_ptrINS0_9WriteFileESt14default_deleteIS4_EEE18veloxCheckFailArgs) #34
  unreachable
end_hunk_0
