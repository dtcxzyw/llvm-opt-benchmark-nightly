Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/file_client?download=true
inline.NumInlined: 41909
inline.NumDeleted: 14746
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN7coro_io15io_context_poolC2Emb:bb.a
  store ptr %i.m, ptr %i.p, align 8, !tbaa !356
  %i.q = zext i1 %2 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.r, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.s, align 4, !tbaa !352
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.q, ptr %i.t, align 8, !tbaa !380
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
  %.072 = phi i64 [ 0, %bb.f ], [ %i.ey, %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ae = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #51
          to label %bb.j unwind label %bb.ax      ; 7 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4asio10io_contextC2Ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i32 noundef 1)
          to label %bb.k unwind label %bb.ay

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %3, align 16, !tbaa !383
  store ptr null, ptr %i.v, align 8, !tbaa !240
  %i.af = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #51
          to label %bb.p unwind label %bb.l       ; 5 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #41 ; 0 uses
  call void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ae) #41
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 16) #50
  invoke void @__cxa_rethrow() #52
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
  call void @__clang_call_terminate(ptr %i.al) #49
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !242
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 1, ptr %i.an, align 4, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.af, align 8, !tbaa !195
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !385
  store ptr %i.af, ptr %i.v, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ap = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #51
          to label %bb.q unwind label %bb.az      ; 5 uses

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !388, !nonnull !320, !align !389 ; 2 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !390
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 216
  %i.at = atomicrmw add ptr %i.as, i64 1 seq_cst, align 8 ; 0 uses
  store ptr %i.ap, ptr %4, align 16, !tbaa !393
  store ptr null, ptr %i.w, align 8, !tbaa !240
  %i.au = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #51
          to label %bb.v unwind label %bb.r       ; 5 uses

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #41 ; 0 uses
  call void @_ZN4asio10io_context4workD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #41
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 8) #50
  invoke void @__cxa_rethrow() #52
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
  call void @__clang_call_terminate(ptr %i.ba) #49
  unreachable

bb.u:                                             ; preds = %bb.r
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 1, ptr %i.bb, align 8, !tbaa !242
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 1, ptr %i.bc, align 4, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.au, align 8, !tbaa !195
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.ap, ptr %i.bd, align 8, !tbaa !395
  store ptr %i.au, ptr %i.w, align 8, !tbaa !240
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !248 ; 5 uses
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !396
  %.not.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !240 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %3, align 16, !tbaa !255
  store <2 x ptr> %i.bh, ptr %i.be, align 8, !tbaa !255
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !212
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !212
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !248
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.z, %bb.y, %bb.w
  %i.bn = phi ptr [ %i.be, %bb.w ], [ %i.be, %bb.y ], [ %.pre.i, %bb.z ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bo, ptr %i.x, align 8, !tbaa !248
  br label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE9push_backERKS3_.exit

bb.aa:                                            ; preds = %bb.v
  invoke void @_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ba

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.aa
  %i.bp = load ptr, ptr %3, align 16, !tbaa !383
  %i.bq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #51
          to label %bb.ab unwind label %bb.bb     ; 10 uses

bb.ab:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE9push_backERKS3_.exit
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !218, !noalias !3034
  store i64 32770348699510116, ptr %i.bt, align 8, !noalias !3034
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 7, ptr %i.bu, align 8, !tbaa !222, !noalias !3034
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEE, i64 16), ptr %i.bq, align 8, !tbaa !195, !noalias !3034
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i64 %i.br, ptr %i.bv, align 8, !tbaa !297, !noalias !3034
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store ptr null, ptr %i.bw, align 8, !tbaa !399, !noalias !3034
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !400 ; 6 uses
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !401
  %.not.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = ptrtoint ptr %i.bq to i64
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !254
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ca, ptr %i.z, align 8, !tbaa !400
  br label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !252 ; 10 uses
  %i.cc = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.ae, label %_ZNKSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
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
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #51
          to label %.noexc44 unwind label %_ZNKSt14default_deleteIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEclEPS7_.exit.i36.loopexit ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  %i.co = ptrtoint ptr %i.bq to i64
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !254
  %.not10.i.i.i.i = icmp eq ptr %i.cb, %i.bx
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc44
  %i.cp = add i64 %i.cc, -8
  %i.cq = sub i64 %i.cp, %i.cd                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader153, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cm, i64 8
  %5 = add i64 %i.cc, -8
  %6 = sub i64 %5, %i.cd
  %i.ct = and i64 %6, -8                          ; 2 uses
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.ct
  %scevgep148 = getelementptr i8, ptr %i.cb, i64 8
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.ct
  %bound0 = icmp ult ptr %i.cm, %scevgep149
  %bound1 = icmp ult ptr %i.cb, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader153, label %vector.ph

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
  %next.gep150 = getelementptr i8, ptr %i.cb, i64 %i.cx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  %i.cy = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep150, align 8, !tbaa !254, !alias.scope !3037, !noalias !3035
  %wide.load151 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !254, !alias.scope !3037, !noalias !3035
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !254, !alias.scope !3038, !noalias !3037
  store <2 x i64> %wide.load151, ptr %i.cz, align 8, !tbaa !254, !alias.scope !3038, !noalias !3037
  %i.da = getelementptr i8, ptr %next.gep150, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep150, align 8, !tbaa !254, !alias.scope !3037, !noalias !3035
  store <2 x ptr> splat (ptr null), ptr %i.da, align 8, !tbaa !254, !alias.scope !3037, !noalias !3035
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !3028

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader153

.lr.ph.i.i.i.i.preheader153:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cb, %vector.memcheck ], [ %i.cb, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader153, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader153 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader153 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  %i.dc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !254, !alias.scope !3036, !noalias !3035
  store i64 %i.dc, ptr %.012.i.i.i.i, align 8, !tbaa !254, !alias.scope !3035, !noalias !3036
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !254, !alias.scope !3036, !noalias !3035
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dd, %i.bx
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !3029

_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc44
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cm, %.noexc44 ], [ %i.cv, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i, label %.noexc23, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ce) #50
  br label %.noexc23

.noexc23:                                         ; preds = %bb.af, %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !252
  store ptr %i.df, ptr %i.z, align 8, !tbaa !400
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.dg, ptr %i.aa, align 8, !tbaa !401
  br label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit

_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit: ; preds = %.noexc23, %bb.ac
  %i.dh = load ptr, ptr %i.ab, align 8, !tbaa !402 ; 5 uses
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !403
  %.not.i24 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i24, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit
  %i.dj = load ptr, ptr %i.w, align 8, !tbaa !240 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %4, align 16, !tbaa !255
  store <2 x ptr> %i.dk, ptr %i.dh, align 8, !tbaa !255
  %.not.i.i.i.i.i25 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i26 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i26, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !212
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !212
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i27 = load ptr, ptr %i.ab, align 8, !tbaa !402
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i

_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.dq = phi ptr [ %i.dh, %bb.ag ], [ %i.dh, %bb.ai ], [ %.pre.i27, %bb.aj ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr %i.dr, ptr %i.ab, align 8, !tbaa !402
  br label %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit

bb.ak:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit unwind label %bb.bc

_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit: ; preds = %bb.ak, %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !240 ; 8 uses
  %.not.i.i30 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i30, label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dt, align 8, !tbaa !242
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !243
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !195
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #41, !inline_history !3030
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !195
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #41, !inline_history !3030
  br label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i = phi i32 [ %i.dw, %bb.ao ], [ %i.eg, %bb.ap ]
  %i.eh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.eh, label %bb.aq, label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !223

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #41
  br label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !240 ; 8 uses
  %.not.i.i31 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i31, label %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.ej, align 8, !tbaa !242
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !243
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !195
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #41, !inline_history !10
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !195
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #41, !inline_history !10
  br label %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i32 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i32, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

bb.av:                                            ; preds = %bb.at
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33: ; preds = %bb.av, %bb.au
end_hunk_0
begin_hunk_1_@_ZN7easylog6loggerILm0EED2Ev:bb.a
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !74

_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !1250
  br label %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1252
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #50
  br label %_ZNSt6vectorISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1249 ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7easylog8appenderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7easylog8appenderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7easylog8appenderEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit
  tail call void @_ZN7easylog8appenderD2Ev(ptr noundef nonnull align 8 dead_on_return(1361) dereferenceable(1361) %i.r) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1368) #50
  br label %_ZNSt10unique_ptrIN7easylog8appenderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7easylog8appenderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN7easylog8appenderEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN7easylog8appenderESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1249   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN7easylog8appenderEEclEPS1_.exit

_ZNKSt14default_deleteIN7easylog8appenderEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN7easylog8appenderD2Ev(ptr noundef nonnull align 8 dead_on_return(1361) dereferenceable(1361) %i.a) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1368) #50
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN7easylog8appenderEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1250   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1251 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !521  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #49
  unreachable

_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !74

_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1250
  br label %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1252
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #50
  br label %_ZNSt12_Vector_baseISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #9 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEEC2Em(ptr noundef nonnull align 8 dereferenceable(612) %0, i64 noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !3916
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !1255
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.h, align 4, !tbaa !295
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.i, align 8, !tbaa !295
  store i64 0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.j, i8 0, i64 504, i1 false)
  store atomic i8 0, ptr %i.g monotonic, align 8
  store atomic i64 0, ptr %i.e monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 32, ptr %i.k, align 8, !tbaa !1259
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.l, align 8, !tbaa !1260
  store atomic i64 0, ptr %i.f monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store atomic i64 0, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 0, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store atomic i64 0, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store atomic i64 0, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store atomic i64 0, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store atomic i64 0, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i64 0, ptr %i.u monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  store atomic i64 0, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store atomic i64 0, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  store atomic i64 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  store atomic i64 0, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i64 0, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  store atomic i64 0, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  store atomic i64 0, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376
  store atomic i64 0, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  store atomic i64 0, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 408
  store atomic i64 0, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic i64 0, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 440
  store atomic i64 0, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 456
  store atomic i64 0, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  store atomic i64 0, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 488
  store atomic i64 0, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 504
  store atomic i64 0, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520
  store atomic i64 0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 536
  store atomic i64 0, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  store atomic i64 0, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  store atomic i64 0, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store atomic i64 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.ar, align 8, !tbaa !1261
  store atomic ptr %i.k, ptr %i.d monotonic, align 8
  %i.as = lshr i64 %1, 5                          ; 2 uses
  %i.at = and i64 %1, 31
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i64                    ; 2 uses
  %i.aw = add nuw nsw i64 %i.as, %i.av            ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !1271
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.az, align 8, !tbaa !1272
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ba = mul i64 %i.aw, 2632
  %i.bb = tail call noalias noundef ptr @malloc(i64 noundef %i.ba) #59 ; 16 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %2 = add nuw nsw i64 %i.as, %i.av               ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.bd = icmp samesign ult i64 %2, 4
  br i1 %i.bd, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.aw, 1152921504606846972
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bu, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.be = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2560
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 2616
  store ptr null, ptr %i.bg, align 8, !tbaa !1273
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bf, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bh, align 8, !tbaa !1275
  %i.bi = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 5192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 5248
  store ptr null, ptr %i.bk, align 8, !tbaa !1273
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 5256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bj, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bl, align 8, !tbaa !1275
  %i.bm = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 7824
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 7880
  store ptr null, ptr %i.bo, align 8, !tbaa !1273
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 7888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bn, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bp, align 8, !tbaa !1275
  %i.bq = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 10456
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 10512
  store ptr null, ptr %i.bs, align 8, !tbaa !1273
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 10520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.br, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bt, align 8, !tbaa !1275
  %i.bu = add nuw i64 %.011.i.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3912

.thread.i:                                        ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bu, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.ca, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bw = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i.epil ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2560
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 2616
  store ptr null, ptr %i.by, align 8, !tbaa !1273
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 2624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bx, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bz, align 8, !tbaa !1275
  %i.ca = add nuw i64 %.011.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil, !llvm.loop !3913

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i.epil, %.lr.ph.preheader.i.unr-lcssa
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !1272
  %xtraiter4 = and i64 %i.aw, 7                   ; 3 uses
  %i.cc = icmp samesign ult i64 %2, 8
  br i1 %i.cc, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter8 = and i64 %i.aw, 1152921504606846968
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.06.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ct, %.lr.ph.i ] ; 9 uses
  %niter9 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter9.next.7, %.lr.ph.i ]
  %i.cd = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2624
  store i8 0, ptr %i.ce, align 8, !tbaa !1275
  %i.cf = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 5256
  store i8 0, ptr %i.cg, align 8, !tbaa !1275
  %i.ch = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 7888
  store i8 0, ptr %i.ci, align 8, !tbaa !1275
  %i.cj = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 10520
  store i8 0, ptr %i.ck, align 8, !tbaa !1275
  %i.cl = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 13152
  store i8 0, ptr %i.cm, align 8, !tbaa !1275
  %i.cn = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 15784
  store i8 0, ptr %i.co, align 8, !tbaa !1275
  %i.cp = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 18416
  store i8 0, ptr %i.cq, align 8, !tbaa !1275
  %i.cr = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 21048
  store i8 0, ptr %i.cs, align 8, !tbaa !1275
  %i.ct = add nuw i64 %.06.i, 8                   ; 2 uses
  %niter9.next.7 = add i64 %niter9, 8             ; 2 uses
  %niter9.ncmp.7 = icmp eq i64 %niter9.next.7, %unroll_iter8
  br i1 %niter9.ncmp.7, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3914

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod6.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod6.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ct, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter4, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.cw, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter5 = phi i64 [ %epil.iter5.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cu = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i.epil
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2624
  store i8 0, ptr %i.cv, align 8, !tbaa !1275
  %i.cw = add nuw i64 %.06.i.epil, 1
  %epil.iter5.next = add i64 %epil.iter5, 1       ; 2 uses
  %epil.iter5.cmp.not = icmp eq i64 %epil.iter5.next, %xtraiter4
  br i1 %epil.iter5.cmp.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil, !llvm.loop !3915

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %.thread.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #12 align 2

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7easylog8appenderD2Ev(ptr noundef nonnull align 8 dead_on_return(1361) dereferenceable(1361) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !316
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZN7easylog8appender4stopEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #41 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #52
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.e = load atomic i8, ptr %i.d seq_cst, align 8, !range !319, !noundef !320
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  store atomic i8 1, ptr %i.d seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #41 ; 0 uses
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.a, align 8, !tbaa !316
  %.not2.i = icmp eq i64 %.sroa.0.0.copyload.i1.i, 0
  br i1 %.not2.i, label %_ZN7easylog8appender4stopEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7easylog8appender4stopEv.exit unwind label %bb.h

_ZN7easylog8appender4stopEv.exit:                 ; preds = %bb.e, %bb.a, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.i) #41
  %.sroa.0.0.copyload.i.i2 = load i64, ptr %i.a, align 8, !tbaa !316
  %.not.i3 = icmp eq i64 %.sroa.0.0.copyload.i.i2, 0
  br i1 %.not.i3, label %_ZNSt6threadD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7easylog8appender4stopEv.exit
  tail call void @_ZSt9terminatev() #49
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZN7easylog8appender4stopEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(612) %i.j) #41
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.k) #41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !221  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6threadD2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !211
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6threadD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #49
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(612) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not29 = icmp eq ptr %i.a, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit
  %.02130 = phi ptr [ %i.e, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02130, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1092 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %.02130, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1277 ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.g, align 8, !tbaa !1279
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit: ; preds = %bb.b, %.lr.ph
  %i.h = load ptr, ptr %.02130, align 8, !tbaa !195
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.02130) #41, !inline_history !3917
  tail call void @free(ptr noundef nonnull %.02130) #41
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 3 uses
  %.not2331 = icmp eq ptr %i.k, null
  br i1 %.not2331, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1261 ; 2 uses
  %cond47 = icmp eq ptr %i.m, null
  br i1 %cond47, label %._crit_edge35, label %.preheader

.preheader:                                       ; preds = %.lr.ph34.preheader, %.preheader
  %i.n = phi ptr [ %i.p, %.preheader ], [ %i.m, %.lr.ph34.preheader ] ; 2 uses
  %.0203248 = phi ptr [ %i.n, %.preheader ], [ %i.k, %.lr.ph34.preheader ]
end_hunk_1
begin_hunk_2_@_ZN7coro_io16ib_buffer_pool_tC2ENS0_23private_construct_tokenERNS_11ib_device_tERKNS0_8config_tE:.noexc
  tail call void @_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.795") align 8 %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !213

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory) #41
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4320)
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #51
          to label %bb.d unwind label %bb.i       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !242, !noalias !4320
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !243, !noalias !4320
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !195, !noalias !4320
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !4320
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory, i64 8), align 8, !tbaa !240, !alias.scope !4320
  store ptr %i.g, ptr @_ZZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory, align 8, !tbaa !4321, !alias.scope !4320
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory, i64 8), align 8, !tbaa !240 ; 2 uses
  %i.j = load <2 x ptr>, ptr @_ZZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory, align 8, !tbaa !255
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !255
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tEEC2ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.k, align 4, !tbaa !212
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !212
  br label %_ZNSt10shared_ptrIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tEEC2ERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tEEC2ERKS3_.exit: ; preds = %bb.e, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory) #41
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !212  ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !195
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !55
  br label %_ZNSt10__weak_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEEC2Em(ptr noundef nonnull align 8 dereferenceable(612) %0, i64 noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !4326
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !295
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !1255
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.h, align 4, !tbaa !295
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.i, align 8, !tbaa !295
  store i64 0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.j, i8 0, i64 504, i1 false)
  store atomic i8 0, ptr %i.g monotonic, align 8
  store atomic i64 0, ptr %i.e monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 32, ptr %i.k, align 8, !tbaa !1058
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.l, align 8, !tbaa !1059
  store atomic i64 0, ptr %i.f monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store atomic i64 0, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 0, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store atomic i64 0, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store atomic i64 0, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store atomic i64 0, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store atomic i64 0, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i64 0, ptr %i.u monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  store atomic i64 0, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store atomic i64 0, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  store atomic i64 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  store atomic i64 0, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i64 0, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  store atomic i64 0, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  store atomic i64 0, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376
  store atomic i64 0, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  store atomic i64 0, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 408
  store atomic i64 0, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic i64 0, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 440
  store atomic i64 0, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 456
  store atomic i64 0, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  store atomic i64 0, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 488
  store atomic i64 0, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 504
  store atomic i64 0, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520
  store atomic i64 0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 536
  store atomic i64 0, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  store atomic i64 0, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  store atomic i64 0, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store atomic i64 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.ar, align 8, !tbaa !1060
  store atomic ptr %i.k, ptr %i.d monotonic, align 8
  %i.as = lshr i64 %1, 5                          ; 2 uses
  %i.at = and i64 %1, 31
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i64                    ; 2 uses
  %i.aw = add nuw nsw i64 %i.as, %i.av            ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !1080
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.az, align 8, !tbaa !1081
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ba = mul i64 %i.aw, 328
  %i.bb = tail call noalias noundef ptr @malloc(i64 noundef %i.ba) #59 ; 16 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %2 = add nuw nsw i64 %i.as, %i.av               ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.bd = icmp samesign ult i64 %2, 4
  br i1 %i.bd, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.aw, 1152921504606846972
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bu, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.be = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 256
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 312
  store ptr null, ptr %i.bg, align 8, !tbaa !1082
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bf, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bh, align 8, !tbaa !1084
  %i.bi = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 584
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 640
  store ptr null, ptr %i.bk, align 8, !tbaa !1082
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bj, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bl, align 8, !tbaa !1084
  %i.bm = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 912
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 968
  store ptr null, ptr %i.bo, align 8, !tbaa !1082
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bn, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bp, align 8, !tbaa !1084
  %i.bq = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1240
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1296
  store ptr null, ptr %i.bs, align 8, !tbaa !1082
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.br, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bt, align 8, !tbaa !1084
  %i.bu = add nuw i64 %.011.i.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !4322

.thread.i:                                        ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bu, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.ca, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bw = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i.epil ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 256
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 312
  store ptr null, ptr %i.by, align 8, !tbaa !1082
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bx, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bz, align 8, !tbaa !1084
  %i.ca = add nuw i64 %.011.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil, !llvm.loop !4323

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i.epil, %.lr.ph.preheader.i.unr-lcssa
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !1081
  %xtraiter4 = and i64 %i.aw, 7                   ; 3 uses
  %i.cc = icmp samesign ult i64 %2, 8
  br i1 %i.cc, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter8 = and i64 %i.aw, 1152921504606846968
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.06.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ct, %.lr.ph.i ] ; 9 uses
  %niter9 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter9.next.7, %.lr.ph.i ]
  %i.cd = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 320
  store i8 0, ptr %i.ce, align 8, !tbaa !1084
  %i.cf = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 648
  store i8 0, ptr %i.cg, align 8, !tbaa !1084
  %i.ch = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 976
  store i8 0, ptr %i.ci, align 8, !tbaa !1084
  %i.cj = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1304
  store i8 0, ptr %i.ck, align 8, !tbaa !1084
  %i.cl = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1632
  store i8 0, ptr %i.cm, align 8, !tbaa !1084
  %i.cn = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1960
  store i8 0, ptr %i.co, align 8, !tbaa !1084
  %i.cp = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2288
  store i8 0, ptr %i.cq, align 8, !tbaa !1084
  %i.cr = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2616
  store i8 0, ptr %i.cs, align 8, !tbaa !1084
  %i.ct = add nuw i64 %.06.i, 8                   ; 2 uses
  %niter9.next.7 = add i64 %niter9, 8             ; 2 uses
  %niter9.ncmp.7 = icmp eq i64 %niter9.next.7, %unroll_iter8
  br i1 %niter9.ncmp.7, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !4324

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod6.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod6.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ct, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter4, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.cw, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter5 = phi i64 [ %epil.iter5.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cu = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i.epil
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 320
  store i8 0, ptr %i.cv, align 8, !tbaa !1084
  %i.cw = add nuw i64 %.06.i.epil, 1
  %epil.iter5.next = add i64 %epil.iter5, 1       ; 2 uses
  %epil.iter5.cmp.not = icmp eq i64 %epil.iter5.next, %xtraiter4
  br i1 %epil.iter5.cmp.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil, !llvm.loop !4325

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %.thread.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(612) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not29 = icmp eq ptr %i.a, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit
  %.02130 = phi ptr [ %i.e, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02130, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1092 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %.02130, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1277 ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.g, align 8, !tbaa !1279
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit: ; preds = %bb.b, %.lr.ph
  %i.h = load ptr, ptr %.02130, align 8, !tbaa !195
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.02130) #41, !inline_history !4327
  tail call void @free(ptr noundef nonnull %.02130) #41
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 3 uses
  %.not2331 = icmp eq ptr %i.k, null
  br i1 %.not2331, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1060 ; 2 uses
  %cond47 = icmp eq ptr %i.m, null
  br i1 %cond47, label %._crit_edge35, label %.preheader

.preheader:                                       ; preds = %.lr.ph34.preheader, %.preheader
  %i.n = phi ptr [ %i.p, %.preheader ], [ %i.m, %.lr.ph34.preheader ] ; 2 uses
  %.0203248 = phi ptr [ %i.n, %.preheader ], [ %i.k, %.lr.ph34.preheader ]
  tail call void @free(ptr noundef nonnull %.0203248) #41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1060 ; 2 uses
  %cond = icmp eq ptr %i.p, null
  br i1 %cond, label %._crit_edge35, label %.preheader

._crit_edge35:                                    ; preds = %.preheader, %.lr.ph34.preheader, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8 ; 2 uses
  %.not2436 = icmp eq ptr %i.r, null
  br i1 %.not2436, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %._crit_edge35, %bb.d
  %.037 = phi ptr [ %i.t, %bb.d ], [ %i.r, %._crit_edge35 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.037, i64 312
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.037, i64 320
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1084, !range !319, !noundef !320
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph39
  tail call void @free(ptr noundef nonnull %.037) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph39
  %.not24 = icmp eq ptr %i.t, null
  br i1 %.not24, label %._crit_edge40, label %.lr.ph39, !llvm.loop !4328

._crit_edge40:                                    ; preds = %bb.d, %._crit_edge35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1081 ; 2 uses
  %.not.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i28, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINSB_5BlockEEEvPT_m.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %._crit_edge40
  tail call void @free(ptr noundef nonnull %i.y) #41
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINSB_5BlockEEEvPT_m.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINSB_5BlockEEEvPT_m.exit: ; preds = %.preheader.preheader.i, %._crit_edge40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tEEEvRS0_PT_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !345  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !211
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #41
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
end_hunk_2
