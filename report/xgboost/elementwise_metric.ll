Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/elementwise_metric?download=true
inline.NumInlined: 4380
inline.NumDeleted: 1372
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7xgboost6metric13EvalEWiseBaseINS0_11EvalRowRMSEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.bn

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr83 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr83, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr83, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr83, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.078.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !72
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cc, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cd, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ce, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.ck, %bb.x ], [ %i.hc, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_11EvalRowRMSEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cn = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp slt i32 %i.cn, 0
  br i1 %i.cp, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.co, 3                ; 6 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cr, ptr %14, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cw, ptr %15, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.co
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.db = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cv, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.da, %.noexc36.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dc, align 8, !tbaa !86
  %i.dd = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.de, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.df, align 8, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dg, align 8, !tbaa !90
  %i.dh = uitofp i64 %i.dd to double
  %i.di = fmul nnan double %i.dh, f0x3F40000000000000
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i64              ; 4 uses
  %i.dl = icmp eq i32 %i.cn, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_11EvalRowRMSEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dm, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_11EvalRowRMSEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dm = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_11EvalRowRMSEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !211

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !63, !noalias !219
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !219
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dn, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dr = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_11EvalRowRMSEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fb, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_11EvalRowRMSEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_11EvalRowRMSEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_11EvalRowRMSEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1      ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #18 ; 0 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.em = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.en = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !92
  store ptr %i.en, ptr %11, align 8, !tbaa !92
end_hunk_0
begin_hunk_1_@_ZN7xgboost6metric13EvalEWiseBaseINS0_12EvalRowRMSLEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.bn

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr83 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr83, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr83, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr83, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.078.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !72
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cc, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cd, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ce, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.ck, %bb.x ], [ %i.hc, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_12EvalRowRMSLEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cn = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp slt i32 %i.cn, 0
  br i1 %i.cp, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.co, 3                ; 6 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cr, ptr %14, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cw, ptr %15, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.co
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.db = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cv, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.da, %.noexc36.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dc, align 8, !tbaa !86
  %i.dd = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.de, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.df, align 8, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dg, align 8, !tbaa !90
  %i.dh = uitofp i64 %i.dd to double
  %i.di = fmul nnan double %i.dh, f0x3F40000000000000
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i64              ; 4 uses
  %i.dl = icmp eq i32 %i.cn, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_12EvalRowRMSLEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dm, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_12EvalRowRMSLEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dm = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_12EvalRowRMSLEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !333

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !63, !noalias !341
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !341
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dn, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dr = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_12EvalRowRMSLEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fb, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_12EvalRowRMSLEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_12EvalRowRMSLEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_12EvalRowRMSLEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1      ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #18 ; 0 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.em = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.en = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !92
  store ptr %i.en, ptr %11, align 8, !tbaa !92
end_hunk_1
begin_hunk_2_@_ZN7xgboost6metric13EvalEWiseBaseINS0_10EvalRowMAEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.bn

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr83 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr83, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr83, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr83, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.078.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !72
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cc, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cd, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ce, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.ck, %bb.x ], [ %i.hc, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_10EvalRowMAEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cn = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp slt i32 %i.cn, 0
  br i1 %i.cp, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.co, 3                ; 6 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cr, ptr %14, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cw, ptr %15, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.co
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.db = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cv, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.da, %.noexc36.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dc, align 8, !tbaa !86
  %i.dd = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.de, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.df, align 8, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dg, align 8, !tbaa !90
  %i.dh = uitofp i64 %i.dd to double
  %i.di = fmul nnan double %i.dh, f0x3F40000000000000
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i64              ; 4 uses
  %i.dl = icmp eq i32 %i.cn, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_10EvalRowMAEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dm, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_10EvalRowMAEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dm = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_10EvalRowMAEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !360

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !63, !noalias !368
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !368
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dn, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dr = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_10EvalRowMAEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fb, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_10EvalRowMAEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_10EvalRowMAEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_10EvalRowMAEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1      ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #18 ; 0 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.em = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.en = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !92
  store ptr %i.en, ptr %11, align 8, !tbaa !92
end_hunk_2
begin_hunk_3_@_ZN7xgboost6metric13EvalEWiseBaseINS0_11EvalRowMAPEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.bn

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr83 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr83, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr83, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr83, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.078.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !72
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cc, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cd, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ce, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.ck, %bb.x ], [ %i.hc, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_11EvalRowMAPEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cn = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp slt i32 %i.cn, 0
  br i1 %i.cp, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.co, 3                ; 6 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cr, ptr %14, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cw, ptr %15, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.co
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.db = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cv, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.da, %.noexc36.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dc, align 8, !tbaa !86
  %i.dd = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.de, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.df, align 8, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dg, align 8, !tbaa !90
  %i.dh = uitofp i64 %i.dd to double
  %i.di = fmul nnan double %i.dh, f0x3F40000000000000
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i64              ; 4 uses
  %i.dl = icmp eq i32 %i.cn, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_11EvalRowMAPEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dm, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_11EvalRowMAPEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dm = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_11EvalRowMAPEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !387

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !63, !noalias !395
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !395
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dn, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dr = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_11EvalRowMAPEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fb, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_11EvalRowMAPEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_11EvalRowMAPEEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_11EvalRowMAPEEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1      ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #18 ; 0 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.em = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.en = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !92
  store ptr %i.en, ptr %11, align 8, !tbaa !92
end_hunk_3
begin_hunk_4_@_ZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.bn

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr83 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr83, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr83, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr83, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.078.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !72
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cc, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cd, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ce, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.ck, %bb.x ], [ %i.hc, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cn = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp slt i32 %i.cn, 0
  br i1 %i.cp, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.co, 3                ; 6 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cr, ptr %14, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cw, ptr %15, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.co
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.db = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cv, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.da, %.noexc36.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dc, align 8, !tbaa !86
  %i.dd = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.de, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.df, align 8, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dg, align 8, !tbaa !90
  %i.dh = uitofp i64 %i.dd to double
  %i.di = fmul nnan double %i.dh, f0x3F40000000000000
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i64              ; 4 uses
  %i.dl = icmp eq i32 %i.cn, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dm, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dm = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !414

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !63, !noalias !422
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !422
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dn, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dr = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_14EvalRowLogLossEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fb, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_14EvalRowLogLossEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_14EvalRowLogLossEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1      ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #18 ; 0 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.em = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.en = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !92
  store ptr %i.en, ptr %11, align 8, !tbaa !92
end_hunk_4
begin_hunk_5_@_ZN7xgboost6metric15PseudoErrorLoss4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !466 ; 2 uses
  store float %i.bg, ptr %i.d, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !85
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bh, label %_ZN4dmlc11LogCheck_NEIfdEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_NEIfdEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_NEIfdEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit65

_ZN4dmlc11LogCheck_NEIfdEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.m
  call void @_ZN4dmlc14LogCheckFormatIfdEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %20, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pr79 = load ptr, ptr %20, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %.not84 = icmp eq ptr %.pr79, null
  br i1 %.not84, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit65, label %bb.n

bb.n:                                             ; preds = %_ZN4dmlc11LogCheck_NEIfdEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.bi = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %.noexc46 unwind label %bb.o

.noexc46:                                         ; preds = %bb.n
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bi, ptr noundef nonnull @.str.41, i32 noundef 193)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit48 unwind label %bb.o

_ZN4dmlc15LogMessageFatalC2EPKci.exit48:          ; preds = %.noexc46
  %i.bj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit50 unwind label %bb.p ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit50: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit48
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit50
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.90, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.bm = load ptr, ptr %20, align 8, !tbaa !38   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !28
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bn, i64 noundef %i.bp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56 unwind label %bb.p ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.91, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %.noexc46, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit50, %_ZN4dmlc15LogMessageFatalC2EPKci.exit48
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.q unwind label %bb.bm

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn29 = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %i.bu, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.bl

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %.pr80 = load ptr, ptr %20, align 8, !tbaa !38  ; 4 uses
  %.not.i61 = icmp eq ptr %.pr80, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit65, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %.pr80, align 8, !tbaa !29 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pr80, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i62: ; preds = %bb.s
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !35
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i63

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i63: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i62
  call void @_ZdlPvm(ptr noundef nonnull %.pr80, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit65

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit65: ; preds = %_ZN4dmlc11LogCheck_NEIfdEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEIfdEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.r, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.ca = load ptr, ptr %i.ab, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.01.0, ptr %22, align 8, !tbaa !45
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.572.0..sroa_idx, align 8, !tbaa !72
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.673.0..sroa_idx, align 8, !tbaa !74
  %i.cb = getelementptr inbounds nuw i8, ptr %22, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cb, ptr noundef nonnull align 8 dereferenceable(68) %19, i64 68, i1 false), !tbaa.struct !79
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 96
  store i64 %.sroa.03.0, ptr %i.cc, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 104
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.ce = load float, ptr %i.d, align 4, !tbaa !74
  store float %i.ce, ptr %i.cd, align 8, !tbaa !469
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.cf, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i66 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i66
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.f, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cf, align 8
  %i.cg = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ci = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ci, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.cj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.u

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.t
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.v unwind label %bb.w

common.resume:                                    ; preds = %bb.e, %bb.bl, %bb.v, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.cl, %bb.v ], [ %.pn31, %bb.bl ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.w:                                             ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_15PseudoErrorLoss4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESA_OT_m.exit

bb.x:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit65
  %i.co = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.ca) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.cp = sext i32 %i.co to i64                   ; 3 uses
  %i.cq = icmp slt i32 %i.co, 0
  br i1 %i.cq, label %bb.y, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bd

.noexc.i:                                         ; preds = %bb.y
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.co, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cr = shl nuw nsw i64 %i.cp, 3                ; 6 uses
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #34
          to label %.noexc27.i unwind label %bb.bd ; 4 uses

.noexc27.i:                                       ; preds = %bb.z
  store ptr %i.cs, ptr %14, align 8, !tbaa !82
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cs, i8 0, i64 range(i64 0, 17179869177) %i.cr, i1 false), !tbaa !85
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #34
          to label %.noexc36.i unwind label %bb.be ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cx, ptr %15, align 8, !tbaa !82
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cp
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cx, i8 0, i64 range(i64 0, 17179869177) %i.cr, i1 false), !tbaa !85
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cr
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.dc = phi ptr [ %i.cy, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cw, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.db, %.noexc36.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dd, align 8, !tbaa !86
  %i.de = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.f)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bf ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.df, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.dg, align 8, !tbaa !90
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dh, align 8, !tbaa !90
  %i.di = uitofp i64 %i.de to double
  %i.dj = fmul nnan double %i.di, f0x3F40000000000000
  %i.dk = call double @llvm.ceil.f64(double %i.dj)
  %i.dl = fptoui double %i.dk to i64              ; 4 uses
  %i.dm = icmp eq i32 %i.co, 1
  br i1 %i.dm, label %.preheader.i.i.i.i, label %bb.aa

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_15PseudoErrorLoss4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dn, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_15PseudoErrorLoss4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_(i64 %i.de, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dn = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dn, %i.dl
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_15PseudoErrorLoss4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !455

bb.aa:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.co, ptr %i.a, align 4, !tbaa !63, !noalias !470
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !470
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.aa
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ac

.noexc.i.i.i.i:                                   ; preds = %bb.ab
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.do, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ac

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.ad ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.ds = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !29
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !28
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.dt, i64 noundef %i.dv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.ad

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.af unwind label %bb.ac

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ab
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ae unwind label %bb.ba

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dy, %bb.ac ], [ %i.dz, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ag
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !35
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.af, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_15PseudoErrorLoss4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fc, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_15PseudoErrorLoss4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_15PseudoErrorLoss4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_(i64 %i.de, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_15PseudoErrorLoss4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { ptr, i32 } %i.eg, 1      ; 2 uses
  %i.ej = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ek = icmp eq i32 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.el = call ptr @__cxa_begin_catch(ptr %i.eh) #18 ; 0 uses
  %i.em = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ef) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.em) #33
          to label %.noexc.i.i.i unwind label %bb.as

.noexc.i.i.i:                                     ; preds = %bb.aj
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ai
  %i.en = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not22.i.i.i, label %bb.ak, label %.sink.split.i.i.i

bb.ak:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.eo = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.ep = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.ep, ptr %5, align 8, !tbaa !92
  store ptr %i.eo, ptr %11, align 8, !tbaa !92
end_hunk_5
begin_hunk_6_@_ZN7xgboost6metric13EvalEWiseBaseINS0_20EvalPoissonNegLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.bn

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr83 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr83, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr83, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr83, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.078.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !72
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cc, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cd, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ce, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.ck, %bb.x ], [ %i.hc, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_20EvalPoissonNegLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cn = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp slt i32 %i.cn, 0
  br i1 %i.cp, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.co, 3                ; 6 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cr, ptr %14, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cw, ptr %15, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.co
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.db = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cv, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.da, %.noexc36.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dc, align 8, !tbaa !86
  %i.dd = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.de, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.df, align 8, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dg, align 8, !tbaa !90
  %i.dh = uitofp i64 %i.dd to double
  %i.di = fmul nnan double %i.dh, f0x3F40000000000000
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i64              ; 4 uses
  %i.dl = icmp eq i32 %i.cn, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_20EvalPoissonNegLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dm, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_20EvalPoissonNegLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dm = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_20EvalPoissonNegLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !567

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !63, !noalias !575
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !575
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dn, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dr = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_20EvalPoissonNegLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fb, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_20EvalPoissonNegLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_20EvalPoissonNegLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_20EvalPoissonNegLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1      ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #18 ; 0 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.em = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.en = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !92
  store ptr %i.en, ptr %11, align 8, !tbaa !92
end_hunk_6
begin_hunk_7_@_ZN7xgboost6metric13EvalEWiseBaseINS0_17EvalGammaDevianceEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.bn

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr83 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr83, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr83, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr83, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.078.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !72
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cc, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cd, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ce, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.ck, %bb.x ], [ %i.hc, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_17EvalGammaDevianceEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cn = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp slt i32 %i.cn, 0
  br i1 %i.cp, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.co, 3                ; 6 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cr, ptr %14, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cw, ptr %15, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.co
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.db = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cv, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.da, %.noexc36.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dc, align 8, !tbaa !86
  %i.dd = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.de, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.df, align 8, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dg, align 8, !tbaa !90
  %i.dh = uitofp i64 %i.dd to double
  %i.di = fmul nnan double %i.dh, f0x3F40000000000000
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i64              ; 4 uses
  %i.dl = icmp eq i32 %i.cn, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_17EvalGammaDevianceEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dm, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_17EvalGammaDevianceEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dm = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_17EvalGammaDevianceEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !594

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !63, !noalias !602
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !602
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dn, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dr = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_17EvalGammaDevianceEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fb, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_17EvalGammaDevianceEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_17EvalGammaDevianceEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_17EvalGammaDevianceEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1      ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #18 ; 0 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.em = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.en = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !92
  store ptr %i.en, ptr %11, align 8, !tbaa !92
end_hunk_7
begin_hunk_8_@_ZN7xgboost6metric13EvalEWiseBaseINS0_16EvalGammaNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.bn

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr83 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr83, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr83, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr83, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.078.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !72
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cc, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cd, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ce, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.ck, %bb.x ], [ %i.hc, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_16EvalGammaNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cn = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp slt i32 %i.cn, 0
  br i1 %i.cp, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.co, 3                ; 6 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cr, ptr %14, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cw, ptr %15, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.co
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cw, i8 0, i64 range(i64 0, 17179869177) %i.cq, i1 false), !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.db = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cv, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.da, %.noexc36.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.dc, align 8, !tbaa !86
  %i.dd = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.de, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.df, align 8, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dg, align 8, !tbaa !90
  %i.dh = uitofp i64 %i.dd to double
  %i.di = fmul nnan double %i.dh, f0x3F40000000000000
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i64              ; 4 uses
  %i.dl = icmp eq i32 %i.cn, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_16EvalGammaNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dm, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_16EvalGammaNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dm = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_16EvalGammaNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !621

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !63, !noalias !629
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !629
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dn, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dr = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_16EvalGammaNLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fb, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_16EvalGammaNLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_16EvalGammaNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dd, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_16EvalGammaNLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1      ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #18 ; 0 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.em = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.en = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !92
  store ptr %i.en, ptr %11, align 8, !tbaa !92
end_hunk_8
begin_hunk_9_@_ZN7xgboost6metric13EvalEWiseBaseINS0_9EvalErrorEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
  %.pn26 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr84 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i60 = icmp eq ptr %.pr84, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr84, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr84, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.pr84, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit64, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.079.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.079.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn28, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn28, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i66, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i67 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i68 = insertvalue { i64, ptr } %.fca.0.insert.i.i67, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn30 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i68, %bb.t ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn30, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.03.0, ptr %22, align 8, !tbaa !45
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.576.0..sroa_idx, align 8, !tbaa !72
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !74
  %i.ce = getelementptr inbounds nuw i8, ptr %22, i64 24
  %.sroa.074.0.extract.trunc = trunc i64 %i.cc to i40
  store i40 %.sroa.074.0.extract.trunc, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cf, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cg = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.01.0, ptr %i.cg, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.ch, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i69 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i69
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ch, align 8
  %i.ci = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ck = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ck, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.cl = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.cn, %bb.x ], [ %i.hf, %bb.bm ], [ %.pn26, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_9EvalErrorEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cq = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cd) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.cr = sext i32 %i.cq to i64                   ; 3 uses
  %i.cs = icmp slt i32 %i.cq, 0
  br i1 %i.cs, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cq, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ct = shl nuw nsw i64 %i.cr, 3                ; 6 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.cu, ptr %14, align 8, !tbaa !82
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 range(i64 0, 17179869177) %i.ct, i1 false), !tbaa !85
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cz, ptr %15, align 8, !tbaa !82
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cr
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cz, i8 0, i64 range(i64 0, 17179869177) %i.ct, i1 false), !tbaa !85
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ct
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.de = phi ptr [ %i.da, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cy, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.dd, %.noexc36.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.df, align 8, !tbaa !86
  %i.dg = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.dh, align 8, !tbaa !49
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.di, align 8, !tbaa !90
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.dj, align 8, !tbaa !90
  %i.dk = uitofp i64 %i.dg to double
  %i.dl = fmul nnan double %i.dk, f0x3F40000000000000
  %i.dm = call double @llvm.ceil.f64(double %i.dl)
  %i.dn = fptoui double %i.dm to i64              ; 4 uses
  %i.do = icmp eq i32 %i.cq, 1
  br i1 %i.do, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_9EvalErrorEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.dp, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_9EvalErrorEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dg, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.dp = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.dp, %i.dn
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_9EvalErrorEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !651

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !63, !noalias !659
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !659
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dq, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.dr = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.du = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !28
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.dv, i64 noundef %i.dx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ea, %bb.ae ], [ %i.eb, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !35
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_9EvalErrorEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fe, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_9EvalErrorEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_9EvalErrorEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.dg, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_9EvalErrorEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { ptr, i32 } %i.ei, 1      ; 2 uses
  %i.el = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.em = icmp eq i32 %i.ek, %i.el
  br i1 %i.em, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.en = call ptr @__cxa_begin_catch(ptr %i.ej) #18 ; 0 uses
  %i.eo = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.eh) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.eo) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.ep = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.eq = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.er = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.er, ptr %5, align 8, !tbaa !92
  store ptr %i.eq, ptr %11, align 8, !tbaa !92
end_hunk_9
begin_hunk_10_@_ZN7xgboost6metric13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn28 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr85 = load ptr, ptr %19, align 8, !tbaa !38  ; 4 uses
  %.not.i62 = icmp eq ptr %.pr85, null
  br i1 %.not.i62, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit66, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.pr85, align 8, !tbaa !29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pr85, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i64

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i64: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63
  call void @_ZdlPvm(ptr noundef nonnull %.pr85, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit66

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit66: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit66, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8 ; 2 uses
  %.sroa.080.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.080.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %21, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %spec.select)
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.bn, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.bj, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn30 = phi { i64, ptr } [ %i.bf, %bb.p ], [ %.fca.1.insert.i.i, %bb.q ] ; 2 uses
  %.sroa.05.0 = extractvalue { i64, ptr } %.pn30, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn30, 1
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %spec.select)
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.0.0.copyload.i.i68 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.sroa.0.0.copyload.i.i68, 65535
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %.fca.0.insert.i.i69 = insertvalue { i64, ptr } poison, i64 %i.ca, 0
  %.fca.1.insert.i.i70 = insertvalue { i64, ptr } %.fca.0.insert.i.i69, ptr %i.bw, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn32 = phi { i64, ptr } [ %i.bs, %bb.s ], [ %.fca.1.insert.i.i70, %bb.t ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn32, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn32, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load float, ptr %i.cb, align 8, !tbaa !74
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %.sroa.05.0, ptr %22, align 8, !tbaa !45
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.577.0..sroa_idx, align 8, !tbaa !72
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float 1.000000e+00, ptr %.sroa.678.0..sroa_idx, align 8, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 24
  store float %.sroa.01.0.copyload, ptr %i.cd, align 8, !tbaa !74
  %i.ce = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.ce, ptr noundef nonnull align 8 dereferenceable(68) %21, i64 68, i1 false), !tbaa.struct !79
  %i.cf = getelementptr inbounds nuw i8, ptr %22, i64 104
  store i64 %.sroa.03.0, ptr %i.cf, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i71 = load i32, ptr %i.cg, align 8 ; 2 uses
  %.sroa.059.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i71 to i16
  %.off.i.i = add i16 %.sroa.059.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i71
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %i.h, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cg, align 8
  %i.ch = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.cj = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cj, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ck = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.v
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.bm, %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.cm, %bb.x ], [ %i.he, %bb.bm ], [ %.pn28, %bb.l ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_m.exit

bb.z:                                             ; preds = %bb.u
  %i.cp = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cc) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %i.cr = icmp slt i32 %i.cp, 0
  br i1 %i.cr, label %bb.aa, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cp, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cs = shl nuw nsw i64 %i.cq, 3                ; 6 uses
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #34
          to label %.noexc27.i unwind label %bb.bf ; 4 uses

.noexc27.i:                                       ; preds = %bb.ab
  store ptr %i.ct, ptr %14, align 8, !tbaa !82
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ct, i8 0, i64 range(i64 0, 17179869177) %i.cs, i1 false), !tbaa !85
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #34
          to label %.noexc36.i unwind label %bb.bg ; 4 uses

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.noexc36.i:                                       ; preds = %.noexc27.i
  store ptr %i.cy, ptr %15, align 8, !tbaa !82
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cq
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.da, ptr %i.db, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cy, i8 0, i64 range(i64 0, 17179869177) %i.cs, i1 false), !tbaa !85
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cs
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.noexc36.i, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i
  %i.dd = phi ptr [ %i.cz, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.cx, %.noexc36.i ]
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34.i ], [ %i.dc, %.noexc36.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i33.i, ptr %i.de, align 8, !tbaa !86
  %i.df = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.h)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.bh ; 3 uses

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %.loopexit63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %13, ptr %16, align 8, !tbaa !88
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %i.dg, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %14, ptr %i.dh, align 8, !tbaa !90
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %15, ptr %i.di, align 8, !tbaa !90
  %i.dj = uitofp i64 %i.df to double
  %i.dk = fmul nnan double %i.dj, f0x3F40000000000000
  %i.dl = call double @llvm.ceil.f64(double %i.dk)
  %i.dm = fptoui double %i.dl to i64              ; 4 uses
  %i.dn = icmp eq i32 %i.cp, 1
  br i1 %i.dn, label %.preheader.i.i.i.i, label %bb.ac

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.noexc40.i
  %.0107.i.i.i.i = phi i64 [ %i.do, %.noexc40.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.df, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.0107.i.i.i.i)
          to label %.noexc40.i unwind label %.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %i.do = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.do, %i.dm
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !686

bb.ac:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !63, !noalias !694
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !694
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.ac
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i.i.i unwind label %bb.ae

.noexc.i.i.i.i:                                   ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dp, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.dt = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !28
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.du, i64 noundef %i.dw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dz, %bb.ae ], [ %i.ea, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body.i

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr82.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !35
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.ah, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_18EvalTweedieNLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06099.i.i.i.i = phi i64 [ %i.fd, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_18EvalTweedieNLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  invoke fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %i.df, ptr nonnull readonly align 8 dereferenceable(32) %16, i64 noundef %.06099.i.i.i.i)
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13EvalEWiseBaseINS5_18EvalTweedieNLogLikEE4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESH_OT_mEUlSO_E_EEvT0_iOT1_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0      ; 2 uses
  %i.ej = extractvalue { ptr, i32 } %i.eh, 1      ; 2 uses
  %i.ek = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.em = call ptr @__cxa_begin_catch(ptr %i.ei) #18 ; 0 uses
  %i.en = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.eg) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.en) #33
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.ak
  %i.eo = load ptr, ptr %11, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not22.i.i.i, label %bb.am, label %.sink.split.i.i.i

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ep = load ptr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.eq = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  store ptr %i.eq, ptr %5, align 8, !tbaa !92
  store ptr %i.ep, ptr %11, align 8, !tbaa !92
end_hunk_10
begin_hunk_11_@_ZN7xgboost6metric13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit127 unwind label %bb.aj

_ZN4dmlc15LogMessageFatalC2EPKci.exit127:         ; preds = %.noexc125
  %i.dj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129 unwind label %bb.ak ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit127
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.115, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
  %i.dm = load ptr, ptr %27, align 8, !tbaa !38   ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !28
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.dn, i64 noundef %i.dp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135 unwind label %bb.ak

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc125, %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129, %_ZN4dmlc15LogMessageFatalC2EPKci.exit127
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.al unwind label %bb.dz

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn50 = phi { ptr, i32 } [ %i.ds, %bb.aj ], [ %i.dt, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.dx

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %.pr235 = load ptr, ptr %27, align 8, !tbaa !38 ; 4 uses
  %.not.i138 = icmp eq ptr %.pr235, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = load ptr, ptr %.pr235, align 8, !tbaa !29 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pr235, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139: ; preds = %bb.an
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !35
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %.pr235, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.am, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.dz = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 15 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cu, align 8, !noalias !771
  %i.ea = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142
  %i.ec = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !771
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !71, !noalias !771
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

bb.ap:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142
  %i.ee = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !771
  %i.ef = extractvalue { i64, ptr } %i.ee, 1
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit: ; preds = %bb.ao, %bb.ap
  %.pn.i = phi ptr [ %i.ed, %bb.ao ], [ %i.ef, %bb.ap ] ; 2 uses
  %i.eg = load i64, ptr %i.g, align 8, !tbaa !45, !noalias !772 ; 17 uses
  %i.eh = mul i64 %i.eg, %i.dz                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %.sroa.0.0.copyload.i144 = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i32 %.sroa.0.0.copyload.i144)
  %.sroa.0.0.copyload.i.i145 = load i32, ptr %i.cu, align 8
  %i.ej = and i32 %.sroa.0.0.copyload.i.i145, 65535
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.el = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !70
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !71 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2
  %.fca.0.insert.i.i146 = insertvalue { i64, ptr } poison, i64 %i.es, 0
  %.fca.1.insert.i.i147 = insertvalue { i64, ptr } %.fca.0.insert.i.i146, ptr %i.eo, 1
  br label %bb.as

bb.ar:                                            ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.et = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn52 = phi { i64, ptr } [ %.fca.1.insert.i.i147, %bb.aq ], [ %i.et, %bb.ar ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn52, 0 ; 4 uses
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn52, 1 ; 2 uses
  %.sroa.32195.128.copyload = load i64, ptr %26, align 8 ; 2 uses
  %.sroa.35.128..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.35.128.copyload = load i64, ptr %.sroa.35.128..sroa_idx, align 8, !tbaa !35 ; 2 uses
  %.sroa.37198.128..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 48
  %.sroa.37198.128.copyload = load ptr, ptr %.sroa.37198.128..sroa_idx, align 8, !tbaa !72 ; 2 uses
  %i.eu = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %.sroa.0.0.copyload.i.i148 = load i32, ptr %i.cu, align 8 ; 2 uses
  %.sroa.0115.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i148 to i16
  %.off.i.i = add i16 %.sroa.0115.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i148
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %15, ptr noundef nonnull align 8 dereferenceable(25) %i.r, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i149 = load i32, ptr %i.cu, align 8
  %i.ev = and i32 %.sroa.0.0.copyload.i.i.i149, 65535
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ex = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ex, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ey = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.au

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.at
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.at
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.av unwind label %bb.aw

common.resume:                                    ; preds = %bb.d, %bb.i, %bb.o, %bb.ad, %bb.dx, %bb.av, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.fa, %bb.av ], [ %.pn59.pn.pn, %bb.ad ], [ %.pn54.pn.pn.pn, %bb.dx ], [ %.pn46, %bb.o ], [ %.pn, %bb.i ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %common.resume

bb.aw:                                            ; preds = %bb.au
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESA_OT_m.exit

bb.ax:                                            ; preds = %bb.as
  %i.fd = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.ct) ; 5 uses
  %i.fe = sext i32 %i.fd to i64                   ; 3 uses
  %i.ff = icmp slt i32 %i.fd, 0
  br i1 %i.ff, label %bb.ay, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.dh

.noexc.i:                                         ; preds = %bb.ay
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.ax
  %.not.i.i.i.i.i = icmp eq i32 %i.fd, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.fg = shl nuw nsw i64 %i.fe, 3                ; 6 uses
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc27.i unwind label %bb.dh ; 5 uses

.noexc27.i:                                       ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fh, i8 0, i64 range(i64 0, 17179869177) %i.fg, i1 false), !tbaa !85
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe ; 2 uses
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc36.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit53.thread.i ; 4 uses

.noexc36.i:                                       ; preds = %.noexc27.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fj, i8 0, i64 range(i64 0, 17179869177) %i.fg, i1 false), !tbaa !85
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fe
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  %i.fn = ptrtoint ptr %i.fl to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i:        ; preds = %.noexc36.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i.i146.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fk, %.noexc36.i ] ; 2 uses
  %.sroa.13133.0143.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fi, %.noexc36.i ] ; 2 uses
  %.sroa.0127.0139.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fh, %.noexc36.i ] ; 11 uses
  %.sroa.0.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fj, %.noexc36.i ] ; 12 uses
  %.sroa.13.0.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fn, %.noexc36.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fm, %.noexc36.i ] ; 2 uses
  %i.fo = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.r)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.di

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i
  %i.fp = mul i64 %i.fo, %i.eu                    ; 3 uses
  %i.fq = uitofp i64 %i.fp to double
  %i.fr = fmul nnan double %i.fq, f0x3F40000000000000
  %i.fs = call double @llvm.ceil.f64(double %i.fr)
  %i.ft = fptoui double %i.fs to i64              ; 4 uses
  %i.fu = icmp eq i32 %i.fd, 1
  br i1 %i.fu, label %.preheader.i.i.i.i, label %bb.bp

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.preheader.i

.lr.ph108.i.i.i.preheader.i:                      ; preds = %.preheader.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = trunc i64 %i.eg to i32
  %i.fx = insertelement <2 x i32> poison, i32 %i.fw, i64 0
  %i.fy = trunc i64 %i.dz to i32
  %i.fz = insertelement <2 x i32> %i.fx, i32 %i.fy, i64 1
  %i.ga = shufflevector <2 x i32> %i.fz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gb = trunc i64 %i.eg to i32                  ; 3 uses
  %i.gc = trunc i64 %i.dz to i32                  ; 3 uses
  %i.gd = add <4 x i32> %i.ga, <i32 0, i32 0, i32 -1, i32 -1> ; 3 uses
  %i.ge = call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.gd) ; 4 uses
  %i.gf = extractelement <4 x i32> %i.ge, i64 0
  %.not.i7.i.i86.i = icmp samesign ult i32 %i.gf, 2
  %i.gg = extractelement <4 x i32> %i.ge, i64 1
  %.not.1.i9.i.i89.i = icmp samesign ult i32 %i.gg, 2
  %i.gh = add i64 %i.eg, -1                       ; 2 uses
  %i.gi = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.gj = insertelement <2 x i64> %i.gi, i64 %i.gh, i64 1
  %i.gk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gj) ; 2 uses
  %i.gl = extractelement <2 x i64> %i.gk, i64 0
  %.not.i.i.i102.i = icmp samesign ult i64 %i.gl, 2
  %i.gm = add i64 %i.dz, -1
  %i.gn = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.go = shufflevector <2 x i64> %i.gn, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gp = add <2 x i64> %i.go, <i64 0, i64 -1>
  %i.gq = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gp) ; 2 uses
  %i.gr = extractelement <2 x i64> %i.gq, i64 0
  %.not.1.i.i.i105.i = icmp samesign ult i64 %i.gr, 2
  %i.gs = icmp eq i64 %.sroa.01.0, 0
  %i.gt = extractelement <4 x i32> %i.gd, i64 2
  %i.gu = extractelement <4 x i32> %i.ge, i64 2
  %i.gv = extractelement <4 x i32> %i.gd, i64 3
  %i.gw = extractelement <4 x i32> %i.ge, i64 3
  %i.gx = extractelement <2 x i64> %i.gk, i64 1
  %i.gy = extractelement <2 x i64> %i.gq, i64 1
  br label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.noexc40.i, %.lr.ph108.i.i.i.preheader.i
  %.0107.i.i.i.i = phi i64 [ %i.jk, %.noexc40.i ], [ 0, %.lr.ph108.i.i.i.preheader.i ] ; 2 uses
  %i.gz = shl i64 %.0107.i.i.i.i, 11              ; 3 uses
  %i.ha = sub i64 %i.fp, %i.gz
  %.sroa.speculated.i59.i = call i64 @llvm.umin.i64(i64 %i.ha, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.hb = add i64 %.sroa.speculated.i59.i, %i.gz
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.gz, i64 noundef %i.hb)
          to label %.noexc82.i unwind label %.loopexit.i

.noexc82.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %.val.i60.i = load i64, ptr %4, align 8, !tbaa !122 ; 2 uses
  %.val5.i61.i = load i64, ptr %i.fv, align 8, !tbaa !123 ; 2 uses
  %i.hc = icmp ult i64 %.val.i60.i, %.val5.i61.i
  br i1 %i.hc, label %.lr.ph.i.i64.i, label %.noexc40.i

.lr.ph.i.i64.i:                                   ; preds = %.noexc82.i, %.noexc83.i
  %.0181.i.i67.i = phi i64 [ %i.jc, %.noexc83.i ], [ %.val.i60.i, %.noexc82.i ] ; 7 uses
  %i.hd = phi <2 x double> [ %i.jb, %.noexc83.i ], [ zeroinitializer, %.noexc82.i ]
  %i.he = icmp ugt i64 %.0181.i.i67.i, 4294967295
  br i1 %i.he, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph.i.i64.i
  br i1 %.not.i.i.i102.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hf = udiv i64 %.0181.i.i67.i, %i.eg          ; 2 uses
  %i.hg = mul i64 %i.hf, %i.eg                    ; 0 uses
  %.recomposed = urem i64 %.0181.i.i67.i, %i.eg
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hh = and i64 %.0181.i.i67.i, %i.gh
  %i.hi = lshr i64 %.0181.i.i67.i, %i.gx
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.7.0.i.i.i103.i = phi i64 [ %i.hh, %bb.bc ], [ %.recomposed, %bb.bb ] ; 2 uses
  %.1.i.i.i104.i = phi i64 [ %i.hi, %bb.bc ], [ %i.hf, %bb.bb ] ; 4 uses
  br i1 %.not.1.i.i.i105.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hj = udiv i64 %.1.i.i.i104.i, %i.dz          ; 2 uses
  %i.hk = mul i64 %i.hj, %i.dz                    ; 0 uses
  %.recomposed333 = urem i64 %.1.i.i.i104.i, %i.dz
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bf:                                            ; preds = %bb.bd
  %i.hl = and i64 %.1.i.i.i104.i, %i.gm
  %i.hm = lshr i64 %.1.i.i.i104.i, %i.gy
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bg:                                            ; preds = %.lr.ph.i.i64.i
  %i.hn = trunc nuw i64 %.0181.i.i67.i to i32     ; 4 uses
  br i1 %.not.i7.i.i86.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ho = udiv i32 %i.hn, %i.gb                   ; 2 uses
  %i.hp = mul i32 %i.ho, %i.gb                    ; 0 uses
  %.recomposed334 = urem i32 %i.hn, %i.gb
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hq = and i32 %i.gt, %i.hn
  %i.hr = lshr i32 %i.hn, %i.gu
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.7.0.in.i.i.i87.i = phi i32 [ %i.hq, %bb.bi ], [ %.recomposed334, %bb.bh ]
  %.1.i8.i.i88.i = phi i32 [ %i.hr, %bb.bi ], [ %i.ho, %bb.bh ] ; 4 uses
  br i1 %.not.1.i9.i.i89.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hs = udiv i32 %.1.i8.i.i88.i, %i.gc          ; 2 uses
  %i.ht = mul i32 %i.hs, %i.gc                    ; 0 uses
  %.recomposed335 = urem i32 %.1.i8.i.i88.i, %i.gc
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

bb.bl:                                            ; preds = %bb.bj
  %i.hu = and i32 %.1.i8.i.i88.i, %i.gv
  %i.hv = lshr i32 %.1.i8.i.i88.i, %i.gw
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i: ; preds = %bb.bl, %bb.bk
  %.sroa.4.0.in.i.i.i91.i = phi i32 [ %i.hu, %bb.bl ], [ %.recomposed335, %bb.bk ]
  %.1.1.i10.i.i92.i = phi i32 [ %i.hv, %bb.bl ], [ %i.hs, %bb.bk ]
  %.sroa.4.0.i11.i.i93.i = zext i32 %.sroa.4.0.in.i.i.i91.i to i64
  %.sroa.7.0.i12.i.i94.i = zext i32 %.sroa.7.0.in.i.i.i87.i to i64
  %i.hw = zext i32 %.1.1.i10.i.i92.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i, %bb.bf, %bb.be
  %.sroa.7.0.i12.sink.i.i96.i = phi i64 [ %.sroa.7.0.i12.i.i94.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.sroa.7.0.i.i.i103.i, %bb.be ], [ %.sroa.7.0.i.i.i103.i, %bb.bf ] ; 2 uses
  %.sroa.4.0.i11.sink.i.i97.i = phi i64 [ %.sroa.4.0.i11.i.i93.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.recomposed333, %bb.be ], [ %i.hl, %bb.bf ] ; 3 uses
  %.sink.i.i98.i = phi i64 [ %i.hw, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %i.hj, %bb.be ], [ %i.hm, %bb.bf ] ; 4 uses
  %i.hx = icmp ult i64 %.sroa.4.0.i11.sink.i.i97.i, %.sroa.03.0
  br i1 %i.hx, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i, label %bb.bm, !prof !120

bb.bm:                                            ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  call void @_ZSt9terminatev() #36, !noalias !773
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %.sroa.4.0.i11.sink.i.i97.i
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !74, !noalias !773 ; 2 uses
  br i1 %i.gs, label %.noexc83.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %i.ia = icmp ult i64 %.sink.i.i98.i, %.sroa.01.0
  br i1 %i.ia, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, label %bb.bo, !prof !120

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt9terminatev() #36, !noalias !773
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i: ; preds = %bb.bn
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0, i64 %.sink.i.i98.i
  %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i = load float, ptr %i.ib, align 4, !tbaa !74, !noalias !773
  br label %.noexc83.i

.noexc83.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %.in.i.i101.i.sroa.speculated = phi float [ %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i ], [ 1.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i ] ; 2 uses
  %i.ic = mul i64 %.sink.i.i98.i, %i.eh
  %i.id = mul i64 %.sroa.4.0.i11.sink.i.i97.i, %i.eg
  %i.ie = getelementptr [4 x i8], ptr %.pn.i, i64 %i.ic
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.id
  %i.ig = getelementptr [4 x i8], ptr %i.if, i64 %.sroa.7.0.i12.sink.i.i96.i
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !74, !noalias !773
  %i.ii = mul i64 %.sink.i.i98.i, %.sroa.32195.128.copyload
  %i.ij = mul i64 %.sroa.7.0.i12.sink.i.i96.i, %.sroa.35.128.copyload
  %i.ik = getelementptr [4 x i8], ptr %.sroa.37198.128.copyload, i64 %i.ii
  %i.il = getelementptr [4 x i8], ptr %i.ik, i64 %i.ij
  %i.im = load float, ptr %i.il, align 4, !tbaa !74, !noalias !773
  %i.in = fsub float %i.im, %i.ih                 ; 3 uses
  %i.io = fcmp oge float %i.in, 0.000000e+00
end_hunk_11
begin_hunk_12_@_ZN7xgboost6metric14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit127 unwind label %bb.aj

_ZN4dmlc15LogMessageFatalC2EPKci.exit127:         ; preds = %.noexc125
  %i.dj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129 unwind label %bb.ak ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit127
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.115, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
  %i.dm = load ptr, ptr %27, align 8, !tbaa !38   ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !28
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.dn, i64 noundef %i.dp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135 unwind label %bb.ak

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc125, %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129, %_ZN4dmlc15LogMessageFatalC2EPKci.exit127
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.al unwind label %bb.dz

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn50 = phi { ptr, i32 } [ %i.ds, %bb.aj ], [ %i.dt, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.dx

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %.pr235 = load ptr, ptr %27, align 8, !tbaa !38 ; 4 uses
  %.not.i138 = icmp eq ptr %.pr235, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = load ptr, ptr %.pr235, align 8, !tbaa !29 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pr235, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139: ; preds = %bb.an
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !35
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %.pr235, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.am, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.dz = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 15 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cu, align 8, !noalias !856
  %i.ea = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142
  %i.ec = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !856
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !71, !noalias !856
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

bb.ap:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142
  %i.ee = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !856
  %i.ef = extractvalue { i64, ptr } %i.ee, 1
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit: ; preds = %bb.ao, %bb.ap
  %.pn.i = phi ptr [ %i.ed, %bb.ao ], [ %i.ef, %bb.ap ] ; 2 uses
  %i.eg = load i64, ptr %i.g, align 8, !tbaa !45, !noalias !857 ; 17 uses
  %i.eh = mul i64 %i.eg, %i.dz                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %.sroa.0.0.copyload.i144 = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i32 %.sroa.0.0.copyload.i144)
  %.sroa.0.0.copyload.i.i145 = load i32, ptr %i.cu, align 8
  %i.ej = and i32 %.sroa.0.0.copyload.i.i145, 65535
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.el = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !70
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !71 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2
  %.fca.0.insert.i.i146 = insertvalue { i64, ptr } poison, i64 %i.es, 0
  %.fca.1.insert.i.i147 = insertvalue { i64, ptr } %.fca.0.insert.i.i146, ptr %i.eo, 1
  br label %bb.as

bb.ar:                                            ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.et = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn52 = phi { i64, ptr } [ %.fca.1.insert.i.i147, %bb.aq ], [ %i.et, %bb.ar ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn52, 0 ; 4 uses
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn52, 1 ; 2 uses
  %.sroa.19190.88.copyload = load i64, ptr %26, align 8 ; 2 uses
  %.sroa.22.88..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.22.88.copyload = load i64, ptr %.sroa.22.88..sroa_idx, align 8, !tbaa !35 ; 2 uses
  %.sroa.24193.88..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 48
  %.sroa.24193.88.copyload = load ptr, ptr %.sroa.24193.88..sroa_idx, align 8, !tbaa !72 ; 2 uses
  %i.eu = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %.sroa.0.0.copyload.i.i148 = load i32, ptr %i.cu, align 8 ; 2 uses
  %.sroa.0115.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i148 to i16
  %.off.i.i = add i16 %.sroa.0115.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i148
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %15, ptr noundef nonnull align 8 dereferenceable(25) %i.r, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i149 = load i32, ptr %i.cu, align 8
  %i.ev = and i32 %.sroa.0.0.copyload.i.i.i149, 65535
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ex = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ex, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ey = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.au

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.at
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.at
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.av unwind label %bb.aw

common.resume:                                    ; preds = %bb.d, %bb.i, %bb.o, %bb.ad, %bb.dx, %bb.av, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.fa, %bb.av ], [ %.pn59.pn.pn, %bb.ad ], [ %.pn54.pn.pn.pn, %bb.dx ], [ %.pn46, %bb.o ], [ %.pn, %bb.i ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %common.resume

bb.aw:                                            ; preds = %bb.au
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESA_OT_m.exit

bb.ax:                                            ; preds = %bb.as
  %i.fd = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.ct) ; 5 uses
  %i.fe = sext i32 %i.fd to i64                   ; 3 uses
  %i.ff = icmp slt i32 %i.fd, 0
  br i1 %i.ff, label %bb.ay, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.dh

.noexc.i:                                         ; preds = %bb.ay
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.ax
  %.not.i.i.i.i.i = icmp eq i32 %i.fd, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.fg = shl nuw nsw i64 %i.fe, 3                ; 6 uses
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc27.i unwind label %bb.dh ; 5 uses

.noexc27.i:                                       ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fh, i8 0, i64 range(i64 0, 17179869177) %i.fg, i1 false), !tbaa !85
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe ; 2 uses
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc36.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit53.thread.i ; 4 uses

.noexc36.i:                                       ; preds = %.noexc27.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fj, i8 0, i64 range(i64 0, 17179869177) %i.fg, i1 false), !tbaa !85
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fe
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  %i.fn = ptrtoint ptr %i.fl to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i:        ; preds = %.noexc36.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i.i146.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fk, %.noexc36.i ] ; 2 uses
  %.sroa.13133.0143.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fi, %.noexc36.i ] ; 2 uses
  %.sroa.0127.0139.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fh, %.noexc36.i ] ; 11 uses
  %.sroa.0.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fj, %.noexc36.i ] ; 12 uses
  %.sroa.13.0.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fn, %.noexc36.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fm, %.noexc36.i ] ; 2 uses
  %i.fo = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.r)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.di

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i
  %i.fp = mul i64 %i.fo, %i.eu                    ; 3 uses
  %i.fq = uitofp i64 %i.fp to double
  %i.fr = fmul nnan double %i.fq, f0x3F40000000000000
  %i.fs = call double @llvm.ceil.f64(double %i.fr)
  %i.ft = fptoui double %i.fs to i64              ; 4 uses
  %i.fu = icmp eq i32 %i.fd, 1
  br i1 %i.fu, label %.preheader.i.i.i.i, label %bb.bp

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.preheader.i

.lr.ph108.i.i.i.preheader.i:                      ; preds = %.preheader.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = trunc i64 %i.eg to i32
  %i.fx = insertelement <2 x i32> poison, i32 %i.fw, i64 0
  %i.fy = trunc i64 %i.dz to i32
  %i.fz = insertelement <2 x i32> %i.fx, i32 %i.fy, i64 1
  %i.ga = shufflevector <2 x i32> %i.fz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gb = trunc i64 %i.eg to i32                  ; 3 uses
  %i.gc = trunc i64 %i.dz to i32                  ; 3 uses
  %i.gd = add <4 x i32> %i.ga, <i32 0, i32 0, i32 -1, i32 -1> ; 3 uses
  %i.ge = call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.gd) ; 4 uses
  %i.gf = extractelement <4 x i32> %i.ge, i64 0
  %.not.i7.i.i86.i = icmp samesign ult i32 %i.gf, 2
  %i.gg = extractelement <4 x i32> %i.ge, i64 1
  %.not.1.i9.i.i89.i = icmp samesign ult i32 %i.gg, 2
  %i.gh = add i64 %i.eg, -1                       ; 2 uses
  %i.gi = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.gj = insertelement <2 x i64> %i.gi, i64 %i.gh, i64 1
  %i.gk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gj) ; 2 uses
  %i.gl = extractelement <2 x i64> %i.gk, i64 0
  %.not.i.i.i102.i = icmp samesign ult i64 %i.gl, 2
  %i.gm = add i64 %i.dz, -1
  %i.gn = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.go = shufflevector <2 x i64> %i.gn, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gp = add <2 x i64> %i.go, <i64 0, i64 -1>
  %i.gq = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gp) ; 2 uses
  %i.gr = extractelement <2 x i64> %i.gq, i64 0
  %.not.1.i.i.i105.i = icmp samesign ult i64 %i.gr, 2
  %i.gs = icmp eq i64 %.sroa.01.0, 0
  %i.gt = extractelement <4 x i32> %i.gd, i64 2
  %i.gu = extractelement <4 x i32> %i.ge, i64 2
  %i.gv = extractelement <4 x i32> %i.gd, i64 3
  %i.gw = extractelement <4 x i32> %i.ge, i64 3
  %i.gx = extractelement <2 x i64> %i.gk, i64 1
  %i.gy = extractelement <2 x i64> %i.gq, i64 1
  br label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.noexc40.i, %.lr.ph108.i.i.i.preheader.i
  %.0107.i.i.i.i = phi i64 [ %i.jg, %.noexc40.i ], [ 0, %.lr.ph108.i.i.i.preheader.i ] ; 2 uses
  %i.gz = shl i64 %.0107.i.i.i.i, 11              ; 3 uses
  %i.ha = sub i64 %i.fp, %i.gz
  %.sroa.speculated.i59.i = call i64 @llvm.umin.i64(i64 %i.ha, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.hb = add i64 %.sroa.speculated.i59.i, %i.gz
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.gz, i64 noundef %i.hb)
          to label %.noexc82.i unwind label %.loopexit.i

.noexc82.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %.val.i60.i = load i64, ptr %4, align 8, !tbaa !122 ; 2 uses
  %.val5.i61.i = load i64, ptr %i.fv, align 8, !tbaa !123 ; 2 uses
  %i.hc = icmp ult i64 %.val.i60.i, %.val5.i61.i
  br i1 %i.hc, label %.lr.ph.i.i64.i, label %.noexc40.i

.lr.ph.i.i64.i:                                   ; preds = %.noexc82.i, %.noexc83.i
  %.0181.i.i67.i = phi i64 [ %i.iy, %.noexc83.i ], [ %.val.i60.i, %.noexc82.i ] ; 7 uses
  %i.hd = phi <2 x double> [ %i.ix, %.noexc83.i ], [ zeroinitializer, %.noexc82.i ]
  %i.he = icmp ugt i64 %.0181.i.i67.i, 4294967295
  br i1 %i.he, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph.i.i64.i
  br i1 %.not.i.i.i102.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hf = udiv i64 %.0181.i.i67.i, %i.eg          ; 2 uses
  %i.hg = mul i64 %i.hf, %i.eg                    ; 0 uses
  %.recomposed = urem i64 %.0181.i.i67.i, %i.eg
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hh = and i64 %.0181.i.i67.i, %i.gh
  %i.hi = lshr i64 %.0181.i.i67.i, %i.gx
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.7.0.i.i.i103.i = phi i64 [ %i.hh, %bb.bc ], [ %.recomposed, %bb.bb ] ; 2 uses
  %.1.i.i.i104.i = phi i64 [ %i.hi, %bb.bc ], [ %i.hf, %bb.bb ] ; 4 uses
  br i1 %.not.1.i.i.i105.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hj = udiv i64 %.1.i.i.i104.i, %i.dz          ; 2 uses
  %i.hk = mul i64 %i.hj, %i.dz                    ; 0 uses
  %.recomposed333 = urem i64 %.1.i.i.i104.i, %i.dz
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bf:                                            ; preds = %bb.bd
  %i.hl = and i64 %.1.i.i.i104.i, %i.gm
  %i.hm = lshr i64 %.1.i.i.i104.i, %i.gy
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bg:                                            ; preds = %.lr.ph.i.i64.i
  %i.hn = trunc nuw i64 %.0181.i.i67.i to i32     ; 4 uses
  br i1 %.not.i7.i.i86.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ho = udiv i32 %i.hn, %i.gb                   ; 2 uses
  %i.hp = mul i32 %i.ho, %i.gb                    ; 0 uses
  %.recomposed334 = urem i32 %i.hn, %i.gb
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hq = and i32 %i.gt, %i.hn
  %i.hr = lshr i32 %i.hn, %i.gu
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.7.0.in.i.i.i87.i = phi i32 [ %i.hq, %bb.bi ], [ %.recomposed334, %bb.bh ]
  %.1.i8.i.i88.i = phi i32 [ %i.hr, %bb.bi ], [ %i.ho, %bb.bh ] ; 4 uses
  br i1 %.not.1.i9.i.i89.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hs = udiv i32 %.1.i8.i.i88.i, %i.gc          ; 2 uses
  %i.ht = mul i32 %i.hs, %i.gc                    ; 0 uses
  %.recomposed335 = urem i32 %.1.i8.i.i88.i, %i.gc
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

bb.bl:                                            ; preds = %bb.bj
  %i.hu = and i32 %.1.i8.i.i88.i, %i.gv
  %i.hv = lshr i32 %.1.i8.i.i88.i, %i.gw
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i: ; preds = %bb.bl, %bb.bk
  %.sroa.4.0.in.i.i.i91.i = phi i32 [ %i.hu, %bb.bl ], [ %.recomposed335, %bb.bk ]
  %.1.1.i10.i.i92.i = phi i32 [ %i.hv, %bb.bl ], [ %i.hs, %bb.bk ]
  %.sroa.4.0.i11.i.i93.i = zext i32 %.sroa.4.0.in.i.i.i91.i to i64
  %.sroa.7.0.i12.i.i94.i = zext i32 %.sroa.7.0.in.i.i.i87.i to i64
  %i.hw = zext i32 %.1.1.i10.i.i92.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i, %bb.bf, %bb.be
  %.sroa.7.0.i12.sink.i.i96.i = phi i64 [ %.sroa.7.0.i12.i.i94.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.sroa.7.0.i.i.i103.i, %bb.be ], [ %.sroa.7.0.i.i.i103.i, %bb.bf ] ; 2 uses
  %.sroa.4.0.i11.sink.i.i97.i = phi i64 [ %.sroa.4.0.i11.i.i93.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.recomposed333, %bb.be ], [ %i.hl, %bb.bf ] ; 3 uses
  %.sink.i.i98.i = phi i64 [ %i.hw, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %i.hj, %bb.be ], [ %i.hm, %bb.bf ] ; 4 uses
  %i.hx = mul i64 %.sink.i.i98.i, %i.eh
  %i.hy = mul i64 %.sroa.4.0.i11.sink.i.i97.i, %i.eg
  %i.hz = getelementptr [4 x i8], ptr %.pn.i, i64 %i.hx
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = getelementptr [4 x i8], ptr %i.ia, i64 %.sroa.7.0.i12.sink.i.i96.i
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !74, !noalias !858
  %i.id = mul i64 %.sink.i.i98.i, %.sroa.19190.88.copyload
  %i.ie = mul i64 %.sroa.7.0.i12.sink.i.i96.i, %.sroa.22.88.copyload
  %i.if = getelementptr [4 x i8], ptr %.sroa.24193.88.copyload, i64 %i.id
  %i.ig = getelementptr [4 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !74, !noalias !858
  %i.ii = icmp ult i64 %.sroa.4.0.i11.sink.i.i97.i, %.sroa.03.0
  br i1 %i.ii, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i, label %bb.bm, !prof !120

bb.bm:                                            ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  call void @_ZSt9terminatev() #36, !noalias !858
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %.sroa.4.0.i11.sink.i.i97.i
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !74, !noalias !858 ; 2 uses
  br i1 %i.gs, label %.noexc83.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %i.il = icmp ult i64 %.sink.i.i98.i, %.sroa.01.0
  br i1 %i.il, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, label %bb.bo, !prof !120

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt9terminatev() #36, !noalias !858
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i: ; preds = %bb.bn
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0, i64 %.sink.i.i98.i
  %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i = load float, ptr %i.im, align 4, !tbaa !74, !noalias !858
  br label %.noexc83.i

.noexc83.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %.in.i.i101.i.sroa.speculated = phi float [ %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i ], [ 1.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i ] ; 2 uses
  %i.in = fsub float %i.ic, %i.ih                 ; 3 uses
  %i.io = fcmp oge float %i.in, 0.000000e+00
end_hunk_12
