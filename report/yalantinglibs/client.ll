Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/client?download=true
inline.NumInlined: 70008
inline.NumDeleted: 19195
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN7coro_io15io_context_poolC2Emb:bb.a
  store ptr %i.m, ptr %i.p, align 8, !tbaa !441
  %i.q = zext i1 %2 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.r, align 8, !tbaa !301
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.s, align 4, !tbaa !437
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.q, ptr %i.t, align 8, !tbaa !469
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 2 uses
  %i.u = atomicrmw add ptr @_ZN7coro_io15io_context_pool17total_thread_num_E, i64 %spec.store.select seq_cst, align 8 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.i:                                             ; preds = %bb.f, %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.067 = phi i64 [ 0, %bb.f ], [ %i.ey, %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.ae = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #52
          to label %bb.j unwind label %bb.ax      ; 7 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4asio10io_contextC2Ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i32 noundef 1)
          to label %bb.k unwind label %bb.ay

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %3, align 16, !tbaa !472
  store ptr null, ptr %i.v, align 8, !tbaa !260
  %i.af = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #52
          to label %bb.p unwind label %bb.l       ; 5 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #44 ; 0 uses
  call void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ae) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 16) #51
  invoke void @__cxa_rethrow() #53
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body38 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #50
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !262
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 1, ptr %i.an, align 4, !tbaa !263
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.af, align 8, !tbaa !215
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !474
  store ptr %i.af, ptr %i.v, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.ap = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #52
          to label %bb.q unwind label %bb.az      ; 5 uses

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !477, !nonnull !327, !align !478 ; 2 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !479
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 216
  %i.at = atomicrmw add ptr %i.as, i64 1 seq_cst, align 8 ; 0 uses
  store ptr %i.ap, ptr %4, align 16, !tbaa !482
  store ptr null, ptr %i.w, align 8, !tbaa !260
  %i.au = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #52
          to label %bb.v unwind label %bb.r       ; 5 uses

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #44 ; 0 uses
  call void @_ZN4asio10io_context4workD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 8) #51
  invoke void @__cxa_rethrow() #53
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body40 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #50
  unreachable

bb.u:                                             ; preds = %bb.r
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 1, ptr %i.bb, align 8, !tbaa !262
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 1, ptr %i.bc, align 4, !tbaa !263
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.au, align 8, !tbaa !215
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.ap, ptr %i.bd, align 8, !tbaa !484
  store ptr %i.au, ptr %i.w, align 8, !tbaa !260
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !485 ; 5 uses
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !486
  %.not.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !260 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %3, align 16, !tbaa !264
  store <2 x ptr> %i.bh, ptr %i.be, align 8, !tbaa !264
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !232
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !232
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !485
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.z, %bb.y, %bb.w
  %i.bn = phi ptr [ %i.be, %bb.w ], [ %i.be, %bb.y ], [ %.pre.i, %bb.z ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bo, ptr %i.x, align 8, !tbaa !485
  br label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE9push_backERKS3_.exit

bb.aa:                                            ; preds = %bb.v
  invoke void @_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ba

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.aa
  %i.bp = load ptr, ptr %3, align 16, !tbaa !472
  %i.bq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #52
          to label %bb.ab unwind label %bb.ba     ; 10 uses

bb.ab:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE9push_backERKS3_.exit
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !238, !noalias !3747
  store i64 32770348699510116, ptr %i.bt, align 8, !noalias !3747
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 7, ptr %i.bu, align 8, !tbaa !242, !noalias !3747
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEE, i64 16), ptr %i.bq, align 8, !tbaa !215, !noalias !3747
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i64 %i.br, ptr %i.bv, align 8, !tbaa !304, !noalias !3747
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store ptr null, ptr %i.bw, align 8, !tbaa !489, !noalias !3747
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !490 ; 6 uses
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !491
  %.not.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = ptrtoint ptr %i.bq to i64
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !493
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ca, ptr %i.z, align 8, !tbaa !490
  br label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !494 ; 10 uses
  %i.cc = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.ae, label %_ZNKSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #53
          to label %.noexc43 unwind label %_ZNKSt14default_deleteIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEclEPS7_.exit.i36.loopexit.split-lp

.noexc43:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ad
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i42 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i42)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #52
          to label %.noexc44 unwind label %_ZNKSt14default_deleteIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEclEPS7_.exit.i36.loopexit ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  %i.co = ptrtoint ptr %i.bq to i64
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !493
  %.not10.i.i.i.i = icmp eq ptr %i.cb, %i.bx
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc44
  %i.cp = add i64 %i.cc, -8
  %i.cq = sub i64 %i.cp, %i.cd                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader133, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cm, i64 8
  %5 = add i64 %i.cc, -8
  %6 = sub i64 %5, %i.cd
  %i.ct = and i64 %6, -8                          ; 2 uses
  %scevgep127 = getelementptr i8, ptr %scevgep, i64 %i.ct
  %scevgep128 = getelementptr i8, ptr %i.cb, i64 8
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.ct
  %bound0 = icmp ult ptr %i.cm, %scevgep129
  %bound1 = icmp ult ptr %i.cb, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, 4611686018427387900     ; 3 uses
  %i.cu = shl i64 %n.vec, 3                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cm, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cb, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.cx ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.cb, i64 %i.cx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3748)
  call void @llvm.experimental.noalias.scope.decl(metadata !3749)
  %i.cy = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep130, align 8, !tbaa !493, !alias.scope !3750
  %wide.load131 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !493, !alias.scope !3750
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !493, !alias.scope !3751, !noalias !3752
  store <2 x i64> %wide.load131, ptr %i.cz, align 8, !tbaa !493, !alias.scope !3751, !noalias !3752
  %i.da = getelementptr i8, ptr %next.gep130, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep130, align 8, !tbaa !493, !alias.scope !3750
  store <2 x ptr> splat (ptr null), ptr %i.da, align 8, !tbaa !493, !alias.scope !3750
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !3741

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader133

.lr.ph.i.i.i.i.preheader133:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cb, %vector.memcheck ], [ %i.cb, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader133, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader133 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader133 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3748)
  call void @llvm.experimental.noalias.scope.decl(metadata !3749)
  %i.dc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !493, !alias.scope !3749
  store i64 %i.dc, ptr %.012.i.i.i.i, align 8, !tbaa !493, !alias.scope !3748
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !493, !alias.scope !3749
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dd, %i.bx
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !3742

_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc44
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cm, %.noexc44 ], [ %i.cv, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i, label %.noexc23, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ce) #51
  br label %.noexc23

.noexc23:                                         ; preds = %bb.af, %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !494
  store ptr %i.df, ptr %i.z, align 8, !tbaa !490
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.dg, ptr %i.aa, align 8, !tbaa !491
  br label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit

_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit: ; preds = %.noexc23, %bb.ac
  %i.dh = load ptr, ptr %i.ab, align 8, !tbaa !497 ; 5 uses
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !498
  %.not.i24 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i24, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit
  %i.dj = load ptr, ptr %i.w, align 8, !tbaa !260 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %4, align 16, !tbaa !264
  store <2 x ptr> %i.dk, ptr %i.dh, align 8, !tbaa !264
  %.not.i.i.i.i.i25 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i.i26 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i26, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !232
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !232
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i27 = load ptr, ptr %i.ab, align 8, !tbaa !497
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i

_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.dq = phi ptr [ %i.dh, %bb.ag ], [ %i.dh, %bb.ai ], [ %.pre.i27, %bb.aj ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr %i.dr, ptr %i.ab, align 8, !tbaa !497
  br label %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit

bb.ak:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit unwind label %bb.ba

_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit: ; preds = %bb.ak, %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !260 ; 8 uses
  %.not.i.i30 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i30, label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dt, align 8, !tbaa !262
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !263
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !215
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #44, !inline_history !3743
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !215
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #44, !inline_history !3743
  br label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !232
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i = phi i32 [ %i.dw, %bb.ao ], [ %i.eg, %bb.ap ]
  %i.eh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.eh, label %bb.aq, label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !243

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #44
  br label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !260 ; 8 uses
  %.not.i.i31 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i31, label %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.ej, align 8, !tbaa !262
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !263
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !215
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #44, !inline_history !15
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !215
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #44, !inline_history !15
  br label %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i32 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i32, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !232
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

bb.av:                                            ; preds = %bb.at
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33: ; preds = %bb.av, %bb.au
end_hunk_0
