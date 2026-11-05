Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ABISysV_arm?download=true
inline.NumInlined: 887
inline.NumDeleted: 509
begin_hunk_0_@_ZNK11ABISysV_arm24GetReturnValueObjectImplERN12lldb_private6ThreadERNS0_12CompilerTypeE:bb.a
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #20, !inline_history !8
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit

_ZN12lldb_private12CompilerTypeD2Ev.exit:         ; preds = %.peel.next, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.jj = call noundef i32 @_ZNK12lldb_private12CompilerType11GetTypeInfoEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef null) #20
  %i.jk = and i32 %i.jj, 524288
  %.not175 = icmp eq i32 %i.jk, 0
  br i1 %.not175, label %.thread302, label %bb.ci

bb.ci:                                            ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @_ZNK12lldb_private12CompilerType11GetByteSizeEPNS_21ExecutionContextScopeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull %i.ba) #20
  %i.jl = call { i64, i8 } @_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE(ptr noundef nonnull align 8 dereferenceable(9) %36) ; 2 uses
  %i.jm = extractvalue { i64, i8 } %i.jl, 0
  %i.jn = extractvalue { i64, i8 } %i.jl, 1
  %i.jo = load i8, ptr %i.ht, align 8
  %i.jp = trunc i8 %i.jo to i1
  br i1 %i.jp, label %bb.cj, label %_ZN4llvm8ExpectedImED2Ev.exit202

bb.cj:                                            ; preds = %bb.ci
  %i.jq = load ptr, ptr %36, align 8, !tbaa !95   ; 3 uses
  %.not.i.i200 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i200, label %_ZN4llvm8ExpectedImED2Ev.exit202, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201: ; preds = %bb.cj
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !37
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(8) %i.jq) #20, !inline_history !7
  br label %_ZN4llvm8ExpectedImED2Ev.exit202

_ZN4llvm8ExpectedImED2Ev.exit202:                 ; preds = %bb.ci, %bb.cj, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  %i.ju = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType13IsComplexTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #20
  br i1 %i.ju, label %bb.ck, label %.thread302

bb.ck:                                            ; preds = %_ZN4llvm8ExpectedImED2Ev.exit202
  %i.jv = trunc nuw i8 %i.jn to i1
  br i1 %i.jv, label %bb.cl, label %.thread302

bb.cl:                                            ; preds = %bb.ck
  %i.jw = zext i8 %.5166.peel to i64
  %.not177 = icmp eq i64 %i.jm, %i.jw
  br label %.thread302

.thread302:                                       ; preds = %bb.cl, %bb.ck, %_ZN4llvm8ExpectedImED2Ev.exit202, %_ZN12lldb_private12CompilerTypeD2Ev.exit
  %i.jx = phi i1 [ false, %_ZN12lldb_private12CompilerTypeD2Ev.exit ], [ %.not177, %bb.cl ], [ false, %_ZN4llvm8ExpectedImED2Ev.exit202 ], [ true, %bb.ck ]
  %i.jy = load ptr, ptr %34, align 8, !tbaa !104  ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.hq
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.thread302
  %i.ka = load i64, ptr %i.hq, align 8, !tbaa !38
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.thread302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.tr391 = trunc nuw nsw i32 %i.ho to i8
  %i.kc = shl nuw nsw i8 %.tr391, 1
  %.7392 = lshr i8 %.5166.peel, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread, %bb.bp, %bb.bq, %bb.bo, %bb.bs, %bb.br, %bb.bv, %bb.bu
  %.9 = phi i8 [ 0, %bb.bv ], [ 0, %bb.bu ], [ %.7392, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389 ], [ 8, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %bb.bs ], [ %spec.select, %bb.bt ], [ 0, %bb.br ], [ %.5166.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ %.7377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread ], [ %.5166.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.3158 = phi i8 [ 0, %bb.bv ], [ 0, %bb.bu ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389 ], [ %i.hh, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %bb.bs ], [ %i.hm, %bb.bt ], [ 0, %bb.br ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.3152 = phi i1 [ false, %bb.bv ], [ false, %bb.bu ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389 ], [ true, %bb.bq ], [ false, %bb.bp ], [ false, %bb.bo ], [ false, %bb.bs ], [ true, %bb.bt ], [ false, %bb.br ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i203 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i203, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12 ; 3 uses
  %i.kg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i204 = icmp eq i8 %i.kg, 0
  br i1 %.not.i.i.i.i204, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !19 ; 2 uses
  %i.ki = add nsw i32 %i.kh, -1
  store i32 %i.ki, ptr %i.kf, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205

bb.co:                                            ; preds = %bb.cm
  %i.kj = atomicrmw volatile add ptr %i.kf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i206 = phi i32 [ %i.kh, %bb.cn ], [ %i.kj, %bb.co ]
  %i.kk = icmp eq i32 %.0.i.i.i.i.i206, 1
  br i1 %i.kk, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205
  %i.kl = load ptr, ptr %i.ke, align 8, !tbaa !37
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #20, !inline_history !8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.ko = icmp ult i64 %.sroa.04.0.i183, 5
  br i1 %i.ko, label %bb.cu, label %bb.cr

.thread394:                                       ; preds = %bb.bk
  %i.kp = icmp ult i64 %.sroa.04.0.i183, 5
  br i1 %i.kp, label %bb.cu, label %.thread404

bb.cr:                                            ; preds = %bb.cq
  br i1 %.3152, label %.thread308, label %.thread404

.thread404:                                       ; preds = %.thread394, %bb.cr
  %i.kq = call fastcc noundef zeroext i1 @_ZL28GetReturnValuePassedInMemoryRN12lldb_private6ThreadEPNS_15RegisterContextEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(576) %2, ptr noundef %i.ah, i64 noundef %.sroa.04.0.i183, ptr noundef nonnull align 8 dereferenceable(120) %11)
  br i1 %i.kq, label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit, label %bb.cs

bb.cs:                                            ; preds = %.thread404
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ct:                                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cu:                                            ; preds = %.thread394, %bb.cq
  %.4153402 = phi i1 [ false, %.thread394 ], [ %.3152, %bb.cq ]
  %.4159400 = phi i8 [ 0, %.thread394 ], [ %.3158, %bb.cq ]
  %.10398 = phi i8 [ 0, %.thread394 ], [ %.9, %bb.cq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.kr = call noundef i64 @_ZN12lldb_private15RegisterContext22ReadRegisterAsUnsignedEPKNS_12RegisterInfoEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef %i.az, i64 noundef 0) #20
  %i.ks = trunc i64 %i.kr to i32
  store i32 %i.ks, ptr %i.b, align 4, !tbaa !19
  %i.kt = trunc nuw nsw i64 %.sroa.04.0.i183 to i32
  call void @_ZN12lldb_private5Value8SetBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(120) %11, ptr noundef nonnull %i.b, i32 noundef %i.kt) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @_ZN12lldb_private13RegisterValueD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br i1 %.4153402, label %.thread308, label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit

.thread308:                                       ; preds = %bb.bg, %bb.cr, %bb.aq, %bb.cu
  %.5160313 = phi i8 [ %.4159400, %bb.cu ], [ 2, %bb.bg ], [ %.3158, %bb.cr ], [ %i.ek, %bb.aq ] ; 2 uses
  %.11312 = phi i8 [ %.10398, %bb.cu ], [ %i.gl, %bb.bg ], [ %.9, %bb.cr ], [ 8, %bb.aq ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !82, !noalias !253, !nonnull !84, !noundef !84 ; 7 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 7 uses
  %i.kx = load atomic i32, ptr %i.kw monotonic, align 8, !noalias !253
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.thread308
  %.06.i.i.i.i.i.i209 = phi i32 [ %i.kx, %.thread308 ], [ %i.lb, %bb.cv ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i210 = icmp ne i32 %.06.i.i.i.i.i.i209, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i210)
  %i.ky = add nsw i32 %.06.i.i.i.i.i.i209, 1
  %i.kz = cmpxchg weak ptr %i.kw, i32 %.06.i.i.i.i.i.i209, i32 %i.ky acq_rel monotonic, align 8, !noalias !253 ; 2 uses
  %i.la = extractvalue { i32, i1 } %i.kz, 1
  %i.lb = extractvalue { i32, i1 } %i.kz, 0
  br i1 %i.la, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i211, label %bb.cv, !llvm.loop !3

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i211: ; preds = %bb.cv
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ld = load atomic i32, ptr %i.kw monotonic, align 8, !noalias !253 ; 0 uses
  %i.le = load ptr, ptr %i.lc, align 8, !tbaa !100, !noalias !253 ; 2 uses
  %i.lf = call noundef i32 @_ZNK12lldb_private7Process12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(3224) %i.le) #20 ; 2 uses
  %i.lg = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 7 uses
  call void @_ZN12lldb_private14DataBufferHeapC1Emh(ptr noundef nonnull align 8 dereferenceable(32) %i.lg, i64 noundef %.sroa.04.0.i183, i8 noundef zeroext 0) #20
  %i.lh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 10 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 8 uses
  store i32 1, ptr %i.li, align 8, !tbaa !40
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 12 ; 2 uses
  store i32 1, ptr %i.lj, align 4, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lh, align 8, !tbaa !37
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store ptr %i.lg, ptr %i.lk, align 8, !tbaa !107
  %i.ll = zext i8 %.5160313 to i32
  %.not341 = icmp eq i8 %.5160313, 0
  br i1 %.not341, label %.thread315, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i211
  %i.lm = zext i8 %.11312 to i32                  ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %38, i64 28
  %i.lr = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %38, i64 56 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %38, i64 80 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %38, i64 64
  %i.lv = getelementptr inbounds nuw i8, ptr %38, i64 72
  %i.lw = getelementptr inbounds nuw i8, ptr %38, i64 336
  br label %bb.cw

bb.cw:                                            ; preds = %bb.dg, %.lr.ph328
  %.0140327 = phi i32 [ 0, %.lr.ph328 ], [ %i.mx, %bb.dg ] ; 3 uses
  %.0141326 = phi i32 [ 0, %.lr.ph328 ], [ %.3, %bb.dg ] ; 6 uses
  switch i8 %.11312, label %.thread315.loopexit [
    i8 4, label %46
    i8 8, label %bb.cx
  ]

46:                                               ; preds = %bb.cw
  %47 = add nuw nsw i32 %.0140327, 64
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %48 = or disjoint i32 %.0140327, 256
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %46
  %.sink = phi i32 [ %47, %46 ], [ %48, %bb.cx ]
  %i.lx = call noundef ptr @_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i32 noundef 1, i32 noundef %.sink) #20 ; 3 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %.thread315.loopexit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  store i32 0, ptr %38, align 8, !tbaa !65
  store i32 1, ptr %i.ln, align 8, !tbaa !66
  store i32 64, ptr %i.lp, align 8, !tbaa !67, !alias.scope !254
  store i64 0, ptr %i.lo, align 8, !alias.scope !254
  store i8 1, ptr %i.lq, align 4, !tbaa !68, !alias.scope !254
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24) %4, float noundef 0.000000e+00) #20
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %i.lr, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE) #20
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.lt, ptr %i.ls, align 8, !tbaa !69
  store i64 256, ptr %i.lv, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.lt, i8 0, i64 256, i1 false), !tbaa !38
  store i64 256, ptr %i.lu, align 8, !tbaa !71
  store i32 0, ptr %i.lw, align 8, !tbaa !72
  %i.lz = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 104
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = call noundef zeroext i1 %i.mb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull %i.lx, ptr noundef nonnull align 8 dereferenceable(344) %38) #20
  br i1 %i.mc, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.md = add i32 %.0141326, %i.lm
  %i.me = zext i32 %i.md to i64
  %i.mf = load ptr, ptr %i.lg, align 8, !tbaa !37
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = call noundef i64 %i.mh(ptr noundef nonnull align 8 dereferenceable(8) %i.lg) #20
  %.not178 = icmp ult i64 %i.mi, %i.me
  br i1 %.not178, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %39) #20
  %i.mj = load ptr, ptr %i.lg, align 8, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = call noundef ptr %i.ml(ptr noundef nonnull align 8 dereferenceable(8) %i.lg) #20, !inline_history !9
  %i.mn = zext i32 %.0141326 to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn
  %i.mp = call noundef i32 @_ZNK12lldb_private13RegisterValue15GetAsMemoryDataERKNS_12RegisterInfoEPvjN4lldb9ByteOrderERNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(344) %38, ptr noundef nonnull align 8 dereferenceable(80) %i.lx, ptr noundef %i.mo, i32 noundef %i.lm, i32 noundef %i.lf, ptr noundef nonnull align 8 dereferenceable(40) %39) #20 ; 2 uses
  %.not179 = icmp ne i32 %i.mp, %i.lm             ; 2 uses
  %i.mq = select i1 %.not179, i32 0, i32 %i.mp
  %.1 = add i32 %i.mq, %.0141326
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %.3146 = phi i1 [ true, %bb.cz ], [ %.not179, %bb.db ], [ false, %bb.da ]
  %.3 = phi i32 [ %.0141326, %bb.cz ], [ %.1, %bb.db ], [ %.0141326, %bb.da ] ; 2 uses
  %i.mr = load ptr, ptr %i.ls, align 8, !tbaa !69 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.lt
  br i1 %i.ms, label %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @free(ptr noundef %i.mr) #20
  br label %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i

_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i: ; preds = %bb.dd, %bb.dc
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lr) #20
  %i.mt = load i32, ptr %i.lp, align 8, !tbaa !67
  %i.mu = icmp ugt i32 %i.mt, 64
  br i1 %i.mu, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i
  %i.mv = load ptr, ptr %i.lo, align 8, !tbaa !38 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_ZdaPv(ptr noundef nonnull %i.mv) #22
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  %i.mx = add nuw nsw i32 %.0140327, 1            ; 2 uses
  %exitcond344.not = icmp eq i32 %i.mx, %i.ll
  %or.cond414 = select i1 %.3146, i1 true, i1 %exitcond344.not
  br i1 %or.cond414, label %.thread315.loopexit, label %bb.cw, !llvm.loop !246

.thread315.loopexit:                              ; preds = %bb.cy, %bb.cw, %bb.dg
  %.6.ph = phi i32 [ %.3, %bb.dg ], [ %.0141326, %bb.cy ], [ 0, %bb.cw ]
  %i.my = zext i32 %.6.ph to i64
  br label %.thread315

.thread315:                                       ; preds = %.thread315.loopexit, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i211
  %.6 = phi i64 [ 0, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i211 ], [ %i.my, %.thread315.loopexit ]
  %i.mz = icmp eq i64 %.sroa.04.0.i183, %.6
  br i1 %i.mz, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %.thread315
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  call void @_ZN12lldb_private13DataExtractorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %40) #20
  %i.na = getelementptr inbounds nuw i8, ptr %40, i64 24
  store i32 %i.lf, ptr %i.na, align 8, !tbaa !259
  %i.nb = call noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224) %i.le) #20
  %i.nc = getelementptr inbounds nuw i8, ptr %40, i64 28
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  store ptr %i.lg, ptr %41, align 8, !tbaa !261
  %i.nd = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %i.lh, ptr %i.nd, align 8, !tbaa !34
  %i.ne = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i214 = icmp eq i8 %i.ne, 0
  br i1 %.not.i.i.i.i214, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nf = load i32, ptr %i.li, align 8, !tbaa !19
  %i.ng = add nsw i32 %i.nf, 1
  store i32 %i.ng, ptr %i.li, align 8, !tbaa !19
  br label %_ZNSt10shared_ptrIN12lldb_private10DataBufferEEC2INS0_18WritableDataBufferEvEERKS_IT_E.exit

bb.dj:                                            ; preds = %bb.dh
  %i.nh = atomicrmw volatile add ptr %i.li, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private10DataBufferEEC2INS0_18WritableDataBufferEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN12lldb_private10DataBufferEEC2INS0_18WritableDataBufferEvEERKS_IT_E.exit: ; preds = %bb.di, %bb.dj
  %i.ni = call noundef i64 @_ZN12lldb_private13DataExtractor7SetDataERKSt10shared_ptrINS_10DataBufferEEmm(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef 0, i64 noundef -1) #20 ; 0 uses
  call void @_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @_ZN12lldb_private11ConstStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull @.str.2) #20
  %i.nj = load ptr, ptr %42, align 8
  call void @_ZN12lldb_private22ValueObjectConstResult6CreateEPNS_21ExecutionContextScopeERKNS_12CompilerTypeENS_11ConstStringERKNS_13DataExtractorEmPNS_14ClusterManagerINS_11ValueObjectEEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.432") align 8 %0, ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.nj, ptr noundef nonnull align 8 dereferenceable(48) %40, i64 noundef -1, ptr noundef null) #20
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.dl

bb.dk:                                            ; preds = %.thread315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private10DataBufferEEC2INS0_18WritableDataBufferEvEERKS_IT_E.exit, %bb.dk
  %i.nk = load atomic i64, ptr %i.li acquire, align 8 ; 2 uses
  %i.nl = icmp eq i64 %i.nk, 4294967297
  %i.nm = trunc i64 %i.nk to i32                  ; 2 uses
  br i1 %i.nl, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.li, align 8, !tbaa !40
  store i32 0, ptr %i.lj, align 4, !tbaa !41
  %i.nn = load ptr, ptr %i.lh, align 8, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #20, !inline_history !247
  %i.nq = load ptr, ptr %i.lh, align 8, !tbaa !37
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #20, !inline_history !247
  br label %_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dn:                                            ; preds = %bb.dl
  %i.nt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i216 = icmp eq i8 %i.nt, 0
  br i1 %.not.i.i.i216, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nu = add nsw i32 %i.nm, -1
  store i32 %i.nu, ptr %i.li, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

bb.dp:                                            ; preds = %bb.dn
  %i.nv = atomicrmw volatile add ptr %i.li, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217: ; preds = %bb.dp, %bb.do
  %.0.i.i.i.i218 = phi i32 [ %i.nm, %bb.do ], [ %i.nv, %bb.dp ]
  %i.nw = icmp eq i32 %.0.i.i.i.i218, 1
  br i1 %i.nw, label %bb.dq, label %_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.dq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217, %bb.dm
  %i.nx = load atomic i64, ptr %i.kw acquire, align 8 ; 2 uses
  %i.ny = icmp eq i64 %i.nx, 4294967297
  %i.nz = trunc i64 %i.nx to i32                  ; 2 uses
  br i1 %i.ny, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store i32 0, ptr %i.kw, align 8, !tbaa !40
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store i32 0, ptr %i.oa, align 4, !tbaa !41
  %i.ob = load ptr, ptr %i.kv, align 8, !tbaa !37
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #20, !inline_history !0
  %i.oe = load ptr, ptr %i.kv, align 8, !tbaa !37
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #20, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ds:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_0
