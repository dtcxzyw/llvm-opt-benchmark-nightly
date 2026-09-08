Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read?download=true
inline.NumInlined: 689
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE:.from.
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !46
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.aa, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !47
  store ptr null, ptr %i.af, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61, !nonnull !62, !align !63 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.reload.addr251, i8 0, i64 16, i1 false)
  store i64 %i.y, ptr %i.ak, align 16, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  br i1 %.not.i.i.i.i.i.i, label %.from.181, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ap, ptr %i.aq, align 16, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.as, ptr %i.at, align 16, !tbaa !41
  store ptr null, ptr %i.ao, align 16, !tbaa !40
  store ptr null, ptr %i.ar, align 16, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %.from.180 unwind label %bb.d

.from.180:                                        ; preds = %bb.c
  store ptr null, ptr %i.al, align 8, !tbaa !39
  %.pre102 = load ptr, ptr %i.z, align 8, !tbaa !46
  %.pre103 = load i64, ptr %i.ae, align 16, !tbaa !47
  %.pre104 = load ptr, ptr %i.ah, align 8, !tbaa !61
  br label %.from.186

.from.181:                                        ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br label %.from.186

bb.d:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

.from.186:                                        ; preds = %.from.181, %.from.180
  %i.az = phi ptr [ %.pre104, %.from.180 ], [ %i.aj, %.from.181 ]
  %i.ba = phi i64 [ %.pre103, %.from.180 ], [ %i.ag, %.from.181 ]
  %i.bb = phi ptr [ %.pre102, %.from.180 ], [ %i.ab, %.from.181 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !46
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.z, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store i64 %i.ba, ptr %i.be, align 16, !tbaa !47
  store ptr null, ptr %i.ae, align 16, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 5 uses
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !64
  %.058.spill.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 3 uses
  store i64 0, ptr %.058.spill.addr, align 16
  %.reload235282 = load ptr, ptr %.spill.addr, align 8, !tbaa !66 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i213283 = getelementptr inbounds nuw i8, ptr %.reload235282, i64 40
  %.sroa.2.0.copyload.i.i.i287 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i213283, align 8, !tbaa !67, !noalias !153 ; 2 uses
  %.not.i288 = icmp eq i64 %.sroa.2.0.copyload.i.i.i287, -1
  br i1 %.not.i288, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph: ; preds = %.from.186
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %index.addr252 = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 3 uses
  %.sroa.952.8..sroa_idx217 = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %.sroa.9.8..sroa_idx216 = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit
  %.sroa.2.0.copyload.i.i.i293 = phi i64 [ %.sroa.2.0.copyload.i.i.i287, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %.sroa.2.0.copyload.i.i.i, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit ] ; 3 uses
  %.reload235290 = phi ptr [ %.reload235282, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %.reload235, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit ] ; 3 uses
  %.058289 = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %i.cs, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit ] ; 2 uses
  %.sroa.22.0.copyload.i.i.i291.in = getelementptr inbounds nuw i8, ptr %.reload235290, i64 24
  %.sroa.22.0.copyload.i.i.i291 = load i64, ptr %.sroa.22.0.copyload.i.i.i291.in, align 8, !tbaa !67, !noalias !153 ; 2 uses
  %.sroa.0.0.copyload.i.i.i292.in = getelementptr inbounds nuw i8, ptr %.reload235290, i64 32
  %.sroa.0.0.copyload.i.i.i292 = load ptr, ptr %.sroa.0.0.copyload.i.i.i292.in, align 8, !tbaa !69, !noalias !153 ; 3 uses
  %i.bm = add i64 %.sroa.2.0.copyload.i.i.i293, 1 ; 2 uses
  %i.bn = icmp eq i64 %.sroa.2.0.copyload.i.i.i293, 0
  br i1 %i.bn, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.bm, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit, %.from.186
  %.058.lcssa = phi i64 [ 0, %.from.186 ], [ %i.cs, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.pre106 = load ptr, ptr %i.bo, align 8, !tbaa !72
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us29.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.bu, %.cont.us.i.i ]
  %.sroa.11.0.us28.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.bv, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.bp = icmp eq i64 %.sroa.11.0.us28.i.i, -1
  br i1 %i.bp, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i292, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !74
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.br = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i291, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.bs = add i64 %i.br, %.0.us29.i.i
  %i.bt = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i292, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.bt, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !74
  %i.bu = add i64 %.else.val.us.i.i.1, %i.bs      ; 3 uses
  %i.bv = add i64 %.sroa.11.0.us28.i.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !0

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.bw = and i64 %.sroa.2.0.copyload.i.i.i293, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bw, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us29.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.bu, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us28.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.bv, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod423 = trunc i64 %i.bm to i1
  tail call void @llvm.assume(i1 %lcmp.mod423)
  %i.bx = icmp eq i64 %.sroa.11.0.us28.i.i.epil.init, -1
  br i1 %i.bx, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i292, i64 %.sroa.11.0.us28.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !74
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.bz = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i291, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.ca = add i64 %i.bz, %.0.us29.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa = phi i64 [ %i.bu, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.ca, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa, 0
  %.pre107 = load ptr, ptr %i.bg, align 8, !tbaa !72 ; 3 uses
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i29 = icmp eq ptr %.pre107, null
  br i1 %.not.i.i29, label %.thread63, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre107, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !80
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.thread63, label %.thread.thread.thread

.thread63:                                        ; preds = %bb.e, %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %.reload235290, i64 8
  %.sroa.0.0.copyload.i.i30 = load ptr, ptr %i.bd, align 16, !tbaa !28
  store ptr %i.ce, ptr %.reload.addr249, align 16
  store ptr %.sroa.0.0.copyload.i.i30, ptr %i.bh, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr247, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr249)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread63
  %i.cf = load ptr, ptr %.reload.addr247, align 16, !tbaa !90, !nonnull !62, !align !63 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr nonnull %i.bi)
          to label %bb.g unwind label %.body.from.193, !inline_history !1

bb.g:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ci = load i8, ptr %i.bj, align 8, !tbaa !91, !range !92, !noundef !62
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %index.addr252, align 8
  %i.ck = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr247, ptr nonnull %i.g) #25
  br i1 %i.ck, label %AfterCoroEnd, label %bb.i

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196: ; preds = %.thread63
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.193:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.k, %.body.from.191, %.body.from.193
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %.body.from.193 ], [ %i.cp, %.body.from.191 ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cn = load ptr, ptr %i.bk, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = load ptr, ptr %i.bk, align 8, !tbaa !93, !noalias !154 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.co, null
  br i1 %.not.i.i31, label %bb.l, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.i
  store ptr %i.co, ptr %.reload.addr250, align 16, !tbaa !93, !noalias !154
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr250) #25, !noalias !154
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr250) #28
          to label %bb.j unwind label %bb.k, !noalias !154

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cq = load ptr, ptr %.reload.addr250, align 16, !tbaa !93, !noalias !154
  %.not.i2.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.191

.body.from.191:                                   ; preds = %bb.k
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr250) #25, !noalias !154
  br label %.body

bb.l:                                             ; preds = %bb.i
  %.058.reload = load i64, ptr %.058.spill.addr, align 16, !tbaa !66
  %i.cr = load i64, ptr %i.bi, align 8, !tbaa !67, !noalias !154 ; 5 uses
  %.sroa.650.8.copyload = load i32, ptr %i.bl, align 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.8..sroa_idx216, i64 12, i1 false)
  %.sroa.952.8.copyload = load i64, ptr %.sroa.952.8..sroa_idx217, align 16, !tbaa !67 ; 3 uses
  %i.cs = add i64 %i.cr, %.058.reload             ; 4 uses
  %i.ct = and i64 %.sroa.952.8.copyload, 1
  %.not.i.i34 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i34, label %_ZNK5boost6system10error_codecvbEv.exit.thread65, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp ne i64 %.sroa.952.8.copyload, 1
  %i.cv = icmp ne i32 %.sroa.650.8.copyload, 0
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond, label %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread65

_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread: ; preds = %bb.m
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i64 %i.cs, ptr %i.cw, align 8, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %.sroa.650.8.copyload, ptr %i.cy, align 8
  %.sroa.247.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.247.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, i64 12, i1 false)
  %.sroa.247.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.952.8.copyload, ptr %.sroa.247.sroa.3.0..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.cx, align 8, !tbaa !91
  br label %.thread74

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196
  %.pn = phi { ptr, i32 } [ %i.cl, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.015 = extractvalue { ptr, i32 } %.pn, 0
  %i.cz = tail call ptr @__cxa_begin_catch(ptr %.015) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread65: ; preds = %bb.m, %bb.l
  %.reload229 = load ptr, ptr %.spill.addr, align 8, !tbaa !66 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i212 = getelementptr inbounds nuw i8, ptr %.reload229, i64 24 ; 4 uses
  %i.da = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74 ; 3 uses
  %i.db = icmp ult i64 %i.cr, %i.da
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %i.dc = getelementptr inbounds nuw i8, ptr %.reload229, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cr
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !97
  %i.df = sub nuw i64 %i.da, %i.cr
  store i64 %i.df, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74
  br label %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit

bb.o:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %.sroa.2.0..sroa_idx.i.i.i215 = getelementptr inbounds nuw i8, ptr %.reload229, i64 40 ; 2 uses
  %i.dg = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i215, align 8, !tbaa !99 ; 4 uses
  %.not.i35 = icmp eq i64 %i.dg, 0
  br i1 %.not.i35, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %.reload229, i64 32 ; 2 uses
  %i.di = sub nuw i64 %i.cr, %i.da                ; 3 uses
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !101 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !74 ; 2 uses
  %i.dm = icmp ugt i64 %i.di, %i.dl
  br i1 %i.dm, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i393 = icmp eq i64 %i.dg, 1
  br i1 %exitcond.not.i393, label %.loopexit, label %.from.197.lr.ph, !llvm.loop !2

.from.197.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.197, !llvm.loop !2

.lr.ph:                                           ; preds = %.from.197
  %i.dn = add nuw i64 %i.do, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %i.dg
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.197, !llvm.loop !2

.from.197:                                        ; preds = %.from.197.lr.ph, %.lr.ph
  %i.do = phi i64 [ 1, %.from.197.lr.ph ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.018.i278395 = phi i64 [ %i.di, %.from.197.lr.ph ], [ %i.dq, %.lr.ph ]
  %.01217.i279394 = phi i64 [ 0, %.from.197.lr.ph ], [ %i.do, %.lr.ph ]
  %i.dp = phi i64 [ %i.dl, %.from.197.lr.ph ], [ %i.dt, %.lr.ph ]
  %i.dq = sub nuw i64 %.018.i278395, %i.dp        ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !74 ; 2 uses
  %i.du = icmp ugt i64 %i.dq, %i.dt
  br i1 %i.du, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !2

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %.reload229, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i8 0, i64 32, i1 false)
  %.reload239 = load ptr, ptr %.spill.addr, align 8, !tbaa !66
  %i.dw = getelementptr inbounds nuw i8, ptr %.reload239, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i8 0, i64 16, i1 false)
  br label %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit

.critedge.i.loopexit:                             ; preds = %.from.197
  %i.dx = add i64 %.01217.i279394, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.di, %.from..lr.ph.i ], [ %i.dq, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.dx, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa255 = phi ptr [ %i.dj, %.from..lr.ph.i ], [ %i.dr, %.critedge.i.loopexit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.reload229, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa255, i64 16, i1 false), !tbaa.struct !102
  %i.dz = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.dz) ; 2 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %..i14.i
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !97
  %i.ec = sub i64 %i.dz, %..i14.i
  store i64 %i.ec, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74
  %i.ed = sub i64 %i.dg, %.01217.i.lcssa
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.01217.i.lcssa
  store ptr %i.ee, ptr %i.dh, align 8, !tbaa !69
  store i64 %i.ed, ptr %.sroa.2.0..sroa_idx.i.i.i215, align 8, !tbaa !67
  br label %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit

.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit: ; preds = %bb.n, %.loopexit, %.critedge.i
  store i64 %i.cs, ptr %.058.spill.addr, align 16
  %.reload235 = load ptr, ptr %.spill.addr, align 8, !tbaa !66 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i213 = getelementptr inbounds nuw i8, ptr %.reload235, i64 40
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i213, align 8, !tbaa !67, !noalias !153 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %.058268 = phi i64 [ %.058.lcssa, %.thread.from...thread_crit_edge ], [ %.058289, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %i.ef = phi ptr [ %.pre106, %.thread.from...thread_crit_edge ], [ %.pre107, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i36, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert320 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.pre321 = load i32, ptr %.phi.trans.insert320, align 8, !tbaa !80
  %i.eg = icmp eq i32 %.pre321, 0
  br i1 %i.eg, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.f, %.thread.thread
  %.058267344 = phi i64 [ %.058268, %.thread.thread ], [ %.058289, %bb.f ]
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !107, !noalias !155
  %i.ei = and i64 %i.eh, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.ei, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.ej = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !18, !noalias !155
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !155
  %i.em = tail call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !155, !inline_history !3
  br i1 %i.em, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread.thread.thread
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.en = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.eo = load ptr, ptr %i.bf, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i64 %.058267344, ptr %i.eo, align 8, !tbaa !67
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 125, ptr %i.eq, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !16
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %i.en, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.ep, align 8, !tbaa !91
  br label %.thread74

.critedge:                                        ; preds = %.thread, %.thread.thread
  %i.er = load ptr, ptr %i.bf, align 8, !tbaa !96, !nonnull !62, !align !63 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i64 %.058268, ptr %i.er, align 8, !tbaa !67
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.es, align 8, !tbaa !91
  br label %.thread74

.thread74:                                        ; preds = %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread, %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.eu = load i64, ptr %i.ak, align 16, !tbaa !34, !noalias !156
  store i64 %i.eu, ptr %.reload.addr247, align 16, !tbaa !34, !alias.scope !156
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !39, !noalias !156
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i.i38, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread74
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !40, !noalias !156 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  store ptr %i.fa, ptr %i.fb, align 16, !tbaa !40, !alias.scope !156
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 16, !tbaa !41, !noalias !156
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  store ptr %i.fd, ptr %i.fe, align 16, !tbaa !41, !alias.scope !156
  store ptr null, ptr %i.ez, align 16, !tbaa !40, !noalias !156
  store ptr null, ptr %i.fc, align 16, !tbaa !41, !noalias !156
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !43, !noalias !156
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(56) %i.ey, ptr noundef nonnull align 8 dereferenceable(56) %i.ex)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ev, align 8, !tbaa !39, !noalias !156
  %.phi.trans.insert322 = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %.pre323 = load ptr, ptr %.phi.trans.insert322, align 8, !tbaa !39
  %i.fh = icmp eq ptr %.pre323, null
  br label %AfterCoroSave170

bb.r:                                             ; preds = %.thread74
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false), !alias.scope !156
  br label %AfterCoroSave170

bb.s:                                             ; preds = %bb.p
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  tail call void @__clang_call_terminate(ptr %i.fk) #26
  unreachable

AfterCoroSave170:                                 ; preds = %bb.r, %bb.q
  %i.fl = phi i1 [ true, %bb.r ], [ %i.fh, %bb.q ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 2 uses
  %i.fn = load ptr, ptr %i.bc, align 8, !tbaa !46, !noalias !156 ; 2 uses
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !46, !alias.scope !156
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.bc, align 8, !tbaa !46, !noalias !156
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fo, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 3 uses
  %i.fq = load i64, ptr %i.be, align 16, !tbaa !47, !noalias !156 ; 2 uses
  store i64 %i.fq, ptr %i.fp, align 16, !tbaa !47, !alias.scope !156
  store ptr null, ptr %i.be, align 16, !tbaa !47, !noalias !156
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.fs = load ptr, ptr %i.bf, align 8, !tbaa !61, !noalias !156, !nonnull !62, !align !63
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !64, !alias.scope !156
  store ptr null, ptr %i.g, align 16
  %index.addr253 = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  store i8 1, ptr %index.addr253, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  br i1 %i.fl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %AfterCoroSave170
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.fv = load ptr, ptr %i.fu, align 16, !tbaa !40 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !40
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.fy = load ptr, ptr %i.fx, align 16, !tbaa !41
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !41
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !108
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.ft)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.v

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.t
  %.pre324 = load ptr, ptr %i.fm, align 8, !tbaa !46
  %.pre325 = load ptr, ptr %i.fp, align 16, !tbaa !47
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.u:                                             ; preds = %AfterCoroSave170
  %i.gc = inttoptr i64 %i.fq to ptr
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #26
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.u
  %i.gg = phi ptr [ %.pre325, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.gc, %bb.u ] ; 2 uses
  %i.gh = phi ptr [ %.pre324, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.fn, %bb.u ]
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !46
  store ptr null, ptr %i.fp, align 16, !tbaa !47
  call void @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy(ptr nonnull %i.g), !inline_history !4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !109 ; 3 uses
  %.not.i.i254 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i254, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !110
  %i.gm = icmp eq i32 %i.gl, 3
  br i1 %i.gm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.gk, align 4, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.x ], [ %i.gg, %bb.w ], [ %i.gg, %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !39
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %AfterCoroSuspend172, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !111
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %AfterCoroSuspend172 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #26
  unreachable

AfterCoroSuspend172:                              ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.gv = load ptr, ptr %.sroa.03.0.i.i, align 8
  call void %i.gv(ptr nonnull %.sroa.03.0.i.i)
  br label %AfterCoroEnd

bb.ab:                                            ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %AfterCoroEnd174 unwind label %bb.ac

AfterCoroEnd:                                     ; preds = %bb.h, %AfterCoroSuspend172
  ret void

AfterCoroEnd174:                                  ; preds = %bb.ab
  tail call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.reload.addr251) #25
  tail call void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.reload.addr246) #25
  tail call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv(ptr noundef nonnull %i.g) #25
  resume { ptr, i32 } %i.gw

bb.ac:                                            ; preds = %bb.ab
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  tail call void @__clang_call_terminate(ptr %i.gy) #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr nonnull %i.b)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.g, !inline_history !5

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.f, %bb.e, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE:.from.
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !46
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.aa, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !47
  store ptr null, ptr %i.af, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61, !nonnull !62, !align !63 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.reload.addr256, i8 0, i64 16, i1 false)
  store i64 %i.y, ptr %i.ak, align 16, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  br i1 %.not.i.i.i.i.i.i, label %.from.183, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ap, ptr %i.aq, align 16, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.as, ptr %i.at, align 16, !tbaa !41
  store ptr null, ptr %i.ao, align 16, !tbaa !40
  store ptr null, ptr %i.ar, align 16, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %.from.182 unwind label %bb.d

.from.182:                                        ; preds = %bb.c
  store ptr null, ptr %i.al, align 8, !tbaa !39
  %.pre104 = load ptr, ptr %i.z, align 8, !tbaa !46
  %.pre105 = load i64, ptr %i.ae, align 16, !tbaa !47
  %.pre106 = load ptr, ptr %i.ah, align 8, !tbaa !61
  br label %.from.189

.from.183:                                        ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br label %.from.189

bb.d:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

.from.189:                                        ; preds = %.from.183, %.from.182
  %i.az = phi ptr [ %.pre106, %.from.182 ], [ %i.aj, %.from.183 ]
  %i.ba = phi i64 [ %.pre105, %.from.182 ], [ %i.ag, %.from.183 ]
  %i.bb = phi ptr [ %.pre104, %.from.182 ], [ %i.ab, %.from.183 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !46
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.z, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store i64 %i.ba, ptr %i.be, align 16, !tbaa !47
  store ptr null, ptr %i.ae, align 16, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 5 uses
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !64
  %.059.spill.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 3 uses
  store i64 0, ptr %.059.spill.addr, align 16
  %.reload240287 = load ptr, ptr %.spill.addr, align 8, !tbaa !113 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i216288 = getelementptr inbounds nuw i8, ptr %.reload240287, i64 48
  %.sroa.2.0.copyload.i.i.i292 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i216288, align 8, !tbaa !67, !noalias !170 ; 2 uses
  %.not.i293 = icmp eq i64 %.sroa.2.0.copyload.i.i.i292, -1
  br i1 %.not.i293, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph: ; preds = %.from.189
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %index.addr257 = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 3 uses
  %.sroa.1053.8..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %.sroa.10.8..sroa_idx219 = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph, %.from.187
  %.sroa.2.0.copyload.i.i.i298 = phi i64 [ %.sroa.2.0.copyload.i.i.i292, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %.sroa.2.0.copyload.i.i.i, %.from.187 ] ; 3 uses
  %.reload240295 = phi ptr [ %.reload240287, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %.reload, %.from.187 ] ; 3 uses
  %.059294 = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %i.cs, %.from.187 ] ; 2 uses
  %.sroa.22.0.copyload.i.i.i296.in = getelementptr inbounds nuw i8, ptr %.reload240295, i64 32
  %.sroa.22.0.copyload.i.i.i296 = load i64, ptr %.sroa.22.0.copyload.i.i.i296.in, align 8, !tbaa !67, !noalias !170 ; 2 uses
  %.sroa.0.0.copyload.i.i.i297.in = getelementptr inbounds nuw i8, ptr %.reload240295, i64 40
  %.sroa.0.0.copyload.i.i.i297 = load ptr, ptr %.sroa.0.0.copyload.i.i.i297.in, align 8, !tbaa !69, !noalias !170 ; 3 uses
  %i.bm = add i64 %.sroa.2.0.copyload.i.i.i298, 1 ; 2 uses
  %i.bn = icmp eq i64 %.sroa.2.0.copyload.i.i.i298, 0
  br i1 %i.bn, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.bm, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %.from.187, %.from.189
  %.059.lcssa = phi i64 [ 0, %.from.189 ], [ %i.cs, %.from.187 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.pre108 = load ptr, ptr %i.bo, align 8, !tbaa !72
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us29.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.bu, %.cont.us.i.i ]
  %.sroa.11.0.us28.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.bv, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.bp = icmp eq i64 %.sroa.11.0.us28.i.i, -1
  br i1 %i.bp, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i297, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !74
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.br = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i296, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.bs = add i64 %i.br, %.0.us29.i.i
  %i.bt = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i297, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.bt, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !74
  %i.bu = add i64 %.else.val.us.i.i.1, %i.bs      ; 3 uses
  %i.bv = add i64 %.sroa.11.0.us28.i.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !0

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.bw = and i64 %.sroa.2.0.copyload.i.i.i298, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bw, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us29.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.bu, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us28.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.bv, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod428 = trunc i64 %i.bm to i1
  tail call void @llvm.assume(i1 %lcmp.mod428)
  %i.bx = icmp eq i64 %.sroa.11.0.us28.i.i.epil.init, -1
  br i1 %i.bx, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i297, i64 %.sroa.11.0.us28.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !74
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.bz = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i296, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.ca = add i64 %i.bz, %.0.us29.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa = phi i64 [ %i.bu, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.ca, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa, 0
  %.pre109 = load ptr, ptr %i.bg, align 8, !tbaa !72 ; 3 uses
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i30 = icmp eq ptr %.pre109, null
  br i1 %.not.i.i30, label %.thread64, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre109, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !80
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.thread64, label %.thread.thread.thread

.thread64:                                        ; preds = %bb.e, %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %.reload240295, i64 8
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.bd, align 16, !tbaa !28
  store ptr %i.ce, ptr %.reload.addr254, align 16
  store ptr %.sroa.0.0.copyload.i.i31, ptr %i.bh, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr252, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr254)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread64
  %i.cf = load ptr, ptr %.reload.addr252, align 16, !tbaa !90, !nonnull !62, !align !63 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr nonnull %i.bi)
          to label %bb.g unwind label %.body.from.196, !inline_history !1

bb.g:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ci = load i8, ptr %i.bj, align 8, !tbaa !91, !range !92, !noundef !62
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %index.addr257, align 8
  %i.ck = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr252, ptr nonnull %i.g) #25
  br i1 %i.ck, label %AfterCoroEnd, label %bb.i

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199: ; preds = %.thread64
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.196:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.k, %.body.from.194, %.body.from.196
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %.body.from.196 ], [ %i.cp, %.body.from.194 ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cn = load ptr, ptr %i.bk, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = load ptr, ptr %i.bk, align 8, !tbaa !93, !noalias !171 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.co, null
  br i1 %.not.i.i32, label %bb.l, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.i
  store ptr %i.co, ptr %.reload.addr255, align 16, !tbaa !93, !noalias !171
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr255) #25, !noalias !171
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr255) #28
          to label %bb.j unwind label %bb.k, !noalias !171

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cq = load ptr, ptr %.reload.addr255, align 16, !tbaa !93, !noalias !171
  %.not.i2.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.194

.body.from.194:                                   ; preds = %bb.k
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr255) #25, !noalias !171
  br label %.body

bb.l:                                             ; preds = %bb.i
  %.059.reload = load i64, ptr %.059.spill.addr, align 16, !tbaa !113
  %i.cr = load i64, ptr %i.bi, align 8, !tbaa !67, !noalias !171 ; 6 uses
  %.sroa.7.8.copyload = load i32, ptr %i.bl, align 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.8..sroa_idx219, i64 12, i1 false)
  %.sroa.1053.8.copyload = load i64, ptr %.sroa.1053.8..sroa_idx220, align 16, !tbaa !67 ; 3 uses
  %i.cs = add i64 %i.cr, %.059.reload             ; 4 uses
  %i.ct = and i64 %.sroa.1053.8.copyload, 1
  %.not.i.i35 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i35, label %_ZNK5boost6system10error_codecvbEv.exit.thread66, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp ne i64 %.sroa.1053.8.copyload, 1
  %i.cv = icmp ne i32 %.sroa.7.8.copyload, 0
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond, label %.thread71, label %_ZNK5boost6system10error_codecvbEv.exit.thread66

.thread71:                                        ; preds = %bb.m
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i64 %i.cs, ptr %i.cw, align 8, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %.sroa.7.8.copyload, ptr %i.cy, align 8
  %.sroa.248.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.248.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  %.sroa.248.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.1053.8.copyload, ptr %.sroa.248.sroa.3.0..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.cx, align 8, !tbaa !91
  br label %.thread76

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199
  %.pn = phi { ptr, i32 } [ %i.cl, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.016 = extractvalue { ptr, i32 } %.pn, 0
  %i.cz = tail call ptr @__cxa_begin_catch(ptr %.016) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread66: ; preds = %bb.m, %bb.l
  %.reload234 = load ptr, ptr %.spill.addr, align 8, !tbaa !113 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i215 = getelementptr inbounds nuw i8, ptr %.reload234, i64 32 ; 4 uses
  %i.da = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74 ; 3 uses
  %i.db = icmp ult i64 %i.cr, %i.da
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread66
  %i.dc = getelementptr inbounds nuw i8, ptr %.reload234, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cr
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !97
  %i.df = sub nuw i64 %i.da, %i.cr
  store i64 %i.df, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74
  br label %.from.187

bb.o:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread66
  %.sroa.2.0..sroa_idx.i.i.i218 = getelementptr inbounds nuw i8, ptr %.reload234, i64 48 ; 2 uses
  %i.dg = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i218, align 8, !tbaa !99 ; 4 uses
  %.not.i36 = icmp eq i64 %i.dg, 0
  br i1 %.not.i36, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %.reload234, i64 40 ; 2 uses
  %i.di = sub nuw i64 %i.cr, %i.da                ; 3 uses
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !101 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !74 ; 2 uses
  %i.dm = icmp ugt i64 %i.di, %i.dl
  br i1 %i.dm, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i398 = icmp eq i64 %i.dg, 1
  br i1 %exitcond.not.i398, label %.loopexit, label %.from.200.lr.ph, !llvm.loop !2

.from.200.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.200, !llvm.loop !2

.lr.ph:                                           ; preds = %.from.200
  %i.dn = add nuw i64 %i.do, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %i.dg
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.200, !llvm.loop !2

.from.200:                                        ; preds = %.from.200.lr.ph, %.lr.ph
  %i.do = phi i64 [ 1, %.from.200.lr.ph ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.018.i283400 = phi i64 [ %i.di, %.from.200.lr.ph ], [ %i.dq, %.lr.ph ]
  %.01217.i284399 = phi i64 [ 0, %.from.200.lr.ph ], [ %i.do, %.lr.ph ]
  %i.dp = phi i64 [ %i.dl, %.from.200.lr.ph ], [ %i.dt, %.lr.ph ]
  %i.dq = sub nuw i64 %.018.i283400, %i.dp        ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !74 ; 2 uses
  %i.du = icmp ugt i64 %i.dq, %i.dt
  br i1 %i.du, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !2

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %.reload234, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i8 0, i64 32, i1 false)
  %.reload244 = load ptr, ptr %.spill.addr, align 8, !tbaa !113
  %i.dw = getelementptr inbounds nuw i8, ptr %.reload244, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i8 0, i64 16, i1 false)
  br label %.from.187

.critedge.i.loopexit:                             ; preds = %.from.200
  %i.dx = add i64 %.01217.i284399, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.di, %.from..lr.ph.i ], [ %i.dq, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.dx, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa260 = phi ptr [ %i.dj, %.from..lr.ph.i ], [ %i.dr, %.critedge.i.loopexit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.reload234, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa260, i64 16, i1 false), !tbaa.struct !102
  %i.dz = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.dz) ; 2 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %..i14.i
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !97
  %i.ec = sub i64 %i.dz, %..i14.i
  store i64 %i.ec, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74
  %i.ed = sub i64 %i.dg, %.01217.i.lcssa
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.01217.i.lcssa
  store ptr %i.ee, ptr %i.dh, align 8, !tbaa !69
  store i64 %i.ed, ptr %.sroa.2.0..sroa_idx.i.i.i218, align 8, !tbaa !67
  br label %.from.187

.from.187:                                        ; preds = %bb.n, %.loopexit, %.critedge.i
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !113 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !118
  %i.eh = add i64 %i.eg, %i.cr
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !118
  store i64 %i.cs, ptr %.059.spill.addr, align 16
  %.sroa.2.0..sroa_idx.i.i.i216 = getelementptr inbounds nuw i8, ptr %.reload, i64 48
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i216, align 8, !tbaa !67, !noalias !170 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %.059273 = phi i64 [ %.059.lcssa, %.thread.from...thread_crit_edge ], [ %.059294, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %i.ei = phi ptr [ %.pre108, %.thread.from...thread_crit_edge ], [ %.pre109, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i37, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert325 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.pre326 = load i32, ptr %.phi.trans.insert325, align 8, !tbaa !80
  %i.ej = icmp eq i32 %.pre326, 0
  br i1 %i.ej, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.f, %.thread.thread
  %.059272349 = phi i64 [ %.059273, %.thread.thread ], [ %.059294, %bb.f ]
  %i.ek = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !107, !noalias !172
  %i.el = and i64 %i.ek, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.el, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.em = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !18, !noalias !172
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !172
  %i.ep = tail call noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !172, !inline_history !3
  br i1 %i.ep, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread.thread.thread
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.eq = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.er = load ptr, ptr %i.bf, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i64 %.059272349, ptr %i.er, align 8, !tbaa !67
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 125, ptr %i.et, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !16
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store i64 %i.eq, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.es, align 8, !tbaa !91
  br label %.thread76

.critedge:                                        ; preds = %.thread, %.thread.thread
  %i.eu = load ptr, ptr %i.bf, align 8, !tbaa !96, !nonnull !62, !align !63 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store i64 %.059273, ptr %i.eu, align 8, !tbaa !67
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ev, align 8, !tbaa !91
  br label %.thread76

.thread76:                                        ; preds = %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread71, %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.ex = load i64, ptr %i.ak, align 16, !tbaa !34, !noalias !173
  store i64 %i.ex, ptr %.reload.addr252, align 16, !tbaa !34, !alias.scope !173
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !39, !noalias !173
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i39, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread76
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 16, !tbaa !40, !noalias !173 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  store ptr %i.fd, ptr %i.fe, align 16, !tbaa !40, !alias.scope !173
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 16, !tbaa !41, !noalias !173
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  store ptr %i.fg, ptr %i.fh, align 16, !tbaa !41, !alias.scope !173
  store ptr null, ptr %i.fc, align 16, !tbaa !40, !noalias !173
  store ptr null, ptr %i.ff, align 16, !tbaa !41, !noalias !173
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43, !noalias !173
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(56) %i.fb, ptr noundef nonnull align 8 dereferenceable(56) %i.fa)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ey, align 8, !tbaa !39, !noalias !173
  %.phi.trans.insert327 = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %.pre328 = load ptr, ptr %.phi.trans.insert327, align 8, !tbaa !39
  %i.fk = icmp eq ptr %.pre328, null
  br label %AfterCoroSave172

bb.r:                                             ; preds = %.thread76
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fl, i8 0, i64 24, i1 false), !alias.scope !173
  br label %AfterCoroSave172

bb.s:                                             ; preds = %bb.p
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  tail call void @__clang_call_terminate(ptr %i.fn) #26
  unreachable

AfterCoroSave172:                                 ; preds = %bb.r, %bb.q
  %i.fo = phi i1 [ true, %bb.r ], [ %i.fk, %bb.q ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 2 uses
  %i.fq = load ptr, ptr %i.bc, align 8, !tbaa !46, !noalias !173 ; 2 uses
  store ptr %i.fq, ptr %i.fp, align 8, !tbaa !46, !alias.scope !173
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.bc, align 8, !tbaa !46, !noalias !173
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 3 uses
  %i.ft = load i64, ptr %i.be, align 16, !tbaa !47, !noalias !173 ; 2 uses
  store i64 %i.ft, ptr %i.fs, align 16, !tbaa !47, !alias.scope !173
  store ptr null, ptr %i.be, align 16, !tbaa !47, !noalias !173
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.fv = load ptr, ptr %i.bf, align 8, !tbaa !61, !noalias !173, !nonnull !62, !align !63
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !64, !alias.scope !173
  store ptr null, ptr %i.g, align 16
  %index.addr258 = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  store i8 1, ptr %index.addr258, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  br i1 %i.fo, label %bb.u, label %bb.t

bb.t:                                             ; preds = %AfterCoroSave172
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.fy = load ptr, ptr %i.fx, align 16, !tbaa !40 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !40
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.gb = load ptr, ptr %i.ga, align 16, !tbaa !41
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !41
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !108
  invoke void %i.ge(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.fw)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.v

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.t
  %.pre329 = load ptr, ptr %i.fp, align 8, !tbaa !46
  %.pre330 = load ptr, ptr %i.fs, align 16, !tbaa !47
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.u:                                             ; preds = %AfterCoroSave172
  %i.gf = inttoptr i64 %i.ft to ptr
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #26
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.u
  %i.gj = phi ptr [ %.pre330, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.gf, %bb.u ] ; 2 uses
  %i.gk = phi ptr [ %.pre329, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.fq, %bb.u ]
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !46
  store ptr null, ptr %i.fs, align 16, !tbaa !47
  call void @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy(ptr nonnull %i.g), !inline_history !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !109 ; 3 uses
  %.not.i.i259 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i259, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !110
  %i.gp = icmp eq i32 %i.go, 3
  br i1 %i.gp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.gn, align 4, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.x ], [ %i.gj, %bb.w ], [ %i.gj, %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !39
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %AfterCoroSuspend174, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !40
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !111
  invoke void %i.gv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %AfterCoroSuspend174 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #26
  unreachable

AfterCoroSuspend174:                              ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.gy = load ptr, ptr %.sroa.03.0.i.i, align 8
  call void %i.gy(ptr nonnull %.sroa.03.0.i.i)
  br label %AfterCoroEnd

bb.ab:                                            ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %AfterCoroEnd176 unwind label %bb.ac

AfterCoroEnd:                                     ; preds = %bb.h, %AfterCoroSuspend174
  ret void

AfterCoroEnd176:                                  ; preds = %bb.ab
  tail call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.reload.addr256) #25
  tail call void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.reload.addr251) #25
  tail call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv(ptr noundef nonnull %i.g) #25
  resume { ptr, i32 } %i.gz

bb.ac:                                            ; preds = %bb.ab
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  tail call void @__clang_call_terminate(ptr %i.hb) #26
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, ptr } @_ZNK5boost6system14error_category23default_error_conditionEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i32, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) #25 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0
  %i.f = extractvalue { i32, ptr } %i.d, 1        ; 4 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.f, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !176  ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null              ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !107
  %i.m = icmp eq i64 %i.l, -5572340897628102704
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_ZNK5boost6system15error_condition6cat_idEv.exit12.i, label %bb.f

_ZNK5boost6system15error_condition6cat_idEv.exit12.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !107
  %i.p = icmp eq i64 %i.o, -5572340897628102704
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !107  ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = icmp eq ptr %i.f, %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, %i.r
  %i.x = select i1 %i.s, i1 %i.t, i1 %i.w
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZNK5boost6system15error_condition6cat_idEv.exit12.i, %bb.f
  %.0.i = phi i1 [ %i.x, %bb.f ], [ false, %bb.a ], [ %i.p, %_ZNK5boost6system15error_condition6cat_idEv.exit12.i ], [ %i.m, %bb.d ], [ true, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !178
  switch i64 %i.b, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, -5572340897628102703
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !107
  %i.j = icmp eq i64 %i.i, -5572340897628102702
  br i1 %i.j, label %_ZNK5boost6system10error_code5valueEv.exit.i, label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !181
  %i.n = ptrtoint ptr %i.m to i64
end_hunk_1
begin_hunk_2_@_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv:bb.a
  %i.t = load ptr, ptr %2, align 8, !tbaa !90, !noalias !227, !nonnull !62, !align !63
  store ptr %i.t, ptr %0, align 8, !tbaa !124, !alias.scope !227
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !91, !alias.scope !227
  %i.v = load i8, ptr %i.c, align 8, !tbaa !91, !range !92, !noalias !227, !noundef !62
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit

bb.c:                                             ; preds = %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67, !noalias !227
  store i64 %i.z, ptr %i.x, align 8, !tbaa !67, !alias.scope !227
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !138
  store i8 1, ptr %i.u, align 8, !tbaa !91, !alias.scope !227
  br label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit

_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit: ; preds = %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !125, !noalias !227
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !125, !alias.scope !227
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !93, !noalias !227
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !93, !alias.scope !227
  store ptr null, ptr %i.e, align 8, !tbaa !93, !noalias !227
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !126, !alias.scope !227
  call void @_ZNSt3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #25
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #25
  br label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit

_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit: ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZSt19uncaught_exceptionsv() local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE7__frame22__dummy_resume_destroyEv() #8 comdat align 2 {
bb.a:
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.resume(ptr noundef nonnull align 8 dereferenceable(368) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.0:
  %1 = alloca %"class.boost::asio::any_io_executor", align 8 ; 9 uses
  %.sroa.9 = alloca [12 x i8], align 4            ; 2 uses
  %.reload.addr247 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr249 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.reload.addr250 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %.058.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.sroa.952.8..sroa_idx217 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %.sroa.9.8..sroa_idx216 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.reload.addr228 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %index.addr252 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !242 ; 2 uses
  %.not.i.i3170 = icmp eq ptr %i.h, null
  br i1 %.not.i.i3170, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.a:                                             ; preds = %bb.i, %.loopexit, %.critedge.i
  store i64 %i.ao, ptr %.058.reload.addr, align 8
  %.reload235 = load ptr, ptr %.reload.addr228, align 8, !tbaa !66 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i213 = getelementptr inbounds nuw i8, ptr %.reload235, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %.reload235, i64 32
  %.sroa.22.0..sroa_idx.i.i.i208 = getelementptr inbounds nuw i8, ptr %.reload235, i64 24
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i208, align 8, !tbaa !67, !noalias !243 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !69, !noalias !243 ; 3 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i213, align 8, !tbaa !67, !noalias !243 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %bb.a
  %i.j = add i64 %.sroa.2.0.copyload.i.i.i, 1     ; 2 uses
  %i.k = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %i.k, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %bb.a
  %.pre106 = load ptr, ptr %i.d, align 8, !tbaa !72
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us29.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.q, %.cont.us.i.i ]
  %.sroa.11.0.us28.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.r, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.l = icmp eq i64 %.sroa.11.0.us28.i.i, -1
  br i1 %i.l, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !74
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.n = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.o = add i64 %i.n, %.0.us29.i.i
  %i.p = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.p, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !74
  %i.q = add i64 %.else.val.us.i.i.1, %i.o        ; 3 uses
  %i.r = add i64 %.sroa.11.0.us28.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !236

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.s = and i64 %.sroa.2.0.copyload.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us29.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.q, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us28.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.r, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod230 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %i.t = icmp eq i64 %.sroa.11.0.us28.i.i.epil.init, -1
  br i1 %i.t, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !74
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.v = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.w = add i64 %i.v, %.0.us29.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa200 = phi i64 [ %i.q, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.w, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa200, 0
  %.pre107 = load ptr, ptr %i.d, align 8, !tbaa !72 ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i29 = icmp eq ptr %.pre107, null
  br i1 %.not.i.i29, label %.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.pre107, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !80
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.thread63, label %.thread.thread.thread

.thread63:                                        ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.reload235, i64 8
  %.sroa.0.0.copyload.i.i30 = load ptr, ptr %i.f, align 8, !tbaa !28
  store ptr %i.aa, ptr %.reload.addr249, align 8
  store ptr %.sroa.0.0.copyload.i.i30, ptr %i.e, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr247, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr249)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread63
  %i.ab = load ptr, ptr %.reload.addr247, align 8, !tbaa !90, !nonnull !62, !align !63 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr nonnull %i.c)
          to label %bb.d unwind label %.body.from.193, !inline_history !1

bb.d:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ae = load i8, ptr %i.g, align 8, !tbaa !91, !range !92, !noundef !62
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.backedge, label %bb.e

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !242 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i31, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %index.addr252, align 8
  %i.ah = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr247, ptr nonnull %0) #25
  br i1 %i.ah, label %CoroEnd, label %.backedge

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196: ; preds = %.thread63
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.193:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.g, %.body.from.191, %.body.from.193
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %.body.from.193 ], [ %i.al, %.body.from.191 ], [ %i.al, %bb.g ] ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %.backedge, %resume.0
  %.lcssa7 = phi ptr [ %i.h, %resume.0 ], [ %i.ag, %.backedge ]
  store ptr %.lcssa7, ptr %.reload.addr250, align 8, !tbaa !93, !noalias !242
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr250) #25, !noalias !242
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr250) #28
          to label %bb.f unwind label %bb.g, !noalias !242

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.am = load ptr, ptr %.reload.addr250, align 8, !tbaa !93, !noalias !242
  %.not.i2.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.191

.body.from.191:                                   ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr250) #25, !noalias !242
  br label %.body

.lr.ph71:                                         ; preds = %resume.0, %.backedge
  %.058.reload = load i64, ptr %.058.reload.addr, align 8, !tbaa !66
  %i.an = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !242 ; 5 uses
  %.sroa.650.8.copyload = load i32, ptr %i.b, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.8..sroa_idx216, i64 12, i1 false)
  %.sroa.952.8.copyload = load i64, ptr %.sroa.952.8..sroa_idx217, align 8, !tbaa !67 ; 3 uses
  %i.ao = add i64 %i.an, %.058.reload             ; 4 uses
  %i.ap = and i64 %.sroa.952.8.copyload, 1
  %.not.i.i34 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i34, label %_ZNK5boost6system10error_codecvbEv.exit.thread65, label %bb.h

bb.h:                                             ; preds = %.lr.ph71
  %i.aq = icmp ne i64 %.sroa.952.8.copyload, 1
  %i.ar = icmp ne i32 %.sroa.650.8.copyload, 0
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread65

_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread: ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i64 %i.ao, ptr %i.at, align 8, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.650.8.copyload, ptr %i.av, align 8
  %.sroa.247.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.247.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, i64 12, i1 false)
  %.sroa.247.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.952.8.copyload, ptr %.sroa.247.sroa.3.0..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.au, align 8, !tbaa !91
  br label %.thread74

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196
  %.pn = phi { ptr, i32 } [ %i.ai, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.015 = extractvalue { ptr, i32 } %.pn, 0
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %.015) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread65: ; preds = %bb.h, %.lr.ph71
  %.reload229 = load ptr, ptr %.reload.addr228, align 8, !tbaa !66 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i212 = getelementptr inbounds nuw i8, ptr %.reload229, i64 24 ; 4 uses
  %i.ax = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74 ; 3 uses
  %i.ay = icmp ult i64 %i.an, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %i.az = getelementptr inbounds nuw i8, ptr %.reload229, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.an
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !97
  %i.bc = sub nuw i64 %i.ax, %i.an
  store i64 %i.bc, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74
  br label %bb.a

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %.sroa.2.0..sroa_idx.i.i.i215 = getelementptr inbounds nuw i8, ptr %.reload229, i64 40 ; 2 uses
  %i.bd = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i215, align 8, !tbaa !99 ; 4 uses
  %.not.i35 = icmp eq i64 %i.bd, 0
  br i1 %.not.i35, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.reload229, i64 32 ; 2 uses
  %i.bf = sub nuw i64 %i.an, %i.ax                ; 3 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !101 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !74 ; 2 uses
  %i.bj = icmp ugt i64 %i.bf, %i.bi
  br i1 %i.bj, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i192 = icmp eq i64 %i.bd, 1
  br i1 %exitcond.not.i192, label %.loopexit, label %.from.197.lr.ph, !llvm.loop !237

.from.197.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.197, !llvm.loop !237

.lr.ph:                                           ; preds = %.from.197
  %i.bk = add nuw i64 %i.bl, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.bd
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.197, !llvm.loop !237

.from.197:                                        ; preds = %.from.197.lr.ph, %.lr.ph
  %i.bl = phi i64 [ 1, %.from.197.lr.ph ], [ %i.bk, %.lr.ph ] ; 3 uses
  %.018.i63194 = phi i64 [ %i.bf, %.from.197.lr.ph ], [ %i.bn, %.lr.ph ]
  %.01217.i64193 = phi i64 [ 0, %.from.197.lr.ph ], [ %i.bl, %.lr.ph ]
  %i.bm = phi i64 [ %i.bi, %.from.197.lr.ph ], [ %i.bq, %.lr.ph ]
  %i.bn = sub nuw i64 %.018.i63194, %i.bm         ; 3 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bl ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.br = icmp ugt i64 %i.bn, %i.bq
  br i1 %i.br, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !237

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !237

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.reload229, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i8 0, i64 32, i1 false)
  %.reload239 = load ptr, ptr %.reload.addr228, align 8, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %.reload239, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i8 0, i64 16, i1 false)
  br label %bb.a

.critedge.i.loopexit:                             ; preds = %.from.197
  %i.bu = add i64 %.01217.i64193, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.bf, %.from..lr.ph.i ], [ %i.bn, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.bu, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.bg, %.from..lr.ph.i ], [ %i.bo, %.critedge.i.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.reload229, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i64 16, i1 false), !tbaa.struct !102
  %i.bw = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.bw) ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !97
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %..i14.i
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !97
  %i.bz = sub i64 %i.bw, %..i14.i
  store i64 %i.bz, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74
  %i.ca = sub i64 %i.bd, %.01217.i.lcssa
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.01217.i.lcssa
  store ptr %i.cb, ptr %i.be, align 8, !tbaa !69
  store i64 %i.ca, ptr %.sroa.2.0..sroa_idx.i.i.i215, align 8, !tbaa !67
  br label %bb.a

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %i.cc = phi ptr [ %.pre106, %.thread.from...thread_crit_edge ], [ %.pre107, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i36, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !80
  %i.cd = icmp eq i32 %.pre, 0
  br i1 %i.cd, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.c, %.thread.thread
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !107, !noalias !244
  %i.cf = and i64 %i.ce, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.cf, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.cg = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !18, !noalias !244
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !244
  %i.cj = tail call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !244, !inline_history !3
  br i1 %i.cj, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %.thread.thread.thread, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.ck = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i64 %i.ao, ptr %i.cm, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 125, ptr %i.co, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !16
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i64 %i.ck, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.cn, align 8, !tbaa !91
  br label %.thread74

.critedge:                                        ; preds = %.thread.thread, %.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !96, !nonnull !62, !align !63 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i64 %i.ao, ptr %i.cq, align 8, !tbaa !67
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cr, align 8, !tbaa !91
  br label %.thread74

.thread74:                                        ; preds = %.critedge, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !34, !noalias !245
  store i64 %i.cu, ptr %.reload.addr247, align 8, !tbaa !34, !alias.scope !245
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39, !noalias !245
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i38, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread74
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !40, !noalias !245 ; 2 uses
  store ptr %i.cz, ptr %.sroa.952.8..sroa_idx217, align 8, !tbaa !40, !alias.scope !245
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !41, !noalias !245
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !41, !alias.scope !245
  store ptr null, ptr %i.cy, align 8, !tbaa !40, !noalias !245
  store ptr null, ptr %i.da, align 8, !tbaa !41, !noalias !245
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !43, !noalias !245
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.cx)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.cv, align 8, !tbaa !39, !noalias !245
  %.pre108 = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.df = icmp eq ptr %.pre108, null
  br label %AfterCoroSave170

bb.m:                                             ; preds = %.thread74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.952.8..sroa_idx217, i8 0, i64 24, i1 false), !alias.scope !245
  br label %AfterCoroSave170

bb.n:                                             ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  tail call void @__clang_call_terminate(ptr %i.dh) #26
  unreachable

AfterCoroSave170:                                 ; preds = %bb.m, %bb.l
  %i.di = phi i1 [ true, %bb.m ], [ %i.df, %bb.l ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !46, !noalias !245 ; 2 uses
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !46, !alias.scope !245
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.dl, align 8, !tbaa !46, !noalias !245
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.dp = load i64, ptr %i.dk, align 8, !tbaa !47, !noalias !245 ; 2 uses
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !47, !alias.scope !245
  store ptr null, ptr %i.dk, align 8, !tbaa !47, !noalias !245
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dr = load ptr, ptr %i.dj, align 8, !tbaa !61, !noalias !245, !nonnull !62, !align !63
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !64, !alias.scope !245
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr252, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.di, label %bb.p, label %bb.o

bb.o:                                             ; preds = %AfterCoroSave170
  %i.dt = load ptr, ptr %.sroa.952.8..sroa_idx217, align 8, !tbaa !40 ; 2 uses
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !40
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !108
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.q

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.o
  %.pre109 = load ptr, ptr %i.a, align 8, !tbaa !46
  %.pre110 = load ptr, ptr %i.do, align 8, !tbaa !47
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.p:                                             ; preds = %AfterCoroSave170
  %i.dz = inttoptr i64 %i.dp to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #26
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.p
  %i.ec = phi ptr [ %.pre110, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.dz, %bb.p ] ; 2 uses
  %i.ed = phi ptr [ %.pre109, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.dm, %bb.p ]
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !46
  store ptr null, ptr %i.do, align 8, !tbaa !47
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr nonnull %0)
          to label %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i unwind label %bb.r, !inline_history !4

bb.r:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #26
  unreachable

_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i: ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !109 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i2, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !110
  %i.em = icmp eq i32 %i.el, 3
  br i1 %i.em, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.ek, align 4, !tbaa !110
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.t ], [ %i.ec, %bb.s ], [ %i.ec, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !39
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !111
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ev = load ptr, ptr %.sroa.03.0.i.i, align 8
  musttail call void %i.ev(ptr nonnull %.sroa.03.0.i.i)
  ret void

bb.y:                                             ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

CoroEnd:                                          ; preds = %bb.e
  ret void

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr252, align 8
  resume { ptr, i32 } %i.ew

bb.aa:                                            ; preds = %bb.y
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  tail call void @__clang_call_terminate(ptr %i.ey) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy(ptr noundef nonnull align 8 dereferenceable(368) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %AfterCoroSuspend, label %AfterCoroSuspend172, !prof !139

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.pre105 = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.b = icmp eq ptr %.pre105, null
  br i1 %i.b, label %.loopexit75, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br label %.loopexit75

AfterCoroSuspend172:                              ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %.not2.i.i = icmp eq ptr %i.d, null
  br i1 %.not2.i.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %AfterCoroSuspend172
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.f, null
  br i1 %.not.i.i39, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 4, !tbaa !110
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr nonnull %i.d)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.g, !inline_history !5

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.f, %bb.e, %AfterCoroSuspend172
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit75, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %.loopexit75 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

.loopexit75:                                      ; preds = %AfterCoroSuspend, %bb.a, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 3 uses
  %.not2.i.i40 = icmp eq ptr %i.y, null
  br i1 %.not2.i.i40, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42, label %bb.j

bb.j:                                             ; preds = %.loopexit75
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i41, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !110
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.x, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr nonnull %i.y)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42 unwind label %bb.o, !inline_history !5

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42: ; preds = %bb.n, %bb.m, %.loopexit75
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %bb.p, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47 ; 3 uses
  %.not2.i = icmp eq ptr %i.at, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !109 ; 2 uses
  %.not.i43 = icmp eq ptr %i.av, null
  br i1 %.not.i43, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !110
  %i.ax = icmp eq i32 %i.aw, 3
  br i1 %i.ax, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.as, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr nonnull %i.at)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.w, !inline_history !5

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.v, %bb.u, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !111
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(56) %i.bh)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.x
  %i.bn = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bn, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 -24
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bo = add i64 %.sroa.4.0.copyload.i, 32
  %i.bp = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, ptr noundef nonnull %i.bn, i64 noundef %i.bo, i64 noundef 16)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv.exit unwind label %bb.z, !inline_history !6

bb.z:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.resume(ptr noundef nonnull align 8 dereferenceable(368) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.0:
  %1 = alloca %"class.boost::asio::any_io_executor", align 8 ; 9 uses
  %.sroa.10 = alloca [12 x i8], align 4           ; 2 uses
  %.reload.addr252 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr254 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.reload.addr255 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %.059.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.sroa.1053.8..sroa_idx220 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %.sroa.10.8..sroa_idx219 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %index.addr257 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !260 ; 2 uses
  %.not.i.i3270 = icmp eq ptr %i.h, null
  br i1 %.not.i.i3270, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.a:                                             ; preds = %bb.i, %.loopexit, %.critedge.i
  %.reload = load ptr, ptr %.reload.addr233, align 8, !tbaa !113 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !118
  %i.k = add i64 %i.j, %i.aq
  store i64 %i.k, ptr %i.i, align 8, !tbaa !118
  store i64 %i.ar, ptr %.059.reload.addr, align 8
  %.sroa.2.0..sroa_idx.i.i.i216 = getelementptr inbounds nuw i8, ptr %.reload, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %.reload, i64 40
  %.sroa.22.0..sroa_idx.i.i.i211 = getelementptr inbounds nuw i8, ptr %.reload, i64 32
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i211, align 8, !tbaa !67, !noalias !261 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !69, !noalias !261 ; 3 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i216, align 8, !tbaa !67, !noalias !261 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %bb.a
  %i.m = add i64 %.sroa.2.0.copyload.i.i.i, 1     ; 2 uses
  %i.n = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %i.n, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %bb.a
  %.pre108 = load ptr, ptr %i.d, align 8, !tbaa !72
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us29.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.t, %.cont.us.i.i ]
  %.sroa.11.0.us28.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.u, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.o = icmp eq i64 %.sroa.11.0.us28.i.i, -1
  br i1 %i.o, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !74
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.q = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.r = add i64 %i.q, %.0.us29.i.i
  %i.s = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.s, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !74
  %i.t = add i64 %.else.val.us.i.i.1, %i.r        ; 3 uses
  %i.u = add i64 %.sroa.11.0.us28.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !254

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.v = and i64 %.sroa.2.0.copyload.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us29.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.t, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us28.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.u, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod231 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.w = icmp eq i64 %.sroa.11.0.us28.i.i.epil.init, -1
  br i1 %i.w, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !74
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.y = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.z = add i64 %i.y, %.0.us29.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa201 = phi i64 [ %i.t, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.z, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa201, 0
  %.pre109 = load ptr, ptr %i.d, align 8, !tbaa !72 ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i30 = icmp eq ptr %.pre109, null
  br i1 %.not.i.i30, label %.thread64, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre109, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !80
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread64, label %.thread.thread.thread

.thread64:                                        ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.reload, i64 8
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.f, align 8, !tbaa !28
  store ptr %i.ad, ptr %.reload.addr254, align 8
  store ptr %.sroa.0.0.copyload.i.i31, ptr %i.e, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr252, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr254)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread64
  %i.ae = load ptr, ptr %.reload.addr252, align 8, !tbaa !90, !nonnull !62, !align !63 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr nonnull %i.c)
          to label %bb.d unwind label %.body.from.196, !inline_history !1

bb.d:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ah = load i8, ptr %i.g, align 8, !tbaa !91, !range !92, !noundef !62
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.backedge, label %bb.e

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !260 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i32, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %index.addr257, align 8
  %i.ak = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr252, ptr nonnull %0) #25
  br i1 %i.ak, label %CoroEnd, label %.backedge

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199: ; preds = %.thread64
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.196:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.g, %.body.from.194, %.body.from.196
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %.body.from.196 ], [ %i.ao, %.body.from.194 ], [ %i.ao, %bb.g ] ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %.backedge, %resume.0
  %.lcssa7 = phi ptr [ %i.h, %resume.0 ], [ %i.aj, %.backedge ]
  store ptr %.lcssa7, ptr %.reload.addr255, align 8, !tbaa !93, !noalias !260
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr255) #25, !noalias !260
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr255) #28
          to label %bb.f unwind label %bb.g, !noalias !260

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ap = load ptr, ptr %.reload.addr255, align 8, !tbaa !93, !noalias !260
  %.not.i2.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.194

.body.from.194:                                   ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr255) #25, !noalias !260
  br label %.body

.lr.ph71:                                         ; preds = %resume.0, %.backedge
  %.059.reload = load i64, ptr %.059.reload.addr, align 8, !tbaa !113
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !260 ; 6 uses
  %.sroa.7.8.copyload = load i32, ptr %i.b, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.8..sroa_idx219, i64 12, i1 false)
  %.sroa.1053.8.copyload = load i64, ptr %.sroa.1053.8..sroa_idx220, align 8, !tbaa !67 ; 3 uses
  %i.ar = add i64 %i.aq, %.059.reload             ; 4 uses
  %i.as = and i64 %.sroa.1053.8.copyload, 1
  %.not.i.i35 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i35, label %_ZNK5boost6system10error_codecvbEv.exit.thread66, label %bb.h

bb.h:                                             ; preds = %.lr.ph71
  %i.at = icmp ne i64 %.sroa.1053.8.copyload, 1
  %i.au = icmp ne i32 %.sroa.7.8.copyload, 0
  %or.cond = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond, label %.thread71, label %_ZNK5boost6system10error_codecvbEv.exit.thread66

.thread71:                                        ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %.sroa.7.8.copyload, ptr %i.ay, align 8
  %.sroa.248.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.248.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  %.sroa.248.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %.sroa.1053.8.copyload, ptr %.sroa.248.sroa.3.0..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.ax, align 8, !tbaa !91
  br label %.thread76

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199
  %.pn = phi { ptr, i32 } [ %i.al, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.016 = extractvalue { ptr, i32 } %.pn, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %.016) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread66: ; preds = %bb.h, %.lr.ph71
  %.reload234 = load ptr, ptr %.reload.addr233, align 8, !tbaa !113 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i215 = getelementptr inbounds nuw i8, ptr %.reload234, i64 32 ; 4 uses
  %i.ba = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74 ; 3 uses
  %i.bb = icmp ult i64 %i.aq, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread66
  %i.bc = getelementptr inbounds nuw i8, ptr %.reload234, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !97
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.aq
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !97
  %i.bf = sub nuw i64 %i.ba, %i.aq
  store i64 %i.bf, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74
  br label %bb.a

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread66
  %.sroa.2.0..sroa_idx.i.i.i218 = getelementptr inbounds nuw i8, ptr %.reload234, i64 48 ; 2 uses
  %i.bg = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i218, align 8, !tbaa !99 ; 4 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.reload234, i64 40 ; 2 uses
  %i.bi = sub nuw i64 %i.aq, %i.ba                ; 3 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !101 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !74 ; 2 uses
  %i.bm = icmp ugt i64 %i.bi, %i.bl
  br i1 %i.bm, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i193 = icmp eq i64 %i.bg, 1
  br i1 %exitcond.not.i193, label %.loopexit, label %.from.200.lr.ph, !llvm.loop !255

.from.200.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.200, !llvm.loop !255

.lr.ph:                                           ; preds = %.from.200
  %i.bn = add nuw i64 %i.bo, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %i.bg
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.200, !llvm.loop !255

.from.200:                                        ; preds = %.from.200.lr.ph, %.lr.ph
  %i.bo = phi i64 [ 1, %.from.200.lr.ph ], [ %i.bn, %.lr.ph ] ; 3 uses
  %.018.i63195 = phi i64 [ %i.bi, %.from.200.lr.ph ], [ %i.bq, %.lr.ph ]
  %.01217.i64194 = phi i64 [ 0, %.from.200.lr.ph ], [ %i.bo, %.lr.ph ]
  %i.bp = phi i64 [ %i.bl, %.from.200.lr.ph ], [ %i.bt, %.lr.ph ]
  %i.bq = sub nuw i64 %.018.i63195, %i.bp         ; 3 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !74 ; 2 uses
  %i.bu = icmp ugt i64 %i.bq, %i.bt
  br i1 %i.bu, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !255

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !255

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.reload234, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i8 0, i64 32, i1 false)
  %.reload244 = load ptr, ptr %.reload.addr233, align 8, !tbaa !113
  %i.bw = getelementptr inbounds nuw i8, ptr %.reload244, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i8 0, i64 16, i1 false)
  br label %bb.a

.critedge.i.loopexit:                             ; preds = %.from.200
  %i.bx = add i64 %.01217.i64194, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.bi, %.from..lr.ph.i ], [ %i.bq, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.bx, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.bj, %.from..lr.ph.i ], [ %i.br, %.critedge.i.loopexit ]
  %i.by = getelementptr inbounds nuw i8, ptr %.reload234, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i64 16, i1 false), !tbaa.struct !102
  %i.bz = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.bz) ; 2 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !97
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %..i14.i
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !97
  %i.cc = sub i64 %i.bz, %..i14.i
  store i64 %i.cc, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74
  %i.cd = sub i64 %i.bg, %.01217.i.lcssa
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.01217.i.lcssa
  store ptr %i.ce, ptr %i.bh, align 8, !tbaa !69
  store i64 %i.cd, ptr %.sroa.2.0..sroa_idx.i.i.i218, align 8, !tbaa !67
  br label %bb.a

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %i.cf = phi ptr [ %.pre108, %.thread.from...thread_crit_edge ], [ %.pre109, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i37, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !80
  %i.cg = icmp eq i32 %.pre, 0
  br i1 %i.cg, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.c, %.thread.thread
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !107, !noalias !262
  %i.ci = and i64 %i.ch, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.ci, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.cj = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !18, !noalias !262
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !262
  %i.cm = tail call noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !262, !inline_history !3
  br i1 %i.cm, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %.thread.thread.thread, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.cn = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i64 %i.ar, ptr %i.cp, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 125, ptr %i.cr, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !16
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.cn, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.cq, align 8, !tbaa !91
  br label %.thread76

.critedge:                                        ; preds = %.thread.thread, %.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !96, !nonnull !62, !align !63 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store i64 %i.ar, ptr %i.ct, align 8, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cu, align 8, !tbaa !91
  br label %.thread76

.thread76:                                        ; preds = %.critedge, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread71
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !34, !noalias !263
  store i64 %i.cx, ptr %.reload.addr252, align 8, !tbaa !34, !alias.scope !263
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !39, !noalias !263
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i39, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread76
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !40, !noalias !263 ; 2 uses
  store ptr %i.dc, ptr %.sroa.1053.8..sroa_idx220, align 8, !tbaa !40, !alias.scope !263
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !41, !noalias !263
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.de, ptr %i.df, align 8, !tbaa !41, !alias.scope !263
  store ptr null, ptr %i.db, align 8, !tbaa !40, !noalias !263
  store ptr null, ptr %i.dd, align 8, !tbaa !41, !noalias !263
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !43, !noalias !263
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.da)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.cy, align 8, !tbaa !39, !noalias !263
  %.pre107 = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.di = icmp eq ptr %.pre107, null
  br label %AfterCoroSave172

bb.m:                                             ; preds = %.thread76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1053.8..sroa_idx220, i8 0, i64 24, i1 false), !alias.scope !263
  br label %AfterCoroSave172

bb.n:                                             ; preds = %bb.k
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  tail call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable

AfterCoroSave172:                                 ; preds = %bb.m, %bb.l
  %i.dl = phi i1 [ true, %bb.m ], [ %i.di, %bb.l ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !46, !noalias !263 ; 2 uses
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !46, !alias.scope !263
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.do, align 8, !tbaa !46, !noalias !263
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ds = load i64, ptr %i.dn, align 8, !tbaa !47, !noalias !263 ; 2 uses
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !47, !alias.scope !263
  store ptr null, ptr %i.dn, align 8, !tbaa !47, !noalias !263
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !61, !noalias !263, !nonnull !62, !align !63
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !64, !alias.scope !263
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr257, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.dl, label %bb.p, label %bb.o

bb.o:                                             ; preds = %AfterCoroSave172
  %i.dw = load ptr, ptr %.sroa.1053.8..sroa_idx220, align 8, !tbaa !40 ; 2 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !108
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.q

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.o
  %.pre110 = load ptr, ptr %i.a, align 8, !tbaa !46
  %.pre111 = load ptr, ptr %i.dr, align 8, !tbaa !47
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.p:                                             ; preds = %AfterCoroSave172
  %i.ec = inttoptr i64 %i.ds to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #26
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.p
  %i.ef = phi ptr [ %.pre111, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.ec, %bb.p ] ; 2 uses
  %i.eg = phi ptr [ %.pre110, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.dp, %bb.p ]
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !46
  store ptr null, ptr %i.dr, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr nonnull %0)
          to label %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i unwind label %bb.r, !inline_history !4

bb.r:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #26
  unreachable

_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i: ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !109 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.en, null
  br i1 %.not.i.i2, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !110
  %i.ep = icmp eq i32 %i.eo, 3
  br i1 %i.ep, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.en, align 4, !tbaa !110
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.t ], [ %i.ef, %bb.s ], [ %i.ef, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !39
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !111
  invoke void %i.ev(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #26
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ey = load ptr, ptr %.sroa.03.0.i.i, align 8
  musttail call void %i.ey(ptr nonnull %.sroa.03.0.i.i)
  ret void

bb.y:                                             ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

CoroEnd:                                          ; preds = %bb.e
  ret void

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr257, align 8
  resume { ptr, i32 } %i.ez

bb.aa:                                            ; preds = %bb.y
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  tail call void @__clang_call_terminate(ptr %i.fb) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy(ptr noundef nonnull align 8 dereferenceable(368) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %AfterCoroSuspend, label %AfterCoroSuspend174, !prof !139

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.pre107 = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.b = icmp eq ptr %.pre107, null
  br i1 %i.b, label %.loopexit77, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br label %.loopexit77

AfterCoroSuspend174:                              ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %.not2.i.i = icmp eq ptr %i.d, null
  br i1 %.not2.i.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %AfterCoroSuspend174
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.f, null
  br i1 %.not.i.i40, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 4, !tbaa !110
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr nonnull %i.d)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.g, !inline_history !5

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.f, %bb.e, %AfterCoroSuspend174
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit77, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %.loopexit77 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

.loopexit77:                                      ; preds = %AfterCoroSuspend, %bb.a, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 3 uses
  %.not2.i.i41 = icmp eq ptr %i.y, null
  br i1 %.not2.i.i41, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43, label %bb.j

bb.j:                                             ; preds = %.loopexit77
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i42, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !110
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.x, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr nonnull %i.y)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43 unwind label %bb.o, !inline_history !5

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43: ; preds = %bb.n, %bb.m, %.loopexit77
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %bb.p, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47 ; 3 uses
  %.not2.i = icmp eq ptr %i.at, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !109 ; 2 uses
  %.not.i44 = icmp eq ptr %i.av, null
  br i1 %.not.i44, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !110
  %i.ax = icmp eq i32 %i.aw, 3
  br i1 %i.ax, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.as, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr nonnull %i.at)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.w, !inline_history !5

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.v, %bb.u, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !111
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(56) %i.bh)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.x
  %i.bn = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bn, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 -24
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bo = add i64 %.sroa.4.0.copyload.i, 32
  %i.bp = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, ptr noundef nonnull %i.bn, i64 noundef %i.bo, i64 noundef 16)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv.exit unwind label %bb.z, !inline_history !6

bb.z:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  ret void
}

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !75}
!1 = distinct !{null}
!2 = distinct !{!2, !75}
!3 = distinct !{null, null, null, null, null, null, null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{!"vtable pointer", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !12, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!22 = !{!"long", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !22, i64 8, !12, i64 16}
!24 = !{!23, !20, i64 0}
!25 = !{!"p1 _ZTSN5boost6system14error_categoryE", !19, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTSNSt3pmr15memory_resourceE", !19, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTSSt4pairIPNSt3pmr15memory_resourceEmE", !27, i64 0, !22, i64 8}
!30 = !{!29, !27, i64 0}
!31 = !{!29, !22, i64 8}
!32 = !{!"any p2 pointer", !19, i64 0}
!33 = !{!"p2 _ZTSN5boost4asio6detail25cancellation_handler_baseE", !32, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"_ZTSN5boost4asio15aligned_storageILm24ELm8EE4typeE", !12, i64 0}
!36 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base10object_fnsE", !19, i64 0}
!37 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base10target_fnsE", !19, i64 0}
!38 = !{!"_ZTSN5boost4asio9execution6detail17any_executor_baseE", !35, i64 0, !36, i64 24, !19, i64 32, !37, i64 40}
!39 = !{!38, !19, i64 32}
!40 = !{!38, !36, i64 24}
!41 = !{!38, !37, i64 40}
!42 = !{!"_ZTSN5boost4asio9execution6detail17any_executor_base10object_fnsE", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!43 = !{!42, !19, i64 16}
!44 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base8prop_fnsINS1_12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS2_8blocking7never_tILi0EEENS1_11prefer_onlyINSA_10possibly_tILi0EEEEENSD_INS2_16outstanding_work9tracked_tILi0EEEEENSD_INSH_11untracked_tILi0EEEEENSD_INS2_12relationship6fork_tILi0EEEEENSD_INSO_14continuation_tILi0EEEEEEEEEE", !19, i64 0}
!45 = !{!"_ZTSN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEEE", !38, i64 0, !44, i64 48}
!46 = !{!45, !44, i64 48}
!47 = !{!19, !19, i64 0}
!48 = !{!"_ZTSN5boost4asio17cancellation_slotE", !33, i64 0}
!49 = !{!"_ZTSN5boost4asio15any_io_executorE", !45, i64 0}
!50 = !{!"_ZTSNSt3pmr21polymorphic_allocatorIvEE", !27, i64 0}
!51 = !{!"_ZTSN5boost6cobalt6detail23completion_handler_baseE", !48, i64 0, !49, i64 8, !50, i64 64, !19, i64 72}
!52 = !{!"_ZTSSt10_Head_baseILm0EPvLb0EE", !19, i64 0}
!53 = !{!"_ZTSSt11_Tuple_implILm0EJPvN5boost6cobalt13unique_handleIvE8deleter_EEE", !52, i64 0}
!54 = !{!"_ZTSSt5tupleIJPvN5boost6cobalt13unique_handleIvE8deleter_EEE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_implIvN5boost6cobalt13unique_handleIvE8deleter_EE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_dataIvN5boost6cobalt13unique_handleIvE8deleter_ELb1ELb1EE", !55, i64 0}
!57 = !{!"_ZTSSt10unique_ptrIvN5boost6cobalt13unique_handleIvE8deleter_EE", !56, i64 0}
!58 = !{!"_ZTSN5boost6cobalt13unique_handleIvEE", !57, i64 0}
!59 = !{!"p1 _ZTSSt8optionalISt5tupleIJN5boost6system10error_codeEmEEE", !19, i64 0}
!60 = !{!"_ZTSN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEE", !51, i64 0, !58, i64 80, !59, i64 88}
!61 = !{!60, !59, i64 88}
!62 = !{}
!63 = !{i64 8}
!64 = !{!59, !59, i64 0}
!65 = !{!"_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.Frame Slot", !11, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!22, !22, i64 0}
!68 = !{!"p1 _ZTSN5boost4asio14mutable_bufferE", !19, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 _ZTSN5boost4asio18cancellation_state9impl_baseE", !19, i64 0}
!71 = !{!"_ZTSN5boost4asio18cancellation_stateE", !70, i64 0}
!72 = !{!71, !70, i64 0}
!73 = !{!"_ZTSN5boost4asio14mutable_bufferE", !19, i64 0, !22, i64 8}
!74 = !{!73, !22, i64 8}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"p1 _ZTSN5boost4asio6detail25cancellation_handler_baseE", !19, i64 0}
!77 = !{!"_ZTSN5boost4asio19cancellation_signalE", !76, i64 0}
!78 = !{!"_ZTSN5boost4asio17cancellation_typeE", !12, i64 0}
!79 = !{!"_ZTSN5boost4asio18cancellation_state9impl_baseE", !77, i64 0, !78, i64 8}
!80 = !{!79, !78, i64 8}
!81 = !{!"p1 _ZTSN5boost6cobalt2opIJNS_6system10error_codeEmEEE", !19, i64 0}
!82 = !{!"bool", !12, i64 0}
!83 = !{!"_ZTSSt22_Optional_payload_baseISt5tupleIJN5boost6system10error_codeEmEEE", !12, i64 0, !82, i64 32}
!84 = !{!"_ZTSSt17_Optional_payloadISt5tupleIJN5boost6system10error_codeEmEELb1ELb0ELb0EE", !83, i64 0}
!85 = !{!"_ZTSSt14_Optional_baseISt5tupleIJN5boost6system10error_codeEmEELb1ELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt8optionalISt5tupleIJN5boost6system10error_codeEmEEE", !85, i64 0}
!87 = !{!"_ZTSN5boost6cobalt6detail23completed_immediately_tE", !12, i64 0}
!88 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !19, i64 0}
!89 = !{!"_ZTSN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_baseE", !81, i64 0, !86, i64 8, !87, i64 48, !88, i64 56, !27, i64 64}
!90 = !{!89, !81, i64 0}
!91 = !{!83, !82, i64 32}
!92 = !{i8 0, i8 2}
!93 = !{!88, !19, i64 0}
!94 = !{!"_ZTSN5boost6cobalt25promise_cancellation_baseINS_4asio17cancellation_slotENS2_19cancellation_filterILNS2_17cancellation_typeE7EEEEE", !48, i64 0, !71, i64 8}
!95 = !{!"_ZTSN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEE", !94, i64 0, !60, i64 16}
!96 = !{!95, !59, i64 104}
!97 = !{!73, !19, i64 0}
!98 = !{!"_ZTSNSt8__detail16__extent_storageILm18446744073709551615EEE", !22, i64 0}
!99 = !{!98, !22, i64 0}
!100 = !{!"_ZTSSt4spanIKN5boost4asio14mutable_bufferELm18446744073709551615EE", !68, i64 0, !98, i64 8}
!101 = !{!100, !68, i64 0}
!102 = !{i64 0, i64 8, !47, i64 8, i64 8, !67}
!103 = !{!"long long", !12, i64 0}
!104 = !{!"_ZTSSt13__atomic_baseIjE", !13, i64 0}
!105 = !{!"_ZTSSt6atomicIjE", !104, i64 0}
!106 = !{!"_ZTSN5boost6system14error_categoryE", !103, i64 8, !12, i64 16, !105, i64 48}
!107 = !{!106, !103, i64 8}
!108 = !{!42, !19, i64 8}
!109 = !{!51, !19, i64 72}
!110 = !{!87, !87, i64 0}
!111 = !{!42, !19, i64 0}
!112 = !{!"_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.Frame Slot", !11, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"_ZTSN5boost6cobalt2opIJNS_6system10error_codeEmEEE"}
!115 = !{!"_ZTSN5boost6cobalt2io23mutable_buffer_sequenceE", !73, i64 0, !100, i64 16}
!116 = !{!"_ZTSN5boost6cobalt2io10read_at_opE", !114, i64 0, !22, i64 8, !115, i64 16, !19, i64 48, !19, i64 56, !19, i64 64}
!117 = !{!"_ZTSN5boost6cobalt2io11read_all_atE", !114, i64 0, !116, i64 8}
!118 = !{!117, !22, i64 16}
!119 = !{!21, !20, i64 0}
!120 = !{!23, !22, i64 8}
!121 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !19, i64 0}
!122 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !121, i64 0}
!123 = !{!122, !121, i64 0}
!124 = !{!81, !81, i64 0}
!125 = !{!89, !87, i64 48}
!126 = !{!89, !27, i64 64}
!127 = !{!"_ZTSN5boost6cobalt6detail12sbo_resource6block_E", !19, i64 0, !22, i64 8, !22, i64 16, !82, i64 24}
!128 = !{!127, !19, i64 0}
!129 = !{!127, !22, i64 8}
!130 = !{!127, !22, i64 16}
!131 = !{!127, !82, i64 24}
!132 = !{!"_ZTSNSt3pmr15memory_resourceE"}
!133 = !{!"_ZTSN5boost6cobalt6detail12sbo_resourceE", !132, i64 0, !127, i64 8, !27, i64 40}
!134 = !{!133, !27, i64 40}
!135 = !{!133, !19, i64 8}
!136 = !{!133, !22, i64 24}
!137 = !{!133, !22, i64 16}
!138 = !{i64 0, i64 16, !16, i64 16, i64 8, !67}
!139 = !{!"branch_weights", i32 -215494040, i32 1667220039}
!140 = distinct !{null, null}
!141 = distinct !{!141, !"_ZN5boost4asio21buffer_sequence_beginINS_6cobalt2io23mutable_buffer_sequenceEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE"}
!142 = distinct !{!142, !141, !"_ZN5boost4asio21buffer_sequence_beginINS_6cobalt2io23mutable_buffer_sequenceEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE: argument 0"}
!143 = distinct !{!143, !"_ZNK5boost6cobalt2io23mutable_buffer_sequence5beginEv"}
!144 = distinct !{!144, !143, !"_ZNK5boost6cobalt2io23mutable_buffer_sequence5beginEv: argument 0"}
!145 = distinct !{!145, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEE12await_resumeEv"}
!146 = distinct !{!146, !145, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEE12await_resumeEv: argument 0"}
!147 = distinct !{!147, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE"}
!148 = distinct !{!148, !147, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE: argument 0"}
!149 = distinct !{!149, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!150 = distinct !{!150, !149, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!151 = distinct !{!151, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE13final_suspendEv"}
!152 = distinct !{!152, !151, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE13final_suspendEv: argument 0"}
!153 = !{!144, !142}
!154 = !{!148, !146}
!155 = !{!150}
!156 = !{!152}
!157 = distinct !{null, null}
!158 = distinct !{!158, !"_ZN5boost4asio21buffer_sequence_beginINS_6cobalt2io23mutable_buffer_sequenceEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE"}
!159 = distinct !{!159, !158, !"_ZN5boost4asio21buffer_sequence_beginINS_6cobalt2io23mutable_buffer_sequenceEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE: argument 0"}
!160 = distinct !{!160, !"_ZNK5boost6cobalt2io23mutable_buffer_sequence5beginEv"}
!161 = distinct !{!161, !160, !"_ZNK5boost6cobalt2io23mutable_buffer_sequence5beginEv: argument 0"}
!162 = distinct !{!162, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEE12await_resumeEv"}
!163 = distinct !{!163, !162, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEE12await_resumeEv: argument 0"}
!164 = distinct !{!164, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE"}
!165 = distinct !{!165, !164, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE: argument 0"}
!166 = distinct !{!166, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!167 = distinct !{!167, !166, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!168 = distinct !{!168, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE13final_suspendEv"}
!169 = distinct !{!169, !168, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE13final_suspendEv: argument 0"}
!170 = !{!161, !159}
!171 = !{!165, !163}
!172 = !{!167}
!173 = !{!169}
!174 = !{!"_ZTSN5boost6system15error_conditionE", !13, i64 0, !25, i64 8}
!175 = !{!174, !13, i64 0}
!176 = !{!174, !25, i64 8}
!177 = !{!"_ZTSN5boost6system10error_codeE", !12, i64 0, !22, i64 16}
!178 = !{!177, !22, i64 16}
!179 = !{!"p1 _ZTSNSt3_V214error_categoryE", !19, i64 0}
!180 = !{!"_ZTSSt10error_code", !13, i64 0, !179, i64 8}
!181 = !{!180, !179, i64 8}
!182 = distinct !{!182, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei"}
!183 = distinct !{!183, !182, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei: argument 0"}
!184 = distinct !{!184, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei"}
!185 = distinct !{!185, !184, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei: argument 0"}
!186 = !{!183}
!187 = !{!185}
!188 = !{!185, !183}
!189 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!190 = !{!"_ZTSN5boost9exceptionE", !122, i64 8, !20, i64 16, !20, i64 24, !13, i64 32, !13, i64 36}
!191 = !{!190, !13, i64 32}
!192 = !{!190, !13, i64 36}
!193 = distinct !{ptr @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEEC2ERKS4_, null}
!194 = distinct !{null}
!195 = !{ptr @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEEC2ERKS4_}
!196 = distinct !{null}
!197 = distinct !{null}
!198 = !{!20, !20, i64 0}
!199 = !{!13, !13, i64 0}
!200 = distinct !{!200, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv"}
!201 = distinct !{!201, !200, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv: argument 0"}
!202 = distinct !{!202, !"_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE"}
!203 = distinct !{!203, !202, !"_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE: argument 0"}
!204 = !{!"p1 _ZTSN5boost6cobalt2io7read_opE", !19, i64 0}
!205 = !{!"_ZTSZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL0p_onawE16replace_resourcefL0p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_E12replacing_op", !204, i64 0, !27, i64 8}
!206 = !{!205, !204, i64 0}
!207 = !{!201}
!208 = !{!205, !27, i64 8}
!209 = !{!203}
!210 = distinct !{null}
!211 = !{!"branch_weights", i32 4001, i32 4000000}
!212 = !{!"branch_weights", i32 4000000, i32 4001}
!213 = !{!133, !82, i64 32}
!214 = distinct !{!214, !"_ZN5boost6cobalt6detail12get_executorINS1_19composition_promiseIJNS_6system10error_codeEmEEEEENS_4asio15any_io_executorENSt7__n486116coroutine_handleIT_EE"}
!215 = distinct !{!215, !214, !"_ZN5boost6cobalt6detail12get_executorINS1_19composition_promiseIJNS_6system10error_codeEmEEEEENS_4asio15any_io_executorENSt7__n486116coroutine_handleIT_EE: argument 0"}
!216 = !{!215}
!217 = !{!50, !27, i64 0}
!218 = distinct !{!218, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv"}
!219 = distinct !{!219, !218, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv: argument 0"}
!220 = distinct !{!220, !"_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE"}
!221 = distinct !{!221, !220, !"_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE: argument 0"}
!222 = !{!"p1 _ZTSN5boost6cobalt2io10read_at_opE", !19, i64 0}
!223 = !{!"_ZTSZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL0p_onawE16replace_resourcefL0p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_E12replacing_op", !222, i64 0, !27, i64 8}
!224 = !{!223, !222, i64 0}
!225 = !{!219}
!226 = !{!223, !27, i64 8}
!227 = !{!221}
!228 = distinct !{!228, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEE12await_resumeEv"}
!229 = distinct !{!229, !228, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEE12await_resumeEv: argument 0"}
!230 = distinct !{!230, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE"}
!231 = distinct !{!231, !230, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE: argument 0"}
!232 = distinct !{!232, !"_ZN5boost4asio21buffer_sequence_beginINS_6cobalt2io23mutable_buffer_sequenceEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE"}
!233 = distinct !{!233, !232, !"_ZN5boost4asio21buffer_sequence_beginINS_6cobalt2io23mutable_buffer_sequenceEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE: argument 0"}
!234 = distinct !{!234, !"_ZNK5boost6cobalt2io23mutable_buffer_sequence5beginEv"}
!235 = distinct !{!235, !234, !"_ZNK5boost6cobalt2io23mutable_buffer_sequence5beginEv: argument 0"}
!236 = distinct !{!236, !75}
!237 = distinct !{!237, !75}
!238 = distinct !{!238, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!239 = distinct !{!239, !238, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!240 = distinct !{!240, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE13final_suspendEv"}
!241 = distinct !{!241, !240, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE13final_suspendEv: argument 0"}
!242 = !{!231, !229}
!243 = !{!235, !233}
!244 = !{!239}
!245 = !{!241}
!246 = distinct !{!246, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEE12await_resumeEv"}
!247 = distinct !{!247, !246, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEE12await_resumeEv: argument 0"}
!248 = distinct !{!248, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE"}
!249 = distinct !{!249, !248, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE: argument 0"}
!250 = distinct !{!250, !"_ZN5boost4asio21buffer_sequence_beginINS_6cobalt2io23mutable_buffer_sequenceEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE"}
!251 = distinct !{!251, !250, !"_ZN5boost4asio21buffer_sequence_beginINS_6cobalt2io23mutable_buffer_sequenceEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE: argument 0"}
!252 = distinct !{!252, !"_ZNK5boost6cobalt2io23mutable_buffer_sequence5beginEv"}
!253 = distinct !{!253, !252, !"_ZNK5boost6cobalt2io23mutable_buffer_sequence5beginEv: argument 0"}
!254 = distinct !{!254, !75}
!255 = distinct !{!255, !75}
!256 = distinct !{!256, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!257 = distinct !{!257, !256, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!258 = distinct !{!258, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE13final_suspendEv"}
!259 = distinct !{!259, !258, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE13final_suspendEv: argument 0"}
!260 = !{!249, !247}
!261 = !{!253, !251}
!262 = !{!257}
!263 = !{!259}
end_hunk_2
