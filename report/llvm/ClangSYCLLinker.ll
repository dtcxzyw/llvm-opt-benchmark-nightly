Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangSYCLLinker?download=true
inline.NumInlined: 4208
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@main:bb.a
bb.ci:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #31, !noalias !465
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i
  %i.vf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.7, i64 noundef 1) #27, !noalias !465 ; 6 uses
  store ptr %i.jc, ptr %64, align 8, !tbaa !50, !alias.scope !465, !noalias !389
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !35 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 5 uses
  %i.vi = icmp eq ptr %i.vg, %i.vh
  br i1 %i.vi, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.i.i

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !36 ; 3 uses
  %i.vl = icmp ult i64 %i.vk, 16
  call void @llvm.assume(i1 %i.vl)
  %i.vm = add nuw nsw i64 %i.vk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jc, ptr noundef nonnull align 8 dereferenceable(1) %i.vh, i64 %i.vm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.vg, ptr %64, align 8, !tbaa !35, !alias.scope !465, !noalias !389
  %i.vn = load i64, ptr %i.vh, align 8, !tbaa !43
  store i64 %i.vn, ptr %i.jc, align 8, !tbaa !43, !alias.scope !465, !noalias !389
  %.phi.trans.insert.i258.i.i = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %.pre.i259.i.i = load i64, ptr %.phi.trans.insert.i258.i.i, align 8, !tbaa !36
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.i.i, %bb.cj
  %i.vo = phi i64 [ %i.vk, %bb.cj ], [ %.pre.i259.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.i.i ]
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store i64 %i.vo, ptr %i.jd, align 8, !tbaa !36, !alias.scope !465, !noalias !389
  store ptr %i.vh, ptr %i.vf, align 8, !tbaa !35
  store i64 0, ptr %i.vp, align 8, !tbaa !36
  store i8 0, ptr %i.vh, align 8, !tbaa !43
  store i8 4, ptr %i.je, align 8, !tbaa !63, !noalias !389
  store i8 1, ptr %i.jf, align 1, !tbaa !64, !noalias !389
  store ptr %64, ptr %63, align 8, !tbaa !43, !noalias !389
  %i.vq = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27, !noalias !467 ; 2 uses
  %i.vr = extractvalue { i32, ptr } %i.vq, 0
  %i.vs = extractvalue { i32, ptr } %i.vq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !468
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %63) #27, !noalias !469
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %62, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 %i.vr, ptr %i.vs) #27
  %i.vt = load ptr, ptr %8, align 8, !tbaa !35, !noalias !468 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.jg
  br i1 %i.vu, label %_ZN4llvm5ErrorD2Ev.exit263.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  %i.vv = load i64, ptr %i.jg, align 8, !tbaa !43, !noalias !468
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #28
  br label %_ZN4llvm5ErrorD2Ev.exit263.i.i

_ZN4llvm5ErrorD2Ev.exit263.i.i:                   ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !468
  %i.vx = load i8, ptr %i.gf, align 8, !alias.scope !388, !noalias !375
  %i.vy = or i8 %i.vx, 1
  store i8 %i.vy, ptr %i.gf, align 8, !alias.scope !388, !noalias !375
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.vz = load ptr, ptr %62, align 8, !tbaa !53, !noalias !471
  store ptr %i.vz, ptr %84, align 8, !tbaa !54, !alias.scope !472, !noalias !375
  store ptr null, ptr %62, align 8, !tbaa !53, !noalias !471
  %i.wa = load ptr, ptr %64, align 8, !tbaa !35, !noalias !389 ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.jc
  br i1 %i.wb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit263.i.i
  %i.wc = load i64, ptr %i.jc, align 8, !tbaa !43, !noalias !389
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.wd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit263.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264.i.i
  %i.we = load ptr, ptr %65, align 8, !tbaa !35, !noalias !389 ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.ja
  br i1 %i.wf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i.i
  %i.wg = load i64, ptr %i.ja, align 8, !tbaa !43, !noalias !389
  %i.wh = add i64 %i.wg, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27, !noalias !389
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.sink.split.i.i.i

.thread304.i.i:                                   ; preds = %_ZN4llvm5ErrorD2Ev.exit166.i.i, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i
  %.6.ph.i.i = phi i32 [ 1, %_ZN4llvm5ErrorD2Ev.exit166.i.i ], [ 0, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27, !noalias !389
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.sink.split.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.i.i, %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit.i.i, %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit.thread.i.i
  %.6314.i.i = phi i32 [ %spec.select.i.i, %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit.i.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.i.i ], [ 1, %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27, !noalias !389
  %i.wi = load ptr, ptr %.sroa.035.0.i.i, align 8, !tbaa !74
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8
  call void %i.wk(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.035.0.i.i) #27, !inline_history !314
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN4llvm8ExpectedISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.sink.split.i.i.i, %.thread304.i.i, %.thread300.i.i, %_ZN4llvm5ErrorD2Ev.exit156.i.i, %_ZN4llvm5ErrorD2Ev.exit136.i.i, %_ZN4llvm5ErrorD2Ev.exit.i.i
  %.8.i.i = phi i32 [ 1, %_ZN4llvm5ErrorD2Ev.exit156.i.i ], [ 1, %_ZN4llvm5ErrorD2Ev.exit.i.i ], [ 1, %_ZN4llvm5ErrorD2Ev.exit136.i.i ], [ %.6.ph.i.i, %.thread304.i.i ], [ %.6314.i.i, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.sink.split.i.i.i ], [ 1, %.thread300.i.i ]
  %i.wl = load i8, ptr %i.ft, align 8, !tbaa !60, !range !65, !noalias !389, !noundef !68
  %i.wm = trunc nuw i8 %i.wl to i1
  store i8 0, ptr %i.ft, align 8, !tbaa !60, !noalias !389
  br i1 %i.wm, label %bb.ck, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit274.i.i

bb.ck:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.wn = load ptr, ptr %30, align 8, !tbaa !35, !noalias !389 ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.gl
  br i1 %i.wo, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit274.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i272.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i272.i.i: ; preds = %bb.ck
  %i.wp = load i64, ptr %i.gl, align 8, !tbaa !43, !noalias !389
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #28
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit274.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit274.i.i: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i272.i.i, %_ZN4llvm8ExpectedISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27, !noalias !389
  %cond.i.i = icmp eq i32 %.8.i.i, 0
  br i1 %cond.i.i, label %bb.y, label %.loopexit71.i.i

.thread45.i.i:                                    ; preds = %bb.y, %_ZN4llvm11SmallVectorINS_9StringRefELj3EEC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISB_SaISB_EEEEvEET_SH_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #27, !noalias !389
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !389
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %.not.i.i275.i.i = icmp eq ptr %i.fg, null
  %i.wr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.wr, ptr %7, align 8, !tbaa !50, !alias.scope !473, !noalias !389
  br i1 %.not.i.i275.i.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.thread45.i.i
  %i.ws = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ws, align 8, !tbaa !36, !alias.scope !473, !noalias !389
  store i8 0, ptr %i.wr, align 8, !tbaa !43, !alias.scope !473, !noalias !389
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i277.i.i

bb.cm:                                            ; preds = %.thread45.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !474
  store i64 %i.fh, ptr %i.f, align 8, !tbaa !45, !noalias !474
  %i.wt = icmp ugt i64 %i.fh, 15
  br i1 %i.wt, label %bb.cn, label %._crit_edge.i.i.i.i276.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.wu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #27 ; 2 uses
  store ptr %i.wu, ptr %7, align 8, !tbaa !35, !alias.scope !473, !noalias !389
  %i.wv = load i64, ptr %i.f, align 8, !tbaa !45, !noalias !474
  store i64 %i.wv, ptr %i.wr, align 8, !tbaa !43, !alias.scope !473, !noalias !389
  br label %._crit_edge.i.i.i.i276.i.i

._crit_edge.i.i.i.i276.i.i:                       ; preds = %bb.cn, %bb.cm
  %i.ww = phi ptr [ %i.wu, %bb.cn ], [ %i.wr, %bb.cm ] ; 2 uses
  switch i64 %i.fh, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i.i276.i.i
  %i.wx = load i8, ptr %i.fg, align 1, !tbaa !43, !noalias !388
  store i8 %i.wx, ptr %i.ww, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i276.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ww, ptr nonnull readonly align 1 %i.fg, i64 %i.fh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i: ; preds = %bb.cp, %bb.co, %._crit_edge.i.i.i.i276.i.i
  %i.wy = load i64, ptr %i.f, align 8, !tbaa !45, !noalias !474 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.wy, ptr %i.wz, align 8, !tbaa !36, !alias.scope !473, !noalias !389
  %i.xa = load ptr, ptr %7, align 8, !tbaa !35, !alias.scope !473, !noalias !389
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.wy
  store i8 0, ptr %i.xb, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27, !noalias !474
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i277.i.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i277.i.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i, %bb.cl
  call void @_ZN4llvm6TripleC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %66, ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  %i.xc = load ptr, ptr %7, align 8, !tbaa !35, !noalias !389 ; 2 uses
  %i.xd = icmp eq ptr %i.xc, %i.wr
  br i1 %i.xd, label %_ZN4llvm6TripleC2ENS_9StringRefE.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i277.i.i
  %i.xe = load i64, ptr %i.wr, align 8, !tbaa !43, !noalias !389
  %i.xf = add i64 %i.xe, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xf) #28
  br label %_ZN4llvm6TripleC2ENS_9StringRefE.exit.i.i

_ZN4llvm6TripleC2ENS_9StringRefE.exit.i.i:        ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i277.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !389
  %i.xg = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 7 uses
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !36, !noalias !389
  %i.xi = icmp eq i64 %i.xh, 0                    ; 2 uses
  %108 = select i1 %i.xi, i64 0, i64 9
  br i1 %i.xi, label %bb.cq, label %.loopexit69.i.i

bb.cq:                                            ; preds = %_ZN4llvm6TripleC2ENS_9StringRefE.exit.i.i
  %.val128.i.i = load ptr, ptr %29, align 8, !tbaa !23, !noalias !389 ; 2 uses
  %.val132.i.i = load i32, ptr %i.fq, align 8, !tbaa !24, !noalias !389 ; 2 uses
  %i.xj = zext i32 %.val132.i.i to i64
  %.idx114.i.i = mul nuw nsw i64 %i.xj, 200
  %i.xk = getelementptr inbounds nuw i8, ptr %.val128.i.i, i64 %.idx114.i.i
  %.not115101.i.i = icmp eq i32 %.val132.i.i, 0
  br i1 %.not115101.i.i, label %.loopexit69.i.i, label %.lr.ph103.i.i

.lr.ph103.i.i:                                    ; preds = %bb.cq, %.thread48.i.i
  %.0114102.i.i = phi ptr [ %i.zw, %.thread48.i.i ], [ %.val128.i.i, %bb.cq ] ; 7 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0114102.i.i, i64 9
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !110, !range !65, !noundef !68
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %.thread48.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph103.i.i
  %i.xo = getelementptr inbounds nuw i8, ptr %.0114102.i.i, i64 16
  %i.xp = getelementptr inbounds nuw i8, ptr %.0114102.i.i, i64 24
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !475
  %i.xr = load ptr, ptr %i.xo, align 8, !tbaa !111
  %.not116.i.i = icmp eq ptr %i.xq, %i.xr
  br i1 %.not116.i.i, label %.thread48.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.xs = getelementptr inbounds nuw i8, ptr %.0114102.i.i, i64 88
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !57
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 44
  %.sroa.0.0.copyload.i280.i.i = load i64, ptr %i.xu, align 1, !tbaa !43 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i280.i.i, 32 ; 4 uses
  %i.xv = icmp eq i64 %.sroa.2.0.extract.shift.i.i.i.i, 0
  br i1 %i.xv, label %.thread48.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.xw = getelementptr inbounds nuw i8, ptr %.0114102.i.i, i64 104
  %.sroa.0.0.copyload.i.i281.le.i.i = load ptr, ptr %i.xw, align 8, !tbaa !29 ; 2 uses
  %i.xx = and i64 %.sroa.0.0.copyload.i280.i.i, 4294967295
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i281.le.i.i, i64 %i.xx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #27, !noalias !389
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !389
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %.not.i.i282.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i281.le.i.i, null
  %i.xz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.xz, ptr %6, align 8, !tbaa !50, !alias.scope !476, !noalias !389
  br i1 %.not.i.i282.i.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ya = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ya, align 8, !tbaa !36, !alias.scope !476, !noalias !389
  store i8 0, ptr %i.xz, align 8, !tbaa !43, !alias.scope !476, !noalias !389
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i285.i.i

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27, !noalias !477
  store i64 %.sroa.2.0.extract.shift.i.i.i.i, ptr %i.e, align 8, !tbaa !45, !noalias !477
  %i.yb = icmp ugt i64 %.sroa.0.0.copyload.i280.i.i, 68719476735
  br i1 %i.yb, label %bb.cw, label %._crit_edge.i.i.i.i283.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.yc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #27 ; 2 uses
  store ptr %i.yc, ptr %6, align 8, !tbaa !35, !alias.scope !476, !noalias !389
  %i.yd = load i64, ptr %i.e, align 8, !tbaa !45, !noalias !477
  store i64 %i.yd, ptr %i.xz, align 8, !tbaa !43, !alias.scope !476, !noalias !389
  br label %._crit_edge.i.i.i.i283.i.i

._crit_edge.i.i.i.i283.i.i:                       ; preds = %bb.cw, %bb.cv
  %i.ye = phi ptr [ %i.yc, %bb.cw ], [ %i.xz, %bb.cv ] ; 2 uses
  %cond62.i.i = icmp eq i64 %.sroa.2.0.extract.shift.i.i.i.i, 1
  br i1 %cond62.i.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i.i.i283.i.i
  %i.yf = load i8, ptr %i.xy, align 1, !tbaa !43
  store i8 %i.yf, ptr %i.ye, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i284.i.i

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i283.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ye, ptr nonnull align 1 %i.xy, i64 %.sroa.2.0.extract.shift.i.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i284.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i284.i.i: ; preds = %bb.cy, %bb.cx
  %i.yg = load i64, ptr %i.e, align 8, !tbaa !45, !noalias !477 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.yg, ptr %i.yh, align 8, !tbaa !36, !alias.scope !476, !noalias !389
  %i.yi = load ptr, ptr %6, align 8, !tbaa !35, !alias.scope !476, !noalias !389
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.yg
  store i8 0, ptr %i.yj, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27, !noalias !477
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i285.i.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i285.i.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i284.i.i, %bb.cu
  call void @_ZN4llvm6TripleC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %67, ptr noundef nonnull align 8 dereferenceable(32) %6) #27
  %i.yk = load ptr, ptr %6, align 8, !tbaa !35, !noalias !389 ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.xz
  br i1 %i.yl, label %_ZN4llvm6TripleC2ENS_9StringRefE.exit289.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i285.i.i
  %i.ym = load i64, ptr %i.xz, align 8, !tbaa !43, !noalias !389
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yn) #28
  br label %_ZN4llvm6TripleC2ENS_9StringRefE.exit289.i.i

_ZN4llvm6TripleC2ENS_9StringRefE.exit289.i.i:     ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i285.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !389
  %i.yo = load ptr, ptr %66, align 8, !tbaa !35, !noalias !389 ; 6 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.yq = icmp eq ptr %i.yo, %i.yp
  %i.yr = load ptr, ptr %67, align 8, !tbaa !35, !noalias !389 ; 5 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 4 uses
  %i.yt = icmp eq ptr %i.yr, %i.ys                ; 2 uses
  br i1 %i.yq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i290.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296.i.i: ; preds = %_ZN4llvm6TripleC2ENS_9StringRefE.exit289.i.i
  br i1 %i.yt, label %bb.cz, label %.thread.i.i297.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i290.i.i: ; preds = %_ZN4llvm6TripleC2ENS_9StringRefE.exit289.i.i
  br i1 %i.yt, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i291.i.i

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i290.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !36, !noalias !389 ; 3 uses
  %i.yw = icmp ult i64 %i.yv, 16
  call void @llvm.assume(i1 %i.yw)
  switch i64 %i.yv, label %bb.db [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i.i
    i64 1, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz
  %i.yx = load i8, ptr %i.yr, align 1, !tbaa !43
  store i8 %i.yx, ptr %i.yo, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i.i

bb.db:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yo, ptr align 1 %i.yr, i64 %i.yv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i.i: ; preds = %bb.db, %bb.da, %bb.cz
  %i.yy = load i64, ptr %i.yu, align 8, !tbaa !36, !noalias !389 ; 2 uses
  store i64 %i.yy, ptr %i.xg, align 8, !tbaa !36, !noalias !389
  %i.yz = load ptr, ptr %66, align 8, !tbaa !35, !noalias !389
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yy
  store i8 0, ptr %i.za, align 1, !tbaa !43
  %.pre.i.i295.i.i = load ptr, ptr %67, align 8, !tbaa !35, !noalias !389
  br label %_ZN4llvm6TripleaSEOS0_.exit.i.i

.thread.i.i297.i.i:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296.i.i
  store ptr %i.yr, ptr %66, align 8, !tbaa !35, !noalias !389
  %i.zb = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.zc = load <2 x i64>, ptr %i.zb, align 8, !tbaa !43, !noalias !389
  store <2 x i64> %i.zc, ptr %i.xg, align 8, !tbaa !43, !noalias !389
  br label %bb.dd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i291.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i290.i.i
  %i.zd = load i64, ptr %i.yp, align 8, !tbaa !43, !noalias !389
  store ptr %i.yr, ptr %66, align 8, !tbaa !35, !noalias !389
  %i.ze = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.zf = load <2 x i64>, ptr %i.ze, align 8, !tbaa !43, !noalias !389
  store <2 x i64> %i.zf, ptr %i.xg, align 8, !tbaa !43, !noalias !389
  %.not.i.i292.i.i = icmp eq ptr %i.yo, null
  br i1 %.not.i.i292.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i291.i.i
  store ptr %i.yo, ptr %67, align 8, !tbaa !35, !noalias !389
  store i64 %i.zd, ptr %i.ys, align 8, !tbaa !43, !noalias !389
  br label %_ZN4llvm6TripleaSEOS0_.exit.i.i

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i291.i.i, %.thread.i.i297.i.i
  store ptr %i.ys, ptr %67, align 8, !tbaa !35, !noalias !389
  br label %_ZN4llvm6TripleaSEOS0_.exit.i.i

_ZN4llvm6TripleaSEOS0_.exit.i.i:                  ; preds = %bb.dd, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i.i
  %i.zg = phi ptr [ %i.yo, %bb.dc ], [ %i.ys, %bb.dd ], [ %.pre.i.i295.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i.i ]
  %i.zh = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 0, ptr %i.zh, align 8, !tbaa !36, !noalias !389
  store i8 0, ptr %i.zg, align 1, !tbaa !43
  %i.zi = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.zj = getelementptr inbounds nuw i8, ptr %67, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zi, ptr noundef nonnull align 8 dereferenceable(24) %i.zj, i64 24, i1 false), !noalias !389
  %i.zk = load ptr, ptr %67, align 8, !tbaa !35, !noalias !389 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.zm = icmp eq ptr %i.zk, %i.zl
  br i1 %i.zm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i300.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298.i.i: ; preds = %_ZN4llvm6TripleaSEOS0_.exit.i.i
  %i.zn = load i64, ptr %i.zl, align 8, !tbaa !43, !noalias !389
  %i.zo = add i64 %i.zn, 1
  call void @_ZdlPvm(ptr noundef %i.zk, i64 noundef %i.zo) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i300.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i300.i.i: ; preds = %_ZN4llvm6TripleaSEOS0_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #27, !noalias !389
  %i.zp = load ptr, ptr %.0114102.i.i, align 8, !tbaa !72 ; 2 uses
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !74
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8
  %i.zt = call { ptr, i64 } %i.zs(ptr noundef nonnull align 8 dereferenceable(24) %i.zp) #27, !inline_history !319 ; 2 uses
  %i.zu = extractvalue { ptr, i64 } %i.zt, 0
  %i.zv = extractvalue { ptr, i64 } %i.zt, 1
  br label %.loopexit69.i.i

.thread48.i.i:                                    ; preds = %bb.cs, %bb.cr, %.lr.ph103.i.i
  %i.zw = getelementptr inbounds nuw i8, ptr %.0114102.i.i, i64 200 ; 2 uses
  %.not115.i.i = icmp eq ptr %i.zw, %i.xk
  br i1 %.not115.i.i, label %.loopexit69.i.i, label %.lr.ph103.i.i

.loopexit69.i.i:                                  ; preds = %.thread48.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i300.i.i, %bb.cq, %_ZN4llvm6TripleC2ENS_9StringRefE.exit.i.i
  %.sroa.5.4.i.i = phi i64 [ 9, %_ZN4llvm6TripleC2ENS_9StringRefE.exit.i.i ], [ %i.zv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i300.i.i ], [ 0, %bb.cq ], [ %108, %.thread48.i.i ]
  %.sroa.012.4.i.i = phi ptr [ @.str.46, %_ZN4llvm6TripleC2ENS_9StringRefE.exit.i.i ], [ %i.zu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i300.i.i ], [ @.str.4, %bb.cq ], [ @.str.4, %.thread48.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #27, !noalias !389
  %i.zx = getelementptr inbounds nuw i8, ptr %68, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %68, i8 0, i64 16, i1 false), !noalias !389
  store i32 16, ptr %i.zx, align 8, !tbaa !114, !noalias !389
  %.idx115.i.i = shl nuw nsw i64 %i.fo, 4
  %i.zy = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx115.i.i
  %.not117104.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not117104.i.i, label %._crit_edge.i.i, label %.lr.ph106.i.i

.lr.ph106.i.i:                                    ; preds = %.loopexit69.i.i
  %i.zz = getelementptr inbounds nuw i8, ptr %68, i64 12 ; 2 uses
  br label %bb.de

._crit_edge.i.i:                                  ; preds = %_ZN4llvm9StringMapIN12_GLOBAL__N_16SymbolENS_15MallocAllocatorEEixENS_9StringRefE.exit.i.i, %.loopexit69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #27, !noalias !389
  %i.aaa = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  store ptr %i.aaa, ptr %69, align 8, !tbaa !23, !noalias !389
  %i.aab = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 7 uses
  store i32 0, ptr %i.aab, align 8, !tbaa !24, !noalias !389
  %i.aac = getelementptr inbounds nuw i8, ptr %69, i64 12 ; 3 uses
  store i32 6, ptr %i.aac, align 4, !tbaa !30, !noalias !389
  %i.aad = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.aae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.aah = insertelement <2 x ptr> poison, ptr %66, i64 0
  %i.aai = insertelement <2 x ptr> %i.aah, ptr %70, i64 1
  %i.aaj = ptrtoint <2 x ptr> %i.aai to <2 x i64>
  %i.aak = getelementptr inbounds nuw i8, ptr %72, i64 72 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.aal = getelementptr inbounds nuw i8, ptr %72, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %72, i64 24
  %i.aam = getelementptr inbounds nuw i8, ptr %72, i64 32
  %i.aan = getelementptr inbounds nuw i8, ptr %72, i64 40 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %72, i64 48
  %i.aap = getelementptr inbounds nuw i8, ptr %72, i64 56 ; 2 uses
  %.sroa.4.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %72, i64 64
  %.ptr.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %72, i64 88
  %.ptr.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %72, i64 104
  %i.aaq = ptrtoint ptr %i.aap to i64
  %i.aar = ptrtoint ptr %i.aao to i64
  %i.aas = ptrtoint ptr %i.aan to i64
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %72, i64 80
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %72, i64 96
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %72, i64 112
  %i.aat = getelementptr inbounds nuw i8, ptr %73, i64 24 ; 4 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %73, i64 48 ; 7 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %73, i64 32 ; 4 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %73, i64 72 ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %73, i64 56 ; 4 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.aaz = getelementptr inbounds nuw i8, ptr %73, i64 40
  %i.aba = getelementptr inbounds nuw i8, ptr %73, i64 64
  %i.abb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %68, i64 12 ; 5 uses
  %.sroa.gep152.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.dh

bb.de:                                            ; preds = %_ZN4llvm9StringMapIN12_GLOBAL__N_16SymbolENS_15MallocAllocatorEEixENS_9StringRefE.exit.i.i, %.lr.ph106.i.i
  %.0113105.i.i = phi ptr [ %i.fm, %.lr.ph106.i.i ], [ %i.abv, %_ZN4llvm9StringMapIN12_GLOBAL__N_16SymbolENS_15MallocAllocatorEEixENS_9StringRefE.exit.i.i ] ; 3 uses
  %.sroa.032.0.copyload.i.i = load ptr, ptr %.0113105.i.i, align 8, !tbaa !29, !noalias !388 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0113105.i.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !45, !noalias !388 ; 7 uses
  %i.abd = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.032.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i) #27
  %i.abe = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %68, ptr %.sroa.032.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i, i32 noundef %i.abd) #27 ; 2 uses
  %i.abf = load ptr, ptr %68, align 8, !tbaa !115, !noalias !389
  %i.abg = zext i32 %i.abe to i64
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.abg ; 2 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.abi, null
  br i1 %.not.i.i.i.i.i, label %bb.df, label %_ZN4llvm9StringMapIN12_GLOBAL__N_16SymbolENS_15MallocAllocatorEEixENS_9StringRefE.exit.i.i

bb.df:                                            ; preds = %bb.de
  %i.abj = add i64 %.sroa.4.0.copyload.i.i, 17
  %i.abk = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.abj, i64 noundef 8) #27 ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16 ; 2 uses
  %.not.i.i.i.i.i301.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, 0
  br i1 %.not.i.i.i.i.i301.i.i, label %_ZN4llvm14StringMapEntryIN12_GLOBAL__N_16SymbolEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abl, ptr readonly align 1 %.sroa.032.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i, i1 false)
  br label %_ZN4llvm14StringMapEntryIN12_GLOBAL__N_16SymbolEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i

_ZN4llvm14StringMapEntryIN12_GLOBAL__N_16SymbolEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.dg, %bb.df
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 %.sroa.4.0.copyload.i.i
  store i8 0, ptr %i.abm, align 1, !tbaa !43
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.abk, align 8, !tbaa !119
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  store i32 0, ptr %i.abn, align 8, !tbaa !479
  store ptr %i.abk, ptr %i.abh, align 8, !tbaa !117
  %i.abo = load i32, ptr %i.zz, align 4, !tbaa !120, !noalias !389
  %i.abp = add i32 %i.abo, 1
  store i32 %i.abp, ptr %i.zz, align 4, !tbaa !120, !noalias !389
  %i.abq = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %68, i32 noundef %i.abe) #27
  %i.abr = load ptr, ptr %68, align 8, !tbaa !115, !noalias !389
  %i.abs = zext i32 %i.abq to i64
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %i.abs
  %.val.val.pre.i.i.i = load ptr, ptr %i.abt, align 8, !tbaa !117
  br label %_ZN4llvm9StringMapIN12_GLOBAL__N_16SymbolENS_15MallocAllocatorEEixENS_9StringRefE.exit.i.i

_ZN4llvm9StringMapIN12_GLOBAL__N_16SymbolENS_15MallocAllocatorEEixENS_9StringRefE.exit.i.i: ; preds = %_ZN4llvm14StringMapEntryIN12_GLOBAL__N_16SymbolEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i, %bb.de
  %.val.val.i.i.i = phi ptr [ %.val.val.pre.i.i.i, %_ZN4llvm14StringMapEntryIN12_GLOBAL__N_16SymbolEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i ], [ %i.abi, %bb.de ]
  %i.abu = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 8
  store i32 1, ptr %i.abu, align 4, !tbaa !26
  %i.abv = getelementptr inbounds nuw i8, ptr %.0113105.i.i, i64 16 ; 2 uses
  %.not117.i.i = icmp eq ptr %i.abv, %i.zy
  br i1 %.not117.i.i, label %._crit_edge.i.i, label %bb.de

.loopexit.i.i:                                    ; preds = %bb.fd
  br i1 %.2.i.i, label %bb.dh, label %.critedge.i.i, !llvm.loop !320

bb.dh:                                            ; preds = %.loopexit.i.i, %._crit_edge.i.i
  %.val127.i.i = load ptr, ptr %29, align 8, !tbaa !23, !noalias !389 ; 2 uses
  %.val130.i.i = load i32, ptr %i.fq, align 8, !tbaa !24, !noalias !389 ; 2 uses
  %i.abw = zext i32 %.val130.i.i to i64
  %.idx116.i.i = mul nuw nsw i64 %i.abw, 200
  %i.abx = getelementptr inbounds nuw i8, ptr %.val127.i.i, i64 %.idx116.i.i
  %.not118107.i.i = icmp eq i32 %.val130.i.i, 0
  br i1 %.not118107.i.i, label %.critedge.i.i, label %.lr.ph112.i.i

.lr.ph112.i.i:                                    ; preds = %bb.dh, %bb.fd
  %.0108109.i.i = phi ptr [ %i.alf, %bb.fd ], [ %.val127.i.i, %bb.dh ] ; 30 uses
  %.1108.i.i = phi i1 [ %.2.i.i, %bb.fd ], [ false, %bb.dh ] ; 3 uses
  %i.aby = load ptr, ptr %.0108109.i.i, align 8, !tbaa !72
  %.not68.i.i = icmp eq ptr %i.aby, null
  br i1 %.not68.i.i, label %bb.fd, label %bb.di

bb.di:                                            ; preds = %.lr.ph112.i.i
  %i.abz = getelementptr inbounds nuw i8, ptr %.0108109.i.i, i64 9
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !110, !range !65, !noundef !68
  %i.acb = trunc nuw i8 %i.aca to i1
  br i1 %i.acb, label %bb.dj, label %bb.ef

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #27, !noalias !389
  %i.acc = getelementptr inbounds nuw i8, ptr %.0108109.i.i, i64 16 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.0108109.i.i, i64 88 ; 3 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !57
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 44
  %.sroa.0.0.copyload.i302.i.i = load i64, ptr %i.acf, align 1, !tbaa !43 ; 3 uses
  %.sroa.2.0.extract.shift.i.i303.i.i = lshr i64 %.sroa.0.0.copyload.i302.i.i, 32 ; 5 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.0108109.i.i, i64 104
  %.sroa.0.0.copyload.i.i304.i.i = load ptr, ptr %i.acg, align 8, !tbaa !29 ; 2 uses
  %i.ach = and i64 %.sroa.0.0.copyload.i302.i.i, 4294967295
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i304.i.i, i64 %i.ach ; 3 uses
  store ptr %i.aci, ptr %70, align 8, !noalias !389
  store i64 %.sroa.2.0.extract.shift.i.i303.i.i, ptr %i.aad, align 8, !noalias !389
  %i.acj = icmp eq i64 %.sroa.2.0.extract.shift.i.i303.i.i, 0
  br i1 %i.acj, label %.critedge124.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #27, !noalias !389
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !389
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %.not.i.i307.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i304.i.i, null
  store ptr %i.aae, ptr %5, align 8, !tbaa !50, !alias.scope !480, !noalias !389
  br i1 %.not.i.i307.i.i, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i64 0, ptr %i.aaf, align 8, !tbaa !36, !alias.scope !480, !noalias !389
  store i8 0, ptr %i.aae, align 8, !tbaa !43, !alias.scope !480, !noalias !389
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i310.i.i

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !481
  store i64 %.sroa.2.0.extract.shift.i.i303.i.i, ptr %i.d, align 8, !tbaa !45, !noalias !481
  %i.ack = icmp ugt i64 %.sroa.0.0.copyload.i302.i.i, 68719476735
  br i1 %i.ack, label %bb.dn, label %._crit_edge.i.i.i.i308.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.acl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #27 ; 2 uses
  store ptr %i.acl, ptr %5, align 8, !tbaa !35, !alias.scope !480, !noalias !389
  %i.acm = load i64, ptr %i.d, align 8, !tbaa !45, !noalias !481
  store i64 %i.acm, ptr %i.aae, align 8, !tbaa !43, !alias.scope !480, !noalias !389
  br label %._crit_edge.i.i.i.i308.i.i

._crit_edge.i.i.i.i308.i.i:                       ; preds = %bb.dn, %bb.dm
  %i.acn = phi ptr [ %i.acl, %bb.dn ], [ %i.aae, %bb.dm ] ; 2 uses
  %cond61.i.i = icmp eq i64 %.sroa.2.0.extract.shift.i.i303.i.i, 1
  br i1 %cond61.i.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %._crit_edge.i.i.i.i308.i.i
  %i.aco = load i8, ptr %i.aci, align 1, !tbaa !43
  store i8 %i.aco, ptr %i.acn, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i309.i.i

bb.dp:                                            ; preds = %._crit_edge.i.i.i.i308.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acn, ptr nonnull align 1 %i.aci, i64 %.sroa.2.0.extract.shift.i.i303.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i309.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i309.i.i: ; preds = %bb.dp, %bb.do
  %i.acp = load i64, ptr %i.d, align 8, !tbaa !45, !noalias !481 ; 2 uses
  store i64 %i.acp, ptr %i.aaf, align 8, !tbaa !36, !alias.scope !480, !noalias !389
  %i.acq = load ptr, ptr %5, align 8, !tbaa !35, !alias.scope !480, !noalias !389
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.acp
  store i8 0, ptr %i.acr, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !481
end_hunk_0
