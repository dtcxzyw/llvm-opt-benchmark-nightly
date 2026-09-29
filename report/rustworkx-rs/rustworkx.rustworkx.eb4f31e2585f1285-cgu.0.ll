Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvMs3W_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_8EdgeList21___pymethod_traverse__:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !inline_history !62858
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtCsi0YPOvDEjiZ_4pyo38internal5state15ForbidAttachingECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.l unwind label %bb.k, !inline_history !62858

bb.k:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtCsi0YPOvDEjiZ_4pyo38internal5state15ForbidAttachingECskcxRuJ53GpR_9rustworkx.exit.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtCsi0YPOvDEjiZ_4pyo38internal5state15ForbidAttachingECskcxRuJ53GpR_9rustworkx.exit23.i, %bb.k
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking19panic_cannot_unwind() #58
  unreachable

bb.l:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtCsi0YPOvDEjiZ_4pyo38internal5state15ForbidAttachingECskcxRuJ53GpR_9rustworkx.exit22.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtCsi0YPOvDEjiZ_4pyo38internal5state15ForbidAttachingECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMs3W_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_8EdgeList22___pymethod___array____(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 11 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.8.i.i = alloca [70 x i8], align 2        ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [72 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1711, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef 2)
  %i.o = load i64, ptr %i.m, align 8, !range !68, !noundef !67
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEEEB1T_.exit47

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.t = invoke noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.s)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  invoke void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.u)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.e

.body.thread:                                     ; preds = %bb.bc, %bb.ax, %bb.av, %bb.x, %bb.e
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.e ], [ %1, %bb.ax ], [ %1, %bb.bc ], [ %1, %bb.x ], [ %1, %bb.av ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %.pn99.ph.i, %bb.ax ], [ %eh.lpad-body.i, %bb.bc ], [ %eh.lpad-body.i, %bb.x ], [ %.pn95.i, %bb.av ] ; 2 uses
  %i.v = icmp eq ptr %.sroa.0.0, null
  br i1 %i.v, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEEEB1T_.exit, label %.body.thread.thread

.body.thread.thread:                              ; preds = %.body, %bb.bf, %.body.thread
  %.pn117 = phi { ptr, i32 } [ %.pn, %.body.thread ], [ %lpad.thr_comm.split-lp, %.body ], [ %lpad.thr_comm, %bb.bf ]
  %.sroa.0.0116 = phi ptr [ %.sroa.0.0, %.body.thread ], [ %1, %.body ], [ %1, %bb.bf ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0116, i64 40
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators8EdgeListEEEB1T_.exit

bb.e:                                             ; preds = %bb.m, %bb.d, %bb.c
  %.sroa.0.1 = phi ptr [ %1, %bb.m ], [ null, %bb.d ], [ null, %bb.c ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.z = load ptr, ptr %i.n, align 8, !noundef !67 ; 4 uses
  %.not.i = icmp eq ptr %i.z, null
  %i.aa = icmp eq ptr %i.z, @_Py_NoneStruct
  %or.cond = or i1 %.not.i, %i.aa
  br i1 %or.cond, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_Py_IncRef(ptr noundef nonnull %i.z) #59, !noalias !62907
  br label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ null, %bb.f ], [ %i.z, %bb.g ] ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !67 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ac, null
  br i1 %.not.i39, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionbEKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.ad = icmp eq ptr %i.ac, @_Py_NoneStruct
  br i1 %i.ad, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionbEKb1_ECskcxRuJ53GpR_9rustworkx.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !62908
  invoke void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull %i.ac)
          to label %.noexc40 unwind label %bb.bf

.noexc40:                                         ; preds = %bb.i
  %i.ae = load i8, ptr %i.i, align 8, !range !69, !noalias !62908, !noundef !67
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionbEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionbEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !69, !noalias !62908, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !62908
  br label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionbEKb1_ECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %.noexc40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8.8..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.8.i.i, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.8.8..sroa_idx1.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 64, i1 false), !noalias !62909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !62908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !62909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 2 dereferenceable(64) %.sroa.8.8..sroa_idx1.i.i, i64 64, i1 false), !noalias !62909
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1670, i64 noundef range(i64 4, 12) 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j)
          to label %bb.k unwind label %bb.bf

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionbEKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 2, ptr %i.ak, align 1
  store i8 0, ptr %i.k, align 8
  br label %bb.o

.body:                                            ; preds = %bb.ba
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionbEKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionbEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.5.14.i.i = phi i8 [ %i.ah, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionbEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 2, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %.sroa.5.14.i.i, ptr %i.al, align 1
  store i8 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false)
  store i64 1, ptr %0, align 8
  %i.ao = icmp eq ptr %.sink.i, null
  br i1 %i.ao, label %bb.bh, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !noundef !67
  %i.aq = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.aq, label %bb.n, label %bb.m, !prof !125

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sink.i)
          to label %bb.bh unwind label %bb.e

bb.n:                                             ; preds = %bb.l
  call void @_Py_DecRef(ptr noundef nonnull %.sink.i) #59
  br label %bb.bh

bb.o:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionbEKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionbEKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !78, !noundef !67
  %i.at = getelementptr i8, ptr %1, i64 24
  %.val36 = load ptr, ptr %i.at, align 8          ; 10 uses
  %i.au = getelementptr i8, ptr %1, i64 32
  %.val37 = load i64, ptr %i.au, align 8          ; 8 uses
  %or.cond4.not.not.i = icmp eq i8 %i.as, 0
  br i1 %or.cond4.not.not.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = icmp ult i64 %.val37, 576460752303423488
  call void @llvm.assume(i1 %i.av)
  %i.aw = shl nuw nsw i64 %.val37, 1              ; 2 uses
  %i.ax = shl nuw nsw i64 %.val37, 4              ; 5 uses
  %i.ay = icmp eq i64 %.val37, 0
  br i1 %i.ay, label %.thread15.thread.i.i, label %bb.q

.thread15.thread.i.i:                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  br label %.thread15.i.i

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !62910
  %i.az = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.ax, i64 noundef range(i64 1, 17) 8) #59, !noalias !62910 ; 9 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.r, label %.lr.ph.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ax) #61
          to label %.noexc.i unwind label %bb.y, !noalias !62911

.noexc.i:                                         ; preds = %bb.r
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val36, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %i.bd = add nsw i64 %i.ax, -16                  ; 2 uses
  %i.be = lshr exact i64 %i.bd, 4
  %i.bf = call i64 @llvm.umin.i64(i64 %.val37, i64 %i.be) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bf, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.bg = lshr exact i64 %i.bd, 4
  %umin = call i64 @llvm.umin.i64(i64 %.val37, i64 %i.bg)
  %i.bh = shl nuw nsw i64 %umin, 4
  %i.bi = add nuw i64 %i.bh, 16                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bi
  %scevgep127 = getelementptr i8, ptr %.val36, i64 %i.bi
  %bound0 = icmp ult ptr %i.az, %scevgep127
  %bound1 = icmp ult ptr %.val36, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 576460752303423486      ; 3 uses
  %i.bj = shl nuw nsw i64 %n.vec, 4
  %i.bk = getelementptr i8, ptr %.val36, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bl = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.val36, i64 %i.bl
  %i.bm = getelementptr i8, ptr %.val36, i64 %i.bl
  %next.gep128 = getelementptr i8, ptr %i.bm, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !62912, !noalias !62913
  %wide.load129 = load <2 x i64>, ptr %next.gep128, align 8, !alias.scope !62912, !noalias !62913
  %.idx = shl i64 %index, 4
  %i.bn = getelementptr i8, ptr %i.az, i64 %.idx
  %.idx131 = shl i64 %index, 4
  %i.bo = getelementptr i8, ptr %i.az, i64 %.idx131
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  store <2 x i64> %wide.load, ptr %i.bn, align 8, !alias.scope !62914, !noalias !62915
  store <2 x i64> %wide.load129, ptr %i.bp, align 8, !alias.scope !62914, !noalias !62915
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !62894

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i
  %.sroa.04.01022.i.i.ph = phi ptr [ %.val36, %vector.memcheck ], [ %.val36, %.lr.ph.i.i ], [ %i.bk, %vector.body ]
  %.sroa.76.021.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.t
  %.sroa.04.01022.i.i = phi ptr [ %i.bv, %bb.t ], [ %.sroa.04.01022.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.76.021.i.i = phi i64 [ %i.bu, %bb.t ], [ %.sroa.76.021.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.76.021.i.i, %.val37
  br i1 %exitcond.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %scalar.ph
  invoke void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60
          to label %.noexc.i.i unwind label %bb.u, !noalias !62913

.noexc.i.i:                                       ; preds = %bb.s
  unreachable

.thread15.i.i:                                    ; preds = %bb.t, %.thread15.thread.i.i
  %.sroa.4.0.i.i2834.i.i = phi i64 [ 0, %.thread15.thread.i.i ], [ %i.aw, %bb.t ]
  %i.br = phi ptr [ inttoptr (i64 8 to ptr), %.thread15.thread.i.i ], [ %i.az, %bb.t ] ; 2 uses
  %i.bs = phi <2 x i64> [ zeroinitializer, %.thread15.thread.i.i ], [ <i64 2, i64 1>, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62913
  store ptr %i.br, ptr %i.c, align 8, !noalias !62913
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !62913
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.4.0.i.i2834.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !62913
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.br, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !62913
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.val37, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !62913
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 2, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !62913
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <2 x i64> %i.bs, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !noalias !62913
  %i.bt = invoke fastcc noundef nonnull ptr @_RNvMs0_NtCs3Tt2PVjAfPX_5numpy5arrayINtB5_7PyArrayjINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimAjj2_EE16from_owned_arrayCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.c)
          to label %bb.z unwind label %bb.y, !noalias !62911 ; 6 uses

bb.t:                                             ; preds = %scalar.ph
  %i.bu = add nuw nsw i64 %.sroa.76.021.i.i, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.01022.i.i, i64 16 ; 2 uses
  %i.bw = load i64, ptr %.sroa.04.01022.i.i, align 8, !noalias !62913, !noundef !67
  %i.bx = shl nuw nsw i64 %.sroa.76.021.i.i, 1    ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.az, i64 %i.bx
  store i64 %i.bw, ptr %i.by, align 8, !noalias !62913
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.01022.i.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !62913, !noundef !67
  %i.cb = getelementptr [8 x i8], ptr %i.bc, i64 %i.bx
  store i64 %i.ca, ptr %i.cb, align 8, !noalias !62913
  %i.cc = icmp eq ptr %i.bv, %i.bb
  br i1 %i.cc, label %.thread15.i.i, label %scalar.ph, !llvm.loop !62895

bb.u:                                             ; preds = %bb.s
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !62916
  br label %bb.x

bb.v:                                             ; preds = %bb.o
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !62911
  %i.cd = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !62911 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.w, label %bb.ay, !prof !104

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc120.i unwind label %bb.y, !noalias !62911

.noexc120.i:                                      ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.u
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cf, %bb.y ], [ %lpad.thr_comm.i.i, %bb.u ] ; 2 uses
  %.not36.i = icmp eq ptr %.sink.i, null
  br i1 %.not36.i, label %.body.thread, label %bb.bc

bb.y:                                             ; preds = %bb.w, %.thread15.i.i, %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %.thread15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !62913
  %.not.i43 = icmp eq ptr %.sink.i, null
  br i1 %.not.i43, label %bb.be, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !62911
  %i.cg = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types6stringNtB2_8PyString3new(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1663, i64 noundef 5)
          to label %.noexc121.i unwind label %bb.ag, !noalias !62911 ; 4 uses

.noexc121.i:                                      ; preds = %bb.aa
  %i.ch = call noundef ptr @PyImport_Import(ptr noundef nonnull %i.cg) #59, !noalias !62917 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %.noexc121.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62918
  invoke void @_RNvMs_NtCsi0YPOvDEjiZ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a)
          to label %bb.ac unwind label %bb.af, !noalias !62917

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i64, ptr %i.a, align 8, !range !68, !noalias !62918, !noundef !67
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.ad, label %bb.ae, !prof !77

bb.ad:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.cl, i64 64, i1 false), !noalias !62918
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b)
          to label %bb.ah unwind label %bb.af, !noalias !62917

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.cg) #59, !noalias !62917
  br label %.thread16.i

bb.ag:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.thread16.i

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62918
  %.sroa.4.8.copyload.i.i = load ptr, ptr %i.b, align 8, !noalias !62918
  %.sroa.8.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load <2 x i64>, ptr %.sroa.8.8..sroa_idx.i.i, align 8
  %.sroa.21.16..sroa.8.8..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cp = load <2 x ptr>, ptr %.sroa.21.16..sroa.8.8..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.23.16..sroa.8.8..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.23.16.copyload60 = load ptr, ptr %.sroa.23.16..sroa.8.8..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.24.16..sroa.8.8..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.24.16.copyload62 = load i64, ptr %.sroa.24.16..sroa.8.8..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.2463.16..sroa.8.8..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cq = load <2 x i32>, ptr %.sroa.2463.16..sroa.8.8..sroa_idx.i.i.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62918
  call void @_Py_DecRef(ptr noundef nonnull %i.cg) #59, !noalias !62917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62911
  %i.cr = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i44 = load i64, ptr %i.cr, align 8, !noalias !62911, !noundef !67
  %i.cs = icmp sgt i64 %.val.i.i.i.i.i44, 0
  br i1 %i.cs, label %bb.aj, label %bb.ai, !prof !125

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sink.i)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.aw, !noalias !62911

bb.aj:                                            ; preds = %bb.ah
  call void @_Py_DecRef(ptr noundef nonnull %.sink.i) #59, !noalias !62911
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit.i

bb.ak:                                            ; preds = %.noexc121.i
  call void @_Py_DecRef(ptr noundef nonnull %i.cg) #59, !noalias !62917
  store ptr %i.ch, ptr %i.h, align 8, !noalias !62911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !62911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !62911
  store ptr @1664, ptr %i.e, align 8, !noalias !62911
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_0
begin_hunk_1_@_RNvMsa_NtNtCskcxRuJ53GpR_9rustworkx12connectivity21johnson_simple_cyclesNtB5_17PySimpleCycleIter21___pymethod___next____:bb.a
  %i.aot = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.val.i.i34.i = load i64, ptr %i.aot, align 8, !alias.scope !73796, !noalias !73595 ; 2 uses
  %i.aou = icmp eq i64 %.val.i.i34.i, 0
  br i1 %i.aou, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i7.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i7.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.aov = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.val1.i.i35.i = load ptr, ptr %i.aov, align 8, !alias.scope !73796, !noalias !73595, !nonnull !67, !noundef !67
  %i.aow = mul nuw i64 %.val.i.i34.i, 20
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i35.i, i64 noundef %i.aow, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !73797
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i7.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBG_3set7HashSetB1g_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.al) #63, !noalias !73595
  br label %bb.fa

bb.fa:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i, %.thread578.i.i
  %.pn60.pn.pn.pn.pn.pn587.i.i = phi { ptr, i32 } [ %i.cl, %.thread578.i.i ], [ %.pn60.pn.pn.pn613.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 3 uses
  %.val73.i.i = load ptr, ptr %i.am, align 8, !noalias !73596 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val74.i.i = load i64, ptr %i.aox, align 8, !noalias !73596, !noundef !67 ; 4 uses
  %i.aoy = icmp eq i64 %.val74.i.i, 0
  br i1 %i.aoy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i: ; preds = %bb.fa
  %i.aoz = shl i64 %.val74.i.i, 2
  %i.apa = icmp slt i64 %.val74.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.apa), !noalias !73793
  %i.apb = and i64 %i.aoz, -16                    ; 2 uses
  %i.apc = add i64 %i.apb, 16                     ; 2 uses
  %i.apd = add nsw i64 %.val74.i.i, 17
  %i.ape = add i64 %i.apd, %i.apc                 ; 4 uses
  %i.apf = icmp uge i64 %i.ape, %i.apc
  %i.apg = icmp ult i64 %i.ape, 9223372036854775793
  call void @llvm.assume(i1 %i.apf), !noalias !73793
  call void @llvm.assume(i1 %i.apg), !noalias !73793
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val73.i.i) ], !noalias !73793
  %i.aph = icmp eq i64 %i.ape, 0
  br i1 %i.aph, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i, label %bb.fb

bb.fb:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i
  %i.api = sub nuw nsw i64 -16, %i.apb
  %i.apj = getelementptr inbounds i8, ptr %.val73.i.i, i64 %i.api
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apj, i64 noundef %i.ape, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !73595
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i: ; preds = %bb.fb, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i, %bb.fa, %.thread570.i.i
  %.pn60.pn.pn.pn.pn.pn.pn577.i.i = phi { ptr, i32 } [ %i.cg, %.thread570.i.i ], [ %.pn60.pn.pn.pn.pn.pn587.i.i, %bb.fa ], [ %.pn60.pn.pn.pn.pn.pn587.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i31.i ], [ %.pn60.pn.pn.pn.pn.pn587.i.i, %bb.fb ] ; 3 uses
  %.val.i.i = load ptr, ptr %i.an, align 8, !noalias !73596 ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val72.i.i = load i64, ptr %i.apk, align 8, !noalias !73596, !noundef !67 ; 4 uses
  %i.apl = icmp eq i64 %.val72.i.i, 0
  br i1 %i.apl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i
  %i.apm = shl i64 %.val72.i.i, 2
  %i.apn = icmp slt i64 %.val72.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.apn), !noalias !73793
  %i.apo = and i64 %i.apm, -16                    ; 2 uses
  %i.app = add i64 %i.apo, 16                     ; 2 uses
  %i.apq = add nsw i64 %.val72.i.i, 17
  %i.apr = add i64 %i.apq, %i.app                 ; 4 uses
  %i.aps = icmp uge i64 %i.apr, %i.app
  %i.apt = icmp ult i64 %i.apr, 9223372036854775793
  call void @llvm.assume(i1 %i.aps), !noalias !73793
  call void @llvm.assume(i1 %i.apt), !noalias !73793
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !73793
  %i.apu = icmp eq i64 %i.apr, 0
  br i1 %i.apu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.fc

bb.fc:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i
  %i.apv = sub nuw nsw i64 -16, %i.apo
  %i.apw = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.apv
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apw, i64 noundef %i.apr, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !73595
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.fc, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i, %.thread.i.i
  %.pn60.pn.pn.pn.pn.pn.pn.pn569.i.i = phi { ptr, i32 } [ %i.cb, %.thread.i.i ], [ %.pn60.pn.pn.pn.pn.pn.pn577.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit32.i ], [ %.pn60.pn.pn.pn.pn.pn.pn577.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i30.i ], [ %.pn60.pn.pn.pn.pn.pn.pn577.i.i, %bb.fc ] ; 2 uses
  %.val114.i.i = load i64, ptr %i.ao, align 8, !noalias !73596 ; 2 uses
  %i.apx = icmp eq i64 %.val114.i.i, 0
  br i1 %i.apx, label %.thread652.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i382.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i382.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.apy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val115.i.i = load ptr, ptr %i.apy, align 8, !noalias !73596, !nonnull !67, !noundef !67
  %i.apz = shl nuw i64 %.val114.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val115.i.i, i64 noundef %i.apz, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !73595
  br label %.thread652.i.i

.thread652.i.i:                                   ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i382.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !73798)
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val.i28.i = load ptr, ptr %i.aqa, align 8, !alias.scope !73798, !noalias !73595, !nonnull !67, !noundef !67 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val1.i.i = load i64, ptr %i.aqb, align 8, !alias.scope !73798, !noalias !73595, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73799), !noalias !73793
  %i.aqc = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aqc, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.thread652.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.aqe, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %.thread652.i.i ] ; 2 uses
  %i.aqd = getelementptr inbounds nuw [72 x i8], ptr %.val.i28.i, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.aqe = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73800), !noalias !73793
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !73801), !noalias !73793
  call void @llvm.experimental.noalias.scope.decl(metadata !73802), !noalias !73793
  call void @llvm.experimental.noalias.scope.decl(metadata !73803), !noalias !73793
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqd, i64 40
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.aqg, align 8, !alias.scope !73804, !noalias !73805, !noundef !67 ; 4 uses
  %i.aqh = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.aqh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i29.i
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqd, i64 32
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.aqi, align 8, !alias.scope !73804, !noalias !73805, !nonnull !67, !noundef !67
  %i.aqj = shl i64 %.val1.i.i.i.i.i.i.i.i, 3
  %i.aqk = icmp slt i64 %.val1.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.aqk), !noalias !73793
  %i.aql = and i64 %i.aqj, -16                    ; 2 uses
  %i.aqm = add i64 %i.aql, 16                     ; 2 uses
  %i.aqn = add nsw i64 %.val1.i.i.i.i.i.i.i.i, 17
  %i.aqo = add i64 %i.aqn, %i.aqm                 ; 3 uses
  %i.aqp = icmp uge i64 %i.aqo, %i.aqm
  call void @llvm.assume(i1 %i.aqp), !noalias !73793
  %i.aqq = icmp ult i64 %i.aqo, 9223372036854775793
  call void @llvm.assume(i1 %i.aqq), !noalias !73793
  %i.aqr = sub nuw nsw i64 -16, %i.aql
  %i.aqs = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.aqr
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqs, i64 noundef %i.aqo, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !73806
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i29.i
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.aqf, align 8, !alias.scope !73804, !noalias !73805 ; 2 uses
  %i.aqt = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.aqt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqd, i64 16
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.aqu, align 8, !alias.scope !73804, !noalias !73805, !nonnull !67, !noundef !67
  %i.aqv = shl nuw i64 %.val2.i.i.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %i.aqv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !73806
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %i.aqw = icmp eq i64 %i.aqe, %.val1.i.i
  br i1 %i.aqw, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i29.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.thread652.i.i
  %.val2.i.i = load i64, ptr %i.ap, align 8, !alias.scope !73798, !noalias !73595 ; 2 uses
  %i.aqx = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aqx, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.aqy = mul nuw i64 %.val2.i.i, 72
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i28.i, i64 noundef %i.aqy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !73805
  br label %.body.i

bb.fd:                                            ; preds = %bb.p, %bb.m
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %bb.fj, %bb.fd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn60.pn.pn.pn.pn.pn.pn.pn569.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i ], [ %.pn60.pn.pn.pn.pn.pn.pn.pn569.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBG_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.aqz, %bb.fd ], [ %i.asm, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %i.asm, %bb.fj ]
  %i.ara = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !73592 ; 0 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.ay) #59, !noalias !73592
  br label %bb.d

bb.fe:                                            ; preds = %bb.ei, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx.exit151.i.i
  %.sroa.11.0.i = phi i64 [ %.sroa.6502.0.copyload.i.i, %bb.ei ], [ %.sroa.6.0.copyload.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx.exit151.i.i ] ; 6 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.5499.0.copyload.i.i, %bb.ei ], [ %.sroa.5.0.copyload.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx.exit151.i.i ] ; 5 uses
  %.sroa.040.0.i = phi i64 [ %i.ahh, %bb.ei ], [ %i.dd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1g_EECskcxRuJ53GpR_9rustworkx.exit151.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !73596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !73596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !73596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !73596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !73596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !73596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !73596
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0459.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.arb = icmp ult i64 %.sroa.11.0.i, 2305843009213693952
  call void @llvm.assume(i1 %i.arb)
  %i.arc = shl nuw i64 %.sroa.11.0.i, 3           ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %.sroa.11.0.i, 1152921504606846975
  br i1 %.not.i.i.i, label %bb.fh, label %bb.ff, !prof !153

bb.ff:                                            ; preds = %bb.fe
  %.idx.i = shl nuw nsw i64 %.sroa.11.0.i, 2
  %i.ard = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %.idx.i
  %i.are = icmp eq i64 %.sroa.11.0.i, 0
  br i1 %i.are, label %._crit_edge.i.i.i.i.i.i23.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.thread1051.i
  %.sroa.040.17710461059.i = phi i64 [ 1, %.thread1051.i ], [ %.sroa.040.0.i, %bb.ff ] ; 3 uses
  %.sroa.7.17610481057.i = phi ptr [ %i.bx, %.thread1051.i ], [ %.sroa.7.0.i, %bb.ff ] ; 10 uses
  %.sroa.11.17510501055.i = phi i64 [ 1, %.thread1051.i ], [ %.sroa.11.0.i, %bb.ff ] ; 2 uses
  %i.arf = phi ptr [ %i.bz, %.thread1051.i ], [ %i.ard, %bb.ff ] ; 2 uses
  %i.arg = phi i64 [ 8, %.thread1051.i ], [ %i.arc, %bb.ff ] ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !73807
  %i.arh = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.arg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !73807 ; 7 uses
  %i.ari = icmp eq ptr %i.arh, null
  br i1 %i.ari, label %bb.fh, label %.lr.ph.i.i.i.i.i.i22.i.preheader

.lr.ph.i.i.i.i.i.i22.i.preheader:                 ; preds = %bb.fg
  %2 = ptrtoaddr ptr %i.arf to i64
  %3 = ptrtoaddr ptr %.sroa.7.17610481057.i to i64
  %i.arj = add i64 %2, -4
  %i.ark = sub i64 %i.arj, %3                     ; 4 uses
  %i.arl = lshr i64 %i.ark, 2
  %i.arm = add nuw nsw i64 %i.arl, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ark, 100
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i22.i.preheader1890, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i22.i.preheader
  %i.arn = shl i64 %i.ark, 1
  %i.aro = and i64 %i.arn, -8
  %i.arp = getelementptr i8, ptr %i.arh, i64 %i.aro
  %scevgep = getelementptr i8, ptr %i.arp, i64 8
  %i.arq = and i64 %i.ark, -4
  %i.arr = getelementptr i8, ptr %.sroa.7.17610481057.i, i64 %i.arq
  %scevgep1887 = getelementptr i8, ptr %i.arr, i64 4
  %bound0 = icmp ult ptr %i.arh, %scevgep1887
  %bound1 = icmp ult ptr %.sroa.7.17610481057.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i22.i.preheader1890, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.arm, 9223372036854775804    ; 5 uses
  %i.ars = shl i64 %n.vec, 2
  %i.art = getelementptr i8, ptr %.sroa.7.17610481057.i, i64 %i.ars
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aru = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.7.17610481057.i, i64 %i.aru ; 2 uses
  %i.arv = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !73808, !noalias !73809
  %wide.load1888 = load <2 x i32>, ptr %i.arv, align 4, !alias.scope !73808, !noalias !73809
  %i.arw = zext <2 x i32> %wide.load to <2 x i64>
  %i.arx = zext <2 x i32> %wide.load1888 to <2 x i64>
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.arh, i64 %index ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  store <2 x i64> %i.arw, ptr %i.ary, align 8, !alias.scope !73810, !noalias !73811
  store <2 x i64> %i.arx, ptr %i.arz, align 8, !alias.scope !73810, !noalias !73811
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.asa = icmp eq i64 %index.next, %n.vec
  br i1 %i.asa, label %middle.block, label %vector.body, !llvm.loop !73585

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.arm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i23.i, label %.lr.ph.i.i.i.i.i.i22.i.preheader1890

.lr.ph.i.i.i.i.i.i22.i.preheader1890:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i22.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i22.i.preheader ], [ %n.vec, %middle.block ]
  %.ph1891 = phi ptr [ %.sroa.7.17610481057.i, %vector.memcheck ], [ %.sroa.7.17610481057.i, %.lr.ph.i.i.i.i.i.i22.i.preheader ], [ %i.art, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i22.i

bb.fh:                                            ; preds = %bb.fg, %bb.fe
  %i.asb = phi i64 [ %i.arg, %bb.fg ], [ %i.arc, %bb.fe ]
  %.sroa.7.1761049.i = phi ptr [ %.sroa.7.17610481057.i, %bb.fg ], [ %.sroa.7.0.i, %bb.fe ]
  %.sroa.040.1771047.i = phi i64 [ %.sroa.040.17710461059.i, %bb.fg ], [ %.sroa.040.0.i, %bb.fe ] ; 2 uses
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.fg ], [ 0, %bb.fe ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.asb) #61
          to label %bb.fi unwind label %bb.fj, !noalias !73812

.lr.ph.i.i.i.i.i.i22.i:                           ; preds = %.lr.ph.i.i.i.i.i.i22.i.preheader1890, %.lr.ph.i.i.i.i.i.i22.i
  %i.asc = phi i64 [ %i.asi, %.lr.ph.i.i.i.i.i.i22.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i22.i.preheader1890 ] ; 2 uses
  %i.asd = phi ptr [ %i.asf, %.lr.ph.i.i.i.i.i.i22.i ], [ %.ph1891, %.lr.ph.i.i.i.i.i.i22.i.preheader1890 ] ; 2 uses
  %i.ase = load i32, ptr %i.asd, align 4, !noalias !73809, !noundef !67
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asd, i64 4 ; 2 uses
  %i.asg = zext i32 %i.ase to i64
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.arh, i64 %i.asc
  store i64 %i.asg, ptr %i.ash, align 8, !noalias !73813
  %i.asi = add nuw nsw i64 %i.asc, 1              ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.asf, %i.arf
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i23.i, label %.lr.ph.i.i.i.i.i.i22.i, !llvm.loop !73586

._crit_edge.i.i.i.i.i.i23.i:                      ; preds = %.lr.ph.i.i.i.i.i.i22.i, %middle.block, %bb.ff
  %i.asj = phi ptr [ inttoptr (i64 8 to ptr), %bb.ff ], [ %i.arh, %middle.block ], [ %i.arh, %.lr.ph.i.i.i.i.i.i22.i ] ; 2 uses
  %.sroa.4.0.i1068.i = phi i64 [ 0, %bb.ff ], [ %.sroa.11.17510501055.i, %middle.block ], [ %.sroa.11.17510501055.i, %.lr.ph.i.i.i.i.i.i22.i ] ; 2 uses
  %.sroa.7.176104810581067.i = phi ptr [ %.sroa.7.0.i, %bb.ff ], [ %.sroa.7.17610481057.i, %middle.block ], [ %.sroa.7.17610481057.i, %.lr.ph.i.i.i.i.i.i22.i ]
  %.sroa.040.177104610601066.i = phi i64 [ %.sroa.040.0.i, %bb.ff ], [ %.sroa.040.17710461059.i, %middle.block ], [ %.sroa.040.17710461059.i, %.lr.ph.i.i.i.i.i.i22.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.ff ], [ %n.vec, %middle.block ], [ %i.asi, %.lr.ph.i.i.i.i.i.i22.i ] ; 2 uses
  %i.ask = icmp eq i64 %.sroa.040.177104610601066.i, 0
  br i1 %i.ask, label %bb.fk, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i23.i
  %i.asl = shl nuw i64 %.sroa.040.177104610601066.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.176104810581067.i, i64 noundef %i.asl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !73809
  br label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %i.asm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asn = icmp eq i64 %.sroa.040.1771047.i, 0
  br i1 %i.asn, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.fj
  %i.aso = shl nuw i64 %.sroa.040.1771047.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1761049.i, i64 noundef %i.aso, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !73814
  br label %.body.i

bb.fk:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i23.i, %.thread.i
  %.sroa.5.sroa.4.0.i = phi i64 [ %.sroa.42.0.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i23.i ], [ undef, %.thread.i ], [ %.sroa.42.0.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.sroa.0.0.i = phi ptr [ %i.asj, %._crit_edge.i.i.i.i.i.i23.i ], [ undef, %.thread.i ], [ %i.asj, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i19 = phi i64 [ %.sroa.4.0.i1068.i, %._crit_edge.i.i.i.i.i.i23.i ], [ -1, %.thread.i ], [ %.sroa.4.0.i1068.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.asp = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !73592 ; 0 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.ay) #59, !noalias !73592
  %i.asq = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.asq, align 8, !noalias !73592, !noundef !67
  %i.asr = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.asr, label %bb.fm, label %bb.fl, !prof !125

bb.fl:                                            ; preds = %bb.fk
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.ay)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i unwind label %bb.fo, !noalias !73592

bb.fm:                                            ; preds = %bb.fk
  call void @_Py_DecRef(ptr noundef nonnull %i.ay) #59, !noalias !73592
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit: ; preds = %bb.f, %bb.e, %bb.fo
  %.pn9.i = phi { ptr, i32 } [ %i.ast, %bb.fo ], [ %.pn.i, %bb.e ], [ %.pn.i, %bb.f ]
  invoke void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.as)
          to label %common.resume.i unwind label %bb.fn, !noalias !73592

bb.fn:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit
  %i.ass = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !73592
  br label %.body

bb.fo:                                            ; preds = %bb.fl
  %i.ast = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i: ; preds = %bb.fm, %bb.fl
  invoke void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.as)
          to label %bb.fr unwind label %bb.fp, !noalias !73592

common.resume.i:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit, %bb.fp
  %common.resume.op.i = phi { ptr, i32 } [ %i.asu, %bb.fp ], [ %.pn9.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit ]
  call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !73592
  resume { ptr, i32 } %common.resume.op.i

bb.fp:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i
  %i.asu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.fq:                                            ; preds = %bb.e
  %i.asv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.fn, %bb.fq
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !73592
  unreachable

bb.fr:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEB1f_.exit.i
  call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !73592
  %.not = icmp eq i64 %.sroa.0.0.i19, -1
  br i1 %.not, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %.sroa.0.0.i19, ptr %i.aq, align 8
  %.sroa.923.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.923.8..sroa_idx24, align 8
  %.sroa.10.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.10.8..sroa_idx26, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !73815)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73816
  call fastcc void @_RNvXs3e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aq), !noalias !73815
  %i.asw = load i64, ptr %i.b, align 8, !range !68, !noalias !73816, !noundef !67
  %i.asx = trunc nuw i64 %i.asw to i1
  %i.asy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.03.0.copyload.i = load ptr, ptr %i.asy, align 8, !noalias !73816
  br i1 %i.asx, label %bb.ft, label %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertBL_.exit

bb.ft:                                            ; preds = %bb.fs
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.44.0..sroa_idx.i, i64 56, i1 false), !noalias !73817
  br label %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertBL_.exit

_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertBL_.exit: ; preds = %bb.fs, %bb.ft
  %.sink.i = phi i64 [ 1, %bb.ft ], [ 0, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73816
  %i.asz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.copyload.i, ptr %i.asz, align 8, !alias.scope !73815, !noalias !73817
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !73815, !noalias !73817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.fv

bb.fv:                                            ; preds = %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertBL_.exit, %bb.fu, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsaj_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17PathLengthMapping17___pymethod_keys__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.noexc:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [72 x i8], align 8                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.e = tail call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.d)
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEB1T_.exit19, label %bb.a

end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity38___pyfunction_graph_longest_simple_path:bb.a
          to label %.noexc27 unwind label %.body

.noexc27:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !114833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !114833
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !114833, !nonnull !67, !noundef !67
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !114833, !noundef !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !114837
  %i.bo = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i.i unwind label %bb.o, !noalias !114835

.noexc.i.i:                                       ; preds = %.noexc27
  %i.bp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !114837
  %i.bq = icmp eq i8 %i.bp, 2
  br i1 %i.bq, label %.noexc31.i.i, label %bb.k, !prof !77

bb.k:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc31.i.i unwind label %bb.o, !noalias !114835

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i.i:                         ; preds = %bb.m
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.val.i30.i.i = load ptr, ptr %i.i, align 8, !noalias !114837
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val4.i.i.i = load i64, ptr %i.br, align 8, !noalias !114837, !noundef !67
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr %.val.i30.i.i, i64 %.val4.i.i.i) #63, !noalias !114838
  br label %.body.i.i

.noexc31.i.i:                                     ; preds = %bb.k, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !114837
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store i64 %i.bo, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !114837
  %.not.i.i.i25 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i25, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i, label %bb.m, !prof !77

bb.m:                                             ; preds = %.noexc31.i.i
  %i.bs = invoke { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %i.bn, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx.i.i.i, i1 noundef zeroext true) #62
          to label %.preheader.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !114838 ; 0 uses

.preheader.i.i.i:                                 ; preds = %bb.m, %.noexc5.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %.noexc5.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.val8.i.i.i.i.i.i.i.i = load i32, ptr %i.bt, align 4, !noalias !114839, !noundef !67
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef %.val8.i.i.i.i.i.i.i.i) #64
          to label %.noexc5.i.i.i unwind label %.loopexit.i.i.i

.noexc5.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.bu = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.bn
  br i1 %i.bv, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i, label %.preheader.i.i.i

bb.n:                                             ; preds = %.lr.ph
  %i.bw = and i64 %i.be, 4294967295
  store i64 %i.bw, ptr %i.as, align 8, !noalias !114835
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 8, i64 noundef 8) #59, !noalias !114835
  br label %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.thread.i

.body.i.i:                                        ; preds = %bb.q, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %.body35.i.i, %bb.o, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.l ], [ %i.bz, %bb.o ], [ %eh.lpad-body36.i.i, %.body35.i.i ], [ %eh.lpad-body36.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ], [ %eh.lpad-body36.i.i, %bb.q ] ; 2 uses
  %.val26.i.i = load i64, ptr %i.l, align 8, !noalias !114833 ; 2 uses
  %i.bx = icmp eq i64 %.val26.i.i, 0
  br i1 %i.bx, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.body.i.i
  %.val27.i.i = load ptr, ptr %i.bk, align 8, !noalias !114833, !nonnull !67, !noundef !67
  %i.by = shl nuw i64 %.val26.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !114835
  br label %.body.thread

bb.o:                                             ; preds = %bb.k, %.noexc27
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i: ; preds = %.noexc5.i.i.i, %.noexc31.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !114833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !114837
  %i.ca = load ptr, ptr %i.bk, align 8, !noalias !114833, !nonnull !67, !noundef !67 ; 5 uses
  %i.cb = load i64, ptr %i.bm, align 8, !noalias !114833, !noundef !67 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !114840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !114841
  call void @llvm.experimental.noalias.scope.decl(metadata !114842)
  store ptr %i.ca, ptr %i.g, align 8, !alias.scope !114843, !noalias !114844
  %.sroa.656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.cb, ptr %.sroa.656.0..sroa_idx.i.i, align 8, !alias.scope !114843, !noalias !114844
  %.sroa.761.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %.sroa.761.0..sroa_idx.i.i, align 8, !alias.scope !114843, !noalias !114844
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !114843, !noalias !114844
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.cc, align 8, !alias.scope !114845, !noalias !114846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !114841
  store ptr %i.a, ptr %i.f, align 8, !noalias !114847
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !114848
  store ptr %i.ca, ptr %i.e, align 8, !noalias !114844
  %.sroa.656.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.cb, ptr %.sroa.656.0..sroa_idx57.i.i, align 8, !noalias !114844
  %.sroa.761.0..sroa_idx62.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.m, ptr %.sroa.761.0..sroa_idx62.i.i, align 8, !noalias !114844
  %.sroa.8.0..sroa_idx66.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx66.i.i, align 8, !noalias !114844
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !114849
  store ptr %i.ca, ptr %i.d, align 8, !noalias !114844
  %.sroa.656.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.cb, ptr %.sroa.656.0..sroa_idx59.i.i, align 8, !noalias !114844
  %.sroa.761.0..sroa_idx64.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.m, ptr %.sroa.761.0..sroa_idx64.i.i, align 8, !noalias !114844
  %.sroa.8.0..sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx68.i.i, align 8, !noalias !114844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114850
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.cb, ptr %i.cf, align 8, !noalias !114850
  store ptr %i.a, ptr %i.c, align 8, !noalias !114851
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114851
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.cc, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114851
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cd, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114851
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !114852
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.761.0..sroa_idx64.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !114853
  %i.cg = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc33.i.i unwind label %bb.p, !noalias !114835

.noexc33.i.i:                                     ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i
  %i.ch = icmp eq i64 %i.cb, -1
  %i.ci = zext i1 %i.ch to i64
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ci)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB6_10filter_map17FilterMapConsumerINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB1F_EERINvNvB4y_10max_by_key7max_keyB5m_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB5k_ENtNtB6J_7default7Default7defaultEB6B_NCINvB4w_8opt_foldB5k_B5Z_E0ENCINvB63_3keyB5m_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB1J_10UndirectedEs_0E0ENCB8J_0EEB8O_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ca, i64 noundef %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.c)
          to label %.noexc34.i.i unwind label %bb.p, !noalias !114835

.noexc34.i.i:                                     ; preds = %.noexc33.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !114841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114841
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !range !66, !noalias !114840, !noundef !67 ; 5 uses
  %.not.i32.i.i = icmp eq i64 %i.ck, -1
  br i1 %.not.i32.i.i, label %bb.x, label %bb.r

bb.p:                                             ; preds = %bb.x, %.noexc33.i.i, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i.i

.body35.i.i:                                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i, %bb.w, %bb.p
  %eh.lpad-body36.i.i = phi { ptr, i32 } [ %i.cl, %bb.p ], [ %i.ec, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i ], [ %i.ec, %bb.w ] ; 3 uses
  %.val22.i.i = load ptr, ptr %i.j, align 8, !noalias !114833 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val23.i.i = load i64, ptr %i.cm, align 8, !noalias !114833, !noundef !67 ; 4 uses
  %i.cn = icmp eq i64 %.val23.i.i, 0
  br i1 %i.cn, label %.body.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %.body35.i.i
  %i.co = shl i64 %.val23.i.i, 2
  %i.cp = icmp slt i64 %.val23.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.cp), !noalias !114854
  %i.cq = and i64 %i.co, -16                      ; 2 uses
  %i.cr = add i64 %i.cq, 16                       ; 2 uses
  %i.cs = add nsw i64 %.val23.i.i, 17
  %i.ct = add i64 %i.cs, %i.cr                    ; 4 uses
  %i.cu = icmp uge i64 %i.ct, %i.cr
  %i.cv = icmp ult i64 %i.ct, 9223372036854775793
  call void @llvm.assume(i1 %i.cu), !noalias !114854
  call void @llvm.assume(i1 %i.cv), !noalias !114854
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22.i.i) ], !noalias !114854
  %i.cw = icmp eq i64 %i.ct, 0
  br i1 %i.cw, label %.body.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.cx = sub nuw nsw i64 -16, %i.cq
  %i.cy = getelementptr inbounds i8, ptr %.val22.i.i, i64 %i.cx
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cy, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !114835
  br label %.body.i.i

bb.r:                                             ; preds = %.noexc34.i.i
  %.sroa.471.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.471.0.copyload.i.i = load ptr, ptr %.sroa.471.0..sroa_idx.i.i, align 8, !noalias !114840, !nonnull !67, !noundef !67 ; 8 uses
  %.sroa.572.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.572.0.copyload.i.i = load i64, ptr %.sroa.572.0..sroa_idx.i.i, align 8, !noalias !114840 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114840
  %i.cz = icmp ult i64 %.sroa.572.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.cz)
  %.idx.i.i = shl nuw nsw i64 %.sroa.572.0.copyload.i.i, 2 ; 2 uses
  %i.da = getelementptr i8, ptr %.sroa.471.0.copyload.i.i, i64 %.idx.i.i ; 2 uses
  %i.db = shl nuw i64 %.sroa.572.0.copyload.i.i, 3 ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ugt i64 %.sroa.572.0.copyload.i.i, 1152921504606846975
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.s, !prof !73

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp eq i64 %.sroa.572.0.copyload.i.i, 0
  br i1 %i.dc, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !114855
  %i.dd = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !114855 ; 7 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.t
  %i.df = add nsw i64 %.idx.i.i, -4               ; 3 uses
  %i.dg = lshr exact i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.df, 68
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.di = shl i64 %i.df, 1
  %5 = getelementptr i8, ptr %i.dd, i64 %i.di
  %scevgep = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.dd, %i.da
  %bound1 = icmp ult ptr %.sroa.471.0.copyload.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dh, 9223372036854775804     ; 5 uses
  %i.dj = shl i64 %n.vec, 2
  %i.dk = getelementptr i8, ptr %.sroa.471.0.copyload.i.i, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.471.0.copyload.i.i, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !114856, !noalias !114857
  %wide.load75 = load <2 x i32>, ptr %i.dm, align 4, !alias.scope !114856, !noalias !114857
  %i.dn = zext <2 x i32> %wide.load to <2 x i64>
  %i.do = zext <2 x i32> %wide.load75 to <2 x i64>
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <2 x i64> %i.dn, ptr %i.dp, align 8, !alias.scope !114858, !noalias !114859
  store <2 x i64> %i.do, ptr %i.dq, align 8, !alias.scope !114858, !noalias !114859
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !114811

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.i.i.i.i.preheader78:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph79 = phi ptr [ %.sroa.471.0.copyload.i.i, %vector.memcheck ], [ %.sroa.471.0.copyload.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.t ], [ 0, %bb.r ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.db) #61
          to label %bb.v unwind label %bb.w, !noalias !114860

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ds = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.dt = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph79, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !noalias !114857, !noundef !67
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ds
  store i64 %i.dw, ptr %i.dx, align 8, !noalias !114861
  %i.dy = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.da
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !114812

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %bb.s
  %i.dz = phi ptr [ inttoptr (i64 8 to ptr), %bb.s ], [ %i.dd, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %n.vec, %middle.block ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ea = icmp eq i64 %i.ck, 0
  br i1 %i.ea, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_10UndirectedEs0_0EE9from_iterB3N_.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.eb = shl nuw i64 %i.ck, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.471.0.copyload.i.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !114857
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_10UndirectedEs0_0EE9from_iterB3N_.exit.i.i

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = icmp eq i64 %i.ck, 0
  br i1 %i.ed, label %.body35.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.ee = shl nuw i64 %i.ck, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.471.0.copyload.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !114862
  br label %.body35.i.i

bb.x:                                             ; preds = %.noexc34.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114840
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @514) #61
          to label %bb.y unwind label %bb.p, !noalias !114835

bb.y:                                             ; preds = %bb.x
  unreachable

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_10UndirectedEs0_0EE9from_iterB3N_.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !114833 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val21.i.i = load i64, ptr %i.ef, align 8, !noalias !114833, !noundef !67 ; 4 uses
  %i.eg = icmp eq i64 %.val21.i.i, 0
  br i1 %i.eg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_10UndirectedEs0_0EE9from_iterB3N_.exit.i.i
  %i.eh = shl i64 %.val21.i.i, 2
  %i.ei = icmp slt i64 %.val21.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.ei)
  %i.ej = and i64 %i.eh, -16                      ; 2 uses
  %i.ek = add i64 %i.ej, 16                       ; 2 uses
  %i.el = add nsw i64 %.val21.i.i, 17
  %i.em = add i64 %i.el, %i.ek                    ; 4 uses
  %i.en = icmp uge i64 %i.em, %i.ek
  %i.eo = icmp ult i64 %i.em, 9223372036854775793
  call void @llvm.assume(i1 %i.en)
  call void @llvm.assume(i1 %i.eo)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ep = icmp eq i64 %i.em, 0
  br i1 %i.ep, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.eq = sub nuw nsw i64 -16, %i.ej
  %i.er = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.eq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.er, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !114835
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.z, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_10UndirectedEs0_0EE9from_iterB3N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !114833
  %.val24.i.i = load i64, ptr %i.l, align 8, !noalias !114833 ; 2 uses
  %i.es = icmp eq i64 %.val24.i.i, 0
  br i1 %i.es, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i37.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i37.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.et = shl nuw i64 %.val24.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.et, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !114835
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i37.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !114833
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i
  %.sroa.10.0 = phi i64 [ %.sroa.42.0.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i ], [ 1, %bb.n ]
  %.sroa.8.0 = phi ptr [ %i.dz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i ], [ %i.as, %bb.n ]
  %.sroa.032.0 = phi i64 [ %.sroa.572.0.copyload.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !114832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.032.0, ptr %i.q, align 8
  %.sroa.49.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.49.sroa.4.0..sroa_idx, align 8
  %.sroa.49.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.49.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !114863
  invoke fastcc void @_RNvXs3e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q)
          to label %.noexc30 unwind label %.body

.noexc30:                                         ; preds = %bb.aa
  %i.eu = load i64, ptr %i.b, align 8, !range !68, !noalias !114863, !noundef !67
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %i.ew, align 8, !noalias !114863 ; 2 uses
  br i1 %i.ev, label %bb.ab, label %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i

_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.thread.i: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !114832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !114864
  br label %bb.ac

_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i: ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114863
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc30
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.437.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.44.0..sroa_idx.i.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114863
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31

bb.ac:                                            ; preds = %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i, %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.thread.i
  %.sink1.i.sink.i.i7.i = phi ptr [ @_Py_NoneStruct, %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.thread.i ], [ %.sroa.03.0.copyload.i.i.i.i, %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink1.i.sink.i.i7.i) ]
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31: ; preds = %bb.ac, %bb.ab
  %.sink1.i.sink.i.i7.i.sink = phi ptr [ %.sink1.i.sink.i.i7.i, %bb.ac ], [ %.sroa.03.0.copyload.i.i.i.i, %bb.ab ]
  %storemerge = phi i64 [ 0, %bb.ac ], [ 1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1.i.sink.i.i7.i.sink, ptr %i.ex, align 8
  store i64 %storemerge, ptr %0, align 8
  %i.ey = atomicrmw sub ptr %i.ae, i64 1 release, align 8 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.b, %.noexc20, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity40___pyfunction_digraph_longest_simple_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity40___pyfunction_digraph_longest_simple_path:bb.a
          to label %.noexc27 unwind label %.body

.noexc27:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !114974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !114974
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !114974, !nonnull !67, !noundef !67
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !114974, !noundef !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !114978
  %i.bo = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i.i unwind label %bb.o, !noalias !114976

.noexc.i.i:                                       ; preds = %.noexc27
  %i.bp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !114978
  %i.bq = icmp eq i8 %i.bp, 2
  br i1 %i.bq, label %.noexc31.i.i, label %bb.k, !prof !77

bb.k:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc31.i.i unwind label %bb.o, !noalias !114976

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i.i:                         ; preds = %bb.m
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.val.i30.i.i = load ptr, ptr %i.i, align 8, !noalias !114978
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val4.i.i.i = load i64, ptr %i.br, align 8, !noalias !114978, !noundef !67
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr %.val.i30.i.i, i64 %.val4.i.i.i) #63, !noalias !114979
  br label %.body.i.i

.noexc31.i.i:                                     ; preds = %bb.k, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !114978
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store i64 %i.bo, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !114978
  %.not.i.i.i25 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i25, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i, label %bb.m, !prof !77

bb.m:                                             ; preds = %.noexc31.i.i
  %i.bs = invoke { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %i.bn, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx.i.i.i, i1 noundef zeroext true) #62
          to label %.preheader.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !114979 ; 0 uses

.preheader.i.i.i:                                 ; preds = %bb.m, %.noexc5.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %.noexc5.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.val8.i.i.i.i.i.i.i.i = load i32, ptr %i.bt, align 4, !noalias !114980, !noundef !67
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef %.val8.i.i.i.i.i.i.i.i) #64
          to label %.noexc5.i.i.i unwind label %.loopexit.i.i.i

.noexc5.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.bu = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.bn
  br i1 %i.bv, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i, label %.preheader.i.i.i

bb.n:                                             ; preds = %.lr.ph
  %i.bw = and i64 %i.be, 4294967295
  store i64 %i.bw, ptr %i.as, align 8, !noalias !114976
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 8, i64 noundef 8) #59, !noalias !114976
  br label %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.thread.i

.body.i.i:                                        ; preds = %bb.q, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %.body35.i.i, %bb.o, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.l ], [ %i.bz, %bb.o ], [ %eh.lpad-body36.i.i, %.body35.i.i ], [ %eh.lpad-body36.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ], [ %eh.lpad-body36.i.i, %bb.q ] ; 2 uses
  %.val26.i.i = load i64, ptr %i.l, align 8, !noalias !114974 ; 2 uses
  %i.bx = icmp eq i64 %.val26.i.i, 0
  br i1 %i.bx, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.body.i.i
  %.val27.i.i = load ptr, ptr %i.bk, align 8, !noalias !114974, !nonnull !67, !noundef !67
  %i.by = shl nuw i64 %.val26.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !114976
  br label %.body.thread

bb.o:                                             ; preds = %bb.k, %.noexc27
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i: ; preds = %.noexc5.i.i.i, %.noexc31.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !114974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !114978
  %i.ca = load ptr, ptr %i.bk, align 8, !noalias !114974, !nonnull !67, !noundef !67 ; 5 uses
  %i.cb = load i64, ptr %i.bm, align 8, !noalias !114974, !noundef !67 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !114981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !114982
  call void @llvm.experimental.noalias.scope.decl(metadata !114983)
  store ptr %i.ca, ptr %i.g, align 8, !alias.scope !114984, !noalias !114985
  %.sroa.656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.cb, ptr %.sroa.656.0..sroa_idx.i.i, align 8, !alias.scope !114984, !noalias !114985
  %.sroa.761.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %.sroa.761.0..sroa_idx.i.i, align 8, !alias.scope !114984, !noalias !114985
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !114984, !noalias !114985
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.cc, align 8, !alias.scope !114986, !noalias !114987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !114982
  store ptr %i.a, ptr %i.f, align 8, !noalias !114988
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !114989
  store ptr %i.ca, ptr %i.e, align 8, !noalias !114985
  %.sroa.656.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.cb, ptr %.sroa.656.0..sroa_idx57.i.i, align 8, !noalias !114985
  %.sroa.761.0..sroa_idx62.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.m, ptr %.sroa.761.0..sroa_idx62.i.i, align 8, !noalias !114985
  %.sroa.8.0..sroa_idx66.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx66.i.i, align 8, !noalias !114985
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !114990
  store ptr %i.ca, ptr %i.d, align 8, !noalias !114985
  %.sroa.656.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.cb, ptr %.sroa.656.0..sroa_idx59.i.i, align 8, !noalias !114985
  %.sroa.761.0..sroa_idx64.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.m, ptr %.sroa.761.0..sroa_idx64.i.i, align 8, !noalias !114985
  %.sroa.8.0..sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx68.i.i, align 8, !noalias !114985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114991
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.cb, ptr %i.cf, align 8, !noalias !114991
  store ptr %i.a, ptr %i.c, align 8, !noalias !114992
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114992
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.cc, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114992
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cd, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114992
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !114993
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.761.0..sroa_idx64.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !114994
  %i.cg = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc33.i.i unwind label %bb.p, !noalias !114976

.noexc33.i.i:                                     ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i
  %i.ch = icmp eq i64 %i.cb, -1
  %i.ci = zext i1 %i.ch to i64
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ci)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtB6_10filter_map17FilterMapConsumerINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reduceTjINtNtCs87CvPiUlf0m_5alloc3vec3VecB1F_EERINvNvB4y_10max_by_key7max_keyB5m_jEE0NvYINtNtCslwFuT2d6ECx_4core6option6OptionB5k_ENtNtB6J_7default7Default7defaultEB6B_NCINvB4w_8opt_foldB5k_B5Z_E0ENCINvB63_3keyB5m_jNCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB1J_8DirectedEs_0E0ENCB8J_0EEB8O_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ca, i64 noundef %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.c)
          to label %.noexc34.i.i unwind label %bb.p, !noalias !114976

.noexc34.i.i:                                     ; preds = %.noexc33.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !114982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114982
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !range !66, !noalias !114981, !noundef !67 ; 5 uses
  %.not.i32.i.i = icmp eq i64 %i.ck, -1
  br i1 %.not.i32.i.i, label %bb.x, label %bb.r

bb.p:                                             ; preds = %bb.x, %.noexc33.i.i, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i.i

.body35.i.i:                                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i, %bb.w, %bb.p
  %eh.lpad-body36.i.i = phi { ptr, i32 } [ %i.cl, %bb.p ], [ %i.ec, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i ], [ %i.ec, %bb.w ] ; 3 uses
  %.val22.i.i = load ptr, ptr %i.j, align 8, !noalias !114974 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val23.i.i = load i64, ptr %i.cm, align 8, !noalias !114974, !noundef !67 ; 4 uses
  %i.cn = icmp eq i64 %.val23.i.i, 0
  br i1 %i.cn, label %.body.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %.body35.i.i
  %i.co = shl i64 %.val23.i.i, 2
  %i.cp = icmp slt i64 %.val23.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.cp), !noalias !114995
  %i.cq = and i64 %i.co, -16                      ; 2 uses
  %i.cr = add i64 %i.cq, 16                       ; 2 uses
  %i.cs = add nsw i64 %.val23.i.i, 17
  %i.ct = add i64 %i.cs, %i.cr                    ; 4 uses
  %i.cu = icmp uge i64 %i.ct, %i.cr
  %i.cv = icmp ult i64 %i.ct, 9223372036854775793
  call void @llvm.assume(i1 %i.cu), !noalias !114995
  call void @llvm.assume(i1 %i.cv), !noalias !114995
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22.i.i) ], !noalias !114995
  %i.cw = icmp eq i64 %i.ct, 0
  br i1 %i.cw, label %.body.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.cx = sub nuw nsw i64 -16, %i.cq
  %i.cy = getelementptr inbounds i8, ptr %.val22.i.i, i64 %i.cx
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cy, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !114976
  br label %.body.i.i

bb.r:                                             ; preds = %.noexc34.i.i
  %.sroa.471.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.471.0.copyload.i.i = load ptr, ptr %.sroa.471.0..sroa_idx.i.i, align 8, !noalias !114981, !nonnull !67, !noundef !67 ; 8 uses
  %.sroa.572.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.572.0.copyload.i.i = load i64, ptr %.sroa.572.0..sroa_idx.i.i, align 8, !noalias !114981 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114981
  %i.cz = icmp ult i64 %.sroa.572.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.cz)
  %.idx.i.i = shl nuw nsw i64 %.sroa.572.0.copyload.i.i, 2 ; 2 uses
  %i.da = getelementptr i8, ptr %.sroa.471.0.copyload.i.i, i64 %.idx.i.i ; 2 uses
  %i.db = shl nuw i64 %.sroa.572.0.copyload.i.i, 3 ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ugt i64 %.sroa.572.0.copyload.i.i, 1152921504606846975
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.s, !prof !73

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp eq i64 %.sroa.572.0.copyload.i.i, 0
  br i1 %i.dc, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !114996
  %i.dd = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !114996 ; 7 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.t
  %i.df = add nsw i64 %.idx.i.i, -4               ; 3 uses
  %i.dg = lshr exact i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.df, 68
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.di = shl i64 %i.df, 1
  %5 = getelementptr i8, ptr %i.dd, i64 %i.di
  %scevgep = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.dd, %i.da
  %bound1 = icmp ult ptr %.sroa.471.0.copyload.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dh, 9223372036854775804     ; 5 uses
  %i.dj = shl i64 %n.vec, 2
  %i.dk = getelementptr i8, ptr %.sroa.471.0.copyload.i.i, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.471.0.copyload.i.i, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !114997, !noalias !114998
  %wide.load75 = load <2 x i32>, ptr %i.dm, align 4, !alias.scope !114997, !noalias !114998
  %i.dn = zext <2 x i32> %wide.load to <2 x i64>
  %i.do = zext <2 x i32> %wide.load75 to <2 x i64>
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <2 x i64> %i.dn, ptr %i.dp, align 8, !alias.scope !114999, !noalias !115000
  store <2 x i64> %i.do, ptr %i.dq, align 8, !alias.scope !114999, !noalias !115000
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !114952

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.i.i.i.i.preheader78:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph79 = phi ptr [ %.sroa.471.0.copyload.i.i, %vector.memcheck ], [ %.sroa.471.0.copyload.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.t ], [ 0, %bb.r ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.db) #61
          to label %bb.v unwind label %bb.w, !noalias !115001

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ds = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.dt = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph79, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !noalias !114998, !noundef !67
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ds
  store i64 %i.dw, ptr %i.dx, align 8, !noalias !115002
  %i.dy = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.da
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !114953

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %bb.s
  %i.dz = phi ptr [ inttoptr (i64 8 to ptr), %bb.s ], [ %i.dd, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %n.vec, %middle.block ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ea = icmp eq i64 %i.ck, 0
  br i1 %i.ea, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_8DirectedEs0_0EE9from_iterB3N_.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.eb = shl nuw i64 %i.ck, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.471.0.copyload.i.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !114998
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_8DirectedEs0_0EE9from_iterB3N_.exit.i.i

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = icmp eq i64 %i.ck, 0
  br i1 %i.ed, label %.body35.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.ee = shl nuw i64 %i.ck, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.471.0.copyload.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !115003
  br label %.body35.i.i

bb.x:                                             ; preds = %.noexc34.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114981
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @514) #61
          to label %bb.y unwind label %bb.p, !noalias !114976

bb.y:                                             ; preds = %bb.x
  unreachable

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_8DirectedEs0_0EE9from_iterB3N_.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !114974 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val21.i.i = load i64, ptr %i.ef, align 8, !noalias !114974, !noundef !67 ; 4 uses
  %i.eg = icmp eq i64 %.val21.i.i, 0
  br i1 %i.eg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_8DirectedEs0_0EE9from_iterB3N_.exit.i.i
  %i.eh = shl i64 %.val21.i.i, 2
  %i.ei = icmp slt i64 %.val21.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.ei)
  %i.ej = and i64 %i.eh, -16                      ; 2 uses
  %i.ek = add i64 %i.ej, 16                       ; 2 uses
  %i.el = add nsw i64 %.val21.i.i, 17
  %i.em = add i64 %i.el, %i.ek                    ; 4 uses
  %i.en = icmp uge i64 %i.em, %i.ek
  %i.eo = icmp ult i64 %i.em, 9223372036854775793
  call void @llvm.assume(i1 %i.en)
  call void @llvm.assume(i1 %i.eo)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ep = icmp eq i64 %i.em, 0
  br i1 %i.ep, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.eq = sub nuw nsw i64 -16, %i.ej
  %i.er = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.eq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.er, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !114976
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.z, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecjEINtNtB6_14spec_from_iter12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtCskcxRuJ53GpR_9rustworkx12connectivity19longest_simple_pathNtB2W_8DirectedEs0_0EE9from_iterB3N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !114974
  %.val24.i.i = load i64, ptr %i.l, align 8, !noalias !114974 ; 2 uses
  %i.es = icmp eq i64 %.val24.i.i, 0
  br i1 %i.es, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i37.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i37.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.et = shl nuw i64 %.val24.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.et, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !114976
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i37.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !114974
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i
  %.sroa.10.0 = phi i64 [ %.sroa.42.0.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i ], [ 1, %bb.n ]
  %.sroa.8.0 = phi ptr [ %i.dz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i ], [ %i.as, %bb.n ]
  %.sroa.032.0 = phi i64 [ %.sroa.572.0.copyload.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit38.i.i ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !114973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.032.0, ptr %i.q, align 8
  %.sroa.49.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.49.sroa.4.0..sroa_idx, align 8
  %.sroa.49.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.49.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !115004
  invoke fastcc void @_RNvXs3e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q)
          to label %.noexc30 unwind label %.body

.noexc30:                                         ; preds = %bb.aa
  %i.eu = load i64, ptr %i.b, align 8, !range !68, !noalias !115004, !noundef !67
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %i.ew, align 8, !noalias !115004 ; 2 uses
  br i1 %i.ev, label %bb.ab, label %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i

_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.thread.i: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !114973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !115005
  br label %bb.ac

_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i: ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115004
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc30
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.437.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.44.0..sroa_idx.i.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115004
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit31

bb.ac:                                            ; preds = %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i, %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.thread.i
  %.sink1.i.sink.i.i7.i = phi ptr [ @_Py_NoneStruct, %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.thread.i ], [ %.sroa.03.0.copyload.i.i.i.i, %_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesENtNtB8_10conversion12IntoPyObject13into_pyobjectB1v_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink1.i.sink.i.i7.i) ]
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit31

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit31: ; preds = %bb.ac, %bb.ab
  %.sink1.i.sink.i.i7.i.sink = phi ptr [ %.sink1.i.sink.i.i7.i, %bb.ac ], [ %.sroa.03.0.copyload.i.i.i.i, %bb.ab ]
  %storemerge = phi i64 [ 0, %bb.ac ], [ 1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1.i.sink.i.i7.i.sink, ptr %i.ex, align 8
  store i64 %storemerge, ptr %0, align 8
  %i.ey = atomicrmw sub ptr %i.ae, i64 1 release, align 8 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.b, %.noexc20, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity40___pyfunction_number_connected_components(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path25graph_astar_shortest_path:bb.a

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i161.i: ; preds = %.lr.ph.split.i.i155.i
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.ma, i64 %storemerge17.i.i156.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, ptr noundef nonnull align 8 dereferenceable(16) %i.mo, i64 16, i1 false), !noalias !123159
  %.not.i.i162.i = icmp eq i64 %i.mm, 0
  br i1 %.not.i.i162.i, label %.loopexit92.i, label %.lr.ph.split.i.i155.i

.loopexit92.i:                                    ; preds = %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i161.i, %.lr.ph.split.i.i155.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i166.i, %.lr.ph.split.us.i.i163.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i152.i
  %storemerge.lcssa.i.i159.i = phi i64 [ 0, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i152.i ], [ %storemerge17.us.i.i164.i, %.lr.ph.split.us.i.i163.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i166.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i161.i ], [ %storemerge17.i.i156.i, %.lr.ph.split.i.i155.i ]
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.ma, i64 %storemerge.lcssa.i.i159.i ; 2 uses
  store double %i.lv, ptr %i.mq, align 8, !noalias !123159
  %.sroa.13.16..sroa_idx.i.i160.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store i32 %.sroa.637.sroa.6.0.extract.trunc.i, ptr %.sroa.13.16..sroa_idx.i.i160.i, align 8, !noalias !123159
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge: ; preds = %.loopexit92.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

.loopexit.loopexit.i:                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i, %middle.block
  %.sroa.5.0.copyload15.pre.i = load ptr, ptr %i.es, align 8, !noalias !123160
  %.sroa.6.0.copyload17.pre.i = load i64, ptr %i.et, align 8, !noalias !123160
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %select.unfold.i114.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i
  %.sroa.6.0.copyload17.i = phi i64 [ %.sroa.6.0.copyload17.pre.i, %.loopexit.loopexit.i ], [ %i.fa, %select.unfold.i114.i ], [ 1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i ]
  %.sroa.5.0.copyload15.i = phi ptr [ %.sroa.5.0.copyload15.pre.i, %.loopexit.loopexit.i ], [ %i.gq, %select.unfold.i114.i ], [ %i.eq, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i ] ; 3 uses
  %.sroa.012.0.copyload13.i = load i64, ptr %i.a, align 8, !noalias !123160 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123114
  call void @llvm.experimental.noalias.scope.decl(metadata !123161)
  %i.mr = load i64, ptr %i.dc, align 8, !alias.scope !123161, !noalias !123093, !noundef !67
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %select.unfold87.i, label %bb.br

bb.br:                                            ; preds = %.loopexit.i
  %.val.i170.i = load i64, ptr %i.ar, align 8, !alias.scope !123162, !noalias !123163, !noundef !67
  %i.mt = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !123164, !noundef !67
  %i.mu = xor i64 %.val.i170.i, %i.dl
  %i.mv = zext i64 %i.mu to i128
  %i.mw = zext i64 %i.mt to i128
  %i.mx = mul nuw i128 %i.mw, %i.mv               ; 2 uses
  %i.my = lshr i128 %i.mx, 64
  %i.mz = xor i128 %i.my, %i.mx
  %i.na = trunc i128 %i.mz to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123165)
  call void @llvm.experimental.noalias.scope.decl(metadata !123166)
  %i.nb = lshr i64 %i.na, 57
  %i.nc = trunc nuw nsw i64 %i.nb to i8
  %i.nd = load i64, ptr %i.dd, align 8, !alias.scope !123167, !noalias !123168, !noundef !67 ; 2 uses
  %i.ne = load ptr, ptr %i.k, align 8, !alias.scope !123167, !noalias !123168, !nonnull !67, !noundef !67 ; 2 uses
  %i.nf = insertelement <16 x i8> poison, i8 %i.nc, i64 0
  %i.ng = shufflevector <16 x i8> %i.nf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.sroa.011.0.i.i.i171.i = phi i64 [ 0, %bb.br ], [ %i.nx, %bb.bu ]
  %.pn.i.i172.i = phi i64 [ %i.na, %bb.br ], [ %i.ny, %bb.bu ]
  %.sroa.01.0.i.i.i173.i = and i64 %.pn.i.i172.i, %i.nd ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.sroa.01.0.i.i.i173.i
  %.sroa.0.0.copyload.i24.i.i174.i = load <16 x i8>, ptr %i.nh, align 1, !noalias !123169 ; 2 uses
  %i.ni = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i174.i, %i.ng
  %i.nj = bitcast <16 x i1> %i.ni to i16          ; 2 uses
  %.not.i.not30.i.i175.i = icmp eq i16 %i.nj, 0
  br i1 %.not.i.not30.i.i175.i, label %._crit_edge.i.i180.i, label %.lr.ph.i.i176.i

.lr.ph.i.i176.i:                                  ; preds = %bb.bs, %bb.bt
  %.sroa.05.0.i31.i.i177.i = phi i16 [ %i.nw, %bb.bt ], [ %i.nj, %bb.bs ] ; 3 uses
  %i.nk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i177.i, i1 true)
  %i.nl = zext nneg i16 %i.nk to i64
  %i.nm = add i64 %.sroa.01.0.i.i.i173.i, %i.nl
  %i.nn = and i64 %i.nm, %i.nd
  %i.no = sub nsw i64 0, %i.nn
  %i.np = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %i.no ; 2 uses
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 -16
  %.val2.i.i.i178.i = load i32, ptr %i.nq, align 4, !noalias !123170, !noundef !67
  %i.nr = icmp eq i32 %i.dk, %.val2.i.i.i178.i
  br i1 %i.nr, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit185.i, label %bb.bt, !prof !77

._crit_edge.i.i180.i:                             ; preds = %bb.bt, %bb.bs
  %i.ns = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i174.i, splat (i8 -1)
  %i.nt = bitcast <16 x i1> %i.ns to i16
  %i.nu = icmp eq i16 %i.nt, 0
  br i1 %i.nu, label %bb.bu, label %select.unfold87.i, !prof !71

bb.bt:                                            ; preds = %.lr.ph.i.i176.i
  %i.nv = add i16 %.sroa.05.0.i31.i.i177.i, -1
  %i.nw = and i16 %i.nv, %.sroa.05.0.i31.i.i177.i ; 2 uses
  %.not.i.not.i.i179.i = icmp eq i16 %i.nw, 0
  br i1 %.not.i.not.i.i179.i, label %._crit_edge.i.i180.i, label %.lr.ph.i.i176.i

bb.bu:                                            ; preds = %._crit_edge.i.i180.i
  %i.nx = add i64 %.sroa.011.0.i.i.i171.i, 16     ; 2 uses
  %i.ny = add i64 %.sroa.01.0.i.i.i173.i, %i.nx
  br label %bb.bs

bb.bv:                                            ; preds = %select.unfold87.i
  %i.nz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oa = icmp eq i64 %.sroa.012.0.copyload13.i, 0
  br i1 %i.oa, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.bv
  %i.ob = shl nuw i64 %.sroa.012.0.copyload13.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload15.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload15.i, i64 noundef %i.ob, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !123093
  br label %.body.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit185.i: ; preds = %.lr.ph.i.i176.i
  %i.oc = getelementptr inbounds i8, ptr %i.np, i64 -8
  %i.od = load i64, ptr %i.oc, align 8, !noalias !123093, !noundef !67
  br label %bb.bx

select.unfold87.i:                                ; preds = %._crit_edge.i.i180.i, %.loopexit.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825) #61
          to label %bb.ax unwind label %bb.bv, !noalias !123093

bb.bw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !123093
  unreachable

bb.bx:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit185.i, %bb.bo, %bb.be, %bb.ae
  %.sroa.26.1 = phi i64 [ %.sroa.12.i.sroa.7.0, %bb.ae ], [ %.sroa.6.0.copyload17.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit185.i ], [ %.sroa.26.16.copyload147, %bb.be ], [ %.sroa.26.16.copyload, %bb.bo ] ; 3 uses
  %.sroa.25.1 = phi ptr [ %.sroa.12.i.sroa.6.0, %bb.ae ], [ %.sroa.5.0.copyload15.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit185.i ], [ %.sroa.25.16.copyload142, %bb.be ], [ %.sroa.25.16.copyload, %bb.bo ] ; 3 uses
  %.sroa.18.2 = phi i64 [ %.sroa.12.i.sroa.0.0, %bb.ae ], [ %.sroa.012.0.copyload13.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit185.i ], [ %.sroa.18.16.copyload137, %bb.be ], [ %.sroa.18.16.copyload, %bb.bo ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %i.el, %bb.ae ], [ %i.od, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit185.i ], [ %.sroa.042.0.copyload.i217, %bb.be ], [ %.sroa.050.0.copyload.i216, %bb.bo ] ; 3 uses
  %.sroa.0133.2 = phi i1 [ true, %bb.ae ], [ false, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit185.i ], [ true, %bb.be ], [ true, %bb.bo ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !123093
  %.val82.pre.i = load ptr, ptr %i.j, align 8, !noalias !123093 ; 2 uses
  %.phi.trans.insert231.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val83.pre.i = load i64, ptr %.phi.trans.insert231.i, align 8, !noalias !123093 ; 4 uses
  %i.of = icmp eq i64 %.val83.pre.i, 0
  br i1 %i.of, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit187.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i: ; preds = %bb.bx
  %i.og = shl i64 %.val83.pre.i, 3
  %i.oh = icmp slt i64 %.val83.pre.i, 2305843009213693950
  call void @llvm.assume(i1 %i.oh)
  %i.oi = and i64 %i.og, -16                      ; 2 uses
  %i.oj = add i64 %i.oi, 16                       ; 2 uses
  %i.ok = add nsw i64 %.val83.pre.i, 17
  %i.ol = add i64 %i.ok, %i.oj                    ; 4 uses
  %i.om = icmp uge i64 %i.ol, %i.oj
  %i.on = icmp ult i64 %i.ol, 9223372036854775793
  call void @llvm.assume(i1 %i.om)
  call void @llvm.assume(i1 %i.on)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val82.pre.i) ]
  %i.oo = icmp eq i64 %i.ol, 0
  br i1 %i.oo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit187.i, label %bb.by

bb.by:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i
  %i.op = sub nuw nsw i64 -16, %i.oi
  %i.oq = getelementptr inbounds i8, ptr %.val82.pre.i, i64 %i.op
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oq, i64 noundef %i.ol, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !123093
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit187.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.ad, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %._crit_edge.i, %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !123093
  %.val78.i = load ptr, ptr %i.k, align 8, !noalias !123093 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val79.i = load i64, ptr %i.or, align 8, !noalias !123093, !noundef !67 ; 3 uses
  %i.os = icmp eq i64 %.val79.i, 0
  br i1 %i.os, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.ot = shl i64 %.val79.i, 4                    ; 2 uses
  %i.ou = add i64 %i.ot, 16                       ; 2 uses
  %i.ov = add i64 %.val79.i, 17
  %i.ow = add i64 %i.ov, %i.ou                    ; 4 uses
  %i.ox = icmp uge i64 %i.ow, %i.ou
  %i.oy = icmp ult i64 %i.ow, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ox)
  tail call void @llvm.assume(i1 %i.oy)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val78.i) ]
  %i.oz = icmp eq i64 %i.ow, 0
  br i1 %i.oz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.pa = sub nuw nsw i64 -16, %i.ot
  %i.pb = getelementptr inbounds i8, ptr %.val78.i, i64 %i.pa
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pb, i64 noundef %i.ow, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !123093
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.bz, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !123093
  %.val72.i = load i64, ptr %i.l, align 8, !noalias !123093 ; 2 uses
  %i.pc = icmp eq i64 %.val72.i, 0
  br i1 %i.pc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit194.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val73.i = load ptr, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !123093, !nonnull !67, !noundef !67
  %i.pd = shl nuw i64 %.val72.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val73.i, i64 noundef %i.pd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !123093
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit194.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.bw, !noalias !123093

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit194.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i193.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.26.0 = phi i64 [ %.sroa.26.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i ], [ %.sroa.26.2, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i193.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188.i ] ; 7 uses
  %.sroa.25.0 = phi ptr [ %.sroa.25.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i ], [ %.sroa.25.2, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i193.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188.i ] ; 10 uses
  %.sroa.18.1 = phi i64 [ %.sroa.18.3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i ], [ %.sroa.18.3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i193.i ], [ -1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ -1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188.i ] ; 7 uses
  %.sroa.11.0 = phi i64 [ %.sroa.11.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i ], [ %.sroa.11.2, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i193.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188.i ]
  %.sroa.0133.1 = phi i1 [ %.sroa.0133.3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i ], [ %.sroa.0133.3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i193.i ], [ false, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ false, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !123093
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ch unwind label %bb.c

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit187.i: ; preds = %bb.by, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i, %bb.bx, %.thread.i
  %.sroa.26.2 = phi i64 [ %.sroa.26.16.copyload149, %.thread.i ], [ %.sroa.26.1, %bb.bx ], [ %.sroa.26.1, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i ], [ %.sroa.26.1, %bb.by ] ; 2 uses
  %.sroa.25.2 = phi ptr [ %.sroa.25.16.copyload144, %.thread.i ], [ %.sroa.25.1, %bb.bx ], [ %.sroa.25.1, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i ], [ %.sroa.25.1, %bb.by ] ; 2 uses
  %.sroa.18.3 = phi i64 [ %.sroa.18.16.copyload139, %.thread.i ], [ %.sroa.18.2, %bb.bx ], [ %.sroa.18.2, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i ], [ %.sroa.18.2, %bb.by ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %.sroa.032.0.copyload.i218, %.thread.i ], [ %.sroa.11.1, %bb.bx ], [ %.sroa.11.1, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i ], [ %.sroa.11.1, %bb.by ] ; 2 uses
  %.sroa.0133.3 = phi i1 [ true, %.thread.i ], [ %.sroa.0133.2, %bb.bx ], [ %.sroa.0133.2, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i186.i ], [ %.sroa.0133.2, %bb.by ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !123093
  %.val76.i = load ptr, ptr %i.k, align 8, !noalias !123093 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val77.i = load i64, ptr %i.pe, align 8, !noalias !123093, !noundef !67 ; 3 uses
  %i.pf = icmp eq i64 %.val77.i, 0
  br i1 %i.pf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i191.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i191.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit187.i
  %i.pg = shl i64 %.val77.i, 4                    ; 2 uses
  %i.ph = add i64 %i.pg, 16                       ; 2 uses
  %i.pi = add i64 %.val77.i, 17
  %i.pj = add i64 %i.pi, %i.ph                    ; 4 uses
  %i.pk = icmp uge i64 %i.pj, %i.ph
  %i.pl = icmp ult i64 %i.pj, 9223372036854775793
  call void @llvm.assume(i1 %i.pk)
  call void @llvm.assume(i1 %i.pl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val76.i) ]
  %i.pm = icmp eq i64 %i.pj, 0
  br i1 %i.pm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i, label %bb.ca

bb.ca:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i191.i
  %i.pn = sub nuw nsw i64 -16, %i.pg
  %i.po = getelementptr inbounds i8, ptr %.val76.i, i64 %i.pn
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.po, i64 noundef %i.pj, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !123093
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i: ; preds = %bb.ca, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i191.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_NtB1S_10UndirectedEEECskcxRuJ53GpR_9rustworkx.exit187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !123093
  %.val70.i = load i64, ptr %i.l, align 8, !noalias !123093 ; 2 uses
  %i.pp = icmp eq i64 %.val70.i, 0
  br i1 %i.pp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit194.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i193.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i193.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit192.i
  %.val71.i = load ptr, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !123093, !nonnull !67, !noundef !67
  %i.pq = shl nuw i64 %.val70.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val71.i, i64 noundef %i.pq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !123093
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit194.i

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.0185.0.copyload = load i64, ptr %i.o, align 8 ; 3 uses
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5187.0.copyload = load ptr, ptr %.sroa.5187.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6190.0.copyload = load i64, ptr %.sroa.6190.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !123171
  %i.pr = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !123171 ; 5 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %bb.cb, label %bb.cd, !prof !104

bb.cb:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc104 unwind label %bb.cc

.noexc104:                                        ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.pt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pu = icmp eq i64 %.sroa.0185.0.copyload, 0
  br i1 %i.pu, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i106

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i106: ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5187.0.copyload) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5187.0.copyload, i64 noundef %.sroa.0185.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !123172
  br label %.body

bb.cd:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  store i64 %.sroa.0185.0.copyload, ptr %i.pr, align 8
  %.sroa.5187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store ptr %.sroa.5187.0.copyload, ptr %.sroa.5187.0..sroa_idx188, align 8
  %.sroa.6190.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store i64 %.sroa.6190.0.copyload, ptr %.sroa.6190.0..sroa_idx191, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pv, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.020.sroa.5.sroa.4.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.020.sroa.5.sroa.4.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.020.sroa.5.sroa.5.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.pr, ptr %.sroa.020.sroa.5.sroa.5.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.020.sroa.5.sroa.6.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @570, ptr %.sroa.020.sroa.5.sroa.6.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.421.0..sroa_idx, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ci, %bb.ct, %bb.cd
  store i64 1, ptr %0, align 8
  %i.pw = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %.val.i.i.i.i.i108 = load i64, ptr %i.pw, align 8, !noundef !67
  %i.px = icmp sgt i64 %.val.i.i.i.i.i108, 0
  br i1 %i.px, label %bb.cg, label %bb.cf, !prof !125

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
          to label %bb.dh unwind label %bb.cy

bb.cg:                                            ; preds = %bb.ce
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %bb.dh

bb.ch:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !123093
  br i1 %.sroa.0133.1, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %.sroa.7210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.27, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0, ptr %i.py, align 8
  %.sroa.4207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18.1, ptr %.sroa.4207.0..sroa_idx, align 8
  %.sroa.5208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.25.0, ptr %.sroa.5208.0..sroa_idx, align 8
  %.sroa.6209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.26.0, ptr %.sroa.6209.0..sroa_idx, align 8
  br label %bb.ce

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %.not73 = icmp eq i64 %.sroa.18.1, -1
  br i1 %.not73, label %bb.cq, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0) ]
  %i.pz = icmp ult i64 %.sroa.26.0, 2305843009213693952
  call void @llvm.assume(i1 %i.pz)
  %.idx = shl nuw nsw i64 %.sroa.26.0, 2          ; 2 uses
  %i.qa = getelementptr i8, ptr %.sroa.25.0, i64 %.idx ; 2 uses
  %i.qb = icmp sgt i64 %.sroa.18.1, -1
  call void @llvm.assume(i1 %i.qb)
  %i.qc = shl nuw i64 %.sroa.26.0, 3              ; 2 uses
  %.not.i.i110 = icmp samesign ugt i64 %.sroa.26.0, 1152921504606846975
  br i1 %.not.i.i110, label %bb.cn, label %bb.cl, !prof !73

bb.cl:                                            ; preds = %bb.ck
  %i.qd = icmp eq i64 %.sroa.26.0, 0
  br i1 %i.qd, label %._crit_edge.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !123173
  %i.qe = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.qc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !123173 ; 7 uses
  %i.qf = icmp eq ptr %i.qe, null
  br i1 %i.qf, label %bb.cn, label %.lr.ph.i.i.i.i.i.i.preheader

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.cm ], [ 0, %bb.ck ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.qc) #61
          to label %bb.co unwind label %bb.cp, !noalias !123174

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.cm
  %i.qg = add nsw i64 %.idx, -4                   ; 3 uses
  %i.qh = lshr exact i64 %i.qg, 2
  %i.qi = add nuw nsw i64 %i.qh, 1                ; 2 uses
  %min.iters.check504 = icmp ult i64 %i.qg, 68
  br i1 %min.iters.check504, label %.lr.ph.i.i.i.i.i.i.preheader517, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.qj = shl i64 %i.qg, 1
  %6 = getelementptr i8, ptr %i.qe, i64 %i.qj
  %scevgep = getelementptr i8, ptr %6, i64 8
  %bound0 = icmp ult ptr %i.qe, %i.qa
  %bound1 = icmp ult ptr %.sroa.25.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader517, label %vector.ph505

vector.ph505:                                     ; preds = %vector.memcheck
  %n.vec506 = and i64 %i.qi, 9223372036854775804  ; 5 uses
  %i.qk = shl i64 %n.vec506, 2
  %i.ql = getelementptr i8, ptr %.sroa.25.0, i64 %i.qk
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next511, %vector.body507 ] ; 3 uses
  %i.qm = shl i64 %index508, 2
  %next.gep = getelementptr i8, ptr %.sroa.25.0, i64 %i.qm ; 2 uses
  %i.qn = getelementptr i8, ptr %next.gep, i64 8
  %wide.load509 = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !123175, !noalias !123176
  %wide.load510 = load <2 x i32>, ptr %i.qn, align 4, !alias.scope !123175, !noalias !123176
  %i.qo = zext <2 x i32> %wide.load509 to <2 x i64>
  %i.qp = zext <2 x i32> %wide.load510 to <2 x i64>
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %index508 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store <2 x i64> %i.qo, ptr %i.qq, align 8, !alias.scope !123177, !noalias !123178
  store <2 x i64> %i.qp, ptr %i.qr, align 8, !alias.scope !123177, !noalias !123178
  %index.next511 = add nuw i64 %index508, 4       ; 2 uses
  %i.qs = icmp eq i64 %index.next511, %n.vec506
  br i1 %i.qs, label %middle.block512, label %vector.body507, !llvm.loop !123088

middle.block512:                                  ; preds = %vector.body507
  %cmp.n513 = icmp eq i64 %i.qi, %n.vec506
  br i1 %cmp.n513, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader517

.lr.ph.i.i.i.i.i.i.preheader517:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block512
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec506, %middle.block512 ]
  %.ph518 = phi ptr [ %.sroa.25.0, %vector.memcheck ], [ %.sroa.25.0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ql, %middle.block512 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader517, %.lr.ph.i.i.i.i.i.i
  %i.qt = phi i64 [ %i.qz, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader517 ] ; 2 uses
  %i.qu = phi ptr [ %i.qw, %.lr.ph.i.i.i.i.i.i ], [ %.ph518, %.lr.ph.i.i.i.i.i.i.preheader517 ] ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !noalias !123176, !noundef !67
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 4 ; 2 uses
  %i.qx = zext i32 %i.qv to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qt
  store i64 %i.qx, ptr %i.qy, align 8, !noalias !123179
  %i.qz = add nuw nsw i64 %i.qt, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.qw, %i.qa
  br i1 %.not.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !123089

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block512, %bb.cl
  %i.ra = phi ptr [ inttoptr (i64 8 to ptr), %bb.cl ], [ %i.qe, %middle.block512 ], [ %i.qe, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i = phi i64 [ 0, %bb.cl ], [ %n.vec506, %middle.block512 ], [ %i.qz, %.lr.ph.i.i.i.i.i.i ]
  %i.rb = icmp eq i64 %.sroa.18.1, 0
  br i1 %i.rb, label %bb.cu, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %i.rc = shl nuw i64 %.sroa.18.1, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.0, i64 noundef %i.rc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !123176
  br label %bb.cu

bb.co:                                            ; preds = %bb.cn
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.rd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.re = icmp eq i64 %.sroa.18.1, 0
  br i1 %i.re, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %bb.cp
  %i.rf = shl nuw i64 %.sroa.18.1, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.0, i64 noundef %i.rf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !123180
  br label %.body

bb.cq:                                            ; preds = %bb.cj
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.rg = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %bb.cr, label %bb.ct, !prof !104

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc113 unwind label %bb.cs

.noexc113:                                        ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cr
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ct:                                            ; preds = %bb.cq
  store ptr @2840, ptr %i.rg, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store i64 36, ptr %i.rj, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.050.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rk, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.050.sroa.5.0..sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.4.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.050.sroa.5.sroa.4.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.5.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.rg, ptr %.sroa.050.sroa.5.sroa.5.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.6.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @2841, ptr %.sroa.050.sroa.5.sroa.6.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.451.0..sroa_idx, align 8
  br label %bb.ce

bb.cu:                                            ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.26.0, ptr %i.rl, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ra, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.42.0.i.i.i.i.i, ptr %.sroa.5180.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %i.rm = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %.val.i.i.i.i.i115 = load i64, ptr %i.rm, align 8, !noundef !67
  %i.rn = icmp sgt i64 %.val.i.i.i.i.i115, 0
  br i1 %i.rn, label %bb.cw, label %bb.cv, !prof !125

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
          to label %bb.cz unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %bb.cz

bb.cx:                                            ; preds = %.body, %bb.cy
  %.pn75 = phi { ptr, i32 } [ %i.ro, %bb.cy ], [ %.pn, %.body ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_(i64 1, ptr nonnull %4) #63
          to label %bb.dc unwind label %bb.dg

bb.cy:                                            ; preds = %bb.cv, %bb.cf
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cz:                                            ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val.i.i.i.i.i118 = load i64, ptr %i.rm, align 8, !noundef !67
  %i.rp = icmp sgt i64 %.val.i.i.i.i.i118, 0
  br i1 %i.rp, label %bb.db, label %bb.da, !prof !125

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120 unwind label %bb.dd

bb.db:                                            ; preds = %bb.cz
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120

bb.dc:                                            ; preds = %bb.cx, %bb.dd
  %.pn77 = phi { ptr, i32 } [ %i.rq, %bb.dd ], [ %.pn75, %bb.cx ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %3) #63
          to label %bb.dm unwind label %bb.dg

bb.dd:                                            ; preds = %bb.di, %bb.da
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120: ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.val.i.i.i.i = load i64, ptr %i.rm, align 8, !noundef !67
  %i.rr = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.rr, label %bb.df, label %bb.de, !prof !125

bb.de:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %3)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.df:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120
  call void @_Py_DecRef(ptr noundef nonnull %3) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.dl, %bb.dk, %bb.df, %bb.de
  ret void

bb.dg:                                            ; preds = %.body, %bb.cx, %bb.dc
  %i.rs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.dh:                                            ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val.i.i.i.i.i122 = load i64, ptr %i.pw, align 8, !noundef !67
  %i.rt = icmp sgt i64 %.val.i.i.i.i.i122, 0
  br i1 %i.rt, label %bb.dj, label %bb.di, !prof !125

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit124 unwind label %bb.dd

bb.dj:                                            ; preds = %bb.dh
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path27digraph_astar_shortest_path:bb.a
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %storemerge17.i.i155.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, ptr noundef nonnull align 8 dereferenceable(16) %i.me, i64 16, i1 false), !noalias !124174
  %.not.i.i161.i = icmp eq i64 %i.mc, 0
  br i1 %.not.i.i161.i, label %.loopexit88.i, label %.lr.ph.split.i.i154.i

.loopexit88.i:                                    ; preds = %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i160.i, %.lr.ph.split.i.i154.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i165.i, %.lr.ph.split.us.i.i162.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i151.i
  %storemerge.lcssa.i.i158.i = phi i64 [ 0, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i151.i ], [ %storemerge17.us.i.i163.i, %.lr.ph.split.us.i.i162.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i165.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i160.i ], [ %storemerge17.i.i155.i, %.lr.ph.split.i.i154.i ]
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %storemerge.lcssa.i.i158.i ; 2 uses
  store double %i.ll, ptr %i.mg, align 8, !noalias !124174
  %.sroa.13.16..sroa_idx.i.i159.i = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store i32 %.sroa.637.sroa.6.0.extract.trunc.i, ptr %.sroa.13.16..sroa_idx.i.i159.i, align 8, !noalias !124174
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit88.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i
  %i.mh = zext i32 %i.ji to i64                   ; 2 uses
  %i.mi = icmp ugt i64 %i.dh, %i.mh
  br i1 %i.mi, label %.lr.ph.i, label %.backedge98.i

.loopexit.loopexit.i:                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i, %middle.block
  %.sroa.5.0.copyload15.pre.i = load ptr, ptr %i.es, align 8, !noalias !124175
  %.sroa.6.0.copyload17.pre.i = load i64, ptr %i.et, align 8, !noalias !124175
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %select.unfold.i114.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i
  %.sroa.6.0.copyload17.i = phi i64 [ %.sroa.6.0.copyload17.pre.i, %.loopexit.loopexit.i ], [ %i.fa, %select.unfold.i114.i ], [ 1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i ]
  %.sroa.5.0.copyload15.i = phi ptr [ %.sroa.5.0.copyload15.pre.i, %.loopexit.loopexit.i ], [ %i.gq, %select.unfold.i114.i ], [ %i.eq, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i ] ; 3 uses
  %.sroa.012.0.copyload13.i = load i64, ptr %i.a, align 8, !noalias !124175 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124129
  call void @llvm.experimental.noalias.scope.decl(metadata !124176)
  %i.mj = load i64, ptr %i.dc, align 8, !alias.scope !124176, !noalias !124108, !noundef !67
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %select.unfold83.i, label %bb.bm

bb.bm:                                            ; preds = %.loopexit.i
  %.val.i169.i = load i64, ptr %i.ar, align 8, !alias.scope !124177, !noalias !124178, !noundef !67
  %i.ml = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !124179, !noundef !67
  %i.mm = xor i64 %.val.i169.i, %i.dl
  %i.mn = zext i64 %i.mm to i128
  %i.mo = zext i64 %i.ml to i128
  %i.mp = mul nuw i128 %i.mo, %i.mn               ; 2 uses
  %i.mq = lshr i128 %i.mp, 64
  %i.mr = xor i128 %i.mq, %i.mp
  %i.ms = trunc i128 %i.mr to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124180)
  call void @llvm.experimental.noalias.scope.decl(metadata !124181)
  %i.mt = lshr i64 %i.ms, 57
  %i.mu = trunc nuw nsw i64 %i.mt to i8
  %i.mv = load i64, ptr %i.dd, align 8, !alias.scope !124182, !noalias !124183, !noundef !67 ; 2 uses
  %i.mw = load ptr, ptr %i.k, align 8, !alias.scope !124182, !noalias !124183, !nonnull !67, !noundef !67 ; 2 uses
  %i.mx = insertelement <16 x i8> poison, i8 %i.mu, i64 0
  %i.my = shufflevector <16 x i8> %i.mx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %bb.bm
  %.sroa.011.0.i.i.i170.i = phi i64 [ 0, %bb.bm ], [ %i.np, %bb.bp ]
  %.pn.i.i171.i = phi i64 [ %i.ms, %bb.bm ], [ %i.nq, %bb.bp ]
  %.sroa.01.0.i.i.i172.i = and i64 %.pn.i.i171.i, %i.mv ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.sroa.01.0.i.i.i172.i
  %.sroa.0.0.copyload.i24.i.i173.i = load <16 x i8>, ptr %i.mz, align 1, !noalias !124184 ; 2 uses
  %i.na = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i173.i, %i.my
  %i.nb = bitcast <16 x i1> %i.na to i16          ; 2 uses
  %.not.i.not30.i.i174.i = icmp eq i16 %i.nb, 0
  br i1 %.not.i.not30.i.i174.i, label %._crit_edge.i.i179.i, label %.lr.ph.i.i175.i

.lr.ph.i.i175.i:                                  ; preds = %bb.bn, %bb.bo
  %.sroa.05.0.i31.i.i176.i = phi i16 [ %i.no, %bb.bo ], [ %i.nb, %bb.bn ] ; 3 uses
  %i.nc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i176.i, i1 true)
  %i.nd = zext nneg i16 %i.nc to i64
  %i.ne = add i64 %.sroa.01.0.i.i.i172.i, %i.nd
  %i.nf = and i64 %i.ne, %i.mv
  %i.ng = sub nsw i64 0, %i.nf
  %i.nh = getelementptr inbounds [16 x i8], ptr %i.mw, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 -16
  %.val2.i.i.i177.i = load i32, ptr %i.ni, align 4, !noalias !124185, !noundef !67
  %i.nj = icmp eq i32 %i.dk, %.val2.i.i.i177.i
  br i1 %i.nj, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit184.i, label %bb.bo, !prof !77

._crit_edge.i.i179.i:                             ; preds = %bb.bo, %bb.bn
  %i.nk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i173.i, splat (i8 -1)
  %i.nl = bitcast <16 x i1> %i.nk to i16
  %i.nm = icmp eq i16 %i.nl, 0
  br i1 %i.nm, label %bb.bp, label %select.unfold83.i, !prof !71

bb.bo:                                            ; preds = %.lr.ph.i.i175.i
  %i.nn = add i16 %.sroa.05.0.i31.i.i176.i, -1
  %i.no = and i16 %i.nn, %.sroa.05.0.i31.i.i176.i ; 2 uses
  %.not.i.not.i.i178.i = icmp eq i16 %i.no, 0
  br i1 %.not.i.not.i.i178.i, label %._crit_edge.i.i179.i, label %.lr.ph.i.i175.i

bb.bp:                                            ; preds = %._crit_edge.i.i179.i
  %i.np = add i64 %.sroa.011.0.i.i.i170.i, 16     ; 2 uses
  %i.nq = add i64 %.sroa.01.0.i.i.i172.i, %i.np
  br label %bb.bn

bb.bq:                                            ; preds = %select.unfold83.i
  %i.nr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ns = icmp eq i64 %.sroa.012.0.copyload13.i, 0
  br i1 %i.ns, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.bq
  %i.nt = shl nuw i64 %.sroa.012.0.copyload13.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload15.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload15.i, i64 noundef %i.nt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !124108
  br label %.body.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit184.i: ; preds = %.lr.ph.i.i175.i
  %i.nu = getelementptr inbounds i8, ptr %i.nh, i64 -8
  %i.nv = load i64, ptr %i.nu, align 8, !noalias !124108, !noundef !67
  br label %bb.bs

select.unfold83.i:                                ; preds = %._crit_edge.i.i179.i, %.loopexit.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825) #61
          to label %bb.ax unwind label %bb.bq, !noalias !124108

bb.br:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !124108
  unreachable

bb.bs:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit184.i, %bb.bj, %bb.az, %bb.ae
  %.sroa.26.1 = phi i64 [ %.sroa.12.i.sroa.7.0, %bb.ae ], [ %.sroa.6.0.copyload17.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit184.i ], [ %.sroa.26.16.copyload147, %bb.az ], [ %.sroa.26.16.copyload, %bb.bj ] ; 3 uses
  %.sroa.25.1 = phi ptr [ %.sroa.12.i.sroa.6.0, %bb.ae ], [ %.sroa.5.0.copyload15.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit184.i ], [ %.sroa.25.16.copyload142, %bb.az ], [ %.sroa.25.16.copyload, %bb.bj ] ; 3 uses
  %.sroa.18.2 = phi i64 [ %.sroa.12.i.sroa.0.0, %bb.ae ], [ %.sroa.012.0.copyload13.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit184.i ], [ %.sroa.18.16.copyload137, %bb.az ], [ %.sroa.18.16.copyload, %bb.bj ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %i.el, %bb.ae ], [ %i.nv, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit184.i ], [ %.sroa.042.0.copyload.i217, %bb.az ], [ %.sroa.050.0.copyload.i216, %bb.bj ] ; 3 uses
  %.sroa.0133.2 = phi i1 [ true, %bb.ae ], [ false, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit184.i ], [ true, %bb.az ], [ true, %bb.bj ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !124108
  %.val84.pre.i = load ptr, ptr %i.j, align 8, !noalias !124108 ; 2 uses
  %.phi.trans.insert216.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val85.pre.i = load i64, ptr %.phi.trans.insert216.i, align 8, !noalias !124108 ; 4 uses
  %i.nx = icmp eq i64 %.val85.pre.i, 0
  br i1 %i.nx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit186.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i: ; preds = %bb.bs
  %i.ny = shl i64 %.val85.pre.i, 3
  %i.nz = icmp slt i64 %.val85.pre.i, 2305843009213693950
  call void @llvm.assume(i1 %i.nz)
  %i.oa = and i64 %i.ny, -16                      ; 2 uses
  %i.ob = add i64 %i.oa, 16                       ; 2 uses
  %i.oc = add nsw i64 %.val85.pre.i, 17
  %i.od = add i64 %i.oc, %i.ob                    ; 4 uses
  %i.oe = icmp uge i64 %i.od, %i.ob
  %i.of = icmp ult i64 %i.od, 9223372036854775793
  call void @llvm.assume(i1 %i.oe)
  call void @llvm.assume(i1 %i.of)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val84.pre.i) ]
  %i.og = icmp eq i64 %i.od, 0
  br i1 %i.og, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit186.i, label %bb.bt

bb.bt:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i
  %i.oh = sub nuw nsw i64 -16, %i.oa
  %i.oi = getelementptr inbounds i8, ptr %.val84.pre.i, i64 %i.oh
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oi, i64 noundef %i.od, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !124108
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit186.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.ad, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %._crit_edge156.i, %._crit_edge156.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !124108
  %.val78.i = load ptr, ptr %i.k, align 8, !noalias !124108 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val79.i = load i64, ptr %i.oj, align 8, !noalias !124108, !noundef !67 ; 3 uses
  %i.ok = icmp eq i64 %.val79.i, 0
  br i1 %i.ok, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.ol = shl i64 %.val79.i, 4                    ; 2 uses
  %i.om = add i64 %i.ol, 16                       ; 2 uses
  %i.on = add i64 %.val79.i, 17
  %i.oo = add i64 %i.on, %i.om                    ; 4 uses
  %i.op = icmp uge i64 %i.oo, %i.om
  %i.oq = icmp ult i64 %i.oo, 9223372036854775793
  tail call void @llvm.assume(i1 %i.op)
  tail call void @llvm.assume(i1 %i.oq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val78.i) ]
  %i.or = icmp eq i64 %i.oo, 0
  br i1 %i.or, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.os = sub nuw nsw i64 -16, %i.ol
  %i.ot = getelementptr inbounds i8, ptr %.val78.i, i64 %i.os
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ot, i64 noundef %i.oo, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !124108
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.bu, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !124108
  %.val72.i = load i64, ptr %i.l, align 8, !noalias !124108 ; 2 uses
  %i.ou = icmp eq i64 %.val72.i, 0
  br i1 %i.ou, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit193.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i187.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i187.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val73.i = load ptr, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !124108, !nonnull !67, !noundef !67
  %i.ov = shl nuw i64 %.val72.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val73.i, i64 noundef %i.ov, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124108
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit193.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.br, !noalias !124108

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit193.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i192.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i187.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.26.0 = phi i64 [ %.sroa.26.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i ], [ %.sroa.26.2, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i192.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i187.i ] ; 7 uses
  %.sroa.25.0 = phi ptr [ %.sroa.25.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i ], [ %.sroa.25.2, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i192.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i187.i ] ; 10 uses
  %.sroa.18.1 = phi i64 [ %.sroa.18.3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i ], [ %.sroa.18.3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i192.i ], [ -1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ -1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i187.i ] ; 7 uses
  %.sroa.11.0 = phi i64 [ %.sroa.11.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i ], [ %.sroa.11.2, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i192.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i187.i ]
  %.sroa.0133.1 = phi i1 [ %.sroa.0133.3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i ], [ %.sroa.0133.3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i192.i ], [ false, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ], [ false, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i187.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !124108
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.cc unwind label %bb.c

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit186.i: ; preds = %bb.bt, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i, %bb.bs, %.thread.i
  %.sroa.26.2 = phi i64 [ %.sroa.26.16.copyload149, %.thread.i ], [ %.sroa.26.1, %bb.bs ], [ %.sroa.26.1, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i ], [ %.sroa.26.1, %bb.bt ] ; 2 uses
  %.sroa.25.2 = phi ptr [ %.sroa.25.16.copyload144, %.thread.i ], [ %.sroa.25.1, %bb.bs ], [ %.sroa.25.1, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i ], [ %.sroa.25.1, %bb.bt ] ; 2 uses
  %.sroa.18.3 = phi i64 [ %.sroa.18.16.copyload139, %.thread.i ], [ %.sroa.18.2, %bb.bs ], [ %.sroa.18.2, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i ], [ %.sroa.18.2, %bb.bt ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %.sroa.032.0.copyload.i218, %.thread.i ], [ %.sroa.11.1, %bb.bs ], [ %.sroa.11.1, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i ], [ %.sroa.11.1, %bb.bt ] ; 2 uses
  %.sroa.0133.3 = phi i1 [ true, %.thread.i ], [ %.sroa.0133.2, %bb.bs ], [ %.sroa.0133.2, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i185.i ], [ %.sroa.0133.2, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !124108
  %.val76.i = load ptr, ptr %i.k, align 8, !noalias !124108 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val77.i = load i64, ptr %i.ow, align 8, !noalias !124108, !noundef !67 ; 3 uses
  %i.ox = icmp eq i64 %.val77.i, 0
  br i1 %i.ox, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i190.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i190.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit186.i
  %i.oy = shl i64 %.val77.i, 4                    ; 2 uses
  %i.oz = add i64 %i.oy, 16                       ; 2 uses
  %i.pa = add i64 %.val77.i, 17
  %i.pb = add i64 %i.pa, %i.oz                    ; 4 uses
  %i.pc = icmp uge i64 %i.pb, %i.oz
  %i.pd = icmp ult i64 %i.pb, 9223372036854775793
  call void @llvm.assume(i1 %i.pc)
  call void @llvm.assume(i1 %i.pd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val76.i) ]
  %i.pe = icmp eq i64 %i.pb, 0
  br i1 %i.pe, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i, label %bb.bv

bb.bv:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i190.i
  %i.pf = sub nuw nsw i64 -16, %i.oy
  %i.pg = getelementptr inbounds i8, ptr %.val76.i, i64 %i.pf
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pg, i64 noundef %i.pb, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !124108
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i: ; preds = %bb.bv, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i190.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path5astar11PathTrackerRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2X_5types3any5PyAnyEB2S_EEECskcxRuJ53GpR_9rustworkx.exit186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !124108
  %.val70.i = load i64, ptr %i.l, align 8, !noalias !124108 ; 2 uses
  %i.ph = icmp eq i64 %.val70.i, 0
  br i1 %i.ph, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit193.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i192.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i192.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx.exit191.i
  %.val71.i = load ptr, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !124108, !nonnull !67, !noundef !67
  %i.pi = shl nuw i64 %.val70.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val71.i, i64 noundef %i.pi, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124108
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit193.i

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.0185.0.copyload = load i64, ptr %i.o, align 8 ; 3 uses
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5187.0.copyload = load ptr, ptr %.sroa.5187.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6190.0.copyload = load i64, ptr %.sroa.6190.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !124186
  %i.pj = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124186 ; 5 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %bb.bw, label %bb.by, !prof !104

bb.bw:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc104 unwind label %bb.bx

.noexc104:                                        ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bw
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pm = icmp eq i64 %.sroa.0185.0.copyload, 0
  br i1 %i.pm, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i106

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i106: ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5187.0.copyload) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5187.0.copyload, i64 noundef %.sroa.0185.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !124187
  br label %.body

bb.by:                                            ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  store i64 %.sroa.0185.0.copyload, ptr %i.pj, align 8
  %.sroa.5187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store ptr %.sroa.5187.0.copyload, ptr %.sroa.5187.0..sroa_idx188, align 8
  %.sroa.6190.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store i64 %.sroa.6190.0.copyload, ptr %.sroa.6190.0..sroa_idx191, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.020.sroa.5.sroa.4.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.020.sroa.5.sroa.4.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.020.sroa.5.sroa.5.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.pj, ptr %.sroa.020.sroa.5.sroa.5.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.020.sroa.5.sroa.6.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @570, ptr %.sroa.020.sroa.5.sroa.6.0..sroa.020.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.421.0..sroa_idx, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cd, %bb.co, %bb.by
  store i64 1, ptr %0, align 8
  %i.po = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %.val.i.i.i.i.i108 = load i64, ptr %i.po, align 8, !noundef !67
  %i.pp = icmp sgt i64 %.val.i.i.i.i.i108, 0
  br i1 %i.pp, label %bb.cb, label %bb.ca, !prof !125

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
          to label %bb.dc unwind label %bb.ct

bb.cb:                                            ; preds = %bb.bz
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %bb.dc

bb.cc:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit193.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !124108
  br i1 %.sroa.0133.1, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %.sroa.7210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.27, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0, ptr %i.pq, align 8
  %.sroa.4207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18.1, ptr %.sroa.4207.0..sroa_idx, align 8
  %.sroa.5208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.25.0, ptr %.sroa.5208.0..sroa_idx, align 8
  %.sroa.6209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.26.0, ptr %.sroa.6209.0..sroa_idx, align 8
  br label %bb.bz

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %.not73 = icmp eq i64 %.sroa.18.1, -1
  br i1 %.not73, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0) ]
  %i.pr = icmp ult i64 %.sroa.26.0, 2305843009213693952
  call void @llvm.assume(i1 %i.pr)
  %.idx = shl nuw nsw i64 %.sroa.26.0, 2          ; 2 uses
  %i.ps = getelementptr i8, ptr %.sroa.25.0, i64 %.idx ; 2 uses
  %i.pt = icmp sgt i64 %.sroa.18.1, -1
  call void @llvm.assume(i1 %i.pt)
  %i.pu = shl nuw i64 %.sroa.26.0, 3              ; 2 uses
  %.not.i.i110 = icmp samesign ugt i64 %.sroa.26.0, 1152921504606846975
  br i1 %.not.i.i110, label %bb.ci, label %bb.cg, !prof !73

bb.cg:                                            ; preds = %bb.cf
  %i.pv = icmp eq i64 %.sroa.26.0, 0
  br i1 %i.pv, label %._crit_edge.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !124188
  %i.pw = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.pu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !124188 ; 7 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %bb.ci, label %.lr.ph.i.i.i.i.i.i.preheader

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.ch ], [ 0, %bb.cf ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.pu) #61
          to label %bb.cj unwind label %bb.ck, !noalias !124189

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ch
  %i.py = add nsw i64 %.idx, -4                   ; 3 uses
  %i.pz = lshr exact i64 %i.py, 2
  %i.qa = add nuw nsw i64 %i.pz, 1                ; 2 uses
  %min.iters.check491 = icmp ult i64 %i.py, 68
  br i1 %min.iters.check491, label %.lr.ph.i.i.i.i.i.i.preheader504, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.qb = shl i64 %i.py, 1
  %6 = getelementptr i8, ptr %i.pw, i64 %i.qb
  %scevgep = getelementptr i8, ptr %6, i64 8
  %bound0 = icmp ult ptr %i.pw, %i.ps
  %bound1 = icmp ult ptr %.sroa.25.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader504, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck
  %n.vec493 = and i64 %i.qa, 9223372036854775804  ; 5 uses
  %i.qc = shl i64 %n.vec493, 2
  %i.qd = getelementptr i8, ptr %.sroa.25.0, i64 %i.qc
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next498, %vector.body494 ] ; 3 uses
  %i.qe = shl i64 %index495, 2
  %next.gep = getelementptr i8, ptr %.sroa.25.0, i64 %i.qe ; 2 uses
  %i.qf = getelementptr i8, ptr %next.gep, i64 8
  %wide.load496 = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !124190, !noalias !124191
  %wide.load497 = load <2 x i32>, ptr %i.qf, align 4, !alias.scope !124190, !noalias !124191
  %i.qg = zext <2 x i32> %wide.load496 to <2 x i64>
  %i.qh = zext <2 x i32> %wide.load497 to <2 x i64>
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %index495 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store <2 x i64> %i.qg, ptr %i.qi, align 8, !alias.scope !124192, !noalias !124193
  store <2 x i64> %i.qh, ptr %i.qj, align 8, !alias.scope !124192, !noalias !124193
  %index.next498 = add nuw i64 %index495, 4       ; 2 uses
  %i.qk = icmp eq i64 %index.next498, %n.vec493
  br i1 %i.qk, label %middle.block499, label %vector.body494, !llvm.loop !124103

middle.block499:                                  ; preds = %vector.body494
  %cmp.n500 = icmp eq i64 %i.qa, %n.vec493
  br i1 %cmp.n500, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader504

.lr.ph.i.i.i.i.i.i.preheader504:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block499
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec493, %middle.block499 ]
  %.ph505 = phi ptr [ %.sroa.25.0, %vector.memcheck ], [ %.sroa.25.0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.qd, %middle.block499 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader504, %.lr.ph.i.i.i.i.i.i
  %i.ql = phi i64 [ %i.qr, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader504 ] ; 2 uses
  %i.qm = phi ptr [ %i.qo, %.lr.ph.i.i.i.i.i.i ], [ %.ph505, %.lr.ph.i.i.i.i.i.i.preheader504 ] ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !noalias !124191, !noundef !67
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 4 ; 2 uses
  %i.qp = zext i32 %i.qn to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.ql
  store i64 %i.qp, ptr %i.qq, align 8, !noalias !124194
  %i.qr = add nuw nsw i64 %i.ql, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.qo, %i.ps
  br i1 %.not.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !124104

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block499, %bb.cg
  %i.qs = phi ptr [ inttoptr (i64 8 to ptr), %bb.cg ], [ %i.pw, %middle.block499 ], [ %i.pw, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i = phi i64 [ 0, %bb.cg ], [ %n.vec493, %middle.block499 ], [ %i.qr, %.lr.ph.i.i.i.i.i.i ]
  %i.qt = icmp eq i64 %.sroa.18.1, 0
  br i1 %i.qt, label %bb.cp, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %i.qu = shl nuw i64 %.sroa.18.1, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.0, i64 noundef %i.qu, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !124191
  br label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qw = icmp eq i64 %.sroa.18.1, 0
  br i1 %i.qw, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %bb.ck
  %i.qx = shl nuw i64 %.sroa.18.1, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.0, i64 noundef %i.qx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !124195
  br label %.body

bb.cl:                                            ; preds = %bb.ce
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.qy = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.cm, label %bb.co, !prof !104

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc113 unwind label %bb.cn

.noexc113:                                        ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.co:                                            ; preds = %bb.cl
  store ptr @2840, ptr %i.qy, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i64 36, ptr %i.rb, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.050.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rc, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.050.sroa.5.0..sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.4.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.050.sroa.5.sroa.4.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.5.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.qy, ptr %.sroa.050.sroa.5.sroa.5.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.6.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @2841, ptr %.sroa.050.sroa.5.sroa.6.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.451.0..sroa_idx, align 8
  br label %bb.bz

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.26.0, ptr %i.rd, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qs, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.42.0.i.i.i.i.i, ptr %.sroa.5180.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %i.re = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %.val.i.i.i.i.i115 = load i64, ptr %i.re, align 8, !noundef !67
  %i.rf = icmp sgt i64 %.val.i.i.i.i.i115, 0
  br i1 %i.rf, label %bb.cr, label %bb.cq, !prof !125

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
          to label %bb.cu unwind label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %bb.cu

bb.cs:                                            ; preds = %.body, %bb.ct
  %.pn75 = phi { ptr, i32 } [ %i.rg, %bb.ct ], [ %.pn, %.body ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_(i64 1, ptr nonnull %4) #63
          to label %bb.cx unwind label %bb.db

bb.ct:                                            ; preds = %bb.cq, %bb.ca
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val.i.i.i.i.i118 = load i64, ptr %i.re, align 8, !noundef !67
  %i.rh = icmp sgt i64 %.val.i.i.i.i.i118, 0
  br i1 %i.rh, label %bb.cw, label %bb.cv, !prof !125

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120 unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120

bb.cx:                                            ; preds = %bb.cs, %bb.cy
  %.pn77 = phi { ptr, i32 } [ %i.ri, %bb.cy ], [ %.pn75, %bb.cs ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %3) #63
          to label %bb.dh unwind label %bb.db

bb.cy:                                            ; preds = %bb.dd, %bb.cv
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120: ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.val.i.i.i.i = load i64, ptr %i.re, align 8, !noundef !67
  %i.rj = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.rj, label %bb.da, label %bb.cz, !prof !125

bb.cz:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %3)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.da:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit120
  call void @_Py_DecRef(ptr noundef nonnull %3) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.dg, %bb.df, %bb.da, %bb.cz
  ret void

bb.db:                                            ; preds = %.body, %bb.cs, %bb.cx
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.dc:                                            ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val.i.i.i.i.i122 = load i64, ptr %i.po, align 8, !noundef !67
  %i.rl = icmp sgt i64 %.val.i.i.i.i.i122, 0
  br i1 %i.rl, label %bb.de, label %bb.dd, !prof !125

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit124 unwind label %bb.cy

bb.de:                                            ; preds = %bb.dc
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path32___pyfunction_find_negative_cycle:bb.a
  unreachable

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set.exit132.i.i.i: ; preds = %bb.bd
  %i.ia = lshr i64 %.sroa.021.0.copyload.i.i.i.i, 38
  %i.ib = and i64 %.sroa.5189.sroa.5.0.extract.shift.i.i.i, 63
  %i.ic = load ptr, ptr %i.i, align 8, !alias.scope !125553, !noalias !125529, !nonnull !67, !noundef !67
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ia ; 2 uses
  %i.ie = shl nuw i64 1, %i.ib
  %i.if = load i64, ptr %i.id, align 8, !noalias !125554, !noundef !67
  %i.ig = or i64 %i.if, %i.ie
  store i64 %i.ig, ptr %i.id, align 8, !noalias !125554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !125529
  br label %bb.at

.loopexit.i.i:                                    ; preds = %bb.ay, %bb.aq
  %.sroa.6.0.i.i = phi i64 [ 0, %bb.aq ], [ %.sroa.02.0.i.i.i83224.i.i.i, %bb.ay ] ; 5 uses
  %.sroa.113.0.i.i = phi ptr [ null, %bb.aq ], [ %i.ch, %bb.ay ] ; 5 uses
  %.sroa.22.0.i.i = phi i64 [ ptrtoint (ptr @1267 to i64), %bb.aq ], [ %.sroa.4.015.i.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.19.0.i.i = phi ptr [ %i.gn, %bb.aq ], [ %i.de, %bb.ay ] ; 2 uses
  %.sroa.16.0.i.i = phi i64 [ 0, %bb.aq ], [ %.sroa.4.015.i.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.13.0.i.i = phi i64 [ 1, %bb.aq ], [ %.sroa.02.0.i.i.i83224.i.i.i, %bb.ay ]
  %.val47.i.i.i = load i64, ptr %i.h, align 8, !noalias !125529 ; 2 uses
  %i.ih = icmp eq i64 %.val47.i.i.i, 0
  br i1 %i.ih, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit134.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i133.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i133.i.i.i: ; preds = %.loopexit.i.i
  %.val48.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !125529, !nonnull !67, !noundef !67
  %i.ii = shl nuw i64 %.val47.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48.i.i.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125529
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit134.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit134.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i133.i.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !125529
  br i1 %i.gm, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit134.i.i.i
  %i.ij = icmp eq i64 %.sroa.4.015.i.i.i.i, 0
  br i1 %i.ij, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i136.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i.i: ; preds = %bb.bf
  %i.ik = shl nuw nsw i64 %.sroa.4.015.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %i.ik, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125529
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i136.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i136.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i.i, %bb.bf
  %i.il = shl nuw nsw i64 %.sroa.02.0.i.i.i83224.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef %i.il, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125529
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.bp unwind label %bb.n, !noalias !125521

bb.bg:                                            ; preds = %bb.ab
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.eg ; 2 uses
  store i64 1, ptr %i.im, align 8, !noalias !125529
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store double 0.000000e+00, ptr %i.in, align 8, !noalias !125529
  %i.io = load i64, ptr %i.dw, align 8, !alias.scope !125555, !noalias !125529, !noundef !67 ; 2 uses
  %i.ip = load i64, ptr %i.h, align 8, !range !70, !alias.scope !125555, !noalias !125529, !noundef !67 ; 2 uses
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE4growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #62
          to label %.noexc141.i.i.i unwind label %.loopexit248.i.i.i, !noalias !125529

.noexc141.i.i.i:                                  ; preds = %bb.bh
  %.pre.i139.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !125555, !noalias !125529
  %.pre5.i140.i.i.i = load i64, ptr %i.h, align 8, !range !70, !alias.scope !125555, !noalias !125529
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc141.i.i.i, %bb.bg
  %i.ir = phi i64 [ %.pre5.i140.i.i.i, %.noexc141.i.i.i ], [ %i.ip, %bb.bg ] ; 2 uses
  %i.is = phi i64 [ %.pre.i139.i.i.i, %.noexc141.i.i.i ], [ %i.io, %bb.bg ] ; 2 uses
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.dw, align 8, !alias.scope !125555, !noalias !125529
  %i.iu = load i64, ptr %i.du, align 8, !alias.scope !125555, !noalias !125529, !noundef !67
  %i.iv = add i64 %i.iu, %i.is                    ; 2 uses
  %.not.i137.i.i.i = icmp ult i64 %i.iv, %i.ir
  %i.iw = select i1 %.not.i137.i.i.i, i64 0, i64 %i.ir
  %.sroa.03.0.i138.i.i.i = sub nuw i64 %i.iv, %i.iw
  %i.ix = load ptr, ptr %i.dv, align 8, !alias.scope !125555, !noalias !125529, !nonnull !67, !noundef !67
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %.sroa.03.0.i138.i.i.i
  store i32 %i.ef, ptr %i.iy, align 4, !noalias !125529
  call void @llvm.experimental.noalias.scope.decl(metadata !125556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !125529
  store i64 %i.eg, ptr %i.c, align 8, !noalias !125557
  %i.iz = load i64, ptr %i.dx, align 8, !alias.scope !125556, !noalias !125529, !noundef !67
  %i.ja = icmp ult i64 %i.eg, %i.iz
  br i1 %i.ja, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set.exit146.i.i.i, label %bb.bj, !prof !77

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !125557
  store ptr %i.c, ptr %i.b, align 8, !noalias !125557
  %.sroa.42.0..sroa_idx.i143.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i143.i.i.i, align 8, !noalias !125557
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.dx, ptr %i.jb, align 8, !noalias !125557
  %.sroa.46.0..sroa_idx.i144.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i144.i.i.i, align 8, !noalias !125557
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1587, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1588) #60
          to label %.noexc145.i.i.i unwind label %.loopexit.split-lp249.i.i.i, !noalias !125529

.noexc145.i.i.i:                                  ; preds = %bb.bj
  unreachable

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set.exit146.i.i.i: ; preds = %bb.bi
  %i.jc = lshr i64 %i.eg, 6
  %i.jd = and i64 %i.dy, 63
  %i.je = load ptr, ptr %i.i, align 8, !alias.scope !125556, !noalias !125529, !nonnull !67, !noundef !67
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jc ; 2 uses
  %i.jg = shl nuw i64 1, %i.jd
  %i.jh = load i64, ptr %i.jf, align 8, !noalias !125557, !noundef !67
  %i.ji = or i64 %i.jh, %i.jg
  store i64 %i.ji, ptr %i.jf, align 8, !noalias !125557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !125529
  br label %.backedge

bb.bk:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit150.i.i.i
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !125529
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %bb.x, %bb.v
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dh, %bb.v ], [ %.pn.i.i.i, %bb.x ], [ %.pn.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ] ; 2 uses
  %i.jk = icmp eq i64 %.sroa.4.015.i.i.i.i, 0
  br i1 %i.jk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit148.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i147.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i147.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.jl = shl nuw nsw i64 %.sroa.4.015.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %i.jl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125529
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit148.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit148.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i147.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.s
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ck, %bb.s ], [ %.pn.pn.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.pn.pn.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i147.i.i.i ] ; 2 uses
  %i.jm = icmp eq i64 %.sroa.02.0.i.i.i83224.i.i.i, 0
  br i1 %i.jm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit150.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit148.i.i.i
  %i.jn = shl nuw nsw i64 %.sroa.02.0.i.i.i83224.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef %i.jn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125529
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit150.i.i.i

bb.bl:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i107.i.i.i, %._crit_edge322.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !125529
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc64.i unwind label %bb.n, !noalias !125521

.noexc64.i:                                       ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !125529
  %i.jo = icmp eq i64 %.sroa.4.015.i.i.i.i, 0
  br i1 %i.jo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.noexc64.i
  %i.jp = shl nuw nsw i64 %.sroa.4.015.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125558
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bm:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit134.i.i.i
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc65.i unwind label %bb.n, !noalias !125521

.noexc65.i:                                       ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !125529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !125558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !125558
  store i64 %.sroa.16.0.i.i, ptr %i.j, align 8, !noalias !125558
  %.sroa.648.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.19.0.i.i, ptr %.sroa.648.0..sroa_idx.i.i, align 8, !noalias !125558
  %.sroa.750.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.22.0.i.i, ptr %.sroa.750.0..sroa_idx.i.i, align 8, !noalias !125558
  invoke fastcc void @_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford40recover_negative_cycle_from_predecessorsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2W_5types3any5PyAnyEB2R_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %.noexc65.i
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jr = icmp eq i64 %.sroa.6.0.i.i, 0
  br i1 %i.jr, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i14.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i14.i.i: ; preds = %bb.bn
  %i.js = shl nuw nsw i64 %.sroa.6.0.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.113.0.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.113.0.i.i, i64 noundef %i.js, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125558
  br label %.body.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.noexc64.i
  %i.jt = icmp eq i64 %.sroa.02.0.i.i.i83224.i.i.i, 0
  br i1 %i.jt, label %.thread.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i15.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i15.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ju = shl nuw nsw i64 %.sroa.02.0.i.i.i83224.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef %i.ju, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125558
  br label %.thread.i

bb.bo:                                            ; preds = %.noexc65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !125558
  %.sroa.783.8.copyload85.i = load i64, ptr %i.k, align 8, !noalias !125559 ; 6 uses
  %.sroa.12.8..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.12.8.copyload89.i = load ptr, ptr %.sroa.12.8..sroa_idx88.i, align 8, !noalias !125559 ; 9 uses
  %.sroa.13.8..sroa_idx92.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.13.8.copyload93.i = load i64, ptr %.sroa.13.8..sroa_idx92.i, align 8, !noalias !125559 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !125558
  %i.jv = icmp eq i64 %.sroa.6.0.i.i, 0
  br i1 %i.jv, label %bb.bq, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i17.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i17.i.i: ; preds = %bb.bo
  %i.jw = shl nuw nsw i64 %.sroa.6.0.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.113.0.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.113.0.i.i, i64 noundef %i.jw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125558
  br label %bb.bq

bb.bp:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i136.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !125529
  br label %bb.by

bb.bq:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i17.i.i, %bb.bo
  %.not.i = icmp eq i64 %.sroa.783.8.copyload85.i, -1
  br i1 %.not.i, label %.thread.i, label %bb.bs

.thread.i:                                        ; preds = %bb.bq, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i15.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !125521
  %i.jx = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125521 ; 4 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.br, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i, !prof !104

bb.br:                                            ; preds = %.thread.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc66.i unwind label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit79.i, !noalias !125521

.noexc66.i:                                       ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.8.copyload89.i) ]
  %i.jz = icmp ult i64 %.sroa.13.8.copyload93.i, 2305843009213693952
  call void @llvm.assume(i1 %i.jz)
  %.idx.i = shl nuw nsw i64 %.sroa.13.8.copyload93.i, 2 ; 2 uses
  %i.ka = getelementptr i8, ptr %.sroa.12.8.copyload89.i, i64 %.idx.i ; 2 uses
  %i.kb = icmp sgt i64 %.sroa.783.8.copyload85.i, -1
  call void @llvm.assume(i1 %i.kb)
  %i.kc = shl nuw i64 %.sroa.13.8.copyload93.i, 3 ; 2 uses
  %.not.i.i.i38 = icmp samesign ugt i64 %.sroa.13.8.copyload93.i, 1152921504606846975
  br i1 %.not.i.i.i38, label %bb.bv, label %bb.bt, !prof !73

bb.bt:                                            ; preds = %bb.bs
  %i.kd = icmp eq i64 %.sroa.13.8.copyload93.i, 0
  br i1 %i.kd, label %._crit_edge.i.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !125560
  %i.ke = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.kc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125560 ; 7 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.bv, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.bu
  %i.kg = add nsw i64 %.idx.i, -4                 ; 3 uses
  %i.kh = lshr exact i64 %i.kg, 2
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kg, 68
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader298, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.kj = shl i64 %i.kg, 1
  %5 = getelementptr i8, ptr %i.ke, i64 %i.kj
  %scevgep = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.ke, %i.ka
  %bound1 = icmp ult ptr %.sroa.12.8.copyload89.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader298, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ki, 9223372036854775804     ; 5 uses
  %i.kk = shl i64 %n.vec, 2
  %i.kl = getelementptr i8, ptr %.sroa.12.8.copyload89.i, i64 %i.kk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.km = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.12.8.copyload89.i, i64 %i.km ; 2 uses
  %i.kn = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !125561, !noalias !125562
  %wide.load296 = load <2 x i32>, ptr %i.kn, align 4, !alias.scope !125561, !noalias !125562
  %i.ko = zext <2 x i32> %wide.load to <2 x i64>
  %i.kp = zext <2 x i32> %wide.load296 to <2 x i64>
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %index ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <2 x i64> %i.ko, ptr %i.kq, align 8, !alias.scope !125563, !noalias !125564
  store <2 x i64> %i.kp, ptr %i.kr, align 8, !alias.scope !125563, !noalias !125564
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !125510

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ki, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader298

.lr.ph.i.i.i.i.i.i.i.preheader298:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph299 = phi ptr [ %.sroa.12.8.copyload89.i, %vector.memcheck ], [ %.sroa.12.8.copyload89.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.bu ], [ 0, %bb.bs ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.kc) #61
          to label %bb.bw unwind label %bb.bx, !noalias !125565

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader298, %.lr.ph.i.i.i.i.i.i.i
  %i.kt = phi i64 [ %i.kz, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader298 ] ; 2 uses
  %i.ku = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph299, %.lr.ph.i.i.i.i.i.i.i.preheader298 ] ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !noalias !125562, !noundef !67
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 4 ; 2 uses
  %i.kx = zext i32 %i.kv to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kt
  store i64 %i.kx, ptr %i.ky, align 8, !noalias !125566
  %i.kz = add nuw nsw i64 %i.kt, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.kw, %i.ka
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !125511

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.bt
  %i.la = phi ptr [ inttoptr (i64 8 to ptr), %bb.bt ], [ %i.ke, %middle.block ], [ %i.ke, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.bt ], [ %n.vec, %middle.block ], [ %i.kz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.lb = icmp eq i64 %.sroa.783.8.copyload85.i, 0
  br i1 %i.lb, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path19find_negative_cycles0_0EE9from_iterB3F_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.lc = shl nuw i64 %.sroa.783.8.copyload85.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.8.copyload89.i, i64 noundef %i.lc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125562
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path19find_negative_cycles0_0EE9from_iterB3F_.exit.i

bb.bw:                                            ; preds = %bb.bv
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = icmp eq i64 %.sroa.783.8.copyload85.i, 0
  br i1 %i.le, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.bx
  %i.lf = shl nuw i64 %.sroa.783.8.copyload85.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.8.copyload89.i, i64 noundef %i.lf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125567
  br label %.body.i

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path19find_negative_cycles0_0EE9from_iterB3F_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.lg = icmp eq i64 %.sroa.0175.0.copyload.i, 0
  br i1 %i.lg, label %bb.cb, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i71.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i71.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path19find_negative_cycles0_0EE9from_iterB3F_.exit.i
  %i.lh = shl nuw i64 %.sroa.0175.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4176.0.copyload.i, i64 noundef %i.lh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125521
  br label %bb.cb

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.thread.i
  store ptr @2839, ptr %i.jx, align 8, !noalias !125521
  %i.li = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i64 26, ptr %i.li, align 8, !noalias !125521
  br label %bb.by

bb.by:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i, %bb.bp
  %.sroa.7.0 = phi i64 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.6.0.i.i, %bb.bp ] ; 2 uses
  %.sroa.13.0 = phi ptr [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.113.0.i.i, %bb.bp ] ; 2 uses
  %.sroa.25.0 = phi i64 [ ptrtoint (ptr @518 to i64), %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.22.0.i.i, %bb.bp ] ; 2 uses
  %.sroa.23.0 = phi ptr [ %i.jx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.19.0.i.i, %bb.bp ] ; 2 uses
  %.sroa.20.0 = phi i64 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.16.0.i.i, %bb.bp ] ; 2 uses
  %.sroa.16.0 = phi i64 [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.13.0.i.i, %bb.bp ] ; 2 uses
  %i.lj = icmp eq i64 %.sroa.0175.0.copyload.i, 0
  br i1 %i.lj, label %bb.ca, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i: ; preds = %bb.by
  %i.lk = shl nuw i64 %.sroa.0175.0.copyload.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4176.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4176.0.copyload.i, i64 noundef %i.lk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125521
  br label %bb.ca

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit79.i: ; preds = %bb.br
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bz:                                            ; preds = %bb.f
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !125521
  unreachable

bb.ca:                                            ; preds = %bb.by, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i, %bb.i, %bb.j
  %.sroa.7.1.ph = phi i64 [ %.sroa.0175.0.copyload.i, %bb.j ], [ %.sroa.0175.0.copyload.i, %bb.i ], [ %.sroa.7.0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i ], [ %.sroa.7.0, %bb.by ]
  %.sroa.13.1.ph = phi ptr [ %.sroa.4176.0.copyload.i, %bb.j ], [ %.sroa.4176.0.copyload.i, %bb.i ], [ %.sroa.13.0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i ], [ %.sroa.13.0, %bb.by ]
  %.sroa.2849.1.ph = phi i64 [ %.sroa.2849.32.copyload, %bb.j ], [ %.sroa.2849.32.copyload, %bb.i ], [ 3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i ], [ 3, %bb.by ]
  %.sroa.27.1.ph = phi i8 [ %.sroa.27.32.copyload, %bb.j ], [ %.sroa.27.32.copyload, %bb.i ], [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i ], [ 1, %bb.by ]
  %.sroa.25.1.ph = phi i64 [ %.sroa.25.32.copyload, %bb.j ], [ %.sroa.25.32.copyload, %bb.i ], [ %.sroa.25.0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i ], [ %.sroa.25.0, %bb.by ]
  %.sroa.23.1.ph = phi ptr [ %.sroa.23.32.copyload, %bb.j ], [ %.sroa.23.32.copyload, %bb.i ], [ %.sroa.23.0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i ], [ %.sroa.23.0, %bb.by ]
  %.sroa.20.1.ph = phi i64 [ %.sroa.20.32.copyload, %bb.j ], [ %.sroa.20.32.copyload, %bb.i ], [ %.sroa.20.0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i ], [ %.sroa.20.0, %bb.by ]
  %.sroa.16.1.ph = phi i64 [ %.sroa.5177.0.copyload.i, %bb.j ], [ %.sroa.5177.0.copyload.i, %bb.i ], [ %.sroa.16.0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i ], [ %.sroa.16.0, %bb.by ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, i64 7, i1 false)
  %i.ln = inttoptr i64 %.sroa.7.1.ph to ptr
  br label %bb.cc

bb.cb:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path19find_negative_cycles0_0EE9from_iterB3F_.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i71.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.13.8.copyload93.i, ptr %i.p, align 8
  %.sroa.13.8..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.la, ptr %.sroa.13.8..sroa_idx45, align 8
  %.sroa.16.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.42.0.i.i.i.i.i.i, ptr %.sroa.16.8..sroa_idx47, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125568
  invoke fastcc void @_RNvXs3e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p)
          to label %.noexc40 unwind label %.body

.noexc40:                                         ; preds = %bb.cb
  %i.lo = load i64, ptr %i.a, align 8, !range !68, !noalias !125568, !noundef !67
  %i.lp = trunc nuw i64 %i.lo to i1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.553.8.copyload55 = load ptr, ptr %i.lq, align 8, !noalias !125569 ; 2 uses
  br i1 %i.lp, label %.thread107, label %bb.cd

.thread107:                                       ; preds = %.noexc40
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.10.sroa.0.0.copyload64 = load ptr, ptr %.sroa.10.8..sroa_idx57, align 8, !noalias !125569
  %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.sroa.5.0.copyload65 = load i64, ptr %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx57.sroa_idx, align 8, !noalias !125569
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.10.sroa.6.0.copyload66 = load i64, ptr %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx, align 8, !noalias !125569
  %.sroa.10.sroa.7.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.sroa.7.0.copyload67 = load ptr, ptr %.sroa.10.sroa.7.0..sroa.10.8..sroa_idx57.sroa_idx, align 8, !noalias !125569
  %.sroa.10.sroa.8.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.10.sroa.8.0.copyload68 = load i64, ptr %.sroa.10.sroa.8.0..sroa.10.8..sroa_idx57.sroa_idx, align 8, !noalias !125569
  %.sroa.10.sroa.9.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.10.sroa.9.0.copyload69 = load i8, ptr %.sroa.10.sroa.9.0..sroa.10.8..sroa_idx57.sroa_idx, align 8, !noalias !125569
  %.sroa.10.sroa.10.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.sroa.10.0..sroa.10.8..sroa_idx57.sroa_idx, i64 7, i1 false)
  %.sroa.10.sroa.11.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.10.sroa.11.0.copyload70 = load i64, ptr %.sroa.10.sroa.11.0..sroa.10.8..sroa_idx57.sroa_idx, align 8, !noalias !125569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cc

bb.cc:                                            ; preds = %.thread107, %bb.ca
  %.sroa.10.sroa.0.0 = phi ptr [ %.sroa.13.1.ph, %bb.ca ], [ %.sroa.10.sroa.0.0.copyload64, %.thread107 ]
  %.sroa.10.sroa.5.0 = phi i64 [ %.sroa.16.1.ph, %bb.ca ], [ %.sroa.10.sroa.5.0.copyload65, %.thread107 ]
  %.sroa.10.sroa.6.0 = phi i64 [ %.sroa.20.1.ph, %bb.ca ], [ %.sroa.10.sroa.6.0.copyload66, %.thread107 ]
  %.sroa.10.sroa.7.0 = phi ptr [ %.sroa.23.1.ph, %bb.ca ], [ %.sroa.10.sroa.7.0.copyload67, %.thread107 ]
  %.sroa.10.sroa.8.0 = phi i64 [ %.sroa.25.1.ph, %bb.ca ], [ %.sroa.10.sroa.8.0.copyload68, %.thread107 ]
  %.sroa.10.sroa.9.0 = phi i8 [ %.sroa.27.1.ph, %bb.ca ], [ %.sroa.10.sroa.9.0.copyload69, %.thread107 ]
  %.sroa.10.sroa.11.0 = phi i64 [ %.sroa.2849.1.ph, %bb.ca ], [ %.sroa.10.sroa.11.0.copyload70, %.thread107 ]
  %.sroa.553.0 = phi ptr [ %i.ln, %bb.ca ], [ %.sroa.553.8.copyload55, %.thread107 ]
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.553.0, ptr %i.lr, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.sroa.0.0, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.sroa.5.0, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.sroa.6.0, ptr %.sroa.674.0..sroa_idx, align 8
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.10.sroa.7.0, ptr %.sroa.775.0..sroa_idx, align 8
  %.sroa.876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.10.sroa.8.0, ptr %.sroa.876.0..sroa_idx, align 8
  %.sroa.977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.10.sroa.9.0, ptr %.sroa.977.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.sroa.10, i64 7, i1 false)
  %.sroa.1178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.10.sroa.11.0, ptr %.sroa.1178.0..sroa_idx, align 8
end_hunk_6
begin_hunk_7_@_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB39_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0ENtNtNtB9_6traits8iterator8Iterator4nextB6b_:bb.a
  br i1 %i.bc, label %bb.k, label %.preheader.i.i.i.i.i

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !noalias !161042, !noundef !67 ; 2 uses
  store i32 %i.bf, ptr %i.u, align 8, !alias.scope !161039, !noalias !161034
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !161042, !noundef !67
  br label %.loopexit9.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.l
  %i.bi = phi i32 [ %i.bn, %bb.l ], [ %i.az, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = icmp ugt i64 %i.aw, %i.bj
  br i1 %i.bk, label %bb.l, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.l:                                             ; preds = %.preheader.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !161042, !noundef !67 ; 3 uses
  store i32 %i.bn, ptr %i.ax, align 4, !alias.scope !161039, !noalias !161034
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.val.i.i.i.i.i = load i32, ptr %i.bo, align 8, !noalias !161042, !noundef !67 ; 2 uses
  %i.bp = icmp eq i32 %.val.i.i.i.i.i, %.val4.i.i.i.i.i
  br i1 %i.bp, label %.preheader.i.i.i.i.i, label %.loopexit9.i.i.i.i

.loopexit9.i.i.i.i:                               ; preds = %bb.l, %bb.k
  %i.bq = phi i32 [ %i.az, %bb.k ], [ %i.bn, %bb.l ]
  %i.br = phi i32 [ %i.bf, %bb.k ], [ %i.ba, %bb.l ]
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.bh, %bb.k ], [ %.val.i.i.i.i.i, %bb.l ] ; 2 uses
  %.val1.i.i.i.i.i.i = load i32, ptr %i.j, align 8, !alias.scope !161033, !noalias !161043, !noundef !67
  %i.bs = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %i.bs, label %.split.i.i.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge

.split.i.i.i.i:                                   ; preds = %.loopexit9.i.i.i.i
  %i.bt = tail call fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, i32 %.sroa.4.0.i.ph.i.i.i.i)
  %.not.i.i.i.i = icmp eq i64 %i.bt, 1
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.loopexit.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge: ; preds = %.split.i.i.i.i, %.loopexit9.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.preheader.i.i.i.i.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.bu = load i64, ptr %i.d, align 8, !alias.scope !161033, !noalias !161034, !noundef !67 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.backedgethread-pre-split.sink.split.i.i, label %.backedgethread-pre-split.sink.split.sink.split.i.i

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.loopexit.i.i: ; preds = %.split.i.i.i.i
  %.pre.i.i = load i64, ptr %i.h, align 8, !alias.scope !161033, !noalias !161034
  br label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.loopexit.i.i, %bb.h
  %i.bw = phi i64 [ %.pre.i.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.loopexit.i.i ], [ %i.ar, %bb.h ]
  %i.bx = load i64, ptr %i.k, align 8, !alias.scope !161033, !noalias !161034, !noundef !67
  %.not16.i.i = icmp ult i64 %i.bw, %i.bx
  br i1 %.not16.i.i, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161044
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !161033, !noalias !161034, !nonnull !67, !noundef !67 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !161033, !noalias !161034, !noundef !67
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.j, align 8, !alias.scope !161033, !noalias !161034, !noundef !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bz, ptr %i.ce, align 8, !alias.scope !161045, !noalias !161044
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cc, ptr %i.cf, align 8, !alias.scope !161045, !noalias !161044
  store i32 1, ptr %i.a, align 8, !alias.scope !161045, !noalias !161044
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cd, ptr %i.cg, align 4, !alias.scope !161045, !noalias !161044
  call fastcc void @_RINvXsf_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1B_8adapters5chain5ChainINtNtB2N_6cloned6ClonedINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBG_EEINtNtB1D_6option8IntoIterBG_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a) #64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161044
  br label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161046)
  %.val.i22.i.i = load i64, ptr %i.l, align 8, !alias.scope !161047, !noalias !161048, !noundef !67
  %i.ch = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !161049, !noundef !67
  %i.ci = zext i32 %.sroa.4.0.i.ph.i.i to i64     ; 3 uses
  %i.cj = xor i64 %.val.i22.i.i, %i.ci
  %i.ck = zext i64 %i.cj to i128
  %i.cl = zext i64 %i.ch to i128
  %i.cm = mul nuw i128 %i.ck, %i.cl               ; 2 uses
  %i.cn = lshr i128 %i.cm, 64
  %i.co = xor i128 %i.cn, %i.cm
  %i.cp = trunc i128 %i.co to i64
  tail call fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g, i64 noundef %i.cp, i32 noundef %.sroa.4.0.i.ph.i.i)
  %i.cq = load ptr, ptr %i.m, align 8, !alias.scope !161033, !noalias !161034, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161052)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !161053, !noalias !161054, !nonnull !67, !noundef !67
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !161053, !noalias !161054, !noundef !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !161053, !noalias !161054, !noundef !67
  %i.cw = icmp ugt i64 %.val6.i.i.i.i.i, %i.ci
  br i1 %i.cw, label %bb.o, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.val.i.i.i23.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !161053, !noalias !161054, !nonnull !67, !noundef !67
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i23.i.i, i64 %i.ci ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !161055, !noundef !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.da, align 8, !noalias !161055
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ -1, %bb.n ], [ -1, %bb.o ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161056)
  %i.db = load i64, ptr %i.d, align 8, !alias.scope !161057, !noalias !161058, !noundef !67 ; 3 uses
  %i.dc = load i64, ptr %1, align 8, !range !70, !alias.scope !161057, !noalias !161058, !noundef !67
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.p, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.p:                                             ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  tail call fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1V_5types3any5PyAnyEEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #62, !noalias !161058
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.p, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.de = load ptr, ptr %i.f, align 8, !alias.scope !161057, !noalias !161058, !nonnull !67, !noundef !67
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.db ; 5 uses
  store ptr %i.cs, ptr %i.df, align 8, !noalias !161059
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %i.cu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !161059
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !161059
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  store i32 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !161059
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i32 -1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !161059
  %i.dg = add i64 %i.db, 1                        ; 2 uses
  store i64 %i.dg, ptr %i.d, align 8, !alias.scope !161057, !noalias !161058
  br label %.backedge.i.i

bb.q:                                             ; preds = %bb.i
  %i.dh = load i64, ptr %i.k, align 8, !alias.scope !161033, !noalias !161034, !noundef !67
  %.not17.i.i = icmp ult i64 %i.ar, %i.dh
  br i1 %.not17.i.i, label %.backedgethread-pre-split.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !161044
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !161033, !noalias !161034, !nonnull !67, !noundef !67 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !161033, !noalias !161034, !noundef !67
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.dj, ptr %i.dn, align 8, !alias.scope !161060, !noalias !161044
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.dm, ptr %i.do, align 8, !alias.scope !161060, !noalias !161044
  store i32 1, ptr %i.b, align 8, !alias.scope !161060, !noalias !161044
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.dp, align 4, !alias.scope !161060, !noalias !161044
  call fastcc void @_RINvXsf_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1B_8adapters5chain5ChainINtNtB2N_6cloned6ClonedINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBG_EEINtNtB1D_6option8IntoIterBG_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b) #64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !161044
  br label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

.backedgethread-pre-split.sink.split.sink.split.i.i: ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.f
  %.sink47.i.i = phi i64 [ %i.ap, %bb.f ], [ %i.bu, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.dq = add nsw i64 %.sink47.i.i, -1            ; 2 uses
  store i64 %i.dq, ptr %i.d, align 8, !alias.scope !161033, !noalias !161034
  %i.dr = load i64, ptr %1, align 8, !range !70, !alias.scope !161033, !noalias !161034, !noundef !67
  %i.ds = icmp samesign ult i64 %i.dq, %i.dr
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp ult i64 %.sink47.i.i, 288230376151711745
  tail call void @llvm.assume(i1 %i.dt)
  br label %.backedgethread-pre-split.sink.split.i.i

.backedgethread-pre-split.sink.split.i.i:         ; preds = %.backedgethread-pre-split.sink.split.sink.split.i.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.f
  tail call fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g)
  br label %.backedgethread-pre-split.i.i

.backedgethread-pre-split.i.i:                    ; preds = %.backedgethread-pre-split.sink.split.i.i, %bb.q, %.loopexit.i.i
  %.pr.i.i = load i64, ptr %i.d, align 8, !alias.scope !161033, !noalias !161034
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedgethread-pre-split.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.du = phi i64 [ %.pr.i.i, %.backedgethread-pre-split.i.i ], [ %i.dg, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.b

_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.m, %bb.r
  %.pr = load i64, ptr %i.c, align 8              ; 5 uses
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !nonnull !67, !noundef !67 ; 8 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.57.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx, align 8 ; 6 uses
  %i.dv = icmp ult i64 %.sroa.57.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dv)
  %.idx.i = shl nuw nsw i64 %.sroa.57.0.copyload, 2 ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.46.0.copyload, i64 %.idx.i ; 2 uses
  %i.dx = shl nuw i64 %.sroa.57.0.copyload, 3     ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %.sroa.57.0.copyload, 1152921504606846975
  br i1 %.not.i.i.i, label %bb.v, label %bb.t, !prof !73

bb.t:                                             ; preds = %bb.s
  %i.dy = icmp eq i64 %.sroa.57.0.copyload, 0
  br i1 %i.dy, label %._crit_edge.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !161061
  %i.dz = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !161061 ; 7 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.v, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.u
  %i.eb = add nsw i64 %.idx.i, -4                 ; 3 uses
  %i.ec = lshr exact i64 %i.eb, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eb, 68
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ee = shl i64 %i.eb, 1
  %2 = getelementptr i8, ptr %i.dz, i64 %i.ee
  %scevgep = getelementptr i8, ptr %2, i64 8
  %bound0 = icmp ult ptr %i.dz, %i.dw
  %bound1 = icmp ult ptr %.sroa.46.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, 9223372036854775804     ; 5 uses
  %i.ef = shl i64 %n.vec, 2
  %i.eg = getelementptr i8, ptr %.sroa.46.0.copyload, i64 %i.ef
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.46.0.copyload, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !161062, !noalias !161063
  %wide.load31 = load <2 x i32>, ptr %i.ei, align 4, !alias.scope !161062, !noalias !161063
  %i.ej = zext <2 x i32> %wide.load to <2 x i64>
  %i.ek = zext <2 x i32> %wide.load31 to <2 x i64>
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x i64> %i.ej, ptr %i.el, align 8, !alias.scope !161064, !noalias !161065
  store <2 x i64> %i.ek, ptr %i.em, align 8, !alias.scope !161064, !noalias !161065
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !161027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph34 = phi ptr [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.u ], [ 0, %bb.s ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.dx) #61
          to label %bb.w unwind label %bb.x, !noalias !161066

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %i.eo = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %i.ep = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph34, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !noalias !161063, !noundef !67
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %i.es = zext i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eo
  store i64 %i.es, ptr %i.et, align 8, !noalias !161067
  %i.eu = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.er, %i.dw
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !161028

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.t
  %i.ev = phi ptr [ inttoptr (i64 8 to ptr), %bb.t ], [ %i.dz, %middle.block ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.t ], [ %n.vec, %middle.block ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ew = icmp eq i64 %.pr, 0
  br i1 %i.ew, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0B5_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ex = shl nuw i64 %.pr, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !161063
  br label %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0B5_.exit

bb.w:                                             ; preds = %bb.v
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_00EEB2T_.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %bb.x
  resume { ptr, i32 } %i.ey

bb.x:                                             ; preds = %bb.v
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = icmp eq i64 %.pr, 0
  br i1 %i.ez, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_00EEB2T_.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.x
  %i.fa = shl nuw i64 %.pr, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !161068
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_00EEB2T_.exit.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0B5_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.57.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.y

_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %.backedge.i.i, %bb.a, %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  store i64 -1, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0B5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB39_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_NtB1C_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0ENtNtNtB9_6traits8iterator8Iterator4nextB6t_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161146)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !161147, !noalias !161148, !noundef !67 ; 2 uses
  %.not31.i.i = icmp eq i64 %i.e, 0
  br i1 %.not31.i.i, label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %i.n = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.dw, %.backedge.i.i ]
  %i.o = load ptr, ptr %i.f, align 8, !alias.scope !161147, !noalias !161148, !nonnull !67, !noundef !67
  %i.p = getelementptr [32 x i8], ptr %i.o, i64 %i.n ; 7 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -32      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161149)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !161149, !noalias !161148, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.s = getelementptr i8, ptr %i.p, i64 -24      ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !161149, !noalias !161148, !noundef !67 ; 2 uses
  %i.u = getelementptr i8, ptr %i.p, i64 -16      ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !161149, !noalias !161148, !noundef !67
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.p, i64 -12      ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.y, align 4, !alias.scope !161149, !noalias !161148
  %i.z = getelementptr i8, ptr %i.p, i64 -8
  %.val4.i.i.i = load i32, ptr %i.z, align 8, !alias.scope !161149, !noalias !161148
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !161150, !noundef !67
  store i32 %i.ac, ptr %i.u, align 8, !alias.scope !161149, !noalias !161148
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !161150, !noundef !67
  br label %.loopexit.i.i

bb.d:                                             ; preds = %bb.e, %.preheader.i.i.i
  %i.af = phi i32 [ %.promoted.i.i.i, %.preheader.i.i.i ], [ %i.ak, %bb.e ]
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = icmp ugt i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !161150, !noundef !67 ; 2 uses
  store i32 %i.ak, ptr %i.y, align 4, !alias.scope !161149, !noalias !161148
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val.i.i.i = load i32, ptr %i.al, align 8, !noalias !161150, !noundef !67 ; 2 uses
  %i.am = icmp eq i32 %.val.i.i.i, %.val4.i.i.i
  br i1 %i.am, label %bb.d, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.e, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.ae, %bb.c ], [ %.val.i.i.i, %bb.e ] ; 6 uses
  %i.an = tail call fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, i32 %.sroa.4.0.i.ph.i.i)
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %.backedgethread-pre-split.i.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = load i64, ptr %i.d, align 8, !alias.scope !161147, !noalias !161148, !noundef !67 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.backedgethread-pre-split.sink.split.i.i, label %.backedgethread-pre-split.sink.split.sink.split.i.i

bb.g:                                             ; preds = %.loopexit.i.i
  %i.ar = load i64, ptr %i.h, align 8, !alias.scope !161147, !noalias !161148, !noundef !67 ; 3 uses
  %i.as = load i64, ptr %i.i, align 8, !alias.scope !161147, !noalias !161148, !noundef !67
  %i.at = icmp ult i64 %i.ar, %i.as
  %.val18.i.i = load i32, ptr %i.j, align 8, !alias.scope !161147, !noalias !161148, !noundef !67
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i, %.val18.i.i ; 2 uses
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.au, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.au, label %bb.q, label %bb.n

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161152)
  %i.av = load ptr, ptr %i.q, align 8, !alias.scope !161153, !noalias !161148, !nonnull !67, !align !98, !noundef !67 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB39_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_NtB1C_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0ENtNtNtB9_6traits8iterator8Iterator4nextB6t_:bb.a
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.k, label %.preheader.i.i.i.i.i

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_NtB1f_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !noalias !161156, !noundef !67 ; 2 uses
  store i32 %i.bf, ptr %i.u, align 8, !alias.scope !161153, !noalias !161148
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !161156, !noundef !67
  br label %.loopexit9.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_NtB1f_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.l
  %i.bi = phi i32 [ %i.bn, %bb.l ], [ %i.az, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_NtB1f_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = icmp ugt i64 %i.aw, %i.bj
  br i1 %i.bk, label %bb.l, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.l:                                             ; preds = %.preheader.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !161156, !noundef !67 ; 3 uses
  store i32 %i.bn, ptr %i.ax, align 4, !alias.scope !161153, !noalias !161148
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.val.i.i.i.i.i = load i32, ptr %i.bo, align 8, !noalias !161156, !noundef !67 ; 2 uses
  %i.bp = icmp eq i32 %.val.i.i.i.i.i, %.val4.i.i.i.i.i
  br i1 %i.bp, label %.preheader.i.i.i.i.i, label %.loopexit9.i.i.i.i

.loopexit9.i.i.i.i:                               ; preds = %bb.l, %bb.k
  %i.bq = phi i32 [ %i.az, %bb.k ], [ %i.bn, %bb.l ]
  %i.br = phi i32 [ %i.bf, %bb.k ], [ %i.ba, %bb.l ]
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.bh, %bb.k ], [ %.val.i.i.i.i.i, %bb.l ] ; 2 uses
  %.val1.i.i.i.i.i.i = load i32, ptr %i.j, align 8, !alias.scope !161147, !noalias !161157, !noundef !67
  %i.bs = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %i.bs, label %.split.i.i.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_NtB1f_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge

.split.i.i.i.i:                                   ; preds = %.loopexit9.i.i.i.i
  %i.bt = tail call fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, i32 %.sroa.4.0.i.ph.i.i.i.i)
  %.not.i.i.i.i = icmp eq i64 %i.bt, 1
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_NtB1f_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.loopexit.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_NtB1f_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge: ; preds = %.split.i.i.i.i, %.loopexit9.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1f_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecB1b_ERINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB46_5types3any5PyAnyEB41_NtB1f_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.preheader.i.i.i.i.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.bu = load i64, ptr %i.d, align 8, !alias.scope !161147, !noalias !161148, !noundef !67 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.backedgethread-pre-split.sink.split.i.i, label %.backedgethread-pre-split.sink.split.sink.split.i.i

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.loopexit.i.i: ; preds = %.split.i.i.i.i
  %.pre.i.i = load i64, ptr %i.h, align 8, !alias.scope !161147, !noalias !161148
  br label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.loopexit.i.i, %bb.h
  %i.bw = phi i64 [ %.pre.i.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.loopexit.i.i ], [ %i.ar, %bb.h ]
  %i.bx = load i64, ptr %i.k, align 8, !alias.scope !161147, !noalias !161148, !noundef !67
  %.not16.i.i = icmp ult i64 %i.bw, %i.bx
  br i1 %.not16.i.i, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161158
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !161147, !noalias !161148, !nonnull !67, !noundef !67 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !161147, !noalias !161148, !noundef !67
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.j, align 8, !alias.scope !161147, !noalias !161148, !noundef !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bz, ptr %i.ce, align 8, !alias.scope !161159, !noalias !161158
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cc, ptr %i.cf, align 8, !alias.scope !161159, !noalias !161158
  store i32 1, ptr %i.a, align 8, !alias.scope !161159, !noalias !161158
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cd, ptr %i.cg, align 4, !alias.scope !161159, !noalias !161158
  call fastcc void @_RINvXsf_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1B_8adapters5chain5ChainINtNtB2N_6cloned6ClonedINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBG_EEINtNtB1D_6option8IntoIterBG_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a) #64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161158
  br label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161160)
  %.val.i22.i.i = load i64, ptr %i.l, align 8, !alias.scope !161161, !noalias !161162, !noundef !67
  %i.ch = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !161163, !noundef !67
  %i.ci = zext i32 %.sroa.4.0.i.ph.i.i to i64     ; 3 uses
  %i.cj = xor i64 %.val.i22.i.i, %i.ci
  %i.ck = zext i64 %i.cj to i128
  %i.cl = zext i64 %i.ch to i128
  %i.cm = mul nuw i128 %i.ck, %i.cl               ; 2 uses
  %i.cn = lshr i128 %i.cm, 64
  %i.co = xor i128 %i.cn, %i.cm
  %i.cp = trunc i128 %i.co to i64
  tail call fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g, i64 noundef %i.cp, i32 noundef %.sroa.4.0.i.ph.i.i)
  %i.cq = load ptr, ptr %i.m, align 8, !alias.scope !161147, !noalias !161148, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161166)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !161167, !noalias !161168, !nonnull !67, !noundef !67
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !161167, !noalias !161168, !noundef !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !161167, !noalias !161168, !noundef !67
  %i.cw = icmp ugt i64 %.val6.i.i.i.i.i, %i.ci
  br i1 %i.cw, label %bb.o, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.val.i.i.i23.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !161167, !noalias !161168, !nonnull !67, !noundef !67
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i23.i.i, i64 %i.ci ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !161169, !noundef !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load <2 x i32>, ptr %i.da, align 8, !noalias !161169
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.o, %bb.n
  %i.dc = phi <2 x i32> [ %i.db, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ splat (i32 -1), %bb.n ], [ splat (i32 -1), %bb.o ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161170)
  %i.dd = load i64, ptr %i.d, align 8, !alias.scope !161171, !noalias !161172, !noundef !67 ; 3 uses
  %i.de = load i64, ptr %1, align 8, !range !70, !alias.scope !161171, !noalias !161172, !noundef !67
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %bb.p, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.p:                                             ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  tail call fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1V_5types3any5PyAnyEEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #62, !noalias !161172
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.p, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.dg = load ptr, ptr %i.f, align 8, !alias.scope !161171, !noalias !161172, !nonnull !67, !noundef !67
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.dd ; 4 uses
  store ptr %i.cs, ptr %i.dh, align 8, !noalias !161173
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.cu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !161173
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x i32> %i.dc, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !161173
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 %.sroa.4.0.i.ph.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !161173
  %i.di = add i64 %i.dd, 1                        ; 2 uses
  store i64 %i.di, ptr %i.d, align 8, !alias.scope !161171, !noalias !161172
  br label %.backedge.i.i

bb.q:                                             ; preds = %bb.i
  %i.dj = load i64, ptr %i.k, align 8, !alias.scope !161147, !noalias !161148, !noundef !67
  %.not17.i.i = icmp ult i64 %i.ar, %i.dj
  br i1 %.not17.i.i, label %.backedgethread-pre-split.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !161158
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !161147, !noalias !161148, !nonnull !67, !noundef !67 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !161147, !noalias !161148, !noundef !67
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.dl, ptr %i.dp, align 8, !alias.scope !161174, !noalias !161158
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.do, ptr %i.dq, align 8, !alias.scope !161174, !noalias !161158
  store i32 1, ptr %i.b, align 8, !alias.scope !161174, !noalias !161158
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.dr, align 4, !alias.scope !161174, !noalias !161158
  call fastcc void @_RINvXsf_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1B_8adapters5chain5ChainINtNtB2N_6cloned6ClonedINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBG_EEINtNtB1D_6option8IntoIterBG_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b) #64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !161158
  br label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

.backedgethread-pre-split.sink.split.sink.split.i.i: ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.f
  %.sink47.i.i = phi i64 [ %i.ap, %bb.f ], [ %i.bu, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.ds = add nsw i64 %.sink47.i.i, -1            ; 2 uses
  store i64 %i.ds, ptr %i.d, align 8, !alias.scope !161147, !noalias !161148
  %i.dt = load i64, ptr %1, align 8, !range !70, !alias.scope !161147, !noalias !161148, !noundef !67
  %i.du = icmp samesign ult i64 %i.ds, %i.dt
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = icmp ult i64 %.sink47.i.i, 288230376151711745
  tail call void @llvm.assume(i1 %i.dv)
  br label %.backedgethread-pre-split.sink.split.i.i

.backedgethread-pre-split.sink.split.i.i:         ; preds = %.backedgethread-pre-split.sink.split.sink.split.i.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3anyNCNCINvNtNtBa_4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB8_9NodeIndexERINtB6_11StableGraphB17_B17_NtBa_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.f
  tail call fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g)
  br label %.backedgethread-pre-split.i.i

.backedgethread-pre-split.i.i:                    ; preds = %.backedgethread-pre-split.sink.split.i.i, %bb.q, %.loopexit.i.i
  %.pr.i.i = load i64, ptr %i.d, align 8, !alias.scope !161147, !noalias !161148
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedgethread-pre-split.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.dw = phi i64 [ %.pr.i.i, %.backedgethread-pre-split.i.i ], [ %i.di, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1O_5types3any5PyAnyEEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i, label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.b

_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.m, %bb.r
  %.pr = load i64, ptr %i.c, align 8              ; 5 uses
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !nonnull !67, !noundef !67 ; 8 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.57.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx, align 8 ; 6 uses
  %i.dx = icmp ult i64 %.sroa.57.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dx)
  %.idx.i = shl nuw nsw i64 %.sroa.57.0.copyload, 2 ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.46.0.copyload, i64 %.idx.i ; 2 uses
  %i.dz = shl nuw i64 %.sroa.57.0.copyload, 3     ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %.sroa.57.0.copyload, 1152921504606846975
  br i1 %.not.i.i.i, label %bb.v, label %bb.t, !prof !73

bb.t:                                             ; preds = %bb.s
  %i.ea = icmp eq i64 %.sroa.57.0.copyload, 0
  br i1 %i.ea, label %._crit_edge.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !161175
  %i.eb = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !161175 ; 7 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.v, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.u
  %i.ed = add nsw i64 %.idx.i, -4                 ; 3 uses
  %i.ee = lshr exact i64 %i.ed, 2
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ed, 68
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.eg = shl i64 %i.ed, 1
  %2 = getelementptr i8, ptr %i.eb, i64 %i.eg
  %scevgep = getelementptr i8, ptr %2, i64 8
  %bound0 = icmp ult ptr %i.eb, %i.dy
  %bound1 = icmp ult ptr %.sroa.46.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ef, 9223372036854775804     ; 5 uses
  %i.eh = shl i64 %n.vec, 2
  %i.ei = getelementptr i8, ptr %.sroa.46.0.copyload, i64 %i.eh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ej = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.46.0.copyload, i64 %i.ej ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !161176, !noalias !161177
  %wide.load31 = load <2 x i32>, ptr %i.ek, align 4, !alias.scope !161176, !noalias !161177
  %i.el = zext <2 x i32> %wide.load to <2 x i64>
  %i.em = zext <2 x i32> %wide.load31 to <2 x i64>
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x i64> %i.el, ptr %i.en, align 8, !alias.scope !161178, !noalias !161179
  store <2 x i64> %i.em, ptr %i.eo, align 8, !alias.scope !161178, !noalias !161179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !161141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph34 = phi ptr [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ei, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.u ], [ 0, %bb.s ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.dz) #61
          to label %bb.w unwind label %bb.x, !noalias !161180

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %i.eq = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %i.er = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph34, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !noalias !161177, !noundef !67
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.eu = zext i32 %i.es to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.eq
  store i64 %i.eu, ptr %i.ev, align 8, !noalias !161181
  %i.ew = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.et, %i.dy
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !161142

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.t
  %i.ex = phi ptr [ inttoptr (i64 8 to ptr), %bb.t ], [ %i.eb, %middle.block ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.t ], [ %n.vec, %middle.block ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ey = icmp eq i64 %.pr, 0
  br i1 %i.ey, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0B5_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ez = shl nuw i64 %.pr, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !161177
  br label %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0B5_.exit

bb.w:                                             ; preds = %bb.v
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_00EEB2T_.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %bb.x
  resume { ptr, i32 } %i.fa

bb.x:                                             ; preds = %bb.v
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = icmp eq i64 %.pr, 0
  br i1 %i.fb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_00EEB2T_.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.x
  %i.fc = shl nuw i64 %.pr, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !161182
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_00EEB2T_.exit.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0B5_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.57.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ex, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.y

_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %.backedge.i.i, %bb.a, %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  store i64 -1, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2F_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3O_5types3any5PyAnyEB3J_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0B5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB3f_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4o_5types3any5PyAnyEB4j_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB6h_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161278)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !161279, !noalias !161280, !noundef !67 ; 2 uses
  %.not115.i.i = icmp eq i64 %i.d, 0
  br i1 %.not115.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %i.r = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.en, %.backedge.i.i ]
  %i.s = load ptr, ptr %i.e, align 8, !alias.scope !161279, !noalias !161280, !nonnull !67, !noundef !67
  %i.t = getelementptr [32 x i8], ptr %i.s, i64 %i.r ; 5 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161281)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !161281, !noalias !161280, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !161281, !noalias !161280, !noundef !67 ; 2 uses
  %i.y = getelementptr i8, ptr %i.t, i64 -16      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !161281, !noalias !161280, !noundef !67
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.c, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.ac = getelementptr i8, ptr %i.t, i64 -12     ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.ac, align 4, !alias.scope !161281, !noalias !161280
  %i.ad = getelementptr i8, ptr %i.t, i64 -8
  %.val4.i.i.i = load i32, ptr %i.ad, align 8, !alias.scope !161281, !noalias !161280
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !noalias !161282, !noundef !67
  store i32 %i.ag, ptr %i.y, align 8, !alias.scope !161281, !noalias !161280
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !161282, !noundef !67
  br label %.loopexit105.i.i

bb.d:                                             ; preds = %bb.e, %.preheader.i.i.i
  %i.aj = phi i32 [ %.promoted.i.i.i, %.preheader.i.i.i ], [ %i.ao, %bb.e ]
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp ugt i64 %i.x, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !noalias !161282, !noundef !67 ; 2 uses
  store i32 %i.ao, ptr %i.ac, align 4, !alias.scope !161281, !noalias !161280
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val.i.i.i = load i32, ptr %i.ap, align 8, !noalias !161282, !noundef !67 ; 2 uses
  %i.aq = icmp eq i32 %.val.i.i.i, %.val4.i.i.i
  br i1 %i.aq, label %bb.d, label %.loopexit105.i.i

.loopexit105.i.i:                                 ; preds = %bb.e, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.ai, %bb.c ], [ %.val.i.i.i, %bb.e ] ; 7 uses
  %i.ar = tail call fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, i32 %.sroa.4.0.i.ph.i.i)
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %.backedge.i.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = load i64, ptr %i.c, align 8, !alias.scope !161279, !noalias !161280, !noundef !67 ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.t, label %bb.s

bb.g:                                             ; preds = %.loopexit105.i.i
  %i.av = load i64, ptr %i.g, align 8, !alias.scope !161279, !noalias !161280, !noundef !67 ; 2 uses
  %i.aw = load ptr, ptr %i.h, align 8, !alias.scope !161279, !noalias !161280, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161283)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !161283, !noalias !161280, !noundef !67
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.val.i24.i.i = load i64, ptr %i.ba, align 8, !alias.scope !161284, !noalias !161285, !noundef !67
  %i.bb = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !161286, !noundef !67
  %i.bc = zext i32 %.sroa.4.0.i.ph.i.i to i64
  %i.bd = xor i64 %.val.i24.i.i, %i.bc
  %i.be = zext i64 %i.bd to i128
  %i.bf = zext i64 %i.bb to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161288)
  %i.bk = lshr i64 %i.bj, 57
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !161289, !noalias !161290, !noundef !67 ; 2 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !alias.scope !161289, !noalias !161290, !nonnull !67, !noundef !67 ; 2 uses
  %i.bp = insertelement <16 x i8> poison, i8 %i.bl, i64 0
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.ch, %bb.k ]
  %.pn.i.i.i.i = phi i64 [ %i.bj, %bb.h ], [ %i.ci, %bb.k ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bn ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.br, align 1, !noalias !161291 ; 2 uses
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.bq
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.cg, %bb.j ], [ %i.bt, %bb.i ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.01.0.i.i.i.i.i, %i.bv
  %i.bx = and i64 %i.bw, %i.bn
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %.val2.i.i.i.i.i = load i32, ptr %i.ca, align 4, !noalias !161292, !noundef !67
  %i.cb = icmp eq i32 %.sroa.4.0.i.ph.i.i, %.val2.i.i.i.i.i
  br i1 %i.cb, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.j, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.k, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, !prof !71

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.cg = and i16 %i.cf, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ch = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ci = add i64 %.sroa.01.0.i.i.i.i.i, %i.ch
  br label %bb.i

.loopexit.i.i:                                    ; preds = %.split.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i:                           ; preds = %bb.o, %bb.q
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.0.val.off.i.i.i = add i64 %.sroa.045.1.i.i, -1
  %switch.i.i.i = icmp ult i64 %.0.val.off.i.i.i, -2
  br i1 %switch.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, label %common.resume

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.1.i.i) ]
  br label %common.resume.sink.split

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cj = add i64 %i.av, 1
  %i.ck = load i64, ptr %i.i, align 8, !alias.scope !161279, !noalias !161280, !noundef !67
  %.not12.i.i = icmp ult i64 %i.cj, %i.ck
  br i1 %.not12.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.m

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.m, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.g
  %.sroa.14.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %bb.m ], [ undef, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ undef, %bb.g ], [ undef, %._crit_edge.i.i.i.i ] ; 6 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.m ], [ undef, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ undef, %bb.g ], [ undef, %._crit_edge.i.i.i.i ] ; 10 uses
  %.sroa.045.1.i.i = phi i64 [ %.sroa.056.0.copyload.i.i, %bb.m ], [ -1, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ -1, %bb.g ], [ -1, %._crit_edge.i.i.i.i ] ; 6 uses
  %i.cl = load i64, ptr %i.o, align 8, !alias.scope !161279, !noalias !161280, !noundef !67
  %i.cm = icmp ult i64 %i.av, %i.cl
  br i1 %i.cm, label %bb.n, label %.loopexit104.i.i

bb.m:                                             ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !161293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161293
  %i.cn = load ptr, ptr %i.j, align 8, !alias.scope !161279, !noalias !161280, !nonnull !67, !noundef !67 ; 2 uses
  %i.co = load i64, ptr %i.k, align 8, !alias.scope !161279, !noalias !161280, !noundef !67
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.co
  store ptr %i.cn, ptr %i.l, align 8, !alias.scope !161294, !noalias !161293
  store ptr %i.cp, ptr %i.m, align 8, !alias.scope !161294, !noalias !161293
  store i32 1, ptr %i.a, align 8, !alias.scope !161294, !noalias !161293
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.n, align 4, !alias.scope !161294, !noalias !161293
  call fastcc void @_RINvXsf_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1B_8adapters5chain5ChainINtNtB2N_6cloned6ClonedINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBG_EEINtNtB1D_6option8IntoIterBG_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !161280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161293
  %.sroa.056.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !161293
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !161293
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !161293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !161293
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.loopexit104.i.i:                                 ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i, %bb.r, %bb.n, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.not14.i.i = icmp eq i64 %.sroa.045.1.i.i, -1
  br i1 %.not14.i.i, label %.backedge.i.i, label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.cq = load ptr, ptr %i.h, align 8, !alias.scope !161279, !noalias !161280, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161295)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !161295, !noalias !161296, !noundef !67 ; 2 uses
  %.not24.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not24.i.i.i, label %.loopexit104.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.n
  %i.ct = load ptr, ptr %i.cq, align 8, !alias.scope !161295, !noalias !161296, !nonnull !67, !noundef !67 ; 3 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.ct, align 16, !noalias !161297
  %i.cu = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i, %.lr.ph.i.preheader.i.i
  %.lcssa23.i.i.i = phi ptr [ %.lcssa22.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i ], [ %i.cw, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.cx = phi i16 [ %i.dh, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i ], [ %i.cv, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.cy = phi i64 [ %i.dk, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i ], [ %i.cs, %.lr.ph.i.preheader.i.i ]
  %.lcssa131718.i.i.i = phi ptr [ %.lcssa1316.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i ], [ %i.ct, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not10.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cz = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa23.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.da = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa131718.i.i.i, %.lr.ph.i.i.i ]
  %.val68.i.i.i.i.i.i = load <16 x i8>, ptr %i.cz, align 16, !noalias !161298
  %i.db = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i, splat (i8 -1)
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -64 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.db to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.lcssa22.i.i.i = phi ptr [ %.lcssa23.i.i.i, %.lr.ph.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa1316.i.i.i = phi ptr [ %.lcssa131718.i.i.i, %.lr.ph.i.i.i ], [ %i.dc, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.cx, %.lr.ph.i.i.i ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.de = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.df = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = and i16 %i.de, %.lcssa.i.i.i.i.i.i
  %i.di = sub nsw i64 0, %i.dg
  %i.dj = getelementptr inbounds [4 x i8], ptr %.lcssa1316.i.i.i, i64 %i.di
  %i.dk = add i64 %i.cy, -1                       ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %.val6.i.i.i = load i32, ptr %i.dl, align 4, !noalias !161299, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.val6.i.i.i, %.sroa.4.0.i.ph.i.i
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %._crit_edge17.i.i.i.i.i.i
  %i.dm = invoke fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, i32 %.val6.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %.split.i.i.i
  %.not.i31.i.i = icmp eq i64 %i.dm, 1
  br i1 %.not.i31.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i, label %bb.o

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i: ; preds = %.noexc.i.i, %._crit_edge17.i.i.i.i.i.i
  %.not25.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not25.i.i.i, label %.loopexit104.i.i, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %.noexc.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161300)
  %.val.i32.i.i = load i64, ptr %i.p, align 8, !alias.scope !161301, !noalias !161302, !noundef !67
  %i.dn = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !161303, !noundef !67
  %i.do = zext i32 %.sroa.4.0.i.ph.i.i to i64     ; 3 uses
  %i.dp = xor i64 %.val.i32.i.i, %i.do
  %i.dq = zext i64 %i.dp to i128
  %i.dr = zext i64 %i.dn to i128
  %i.ds = mul nuw i128 %i.dq, %i.dr               ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = xor i128 %i.dt, %i.ds
  %i.dv = trunc i128 %i.du to i64
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.dv, i32 noundef %.sroa.4.0.i.ph.i.i)
          to label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp.i.i

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.o
  %i.dw = load ptr, ptr %i.q, align 8, !alias.scope !161279, !noalias !161280, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161306)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !161307, !noalias !161308, !nonnull !67, !noundef !67
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !161307, !noalias !161308, !noundef !67
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !161307, !noalias !161308, !noundef !67
  %i.ec = icmp ugt i64 %.val6.i.i.i.i.i, %i.do
  br i1 %i.ec, label %bb.p, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.p:                                             ; preds = %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !161307, !noalias !161308, !nonnull !67, !noundef !67
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.do ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !161309, !noundef !67
  %.not.i.i.i.i34.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i34.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.eg, align 8, !noalias !161309
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.p, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ -1, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ -1, %bb.p ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161310)
  %i.eh = load i64, ptr %i.c, align 8, !alias.scope !161311, !noalias !161312, !noundef !67 ; 3 uses
  %i.ei = load i64, ptr %1, align 8, !range !70, !alias.scope !161311, !noalias !161312, !noundef !67
  %i.ej = icmp eq i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1V_5types3any5PyAnyEEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #62
          to label %bb.r unwind label %.loopexit.split-lp.i.i, !noalias !161280

bb.r:                                             ; preds = %bb.q, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ek = load ptr, ptr %i.e, align 8, !alias.scope !161311, !noalias !161312, !nonnull !67, !noundef !67
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.eh ; 5 uses
  store ptr %i.dy, ptr %i.el, align 8, !noalias !161313
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.ea, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !161313
  %.sroa.562.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.562.0..sroa_idx.i.i, align 8, !noalias !161313
  %.sroa.663.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  store i32 -1, ptr %.sroa.663.0..sroa_idx.i.i, align 4, !noalias !161313
  %.sroa.864.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i32 -1, ptr %.sroa.864.0..sroa_idx.i.i, align 8, !noalias !161313
  %i.em = add i64 %i.eh, 1
  store i64 %i.em, ptr %i.c, align 8, !alias.scope !161311, !noalias !161312
  br label %.loopexit104.i.i

.backedge.i.i:                                    ; preds = %bb.t, %.loopexit104.i.i, %.loopexit105.i.i
  %i.en = load i64, ptr %i.c, align 8, !alias.scope !161279, !noalias !161280, !noundef !67 ; 2 uses
  %.not.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

common.resume.sink.split:                         ; preds = %bb.y, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.phi.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %i.fv, %bb.y ]
  %.sink = shl nuw i64 %.sroa.045.1.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.1.i.i, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !67
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.y, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.l ], [ %i.fv, %bb.y ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.f
  %i.eo = add nsw i64 %i.at, -1                   ; 2 uses
  store i64 %i.eo, ptr %i.c, align 8, !alias.scope !161279, !noalias !161280
  %i.ep = load i64, ptr %1, align 8, !range !70, !alias.scope !161279, !noalias !161280, !noundef !67
  %i.eq = icmp samesign ult i64 %i.eo, %i.ep
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = icmp ult i64 %i.at, 288230376151711745
  tail call void @llvm.assume(i1 %i.er)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.f
  tail call fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f)
  br label %.backedge.i.i

_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit104.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.1.i.i) ]
  %i.es = icmp ult i64 %.sroa.14.0.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.es)
  %.idx.i = shl nuw nsw i64 %.sroa.14.0.i.i, 2    ; 2 uses
  %i.et = getelementptr i8, ptr %.sroa.11.1.i.i, i64 %.idx.i ; 2 uses
  %i.eu = shl nuw i64 %.sroa.14.0.i.i, 3          ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %.sroa.14.0.i.i, 1152921504606846975
  br i1 %.not.i.i.i, label %bb.w, label %bb.u, !prof !73

bb.u:                                             ; preds = %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %i.ev = icmp eq i64 %.sroa.14.0.i.i, 0
  br i1 %i.ev, label %._crit_edge.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !161314
  %i.ew = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !161314 ; 7 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.v
  %i.ey = add nsw i64 %.idx.i, -4                 ; 3 uses
  %i.ez = lshr exact i64 %i.ey, 2
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ey, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.fb = shl i64 %i.ey, 1
  %2 = getelementptr i8, ptr %i.ew, i64 %i.fb
  %scevgep67 = getelementptr i8, ptr %2, i64 8
  %bound0 = icmp ult ptr %i.ew, %i.et
  %bound1 = icmp ult ptr %.sroa.11.1.i.i, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fa, 9223372036854775804     ; 5 uses
  %i.fc = shl i64 %n.vec, 2
  %i.fd = getelementptr i8, ptr %.sroa.11.1.i.i, i64 %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fe = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.11.1.i.i, i64 %i.fe ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !161315, !noalias !161316
  %wide.load68 = load <2 x i32>, ptr %i.ff, align 4, !alias.scope !161315, !noalias !161316
  %i.fg = zext <2 x i32> %wide.load to <2 x i64>
  %i.fh = zext <2 x i32> %wide.load68 to <2 x i64>
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <2 x i64> %i.fg, ptr %i.fi, align 8, !alias.scope !161317, !noalias !161318
  store <2 x i64> %i.fh, ptr %i.fj, align 8, !alias.scope !161317, !noalias !161318
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !161275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.i.preheader70:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph71 = phi ptr [ %.sroa.11.1.i.i, %vector.memcheck ], [ %.sroa.11.1.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v, %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.v ], [ 0, %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.eu) #61
          to label %bb.x unwind label %bb.y, !noalias !161319

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader70, %.lr.ph.i.i.i.i.i.i.i
  %i.fl = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader70 ] ; 2 uses
  %i.fm = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph71, %.lr.ph.i.i.i.i.i.i.i.preheader70 ] ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !noalias !161316, !noundef !67
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  %i.fp = zext i32 %i.fn to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fl
  store i64 %i.fp, ptr %i.fq, align 8, !noalias !161320
  %i.fr = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.fo, %i.et
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !161276

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.u
  %i.fs = phi ptr [ inttoptr (i64 8 to ptr), %bb.u ], [ %i.ew, %middle.block ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.u ], [ %n.vec, %middle.block ], [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ft = icmp eq i64 %.sroa.045.1.i.i, 0
  br i1 %i.ft, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0B5_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.fu = shl nuw i64 %.sroa.045.1.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.1.i.i, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !161316
  br label %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0B5_.exit

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = icmp eq i64 %.sroa.045.1.i.i, 0
  br i1 %i.fw, label %common.resume, label %common.resume.sink.split

_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0B5_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.14.0.i.i, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fs, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i.i.i, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.z

.loopexit:                                        ; preds = %.backedge.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0B5_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB3f_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4o_5types3any5PyAnyEB4j_NtB1C_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB6z_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161416)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !161417, !noalias !161418, !noundef !67 ; 2 uses
  %.not116.i.i = icmp eq i64 %i.d, 0
  br i1 %.not116.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %i.r = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.ep, %.backedge.i.i ]
  %i.s = load ptr, ptr %i.e, align 8, !alias.scope !161417, !noalias !161418, !nonnull !67, !noundef !67
  %i.t = getelementptr [32 x i8], ptr %i.s, i64 %i.r ; 5 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161419)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !161419, !noalias !161418, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !161419, !noalias !161418, !noundef !67 ; 2 uses
  %i.y = getelementptr i8, ptr %i.t, i64 -16      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !161419, !noalias !161418, !noundef !67
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.c, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.ac = getelementptr i8, ptr %i.t, i64 -12     ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.ac, align 4, !alias.scope !161419, !noalias !161418
  %i.ad = getelementptr i8, ptr %i.t, i64 -8
  %.val4.i.i.i = load i32, ptr %i.ad, align 8, !alias.scope !161419, !noalias !161418
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !noalias !161420, !noundef !67
  store i32 %i.ag, ptr %i.y, align 8, !alias.scope !161419, !noalias !161418
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !161420, !noundef !67
  br label %.loopexit106.i.i

bb.d:                                             ; preds = %bb.e, %.preheader.i.i.i
  %i.aj = phi i32 [ %.promoted.i.i.i, %.preheader.i.i.i ], [ %i.ao, %bb.e ]
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp ugt i64 %i.x, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !noalias !161420, !noundef !67 ; 2 uses
  store i32 %i.ao, ptr %i.ac, align 4, !alias.scope !161419, !noalias !161418
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val.i.i.i = load i32, ptr %i.ap, align 8, !noalias !161420, !noundef !67 ; 2 uses
  %i.aq = icmp eq i32 %.val.i.i.i, %.val4.i.i.i
  br i1 %i.aq, label %bb.d, label %.loopexit106.i.i

.loopexit106.i.i:                                 ; preds = %bb.e, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.ai, %bb.c ], [ %.val.i.i.i, %bb.e ] ; 8 uses
  %i.ar = tail call fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, i32 %.sroa.4.0.i.ph.i.i)
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %.backedge.i.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = load i64, ptr %i.c, align 8, !alias.scope !161417, !noalias !161418, !noundef !67 ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.t, label %bb.s

bb.g:                                             ; preds = %.loopexit106.i.i
  %i.av = load i64, ptr %i.g, align 8, !alias.scope !161417, !noalias !161418, !noundef !67 ; 2 uses
  %i.aw = load ptr, ptr %i.h, align 8, !alias.scope !161417, !noalias !161418, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161421)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !161421, !noalias !161418, !noundef !67
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.val.i24.i.i = load i64, ptr %i.ba, align 8, !alias.scope !161422, !noalias !161423, !noundef !67
  %i.bb = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !161424, !noundef !67
  %i.bc = zext i32 %.sroa.4.0.i.ph.i.i to i64
  %i.bd = xor i64 %.val.i24.i.i, %i.bc
  %i.be = zext i64 %i.bd to i128
  %i.bf = zext i64 %i.bb to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161426)
  %i.bk = lshr i64 %i.bj, 57
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !161427, !noalias !161428, !noundef !67 ; 2 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !alias.scope !161427, !noalias !161428, !nonnull !67, !noundef !67 ; 2 uses
  %i.bp = insertelement <16 x i8> poison, i8 %i.bl, i64 0
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.ch, %bb.k ]
  %.pn.i.i.i.i = phi i64 [ %i.bj, %bb.h ], [ %i.ci, %bb.k ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bn ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.br, align 1, !noalias !161429 ; 2 uses
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.bq
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.cg, %bb.j ], [ %i.bt, %bb.i ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.01.0.i.i.i.i.i, %i.bv
  %i.bx = and i64 %i.bw, %i.bn
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %.val2.i.i.i.i.i = load i32, ptr %i.ca, align 4, !noalias !161430, !noundef !67
  %i.cb = icmp eq i32 %.sroa.4.0.i.ph.i.i, %.val2.i.i.i.i.i
  br i1 %i.cb, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.j, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.k, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, !prof !71

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.cg = and i16 %i.cf, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ch = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ci = add i64 %.sroa.01.0.i.i.i.i.i, %i.ch
  br label %bb.i

.loopexit.i.i:                                    ; preds = %.split.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i:                           ; preds = %bb.o, %bb.q
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.0.val.off.i.i.i = add i64 %.sroa.045.1.i.i, -1
  %switch.i.i.i = icmp ult i64 %.0.val.off.i.i.i, -2
  br i1 %switch.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, label %common.resume

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.1.i.i) ]
  br label %common.resume.sink.split

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cj = add i64 %i.av, 1
  %i.ck = load i64, ptr %i.i, align 8, !alias.scope !161417, !noalias !161418, !noundef !67
  %.not12.i.i = icmp ult i64 %i.cj, %i.ck
  br i1 %.not12.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.m

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.m, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.g
  %.sroa.14.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %bb.m ], [ undef, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ undef, %bb.g ], [ undef, %._crit_edge.i.i.i.i ] ; 6 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.m ], [ undef, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ undef, %bb.g ], [ undef, %._crit_edge.i.i.i.i ] ; 10 uses
  %.sroa.045.1.i.i = phi i64 [ %.sroa.056.0.copyload.i.i, %bb.m ], [ -1, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ -1, %bb.g ], [ -1, %._crit_edge.i.i.i.i ] ; 6 uses
  %i.cl = load i64, ptr %i.o, align 8, !alias.scope !161417, !noalias !161418, !noundef !67
  %i.cm = icmp ult i64 %i.av, %i.cl
  br i1 %i.cm, label %bb.n, label %.loopexit105.i.i

bb.m:                                             ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !161431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161431
  %i.cn = load ptr, ptr %i.j, align 8, !alias.scope !161417, !noalias !161418, !nonnull !67, !noundef !67 ; 2 uses
  %i.co = load i64, ptr %i.k, align 8, !alias.scope !161417, !noalias !161418, !noundef !67
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.co
  store ptr %i.cn, ptr %i.l, align 8, !alias.scope !161432, !noalias !161431
  store ptr %i.cp, ptr %i.m, align 8, !alias.scope !161432, !noalias !161431
  store i32 1, ptr %i.a, align 8, !alias.scope !161432, !noalias !161431
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.n, align 4, !alias.scope !161432, !noalias !161431
  call fastcc void @_RINvXsf_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1B_8adapters5chain5ChainINtNtB2N_6cloned6ClonedINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBG_EEINtNtB1D_6option8IntoIterBG_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !161418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161431
  %.sroa.056.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !161431
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !161431
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !161431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !161431
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.loopexit105.i.i:                                 ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i, %bb.r, %bb.n, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.not14.i.i = icmp eq i64 %.sroa.045.1.i.i, -1
  br i1 %.not14.i.i, label %.backedge.i.i, label %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.cq = load ptr, ptr %i.h, align 8, !alias.scope !161417, !noalias !161418, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161433)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !161433, !noalias !161434, !noundef !67 ; 2 uses
  %.not24.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not24.i.i.i, label %.loopexit105.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.n
  %i.ct = load ptr, ptr %i.cq, align 8, !alias.scope !161433, !noalias !161434, !nonnull !67, !noundef !67 ; 3 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.ct, align 16, !noalias !161435
  %i.cu = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i, %.lr.ph.i.preheader.i.i
  %.lcssa23.i.i.i = phi ptr [ %.lcssa22.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i ], [ %i.cw, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.cx = phi i16 [ %i.dh, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i ], [ %i.cv, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.cy = phi i64 [ %i.dk, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i ], [ %i.cs, %.lr.ph.i.preheader.i.i ]
  %.lcssa131718.i.i.i = phi ptr [ %.lcssa1316.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i ], [ %i.ct, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not10.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cz = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa23.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.da = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa131718.i.i.i, %.lr.ph.i.i.i ]
  %.val68.i.i.i.i.i.i = load <16 x i8>, ptr %i.cz, align 16, !noalias !161436
  %i.db = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i, splat (i8 -1)
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -64 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.db to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.lcssa22.i.i.i = phi ptr [ %.lcssa23.i.i.i, %.lr.ph.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa1316.i.i.i = phi ptr [ %.lcssa131718.i.i.i, %.lr.ph.i.i.i ], [ %i.dc, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.cx, %.lr.ph.i.i.i ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.de = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.df = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = and i16 %i.de, %.lcssa.i.i.i.i.i.i
  %i.di = sub nsw i64 0, %i.dg
  %i.dj = getelementptr inbounds [4 x i8], ptr %.lcssa1316.i.i.i, i64 %i.di
  %i.dk = add i64 %i.cy, -1                       ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %.val6.i.i.i = load i32, ptr %i.dl, align 4, !noalias !161437, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.val6.i.i.i, %.sroa.4.0.i.ph.i.i
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %._crit_edge17.i.i.i.i.i.i
  %i.dm = invoke fastcc i64 @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE12get_index_ofBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, i32 %.val6.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %.split.i.i.i
  %.not.i31.i.i = icmp eq i64 %i.dm, 1
  br i1 %.not.i31.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i, label %bb.o

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCNCINvNtNtB1g_4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_ERINtNtB1e_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB1g_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE00E0CskcxRuJ53GpR_9rustworkx.exit.backedge.i.i.i: ; preds = %.noexc.i.i, %._crit_edge17.i.i.i.i.i.i
  %.not25.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not25.i.i.i, label %.loopexit105.i.i, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %.noexc.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161438)
  %.val.i32.i.i = load i64, ptr %i.p, align 8, !alias.scope !161439, !noalias !161440, !noundef !67
  %i.dn = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !161441, !noundef !67
  %i.do = zext i32 %.sroa.4.0.i.ph.i.i to i64     ; 3 uses
  %i.dp = xor i64 %.val.i32.i.i, %i.do
  %i.dq = zext i64 %i.dp to i128
  %i.dr = zext i64 %i.dn to i128
  %i.ds = mul nuw i128 %i.dq, %i.dr               ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = xor i128 %i.dt, %i.ds
  %i.dv = trunc i128 %i.du to i64
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.dv, i32 noundef %.sroa.4.0.i.ph.i.i)
          to label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp.i.i

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.o
  %i.dw = load ptr, ptr %i.q, align 8, !alias.scope !161417, !noalias !161418, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161444)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !161445, !noalias !161446, !nonnull !67, !noundef !67
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !161445, !noalias !161446, !noundef !67
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !161445, !noalias !161446, !noundef !67
  %i.ec = icmp ugt i64 %.val6.i.i.i.i.i, %i.do
  br i1 %i.ec, label %bb.p, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.p:                                             ; preds = %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !161445, !noalias !161446, !nonnull !67, !noundef !67
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.do ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !161447, !noundef !67
  %.not.i.i.i.i34.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i34.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load <2 x i32>, ptr %i.eg, align 8, !noalias !161447
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.p, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ei = phi <2 x i32> [ %i.eh, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ splat (i32 -1), %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ splat (i32 -1), %bb.p ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161448)
  %i.ej = load i64, ptr %i.c, align 8, !alias.scope !161449, !noalias !161450, !noundef !67 ; 3 uses
  %i.ek = load i64, ptr %1, align 8, !range !70, !alias.scope !161449, !noalias !161450, !noundef !67
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1V_5types3any5PyAnyEEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #62
          to label %bb.r unwind label %.loopexit.split-lp.i.i, !noalias !161418

bb.r:                                             ; preds = %bb.q, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.em = load ptr, ptr %i.e, align 8, !alias.scope !161449, !noalias !161450, !nonnull !67, !noundef !67
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.ej ; 4 uses
  store ptr %i.dy, ptr %i.en, align 8, !noalias !161451
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %i.ea, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !161451
  %.sroa.562.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x i32> %i.ei, ptr %.sroa.562.0..sroa_idx.i.i, align 8, !noalias !161451
  %.sroa.764.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i32 %.sroa.4.0.i.ph.i.i, ptr %.sroa.764.0..sroa_idx.i.i, align 8, !noalias !161451
  %i.eo = add i64 %i.ej, 1
  store i64 %i.eo, ptr %i.c, align 8, !alias.scope !161449, !noalias !161450
  br label %.loopexit105.i.i

.backedge.i.i:                                    ; preds = %bb.t, %.loopexit105.i.i, %.loopexit106.i.i
  %i.ep = load i64, ptr %i.c, align 8, !alias.scope !161417, !noalias !161418, !noundef !67 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

common.resume.sink.split:                         ; preds = %bb.y, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.phi.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %i.fx, %bb.y ]
  %.sink = shl nuw i64 %.sroa.045.1.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.1.i.i, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !67
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.y, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.l ], [ %i.fx, %bb.y ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.f
  %i.eq = add nsw i64 %i.at, -1                   ; 2 uses
  store i64 %i.eq, ptr %i.c, align 8, !alias.scope !161417, !noalias !161418
  %i.er = load i64, ptr %1, align 8, !range !70, !alias.scope !161417, !noalias !161418, !noundef !67
  %i.es = icmp samesign ult i64 %i.eq, %i.er
  tail call void @llvm.assume(i1 %i.es)
  %i.et = icmp ult i64 %i.at, 288230376151711745
  tail call void @llvm.assume(i1 %i.et)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.f
  tail call fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f)
  br label %.backedge.i.i

_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit105.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.1.i.i) ]
  %i.eu = icmp ult i64 %.sroa.14.0.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eu)
  %.idx.i = shl nuw nsw i64 %.sroa.14.0.i.i, 2    ; 2 uses
  %i.ev = getelementptr i8, ptr %.sroa.11.1.i.i, i64 %.idx.i ; 2 uses
  %i.ew = shl nuw i64 %.sroa.14.0.i.i, 3          ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %.sroa.14.0.i.i, 1152921504606846975
  br i1 %.not.i.i.i, label %bb.w, label %bb.u, !prof !73

bb.u:                                             ; preds = %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %i.ex = icmp eq i64 %.sroa.14.0.i.i, 0
  br i1 %i.ex, label %._crit_edge.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !161452
  %i.ey = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ew, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !161452 ; 7 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.v
  %i.fa = add nsw i64 %.idx.i, -4                 ; 3 uses
  %i.fb = lshr exact i64 %i.fa, 2
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fa, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.fd = shl i64 %i.fa, 1
  %2 = getelementptr i8, ptr %i.ey, i64 %i.fd
  %scevgep67 = getelementptr i8, ptr %2, i64 8
  %bound0 = icmp ult ptr %i.ey, %i.ev
  %bound1 = icmp ult ptr %.sroa.11.1.i.i, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fc, 9223372036854775804     ; 5 uses
  %i.fe = shl i64 %n.vec, 2
  %i.ff = getelementptr i8, ptr %.sroa.11.1.i.i, i64 %i.fe
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.11.1.i.i, i64 %i.fg ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !161453, !noalias !161454
  %wide.load68 = load <2 x i32>, ptr %i.fh, align 4, !alias.scope !161453, !noalias !161454
  %i.fi = zext <2 x i32> %wide.load to <2 x i64>
  %i.fj = zext <2 x i32> %wide.load68 to <2 x i64>
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x i64> %i.fi, ptr %i.fk, align 8, !alias.scope !161455, !noalias !161456
  store <2 x i64> %i.fj, ptr %i.fl, align 8, !alias.scope !161455, !noalias !161456
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !161413

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.i.preheader70:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph71 = phi ptr [ %.sroa.11.1.i.i, %vector.memcheck ], [ %.sroa.11.1.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v, %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.v ], [ 0, %_RNvXNtNtNtCslwFuT2d6ECx_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB18_10graph_impl9NodeIndexERINtNtB2L_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3U_5types3any5PyAnyEB3P_NtB18_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENtNtNtB6_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ew) #61
          to label %bb.x unwind label %bb.y, !noalias !161457

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader70, %.lr.ph.i.i.i.i.i.i.i
  %i.fn = phi i64 [ %i.ft, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader70 ] ; 2 uses
  %i.fo = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph71, %.lr.ph.i.i.i.i.i.i.i.preheader70 ] ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !noalias !161454, !noundef !67
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.fr = zext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fn
  store i64 %i.fr, ptr %i.fs, align 8, !noalias !161458
  %i.ft = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.fq, %i.ev
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !161414

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.u
  %i.fu = phi ptr [ inttoptr (i64 8 to ptr), %bb.u ], [ %i.ey, %middle.block ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i = phi i64 [ 0, %bb.u ], [ %n.vec, %middle.block ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fv = icmp eq i64 %.sroa.045.1.i.i, 0
  br i1 %i.fv, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0B5_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.fw = shl nuw i64 %.sroa.045.1.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.1.i.i, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !161454
  br label %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0B5_.exit

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = icmp eq i64 %.sroa.045.1.i.i, 0
  br i1 %i.fy, label %common.resume, label %common.resume.sink.split

_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0B5_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.14.0.i.i, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fu, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i.i.i, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.z

.loopexit:                                        ; preds = %.backedge.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %_RNCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0B5_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterjINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1G_jEEENCNvMs9x_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB2u_19MultiplePathMapping5items0ENtNtNtB9_6traits8iterator8Iterator4nextB2w_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !alias.scope !161490, !nonnull !67, !noundef !67 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !161490, !nonnull !67, !noundef !67
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.f, ptr %1, align 8, !alias.scope !161490
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val = load i64, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !67, !noundef !67
  %i.i = getelementptr i8, ptr %i.b, i64 16
  %.val4 = load i64, ptr %i.i, align 8, !noundef !67 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161491
  %.idx.i = mul nuw nsw i64 %.val4, 24            ; 2 uses
  %i.j = icmp eq i64 %.val4, 0
  br i1 %i.j, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesE7reserveBI_.exit.i.i.thread.i.i, label %bb.c

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesE7reserveBI_.exit.i.i.thread.i.i: ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !noalias !161491
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !noalias !161491
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNCNvMs9x_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_19MultiplePathMapping5items0Ba_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !161492
  %i.m = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !161492 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %.preheader.i.i.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx.i) #61, !noalias !161491
  unreachable

.preheader.i.i.preheader.i.i:                     ; preds = %bb.c
  store i64 %.val4, ptr %i.a, align 8, !noalias !161491
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !161491
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161494)
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.h, %.preheader.i.i.preheader.i.i
  %.val10.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ 0, %.preheader.i.i.preheader.i.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val3, i64 %.val10.i.i.i.i.i.i.i ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !161495, !nonnull !67, !noundef !67
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !161495, !noundef !67 ; 4 uses
  %i.t = shl nuw nsw i64 %.val16.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.u = icmp eq i64 %.val16.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !161496
  %i.v = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !161496 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.t) #61
          to label %.noexc.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !161495

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull readonly align 8 %.val15.i.i.i.i.i.i.i, i64 %i.t, i1 false), !noalias !161497
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ inttoptr (i64 8 to ptr), %.preheader.i.i.i.i ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.val10.i.i.i.i.i.i.i ; 3 uses
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.x, align 8, !noalias !161498
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !161498
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.val16.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !161498
  %i.y = add nuw i64 %.val10.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.z = icmp eq i64 %i.y, %.val4
  br i1 %i.z, label %_RNCNvMs9x_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_19MultiplePathMapping5items0Ba_.exit, label %.preheader.i.i.i.i

.body.i.i:                                        ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !161499, !noalias !161500
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #63, !noalias !161491
  resume { ptr, i32 } %i.aa

_RNCNvMs9x_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_19MultiplePathMapping5items0Ba_.exit: ; preds = %bb.h, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesE7reserveBI_.exit.i.i.thread.i.i
  %i.ab = phi ptr [ %i.l, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesE7reserveBI_.exit.i.i.thread.i.i ], [ %i.p, %bb.h ]
  store i64 %.val4, ptr %i.ab, align 8, !alias.scope !161499, !noalias !161500
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161491
  store i64 %.val, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.ac, align 8
  br label %bb.j
end_hunk_8
begin_hunk_9_@_RNvXs_NtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtB4_11DistanceMapB1s_dE8put_itemCskcxRuJ53GpR_9rustworkx:bb.a
  %i.dc = icmp ult i64 %.val.i.i.i.i.i, %i.db
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.m, align 8, !alias.scope !167657, !noalias !167658, !nonnull !67, !noundef !67
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.val.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store double %2, ptr %i.df, align 8, !noalias !167658
  br label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i.i, i64 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1830) #60, !noalias !167658
  unreachable

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec16in_place_collectINtB6_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1R_5types3any5PyAnyEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketBZ_B1M_EENvMs0_B4M_B4J_9key_valueEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167704)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !167704, !noalias !167703, !noundef !67 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !167704, !noalias !167703, !nonnull !67, !noundef !67 ; 7 uses
  %i.e = mul i64 %i.c, 24                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167707)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !167708, !noalias !167703, !nonnull !67, !noundef !67 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !167708, !noalias !167703 ; 3 uses
  %.not15.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.g
  br i1 %.not15.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3m_5types3any5PyAnyEEENvMs0_B20_B1X_9key_valueEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #63
          to label %bb.q unwind label %bb.p, !noalias !167703

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.4.016.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.a ] ; 3 uses
  %.sroa.012.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !167709, !nonnull !67, !noundef !67
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !167709
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 4 uses
  store i32 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.4.016.i.i.i.i, align 8, !noalias !167710
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i, i64 8
  store ptr %.sroa.012.0.copyload.i.i.i.i, ptr %i.k, align 8, !noalias !167710
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.g
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store ptr %i.j, ptr %i.h, align 8, !alias.scope !167708, !noalias !167703
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i, %bb.a
  %.val.i.i = phi ptr [ %i.j, %._crit_edge.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.a ] ; 4 uses
  %.sroa.4.0.lcssa.i.i.i.i = phi ptr [ %i.l, %._crit_edge.i.i.i.i ], [ %i.d, %bb.a ]
  %i.m = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !167711
  store ptr %i.d, ptr %i.a, align 8, !noalias !167711
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !167711
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.r, align 8, !noalias !167711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167712)
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 24                  ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !167713, !noalias !167703
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !167713, !noalias !167703
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !167713, !noalias !167703
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !167713, !noalias !167703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167714)
  %i.w = icmp eq ptr %i.g, %.val.i.i
  br i1 %i.w, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.x = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB20_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.z, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB20_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.08.i.i.i
  %i.z = add nuw nsw i64 %.sroa.0.08.i.i.i, 1     ; 4 uses
  %.val7.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !167714, !noalias !167715, !nonnull !67, !noundef !67 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !167716, !noundef !67
  %i.aa = icmp sgt i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %bb.f, label %bb.e, !prof !125

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val7.i.i.i)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB20_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %bb.h, !noalias !167716

bb.f:                                             ; preds = %bb.d
  tail call void @_Py_DecRef(ptr noundef nonnull %.val7.i.i.i) #59, !noalias !167716
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB20_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB20_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.ab = icmp eq i64 %i.z, %i.v
  br i1 %i.ab, label %.loopexit.i, label %bb.d

bb.g:                                             ; preds = %.lr.ph
  %i.ac = add i64 %.sroa.0.1.i.i.i17, 1           ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.v
  br i1 %i.ad, label %.body.i, label %.lr.ph

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.z, %i.v
  br i1 %i.af, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i17 = phi i64 [ %i.ac, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i17
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !167714, !noalias !167715, !nonnull !67, !noundef !67
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB20_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i) #63
          to label %bb.g unwind label %bb.i, !noalias !167716

bb.i:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !167716
  unreachable

bb.j:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.h, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3a_5types3any5PyAnyEETB2i_B35_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #63
          to label %bb.b unwind label %bb.p, !noalias !167711

.loopexit.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB20_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.c
  %i.aj = and i64 %i.e, 8
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEEENvMs0_B2o_B2l_9key_valueETB2S_B3F_EECskcxRuJ53GpR_9rustworkx.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  %i.ak = and i64 %i.e, -16                       ; 3 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef 8) #59, !noalias !167711
  br label %_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEEENvMs0_B2o_B2l_9key_valueETB2S_B3F_EECskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %bb.k
  %i.am = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef 8, i64 noundef %i.ak) #59, !noalias !167711 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.n, label %_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEEENvMs0_B2o_B2l_9key_valueETB2S_B3F_EECskcxRuJ53GpR_9rustworkx.exit, !prof !104

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ak) #61
          to label %bb.o unwind label %bb.j, !noalias !167711

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %.body.i, %bb.b
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !167711
  unreachable

bb.q:                                             ; preds = %bb.b
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3K_5types3any5PyAnyEEENvMs0_B2o_B2l_9key_valueETB2S_B3F_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.i, %bb.l, %bb.m
  %.sroa.03.0.i = phi ptr [ %i.d, %.loopexit.i ], [ %i.am, %bb.m ], [ inttoptr (i64 8 to ptr), %bb.l ]
  %i.ap = lshr i64 %i.e, 4
  store i64 %i.ap, ptr %0, align 8, !alias.scope !167703, !noalias !167704
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.aq, align 8, !alias.scope !167703, !noalias !167704
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.ar, align 8, !alias.scope !167703, !noalias !167704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167711
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3m_5types3any5PyAnyEEENvMs0_B20_B1X_9key_valueEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !167703
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterjENvMs2_B15_B13_3newEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.a, align 8, !nonnull !67, !noundef !67 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !67, !noundef !67 ; 3 uses
  %i.c = ptrtoint ptr %.val6 to i64               ; 2 uses
  %i.d = ptrtoint ptr %.val5 to i64               ; 2 uses
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 3                   ; 2 uses
  %i.g = lshr exact i64 %i.e, 1                   ; 2 uses
  %i.h = icmp eq ptr %.val6, %.val5
  br i1 %i.h, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.thread, label %bb.b

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.thread: ; preds = %bb.a
  %.sroa.09.0.copyload26 = load ptr, ptr %1, align 8
  %.sroa.6.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload28 = load i64, ptr %.sroa.6.0..sroa_idx27, align 8
  br label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !167749
  %i.i = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !167749 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph.i.i.i.i.i.preheader

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.g) #61
          to label %bb.e unwind label %bb.f

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.k = add i64 %i.c, -8
  %i.l = sub i64 %i.k, %i.d                       ; 4 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 200
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.o = lshr i64 %i.l, 1
  %i.p = and i64 %i.o, 9223372036854775804
  %i.q = getelementptr i8, ptr %i.i, i64 %i.p
  %scevgep = getelementptr i8, ptr %i.q, i64 4
  %i.r = and i64 %i.l, -8
  %i.s = getelementptr i8, ptr %.val5, i64 %i.r
  %scevgep32 = getelementptr i8, ptr %i.s, i64 8
  %bound0 = icmp ult ptr %i.i, %scevgep32
  %bound1 = icmp ult ptr %.val5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 4611686018427387900      ; 5 uses
  %i.t = shl i64 %n.vec, 3
  %i.u = getelementptr i8, ptr %.val5, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.val5, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !167750, !noalias !167751
  %wide.load33 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !167750, !noalias !167751
  %i.x = trunc <2 x i64> %wide.load to <2 x i32>
  %i.y = trunc <2 x i64> %wide.load33 to <2 x i32>
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <2 x i32> %i.x, ptr %i.z, align 4, !alias.scope !167752, !noalias !167753
  store <2 x i32> %i.y, ptr %i.aa, align 4, !alias.scope !167752, !noalias !167753
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !167743

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader35

.lr.ph.i.i.i.i.i.preheader35:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph36 = phi ptr [ %.val5, %vector.memcheck ], [ %.val5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader35, %.lr.ph.i.i.i.i.i
  %i.ac = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader35 ] ; 2 uses
  %i.ad = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.ph36, %.lr.ph.i.i.i.i.i.preheader35 ] ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !167751, !noundef !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ac
  store i32 %i.ag, ptr %i.ah, align 4, !noalias !167754
  %i.ai = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.af, %.val6
  br i1 %.not.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !167744

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.thread
  %.sroa.6.0.copyload31 = phi i64 [ %.sroa.6.0.copyload28, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.thread ], [ %.sroa.6.0.copyload, %middle.block ], [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.09.0.copyload30 = phi ptr [ %.sroa.09.0.copyload26, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.thread ], [ %.sroa.09.0.copyload, %middle.block ], [ %.sroa.09.0.copyload, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.aj = phi ptr [ inttoptr (i64 4 to ptr), %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.thread ], [ %i.i, %middle.block ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.4.029 = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.thread ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.thread ], [ %n.vec, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  %i.ak = icmp eq i64 %.sroa.6.0.copyload31, 0
  br i1 %i.ak, label %bb.d, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload30) ]
  %i.al = shl nuw i64 %.sroa.6.0.copyload31, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload30, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !167751
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  store i64 %.sroa.4.029, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx22, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjENvMs2_NtCs68Jln09rRqb_8petgraph10graph_implNtB25_9NodeIndex3newEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i, %bb.f
  resume { ptr, i32 } %i.am

bb.f:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8 = load i64, ptr %i.an, align 8, !alias.scope !167755, !noundef !67 ; 2 uses
  %i.ao = icmp eq i64 %.val8, 0
  br i1 %i.ao, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjENvMs2_NtCs68Jln09rRqb_8petgraph10graph_implNtB25_9NodeIndex3newEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %bb.f
  %.val7 = load ptr, ptr %1, align 8, !nonnull !67, !noundef !67
  %i.ap = shl nuw i64 %.val8, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !167756
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjENvMs2_NtCs68Jln09rRqb_8petgraph10graph_implNtB25_9NodeIndex3newEECskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENvMs2_B2N_B2L_5indexEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !67, !noundef !67 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.b, align 8, !nonnull !67, !noundef !67 ; 3 uses
  %i.c = ptrtoint ptr %.val4 to i64               ; 2 uses
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = sub nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = lshr exact i64 %i.e, 2                   ; 2 uses
  %i.g = shl i64 %i.e, 1                          ; 4 uses
  %i.h = icmp ugt i64 %i.e, 9223372036854775804
  %.not.i = icmp ugt i64 %i.g, 9223372036854775800
  %or.cond.i = or i1 %i.h, %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !167787
  %i.j = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !167787 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.j to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.g) #61
          to label %bb.g unwind label %bb.h

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.l, %bb.d ], [ 8, %bb.b ]
  %.sroa.4.0 = phi i64 [ %i.f, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.m = inttoptr i64 %.sroa.10.0 to ptr          ; 5 uses
  %i.n = icmp samesign ule i64 %i.f, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.n)
  %.sroa.07.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.not.not12.i.i.i.i.i = icmp eq ptr %.val, %.val4
  br i1 %.not.not12.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.o = add i64 %i.c, -4
  %i.p = sub i64 %i.o, %i.d                       ; 4 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 100
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.s = shl i64 %i.p, 1
  %i.t = and i64 %i.s, -8
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 8
  %i.v = and i64 %i.p, -4
  %i.w = getelementptr i8, ptr %.val, i64 %i.v
  %scevgep23 = getelementptr i8, ptr %i.w, i64 4
  %bound0 = icmp ugt ptr %scevgep23, %i.m
  %bound1 = icmp ult ptr %.val, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 9223372036854775804      ; 5 uses
  %i.x = shl i64 %n.vec, 2
  %i.y = getelementptr i8, ptr %.val, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.val, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !167788, !noalias !167789
  %wide.load24 = load <2 x i32>, ptr %i.aa, align 4, !alias.scope !167788, !noalias !167789
  %i.ab = zext <2 x i32> %wide.load to <2 x i64>
  %i.ac = zext <2 x i32> %wide.load24 to <2 x i64>
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !alias.scope !167790, !noalias !167791
  store <2 x i64> %i.ac, ptr %i.ae, align 8, !alias.scope !167790, !noalias !167791
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !167783

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.preheader26:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph27 = phi ptr [ %.val, %vector.memcheck ], [ %.val, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i
  %i.ag = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 2 uses
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.ph27, %.lr.ph.i.i.i.i.i.preheader26 ] ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !167789, !noundef !67
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ag
  store i64 %i.ak, ptr %i.al, align 8, !noalias !167792
  %i.am = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.aj, %.val4
  br i1 %.not.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !167784

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.42.0.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %n.vec, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.an, label %bb.f, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload) ]
  %i.ao = shl nuw i64 %.sroa.6.0.copyload, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.07.0.copyload, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !167789
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  store i64 %.sroa.4.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx20, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENvMs2_B1Z_B1X_5indexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i, %bb.h
  resume { ptr, i32 } %i.ap

bb.h:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6 = load i64, ptr %i.aq, align 8, !alias.scope !134, !noundef !67 ; 2 uses
  %i.ar = icmp eq i64 %.val6, 0
  br i1 %i.ar, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENvMs2_B1Z_B1X_5indexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %bb.h
  %.val5 = load ptr, ptr %1, align 8, !nonnull !67, !noundef !67
  %i.as = shl nuw i64 %.val6, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !167793
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENvMs2_B1Z_B1X_5indexEECskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCslwFuT2d6ECx_4core3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEEENtNtCslwFuT2d6ECx_4core3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardbEENtNtCslwFuT2d6ECx_4core3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEEENtNtCslwFuT2d6ECx_4core3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardQINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEENtNtB25_3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscQOBX8uaZYv_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardbEENtNtCslwFuT2d6ECx_4core3fmt5Debug3fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs_NtNtCslwFuT2d6ECx_4core2io5implsQINtNtB6_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEENtNtB6_5write5Write9write_fmtCskcxRuJ53GpR_9rustworkx(ptr %.0.val, ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167816)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 1                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167818)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167820)
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !167821, !noalias !167822, !noundef !67 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167823)
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.e) ; 2 uses
  %i.h = load i64, ptr %.0.val, align 8, !range !70, !alias.scope !167824, !noalias !167825, !noundef !67 ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !167824, !noalias !167825, !noundef !67 ; 4 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub i64 %i.g, %i.k                       ; 2 uses
  %i.n = sub nsw i64 %i.h, %i.k
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, !prof !71

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, i64 noundef %i.k, i64 noundef %i.m, i64 noundef 1, i64 noundef 1), !noalias !167825
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !167824, !noalias !167825, !noundef !67 ; 5 uses
end_hunk_9
