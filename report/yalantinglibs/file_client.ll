Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/file_client?download=true
inline.NumInlined: 41909
inline.NumDeleted: 14746
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN7coro_io15io_context_poolC2Emb:bb.a
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
  %.072 = phi i64 [ 0, %bb.f ], [ %i.ez, %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
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
          to label %.noexc43.a unwind label %_ZNKSt14default_deleteIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEclEPS7_.exit.i36.loopexit.split-lp

.noexc43.a:                                       ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ad
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i, %i.cg   ; 2 uses
  %i.ch = icmp ult i64 %5, %i.cg
  %i.ci = call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i42 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i42)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #51
          to label %.noexc44 unwind label %_ZNKSt14default_deleteIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEclEPS7_.exit.i36.loopexit ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ce
  %i.cn = ptrtoint ptr %i.bq to i64
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !254
  %.not10.i.i.i.i = icmp eq ptr %i.cb, %i.bx
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc44
  %i.co = add i64 %i.cc, -8
  %i.cp = sub i64 %i.co, %i.cd                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader153, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cl, i64 8
  %i.cs = add i64 %i.cc, -8
  %i.ct = sub i64 %i.cs, %i.cd
  %i.cu = and i64 %i.ct, -8                       ; 2 uses
  %scevgep147.a = getelementptr i8, ptr %scevgep, i64 %i.cu
  %scevgep148.a = getelementptr i8, ptr %i.cb, i64 8
  %scevgep149 = getelementptr i8, ptr %scevgep148.a, i64 %i.cu
  %bound0 = icmp ult ptr %i.cl, %scevgep149
  %bound1 = icmp ult ptr %i.cb, %scevgep147.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader153, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, 4611686018427387900     ; 3 uses
  %i.cv = shl i64 %n.vec, 3                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cl, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cb, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cy ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.cb, i64 %i.cy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  %i.cz = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep150, align 8, !tbaa !254, !alias.scope !3037, !noalias !3035
  %wide.load151 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !254, !alias.scope !3037, !noalias !3035
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !254, !alias.scope !3038, !noalias !3037
  store <2 x i64> %wide.load151, ptr %i.da, align 8, !tbaa !254, !alias.scope !3038, !noalias !3037
  %i.db = getelementptr i8, ptr %next.gep150, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep150, align 8, !tbaa !254, !alias.scope !3037, !noalias !3035
  store <2 x ptr> splat (ptr null), ptr %i.db, align 8, !tbaa !254, !alias.scope !3037, !noalias !3035
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !3028

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader153

.lr.ph.i.i.i.i.preheader153:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cb, %vector.memcheck ], [ %i.cb, %.lr.ph.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader153, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader153 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader153 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  %i.dd = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !254, !alias.scope !3036, !noalias !3035
  store i64 %i.dd, ptr %.012.i.i.i.i, align 8, !tbaa !254, !alias.scope !3035, !noalias !3036
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !254, !alias.scope !3036, !noalias !3035
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.de, %i.bx
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !3029

_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc44
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cl, %.noexc44 ], [ %i.cw, %middle.block ], [ %i.df, %.lr.ph.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i, label %.noexc23, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ce) #50
  br label %.noexc23

.noexc23:                                         ; preds = %bb.af, %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !252
  store ptr %i.dg, ptr %i.z, align 8, !tbaa !400
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.dh, ptr %i.aa, align 8, !tbaa !401
  br label %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit

_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit: ; preds = %.noexc23, %bb.ac
  %i.di = load ptr, ptr %i.ab, align 8, !tbaa !402 ; 5 uses
  %i.dj = load ptr, ptr %i.ac, align 8, !tbaa !403
  %.not.i24 = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i24, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit
  %i.dk = load ptr, ptr %i.w, align 8, !tbaa !240 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %4, align 16, !tbaa !255
  store <2 x ptr> %i.dl, ptr %i.di, align 8, !tbaa !255
  %.not.i.i.i.i.i25 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i26 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i26, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !212
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !212
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i27 = load ptr, ptr %i.ab, align 8, !tbaa !402
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i

_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.dr = phi ptr [ %i.di, %bb.ag ], [ %i.di, %bb.ai ], [ %.pre.i27, %bb.aj ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.ds, ptr %i.ab, align 8, !tbaa !402
  br label %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit

bb.ak:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EE9push_backEOSB_.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.di, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit unwind label %bb.bc

_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit: ; preds = %bb.ak, %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit.i
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !240 ; 8 uses
  %.not.i.i30 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i30, label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.du, align 8, !tbaa !242
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 0, ptr %i.dy, align 4, !tbaa !243
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !195
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #41, !inline_history !3030
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !195
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #41, !inline_history !3030
  br label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eg = add nsw i32 %i.dx, -1
  store i32 %i.eg, ptr %i.du, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.eh = atomicrmw volatile add ptr %i.du, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i = phi i32 [ %i.dx, %bb.ao ], [ %i.eh, %bb.ap ]
  %i.ei = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ei, label %bb.aq, label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !223

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #41
  br label %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ej = load ptr, ptr %i.v, align 8, !tbaa !240 ; 8 uses
  %.not.i.i31 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i31, label %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.as, label %bb.at

end_hunk_0
begin_hunk_1_@_ZN4asio10io_context4workD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !419, !range !319, !noundef !320
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %i.h, align 8, !tbaa !483
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #41 ; 0 uses
  %.pre.i.i = load i8, ptr %i.e, align 8, !tbaa !419, !range !319
  %i.k = trunc nuw i8 %.pre.i.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %i.l, align 8, !tbaa !483
  br i1 %i.k, label %bb.c, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !484
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !484
  %i.q = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.c, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !422, !range !319, !noundef !320
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !420  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !422
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !195
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.g, !inline_history !22

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.g, label %bb.f, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.f:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #41 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.g, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #41 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.a
  ret void

.body:                                            ; preds = %bb.g, %bb.h
  %i.ae = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !514, !nonnull !320, !align !389 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = atomicrmw sub ptr %i.e, i64 1 seq_cst, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN4asio10io_context4workD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !419, !range !319, !noundef !320
  %i.j = trunc nuw i8 %i.i to i1                  ; 3 uses
  br i1 %i.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i8 1, ptr %i.k, align 8, !tbaa !483
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #41 ; 0 uses
  %.pre.i.i.i = load i8, ptr %i.h, align 8, !tbaa !419, !range !319
  %i.n = trunc nuw i8 %.pre.i.i.i to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i8 1, ptr %i.o, align 8, !tbaa !483
  br i1 %i.n, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !484
  %i.s = or i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !484
  %i.t = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !422, !range !319, !noundef !320
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !420  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 8, !tbaa !422
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !195
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i unwind label %bb.h, !inline_history !22

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i
  br i1 %i.j, label %bb.g, label %_ZN4asio10io_context4workD2Ev.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #41 ; 0 uses
  br label %_ZN4asio10io_context4workD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.j, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #41 ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h
  %i.ah = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #49
  unreachable

_ZN4asio10io_context4workD2Ev.exit:               ; preds = %bb.b, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #50
  br label %bb.j

bb.j:                                             ; preds = %_ZN4asio10io_context4workD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !249    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #51 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240  ; 2 uses
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !255
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !255
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !212
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !212
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.o, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !255, !alias.scope !3094, !noalias !3093
  store ptr null, ptr %i.y, align 8, !tbaa !240, !alias.scope !3094, !noalias !3093
  store <2 x ptr> %i.z, ptr %.012.i.i.i, align 8, !tbaa !255, !alias.scope !3093, !noalias !3094
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !383, !alias.scope !3094, !noalias !3093
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3089

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3096)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ae = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !255, !alias.scope !3096, !noalias !3095
  store ptr null, ptr %i.ad, align 8, !tbaa !240, !alias.scope !3096, !noalias !3095
  store <2 x ptr> %i.ae, ptr %.012.i.i.i18, align 8, !tbaa !255, !alias.scope !3095, !noalias !3096
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !383, !alias.scope !3096, !noalias !3095
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3089

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ag, %.lr.ph.i.i.i17 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_contextEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !396
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #50
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_contextEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_contextEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !249
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !248
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !396
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEE, i64 16), ptr %0, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !515  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit, label %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i

_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i: ; preds = %bb.a
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3anyESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #50
  br label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit

_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12async_simple8ExecutorE, i64 16), ptr %0, align 8, !tbaa !195
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !221  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN12async_simple8ExecutorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit
  %i.g = load i64, ptr %i.e, align 8, !tbaa !211
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #50, !inline_history !3097
  br label %_ZN12async_simple8ExecutorD2Ev.exit

_ZN12async_simple8ExecutorD2Ev.exit:              ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEE, i64 16), ptr %0, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !515  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i, label %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i.i

_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i.i: ; preds = %bb.a
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3anyESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #41, !inline_history !516
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #50, !inline_history !516
  br label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i

_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12async_simple8ExecutorE, i64 16), ptr %0, align 8, !tbaa !195
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !221  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !211
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #50, !inline_history !517
  br label %_ZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEED2Ev.exit

_ZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #50
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofreeobj noundef align 8 dereferenceable(32) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::io_context::basic_executor_type", align 8 ; 5 uses
  %3 = alloca %"class.asio::detail::binder0", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.c = and i64 %i.b, -4
  %i.d = or disjoint i64 %i.c, 1
  store i64 %i.d, ptr %2, align 8, !tbaa !297, !alias.scope !3106
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false), !alias.scope !3107
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !520, !noalias !3107
  store ptr %i.g, ptr %i.e, align 8, !tbaa !520, !alias.scope !3107
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !521, !noalias !3107 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZN4asio6detail12bind_handlerISt8functionIFvvEEEENS0_7binder0INSt5decayIT_E4typeEEEOS7_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !522
  store ptr %i.i, ptr %i.j, align 8, !tbaa !521, !alias.scope !3107
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !3107
  br label %_ZN4asio6detail12bind_handlerISt8functionIFvvEEEENS0_7binder0INSt5decayIT_E4typeEEEOS7_.exit.i.i.i.i

_ZN4asio6detail12bind_handlerISt8functionIFvvEEEENS0_7binder0INSt5decayIT_E4typeEEEOS7_.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  invoke void @_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7executeINS_6detail7binder0ISt8functionIFvvEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK25asio_execution_execute_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_6detail7binder0ISt8functionIFvvEEEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_.exit.i.i.i.i unwind label %bb.e

_ZNK25asio_execution_execute_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_6detail7binder0ISt8functionIFvvEEEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_.exit.i.i.i.i: ; preds = %_ZN4asio6detail12bind_handlerISt8functionIFvvEEEENS0_7binder0INSt5decayIT_E4typeEEEOS7_.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !521  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio4postINS_10io_context19basic_executor_typeISaIvELm0EEETkNS_20completion_token_forIFvvEEESt8functionIS6_EEEDaRKT_OT0_NS_10constraintIXoosr9execution11is_executorIS9_EE5valuesr11is_executorIS9_EE5valueEiE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_6detail7binder0ISt8functionIFvvEEEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_.exit.i.i.i.i
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN4asio4postINS_10io_context19basic_executor_typeISaIvELm0EEETkNS_20completion_token_forIFvvEEESt8functionIS6_EEEDaRKT_OT0_NS_10constraintIXoosr9execution11is_executorIS9_EE5valuesr11is_executorIS9_EE5valueEiE4typeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
end_hunk_1
begin_hunk_2_@_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptr5resetEv:bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #49
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_ED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i.i, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !673
  br label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_ED2Ev.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !674  ; 5 uses
  %.not1 = icmp eq ptr %i.l, null
  br i1 %.not1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !492  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !491  ; 4 uses
  %.not3 = icmp eq ptr %i.p, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !255
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !255
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %.thread.i.i

bb.g:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.lcssa.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.y = load i8, ptr %i.x, align 1, !tbaa !211
  store i8 %i.y, ptr %i.l, align 1, !tbaa !211
  store ptr %i.l, ptr %i.w, align 8, !tbaa !255
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPSO_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.l) #41
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPSO_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPSO_m.exit: ; preds = %bb.g, %.thread.i.i
  store ptr null, ptr %i.k, align 8, !tbaa !674
  br label %bb.h

bb.h:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPSO_m.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvEC2EiiRKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::execution::prefer_only.245", align 1 ; 3 uses
  %5 = alloca %"class.asio::execution::any_executor", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !527
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3457
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.c()
          to label %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit unwind label %bb.f, !inline_history !3449

_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !345  ; 3 uses
  %i.g = icmp eq ptr %i.f, @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE
  br i1 %i.g, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit
  %i.h = load i8, ptr %i.f, align 1, !tbaa !211
  %.not.i = icmp eq i8 %i.h, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread5, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(52) @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE) #41
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread5

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit, %_ZNKSt9type_infoeqERKS_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.k, align 8, !tbaa !528
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.l, align 8, !tbaa !529
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.m, align 8, !tbaa !527
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.n, align 8, !tbaa !532
  br label %bb.e

_ZNKSt9type_infoeqERKS_.exit.thread5:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !3458
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !532, !noalias !3460
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !666, !noalias !3460
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !528, !noalias !3460
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !622, !noalias !3460
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %.noexc unwind label %bb.f, !inline_history !3456

.noexc:                                           ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !3460
  invoke void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.asio::execution::any_executor") align 8 %5, ptr noundef %i.w, ptr noundef nonnull %4)
          to label %.noexc3 unwind label %bb.f, !inline_history !3456

.noexc3:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !3460
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !528, !noalias !3461 ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !528, !alias.scope !3461
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !527, !noalias !3461
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !527, !alias.scope !3461
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.y, align 8, !tbaa !528, !noalias !3461
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.ab, align 8, !tbaa !527, !noalias !3461
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !665, !noalias !3461
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %.noexc3
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #49
  unreachable

_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i: ; preds = %.noexc3
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.ah, align 8, !tbaa !529, !noalias !3461
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !532, !noalias !3461
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !532, !alias.scope !3461
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.aj, align 8, !tbaa !532, !noalias !3461
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !528, !noalias !3461
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !535
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail16outstanding_work9tracked_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #49
  unreachable

_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail16outstanding_work9tracked_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_.exit: ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !3458
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail16outstanding_work9tracked_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  ret void

bb.f:                                             ; preds = %.noexc, %_ZNKSt9type_infoeqERKS_.exit.thread5, %bb.a
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE13enqueue_timerERKNS3_10time_pointIS5_NS3_8durationIlSt5ratioILl1ELl1000000000EEEEEERNS9_14per_timer_dataEPNS0_7wait_opE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::detail::timer_queue<asio::detail::chrono_time_traits<std::chrono::_V2::steady_clock, asio::wait_traits<std::chrono::_V2::steady_clock>>>::heap_entry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !659
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !650
  %.not = icmp eq ptr %2, %i.e
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !656  ; 7 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !647  ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !623
  %i.o = load i64, ptr %1, align 8, !tbaa !316    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !648
  %.not.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.h, align 8, !tbaa !316
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !657
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !656
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i, %i.m  ; 2 uses
  %i.t = icmp ult i64 %5, %i.m
  %i.u = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.v = select i1 %i.t, i64 576460752303423487, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #51 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.l ; 2 uses
  store i64 %i.o, ptr %i.y, align 8, !tbaa !316
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx22, align 8, !tbaa !657
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !658, !alias.scope !3466
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3465

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #50
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  store ptr %i.x, ptr %i.f, align 8, !tbaa !647
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !656
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ac, ptr %i.p, align 8, !tbaa !648
  %.pre = ptrtoint ptr %i.x to i64
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit: ; preds = %bb.d, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.k, %bb.d ], [ %.pre, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.ad = phi ptr [ %i.i, %bb.d ], [ %i.x, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.ae = phi ptr [ %i.r, %bb.d ], [ %i.ab, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %.pre-phi
  %i.ah = ashr exact i64 %i.ag, 4
  %i.ai = add nsw i64 %i.ah, -1                   ; 2 uses
  %.not11.i = icmp eq i64 %i.ai, 0
  br i1 %.not11.i, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit, %bb.h
  %i.aj = phi ptr [ %i.ar, %bb.h ], [ %i.ad, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit ] ; 2 uses
  %.0812.i = phi i64 [ %i.al, %bb.h ], [ %i.ai, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit ] ; 4 uses
  %i.ak = add nsw i64 %.0812.i, -1
  %i.al = lshr i64 %i.ak, 1                       ; 6 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.0812.i ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !316
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.an, align 8, !tbaa !316
  %i.ao = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.ao, label %bb.h, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit

bb.h:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !658
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !658
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !647
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !658
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !647 ; 3 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.0812.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !653
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.0812.i, ptr %i.av, align 8, !tbaa !623
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.al
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !653
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.al, ptr %i.az, align 8, !tbaa !623
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i19 = icmp eq i64 %i.al, 0
  br i1 %.not.i19, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit, label %.lr.ph.i

_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit: ; preds = %bb.h, %.lr.ph.i, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !650 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !654
  store ptr null, ptr %i.a, align 8, !tbaa !659
  %.not18 = icmp eq ptr %i.ba, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %2, ptr %i.bc, align 8, !tbaa !659
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit
  store ptr %2, ptr %i.d, align 8, !tbaa !650
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  store ptr null, ptr %3, align 8, !tbaa !466
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !643 ; 2 uses
  %.not.i20 = icmp eq ptr %i.be, null
  %..i = select i1 %.not.i20, ptr %2, ptr %i.be
  store ptr %3, ptr %..i, align 8, !tbaa !255
  store ptr %3, ptr %i.bd, align 8, !tbaa !643
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !623
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %2, align 8, !tbaa !642
  %i.bj = icmp eq ptr %i.bi, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bk = phi i1 [ false, %bb.k ], [ %i.bj, %bb.l ]
  ret i1 %i.bk
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEENUlRKT_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !243
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !28
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !223

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !521  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEENUlRKT_E0_D2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
end_hunk_2
begin_hunk_3_@_ZN4asio6detail17executor_function8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_EEvPNS1_9impl_baseEb:bb.a
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #41, !inline_history !38
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !223

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #41
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !521 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 3)
          to label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #49
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptrD2Ev.exit7 unwind label %bb.p

bb.p:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #49
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptrD2Ev.exit7: ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !697  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !243
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41, !inline_history !3516
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41, !inline_history !3516
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !223

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !521  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_ED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef 3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_ED2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #49
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_ED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !697
  br label %bb.k

bb.k:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_ED2Ev.exit, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !698 ; 5 uses
  %.not1 = icmp eq ptr %i.aa, null
  br i1 %.not1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !492 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i: ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !491 ; 4 uses
  %.not3 = icmp eq ptr %i.ae, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !255
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !255
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.lcssa.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.an = load i8, ptr %i.am, align 1, !tbaa !211
  store i8 %i.an, ptr %i.aa, align 1, !tbaa !211
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !255
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.l
  tail call void @free(ptr noundef nonnull %i.aa) #41
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit: ; preds = %bb.m, %.thread.i.i
  store ptr null, ptr %i.z, align 8, !tbaa !698
  br label %bb.n

bb.n:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !429    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #51 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240  ; 2 uses
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !255
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !255
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !212
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !212
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.o, %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3525)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !255, !alias.scope !3525, !noalias !3524
  store ptr null, ptr %i.y, align 8, !tbaa !240, !alias.scope !3525, !noalias !3524
  store <2 x ptr> %i.z, ptr %.012.i.i.i, align 8, !tbaa !255, !alias.scope !3524, !noalias !3525
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !393, !alias.scope !3525, !noalias !3524
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !3520

_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZSt12construct_atISt10shared_ptrIN4asio10io_context4workEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3527)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ae = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !255, !alias.scope !3527, !noalias !3526
  store ptr null, ptr %i.ad, align 8, !tbaa !240, !alias.scope !3527, !noalias !3526
  store <2 x ptr> %i.ae, ptr %.012.i.i.i18, align 8, !tbaa !255, !alias.scope !3526, !noalias !3527
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !393, !alias.scope !3527, !noalias !3526
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3520

_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ag, %.lr.ph.i.i.i17 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_context4workEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !403
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #50
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_context4workEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_context4workEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !429
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !402
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !403
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofreeobj noundef align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %4 = alloca %"class.std::future_error", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !428
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt23__atomic_futex_unsignedILj2147483648EE19_M_store_notify_allEjSt12memory_order.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt15future_categoryv() #55
  call void @_ZNSt12future_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 4, ptr nonnull %i.b)
  %i.c = call ptr @__cxa_allocate_exception(i64 noundef 32) #41, !noalias !3530 ; 5 uses
  %i.d = call ptr @__cxa_init_primary_exception(ptr noundef %i.c, ptr noundef nonnull @_ZTISt12future_error, ptr noundef nonnull @_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv) #41, !noalias !3530 ; 0 uses
  call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4) #41, !noalias !3530
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12future_error, i64 16), ptr %i.c, align 8, !tbaa !195, !noalias !3530
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !435, !noalias !3530
  call void @_ZNSt15__exception_ptr13exception_ptrC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c) #41
  %i.g = load ptr, ptr %1, align 8, !tbaa !428
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.i = load ptr, ptr %3, align 8, !tbaa !330
  store ptr null, ptr %3, align 8, !tbaa !330
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !330  ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !330
  store ptr %i.i, ptr %i.h, align 8, !tbaa !330
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #41
  %.pr = load ptr, ptr %3, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %.not.i1 = icmp eq ptr %.pr, null
  br i1 %.not.i1, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.c
  call void @_ZNSt12future_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = load ptr, ptr %1, align 8, !tbaa !428
  store ptr %i.m, ptr %i.k, align 8, !tbaa !428
  store ptr %i.l, ptr %1, align 8, !tbaa !428
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = atomicrmw xchg ptr %i.n, i32 1 release, align 4
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %_ZNSt23__atomic_futex_unsignedILj2147483648EE19_M_store_notify_allEjSt12memory_order.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @_ZNSt28__atomic_futex_unsigned_base19_M_futex_notify_allEPj(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  br label %_ZNSt23__atomic_futex_unsignedILj2147483648EE19_M_store_notify_allEjSt12memory_order.exit

_ZNSt23__atomic_futex_unsignedILj2147483648EE19_M_store_notify_allEjSt12memory_order.exit: ; preds = %bb.d, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12future_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv(ptr noundef %0) #5 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !195
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12future_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.a = load ptr, ptr %2, align 8, !tbaa !195, !noalias !3535
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !3535
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1), !inline_history !17
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.78, i64 noundef 19)
          to label %.noexc unwind label %bb.e     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !218, !alias.scope !3536
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !221  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !222  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
end_hunk_3
begin_hunk_4_@_ZN7coro_io15io_context_pool3runEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.dc = load ptr, ptr %4, align 8, !tbaa !706   ; 3 uses
  %i.dd = load ptr, ptr %i.ca, align 8, !tbaa !705 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dc, %i.dd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ai, %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dv, %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i.i ], [ %i.dc, %bb.ai ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dg, align 8, !tbaa !242
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !243
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !195
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #41, !inline_history !3569
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !195
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #41, !inline_history !3569
  br label %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dj, %bb.am ], [ %i.dt, %bb.an ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.du, label %bb.ao, label %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i.i, !prof !223

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #41
  br label %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ak, %.lr.ph.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.dv, %i.dd
  br i1 %.not.i.i.i34, label %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !39

_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !706
  br label %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.ai
  %i.dw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.dc, %bb.ai ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !710
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #50
  br label %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ec = load ptr, ptr %3, align 8, !tbaa !714   ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !716
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #50
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit: ; preds = %bb.a, %_ZNSt6vectorIjSaIjEED2Ev.exit
  ret void

bb.ar:                                            ; preds = %bb.z
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.ae, %bb.ad, %bb.w, %bb.x, %bb.ah
  %.pn24.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.db, %bb.ah ], [ %i.br, %bb.x ], [ %i.ei, %bb.ar ], [ %i.cl, %bb.ae ], [ %i.cl, %bb.ad ]
  call void @_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.as

bb.as:                                            ; preds = %.body, %bb.e
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %.body ], [ %i.s, %bb.e ]
  %i.ej = load ptr, ptr %3, align 8, !tbaa !714   ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIjSaIjEED2Ev.exit37, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !716
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #50
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit37

_ZNSt6vectorIjSaIjEED2Ev.exit37:                  ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn24.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7coro_io15io_context_pool18get_available_cpusERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.cpu_set_t, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !714    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !713
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !713
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.d = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #41
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.81, i64 noundef 33) ; 0 uses
  %i.g = tail call ptr @__errno_location() #55
  %i.h = load i32, ptr %i.g, align 4, !tbaa !212
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.h)
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.82, i64 noundef 28) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit
  %i.k = load ptr, ptr %0, align 8, !tbaa !717
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !717
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.k, label %bb.l

bb.d:                                             ; preds = %.preheader, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ] ; 5 uses
  %i.n = and i64 %indvars.iv, 63
  %i.o = lshr i64 %indvars.iv, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !316
  %i.r = shl nuw i64 1, %i.n
  %i.s = and i64 %i.q, %i.r
  %.not8 = icmp eq i64 %i.s, 0
  br i1 %.not8, label %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !713  ; 4 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !716
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.v, ptr %i.t, align 4, !tbaa !212
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.w, ptr %i.b, align 8, !tbaa !713
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !714    ; 4 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ad = icmp ult i64 %2, %i.ac
  %i.ae = call i64 @llvm.umin.i64(i64 %2, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #51 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.aa ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !212
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #50
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ah, ptr %0, align 8, !tbaa !714
  store ptr %i.al, ptr %i.b, align 8, !tbaa !713
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.am, ptr %i.e, align 8, !tbaa !716
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.f, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !3573

bb.k:                                             ; preds = %bb.c
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.83, i64 noundef 51) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.k ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrISt6threadLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !243
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !223

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_setaffinity_np(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #11

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !706    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !705  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !243
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41, !inline_history !3574
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41, !inline_history !3574
  br label %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i, !prof !223

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41
  br label %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !39

_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrISt6threadEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !706
  br label %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrISt6threadESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !710
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #50
  br label %_ZNSt12_Vector_baseISt10shared_ptrISt6threadESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrISt6threadESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrISt6threadES2_EvT_S4_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !705  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !706    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrISt6threadESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorISt10shared_ptrISt6threadESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #51 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !255
  store ptr null, ptr %i.q, align 8, !tbaa !240
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !255
  store ptr null, ptr %2, align 8, !tbaa !709
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrISt6threadESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorISt10shared_ptrISt6threadESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrISt6threadESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3583)
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.t = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !255, !alias.scope !3583, !noalias !3582
  store ptr null, ptr %i.s, align 8, !tbaa !240, !alias.scope !3583, !noalias !3582
  store <2 x ptr> %i.t, ptr %.012.i.i.i, align 8, !tbaa !255, !alias.scope !3582, !noalias !3583
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !709, !alias.scope !3583, !noalias !3582
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3578

_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrISt6threadESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorISt10shared_ptrISt6threadESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.v, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %i.w, %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.z, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3585)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !255, !alias.scope !3585, !noalias !3584
  store ptr null, ptr %i.x, align 8, !tbaa !240, !alias.scope !3585, !noalias !3584
  store <2 x ptr> %i.y, ptr %.012.i.i.i18, align 8, !tbaa !255, !alias.scope !3584, !noalias !3585
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !709, !alias.scope !3585, !noalias !3584
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3578

_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.w, %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.aa, %.lr.ph.i.i.i17 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrISt6threadESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !710
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #50
  br label %_ZNSt12_Vector_baseISt10shared_ptrISt6threadESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt10shared_ptrISt6threadESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !706
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !705
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !710
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ISt6threadSaIvEJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_RSB_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.132", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #51, !noalias !3589 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %i.d, align 8, !tbaa !341
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #51
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 2 uses
  %i.i = load <2 x ptr>, ptr %4, align 8, !tbaa !255
  store <2 x ptr> %i.i, ptr %i.f, align 8, !tbaa !255
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEEC2IJS9_RS8_EEEDpOT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !212
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !212
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEEC2IJS9_RS8_EEEDpOT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEEC2IJS9_RS8_EEEDpOT_.exit.i.i.i

_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEEC2IJS9_RS8_EEEDpOT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.noexc
  store ptr %i.e, ptr %5, align 8, !tbaa !343
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEEC2IJS9_RS8_EEEDpOT_.exit.i.i.i
  %i.o = load ptr, ptr %5, align 8, !tbaa !343    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !195
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #41, !inline_history !3588
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.f:                                             ; preds = %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEEC2IJS9_RS8_EEEDpOT_.exit.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !343    ; 3 uses
  %.not.i6.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i6.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i: ; preds = %bb.f
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !195
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #41, !inline_history !3588
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.a, ptr %0, align 8, !tbaa !240
  store ptr %i.d, ptr %1, align 8, !tbaa !3590
  ret void

bb.g:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.s, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i ], [ %i.s, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #50
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !316
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt16allocator_traitsISaIvEE7destroyISt6threadEEvRS0_PT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #49
  unreachable

_ZNSt16allocator_traitsISaIvEE7destroyISt6threadEEvRS0_PT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !345  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c
end_hunk_4
begin_hunk_5_@_ZN7easylog8record_tlsIA31_cEERS0_RKT_:bb.a
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !211
  store i8 %i.o, ptr %i.n, align 1, !tbaa !211
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !222
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !211
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA13_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(13) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !222  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #52
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !211
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !211
  store i8 %i.o, ptr %i.n, align 1, !tbaa !211
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !222
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !211
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7coro_io11ib_device_t19find_best_gid_indexEi(ptr noundef nonnull align 8 dereferenceable(202) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.ibv_gid_entry, align 8      ; 8 uses
  %3 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %4 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [46 x i8], align 16               ; 9 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %6 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %7 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %8 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %9 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %10 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !4296
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit, %bb.a
  %.sroa.18.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.18.1, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit ] ; 6 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.11.1, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.sroa.0262.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0262.1, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit ] ; 12 uses
  %i.m = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !213

bb.b:                                             ; preds = %._crit_edge
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.body

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit
  %.038324 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %.sroa.0262.0323 = phi ptr [ null, %.lr.ph ], [ %.sroa.0262.1, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit ] ; 9 uses
  %.sroa.11.0322 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit ] ; 8 uses
  %.sroa.18.0321 = phi ptr [ null, %.lr.ph ], [ %.sroa.18.1, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit ] ; 5 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !1372
  %i.s = load i16, ptr %i.j, align 8, !tbaa !1408
  %i.t = zext i16 %i.s to i32
  %i.u = invoke noundef i32 @_ibv_query_gid_ex(ptr noundef %i.r, i32 noundef range(i32 0, 65536) %i.t, i32 noundef %.038324, ptr noundef nonnull %2, i32 noundef 0, i64 noundef 32)
          to label %_ZL16ibv_query_gid_exP11ibv_contextjjP13ibv_gid_entryj.exit unwind label %.loopexit279

_ZL16ibv_query_gid_exP11ibv_contextjjP13ibv_gid_entryj.exit: ; preds = %bb.f
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.g, label %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit

.loopexit279:                                     ; preds = %bb.f, %_ZNKSt6vectorI13ibv_gid_entrySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.18.0321.lcssa = phi ptr [ %.sroa.18.0321, %bb.f ], [ %.sroa.11.0322, %_ZNKSt6vectorI13ibv_gid_entrySaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp280:                            ; preds = %bb.k
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZL16ibv_query_gid_exP11ibv_contextjjP13ibv_gid_entryj.exit
  %i.v = load i32, ptr %i.k, align 8, !tbaa !4298
  %i.w = icmp ne i32 %i.v, 0
  %i.x = load i32, ptr %i.l, align 4
  %i.y = icmp eq i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i69 = icmp eq ptr %.sroa.11.0322, %.sroa.18.0321
  br i1 %.not.i69, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0322, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !4299
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.11.0322, i64 32
  br label %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = ptrtoint ptr %.sroa.11.0322 to i64
  %i.ab = ptrtoint ptr %.sroa.0262.0323 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 6 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %bb.k, label %_ZNKSt6vectorI13ibv_gid_entrySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc unwind label %.loopexit.split-lp280

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorI13ibv_gid_entrySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ae = ashr exact i64 %i.ac, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %11 = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.af = icmp ult i64 %11, %i.ae
  %i.ag = call i64 @llvm.umin.i64(i64 %11, i64 288230376151711743)
  %i.ah = select i1 %i.af, i64 288230376151711743, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #51
          to label %.noexc70 unwind label %.loopexit279 ; 4 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorI13ibv_gid_entrySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ac ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !4299
  %i.al = icmp sgt i64 %i.ac, 0
  br i1 %i.al, label %bb.l, label %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.l:                                             ; preds = %.noexc70
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %.sroa.0262.0323, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI13ibv_gid_entrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.l, %.noexc70
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.not.i17.i.i = icmp eq ptr %.sroa.0262.0323, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0262.0323, i64 noundef %i.ac) #50
  br label %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI13ibv_gid_entrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI13ibv_gid_entrySaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.i, %bb.g, %_ZL16ibv_query_gid_exP11ibv_contextjjP13ibv_gid_entryj.exit
  %.sroa.18.1 = phi ptr [ %.sroa.18.0321, %bb.g ], [ %.sroa.18.0321, %_ZL16ibv_query_gid_exP11ibv_contextjjP13ibv_gid_entryj.exit ], [ %i.an, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.18.0321, %bb.i ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0322, %bb.g ], [ %.sroa.11.0322, %_ZL16ibv_query_gid_exP11ibv_contextjjP13ibv_gid_entryj.exit ], [ %i.am, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.z, %bb.i ] ; 2 uses
  %.sroa.0262.1 = phi ptr [ %.sroa.0262.0323, %bb.g ], [ %.sroa.0262.0323, %_ZL16ibv_query_gid_exP11ibv_contextjjP13ibv_gid_entryj.exit ], [ %i.aj, %_ZNSt6vectorI13ibv_gid_entrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0262.0323, %bb.i ] ; 2 uses
  %i.ao = add nuw nsw i32 %.038324, 1             ; 2 uses
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !4296
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %._crit_edge, !llvm.loop !4287

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.d, %bb.b, %._crit_edge
  %i.ar = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.as = icmp slt i32 %i.ar, 4
  br i1 %i.as, label %bb.n, label %bb.au

bb.n:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.at = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #41 ; 2 uses
  %i.au = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.o, label %_ZN7easylog6loggerILm0EE8instanceEv.exit74, !prof !213

bb.o:                                             ; preds = %bb.n
  %i.aw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i71 = icmp eq i32 %i.aw, 0
  br i1 %.not.i71, label %_ZN7easylog6loggerILm0EE8instanceEv.exit74, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit74

bb.r:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit74:       ; preds = %bb.q, %bb.o, %bb.n
  %i.az = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 1
  br i1 %i.ba, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit74
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !316
  %i.bb = sub nsw i64 %i.at, %.sroa.0.0.copyload.i2.i.i
  %i.bc = sdiv i64 %i.bb, 1000000
  %i.bd = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.be = srem i64 %i.bc, %i.bd
  %i.bf = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.bg = icmp slt i64 %i.be, %i.bf
  br i1 %i.bg, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.au

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit74, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store i8 91, ptr %4, align 1, !alias.scope !4300
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io11ib_device_t19find_best_gid_indexEiENKUlvE_clEv.prefix, i64 17, i1 false), !tbaa.struct !896
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.88, i64 3, i1 false), !tbaa.struct !318
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 %i.at, i32 noundef 3, i64 20, ptr nonnull %4)
          to label %bb.s unwind label %bb.ap

bb.s:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 7 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !221 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !222 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !222 ; 5 uses
  %i.bo = sub i64 9223372036854775807, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bl
  br i1 %i.bp, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.s
  %i.bq = add i64 %i.bn, %i.bl                    ; 3 uses
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !221 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bu = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !211
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bw = phi i64 [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i75 = icmp ugt i64 %i.bq, %i.bw
  br i1 %.not.i.i.i75, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not8.i.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bn ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.bl, 1
  br i1 %cond.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.by = load i8, ptr %i.bj, align 1, !tbaa !211
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !211
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.bn, i64 noundef 0, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %bb.y unwind label %bb.aq

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.x
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !222
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !221
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  store i8 0, ptr %i.ca, align 1, !tbaa !211
  %i.cb = load i64, ptr %i.bm, align 8, !tbaa !222 ; 5 uses
  %i.cc = icmp sgt i64 %i.cb, 9223372036854775792
  br i1 %i.cc, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i78

.invoke:                                          ; preds = %bb.y, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #52
          to label %.cont unwind label %bb.aq

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i78: ; preds = %bb.y
  %i.cd = add nsw i64 %i.cb, 15                   ; 3 uses
  %i.ce = load ptr, ptr %i.bi, align 8, !tbaa !221 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bs
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i84: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i78
  %i.cg = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i78
  %i.ch = load i64, ptr %i.bs, align 8, !tbaa !211
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i84
  %i.ci = phi i64 [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i84 ]
  %.not.i.i.i81 = icmp ugt i64 %i.cd, %i.ci
  br i1 %.not.i.i.i81, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.cj, ptr noundef nonnull align 1 dereferenceable(15) @.str.204, i64 15, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.cb, i64 noundef 0, ptr noundef nonnull @.str.204, i64 noundef 15)
          to label %bb.ab unwind label %bb.aq

bb.ab:                                            ; preds = %bb.z, %bb.aa
  store i64 %i.cd, ptr %i.bm, align 8, !tbaa !222
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !221
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cd
  store i8 0, ptr %i.cl, align 1, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.cm = ptrtoint ptr %.sroa.11.0.lcssa to i64
end_hunk_5
begin_hunk_6_@_ZN4asio2ip20basic_resolver_entryINS0_3tcpEED2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !211
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !211
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1598   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1595 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !221  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !211
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !221  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !211
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #50
  br label %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !103

_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1598
  br label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1596
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #50
  br label %_ZNSt12_Vector_baseIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1591 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1598 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1595 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !211
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !221  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !211
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #50
  br label %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !103

_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !1598
  br label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1596
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #50
  br label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #50
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1595 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1598   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 96076792050570581)
  %i.k = select i1 %i.i, i64 96076792050570581, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 96
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #51 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.p, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 28, i1 false), !tbaa.struct !1597
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !218
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !221  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !222  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit
  store ptr %i.t, ptr %i.q, align 8, !tbaa !221
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !211
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !211
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.ab = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.x, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !222
  store ptr %i.u, ptr %i.r, align 8, !tbaa !221
  store i64 0, ptr %i.ac, align 8, !tbaa !222
  store i8 0, ptr %i.u, align 8, !tbaa !211
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !218
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !221 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !222 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !221
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !211
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !211
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !222
  br label %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit

_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i
  %i.ap = phi i64 [ %i.al, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !222
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !221
  store i64 0, ptr %i.aq, align 8, !tbaa !222
  store i8 0, ptr %i.ai, align 8, !tbaa !211
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4724)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i, i64 28, i1 false), !tbaa.struct !1597, !alias.scope !4725
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !218, !alias.scope !4723, !noalias !4724
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !221, !alias.scope !4724, !noalias !4723 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !222, !alias.scope !4724, !noalias !4723 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !4725
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.av, ptr %i.as, align 8, !tbaa !221, !alias.scope !4723, !noalias !4724
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !211, !alias.scope !4724, !noalias !4723
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !211, !alias.scope !4723, !noalias !4724
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !222, !alias.scope !4724, !noalias !4723
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.bd = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.az, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !222, !alias.scope !4723, !noalias !4724
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !221, !alias.scope !4724, !noalias !4723
  store i64 0, ptr %i.be, align 8, !tbaa !222, !alias.scope !4724, !noalias !4723
  store i8 0, ptr %i.aw, align 8, !tbaa !211, !alias.scope !4724, !noalias !4723
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !218, !alias.scope !4723, !noalias !4724
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !221, !alias.scope !4724, !noalias !4723 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !222, !alias.scope !4724, !noalias !4723 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false), !alias.scope !4725
  br label %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !221, !alias.scope !4723, !noalias !4724
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !211, !alias.scope !4724, !noalias !4723
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !211, !alias.scope !4723, !noalias !4724
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !222, !alias.scope !4724, !noalias !4723
  br label %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i, %bb.f
  %i.br = phi i64 [ %i.bn, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !222, !alias.scope !4723, !noalias !4724
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !221, !alias.scope !4724, !noalias !4723
  store i64 0, ptr %i.bs, align 8, !tbaa !222, !alias.scope !4724, !noalias !4723
  store i8 0, ptr %i.bk, align 8, !tbaa !211, !alias.scope !4724, !noalias !4723
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !4719

_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.da, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.bw, %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.cz, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4727)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i19, i64 28, i1 false), !tbaa.struct !1597, !alias.scope !4728
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !218, !alias.scope !4726, !noalias !4727
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !221, !alias.scope !4727, !noalias !4726 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !222, !alias.scope !4727, !noalias !4726 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false), !alias.scope !4728
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !221, !alias.scope !4726, !noalias !4727
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !211, !alias.scope !4727, !noalias !4726
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !211, !alias.scope !4726, !noalias !4727
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !222, !alias.scope !4727, !noalias !4726
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.g
  %i.ci = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ], [ %i.ce, %bb.g ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !222, !alias.scope !4726, !noalias !4727
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !221, !alias.scope !4727, !noalias !4726
  store i64 0, ptr %i.cj, align 8, !tbaa !222, !alias.scope !4727, !noalias !4726
  store i8 0, ptr %i.cb, align 8, !tbaa !211, !alias.scope !4727, !noalias !4726
end_hunk_6
begin_hunk_7_@_ZN4asio6detail17executor_function8completeINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_10async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EEENS6_4coro4LazyISC_EERT_T0_EUlOSN_E_SI_EENSL_ISN_EESP_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSN_EUlvE_EESaIvEEEvPNS1_9impl_baseEb:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1875
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_10async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EEENS6_4coro4LazyISC_EERT_T0_EUlOSN_E_SI_EENSL_ISN_EESP_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSN_EUlvE_EESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio19basic_stream_socketINS9_2ip3tcpENS9_15any_io_executorEEENS9_17mutable_buffers_1EEENS1_4coro4LazyIS7_EERT_T0_EUlOSJ_E_SE_EENSH_ISJ_EESL_RT1_EUlvE_SD_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSJ_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_10async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EEENS6_4coro4LazyISC_EERT_T0_EUlOSN_E_SI_EENSL_ISN_EESP_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSN_EUlvE_EESaIvEE3ptrD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_10async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EEENS6_4coro4LazyISC_EERT_T0_EUlOSN_E_SI_EENSL_ISN_EESP_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSN_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %i.q

_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_10async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EEENS6_4coro4LazyISC_EERT_T0_EUlOSN_E_SI_EENSL_ISN_EESP_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSN_EUlvE_EESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4asio2iplsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_7addressE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(28) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.a = load i32, ptr %1, align 4, !tbaa !1349, !noalias !5323
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNK4asio2ip10address_v69to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  br label %_ZNK4asio2ip7address9to_stringB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @_ZNK4asio2ip10address_v49to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br label %_ZNK4asio2ip7address9to_stringB5cxx11Ev.exit

_ZNK4asio2ip7address9to_stringB5cxx11Ev.exit:     ; preds = %bb.b, %bb.c
  %i.e = load ptr, ptr %2, align 8, !tbaa !221    ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4asio2ip7address9to_stringB5cxx11Ev.exit
  %i.f = load ptr, ptr %0, align 8, !tbaa !195
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1132
  %i.l = or i32 %i.k, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %i.l)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f

bb.e:                                             ; preds = %_ZNK4asio2ip7address9to_stringB5cxx11Ev.exit
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #41
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef %i.m)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d, %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !221    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !211
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret ptr %0

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !221    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !211
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZN7coro_io11ib_socket_t7init_fdEvEUlOT_E_EEvS8_Q14isLazyCallbackIS7_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.89)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #41
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !257
  %i.d = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #57
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !5324 ; 6 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZN7coro_io11ib_socket_t7init_fdEvEUlOT_E_EEvS8_Q14isLazyCallbackIS7_TL0__EENKUlS3_S9_E_clES3_S9_.resume, ptr %i.d, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZN7coro_io11ib_socket_t7init_fdEvEUlOT_E_EEvS8_Q14isLazyCallbackIS7_TL0__EENKUlS3_S9_E_clES3_S9_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr26.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.reload.addr27.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr27.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr26.i, align 8, !tbaa !255, !alias.scope !5327
  %index.addr28.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 0, ptr %index.addr28.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !255
  %i.f = load ptr, ptr %i.a, align 8
  tail call void %i.f(ptr nonnull %i.a), !inline_history !5324
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i32, ptr } @_ZN7coro_io6detail24ib_socket_shared_state_t15poll_completionEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.623", align 8    ; 5 uses
  %2 = alloca %"class.async_simple::util::move_only_function.523", align 8 ; 11 uses
  %3 = alloca %"struct.std::pair.623", align 8    ; 5 uses
  %4 = alloca %"class.async_simple::util::move_only_function.523", align 8 ; 11 uses
  %5 = alloca %"class.async_simple::util::move_only_function.523", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %7 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %8 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %9 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %10 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %11 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %struct.ibv_wc, align 8            ; 9 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.async_simple::util::move_only_function.523", align 8 ; 12 uses
  %15 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %16 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %17 = alloca %"class.easylog::record_t", align 8 ; 12 uses
  %18 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %19 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %20 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %23 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %24 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %25 = alloca %"struct.refvalue::meta_string.569", align 1 ; 7 uses
  %26 = alloca %"struct.coro_io::ib_buffer_t", align 16 ; 11 uses
  %27 = alloca %"struct.coro_io::ib_buffer_t", align 8 ; 4 uses
  %28 = alloca %"struct.coro_io::ib_buffer_t", align 8 ; 4 uses
  %.sroa.0416 = alloca %"class.std::error_code", align 8 ; 5 uses
  %.sroa.0 = alloca %"class.std::error_code", align 8 ; 5 uses
  %29 = alloca %"class.async_simple::util::move_only_function.523", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1374
  store ptr %i.g, ptr %i.c, align 8, !tbaa !1374
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1373
  %i.j = call i32 @ibv_get_cq_event(ptr noundef %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.u, label %bb.b, !prof !321

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
  %i.m = load atomic i32, ptr %i.l monotonic, align 8
  %i.n = icmp slt i32 %i.m, 4
  br i1 %i.n, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #41 ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv() ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.t, align 8, !tbaa !316
  %i.u = sub nsw i64 %i.o, %.sroa.0.0.copyload.i2.i.i
  %i.v = sdiv i64 %i.u, 1000000
  %i.w = load atomic i64, ptr %i.q monotonic, align 8
  %i.x = srem i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load atomic i64, ptr %i.y monotonic, align 8
  %i.aa = icmp slt i64 %i.x, %i.z
  br i1 %i.aa, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.k

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %bb.c, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store i8 91, ptr %7, align 1, !alias.scope !5361
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io6detail24ib_socket_shared_state_t15poll_completionEvENKUlvE_clEv.prefix, i64 17, i1 false), !tbaa.struct !896
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.88, i64 3, i1 false), !tbaa.struct !318
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 %i.o, i32 noundef 3, i64 20, ptr nonnull %7)
  %i.ab = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA49_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 1 dereferenceable(49) @.str.340)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.ac = tail call ptr @__errno_location() #55
  %i.ad = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIiEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.ac)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA6_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 1 dereferenceable(6) @.str.96)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !897
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %i.ai = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIjEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.ah)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !319, !noundef !320
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.i, !prof !223

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(80) %i.ai)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.j

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.h, %bb.i
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.ic

bb.k:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %bb.b
  %i.an = tail call ptr @__errno_location() #55
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !212
  %.not107 = icmp eq i32 %i.ao, 11
  br i1 %.not107, label %bb.ib, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 8
  %i.ar = icmp slt i32 %i.aq, 5
  br i1 %i.ar, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.as = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #41 ; 2 uses
  %i.at = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv() ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load atomic i64, ptr %i.au monotonic, align 8
  %i.aw = icmp slt i64 %i.av, 1
  br i1 %i.aw, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.0.0.copyload.i2.i.i110 = load i64, ptr %i.ax, align 8, !tbaa !316
  %i.ay = sub nsw i64 %i.as, %.sroa.0.0.copyload.i2.i.i110
  %i.az = sdiv i64 %i.ay, 1000000
  %i.ba = load atomic i64, ptr %i.au monotonic, align 8
  %i.bb = srem i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %i.be = icmp slt i64 %i.bb, %i.bd
  br i1 %i.be, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112.thread, label %bb.t

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112.thread: ; preds = %bb.m, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store i8 91, ptr %9, align 1, !alias.scope !5362
  %.sroa.0.i.sroa.4.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %9, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i113, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io6detail24ib_socket_shared_state_t15poll_completionEvENKUlvE0_clEv.prefix, i64 17, i1 false), !tbaa.struct !896
  %.sroa.0.i.sroa.5.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %9, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i114, ptr noundef nonnull align 1 dereferenceable(3) @.str.88, i64 3, i1 false), !tbaa.struct !318
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %8, i64 %i.as, i32 noundef 4, i64 20, ptr nonnull %9)
  %i.bf = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA33_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 1 dereferenceable(33) @.str.341)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112.thread
  %i.bg = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA6_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 1 dereferenceable(6) @.str.310)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !897
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  %i.bk = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIjEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bm = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !319, !noundef !320
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117, label %bb.r, !prof !223

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull align 8 dereferenceable(80) %i.bk)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117 unwind label %bb.s

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117: ; preds = %bb.q, %bb.r
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.ic

bb.t:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit112, %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117, %bb.l
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #55
  br label %bb.ib

bb.u:                                             ; preds = %bb.a
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !1374
  call void @ibv_ack_cq_events(ptr noundef %i.bq, i32 noundef 1)
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !1374 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1757
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1758
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull %i.br, i32 noundef 0), !inline_history !110 ; 3 uses
  %.not82 = icmp eq i32 %i.bv, 0
  br i1 %.not82, label %bb.af, label %bb.v, !prof !321

bb.v:                                             ; preds = %bb.u
  %i.bw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
  %i.bx = load atomic i32, ptr %i.bw monotonic, align 8
  %i.by = icmp slt i32 %i.bx, 6
  br i1 %i.by, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.bz = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #41 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN7coro_io6detail24ib_socket_shared_state_t15poll_completionEv:bb.a
  %i.tg = load ptr, ptr %i.ea, align 8, !tbaa !221
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.sz
  store i8 0, ptr %i.th, align 1, !tbaa !211
  %i.ti = load ptr, ptr %i.dr, align 8, !tbaa !897
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 52
  %i.tk = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIjEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull align 4 dereferenceable(4) %i.tj)
          to label %bb.fw unwind label %.loopexit519

bb.fw:                                            ; preds = %bb.fv
  %i.tl = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.tm = icmp eq i8 %i.tl, 0
  br i1 %i.tm, label %bb.fx, label %_ZN7easylog6loggerILm0EE8instanceEv.exit364, !prof !213

bb.fx:                                            ; preds = %bb.fw
  %i.tn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i361 = icmp eq i32 %i.tn, 0
  br i1 %.not.i361, label %_ZN7easylog6loggerILm0EE8instanceEv.exit364, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.fz unwind label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.to = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit364

bb.ga:                                            ; preds = %bb.fy
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.body362

_ZN7easylog6loggerILm0EE8instanceEv.exit364:      ; preds = %bb.fz, %bb.fx, %bb.fw
  %i.tq = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !319, !noundef !320
  %i.tr = trunc nuw i8 %i.tq to i1
  br i1 %i.tr, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit366, label %bb.gb, !prof !223

bb.gb:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit364
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %i.tk)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit366 unwind label %.loopexit519

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit366: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit364, %bb.gb
  %i.ts = load ptr, ptr %i.ea, align 8, !tbaa !221 ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.ec
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit366
  %i.tu = load i64, ptr %i.ec, align 8, !tbaa !211
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tv) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367
  %i.tw = load ptr, ptr %i.ed, align 8, !tbaa !221 ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.ee
  br i1 %i.tx, label %_ZN7easylog8record_tD2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368
  %i.ty = load i64, ptr %i.ee, align 8, !tbaa !211
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #50
  br label %_ZN7easylog8record_tD2Ev.exit372

_ZN7easylog8record_tD2Ev.exit372:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  br label %bb.ge

bb.gc:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit338.thread
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit519:                                     ; preds = %bb.fv, %bb.fr, %bb.fu, %bb.gb
  %lpad.loopexit521 = landingpad { ptr, i32 }
          cleanup
  br label %.body362

.loopexit.split-lp520:                            ; preds = %.invoke1674
  %lpad.loopexit.split-lp522 = landingpad { ptr, i32 }
          cleanup
  br label %.body362

.body362:                                         ; preds = %.loopexit519, %.loopexit.split-lp520, %bb.ga
  %eh.lpad-body363 = phi { ptr, i32 } [ %i.tp, %bb.ga ], [ %lpad.loopexit521, %.loopexit519 ], [ %lpad.loopexit.split-lp522, %.loopexit.split-lp520 ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %24) #41
  br label %bb.gd

bb.gd:                                            ; preds = %.body362, %bb.gc
  %.pn91 = phi { ptr, i32 } [ %eh.lpad-body363, %.body362 ], [ %i.ua, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  br label %.body

bb.ge:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit338, %_ZN7easylog8record_tD2Ev.exit372, %_ZN7easylog6loggerILm0EE8instanceEv.exit331
  store i8 1, ptr %i.ef, align 1, !tbaa !894
  invoke void @_ZN7coro_io6detail24ib_socket_shared_state_t5closeEb(ptr noundef nonnull align 8 dereferenceable(464) %0, i1 noundef zeroext true)
          to label %bb.ag unwind label %bb.an, !llvm.loop !5341

bb.gf:                                            ; preds = %bb.fe
  %i.ub = load ptr, ptr %i.eo, align 8, !tbaa !193
  %.not.i.i373.not = icmp eq ptr %i.ub, null
  br i1 %.not.i.i373.not, label %bb.gr, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !5379)
  %i.uc = load i32, ptr %i.eq, align 8, !tbaa !1011, !noalias !5379
  %i.ud = add i32 %i.uc, 1
  %i.ue = zext i32 %i.ud to i64
  %i.uf = load ptr, ptr %i.er, align 8, !tbaa !1012, !noalias !5379
  %i.ug = load ptr, ptr %i.ep, align 8, !tbaa !1013, !noalias !5379 ; 2 uses
  %i.uh = ptrtoint ptr %i.uf to i64
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = sdiv exact i64 %i.uj, 56
  %i.ul = urem i64 %i.ue, %i.uk                   ; 2 uses
  %i.um = trunc nuw i64 %i.ul to i32
  store i32 %i.um, ptr %i.eq, align 8, !tbaa !1011, !noalias !5379
  store i8 1, ptr %i.es, align 8, !tbaa !1014, !noalias !5379
  %i.un = getelementptr inbounds nuw [56 x i8], ptr %i.ug, i64 %i.ul ; 7 uses
  %i.uo = load <2 x ptr>, ptr %i.un, align 8, !tbaa !255, !noalias !5379
  store <2 x ptr> %i.uo, ptr %26, align 16, !tbaa !255, !alias.scope !5379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.un, i8 0, i64 16, i1 false), !noalias !5379
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 16 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !797, !noalias !5379
  store ptr %i.uq, ptr %i.et, align 16, !tbaa !797, !alias.scope !5379
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !1016, !noalias !5379
  store i64 %i.us, ptr %i.eu, align 8, !tbaa !1016, !alias.scope !5379
  %i.ut = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 40
  %i.uv = load <2 x ptr>, ptr %i.ut, align 8, !tbaa !255, !noalias !5379
  store ptr null, ptr %i.uu, align 8, !tbaa !240, !noalias !5379
  store <2 x ptr> %i.uv, ptr %i.ev, align 16, !tbaa !255, !alias.scope !5379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.up, i8 0, i64 24, i1 false), !noalias !5379
  %i.uw = getelementptr inbounds nuw i8, ptr %i.un, i64 48 ; 2 uses
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !1018, !noalias !5379
  store i64 %i.ux, ptr %i.ew, align 16, !tbaa !1018, !alias.scope !5379
  store ptr null, ptr %i.uw, align 8, !tbaa !1018, !noalias !5379
  %i.uy = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN7coro_io11ib_buffer_taSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ex, ptr noundef nonnull align 8 dereferenceable(56) %26)
          to label %bb.gh unwind label %bb.gp     ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %27, i8 0, i64 56, i1 false)
  %i.uz = load i64, ptr %i.ey, align 8, !tbaa !1457
  invoke void @_ZN7coro_io6detail24ib_socket_shared_state_t15add_recv_bufferENS_11ib_buffer_tEm(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(56) %27, i64 noundef %i.uz)
          to label %bb.gi unwind label %bb.gq

bb.gi:                                            ; preds = %bb.gh
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.va = load ptr, ptr %i.fb, align 8, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 16, i1 false), !tbaa.struct !522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.en, i64 16, i1 false)
  %i.vb = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !255
  %i.vc = load ptr, ptr %i.dm, align 8, !tbaa !255 ; 2 uses
  store <2 x ptr> %i.vb, ptr %i.ez, align 8, !tbaa !255
  %i.vd = load <2 x ptr>, ptr %i.eo, align 8, !tbaa !255
  store ptr null, ptr %i.eo, align 8, !tbaa !255
  store ptr %i.va, ptr %i.fa, align 8, !tbaa !255
  store <2 x ptr> %i.vd, ptr %i.dm, align 8, !tbaa !255
  %.not.i.i374 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i374, label %_ZN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEaSEOS6_.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  invoke void %i.vc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 0)
          to label %_ZN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEaSEOS6_.exit unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ve = landingpad { ptr, i32 }
          catch ptr null
  %i.vf = extractvalue { ptr, i32 } %i.ve, 0
  call void @__clang_call_terminate(ptr %i.vf) #49
  unreachable

_ZN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEaSEOS6_.exit: ; preds = %bb.gi, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.vg = load i32, ptr %i.dx, align 4, !tbaa !5377
  %i.vh = zext i32 %i.vg to i64                   ; 2 uses
  %.not.i.i375 = icmp eq ptr %.sroa.11.0.ph.ph, %.sroa.20.0.ph.ph
  br i1 %.not.i.i375, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %_ZN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEaSEOS6_.exit
  store i32 %i.kt, ptr %.sroa.11.0.ph.ph, align 8, !tbaa !212
  %.sroa.0428.sroa.7.0..sroa.11.0..sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.ph, i64 8
  store ptr @_ZZN7coro_io22ib_error_code_category8instanceEvE8instance, ptr %.sroa.0428.sroa.7.0..sroa.11.0..sroa.11.8..sroa_idx, align 8, !tbaa !434
  %.sroa.6429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.ph, i64 16
  store i64 %i.vh, ptr %.sroa.6429.0..sroa_idx, align 8, !tbaa !316
  %.sroa.7432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.ph, i64 24
  store i64 0, ptr %.sroa.7432.0..sroa_idx, align 8, !tbaa !316
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.ph, i64 32
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit

bb.gm:                                            ; preds = %_ZN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEaSEOS6_.exit
  %i.vj = ptrtoint ptr %.sroa.11.0.ph.ph to i64
  %i.vk = ptrtoint ptr %.sroa.0440.0.ph.ph to i64
  %i.vl = sub i64 %i.vj, %i.vk                    ; 4 uses
  %i.vm = icmp eq i64 %i.vl, 9223372036854775776
  br i1 %i.vm, label %bb.gn, label %_ZNKSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc376 unwind label %.loopexit.split-lp515

.noexc376:                                        ; preds = %bb.gn
  unreachable

_ZNKSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.gm
  %i.vn = ashr exact i64 %i.vl, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.vn, i64 1)
  %30 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.vn ; 2 uses
  %i.vo = icmp ult i64 %30, %i.vn
  %i.vp = call i64 @llvm.umin.i64(i64 %30, i64 288230376151711743)
  %i.vq = select i1 %i.vo, i64 288230376151711743, i64 %i.vp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.vq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.vr = shl nuw nsw i64 %i.vq, 5
  %i.vs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vr) #51
          to label %.noexc377 unwind label %.loopexit514 ; 5 uses

.noexc377:                                        ; preds = %_ZNKSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vl ; 4 uses
  store i32 %i.kt, ptr %i.vt, align 8, !tbaa !212
  %.sroa.0428.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  store ptr @_ZZN7coro_io22ib_error_code_category8instanceEvE8instance, ptr %.sroa.0428.sroa.7.0..sroa_idx, align 8, !tbaa !434
  %.sroa.6429.0..sroa_idx430 = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store i64 %i.vh, ptr %.sroa.6429.0..sroa_idx430, align 8, !tbaa !316
  %.sroa.7432.0..sroa_idx433 = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  store i64 0, ptr %.sroa.7432.0..sroa_idx433, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0440.0.ph.ph, %.sroa.11.0.ph.ph
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc377, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.vv, %.lr.ph.i.i.i.i.i.i ], [ %i.vs, %.noexc377 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.vu, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0440.0.ph.ph, %.noexc377 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !5380, !alias.scope !5381
  %i.vu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.vu, %.sroa.11.0.ph.ph
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5355

_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc377
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.vs, %.noexc377 ], [ %i.vv, %.lr.ph.i.i.i.i.i.i ]
  %i.vw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0440.0.ph.ph, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.go

bb.go:                                            ; preds = %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.0.ph.ph, i64 noundef %i.vl) #50
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.go, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.vx = getelementptr inbounds nuw [32 x i8], ptr %i.vs, i64 %i.vq
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit

bb.gp:                                            ; preds = %bb.gg
  %i.vy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %.body

bb.gq:                                            ; preds = %bb.gh
  %i.vz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #41
  br label %.body

.loopexit514:                                     ; preds = %_ZNKSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit516 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp515:                            ; preds = %bb.gn
  %lpad.loopexit.split-lp517 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gr:                                            ; preds = %bb.gf
  %i.wa = zext i32 %i.rp to i64
  store i8 0, ptr %i.fe, align 8, !tbaa !1458
  %i.wb = load i32, ptr %i.ff, align 4, !tbaa !1877
  %i.wc = add i32 %i.wb, 1
  %i.wd = zext i32 %i.wc to i64
  %i.we = load ptr, ptr %i.fg, align 8, !tbaa !1464
  %i.wf = load ptr, ptr %i.fd, align 8, !tbaa !1459 ; 2 uses
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = sub i64 %i.wg, %i.wh
  %i.wj = sdiv exact i64 %i.wi, 24
  %i.wk = urem i64 %i.wd, %i.wj                   ; 2 uses
  %i.wl = trunc nuw i64 %i.wk to i32
  store i32 %i.wl, ptr %i.ff, align 4, !tbaa !1877
  %i.wm = getelementptr inbounds nuw [24 x i8], ptr %i.wf, i64 %i.wk ; 3 uses
  store i32 %i.kt, ptr %i.wm, align 8, !tbaa !212
  %.sroa.0427.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store ptr @_ZZN7coro_io22ib_error_code_category8instanceEvE8instance, ptr %.sroa.0427.sroa.5.0..sroa_idx, align 8, !tbaa !434
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store i64 %i.wa, ptr %i.wn, align 8, !tbaa !1000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %28, i8 0, i64 56, i1 false)
  %i.wo = load i64, ptr %i.ey, align 8, !tbaa !1457
  invoke void @_ZN7coro_io6detail24ib_socket_shared_state_t15add_recv_bufferENS_11ib_buffer_tEm(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(56) %28, i64 noundef %i.wo)
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #41
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit

bb.gt:                                            ; preds = %bb.gr
  %i.wp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #41
  br label %.body

bb.gu:                                            ; preds = %bb.fd
  %i.wq = zext i32 %i.rp to i64                   ; 2 uses
  %.not.i.i378 = icmp eq ptr %.sroa.11.0.ph.ph, %.sroa.20.0.ph.ph
  br i1 %.not.i.i378, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  store i32 %i.kt, ptr %.sroa.11.0.ph.ph, align 8, !tbaa !212
  %.sroa.0422.sroa.7.0..sroa.11.0..sroa.11.8.446.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.ph, i64 8
  store ptr @_ZZN7coro_io22ib_error_code_category8instanceEvE8instance, ptr %.sroa.0422.sroa.7.0..sroa.11.0..sroa.11.8.446.sroa_idx, align 8, !tbaa !434
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.ph, i64 16
  store i64 %i.wq, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !316
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.ph, i64 24
  store i64 %i.rn, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !316
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph.ph, i64 32
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit

bb.gw:                                            ; preds = %bb.gu
  %i.ws = ptrtoint ptr %.sroa.11.0.ph.ph to i64
  %i.wt = ptrtoint ptr %.sroa.0440.0.ph.ph to i64
  %i.wu = sub i64 %i.ws, %i.wt                    ; 4 uses
  %i.wv = icmp eq i64 %i.wu, 9223372036854775776
  br i1 %i.wv, label %bb.gx, label %_ZNKSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i379

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc391.a unwind label %.loopexit.split-lp510

.noexc391.a:                                      ; preds = %bb.gx
  unreachable

_ZNKSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i379: ; preds = %bb.gw
  %i.ww = ashr exact i64 %i.wu, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i380 = call i64 @llvm.umax.i64(i64 %i.ww, i64 1)
  %31 = add nsw i64 %.sroa.speculated.i.i.i.i380, %i.ww ; 2 uses
  %i.wx = icmp ult i64 %31, %i.ww
  %i.wy = call i64 @llvm.umin.i64(i64 %31, i64 288230376151711743)
  %i.wz = select i1 %i.wx, i64 288230376151711743, i64 %i.wy ; 3 uses
  %.not.i.i.i.i381 = icmp ne i64 %i.wz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i381)
  %i.xa = shl nuw nsw i64 %i.wz, 5
  %i.xb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xa) #51
          to label %.noexc392 unwind label %.loopexit509 ; 5 uses

.noexc392:                                        ; preds = %_ZNKSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i379
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.wu ; 4 uses
  store i32 %i.kt, ptr %i.xc, align 8, !tbaa !212
  %.sroa.0422.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  store ptr @_ZZN7coro_io22ib_error_code_category8instanceEvE8instance, ptr %.sroa.0422.sroa.7.0..sroa_idx, align 8, !tbaa !434
  %.sroa.6.0..sroa_idx423 = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  store i64 %i.wq, ptr %.sroa.6.0..sroa_idx423, align 8, !tbaa !316
  %.sroa.7.0..sroa_idx425 = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  store i64 %i.rn, ptr %.sroa.7.0..sroa_idx425, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i382 = icmp eq ptr %.sroa.0440.0.ph.ph, %.sroa.11.0.ph.ph
  br i1 %.not10.i.i.i.i.i.i382, label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i387, label %.lr.ph.i.i.i.i.i.i383

.lr.ph.i.i.i.i.i.i383:                            ; preds = %.noexc392, %.lr.ph.i.i.i.i.i.i383
  %.012.i.i.i.i.i.i384 = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i.i383 ], [ %i.xb, %.noexc392 ] ; 2 uses
  %.0911.i.i.i.i.i.i385 = phi ptr [ %i.xd, %.lr.ph.i.i.i.i.i.i383 ], [ %.sroa.0440.0.ph.ph, %.noexc392 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i384, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i385, i64 32, i1 false), !tbaa.struct !5380, !alias.scope !5382
  %i.xd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i385, i64 32 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i384, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i386 = icmp eq ptr %i.xd, %.sroa.11.0.ph.ph
  br i1 %.not.i.i.i.i.i.i386, label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i387, label %.lr.ph.i.i.i.i.i.i383, !llvm.loop !5355

_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i387: ; preds = %.lr.ph.i.i.i.i.i.i383, %.noexc392
  %.0.lcssa.i.i.i.i.i.i388 = phi ptr [ %i.xb, %.noexc392 ], [ %i.xe, %.lr.ph.i.i.i.i.i.i383 ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i388, i64 32
  %.not.i23.i.i.i389 = icmp eq ptr %.sroa.0440.0.ph.ph, null
  br i1 %.not.i23.i.i.i389, label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i390, label %bb.gy

bb.gy:                                            ; preds = %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i387
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.0.ph.ph, i64 noundef %i.wu) #50
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i390

_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i390: ; preds = %bb.gy, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i387
  %i.xg = getelementptr inbounds nuw [32 x i8], ptr %i.xb, i64 %i.wz
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit

.loopexit509:                                     ; preds = %_ZNKSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i379
  %lpad.loopexit511 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp510:                            ; preds = %bb.gx
  %lpad.loopexit.split-lp512 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.gv, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i390, %bb.gl, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.gs
  %.sroa.0440.1 = phi ptr [ %.sroa.0440.0.ph.ph, %bb.gl ], [ %.sroa.0440.0.ph.ph, %bb.gs ], [ %i.vs, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.xb, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i390 ], [ %.sroa.0440.0.ph.ph, %bb.gv ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %i.vi, %bb.gl ], [ %.sroa.11.0.ph.ph, %bb.gs ], [ %i.vw, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.xf, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i390 ], [ %i.wr, %bb.gv ] ; 2 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.0.ph.ph, %bb.gl ], [ %.sroa.20.0.ph.ph, %bb.gs ], [ %i.vx, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.xg, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i390 ], [ %.sroa.20.0.ph.ph, %bb.gv ] ; 2 uses
  %i.xh = load ptr, ptr %i.f, align 8, !tbaa !1374
  %.not.i394.a = icmp eq ptr %i.xh, null
  br i1 %.not.i394.a, label %.loopexit, label %.outer.outer, !llvm.loop !5341

.loopexit:                                        ; preds = %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit, %_ZL11ibv_poll_cqP6ibv_cqiP6ibv_wc.exit, %bb.bk
  %.sroa.0458.1 = phi i32 [ 5, %bb.bk ], [ %.sroa.0458.0, %_ZL11ibv_poll_cqP6ibv_cqiP6ibv_wc.exit ], [ %i.kt, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.11466.1 = phi ptr [ %i.ii, %bb.bk ], [ %.sroa.11466.0, %_ZL11ibv_poll_cqP6ibv_cqiP6ibv_wc.exit ], [ @_ZZN7coro_io22ib_error_code_category8instanceEvE8instance, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.0440.3 = phi ptr [ %.sroa.0440.0.ph.ph, %bb.bk ], [ %.sroa.0440.0.ph.ph, %_ZL11ibv_poll_cqP6ibv_cqiP6ibv_wc.exit ], [ %.sroa.0440.1, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit ] ; 7 uses
  %.sroa.11.3 = phi ptr [ %.sroa.11.0.ph.ph, %bb.bk ], [ %.sroa.11.0.ph.ph, %_ZL11ibv_poll_cqP6ibv_cqiP6ibv_wc.exit ], [ %.sroa.11.1, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.20.3 = phi ptr [ %.sroa.20.0.ph.ph, %bb.bk ], [ %.sroa.20.0.ph.ph, %_ZL11ibv_poll_cqP6ibv_cqiP6ibv_wc.exit ], [ %.sroa.20.1, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.xi = icmp eq ptr %.sroa.0440.3, %.sroa.11.3
  br i1 %i.xi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.xn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.5417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.hc

._crit_edge:                                      ; preds = %bb.hx, %.loopexit
  %i.xt = load ptr, ptr %i.dm, align 8, !tbaa !193 ; 2 uses
  %.not.i395 = icmp eq ptr %i.xt, null
  br i1 %.not.i395, label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit, label %bb.gz

bb.gz:                                            ; preds = %._crit_edge
  invoke void %i.xt(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef zeroext 0)
          to label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.xu = landingpad { ptr, i32 }
          catch ptr null
  %i.xv = extractvalue { ptr, i32 } %i.xu, 0
  call void @__clang_call_terminate(ptr %i.xv) #49
  unreachable

_ZN12async_simple4util6detail14_function_baseD2Ev.exit: ; preds = %._crit_edge, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  %.not.i.i.i396 = icmp eq ptr %.sroa.0440.3, null
  br i1 %.not.i.i.i396, label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit, label %bb.hb

bb.hb:                                            ; preds = %_ZN12async_simple4util6detail14_function_baseD2Ev.exit
  %i.xw = ptrtoint ptr %.sroa.20.3 to i64
  %i.xx = ptrtoint ptr %.sroa.0440.3 to i64
  %i.xy = sub i64 %i.xw, %i.xx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.3, i64 noundef %i.xy) #50
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit

_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit: ; preds = %_ZN12async_simple4util6detail14_function_baseD2Ev.exit, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.ib

bb.hc:                                            ; preds = %.lr.ph, %bb.hx
  %.sroa.0419.0819 = phi ptr [ %.sroa.0440.3, %.lr.ph ], [ %i.zv, %bb.hx ] ; 6 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0419.0819, i64 24
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !5384
  %i.yb = icmp eq i64 %i.ya, 0
  br i1 %i.yb, label %bb.hd, label %bb.hl

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0416)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0416, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0419.0819, i64 16, i1 false), !tbaa.struct !435
  %i.yc = load ptr, ptr %i.dm, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.yc, null
  br i1 %.not.i.i.not.i, label %_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit, label %bb.he, !prof !223

bb.he:                                            ; preds = %bb.hd
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0419.0819, i64 16
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 16, i1 false)
  store ptr null, ptr %i.dm, align 8, !tbaa !255
  store ptr %i.yc, ptr %i.xr, align 8, !tbaa !255
  %i.yf = load ptr, ptr %i.fc, align 8, !tbaa !255 ; 2 uses
  %i.yg = load ptr, ptr %i.xs, align 8, !tbaa !255
  store ptr %i.yg, ptr %i.fc, align 8, !tbaa !255
  store ptr %i.yf, ptr %i.xs, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0416, i64 16, i1 false)
  store i64 %i.ye, ptr %.sroa.5417.0..sroa_idx, align 8
  invoke void %i.yf(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.hf unwind label %bb.hi, !inline_history !60

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.yh = load ptr, ptr %i.xr, align 8, !tbaa !193 ; 2 uses
  %.not.i.i397 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i397, label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  invoke void %i.yh(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef zeroext 0)
          to label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit.i unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.yi = landingpad { ptr, i32 }
          catch ptr null
  %i.yj = extractvalue { ptr, i32 } %i.yi, 0
  call void @__clang_call_terminate(ptr %i.yj) #49
  unreachable

_ZN12async_simple4util6detail14_function_baseD2Ev.exit.i: ; preds = %bb.hg, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit

bb.hi:                                            ; preds = %bb.he
  %i.yk = landingpad { ptr, i32 }
          cleanup
  %i.yl = load ptr, ptr %i.xr, align 8, !tbaa !193 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.yl, null
  br i1 %.not.i6.i, label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  invoke void %i.yl(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef zeroext 0)
          to label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ym = landingpad { ptr, i32 }
          catch ptr null
  %i.yn = extractvalue { ptr, i32 } %i.ym, 0
  call void @__clang_call_terminate(ptr %i.yn) #49
  unreachable

_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i: ; preds = %bb.hj, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0416)
  br label %.body

_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit: ; preds = %_ZN12async_simple4util6detail14_function_baseD2Ev.exit.i, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0416)
  br label %bb.hx

bb.hl:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.0419.0819, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0419.0819, i64 16, i1 false), !tbaa.struct !435
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !5385)
  %i.yq = load i32, ptr %i.xk, align 8, !tbaa !1878, !noalias !5385
  %i.yr = add i32 %i.yq, 1
  %i.ys = zext i32 %i.yr to i64
  %i.yt = load ptr, ptr %i.xl, align 8, !tbaa !1033, !noalias !5385
  %i.yu = load ptr, ptr %i.xj, align 8, !tbaa !1034, !noalias !5385 ; 2 uses
  %i.yv = ptrtoint ptr %i.yt to i64
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = sub i64 %i.yv, %i.yw
  %i.yy = ashr exact i64 %i.yx, 5
  %i.yz = urem i64 %i.ys, %i.yy                   ; 2 uses
  %i.za = trunc nuw i64 %i.yz to i32
  store i32 %i.za, ptr %i.xk, align 8, !tbaa !1878, !noalias !5385
  store i8 1, ptr %i.xm, align 8, !tbaa !1031, !noalias !5385
  %i.zb = getelementptr inbounds nuw [32 x i8], ptr %i.yu, i64 %i.yz ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %i.zb, i64 16, i1 false)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 16 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !255, !noalias !5385
  store ptr null, ptr %i.zc, align 8, !tbaa !255, !noalias !5385
  store ptr %i.zd, ptr %i.xn, align 8, !tbaa !255, !alias.scope !5385
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 24 ; 2 uses
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !255, !noalias !5385 ; 2 uses
  %i.zg = load ptr, ptr %i.xo, align 8, !tbaa !255, !alias.scope !5385
  store ptr %i.zg, ptr %i.ze, align 8, !tbaa !255, !noalias !5385
  %i.zh = load ptr, ptr %i.xn, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.not.i400 = icmp eq ptr %i.zh, null
  br i1 %.not.i.i.not.i400, label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit409, label %bb.hm, !prof !223

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 16, i1 false)
  store ptr null, ptr %i.xn, align 8, !tbaa !255
  store ptr %i.zh, ptr %i.xp, align 8, !tbaa !255
  %i.zi = load ptr, ptr %i.xq, align 8, !tbaa !255
  store ptr %i.zi, ptr %i.xo, align 8, !tbaa !255
  store ptr %i.zf, ptr %i.xq, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %i.yp, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void %i.zf(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.hn unwind label %bb.hq, !inline_history !60

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.zj = load ptr, ptr %i.xp, align 8, !tbaa !193 ; 2 uses
  %.not.i.i403 = icmp eq ptr %i.zj, null
  br i1 %.not.i.i403, label %_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit407, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  invoke void %i.zj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 0)
          to label %_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit407 unwind label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.zk = landingpad { ptr, i32 }
          catch ptr null
  %i.zl = extractvalue { ptr, i32 } %i.zk, 0
  call void @__clang_call_terminate(ptr %i.zl) #49
  unreachable

bb.hq:                                            ; preds = %bb.hm
  %i.zm = landingpad { ptr, i32 }
          cleanup
  %i.zn = load ptr, ptr %i.xp, align 8, !tbaa !193 ; 2 uses
  %.not.i6.i401 = icmp eq ptr %i.zn, null
  br i1 %.not.i6.i401, label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i402, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  invoke void %i.zn(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 0)
          to label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i402 unwind label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.zo = landingpad { ptr, i32 }
          catch ptr null
  %i.zp = extractvalue { ptr, i32 } %i.zo, 0
  call void @__clang_call_terminate(ptr %i.zp) #49
  unreachable

_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i402: ; preds = %bb.hr, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.zq = load ptr, ptr %i.xn, align 8, !tbaa !193 ; 2 uses
  %.not.i410 = icmp eq ptr %i.zq, null
  br i1 %.not.i410, label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit411, label %bb.hv

_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit407: ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %.pr = load ptr, ptr %i.xn, align 8, !tbaa !193 ; 2 uses
  %.not.i408 = icmp eq ptr %.pr, null
  br i1 %.not.i408, label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit409, label %bb.ht

bb.ht:                                            ; preds = %_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit407
  invoke void %.pr(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %29, i8 noundef zeroext 0)
          to label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit409 unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.zr = landingpad { ptr, i32 }
          catch ptr null
  %i.zs = extractvalue { ptr, i32 } %i.zr, 0
  call void @__clang_call_terminate(ptr %i.zs) #49
  unreachable

_ZN12async_simple4util6detail14_function_baseD2Ev.exit409: ; preds = %bb.hl, %_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit407, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.hx

bb.hv:                                            ; preds = %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i402
  invoke void %i.zq(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %29, i8 noundef zeroext 0)
          to label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit411 unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.zt = landingpad { ptr, i32 }
          catch ptr null
  %i.zu = extractvalue { ptr, i32 } %i.zt, 0
  call void @__clang_call_terminate(ptr %i.zu) #49
  unreachable

_ZN12async_simple4util6detail14_function_baseD2Ev.exit411: ; preds = %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i402, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.body

bb.hx:                                            ; preds = %_ZN12async_simple4util6detail14_function_baseD2Ev.exit409, %_ZN7coro_io6detail24ib_socket_shared_state_t6resumeEOSt4pairISt10error_codemEON12async_simple4util18move_only_functionIFvS4_EEE.exit
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.0419.0819, i64 32 ; 2 uses
  %i.zw = icmp eq ptr %i.zv, %.sroa.11.3
  br i1 %i.zw, label %._crit_edge, label %bb.hc

.body:                                            ; preds = %.loopexit509, %.loopexit.split-lp510, %.loopexit514, %.loopexit.split-lp515, %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i, %_ZN12async_simple4util6detail14_function_baseD2Ev.exit411, %bb.fo, %bb.eg, %bb.cy, %bb.bu, %bb.as, %bb.am, %bb.ct, %bb.an, %bb.fj, %bb.eb, %bb.bp, %bb.gd, %bb.fc, %bb.dw, %bb.ck, %bb.bj, %bb.gt, %bb.gq, %bb.gp
  %.sroa.0440.4 = phi ptr [ %.sroa.0440.0.ph.ph, %bb.bu ], [ %.sroa.0440.0.ph.ph, %bb.bj ], [ %.sroa.0440.0.ph.ph, %bb.am ], [ %.sroa.0440.0.ph.ph, %bb.fo ], [ %.sroa.0440.0.ph.ph, %bb.ck ], [ %.sroa.0440.0.ph.ph, %bb.fc ], [ %.sroa.0440.0.ph.ph, %bb.gd ], [ %.sroa.0440.0.ph.ph, %bb.cy ], [ %.sroa.0440.0.ph.ph, %bb.as ], [ %.sroa.0440.0.ph.ph, %bb.gq ], [ %.sroa.0440.0.ph.ph, %bb.gp ], [ %.sroa.0440.0.ph.ph, %bb.gt ], [ %.sroa.0440.0.ph.ph, %.loopexit.split-lp515 ], [ %.sroa.0440.0.ph.ph, %bb.eg ], [ %.sroa.0440.0.ph.ph, %bb.dw ], [ %.sroa.0440.3, %_ZN12async_simple4util6detail14_function_baseD2Ev.exit411 ], [ %.sroa.0440.3, %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i ], [ %.sroa.0440.0.ph.ph, %bb.bp ], [ %.sroa.0440.0.ph.ph, %bb.eb ], [ %.sroa.0440.0.ph.ph, %bb.fj ], [ %.sroa.0440.0.ph.ph, %bb.an ], [ %.sroa.0440.0.ph.ph, %bb.ct ], [ %.sroa.0440.0.ph.ph, %.loopexit514 ], [ %.sroa.0440.0.ph.ph, %.loopexit509 ], [ %.sroa.0440.0.ph.ph, %.loopexit.split-lp510 ] ; 3 uses
  %.sroa.20.4 = phi ptr [ %.sroa.20.0.ph.ph, %bb.bu ], [ %.sroa.20.0.ph.ph, %bb.bj ], [ %.sroa.20.0.ph.ph, %bb.am ], [ %.sroa.20.0.ph.ph, %bb.fo ], [ %.sroa.20.0.ph.ph, %bb.ck ], [ %.sroa.20.0.ph.ph, %bb.fc ], [ %.sroa.20.0.ph.ph, %bb.gd ], [ %.sroa.20.0.ph.ph, %bb.cy ], [ %.sroa.20.0.ph.ph, %bb.as ], [ %.sroa.20.0.ph.ph, %bb.gq ], [ %.sroa.20.0.ph.ph, %bb.gp ], [ %.sroa.20.0.ph.ph, %bb.gt ], [ %.sroa.11.0.ph.ph, %.loopexit.split-lp515 ], [ %.sroa.20.0.ph.ph, %bb.eg ], [ %.sroa.20.0.ph.ph, %bb.dw ], [ %.sroa.20.3, %_ZN12async_simple4util6detail14_function_baseD2Ev.exit411 ], [ %.sroa.20.3, %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i ], [ %.sroa.20.0.ph.ph, %bb.bp ], [ %.sroa.20.0.ph.ph, %bb.eb ], [ %.sroa.20.0.ph.ph, %bb.fj ], [ %.sroa.20.0.ph.ph, %bb.an ], [ %.sroa.20.0.ph.ph, %bb.ct ], [ %.sroa.11.0.ph.ph, %.loopexit514 ], [ %.sroa.11.0.ph.ph, %.loopexit509 ], [ %.sroa.11.0.ph.ph, %.loopexit.split-lp510 ]
  %.pn102.pn = phi { ptr, i32 } [ %i.it, %bb.bu ], [ %.pn99, %bb.bj ], [ %i.fr, %bb.am ], [ %i.sd, %bb.fo ], [ %.pn, %bb.ck ], [ %.pn87.pn, %bb.fc ], [ %.pn91, %bb.gd ], [ %i.ll, %bb.cy ], [ %i.ga, %bb.as ], [ %i.vz, %bb.gq ], [ %i.vy, %bb.gp ], [ %i.wp, %bb.gt ], [ %lpad.loopexit.split-lp517, %.loopexit.split-lp515 ], [ %i.ou, %bb.eg ], [ %.pn94.pn.pn, %bb.dw ], [ %i.zm, %_ZN12async_simple4util6detail14_function_baseD2Ev.exit411 ], [ %i.yk, %_ZN12async_simple4util6detail14_function_baseD2Ev.exit7.i ], [ %i.il, %bb.bp ], [ %i.om, %bb.eb ], [ %i.rv, %bb.fj ], [ %i.fu, %bb.an ], [ %i.ld, %bb.ct ], [ %lpad.loopexit516, %.loopexit514 ], [ %lpad.loopexit511, %.loopexit509 ], [ %lpad.loopexit.split-lp512, %.loopexit.split-lp510 ]
  %i.zx = load ptr, ptr %i.dm, align 8, !tbaa !193 ; 2 uses
  %.not.i412 = icmp eq ptr %i.zx, null
  br i1 %.not.i412, label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit413, label %bb.hy

bb.hy:                                            ; preds = %.body
  invoke void %i.zx(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef zeroext 0)
          to label %_ZN12async_simple4util6detail14_function_baseD2Ev.exit413 unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.zy = landingpad { ptr, i32 }
          catch ptr null
  %i.zz = extractvalue { ptr, i32 } %i.zy, 0
  call void @__clang_call_terminate(ptr %i.zz) #49
  unreachable

_ZN12async_simple4util6detail14_function_baseD2Ev.exit413: ; preds = %.body, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  %.not.i.i.i414 = icmp eq ptr %.sroa.0440.4, null
  br i1 %.not.i.i.i414, label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit415, label %bb.ia

bb.ia:                                            ; preds = %_ZN12async_simple4util6detail14_function_baseD2Ev.exit413
  %i.aaa = ptrtoint ptr %.sroa.20.4 to i64
  %i.aab = ptrtoint ptr %.sroa.0440.4 to i64
  %i.aac = sub i64 %i.aaa, %i.aab
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.4, i64 noundef %i.aac) #50
  br label %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit415

_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit415: ; preds = %_ZN12async_simple4util6detail14_function_baseD2Ev.exit413, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.ic

bb.ib:                                            ; preds = %bb.k, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit, %bb.ae, %bb.t
  %.sroa.0476.0 = phi i32 [ %.sroa.0458.1, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit ], [ %i.bv, %bb.ae ], [ 5, %bb.t ], [ 0, %bb.k ]
  %.sroa.6478.0 = phi ptr [ %.sroa.11466.1, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit ], [ %i.dl, %bb.ae ], [ %i.bp, %bb.t ], [ %i.k, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0476.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.6478.0, 1
  ret { i32, ptr } %.fca.1.insert

bb.ic:                                            ; preds = %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.s, %bb.j
  %.pn108 = phi { ptr, i32 } [ %i.bo, %bb.s ], [ %i.am, %bb.j ], [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %.pn102.pn, %_ZNSt6vectorIN7coro_io6detail24ib_socket_shared_state_t13resume_structESaIS3_EED2Ev.exit415 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  resume { ptr, i32 } %.pn108
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail27reactive_descriptor_service10async_waitIZZZN7coro_io11ib_socket_t7init_fdEvENKUlSt10shared_ptrINS3_6detail24ib_socket_shared_state_tEEE_clES8_ENKUlT_E_clINS3_21callback_awaitor_baseISt10error_codeNS3_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSA_EUlRKSE_E_NS_15any_io_executorEEEvRNS1_19implementation_typeENS_5posix15descriptor_base9wait_typeERSA_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.asio::detail::reactive_wait_op<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/ibverbs/ib_socket.hpp:1094:33), asio::any_io_executor>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr %3, ptr %5, align 8, !tbaa !1881
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !492  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail16reactive_wait_opIZZZN7coro_io11ib_socket_t7init_fdEvENKUlSt10shared_ptrINS2_6detail24ib_socket_shared_state_tEEE_clES7_ENKUlT_E_clINS2_21callback_awaitor_baseISt10error_codeNS2_16callback_awaitorISD_EEE15awaitor_handlerEEEDaS9_EUlRKSD_E_NS_15any_io_executorEE3ptr8allocateERSK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_8
begin_hunk_9_@_ZN7coro_io6detail12reset_bufferERSt6vectorI7ibv_sgeSaIS2_EEm:bb.a
  %i.af = ashr exact i64 %.pre-phi57.i.i.i, 4
  switch i64 %i.af, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !2081
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.025.1.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %.sroa.025.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2081
  %.not34.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not34.i.i.i, label %bb.k, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %.sroa.025.2.i.i.i = phi ptr [ %i.al, %bb.k ], [ %.sroa.025.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i.i.i, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2081
  %.not35.i.i.i = icmp eq i32 %i.an, 0
  %spec.select.i.i.i = select i1 %.not35.i.i.i, ptr %i.c, ptr %.sroa.025.2.i.i.i
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit

.loopexit.split.loop.exit41.i.i.i:                ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 16
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit

.loopexit.split.loop.exit43.i.i.i:                ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 32
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit

.loopexit.split.loop.exit45.i.i.i:                ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 48
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.h, %bb.j, %bb.l, %.loopexit.split.loop.exit41.i.i.i, %.loopexit.split.loop.exit43.i.i.i, %.loopexit.split.loop.exit45.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.025.1.i.i.i, %bb.j ], [ %spec.select.i.i.i, %bb.l ], [ %i.c, %._crit_edge.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i, %bb.h ], [ %i.ap, %.loopexit.split.loop.exit43.i.i.i ], [ %i.ao, %.loopexit.split.loop.exit41.i.i.i ], [ %i.aq, %.loopexit.split.loop.exit45.i.i.i ], [ %.sroa.025.050.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64 ; 3 uses
  %i.as = sub i64 %i.ar, %i.p
  %i.at = getelementptr inbounds i8, ptr %i.a, i64 %i.as ; 2 uses
  %i.au = icmp eq ptr %i.a, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %i.au, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit
  %i.av = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.c
  br i1 %i.av, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = sub i64 %i.o, %i.ar                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 16
  br i1 %i.ax, label %bb.o, label %bb.p, !prof !321

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.a, ptr nonnull align 8 %i.at, i64 %i.aw, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ay = icmp eq i64 %i.aw, 16
  br i1 %i.ay, label %bb.q, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !2082
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !2080 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.ar
  %i.bc = getelementptr inbounds i8, ptr %i.a, i64 %i.bb ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.az, %i.bc
  br i1 %.not.i.i.i23, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %_ZSt8_DestroyIP7ibv_sgeS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP7ibv_sgeS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !2084
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

_ZNSt6vectorI7ibv_sgeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit: ; preds = %_ZSt8_DestroyIP7ibv_sgeS0_EvT_S2_RSaIT0_E.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP7ibv_sgeSt6vectorIS2_SaIS2_EEEEZN7coro_io6detail12reset_bufferERS6_mEUlRKS2_E_ET_SE_SE_T0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io6detail13make_sge_implIN4asio17mutable_buffers_1EEEvRSt6vectorI7ibv_sgeSaIS5_EESt4spanIT_Lm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = icmp ugt i64 %2, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.411) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2085 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !2086   ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %2
  br i1 %i.i, label %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2084
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 3 uses
  %i.n = shl nuw nsw i64 %2, 4                    ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #51 ; 5 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.d, i64 %i.m, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #50
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread

_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !2086
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.q, ptr %i.j, align 8, !tbaa !2084
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %2 ; 2 uses
  store ptr %i.r, ptr %i.b, align 8, !tbaa !2085
  br label %.lr.ph29

_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit:     ; preds = %bb.c
  %.pre30 = shl nuw nsw i64 %2, 4
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %.pn = phi i64 [ %i.n, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %.pre30, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.t = phi ptr [ %i.r, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %i.c, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.u = phi ptr [ %i.o, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %i.d, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.pn
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  ret void

bb.f:                                             ; preds = %.lr.ph29, %.loopexit
  %i.x = phi ptr [ %i.u, %.lr.ph29 ], [ %i.bg, %.loopexit ] ; 2 uses
  %i.y = phi ptr [ %i.t, %.lr.ph29 ], [ %i.bh, %.loopexit ] ; 2 uses
  %.sroa.021.028 = phi ptr [ %1, %.lr.ph29 ], [ %i.bi, %.loopexit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1794 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.preheader, !prof !223

.lr.ph.preheader:                                 ; preds = %bb.f
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !2084
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %i.ac = phi ptr [ %i.ba, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.x, %.lr.ph.preheader ] ; 5 uses
  %i.ad = phi ptr [ %i.bb, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.ae = phi ptr [ %i.bc, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %.pre, %.lr.ph.preheader ] ; 5 uses
  %i.af = phi i64 [ %i.be, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.aa, %.lr.ph.preheader ]
  %.027 = phi i64 [ %i.bd, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ag = load ptr, ptr %.sroa.021.028, align 8, !tbaa !1793
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %.027, %i.ah                    ; 2 uses
  %i.aj = sub nuw i64 %i.af, %.027
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !316
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !212
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !212
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.w, align 8, !tbaa !2084
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %bb.i, label %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.aq = ashr exact i64 %i.ao, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.ar = icmp ult i64 %3, %i.aq
  %i.as = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #51 ; 5 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ao ; 4 uses
  store i64 %i.ai, ptr %i.aw, align 8, !tbaa !316
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx16, align 8, !tbaa !212
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 -1, ptr %.sroa.6.0..sroa_idx18, align 4, !tbaa !212
  %i.ax = icmp sgt i64 %i.ao, 0
  br i1 %i.ax, label %bb.j, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ac, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ao) #50
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.av, ptr %0, align 8, !tbaa !2086
  store ptr %i.ay, ptr %i.w, align 8, !tbaa !2084
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at ; 2 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !2085
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.g, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %i.ba = phi ptr [ %i.ac, %bb.g ], [ %i.av, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bb = phi ptr [ %i.ad, %bb.g ], [ %i.az, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bc = phi ptr [ %i.al, %bb.g ], [ %i.ay, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ]
  %i.bd = add i64 %.027, 4294967295               ; 2 uses
  %i.be = load i64, ptr %i.z, align 8, !tbaa !1794 ; 2 uses
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph, label %.loopexit, !llvm.loop !5698

.loopexit:                                        ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit, %bb.f
  %i.bg = phi ptr [ %i.x, %bb.f ], [ %i.ba, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ]
  %i.bh = phi ptr [ %i.y, %bb.f ], [ %i.bb, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.v
  br i1 %i.bj, label %._crit_edge, label %bb.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !915   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i8 %i.c, 2
  %i.e = load ptr, ptr %i.a, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  %or.cond.i.i.i.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #41
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  store i8 -1, ptr %i.b, align 8, !tbaa !915
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 16, i1 false), !tbaa.struct !435
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !212
  %i.i = sext i32 %i.h to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !1000
  store i8 1, ptr %i.b, align 8, !tbaa !915
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io11ib_socket_t20get_send_buffer_viewEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.2412") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.coro_io::ib_buffer_t", align 8 ; 8 uses
  %3 = alloca %"class.easylog::record_t", align 8 ; 9 uses
  %4 = alloca %"struct.refvalue::meta_string.569", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !801  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1753
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1011 ; 2 uses
  %i.g = icmp eq i32 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.i = load i8, ptr %i.h, align 8, !range !319
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1344, !noalias !5705 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1037, !noalias !5706
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !240, !noalias !5706 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK7coro_io11ib_socket_t11buffer_poolEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211, !noalias !5706
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.r, align 4, !tbaa !212, !noalias !5706
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !212, !noalias !5706
  br label %_ZNK7coro_io11ib_socket_t11buffer_poolEv.exit

bb.e:                                             ; preds = %bb.c
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4, !noalias !5706 ; 0 uses
  br label %_ZNK7coro_io11ib_socket_t11buffer_poolEv.exit

_ZNK7coro_io11ib_socket_t11buffer_poolEv.exit:    ; preds = %bb.b, %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1363
  invoke void @_ZN7coro_io16ib_buffer_pool_t10get_bufferEi(ptr dead_on_unwind nonnull writable sret(%"struct.coro_io::ib_buffer_t") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1352) %i.o, i32 noundef %i.x)
          to label %bb.f unwind label %bb.al

bb.f:                                             ; preds = %_ZNK7coro_io11ib_socket_t11buffer_poolEv.exit
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.y, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !243
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !195
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !62
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !195
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !62
  br label %_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.j ], [ %i.al, %bb.k ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.l, label %_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !223

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41
  br label %_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1018
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.m, label %bb.ai

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ap = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !213

bb.n:                                             ; preds = %bb.m
  %i.ar = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
end_hunk_9
begin_hunk_10_@_ZN7coro_io6detail24ib_socket_shared_state_t21wake_up_if_is_waitingESt10error_code:bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.258)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #41
  br label %.body

_ZN12async_simple11logicAssertEbPKc.exit.i:       ; preds = %bb.b
  invoke void @_ZN12async_simple11FutureStateISt10error_codeE9setResultEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(89) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN12async_simple7PromiseISt10error_codeE8setValueEONS_3TryIS1_EE.exit unwind label %bb.i

_ZN12async_simple7PromiseISt10error_codeE8setValueEONS_3TryIS1_EE.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit.i
  %i.m = load i8, ptr %i.j, align 8, !tbaa !1146  ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.f, !prof !223

bb.f:                                             ; preds = %_ZN12async_simple7PromiseISt10error_codeE8setValueEONS_3TryIS1_EE.exit
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %4, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #41
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit

_ZN12async_simple3TryISt10error_codeED2Ev.exit:   ; preds = %_ZN12async_simple7PromiseISt10error_codeE8setValueEONS_3TryIS1_EE.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.p = load i8, ptr %i.e, align 8, !tbaa !1461, !range !319, !noundef !320
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.e, align 8, !tbaa !1461
  br i1 %i.q, label %bb.h, label %_ZNSt14_Optional_baseIN12async_simple7PromiseISt10error_codeEELb0ELb0EED2Ev.exit

bb.h:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %3) #41
  br label %_ZNSt14_Optional_baseIN12async_simple7PromiseISt10error_codeEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN12async_simple7PromiseISt10error_codeEELb0ELb0EED2Ev.exit: ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.m

bb.i:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.l, %bb.e ]
  %i.s = load i8, ptr %i.j, align 8, !tbaa !1146  ; 2 uses
  %.not.i.i.i5 = icmp eq i8 %i.s, -1
  br i1 %.not.i.i.i5, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit8, label %bb.j, !prof !223

bb.j:                                             ; preds = %.body
  %i.t = icmp ne i8 %i.s, 2
  %i.u = load ptr, ptr %4, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i6 = icmp eq ptr %i.u, null
  %or.cond.i.i.i.i7 = select i1 %i.t, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i6
  br i1 %or.cond.i.i.i.i7, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #41
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit8

_ZN12async_simple3TryISt10error_codeED2Ev.exit8:  ; preds = %bb.k, %bb.j, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.v = load i8, ptr %i.e, align 8, !tbaa !1461, !range !319, !noundef !320
  %i.w = trunc nuw i8 %i.v to i1
  store i8 0, ptr %i.e, align 8, !tbaa !1461
  br i1 %i.w, label %bb.l, label %_ZNSt14_Optional_baseIN12async_simple7PromiseISt10error_codeEELb0ELb0EED2Ev.exit9

bb.l:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit8
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %3) #41
  br label %_ZNSt14_Optional_baseIN12async_simple7PromiseISt10error_codeEELb0ELb0EED2Ev.exit9

_ZNSt14_Optional_baseIN12async_simple7PromiseISt10error_codeEELb0ELb0EED2Ev.exit9: ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit8, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %_ZNSt14_Optional_baseIN12async_simple7PromiseISt10error_codeEELb0ELb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io6detail13make_sge_implIN4asio12const_bufferEEEvRSt6vectorI7ibv_sgeSaIS5_EESt4spanIT_Lm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = icmp ugt i64 %2, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.411) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2085 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !2086   ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %2
  br i1 %i.i, label %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2084
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 3 uses
  %i.n = shl nuw nsw i64 %2, 4                    ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #51 ; 5 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.d, i64 %i.m, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #50
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread

_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !2086
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.q, ptr %i.j, align 8, !tbaa !2084
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %2 ; 2 uses
  store ptr %i.r, ptr %i.b, align 8, !tbaa !2085
  br label %.lr.ph29

_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit:     ; preds = %bb.c
  %.pre30 = shl nuw nsw i64 %2, 4
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %.pn = phi i64 [ %i.n, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %.pre30, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.t = phi ptr [ %i.r, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %i.c, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.u = phi ptr [ %i.o, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %i.d, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.pn
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  ret void

bb.f:                                             ; preds = %.lr.ph29, %.loopexit
  %i.x = phi ptr [ %i.u, %.lr.ph29 ], [ %i.bg, %.loopexit ] ; 2 uses
  %i.y = phi ptr [ %i.t, %.lr.ph29 ], [ %i.bh, %.loopexit ] ; 2 uses
  %.sroa.021.028 = phi ptr [ %1, %.lr.ph29 ], [ %i.bi, %.loopexit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1779 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.preheader, !prof !223

.lr.ph.preheader:                                 ; preds = %bb.f
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !2084
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %i.ac = phi ptr [ %i.ba, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.x, %.lr.ph.preheader ] ; 5 uses
  %i.ad = phi ptr [ %i.bb, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.ae = phi ptr [ %i.bc, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %.pre, %.lr.ph.preheader ] ; 5 uses
  %i.af = phi i64 [ %i.be, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.aa, %.lr.ph.preheader ]
  %.027 = phi i64 [ %i.bd, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ag = load ptr, ptr %.sroa.021.028, align 8, !tbaa !1783
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %.027, %i.ah                    ; 2 uses
  %i.aj = sub nuw i64 %i.af, %.027
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !316
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !212
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !212
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.w, align 8, !tbaa !2084
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %bb.i, label %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.aq = ashr exact i64 %i.ao, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.ar = icmp ult i64 %3, %i.aq
  %i.as = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #51 ; 5 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ao ; 4 uses
  store i64 %i.ai, ptr %i.aw, align 8, !tbaa !316
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx16, align 8, !tbaa !212
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 -1, ptr %.sroa.6.0..sroa_idx18, align 4, !tbaa !212
  %i.ax = icmp sgt i64 %i.ao, 0
  br i1 %i.ax, label %bb.j, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ac, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ao) #50
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.av, ptr %0, align 8, !tbaa !2086
  store ptr %i.ay, ptr %i.w, align 8, !tbaa !2084
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at ; 2 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !2085
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.g, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %i.ba = phi ptr [ %i.ac, %bb.g ], [ %i.av, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bb = phi ptr [ %i.ad, %bb.g ], [ %i.az, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bc = phi ptr [ %i.al, %bb.g ], [ %i.ay, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ]
  %i.bd = add i64 %.027, 4294967295               ; 2 uses
  %i.be = load i64, ptr %i.z, align 8, !tbaa !1779 ; 2 uses
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph, label %.loopexit, !llvm.loop !5744

.loopexit:                                        ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit, %bb.f
  %i.bg = phi ptr [ %i.x, %bb.f ], [ %i.ba, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ]
  %i.bh = phi ptr [ %i.y, %bb.f ], [ %i.bb, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.v
  br i1 %i.bj, label %._crit_edge, label %bb.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4asio3ssl6streamIRNSE_19basic_stream_socketINSE_2ip3tcpENSE_15any_io_executorEEEEEJRA18_KcEEENS0_4LazyINS5_9rpc_errorEEERT0_RNS5_16request_config_tERjRN7coro_io12period_timerEDpOT1_EUlOT_E_EEvS16_Q14isLazyCallbackIS15_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.89)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #41
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !921
  %i.d = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #57
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !5745 ; 6 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4asio3ssl6streamIRNSE_19basic_stream_socketINSE_2ip3tcpENSE_15any_io_executorEEEEEJRA18_KcEEENS0_4LazyINS5_9rpc_errorEEERT0_RNS5_16request_config_tERjRN7coro_io12period_timerEDpOT1_EUlOT_E_EEvS16_Q14isLazyCallbackIS15_TL0__EENKUlS3_S17_E_clES3_S17_.resume, ptr %i.d, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4asio3ssl6streamIRNSE_19basic_stream_socketINSE_2ip3tcpENSE_15any_io_executorEEEEEJRA18_KcEEENS0_4LazyINS5_9rpc_errorEEERT0_RNS5_16request_config_tERjRN7coro_io12period_timerEDpOT1_EUlOT_E_EEvS16_Q14isLazyCallbackIS15_TL0__EENKUlS3_S17_E_clES3_S17_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr27.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.reload.addr28.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr28.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr27.i, align 8, !tbaa !255, !alias.scope !5748
  %index.addr29.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 0, ptr %index.addr29.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !255
  %i.f = load ptr, ptr %i.a, align 8
  tail call void %i.f(ptr nonnull %i.a), !inline_history !5745
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !49

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7executeINS_6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEEJRA18_KcEEENS9_4coro4LazyINSC_9rpc_errorEEERT0_RjNS7_9data_viewEDpOT1_EUlvE0_S3_EclINS7_21callback_awaitor_baseISB_NS7_16callback_awaitorISB_EEE15awaitor_handlerEEEvT_EUlvE_EEEEvOS1G_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::detail::binder0.2499", align 8 ; 5 uses
  %3 = alloca %"struct.asio::detail::executor_op<asio::detail::binder0<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:169:19)>, std::allocator<void>>::ptr.2500", align 8 ; 10 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !297    ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge

._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  br label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !388, !nonnull !320, !align !389
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 3 uses
  %.08.i.i = load ptr, ptr %i.h, align 8, !tbaa !492 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread, label %.lr.ph.i.i

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr %0, ptr %3, align 8, !tbaa !2137
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.010.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %.08.i.i, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.010.i.i, align 8, !tbaa !490
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.l, align 8, !tbaa !492 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %.lr.ph.i.i, !llvm.loop !25

_ZN4asio6detail9scheduler12can_dispatchEv.exit:   ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !491
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2140
  fence acquire
  invoke void @_ZZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4asio3ssl6streamIRNSD_19basic_stream_socketINSD_2ip3tcpENSD_15any_io_executorEEEEEJRA18_KcEEENS1_4coro4LazyINS4_9rpc_errorEEERT0_RjNS_9data_viewEDpOT1_EUlvE0_NSD_10io_context19basic_executor_typeISaIvELm0EEEEclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_3ssl6streamIRNS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEEEEJRA18_KcEEENS6_4coro4LazyINS9_9rpc_errorEEERT0_RjNS4_9data_viewEDpOT1_EUlvE0_NS1_10io_context19basic_executor_typeISaIvELm0EEEEclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvT_EUlvE_EES1J_EEvRS1H_SZ_.exit unwind label %bb.e

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_3ssl6streamIRNS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEEEEJRA18_KcEEENS6_4coro4LazyINS9_9rpc_errorEEERT0_RjNS4_9data_viewEDpOT1_EUlvE0_NS1_10io_context19basic_executor_typeISaIvELm0EEEEclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvT_EUlvE_EES1J_EEvRS1H_SZ_.exit: ; preds = %bb.d
  fence release
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  fence release
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #41 ; 0 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !297
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !388, !nonnull !320, !align !389
  invoke void @_ZN4asio6detail9scheduler25capture_current_exceptionEv(ptr noundef nonnull align 8 dereferenceable(256) %i.v)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_end_catch()
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.n

bb.i:                                             ; preds = %bb.f, %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_3ssl6streamIRNS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEEEEJRA18_KcEEENS6_4coro4LazyINS9_9rpc_errorEEERT0_RjNS4_9data_viewEDpOT1_EUlvE0_NS1_10io_context19basic_executor_typeISaIvELm0EEEEclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvT_EUlvE_EES1J_EEvRS1H_SZ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
end_hunk_10
begin_hunk_11_@_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEaSEOS9_ENUlOT_T0_E_clIRS8_St17integral_constantImLm1EEEEDaSC_SD_:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr %1, align 8, !tbaa !797
  store ptr %i.h, ptr %i.a, align 8, !tbaa !797
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1016
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !1016
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !240  ; 8 uses
  store <2 x ptr> %i.n, ptr %i.e, align 8, !tbaa !255
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIvEaSEOS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !242
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !243
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !195
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #41, !inline_history !111
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !195
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #41, !inline_history !111
  br label %_ZNSt10shared_ptrIvEaSEOS0_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt10shared_ptrIvEaSEOS0_.exit.i, !prof !223

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #41
  br label %_ZNSt10shared_ptrIvEaSEOS0_.exit.i

_ZNSt10shared_ptrIvEaSEOS0_.exit.i:               ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  br label %_ZN14memory_owner_taSEOS_.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit: ; preds = %bb.a, %bb.l
  %i.ae = load ptr, ptr %1, align 8, !tbaa !797
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !797
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1016
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !1016
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !240
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !255
  store ptr null, ptr %i.al, align 8, !tbaa !240
  store <2 x ptr> %i.am, ptr %i.ai, align 8, !tbaa !255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.b, align 8, !tbaa !772
  br label %_ZN14memory_owner_taSEOS_.exit

_ZN14memory_owner_taSEOS_.exit:                   ; preds = %_ZNSt10shared_ptrIvEaSEOS0_.exit.i, %bb.b, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io6detail13make_sge_implIN4asio14mutable_bufferEEEvRSt6vectorI7ibv_sgeSaIS5_EESt4spanIT_Lm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = icmp ugt i64 %2, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.411) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2085 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !2086   ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %2
  br i1 %i.i, label %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2084
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 3 uses
  %i.n = shl nuw nsw i64 %2, 4                    ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #51 ; 5 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.d, i64 %i.m, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #50
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread

_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !2086
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.q, ptr %i.j, align 8, !tbaa !2084
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %2 ; 2 uses
  store ptr %i.r, ptr %i.b, align 8, !tbaa !2085
  br label %.lr.ph29

_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit:     ; preds = %bb.c
  %.pre30 = shl nuw nsw i64 %2, 4
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %.pn = phi i64 [ %i.n, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %.pre30, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.t = phi ptr [ %i.r, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %i.c, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.u = phi ptr [ %i.o, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit.thread ], [ %i.d, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.pn
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  ret void

bb.f:                                             ; preds = %.lr.ph29, %.loopexit
  %i.x = phi ptr [ %i.u, %.lr.ph29 ], [ %i.bg, %.loopexit ] ; 2 uses
  %i.y = phi ptr [ %i.t, %.lr.ph29 ], [ %i.bh, %.loopexit ] ; 2 uses
  %.sroa.021.028 = phi ptr [ %1, %.lr.ph29 ], [ %i.bi, %.loopexit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1794 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.preheader, !prof !223

.lr.ph.preheader:                                 ; preds = %bb.f
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !2084
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %i.ac = phi ptr [ %i.ba, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.x, %.lr.ph.preheader ] ; 5 uses
  %i.ad = phi ptr [ %i.bb, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.ae = phi ptr [ %i.bc, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %.pre, %.lr.ph.preheader ] ; 5 uses
  %i.af = phi i64 [ %i.be, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ %i.aa, %.lr.ph.preheader ]
  %.027 = phi i64 [ %i.bd, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ag = load ptr, ptr %.sroa.021.028, align 8, !tbaa !1793
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %.027, %i.ah                    ; 2 uses
  %i.aj = sub nuw i64 %i.af, %.027
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !316
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !212
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !212
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.w, align 8, !tbaa !2084
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %bb.i, label %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.aq = ashr exact i64 %i.ao, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.ar = icmp ult i64 %3, %i.aq
  %i.as = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #51 ; 5 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ao ; 4 uses
  store i64 %i.ai, ptr %i.aw, align 8, !tbaa !316
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx16, align 8, !tbaa !212
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 -1, ptr %.sroa.6.0..sroa_idx18, align 4, !tbaa !212
  %i.ax = icmp sgt i64 %i.ao, 0
  br i1 %i.ax, label %bb.j, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ac, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ao) #50
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.av, ptr %0, align 8, !tbaa !2086
  store ptr %i.ay, ptr %i.w, align 8, !tbaa !2084
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at ; 2 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !2085
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.g, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %i.ba = phi ptr [ %i.ac, %bb.g ], [ %i.av, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bb = phi ptr [ %i.ad, %bb.g ], [ %i.az, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bc = phi ptr [ %i.al, %bb.g ], [ %i.ay, %_ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ]
  %i.bd = add i64 %.027, 4294967295               ; 2 uses
  %i.be = load i64, ptr %i.z, align 8, !tbaa !1794 ; 2 uses
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph, label %.loopexit, !llvm.loop !6259

.loopexit:                                        ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit, %bb.f
  %i.bg = phi ptr [ %i.x, %bb.f ], [ %i.ba, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ]
  %i.bh = phi ptr [ %i.y, %bb.f ], [ %i.bb, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.v
  br i1 %i.bj, label %._crit_edge, label %bb.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE8setValueEOS6_Qntsr3stdE9is_void_vIT_E(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(105) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.2938, align 8           ; 4 uses
  %3 = alloca %"class.async_simple::Try.2226", align 8 ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2013   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.258)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.au, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #41
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  store i8 -1, ptr %i.d, align 8, !tbaa !2044
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store ptr %3, ptr %2, align 8, !tbaa !2047
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS8_EUlOT_T0_E_JSt7variantIJS6_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(105) %1)
          to label %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2IJS6_EEEDpOT_Qsr3stdE18is_constructible_vIT_DpTL0__E.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #49
  unreachable

_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2IJS6_EEEDpOT_Qsr3stdE18is_constructible_vIT_DpTL0__E.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !2044
  store i8 %i.h, ptr %i.d, align 8, !tbaa !2044
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  store i8 1, ptr %i.i, align 8, !tbaa !2026
  invoke void @_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9setResultEONS_3TryIS6_EE(ptr noundef nonnull align 8 dereferenceable(185) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2IJS6_EEEDpOT_Qsr3stdE18is_constructible_vIT_DpTL0__E.exit
  %i.j = load i8, ptr %i.i, align 8, !tbaa !2026
  switch i8 %i.j, label %bb.v [
    i8 -1, label %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 0, label %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 1, label %bb.g
    i8 2, label %bb.t
  ], !prof !238

bb.g:                                             ; preds = %bb.f
  %i.k = load i8, ptr %i.d, align 8, !tbaa !2044
  %cond.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, !prof !2050

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = load i8, ptr %i.l, align 8, !tbaa !772   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, !prof !223

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = icmp eq i8 %i.m, 0
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !793  ; 4 uses
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.s = load i64, ptr %i.q, align 8, !tbaa !211
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #50
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp ne ptr %i.v, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.p) #50
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !240  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.z, align 8, !tbaa !242
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !243
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !195
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #41, !inline_history !129
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !195
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #41, !inline_history !129
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i.i.i.i.i.i3 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.q ], [ %i.am, %bb.r ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.s, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !223

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #41
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_11
begin_hunk_12_@_ZN8coro_rpc15coro_rpc_client9handler_t11local_errorERSt10error_code:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = icmp eq i8 %i.r, 0
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !793  ; 4 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !211
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #50
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp ne ptr %i.aa, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.u) #50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ae, align 8, !tbaa !242
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !243
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !195
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #41, !inline_history !129
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !195
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #41, !inline_history !129
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.n ], [ %i.ar, %bb.o ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.p, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !223

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #41
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %bb.e
  %i.at = load ptr, ptr %2, align 8, !tbaa !221   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !211
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #50
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev.exit: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev.exit
  ret void

bb.r:                                             ; preds = %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE6cancelEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2424   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2422 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !243
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41, !inline_history !6266
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41, !inline_history !6266
  br label %_ZSt8_DestroyISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEEEvPT_.exit.i.i, !prof !223

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41
  br label %_ZSt8_DestroyISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !130

_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2424
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2423
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #50
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEES4_EvT_S6_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2422 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2424   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #51 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !255
  store ptr null, ptr %i.q, align 8, !tbaa !240
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !255
  store ptr null, ptr %2, align 8, !tbaa !2040
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6275)
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.t = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !255, !alias.scope !6275, !noalias !6274
  store ptr null, ptr %i.s, align 8, !tbaa !240, !alias.scope !6275, !noalias !6274
  store <2 x ptr> %i.t, ptr %.012.i.i.i, align 8, !tbaa !255, !alias.scope !6274, !noalias !6275
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !2040, !alias.scope !6275, !noalias !6274
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !6270

_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.v, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %i.w, %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.z, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6277)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !255, !alias.scope !6277, !noalias !6276
  store ptr null, ptr %i.x, align 8, !tbaa !240, !alias.scope !6277, !noalias !6276
  store <2 x ptr> %i.y, ptr %.012.i.i.i18, align 8, !tbaa !255, !alias.scope !6276, !noalias !6277
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !2040, !alias.scope !6277, !noalias !6276
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !6270

_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.w, %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.aa, %.lr.ph.i.i.i17 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2423
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #50
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8coro_rpc15coro_rpc_client9handler_tEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !2424
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !2422
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !2423
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRA18_KcEEENS0_4LazyINSH_IN2tl8expectedINS5_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS5_9rpc_errorEEEEEEENS5_16request_config_tEDpOT0_ENKUlRT_E0_clIN4asio3ssl6streamIRNSZ_19basic_stream_socketINSZ_2ip3tcpENSZ_15any_io_executorEEEEEEEDaSW_EUlOSV_E_EEvS19_Q14isLazyCallbackISV_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.89)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #41
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !257
  %i.d = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #57
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !6278 ; 6 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRA18_KcEEENS0_4LazyINSH_IN2tl8expectedINS5_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS5_9rpc_errorEEEEEEENS5_16request_config_tEDpOT0_ENKUlRT_E0_clIN4asio3ssl6streamIRNSZ_19basic_stream_socketINSZ_2ip3tcpENSZ_15any_io_executorEEEEEEEDaSW_EUlOSV_E_EEvS19_Q14isLazyCallbackISV_TL0__EENKUlS3_S1A_E_clES3_S1A_.resume, ptr %i.d, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRA18_KcEEENS0_4LazyINSH_IN2tl8expectedINS5_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS5_9rpc_errorEEEEEEENS5_16request_config_tEDpOT0_ENKUlRT_E0_clIN4asio3ssl6streamIRNSZ_19basic_stream_socketINSZ_2ip3tcpENSZ_15any_io_executorEEEEEEEDaSW_EUlOSV_E_EEvS19_Q14isLazyCallbackISV_TL0__EENKUlS3_S1A_E_clES3_S1A_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr26.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.reload.addr27.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr27.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr26.i, align 8, !tbaa !255, !alias.scope !6281
  %index.addr28.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 0, ptr %index.addr28.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !255
  %i.f = load ptr, ptr %i.a, align 8
  tail call void %i.f(ptr nonnull %i.a), !inline_history !6278
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail7read_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readISA_SB_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EclESJ_mi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::ssl::detail::io_op.2983", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %4, ptr %i.a, align 8, !tbaa !2461
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0
  %i.b = select i1 %.not.i.i, i64 65536, i64 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1841
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre33 = load i64, ptr %.phi.trans.insert32, align 8, !tbaa !1794
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = phi i64 [ %.pre33, %bb.b ], [ %i.af, %bb.d ] ; 2 uses
  %i.d = phi i64 [ %.pre, %bb.b ], [ %i.ab, %bb.d ]
  %.0 = phi i64 [ %i.b, %bb.b ], [ 65536, %bb.d ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !2462, !nonnull !320, !align !389 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.c) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1793
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %spec.select.i.i
  %i.i = sub i64 %i.c, %spec.select.i.i
  %spec.select.i1.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %.0)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1945, !nonnull !320, !align !389
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr %i.j, ptr %5, align 8, !tbaa !780
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1946
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.h, ptr %i.m, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %spec.select.i1.i, ptr %.sroa.418.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !2465
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !2466
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.p, align 8, !tbaa !469
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55, !inline_history !6282 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !470
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.s, align 8, !tbaa !2467
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.e, ptr %i.t, align 8, !tbaa !792
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 %4, ptr %i.v, align 8, !tbaa !2461
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1024
  store i64 %i.y, ptr %i.w, align 8, !tbaa !1024
  call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_7read_opINS_17mutable_buffers_1EEENS_6detail7read_opINS0_6streamIRS7_EES9_PKNS_14mutable_bufferENSB_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_10async_readISF_S9_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_SF_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EEEclESN_mi(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 0, ptr nonnull %i.r, i64 noundef 0, i32 noundef 1), !inline_history !6283
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1841
  %i.ab = add i64 %i.aa, %3                       ; 4 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !1841
end_hunk_12
begin_hunk_13_@_ZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EE.resume:resume.entry
  %i.qh = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dq unwind label %.body216.from.689 ; 3 uses

bb.dq:                                            ; preds = %bb.dp
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qj = load atomic i64, ptr %i.qi monotonic, align 8
  %i.qk = icmp slt i64 %i.qj, 1
  br i1 %i.qk, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251: ; preds = %bb.dq
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %.sroa.0.0.copyload.i2.i.i249 = load i64, ptr %i.ql, align 8, !tbaa !316
  %i.qm = sub nsw i64 %i.qg, %.sroa.0.0.copyload.i2.i.i249
  %i.qn = sdiv i64 %i.qm, 1000000
  %i.qo = load atomic i64, ptr %i.qi monotonic, align 8
  %i.qp = srem i64 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qr = load atomic i64, ptr %i.qq monotonic, align 8
  %i.qs = icmp slt i64 %i.qp, %i.qr
  br i1 %i.qs, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread, label %.from.676

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  store i8 91, ptr %13, align 1, !alias.scope !8070
  %.sroa.0.i.sroa.4.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %13, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i252, ptr noundef nonnull align 1 dereferenceable(24) @__const._ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlvE2_clEv.prefix, i64 24, i1 false), !tbaa.struct !1487
  %.sroa.0.i.sroa.5.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %13, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i253, ptr noundef nonnull align 1 dereferenceable(3) @.str.88, i64 3, i1 false), !tbaa.struct !318
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %14, i64 %i.qg, i32 noundef 4, i64 27, ptr nonnull %13)
          to label %bb.dr unwind label %.from.591

bb.dr:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread
  %i.qt = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA11_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 1 dereferenceable(11) @.str.266)
          to label %bb.ds unwind label %.from.588

bb.ds:                                            ; preds = %bb.dr
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !8056
  %i.qu = getelementptr inbounds nuw i8, ptr %.reload, i64 152
  %i.qv = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsImEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qt, ptr noundef nonnull align 8 dereferenceable(8) %i.qu)
          to label %bb.dt unwind label %.from.588

bb.dt:                                            ; preds = %bb.ds
  %i.qw = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA23_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qv, ptr noundef nonnull align 1 dereferenceable(23) @.str.289)
          to label %bb.du unwind label %.from.588

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.qx = load ptr, ptr %.sroa.5440.0.copyload, align 8, !tbaa !195, !noalias !8071
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !8071
  invoke void %i.qz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5440.0.copyload, i32 noundef %.sroa.0.0.copyload439)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from., !inline_history !17

_ZNKSt10error_code7messageB5cxx11Ev.exit:         ; preds = %bb.du
  %i.ra = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.rb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.rc = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !319, !noundef !320
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257, label %bb.dx, !prof !223

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.rb, ptr noundef nonnull align 8 dereferenceable(80) %i.ra)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257 unwind label %bb.dy

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257: ; preds = %bb.dx, %bb.dw
  %i.re = load ptr, ptr %12, align 8, !tbaa !221  ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257
  %i.rh = load i64, ptr %i.rf, align 8, !tbaa !211
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.from.676

.body216.from.689:                                ; preds = %bb.dp
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216

.from.591:                                        ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.691

.from.588:                                        ; preds = %bb.dr, %bb.ds, %bb.dt
  %i.rl = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from.: ; preds = %bb.du
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

bb.dy:                                            ; preds = %bb.dx, %bb.dv, %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.rn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ro = load ptr, ptr %12, align 8, !tbaa !221  ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.dy
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !211
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #50
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  %.pn89 = phi { ptr, i32 } [ %i.rm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from. ], [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ], [ %i.rn, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %.from.590

.from.590:                                        ; preds = %.from.588, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.rl, %.from.588 ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %14) #41
  br label %.body216.from.691

.body216.from.691:                                ; preds = %.from.591, %.from.590
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %.from.590 ], [ %i.rk, %.from.591 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.body216

.from.676:                                        ; preds = %bb.do, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i16 2, ptr %i.c, align 2, !tbaa !215
  call void @_ZN12async_simple4coro6detail11LazyPromiseIN8coro_rpc8err_codeEE12return_valueINS3_4errcEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr837, ptr noundef nonnull align 2 dereferenceable(2) %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %.from.674

bb.dz:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codeN4asio2ip23basic_resolver_iteratorINS6_3tcpEEEELb0EED2Ev.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr815, i8 0, i64 24, i1 false)
  %i.rt = load ptr, ptr %.reload.addr826, align 8, !tbaa !1562 ; 2 uses
  %.not438 = icmp eq ptr %i.rt, null
  br i1 %.not438, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418, label %.from..lr.ph

.from..lr.ph:                                     ; preds = %bb.dz
  %.reload.addr806 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.reload807 = load ptr, ptr %.reload.addr806, align 8, !tbaa !8056 ; 2 uses
  %i.ru = icmp eq ptr %.reload807, null
  %spec.store.select.sroa.sel374.v.sroa.sel.v = select i1 %i.ru, ptr %.reload.addr825.a, ptr %.reload807
  %spec.store.select.sroa.sel374.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel374.v.sroa.sel.v, i64 16 ; 2 uses
  %.pre.pre = load i64, ptr %i.px, align 8, !tbaa !1565
  br label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread

_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread: ; preds = %.from..lr.ph, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit
  %i.rv = phi ptr [ %i.rt, %.from..lr.ph ], [ %i.ty, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 4 uses
  %.pre31 = phi i64 [ %.pre.pre, %.from..lr.ph ], [ %.pre44628, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %.reload791 = load ptr, ptr %.reload.addr806, align 8, !tbaa !8056 ; 3 uses
  %i.rw = icmp eq ptr %.reload791, null
  %spec.store.select.sroa.sel.v.sroa.sel.v715 = select i1 %i.rw, ptr %.reload.addr825.a, ptr %.reload791 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel714 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v715, i64 8 ; 3 uses
  %i.rx = load ptr, ptr %i.rv, align 8, !tbaa !1598
  %i.ry = getelementptr inbounds nuw [96 x i8], ptr %i.rx, i64 %.pre31 ; 2 uses
  %i.rz = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689 ; 5 uses
  %i.sa = load ptr, ptr %spec.store.select.sroa.sel374.v.sroa.sel, align 8, !tbaa !323
  %.not.i.i264 = icmp eq ptr %i.rz, %i.sa
  br i1 %.not.i.i264, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.rz, ptr noundef nonnull align 8 dereferenceable(28) %i.ry, i64 28, i1 false)
  %i.sb = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 28
  store ptr %i.sc, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit

bb.eb:                                            ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread
  %i.sd = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel.v715, align 8, !tbaa !322 ; 5 uses
  %i.se = ptrtoint ptr %i.rz to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf                    ; 4 uses
  %i.sh = icmp eq i64 %i.sg, 9223372036854775800
  br i1 %i.sh, label %bb.ec, label %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc267.a unwind label %.from..loopexit.split-lp

.noexc267.a:                                      ; preds = %bb.ec
  unreachable

_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eb
  %i.si = sdiv exact i64 %i.sg, 28                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.si, i64 1)
  %18 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.si ; 2 uses
  %i.sj = icmp ult i64 %18, %i.si
  %i.sk = tail call i64 @llvm.umin.i64(i64 %18, i64 329406144173384850)
  %i.sl = select i1 %i.sj, i64 329406144173384850, i64 %i.sk ; 3 uses
  %.not.i.i.i.i265 = icmp ne i64 %i.sl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i265)
  %i.sm = mul nuw nsw i64 %i.sl, 28
  %i.sn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sm) #51
          to label %.noexc268 unwind label %.from..loopexit ; 5 uses

.noexc268:                                        ; preds = %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.so, ptr noundef nonnull align 8 dereferenceable(28) %i.ry, i64 28, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.sd, %i.rz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc268, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.sq, %.lr.ph.i.i.i.i.i.i ], [ %i.sn, %.noexc268 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.sp, %.lr.ph.i.i.i.i.i.i ], [ %i.sd, %.noexc268 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1597, !alias.scope !8072
  %i.sp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i266 = icmp eq ptr %i.sp, %i.rz
  br i1 %.not.i.i.i.i.i.i266, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8030

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, !llvm.loop !8030

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.noexc268, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.sq, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i ], [ %i.sn, %.noexc268 ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 28
  %.not.i23.i.i.i = icmp eq ptr %i.sd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sd, i64 noundef %i.sg) #50
  %.reload797.pre = load ptr, ptr %.reload.addr806, align 8, !tbaa !8056
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ed, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %.reload797 = phi ptr [ %.reload797.pre, %bb.ed ], [ %.reload791, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i ] ; 2 uses
  %i.ss = icmp eq ptr %.reload797, null
  %spec.store.select.sroa.sel.v.sroa.sel.v721 = select i1 %i.ss, ptr %.reload.addr825.a, ptr %.reload797 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel720 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v721, i64 8
  store ptr %i.sn, ptr %spec.store.select.sroa.sel.v.sroa.sel.v721, align 8, !tbaa !322
  store ptr %i.sr, ptr %spec.store.select.sroa.sel.v.sroa.sel720, align 8, !tbaa !1689
  %i.st = getelementptr inbounds nuw [28 x i8], ptr %i.sn, i64 %i.sl
  store ptr %i.st, ptr %spec.store.select.sroa.sel374.v.sroa.sel, align 8, !tbaa !323
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ea
  %i.su = add i64 %.pre31, 1                      ; 3 uses
  store i64 %i.su, ptr %i.px, align 8, !tbaa !1565
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !1595
  %i.sx = load ptr, ptr %i.rv, align 8, !tbaa !1598
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = sub i64 %i.sy, %i.sz
  %i.tb = sdiv exact i64 %i.ta, 96
  %i.tc = icmp eq i64 %i.su, %i.tb
  br i1 %i.tc, label %bb.ee, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread

_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread: ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit
  %i.td = load ptr, ptr %.reload.addr815, align 8
  br label %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

bb.ee:                                            ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit
  store ptr null, ptr %.reload.addr826, align 8, !tbaa !1592
  %i.te = load ptr, ptr %i.pg, align 8, !tbaa !240 ; 8 uses
  store ptr null, ptr %i.pg, align 8, !tbaa !240
  %.not.i.i.i.i.i269 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i.i269, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 4 uses
  %i.tg = load atomic i64, ptr %i.tf acquire, align 8 ; 2 uses
  %i.th = icmp eq i64 %i.tg, 4294967297
  %i.ti = trunc i64 %i.tg to i32                  ; 2 uses
  br i1 %i.th, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.tf, align 8, !tbaa !242
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  store i32 0, ptr %i.tj, align 4, !tbaa !243
  %i.tk = load ptr, ptr %i.te, align 8, !tbaa !195
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8
  tail call void %i.tm(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41, !inline_history !162
  %i.tn = load ptr, ptr %i.te, align 8, !tbaa !195
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.tp = load ptr, ptr %i.to, align 8
  tail call void %i.tp(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41, !inline_history !162
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

bb.eh:                                            ; preds = %bb.ef
  %i.tq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i270 = icmp eq i8 %i.tq, 0
  br i1 %.not.i.i.i.i.i.i270, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601: ; preds = %bb.eh
  %i.tr = add nsw i32 %i.ti, -1
  store i32 %i.tr, ptr %i.tf, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.: ; preds = %bb.eh
  %i.ts = atomicrmw volatile add ptr %i.tf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ti, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601 ], [ %i.ts, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from. ]
  %i.tt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.tt, label %bb.ei, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, !prof !223

bb.ei:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit: ; preds = %bb.ei, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.eg, %bb.ee
  store i64 0, ptr %i.px, align 8, !tbaa !1565
  %.pre444 = load ptr, ptr %.reload.addr826, align 8, !tbaa !1562 ; 2 uses
  %i.tu = icmp ne ptr %.pre444, null
  %i.tv = load ptr, ptr %.reload.addr815, align 8 ; 2 uses
  %i.tw = icmp ne ptr %i.tv, null
  %or.cond.i.i = select i1 %i.tu, i1 true, i1 %i.tw
  br i1 %or.cond.i.i, label %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418

.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit: ; preds = %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit
  %i.tx = phi ptr [ %i.td, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ %i.tv, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ]
  %i.ty = phi ptr [ %i.rv, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ %.pre444, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %.pre44628 = phi i64 [ %i.su, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ 0, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.tx
  %i.ua = load i64, ptr %i.ot, align 8
  %.not435.a = icmp eq i64 %.pre44628, %i.ua
  %or.cond = select i1 %i.tz, i1 %.not435.a, i1 false
  br i1 %or.cond, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread

.from..loopexit:                                  ; preds = %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.694

.from..loopexit.split-lp:                         ; preds = %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.694

.body216.from.694:                                ; preds = %.from..loopexit, %.from..loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.from..loopexit ], [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ]
  tail call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.body216

_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418: ; preds = %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, %bb.dz
  %.reload.addr798 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload799 = load ptr, ptr %.reload.addr798, align 8, !tbaa !8056 ; 2 uses
  %i.ub = icmp eq ptr %.reload799, null
  %spec.store.select.sroa.sel.v.sroa.sel.v723 = select i1 %i.ub, ptr %.reload.addr825.a, ptr %.reload799 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel722 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v723, i64 8
  %i.uc = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel.v723, align 8, !tbaa !1701
  %i.ud = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel722, align 8, !tbaa !1701
  %i.ue = icmp eq ptr %i.uc, %i.ud
  br i1 %i.ue, label %.from..thread420, label %.from.605.a, !prof !223

.from..thread420:                                 ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i16 2, ptr %i.b, align 2, !tbaa !215
  call void @_ZN12async_simple4coro6detail11LazyPromiseIN8coro_rpc8err_codeEE12return_valueINS3_4errcEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr837, ptr noundef nonnull align 2 dereferenceable(2) %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.from.674

.from.605.a:                                      ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418
  tail call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.from.606

.from.606:                                        ; preds = %bb.bu, %.from.605.a
  %.sroa.10393.1 = phi ptr [ %.sroa.5440.0.copyload, %.from.605.a ], [ %i.jn, %bb.bu ]
  %.sroa.10393.1.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %.sroa.10393.1, ptr %.sroa.10393.1.spill.addr, align 8
  %i.uf = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ug = icmp eq i8 %i.uf, 0
  br i1 %i.ug, label %bb.ej, label %_ZN7easylog6loggerILm0EE8instanceEv.exit274, !prof !213

bb.ej:                                            ; preds = %.from.606
  %i.uh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i271 = icmp eq i32 %i.uh, 0
  br i1 %.not.i271, label %_ZN7easylog6loggerILm0EE8instanceEv.exit274, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.el unwind label %.body216.from.684

bb.el:                                            ; preds = %bb.ek
  %i.ui = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit274

.body216.from.684:                                ; preds = %bb.ek
  %i.uj = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.body216

_ZN7easylog6loggerILm0EE8instanceEv.exit274:      ; preds = %bb.el, %bb.ej, %.from.606
  %i.uk = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.ul = icmp slt i32 %i.uk, 2
end_hunk_13
begin_hunk_14_@_ZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EE.resume:resume.entry
  %i.qh = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dq unwind label %.body216.from.689 ; 3 uses

bb.dq:                                            ; preds = %bb.dp
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qj = load atomic i64, ptr %i.qi monotonic, align 8
  %i.qk = icmp slt i64 %i.qj, 1
  br i1 %i.qk, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251: ; preds = %bb.dq
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %.sroa.0.0.copyload.i2.i.i249 = load i64, ptr %i.ql, align 8, !tbaa !316
  %i.qm = sub nsw i64 %i.qg, %.sroa.0.0.copyload.i2.i.i249
  %i.qn = sdiv i64 %i.qm, 1000000
  %i.qo = load atomic i64, ptr %i.qi monotonic, align 8
  %i.qp = srem i64 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qr = load atomic i64, ptr %i.qq monotonic, align 8
  %i.qs = icmp slt i64 %i.qp, %i.qr
  br i1 %i.qs, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread, label %.from.676

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  store i8 91, ptr %13, align 1, !alias.scope !8162
  %.sroa.0.i.sroa.4.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %13, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i252, ptr noundef nonnull align 1 dereferenceable(24) @__const._ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlvE2_clEv.prefix, i64 24, i1 false), !tbaa.struct !1487
  %.sroa.0.i.sroa.5.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %13, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i253, ptr noundef nonnull align 1 dereferenceable(3) @.str.88, i64 3, i1 false), !tbaa.struct !318
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %14, i64 %i.qg, i32 noundef 4, i64 27, ptr nonnull %13)
          to label %bb.dr unwind label %.from.591

bb.dr:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread
  %i.qt = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA11_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 1 dereferenceable(11) @.str.266)
          to label %bb.ds unwind label %.from.588

bb.ds:                                            ; preds = %bb.dr
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !8148
  %i.qu = getelementptr inbounds nuw i8, ptr %.reload, i64 152
  %i.qv = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsImEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qt, ptr noundef nonnull align 8 dereferenceable(8) %i.qu)
          to label %bb.dt unwind label %.from.588

bb.dt:                                            ; preds = %bb.ds
  %i.qw = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA23_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qv, ptr noundef nonnull align 1 dereferenceable(23) @.str.289)
          to label %bb.du unwind label %.from.588

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.qx = load ptr, ptr %.sroa.5440.0.copyload, align 8, !tbaa !195, !noalias !8163
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !8163
  invoke void %i.qz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5440.0.copyload, i32 noundef %.sroa.0.0.copyload439)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from., !inline_history !17

_ZNKSt10error_code7messageB5cxx11Ev.exit:         ; preds = %bb.du
  %i.ra = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.rb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.rc = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !319, !noundef !320
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257, label %bb.dx, !prof !223

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.rb, ptr noundef nonnull align 8 dereferenceable(80) %i.ra)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257 unwind label %bb.dy

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257: ; preds = %bb.dx, %bb.dw
  %i.re = load ptr, ptr %12, align 8, !tbaa !221  ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257
  %i.rh = load i64, ptr %i.rf, align 8, !tbaa !211
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.from.676

.body216.from.689:                                ; preds = %bb.dp
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216

.from.591:                                        ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.691

.from.588:                                        ; preds = %bb.dr, %bb.ds, %bb.dt
  %i.rl = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from.: ; preds = %bb.du
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

bb.dy:                                            ; preds = %bb.dx, %bb.dv, %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.rn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ro = load ptr, ptr %12, align 8, !tbaa !221  ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.dy
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !211
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #50
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  %.pn89 = phi { ptr, i32 } [ %i.rm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from. ], [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ], [ %i.rn, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %.from.590

.from.590:                                        ; preds = %.from.588, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.rl, %.from.588 ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %14) #41
  br label %.body216.from.691

.body216.from.691:                                ; preds = %.from.591, %.from.590
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %.from.590 ], [ %i.rk, %.from.591 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.body216

.from.676:                                        ; preds = %bb.do, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i16 2, ptr %i.c, align 2, !tbaa !215
  call void @_ZN12async_simple4coro6detail11LazyPromiseIN8coro_rpc8err_codeEE12return_valueINS3_4errcEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr837, ptr noundef nonnull align 2 dereferenceable(2) %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %.from.674

bb.dz:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codeN4asio2ip23basic_resolver_iteratorINS6_3tcpEEEELb0EED2Ev.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr815, i8 0, i64 24, i1 false)
  %i.rt = load ptr, ptr %.reload.addr826, align 8, !tbaa !1562 ; 2 uses
  %.not438 = icmp eq ptr %i.rt, null
  br i1 %.not438, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418, label %.from..lr.ph

.from..lr.ph:                                     ; preds = %bb.dz
  %.reload.addr806 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.reload807 = load ptr, ptr %.reload.addr806, align 8, !tbaa !8148 ; 2 uses
  %i.ru = icmp eq ptr %.reload807, null
  %spec.store.select.sroa.sel374.v.sroa.sel.v = select i1 %i.ru, ptr %.reload.addr825.a, ptr %.reload807
  %spec.store.select.sroa.sel374.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel374.v.sroa.sel.v, i64 16 ; 2 uses
  %.pre.pre = load i64, ptr %i.px, align 8, !tbaa !1565
  br label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread

_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread: ; preds = %.from..lr.ph, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit
  %i.rv = phi ptr [ %i.rt, %.from..lr.ph ], [ %i.ty, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 4 uses
  %.pre31 = phi i64 [ %.pre.pre, %.from..lr.ph ], [ %.pre44628, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %.reload791 = load ptr, ptr %.reload.addr806, align 8, !tbaa !8148 ; 3 uses
  %i.rw = icmp eq ptr %.reload791, null
  %spec.store.select.sroa.sel.v.sroa.sel.v715 = select i1 %i.rw, ptr %.reload.addr825.a, ptr %.reload791 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel714 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v715, i64 8 ; 3 uses
  %i.rx = load ptr, ptr %i.rv, align 8, !tbaa !1598
  %i.ry = getelementptr inbounds nuw [96 x i8], ptr %i.rx, i64 %.pre31 ; 2 uses
  %i.rz = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689 ; 5 uses
  %i.sa = load ptr, ptr %spec.store.select.sroa.sel374.v.sroa.sel, align 8, !tbaa !323
  %.not.i.i264 = icmp eq ptr %i.rz, %i.sa
  br i1 %.not.i.i264, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.rz, ptr noundef nonnull align 8 dereferenceable(28) %i.ry, i64 28, i1 false)
  %i.sb = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 28
  store ptr %i.sc, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit

bb.eb:                                            ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread
  %i.sd = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel.v715, align 8, !tbaa !322 ; 5 uses
  %i.se = ptrtoint ptr %i.rz to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf                    ; 4 uses
  %i.sh = icmp eq i64 %i.sg, 9223372036854775800
  br i1 %i.sh, label %bb.ec, label %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc267.a unwind label %.from..loopexit.split-lp

.noexc267.a:                                      ; preds = %bb.ec
  unreachable

_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eb
  %i.si = sdiv exact i64 %i.sg, 28                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.si, i64 1)
  %18 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.si ; 2 uses
  %i.sj = icmp ult i64 %18, %i.si
  %i.sk = tail call i64 @llvm.umin.i64(i64 %18, i64 329406144173384850)
  %i.sl = select i1 %i.sj, i64 329406144173384850, i64 %i.sk ; 3 uses
  %.not.i.i.i.i265 = icmp ne i64 %i.sl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i265)
  %i.sm = mul nuw nsw i64 %i.sl, 28
  %i.sn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sm) #51
          to label %.noexc268 unwind label %.from..loopexit ; 5 uses

.noexc268:                                        ; preds = %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.so, ptr noundef nonnull align 8 dereferenceable(28) %i.ry, i64 28, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.sd, %i.rz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc268, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.sq, %.lr.ph.i.i.i.i.i.i ], [ %i.sn, %.noexc268 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.sp, %.lr.ph.i.i.i.i.i.i ], [ %i.sd, %.noexc268 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1597, !alias.scope !8164
  %i.sp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i266 = icmp eq ptr %i.sp, %i.rz
  br i1 %.not.i.i.i.i.i.i266, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8122

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, !llvm.loop !8122

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.noexc268, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.sq, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i ], [ %i.sn, %.noexc268 ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 28
  %.not.i23.i.i.i = icmp eq ptr %i.sd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sd, i64 noundef %i.sg) #50
  %.reload797.pre = load ptr, ptr %.reload.addr806, align 8, !tbaa !8148
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ed, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %.reload797 = phi ptr [ %.reload797.pre, %bb.ed ], [ %.reload791, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i ] ; 2 uses
  %i.ss = icmp eq ptr %.reload797, null
  %spec.store.select.sroa.sel.v.sroa.sel.v721 = select i1 %i.ss, ptr %.reload.addr825.a, ptr %.reload797 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel720 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v721, i64 8
  store ptr %i.sn, ptr %spec.store.select.sroa.sel.v.sroa.sel.v721, align 8, !tbaa !322
  store ptr %i.sr, ptr %spec.store.select.sroa.sel.v.sroa.sel720, align 8, !tbaa !1689
  %i.st = getelementptr inbounds nuw [28 x i8], ptr %i.sn, i64 %i.sl
  store ptr %i.st, ptr %spec.store.select.sroa.sel374.v.sroa.sel, align 8, !tbaa !323
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ea
  %i.su = add i64 %.pre31, 1                      ; 3 uses
  store i64 %i.su, ptr %i.px, align 8, !tbaa !1565
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !1595
  %i.sx = load ptr, ptr %i.rv, align 8, !tbaa !1598
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = sub i64 %i.sy, %i.sz
  %i.tb = sdiv exact i64 %i.ta, 96
  %i.tc = icmp eq i64 %i.su, %i.tb
  br i1 %i.tc, label %bb.ee, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread

_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread: ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit
  %i.td = load ptr, ptr %.reload.addr815, align 8
  br label %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

bb.ee:                                            ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit
  store ptr null, ptr %.reload.addr826, align 8, !tbaa !1592
  %i.te = load ptr, ptr %i.pg, align 8, !tbaa !240 ; 8 uses
  store ptr null, ptr %i.pg, align 8, !tbaa !240
  %.not.i.i.i.i.i269 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i.i269, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 4 uses
  %i.tg = load atomic i64, ptr %i.tf acquire, align 8 ; 2 uses
  %i.th = icmp eq i64 %i.tg, 4294967297
  %i.ti = trunc i64 %i.tg to i32                  ; 2 uses
  br i1 %i.th, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.tf, align 8, !tbaa !242
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  store i32 0, ptr %i.tj, align 4, !tbaa !243
  %i.tk = load ptr, ptr %i.te, align 8, !tbaa !195
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8
  tail call void %i.tm(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41, !inline_history !162
  %i.tn = load ptr, ptr %i.te, align 8, !tbaa !195
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.tp = load ptr, ptr %i.to, align 8
  tail call void %i.tp(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41, !inline_history !162
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

bb.eh:                                            ; preds = %bb.ef
  %i.tq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i270 = icmp eq i8 %i.tq, 0
  br i1 %.not.i.i.i.i.i.i270, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601: ; preds = %bb.eh
  %i.tr = add nsw i32 %i.ti, -1
  store i32 %i.tr, ptr %i.tf, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.: ; preds = %bb.eh
  %i.ts = atomicrmw volatile add ptr %i.tf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ti, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601 ], [ %i.ts, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from. ]
  %i.tt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.tt, label %bb.ei, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, !prof !223

bb.ei:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit: ; preds = %bb.ei, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.eg, %bb.ee
  store i64 0, ptr %i.px, align 8, !tbaa !1565
  %.pre444 = load ptr, ptr %.reload.addr826, align 8, !tbaa !1562 ; 2 uses
  %i.tu = icmp ne ptr %.pre444, null
  %i.tv = load ptr, ptr %.reload.addr815, align 8 ; 2 uses
  %i.tw = icmp ne ptr %i.tv, null
  %or.cond.i.i = select i1 %i.tu, i1 true, i1 %i.tw
  br i1 %or.cond.i.i, label %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418

.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit: ; preds = %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit
  %i.tx = phi ptr [ %i.td, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ %i.tv, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ]
  %i.ty = phi ptr [ %i.rv, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ %.pre444, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %.pre44628 = phi i64 [ %i.su, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ 0, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.tx
  %i.ua = load i64, ptr %i.ot, align 8
  %.not435.a = icmp eq i64 %.pre44628, %i.ua
  %or.cond = select i1 %i.tz, i1 %.not435.a, i1 false
  br i1 %or.cond, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread

.from..loopexit:                                  ; preds = %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.694

.from..loopexit.split-lp:                         ; preds = %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.694

.body216.from.694:                                ; preds = %.from..loopexit, %.from..loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.from..loopexit ], [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ]
  tail call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.body216

_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418: ; preds = %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, %bb.dz
  %.reload.addr798 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload799 = load ptr, ptr %.reload.addr798, align 8, !tbaa !8148 ; 2 uses
  %i.ub = icmp eq ptr %.reload799, null
  %spec.store.select.sroa.sel.v.sroa.sel.v723 = select i1 %i.ub, ptr %.reload.addr825.a, ptr %.reload799 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel722 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v723, i64 8
  %i.uc = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel.v723, align 8, !tbaa !1701
  %i.ud = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel722, align 8, !tbaa !1701
  %i.ue = icmp eq ptr %i.uc, %i.ud
  br i1 %i.ue, label %.from..thread420, label %.from.605.a, !prof !223

.from..thread420:                                 ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i16 2, ptr %i.b, align 2, !tbaa !215
  call void @_ZN12async_simple4coro6detail11LazyPromiseIN8coro_rpc8err_codeEE12return_valueINS3_4errcEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr837, ptr noundef nonnull align 2 dereferenceable(2) %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.from.674

.from.605.a:                                      ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418
  tail call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.from.606

.from.606:                                        ; preds = %bb.bu, %.from.605.a
  %.sroa.10393.1 = phi ptr [ %.sroa.5440.0.copyload, %.from.605.a ], [ %i.jn, %bb.bu ]
  %.sroa.10393.1.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %.sroa.10393.1, ptr %.sroa.10393.1.spill.addr, align 8
  %i.uf = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ug = icmp eq i8 %i.uf, 0
  br i1 %i.ug, label %bb.ej, label %_ZN7easylog6loggerILm0EE8instanceEv.exit274, !prof !213

bb.ej:                                            ; preds = %.from.606
  %i.uh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i271 = icmp eq i32 %i.uh, 0
  br i1 %.not.i271, label %_ZN7easylog6loggerILm0EE8instanceEv.exit274, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.el unwind label %.body216.from.684

bb.el:                                            ; preds = %bb.ek
  %i.ui = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit274

.body216.from.684:                                ; preds = %bb.ek
  %i.uj = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.body216

_ZN7easylog6loggerILm0EE8instanceEv.exit274:      ; preds = %bb.el, %bb.ej, %.from.606
  %i.uk = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.ul = icmp slt i32 %i.uk, 2
end_hunk_14
begin_hunk_15_@_ZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EE.resume:resume.entry
  %i.qh = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dq unwind label %.body216.from.689 ; 3 uses

bb.dq:                                            ; preds = %bb.dp
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qj = load atomic i64, ptr %i.qi monotonic, align 8
  %i.qk = icmp slt i64 %i.qj, 1
  br i1 %i.qk, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251: ; preds = %bb.dq
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %.sroa.0.0.copyload.i2.i.i249 = load i64, ptr %i.ql, align 8, !tbaa !316
  %i.qm = sub nsw i64 %i.qg, %.sroa.0.0.copyload.i2.i.i249
  %i.qn = sdiv i64 %i.qm, 1000000
  %i.qo = load atomic i64, ptr %i.qi monotonic, align 8
  %i.qp = srem i64 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qr = load atomic i64, ptr %i.qq monotonic, align 8
  %i.qs = icmp slt i64 %i.qp, %i.qr
  br i1 %i.qs, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread, label %.from.676

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  store i8 91, ptr %13, align 1, !alias.scope !8254
  %.sroa.0.i.sroa.4.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %13, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i252, ptr noundef nonnull align 1 dereferenceable(24) @__const._ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlvE2_clEv.prefix, i64 24, i1 false), !tbaa.struct !1487
  %.sroa.0.i.sroa.5.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %13, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i253, ptr noundef nonnull align 1 dereferenceable(3) @.str.88, i64 3, i1 false), !tbaa.struct !318
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %14, i64 %i.qg, i32 noundef 4, i64 27, ptr nonnull %13)
          to label %bb.dr unwind label %.from.591

bb.dr:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread
  %i.qt = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA11_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 1 dereferenceable(11) @.str.266)
          to label %bb.ds unwind label %.from.588

bb.ds:                                            ; preds = %bb.dr
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !8240
  %i.qu = getelementptr inbounds nuw i8, ptr %.reload, i64 152
  %i.qv = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsImEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qt, ptr noundef nonnull align 8 dereferenceable(8) %i.qu)
          to label %bb.dt unwind label %.from.588

bb.dt:                                            ; preds = %bb.ds
  %i.qw = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA23_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qv, ptr noundef nonnull align 1 dereferenceable(23) @.str.289)
          to label %bb.du unwind label %.from.588

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.qx = load ptr, ptr %.sroa.5440.0.copyload, align 8, !tbaa !195, !noalias !8255
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !8255
  invoke void %i.qz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5440.0.copyload, i32 noundef %.sroa.0.0.copyload439)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from., !inline_history !17

_ZNKSt10error_code7messageB5cxx11Ev.exit:         ; preds = %bb.du
  %i.ra = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.rb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.rc = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !319, !noundef !320
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257, label %bb.dx, !prof !223

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.rb, ptr noundef nonnull align 8 dereferenceable(80) %i.ra)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257 unwind label %bb.dy

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257: ; preds = %bb.dx, %bb.dw
  %i.re = load ptr, ptr %12, align 8, !tbaa !221  ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257
  %i.rh = load i64, ptr %i.rf, align 8, !tbaa !211
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.from.676

.body216.from.689:                                ; preds = %bb.dp
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216

.from.591:                                        ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251.thread
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.691

.from.588:                                        ; preds = %bb.dr, %bb.ds, %bb.dt
  %i.rl = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from.: ; preds = %bb.du
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

bb.dy:                                            ; preds = %bb.dx, %bb.dv, %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.rn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ro = load ptr, ptr %12, align 8, !tbaa !221  ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.dy
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !211
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #50
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  %.pn89 = phi { ptr, i32 } [ %i.rm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from. ], [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ], [ %i.rn, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %.from.590

.from.590:                                        ; preds = %.from.588, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.rl, %.from.588 ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %14) #41
  br label %.body216.from.691

.body216.from.691:                                ; preds = %.from.591, %.from.590
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %.from.590 ], [ %i.rk, %.from.591 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.body216

.from.676:                                        ; preds = %bb.do, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i16 2, ptr %i.c, align 2, !tbaa !215
  call void @_ZN12async_simple4coro6detail11LazyPromiseIN8coro_rpc8err_codeEE12return_valueINS3_4errcEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr837, ptr noundef nonnull align 2 dereferenceable(2) %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %.from.674

bb.dz:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codeN4asio2ip23basic_resolver_iteratorINS6_3tcpEEEELb0EED2Ev.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr815, i8 0, i64 24, i1 false)
  %i.rt = load ptr, ptr %.reload.addr826, align 8, !tbaa !1562 ; 2 uses
  %.not438 = icmp eq ptr %i.rt, null
  br i1 %.not438, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418, label %.from..lr.ph

.from..lr.ph:                                     ; preds = %bb.dz
  %.reload.addr806 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.reload807 = load ptr, ptr %.reload.addr806, align 8, !tbaa !8240 ; 2 uses
  %i.ru = icmp eq ptr %.reload807, null
  %spec.store.select.sroa.sel374.v.sroa.sel.v = select i1 %i.ru, ptr %.reload.addr825.a, ptr %.reload807
  %spec.store.select.sroa.sel374.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel374.v.sroa.sel.v, i64 16 ; 2 uses
  %.pre.pre = load i64, ptr %i.px, align 8, !tbaa !1565
  br label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread

_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread: ; preds = %.from..lr.ph, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit
  %i.rv = phi ptr [ %i.rt, %.from..lr.ph ], [ %i.ty, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 4 uses
  %.pre31 = phi i64 [ %.pre.pre, %.from..lr.ph ], [ %.pre44628, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %.reload791 = load ptr, ptr %.reload.addr806, align 8, !tbaa !8240 ; 3 uses
  %i.rw = icmp eq ptr %.reload791, null
  %spec.store.select.sroa.sel.v.sroa.sel.v715 = select i1 %i.rw, ptr %.reload.addr825.a, ptr %.reload791 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel714 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v715, i64 8 ; 3 uses
  %i.rx = load ptr, ptr %i.rv, align 8, !tbaa !1598
  %i.ry = getelementptr inbounds nuw [96 x i8], ptr %i.rx, i64 %.pre31 ; 2 uses
  %i.rz = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689 ; 5 uses
  %i.sa = load ptr, ptr %spec.store.select.sroa.sel374.v.sroa.sel, align 8, !tbaa !323
  %.not.i.i264 = icmp eq ptr %i.rz, %i.sa
  br i1 %.not.i.i264, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.rz, ptr noundef nonnull align 8 dereferenceable(28) %i.ry, i64 28, i1 false)
  %i.sb = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 28
  store ptr %i.sc, ptr %spec.store.select.sroa.sel.v.sroa.sel714, align 8, !tbaa !1689
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit

bb.eb:                                            ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread
  %i.sd = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel.v715, align 8, !tbaa !322 ; 5 uses
  %i.se = ptrtoint ptr %i.rz to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf                    ; 4 uses
  %i.sh = icmp eq i64 %i.sg, 9223372036854775800
  br i1 %i.sh, label %bb.ec, label %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc267.a unwind label %.from..loopexit.split-lp

.noexc267.a:                                      ; preds = %bb.ec
  unreachable

_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eb
  %i.si = sdiv exact i64 %i.sg, 28                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.si, i64 1)
  %18 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.si ; 2 uses
  %i.sj = icmp ult i64 %18, %i.si
  %i.sk = tail call i64 @llvm.umin.i64(i64 %18, i64 329406144173384850)
  %i.sl = select i1 %i.sj, i64 329406144173384850, i64 %i.sk ; 3 uses
  %.not.i.i.i.i265 = icmp ne i64 %i.sl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i265)
  %i.sm = mul nuw nsw i64 %i.sl, 28
  %i.sn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sm) #51
          to label %.noexc268 unwind label %.from..loopexit ; 5 uses

.noexc268:                                        ; preds = %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.so, ptr noundef nonnull align 8 dereferenceable(28) %i.ry, i64 28, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.sd, %i.rz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc268, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.sq, %.lr.ph.i.i.i.i.i.i ], [ %i.sn, %.noexc268 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.sp, %.lr.ph.i.i.i.i.i.i ], [ %i.sd, %.noexc268 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1597, !alias.scope !8256
  %i.sp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i266 = icmp eq ptr %i.sp, %i.rz
  br i1 %.not.i.i.i.i.i.i266, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8214

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, !llvm.loop !8214

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.noexc268, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.sq, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.from..lr.ph.i.i.i.i.i.i ], [ %i.sn, %.noexc268 ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 28
  %.not.i23.i.i.i = icmp eq ptr %i.sd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sd, i64 noundef %i.sg) #50
  %.reload797.pre = load ptr, ptr %.reload.addr806, align 8, !tbaa !8240
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ed, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %.reload797 = phi ptr [ %.reload797.pre, %bb.ed ], [ %.reload791, %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i ] ; 2 uses
  %i.ss = icmp eq ptr %.reload797, null
  %spec.store.select.sroa.sel.v.sroa.sel.v721 = select i1 %i.ss, ptr %.reload.addr825.a, ptr %.reload797 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel720 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v721, i64 8
  store ptr %i.sn, ptr %spec.store.select.sroa.sel.v.sroa.sel.v721, align 8, !tbaa !322
  store ptr %i.sr, ptr %spec.store.select.sroa.sel.v.sroa.sel720, align 8, !tbaa !1689
  %i.st = getelementptr inbounds nuw [28 x i8], ptr %i.sn, i64 %i.sl
  store ptr %i.st, ptr %spec.store.select.sroa.sel374.v.sroa.sel, align 8, !tbaa !323
  br label %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ea
  %i.su = add i64 %.pre31, 1                      ; 3 uses
  store i64 %i.su, ptr %i.px, align 8, !tbaa !1565
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !1595
  %i.sx = load ptr, ptr %i.rv, align 8, !tbaa !1598
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = sub i64 %i.sy, %i.sz
  %i.tb = sdiv exact i64 %i.ta, 96
  %i.tc = icmp eq i64 %i.su, %i.tb
  br i1 %i.tc, label %bb.ee, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread

_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread: ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit
  %i.td = load ptr, ptr %.reload.addr815, align 8
  br label %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

bb.ee:                                            ; preds = %_ZNSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE9push_backEOS4_.exit
  store ptr null, ptr %.reload.addr826, align 8, !tbaa !1592
  %i.te = load ptr, ptr %i.pg, align 8, !tbaa !240 ; 8 uses
  store ptr null, ptr %i.pg, align 8, !tbaa !240
  %.not.i.i.i.i.i269 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i.i269, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 4 uses
  %i.tg = load atomic i64, ptr %i.tf acquire, align 8 ; 2 uses
  %i.th = icmp eq i64 %i.tg, 4294967297
  %i.ti = trunc i64 %i.tg to i32                  ; 2 uses
  br i1 %i.th, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.tf, align 8, !tbaa !242
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  store i32 0, ptr %i.tj, align 4, !tbaa !243
  %i.tk = load ptr, ptr %i.te, align 8, !tbaa !195
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8
  tail call void %i.tm(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41, !inline_history !162
  %i.tn = load ptr, ptr %i.te, align 8, !tbaa !195
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.tp = load ptr, ptr %i.to, align 8
  tail call void %i.tp(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41, !inline_history !162
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

bb.eh:                                            ; preds = %bb.ef
  %i.tq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i.i270 = icmp eq i8 %i.tq, 0
  br i1 %.not.i.i.i.i.i.i270, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601: ; preds = %bb.eh
  %i.tr = add nsw i32 %i.ti, -1
  store i32 %i.tr, ptr %i.tf, align 8, !tbaa !212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.: ; preds = %bb.eh
  %i.ts = atomicrmw volatile add ptr %i.tf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ti, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from.601 ], [ %i.ts, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.from. ]
  %i.tt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.tt, label %bb.ei, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, !prof !223

bb.ei:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.te) #41
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit

_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit: ; preds = %bb.ei, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.eg, %bb.ee
  store i64 0, ptr %i.px, align 8, !tbaa !1565
  %.pre444 = load ptr, ptr %.reload.addr826, align 8, !tbaa !1562 ; 2 uses
  %i.tu = icmp ne ptr %.pre444, null
  %i.tv = load ptr, ptr %.reload.addr815, align 8 ; 2 uses
  %i.tw = icmp ne ptr %i.tv, null
  %or.cond.i.i = select i1 %i.tu, i1 true, i1 %i.tw
  br i1 %or.cond.i.i, label %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418

.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit: ; preds = %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit
  %i.tx = phi ptr [ %i.td, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ %i.tv, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ]
  %i.ty = phi ptr [ %i.rv, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ %.pre444, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %.pre44628 = phi i64 [ %i.su, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit.thread ], [ 0, %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit ] ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.tx
  %i.ua = load i64, ptr %i.ot, align 8
  %.not435.a = icmp eq i64 %.pre44628, %i.ua
  %or.cond = select i1 %i.tz, i1 %.not435.a, i1 false
  br i1 %or.cond, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418, label %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread

.from..loopexit:                                  ; preds = %_ZNKSt6vectorIN4asio2ip14basic_endpointINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.694

.from..loopexit.split-lp:                         ; preds = %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body216.from.694

.body216.from.694:                                ; preds = %.from..loopexit, %.from..loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.from..loopexit ], [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ]
  tail call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.body216

_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418: ; preds = %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, %.from._ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEEppEv.exit, %bb.dz
  %.reload.addr798 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload799 = load ptr, ptr %.reload.addr798, align 8, !tbaa !8240 ; 2 uses
  %i.ub = icmp eq ptr %.reload799, null
  %spec.store.select.sroa.sel.v.sroa.sel.v723 = select i1 %i.ub, ptr %.reload.addr825.a, ptr %.reload799 ; 2 uses
  %spec.store.select.sroa.sel.v.sroa.sel722 = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v723, i64 8
  %i.uc = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel.v723, align 8, !tbaa !1701
  %i.ud = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel722, align 8, !tbaa !1701
  %i.ue = icmp eq ptr %i.uc, %i.ud
  br i1 %i.ue, label %.from..thread420, label %.from.605.a, !prof !223

.from..thread420:                                 ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i16 2, ptr %i.b, align 2, !tbaa !215
  call void @_ZN12async_simple4coro6detail11LazyPromiseIN8coro_rpc8err_codeEE12return_valueINS3_4errcEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr837, ptr noundef nonnull align 2 dereferenceable(2) %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.from.674

.from.605.a:                                      ; preds = %_ZN4asio2ipneERKNS0_23basic_resolver_iteratorINS0_3tcpEEES5_.exit.thread418
  tail call void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr815) #41
  br label %.from.606

.from.606:                                        ; preds = %bb.bu, %.from.605.a
  %.sroa.10393.1 = phi ptr [ %.sroa.5440.0.copyload, %.from.605.a ], [ %i.jn, %bb.bu ]
  %.sroa.10393.1.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %.sroa.10393.1, ptr %.sroa.10393.1.spill.addr, align 8
  %i.uf = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ug = icmp eq i8 %i.uf, 0
  br i1 %i.ug, label %bb.ej, label %_ZN7easylog6loggerILm0EE8instanceEv.exit274, !prof !213

bb.ej:                                            ; preds = %.from.606
  %i.uh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i271 = icmp eq i32 %i.uh, 0
  br i1 %.not.i271, label %_ZN7easylog6loggerILm0EE8instanceEv.exit274, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.el unwind label %.body216.from.684

bb.el:                                            ; preds = %bb.ek
  %i.ui = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit274

.body216.from.684:                                ; preds = %bb.ek
  %i.uj = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.body216

_ZN7easylog6loggerILm0EE8instanceEv.exit274:      ; preds = %bb.el, %bb.ej, %.from.606
  %i.uk = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.ul = icmp slt i32 %i.uk, 2
end_hunk_15
begin_hunk_16_@_ZN7coro_io6detail15async_send_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.cleanup:resume.entry

AfterCoroSuspend:                                 ; preds = %resume.entry, %.critedge.thread, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i116
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i8, ptr %i.f, align 8, !tbaa !915   ; 2 uses
  %.not.i.i.i121 = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i121, label %CoroEnd, label %bb.c, !prof !223

bb.c:                                             ; preds = %AfterCoroSuspend
  %i.i = icmp ne i8 %i.h, 2
  %i.j = load ptr, ptr %i.g, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  %or.cond.i.i.i.i = select i1 %i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %CoroEnd, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.g) #41
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSuspend, %bb.c, %bb.d
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE1EN4asio17mutable_buffers_1EEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.resume(ptr noundef nonnull align 8 dereferenceable(728) %0) #34 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"struct.refvalue::meta_string.945", align 8 ; 7 uses
  %2 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %3 = alloca %"struct.std::pair.623", align 8    ; 7 uses
  %4 = alloca %"struct.std::pair.623", align 8    ; 6 uses
  %.reload.addr718 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 14 uses
  %.reload.addr720 = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 5 uses
  %.reload.addr721 = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 10 uses
  %.reload.addr722 = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %.reload.addr724 = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 9 uses
  %.reload.addr726 = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %.reload.addr730 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 721 ; 5 uses
  %index = load i8, ptr %index.addr, align 1
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend597
    i8 2, label %AfterCoroSuspend601
  ], !prof !2917

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr698 = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.reload699 = load ptr, ptr %.reload.addr698, align 8, !tbaa !8446
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr720, i8 0, i64 24, i1 false)
  invoke void @_ZN7coro_io6detail13make_sge_implIN4asio17mutable_buffers_1EEEvRSt6vectorI7ibv_sgeSaIS5_EESt4spanIT_Lm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr720, ptr nonnull align 8 dereferenceable(16) %.reload699, i64 1)
          to label %_ZN7coro_io6detail8make_sgeIN4asio17mutable_buffers_1EEEvRSt6vectorI7ibv_sgeSaIS5_EERT_.exit unwind label %.from.664

_ZN7coro_io6detail8make_sgeIN4asio17mutable_buffers_1EEEvRSt6vectorI7ibv_sgeSaIS5_EERT_.exit: ; preds = %AfterCoroSuspend
  %i.a = load ptr, ptr %.reload.addr720, align 8, !tbaa !2086 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2084 ; 4 uses
  %.spill.addr700 = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.c, ptr %.spill.addr700, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq ptr %i.c, %i.a
  br i1 %i.g, label %.from.662, label %bb.a, !prof !223

.from.662:                                        ; preds = %_ZN7coro_io6detail8make_sgeIN4asio17mutable_buffers_1EEEvRSt6vectorI7ibv_sgeSaIS5_EERT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55
  store i32 0, ptr %4, align 8, !tbaa !212
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.h, ptr %.sroa.4262.0..sroa_idx, align 8, !tbaa !434
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !1000
  call void @_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr730, ptr noundef nonnull align 8 dereferenceable(24) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %.from._ZNSt6vectorI7ibv_sgeSaIS0_EED2Ev.exit

.from.664:                                        ; preds = %AfterCoroSuspend
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt6vectorI7ibv_sgeSaIS0_EED2Ev.exit211

bb.a:                                             ; preds = %_ZN7coro_io6detail8make_sgeIN4asio17mutable_buffers_1EEEvRSt6vectorI7ibv_sgeSaIS5_EERT_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr721, i8 0, i64 24, i1 false)
  %i.k = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.k, label %bb.b, label %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.411) #52
          to label %.noexc unwind label %.from.659

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #51
          to label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit unwind label %.from.659 ; 3 uses

_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.reload.addr691 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.reload692 = load ptr, ptr %.reload.addr691, align 8, !tbaa !8446 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %i.l, ptr %.reload.addr721, align 8, !tbaa !2086
  store ptr %i.l, ptr %i.n, align 8, !tbaa !2084
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store ptr %i.o, ptr %i.m, align 8, !tbaa !2085
  store i64 0, ptr %.reload.addr724, align 8, !tbaa !316
  %i.p = getelementptr inbounds nuw i8, ptr %.reload692, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1364
  %i.r = getelementptr inbounds nuw i8, ptr %.reload692, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !801
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1010
  %i.v = sub i32 %i.q, %i.u                       ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.c, label %.preheader, !prof !223

bb.c:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.419)
          to label %bb.d unwind label %.body.from.657

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
          to label %.noexc111 unwind label %.body.from.655

.noexc111:                                        ; preds = %bb.d
  unreachable

.body.from.657:                                   ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.w) #41
  br label %.from..body

.preheader:                                       ; preds = %_ZN12async_simple11logicAssertEbPKc.exit, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %.reload70219 = phi ptr [ %i.c, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ], [ %.reload702, %_ZN12async_simple11logicAssertEbPKc.exit ]
  %.062459 = phi i32 [ 0, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ], [ %.163.lcssa, %_ZN12async_simple11logicAssertEbPKc.exit ] ; 2 uses
  %.069458 = phi i32 [ %i.v, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ], [ %.170.lcssa, %_ZN12async_simple11logicAssertEbPKc.exit ] ; 2 uses
  %.sroa.0256.0457 = phi ptr [ %i.a, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ], [ %i.fp, %_ZN12async_simple11logicAssertEbPKc.exit ] ; 4 uses
  %.sroa.0256.0457.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %.sroa.0256.0457, ptr %.sroa.0256.0457.spill.addr, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0256.0457, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !2081 ; 2 uses
  %.not467 = icmp eq i32 %i.z, 0
  br i1 %.not467, label %_ZN12async_simple11logicAssertEbPKc.exit, label %.from..lr.ph

.from.659:                                        ; preds = %bb.b, %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.body.from.655:                                   ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from..lr.ph:                                     ; preds = %.preheader, %.from.614
  %.sroa.0256.0457.reload706 = phi ptr [ %.sroa.0256.0457.reload704, %.from.614 ], [ %.sroa.0256.0457, %.preheader ] ; 2 uses
  %i.ac = phi i32 [ %i.fm, %.from.614 ], [ %i.z, %.preheader ] ; 2 uses
  %.163455 = phi i32 [ %.365, %.from.614 ], [ %.062459, %.preheader ] ; 3 uses
  %.170454 = phi i32 [ %.372, %.from.614 ], [ %.069458, %.preheader ] ; 5 uses
  %.074453 = phi i64 [ %i.fl, %.from.614 ], [ 0, %.preheader ] ; 3 uses
  %.074453.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i64 %.074453, ptr %.074453.spill.addr, align 8
  %.170454.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store i32 %.170454, ptr %.170454.spill.addr, align 8
  %.163455.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i32 %.163455, ptr %.163455.spill.addr, align 4
  %.spill.addr709 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %i.ac, ptr %.spill.addr709, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0256.0457.reload706, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.ag = sub i32 %.170454, %.163455
  %i.ah = trunc nuw i64 %.074453 to i32
  %i.ai = sub nuw i32 %i.ac, %i.ah
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %i.ag) ; 3 uses
  %i.aj = load i64, ptr %.sroa.0256.0457.reload706, align 8, !tbaa !1760
  %i.ak = add i64 %i.aj, %.074453                 ; 2 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !2918 ; 2 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !2084 ; 6 uses
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !2085
  %.not.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i, label %bb.e, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.: ; preds = %.from..lr.ph
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !316
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !212
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %i.al, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !212
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !2084
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

bb.e:                                             ; preds = %.from..lr.ph
  %i.ap = load ptr, ptr %.reload.addr721, align 8, !tbaa !2086 ; 4 uses
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.f, label %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc112 unwind label %.body.from..loopexit.split-lp345

.noexc112:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.au = ashr exact i64 %i.as, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.av = icmp ult i64 %5, %i.au
  %i.aw = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.ax = select i1 %i.av, i64 576460752303423487, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #51
          to label %.noexc113 unwind label %.body.from..loopexit344 ; 4 uses

.noexc113:                                        ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.as ; 4 uses
  store i64 %i.ak, ptr %i.ba, align 8, !tbaa !316
  %.sroa.6.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.6.0..sroa_idx248, align 8, !tbaa !212
  %.sroa.7.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 %i.al, ptr %.sroa.7.0..sroa_idx250, align 4, !tbaa !212
  %i.bb = icmp sgt i64 %i.as, 0
  br i1 %i.bb, label %bb.g, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc113
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.g, %.noexc113
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #50
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i, %bb.h
  store ptr %i.az, ptr %.reload.addr721, align 8, !tbaa !2086
  store ptr %i.bc, ptr %i.ae, align 8, !tbaa !2084
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.af, align 8, !tbaa !2085
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.
  %i.be = phi ptr [ %i.bc, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.ao, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ]
  %i.bf = add i32 %.sroa.speculated, %.163455     ; 2 uses
  %i.bg = icmp eq i32 %i.bf, %.170454
  br i1 %i.bg, label %_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE1EN4asio17mutable_buffers_1EEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.__await_suspend_wrapper__await.exit, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit..from._ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit_crit_edge

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit..from._ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit_crit_edge: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %.170454.reload713.pre = load i32, ptr %.170454.spill.addr, align 8, !tbaa !8446
  br label %.from._ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE1EN4asio17mutable_buffers_1EEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.__await_suspend_wrapper__await.exit: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %.reload.addr717 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %.reload.addr693 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.reload694 = load ptr, ptr %.reload.addr693, align 8, !tbaa !8446
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %index.addr357.i109677 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.spill.addr.i108676 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.spill.addr301.i107675 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.spill.addr318.i106674 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.spill.addr321.i105673 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.spill.addr324.i104672 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.reload.addr356.i103671 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %destroy.addr.i97670 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bk = load ptr, ptr %.reload.addr721, align 8, !tbaa !2086 ; 2 uses
  %i.bl = ptrtoint ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 4
  %i.bp = zext i32 %.170454 to i64
  store ptr @_ZN7coro_io6detail15async_send_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.resume, ptr %.reload.addr717, align 8
  store ptr @_ZN7coro_io6detail15async_send_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.cleanup, ptr %destroy.addr.i97670, align 8
  store i64 %i.bp, ptr %.spill.addr324.i104672, align 8
  store i64 %i.bo, ptr %.spill.addr321.i105673, align 8
  store ptr %i.bk, ptr %.spill.addr318.i106674, align 8
  store ptr %.reload694, ptr %.spill.addr301.i107675, align 8
  store ptr null, ptr %.spill.addr.i108676, align 8
  store i8 0, ptr %i.bj, align 8, !tbaa !915
  store i8 0, ptr %index.addr357.i109677, align 8
  store ptr %.reload.addr717, ptr %.reload.addr718, align 8, !alias.scope !8447
  store i8 1, ptr %index.addr, align 1
  store ptr %0, ptr %.reload.addr356.i103671, align 8, !tbaa !255
  %i.bq = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !255
  store <2 x ptr> %i.bq, ptr %i.bh, align 8, !tbaa !255
  %i.br = load ptr, ptr %.reload.addr717, align 8
  musttail call void %i.br(ptr nonnull %.reload.addr717)
  ret void

.body.from..loopexit344:                          ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit346 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.body.from..loopexit.split-lp345:                 ; preds = %bb.f
  %lpad.loopexit.split-lp347 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

bb.i:                                             ; preds = %.noexc117, %AfterCoroSuspend597
  %i.bs = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bt = load ptr, ptr %.reload.addr718, align 8, !tbaa !919 ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %.from..body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr nonnull %i.bt)
          to label %.from..body unwind label %bb.k, !inline_history !48

bb.k:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #49
  unreachable

AfterCoroSuspend597:                              ; preds = %resume.entry
  %i.by = load ptr, ptr %.reload.addr718, align 8, !tbaa !919, !noalias !8448
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE6resultEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bz)
          to label %.noexc117 unwind label %bb.i  ; 4 uses

.noexc117:                                        ; preds = %AfterCoroSuspend597
  %i.cb = load <2 x i32>, ptr %i.ca, align 8
  %.sroa.0244.sroa.0.0.copyload = load i32, ptr %i.ca, align 8
  %.sroa.0244.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.0244.sroa.6.0.copyload = load ptr, ptr %.sroa.0244.sroa.6.0..sroa_idx, align 8
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.5245.0.copyload = load i64, ptr %.sroa.5245.0..sroa_idx, align 8 ; 4 uses
  %i.cc = load ptr, ptr %.reload.addr718, align 8, !tbaa !919, !noalias !8448 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr %i.cc)
          to label %bb.l unwind label %bb.i, !inline_history !156

bb.l:                                             ; preds = %.noexc117
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !8446
  %i.cf = getelementptr inbounds nuw i8, ptr %.reload, i64 120
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !1364
  %i.ch = load i64, ptr %.reload.addr724, align 8, !tbaa !316
  %i.ci = add i64 %i.ch, %.sroa.5245.0.copyload
  store i64 %i.ci, ptr %.reload.addr724, align 8, !tbaa !316
  %i.cj = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.m, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !213

bb.m:                                             ; preds = %bb.l
  %i.cl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i122 = icmp eq i32 %i.cl, 0
  br i1 %.not.i122, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.o unwind label %.body.from.651

bb.o:                                             ; preds = %bb.n
  %i.cm = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

.body.from.651:                                   ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.from..body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.o, %bb.m, %bb.l
  %i.co = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.cp = icmp slt i32 %i.co, 2
  br i1 %i.cp, label %bb.p, label %_ZN7easylog8record_tD2Ev.exit

.body.from.649:                                   ; preds = %bb.ag
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

bb.p:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.cr = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #41 ; 2 uses
  %i.cs = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.q, label %_ZN7easylog6loggerILm0EE8instanceEv.exit130, !prof !213

bb.q:                                             ; preds = %bb.p
  %i.cu = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i127 = icmp eq i32 %i.cu, 0
  br i1 %.not.i127, label %_ZN7easylog6loggerILm0EE8instanceEv.exit130, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.s unwind label %.body.from.647

bb.s:                                             ; preds = %bb.r
  %i.cv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit130

.body.from.647:                                   ; preds = %bb.r
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.from..body

end_hunk_16
begin_hunk_17_@_ZN7coro_io6detail14async_io_splitILNS_11ib_socket_t7io_typeE1EN4asio17mutable_buffers_1EEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.destroy:resume.entry
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.j) #41
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEED2Ev.exit

_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEED2Ev.exit: ; preds = %AfterCoroSuspend, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.0.copyload.i = load ptr, ptr %i.n, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 136)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #49
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE1ERSt5arrayIN4asio12const_bufferELm2EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.resume(ptr noundef nonnull align 8 dereferenceable(728) %0) #34 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"struct.refvalue::meta_string.945", align 8 ; 7 uses
  %2 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %3 = alloca %"struct.std::pair.623", align 8    ; 7 uses
  %4 = alloca %"struct.std::pair.623", align 8    ; 6 uses
  %.reload.addr718 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 14 uses
  %.reload.addr720 = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 5 uses
  %.reload.addr721 = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 10 uses
  %.reload.addr722 = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %.reload.addr724 = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 9 uses
  %.reload.addr726 = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %.reload.addr730 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 721 ; 5 uses
  %index = load i8, ptr %index.addr, align 1
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend597
    i8 2, label %AfterCoroSuspend601
  ], !prof !2917

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr698 = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.reload699 = load ptr, ptr %.reload.addr698, align 8, !tbaa !8519
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr720, i8 0, i64 24, i1 false)
  invoke void @_ZN7coro_io6detail13make_sge_implIN4asio12const_bufferEEEvRSt6vectorI7ibv_sgeSaIS5_EESt4spanIT_Lm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr720, ptr nonnull align 8 dereferenceable(32) %.reload699, i64 2)
          to label %_ZN7coro_io6detail8make_sgeISt5arrayIN4asio12const_bufferELm2EEEEvRSt6vectorI7ibv_sgeSaIS7_EERT_.exit unwind label %.from.664

_ZN7coro_io6detail8make_sgeISt5arrayIN4asio12const_bufferELm2EEEEvRSt6vectorI7ibv_sgeSaIS7_EERT_.exit: ; preds = %AfterCoroSuspend
  %i.a = load ptr, ptr %.reload.addr720, align 8, !tbaa !2086 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2084 ; 4 uses
  %.spill.addr700 = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.c, ptr %.spill.addr700, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq ptr %i.c, %i.a
  br i1 %i.g, label %.from.662, label %bb.a, !prof !223

.from.662:                                        ; preds = %_ZN7coro_io6detail8make_sgeISt5arrayIN4asio12const_bufferELm2EEEEvRSt6vectorI7ibv_sgeSaIS7_EERT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55
  store i32 0, ptr %4, align 8, !tbaa !212
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.h, ptr %.sroa.4262.0..sroa_idx, align 8, !tbaa !434
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !1000
  call void @_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr730, ptr noundef nonnull align 8 dereferenceable(24) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %.from._ZNSt6vectorI7ibv_sgeSaIS0_EED2Ev.exit

.from.664:                                        ; preds = %AfterCoroSuspend
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt6vectorI7ibv_sgeSaIS0_EED2Ev.exit211

bb.a:                                             ; preds = %_ZN7coro_io6detail8make_sgeISt5arrayIN4asio12const_bufferELm2EEEEvRSt6vectorI7ibv_sgeSaIS7_EERT_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr721, i8 0, i64 24, i1 false)
  %i.k = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.k, label %bb.b, label %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.411) #52
          to label %.noexc unwind label %.from.659

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #51
          to label %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit unwind label %.from.659 ; 3 uses

_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.reload.addr691 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.reload692 = load ptr, ptr %.reload.addr691, align 8, !tbaa !8519 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %i.l, ptr %.reload.addr721, align 8, !tbaa !2086
  store ptr %i.l, ptr %i.n, align 8, !tbaa !2084
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store ptr %i.o, ptr %i.m, align 8, !tbaa !2085
  store i64 0, ptr %.reload.addr724, align 8, !tbaa !316
  %i.p = getelementptr inbounds nuw i8, ptr %.reload692, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1364
  %i.r = getelementptr inbounds nuw i8, ptr %.reload692, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !801
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1010
  %i.v = sub i32 %i.q, %i.u                       ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.c, label %.preheader, !prof !223

bb.c:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.419)
          to label %bb.d unwind label %.body.from.657

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
          to label %.noexc111 unwind label %.body.from.655

.noexc111:                                        ; preds = %bb.d
  unreachable

.body.from.657:                                   ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.w) #41
  br label %.from..body

.preheader:                                       ; preds = %_ZN12async_simple11logicAssertEbPKc.exit, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %.reload70219 = phi ptr [ %i.c, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ], [ %.reload702, %_ZN12async_simple11logicAssertEbPKc.exit ]
  %.062459 = phi i32 [ 0, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ], [ %.163.lcssa, %_ZN12async_simple11logicAssertEbPKc.exit ] ; 2 uses
  %.069458 = phi i32 [ %i.v, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ], [ %.170.lcssa, %_ZN12async_simple11logicAssertEbPKc.exit ] ; 2 uses
  %.sroa.0256.0457 = phi ptr [ %i.a, %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit ], [ %i.fp, %_ZN12async_simple11logicAssertEbPKc.exit ] ; 4 uses
  %.sroa.0256.0457.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %.sroa.0256.0457, ptr %.sroa.0256.0457.spill.addr, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0256.0457, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !2081 ; 2 uses
  %.not467 = icmp eq i32 %i.z, 0
  br i1 %.not467, label %_ZN12async_simple11logicAssertEbPKc.exit, label %.from..lr.ph

.from.659:                                        ; preds = %bb.b, %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.body.from.655:                                   ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from..lr.ph:                                     ; preds = %.preheader, %.from.614
  %.sroa.0256.0457.reload706 = phi ptr [ %.sroa.0256.0457.reload704, %.from.614 ], [ %.sroa.0256.0457, %.preheader ] ; 2 uses
  %i.ac = phi i32 [ %i.fm, %.from.614 ], [ %i.z, %.preheader ] ; 2 uses
  %.163455 = phi i32 [ %.365, %.from.614 ], [ %.062459, %.preheader ] ; 3 uses
  %.170454 = phi i32 [ %.372, %.from.614 ], [ %.069458, %.preheader ] ; 5 uses
  %.074453 = phi i64 [ %i.fl, %.from.614 ], [ 0, %.preheader ] ; 3 uses
  %.074453.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i64 %.074453, ptr %.074453.spill.addr, align 8
  %.170454.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store i32 %.170454, ptr %.170454.spill.addr, align 8
  %.163455.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i32 %.163455, ptr %.163455.spill.addr, align 4
  %.spill.addr709 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %i.ac, ptr %.spill.addr709, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0256.0457.reload706, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.ag = sub i32 %.170454, %.163455
  %i.ah = trunc nuw i64 %.074453 to i32
  %i.ai = sub nuw i32 %i.ac, %i.ah
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %i.ag) ; 3 uses
  %i.aj = load i64, ptr %.sroa.0256.0457.reload706, align 8, !tbaa !1760
  %i.ak = add i64 %i.aj, %.074453                 ; 2 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !2918 ; 2 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !2084 ; 6 uses
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !2085
  %.not.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i, label %bb.e, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.: ; preds = %.from..lr.ph
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !316
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !212
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %i.al, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !212
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !2084
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

bb.e:                                             ; preds = %.from..lr.ph
  %i.ap = load ptr, ptr %.reload.addr721, align 8, !tbaa !2086 ; 4 uses
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.f, label %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc112 unwind label %.body.from..loopexit.split-lp345

.noexc112:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.au = ashr exact i64 %i.as, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.av = icmp ult i64 %5, %i.au
  %i.aw = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.ax = select i1 %i.av, i64 576460752303423487, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #51
          to label %.noexc113 unwind label %.body.from..loopexit344 ; 4 uses

.noexc113:                                        ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.as ; 4 uses
  store i64 %i.ak, ptr %i.ba, align 8, !tbaa !316
  %.sroa.6.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.6.0..sroa_idx248, align 8, !tbaa !212
  %.sroa.7.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 %i.al, ptr %.sroa.7.0..sroa_idx250, align 4, !tbaa !212
  %i.bb = icmp sgt i64 %i.as, 0
  br i1 %i.bb, label %bb.g, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc113
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.g, %.noexc113
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #50
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i, %bb.h
  store ptr %i.az, ptr %.reload.addr721, align 8, !tbaa !2086
  store ptr %i.bc, ptr %i.ae, align 8, !tbaa !2084
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.af, align 8, !tbaa !2085
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.
  %i.be = phi ptr [ %i.bc, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.ao, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ]
  %i.bf = add i32 %.sroa.speculated, %.163455     ; 2 uses
  %i.bg = icmp eq i32 %i.bf, %.170454
  br i1 %i.bg, label %_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE1ERSt5arrayIN4asio12const_bufferELm2EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.__await_suspend_wrapper__await.exit, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit..from._ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit_crit_edge

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit..from._ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit_crit_edge: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %.170454.reload713.pre = load i32, ptr %.170454.spill.addr, align 8, !tbaa !8519
  br label %.from._ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE1ERSt5arrayIN4asio12const_bufferELm2EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.__await_suspend_wrapper__await.exit: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %.reload.addr717 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %.reload.addr693 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.reload694 = load ptr, ptr %.reload.addr693, align 8, !tbaa !8519
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %index.addr357.i109677 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.spill.addr.i108676 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.spill.addr301.i107675 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.spill.addr318.i106674 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.spill.addr321.i105673 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.spill.addr324.i104672 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.reload.addr356.i103671 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %destroy.addr.i97670 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bk = load ptr, ptr %.reload.addr721, align 8, !tbaa !2086 ; 2 uses
  %i.bl = ptrtoint ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 4
  %i.bp = zext i32 %.170454 to i64
  store ptr @_ZN7coro_io6detail15async_send_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.resume, ptr %.reload.addr717, align 8
  store ptr @_ZN7coro_io6detail15async_send_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.cleanup, ptr %destroy.addr.i97670, align 8
  store i64 %i.bp, ptr %.spill.addr324.i104672, align 8
  store i64 %i.bo, ptr %.spill.addr321.i105673, align 8
  store ptr %i.bk, ptr %.spill.addr318.i106674, align 8
  store ptr %.reload694, ptr %.spill.addr301.i107675, align 8
  store ptr null, ptr %.spill.addr.i108676, align 8
  store i8 0, ptr %i.bj, align 8, !tbaa !915
  store i8 0, ptr %index.addr357.i109677, align 8
  store ptr %.reload.addr717, ptr %.reload.addr718, align 8, !alias.scope !8520
  store i8 1, ptr %index.addr, align 1
  store ptr %0, ptr %.reload.addr356.i103671, align 8, !tbaa !255
  %i.bq = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !255
  store <2 x ptr> %i.bq, ptr %i.bh, align 8, !tbaa !255
  %i.br = load ptr, ptr %.reload.addr717, align 8
  musttail call void %i.br(ptr nonnull %.reload.addr717)
  ret void

.body.from..loopexit344:                          ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit346 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.body.from..loopexit.split-lp345:                 ; preds = %bb.f
  %lpad.loopexit.split-lp347 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

bb.i:                                             ; preds = %.noexc117, %AfterCoroSuspend597
  %i.bs = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bt = load ptr, ptr %.reload.addr718, align 8, !tbaa !919 ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %.from..body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr nonnull %i.bt)
          to label %.from..body unwind label %bb.k, !inline_history !48

bb.k:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #49
  unreachable

AfterCoroSuspend597:                              ; preds = %resume.entry
  %i.by = load ptr, ptr %.reload.addr718, align 8, !tbaa !919, !noalias !8521
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE6resultEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bz)
          to label %.noexc117 unwind label %bb.i  ; 4 uses

.noexc117:                                        ; preds = %AfterCoroSuspend597
  %i.cb = load <2 x i32>, ptr %i.ca, align 8
  %.sroa.0244.sroa.0.0.copyload = load i32, ptr %i.ca, align 8
  %.sroa.0244.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.0244.sroa.6.0.copyload = load ptr, ptr %.sroa.0244.sroa.6.0..sroa_idx, align 8
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.5245.0.copyload = load i64, ptr %.sroa.5245.0..sroa_idx, align 8 ; 4 uses
  %i.cc = load ptr, ptr %.reload.addr718, align 8, !tbaa !919, !noalias !8521 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr %i.cc)
          to label %bb.l unwind label %bb.i, !inline_history !156

bb.l:                                             ; preds = %.noexc117
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !8519
  %i.cf = getelementptr inbounds nuw i8, ptr %.reload, i64 120
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !1364
  %i.ch = load i64, ptr %.reload.addr724, align 8, !tbaa !316
  %i.ci = add i64 %i.ch, %.sroa.5245.0.copyload
  store i64 %i.ci, ptr %.reload.addr724, align 8, !tbaa !316
  %i.cj = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.m, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !213

bb.m:                                             ; preds = %bb.l
  %i.cl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i122 = icmp eq i32 %i.cl, 0
  br i1 %.not.i122, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.o unwind label %.body.from.651

bb.o:                                             ; preds = %bb.n
  %i.cm = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

.body.from.651:                                   ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.from..body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.o, %bb.m, %bb.l
  %i.co = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.cp = icmp slt i32 %i.co, 2
  br i1 %i.cp, label %bb.p, label %_ZN7easylog8record_tD2Ev.exit

.body.from.649:                                   ; preds = %bb.ag
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

bb.p:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.cr = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #41 ; 2 uses
  %i.cs = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.q, label %_ZN7easylog6loggerILm0EE8instanceEv.exit130, !prof !213

bb.q:                                             ; preds = %bb.p
  %i.cu = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i127 = icmp eq i32 %i.cu, 0
  br i1 %.not.i127, label %_ZN7easylog6loggerILm0EE8instanceEv.exit130, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.s unwind label %.body.from.647

bb.s:                                             ; preds = %bb.r
  %i.cv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit130

.body.from.647:                                   ; preds = %bb.r
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.from..body

end_hunk_17
begin_hunk_18_@_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE0EN4asio17mutable_buffers_1EEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.resume:resume.entry
  musttail call void @_ZN7coro_io6detail14consume_bufferI7ibv_sgeEEN12async_simple4coro4LazyImEERNS_11ib_socket_tERSt4spanIT_Lm18446744073709551615EE.resume(ptr nonnull %i.r)
  ret void

bb.c:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #41, !noalias !9121 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.89)
          to label %bb.d unwind label %_ZN12async_simple4coro6detail8LazyBaseImLb0EED2Ev.exit106.from.712, !noalias !9121

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
          to label %.noexc99 unwind label %_ZN12async_simple4coro6detail8LazyBaseImLb0EED2Ev.exit106.from.710

.noexc99:                                         ; preds = %bb.d
  unreachable

_ZN12async_simple4coro6detail8LazyBaseImLb0EED2Ev.exit106.from.712: ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.y) #41, !noalias !9121
  br label %.from..body108

.from.798:                                        ; preds = %bb.b, %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

_ZN12async_simple4coro6detail8LazyBaseImLb0EED2Ev.exit106.from.710: ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

bb.e:                                             ; preds = %.noexc100, %AfterCoroSuspend689
  %i.ac = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ad = load ptr, ptr %.reload.addr866, align 8, !tbaa !2935 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %.from..body108, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr nonnull %i.ad)
          to label %.from..body108 unwind label %bb.g, !inline_history !173

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #49
  unreachable

AfterCoroSuspend689:                              ; preds = %resume.entry
  %i.ai = load ptr, ptr %.reload.addr866, align 8, !tbaa !2935
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNO12async_simple4coro6detail11LazyPromiseImE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %.noexc100 unwind label %bb.e

.noexc100:                                        ; preds = %AfterCoroSuspend689
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !316 ; 2 uses
  %i.am = load ptr, ptr %.reload.addr866, align 8, !tbaa !2935 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr %i.am)
          to label %bb.h unwind label %bb.e, !inline_history !174

bb.h:                                             ; preds = %.noexc100
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.al, ptr %.reload.addr873, align 8, !tbaa !316
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !2931 ; 3 uses
  %.spill.addr837 = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 %i.aq, ptr %.spill.addr837, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.av = load i8, ptr %i.as, align 8, !tbaa !915 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.av, -1
  br i1 %.not.i.i.i.i.i, label %.from._ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E.exit, label %bb.j, !prof !223

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp ne i8 %i.av, 2
  %i.ax = load ptr, ptr %i.au, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  %or.cond.i.i.i.i.i.i = select i1 %i.aw, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %.from._ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.au) #41
  br label %.from._ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E.exit

.from._ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E.exit: ; preds = %bb.i, %bb.j, %bb.k
  store i32 0, ptr %i.au, align 8
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.at, ptr %.sroa.5278.0..sroa_idx, align 8
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %.sroa.6279.0..sroa_idx, align 8
  store i8 1, ptr %i.as, align 8, !tbaa !915
  br label %.from..thread372

bb.l:                                             ; preds = %bb.h
  %.reload.addr823 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.reload824 = load ptr, ptr %.reload.addr823, align 8, !tbaa !9117
  %i.ay = getelementptr inbounds nuw i8, ptr %.reload824, i64 120
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1364 ; 5 uses
  %.spill.addr840 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.az, ptr %.spill.addr840, align 8
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.m, label %.preheader.from..preheader.lr.ph, !prof !223

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.419)
          to label %bb.n unwind label %.body108.from.796

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
          to label %.noexc107 unwind label %.body108.from.794

.noexc107:                                        ; preds = %bb.n
  unreachable

.body108.from.796:                                ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ba) #41
  br label %.from..body108

.preheader.from..preheader.lr.ph:                 ; preds = %bb.l
  %i.bc = load ptr, ptr %.reload.addr872.a, align 8, !tbaa !2080 ; 3 uses
  %.spill.addr853 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.bc, ptr %.spill.addr853, align 8
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.from..preheader.lr.ph
  %.reload852.pre59 = phi i32 [ %i.az, %.preheader.from..preheader.lr.ph ], [ %.reload852.pre60, %._crit_edge ] ; 2 uses
  %.reload83956 = phi i64 [ %i.aq, %.preheader.from..preheader.lr.ph ], [ %.reload839, %._crit_edge ]
  %.reload85554 = phi ptr [ %i.bc, %.preheader.from..preheader.lr.ph ], [ %.reload855, %._crit_edge ]
  %.reload84249 = phi i32 [ %i.az, %.preheader.from..preheader.lr.ph ], [ %.reload84250, %._crit_edge ] ; 2 uses
  %.reload85045 = phi i32 [ %i.az, %.preheader.from..preheader.lr.ph ], [ %.reload85046, %._crit_edge ] ; 2 uses
  %.064503 = phi i32 [ 0, %.preheader.from..preheader.lr.ph ], [ %.165.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0270.0502 = phi ptr [ %i.bc, %.preheader.from..preheader.lr.ph ], [ %i.gy, %._crit_edge ] ; 4 uses
  %.sroa.0270.0502.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %.sroa.0270.0502, ptr %.sroa.0270.0502.spill.addr, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0270.0502, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2081 ; 2 uses
  %.not511 = icmp eq i32 %i.be, 0
  br i1 %.not511, label %._crit_edge, label %.from..lr.ph

.body108.from.794:                                ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

.from..lr.ph:                                     ; preds = %.preheader, %.from.719
  %.reload852.pre58 = phi i32 [ %.reload852.pre61, %.from.719 ], [ %.reload852.pre59, %.preheader ] ; 2 uses
  %.reload84248 = phi i32 [ %.reload842, %.from.719 ], [ %.reload84249, %.preheader ]
  %.reload850 = phi i32 [ %.reload842, %.from.719 ], [ %.reload85045, %.preheader ] ; 2 uses
  %.sroa.0270.0502.reload859 = phi ptr [ %.sroa.0270.0502.reload857, %.from.719 ], [ %.sroa.0270.0502, %.preheader ] ; 2 uses
  %i.bg = phi i32 [ %i.gu, %.from.719 ], [ %i.be, %.preheader ] ; 2 uses
  %.165501 = phi i32 [ %.367, %.from.719 ], [ %.064503, %.preheader ] ; 3 uses
  %.071500 = phi i64 [ %i.gt, %.from.719 ], [ 0, %.preheader ] ; 3 uses
  %.071500.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %.071500, ptr %.071500.spill.addr, align 8
  %.165501.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 %.165501, ptr %.165501.spill.addr, align 8
  %.spill.addr862 = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %i.bg, ptr %.spill.addr862, align 4
  %.reload.addr849 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0270.0502.reload859, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bk = sub i32 %.reload850, %.165501
  %i.bl = trunc nuw i64 %.071500 to i32
  %i.bm = sub nuw i32 %i.bg, %i.bl
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bk) ; 3 uses
  %i.bn = load i64, ptr %.sroa.0270.0502.reload859, align 8, !tbaa !1760
  %i.bo = add i64 %i.bn, %.071500                 ; 2 uses
  %i.bp = load i32, ptr %i.bh, align 4, !tbaa !2918 ; 2 uses
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !2084 ; 6 uses
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !2085
  %.not.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i, label %bb.o, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.: ; preds = %.from..lr.ph
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !316
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !212
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 %i.bp, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !212
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bi, align 8, !tbaa !2084
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

bb.o:                                             ; preds = %.from..lr.ph
  %i.bt = load ptr, ptr %.reload.addr869.a, align 8, !tbaa !2086 ; 4 uses
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 6 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775792
  br i1 %i.bx, label %bb.p, label %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc110 unwind label %.body108.from..loopexit.split-lp382

.noexc110:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.by = ashr exact i64 %i.bw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.bz = icmp ult i64 %6, %i.by
  %i.ca = tail call i64 @llvm.umin.i64(i64 %6, i64 576460752303423487)
  %i.cb = select i1 %i.bz, i64 576460752303423487, i64 %i.ca ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #51
          to label %.noexc111 unwind label %.body108.from..loopexit381 ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bw ; 4 uses
  store i64 %i.bo, ptr %i.ce, align 8, !tbaa !316
  %.sroa.6.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.6.0..sroa_idx262, align 8, !tbaa !212
  %.sroa.7.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 %i.bp, ptr %.sroa.7.0..sroa_idx264, align 4, !tbaa !212
  %i.cf = icmp sgt i64 %i.bw, 0
  br i1 %i.cf, label %bb.q, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc111
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.q, %.noexc111
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #50
  %.reload852.pre.pre = load i32, ptr %.reload.addr849, align 8, !tbaa !9117
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i, %bb.r
  %.reload852.pre = phi i32 [ %.reload852.pre58, %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i ], [ %.reload852.pre.pre, %bb.r ] ; 3 uses
  store ptr %i.cd, ptr %.reload.addr869.a, align 8, !tbaa !2086
  store ptr %i.cg, ptr %i.bi, align 8, !tbaa !2084
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.bj, align 8, !tbaa !2085
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.
  %.reload852.pre62 = phi i32 [ %.reload852.pre, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.reload852.pre58, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ]
  %.reload84252 = phi i32 [ %.reload852.pre, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.reload84248, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ]
  %.reload852 = phi i32 [ %.reload852.pre, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.reload850, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ] ; 2 uses
  %i.ci = phi ptr [ %i.cg, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.bs, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ]
  %i.cj = add i32 %.sroa.speculated, %.165501     ; 2 uses
  %i.ck = icmp eq i32 %i.cj, %.reload852
  br i1 %i.ck, label %_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE0EN4asio17mutable_buffers_1EEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.__await_suspend_wrapper__await2.exit, label %.from._ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE0EN4asio17mutable_buffers_1EEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.__await_suspend_wrapper__await2.exit: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %.reload.addr865 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %.reload.addr827 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.reload828 = load ptr, ptr %.reload.addr827, align 8, !tbaa !9117
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index.addr133.i817 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.spill.addr.i816 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.spill.addr112.i815 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.spill.addr119.i814 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.spill.addr122.i813 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cn = zext i32 %.reload852 to i64
  %.spill.addr125.i812 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.reload.addr132.i811 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %destroy.addr.i810 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %.reload.addr869.a, align 8, !tbaa !2086 ; 2 uses
  %i.cq = ptrtoint ptr %i.ci to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 4
  store ptr @_ZN7coro_io6detail15async_recv_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.resume, ptr %.reload.addr865, align 8
  store ptr @_ZN7coro_io6detail15async_recv_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.cleanup, ptr %destroy.addr.i810, align 8
  store i64 %i.cn, ptr %.spill.addr125.i812, align 8
  store i64 %i.ct, ptr %.spill.addr122.i813, align 8
  store ptr %i.cp, ptr %.spill.addr119.i814, align 8
  store ptr %.reload828, ptr %.spill.addr112.i815, align 8
  store ptr null, ptr %.spill.addr.i816, align 8
  store i8 0, ptr %i.cm, align 8, !tbaa !915
  store i8 0, ptr %index.addr133.i817, align 8
  store ptr %.reload.addr865, ptr %.reload.addr866, align 8, !alias.scope !9122
  store i8 2, ptr %index.addr, align 1
  store ptr %0, ptr %.reload.addr132.i811, align 8, !tbaa !255
  %i.cu = load <2 x ptr>, ptr %i.co, align 8, !tbaa !255
  store <2 x ptr> %i.cu, ptr %i.cl, align 8, !tbaa !255
  %i.cv = load ptr, ptr %.reload.addr865, align 8
  musttail call void %i.cv(ptr nonnull %.reload.addr865)
  ret void

.body108.from..loopexit381:                       ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit383 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

.body108.from..loopexit.split-lp382:              ; preds = %bb.p
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

bb.s:                                             ; preds = %.noexc118, %AfterCoroSuspend693
  %i.cw = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cx = load ptr, ptr %.reload.addr866, align 8, !tbaa !919 ; 3 uses
  %.not.i117 = icmp eq ptr %i.cx, null
  br i1 %.not.i117, label %.from..body108, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr nonnull %i.cx)
          to label %.from..body108 unwind label %bb.u, !inline_history !48

bb.u:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  tail call void @__clang_call_terminate(ptr %i.db) #49
  unreachable

AfterCoroSuspend693:                              ; preds = %resume.entry
  %i.dc = load ptr, ptr %.reload.addr866, align 8, !tbaa !919, !noalias !9123
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE6resultEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dd)
          to label %.noexc118 unwind label %bb.s  ; 4 uses

.noexc118:                                        ; preds = %AfterCoroSuspend693
  %.sroa.0258.sroa.0.0.copyload = load i32, ptr %i.de, align 8 ; 2 uses
  %.sroa.0258.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.sroa.0258.sroa.5.0.copyload = load i32, ptr %.sroa.0258.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0258.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.0258.sroa.6.0.copyload = load ptr, ptr %.sroa.0258.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.5259.0.copyload = load i64, ptr %.sroa.5259.0..sroa_idx, align 8 ; 4 uses
  %i.df = load ptr, ptr %.reload.addr866, align 8, !tbaa !919, !noalias !9123 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr %i.df)
          to label %bb.v unwind label %bb.s, !inline_history !156

bb.v:                                             ; preds = %.noexc118
  %i.di = load i64, ptr %.reload.addr873, align 8, !tbaa !316
  %i.dj = add i64 %i.di, %.sroa.5259.0.copyload
  store i64 %i.dj, ptr %.reload.addr873, align 8, !tbaa !316
  %i.dk = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.w, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !213

bb.w:                                             ; preds = %bb.v
  %i.dm = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i123 = icmp eq i32 %i.dm, 0
  br i1 %.not.i123, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.y unwind label %.body108.from.790

bb.y:                                             ; preds = %bb.x
  %i.dn = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

.body108.from.790:                                ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.from..body108

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.y, %bb.w, %bb.v
  %i.dp = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.dq = icmp slt i32 %i.dp, 2
  br i1 %i.dq, label %bb.z, label %_ZN7easylog8record_tD2Ev.exit

.body108.from.788:                                ; preds = %bb.at
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

bb.z:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.ds = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #41 ; 2 uses
  %i.dt = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.aa, label %_ZN7easylog6loggerILm0EE8instanceEv.exit131, !prof !213

bb.aa:                                            ; preds = %bb.z
  %i.dv = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i128 = icmp eq i32 %i.dv, 0
  br i1 %.not.i128, label %_ZN7easylog6loggerILm0EE8instanceEv.exit131, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.ac unwind label %.body108.from.786

bb.ac:                                            ; preds = %bb.ab
  %i.dw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit131

.body108.from.786:                                ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.from..body108

_ZN7easylog6loggerILm0EE8instanceEv.exit131:      ; preds = %bb.ac, %bb.aa, %bb.z
  %i.dy = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
end_hunk_18
begin_hunk_19_@_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE0ERSt5arrayIN4asio14mutable_bufferELm2EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.resume:resume.entry
  musttail call void @_ZN7coro_io6detail14consume_bufferI7ibv_sgeEEN12async_simple4coro4LazyImEERNS_11ib_socket_tERSt4spanIT_Lm18446744073709551615EE.resume(ptr nonnull %i.r)
  ret void

bb.c:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE7reserveEm.exit
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #41, !noalias !9212 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.89)
          to label %bb.d unwind label %_ZN12async_simple4coro6detail8LazyBaseImLb0EED2Ev.exit106.from.712, !noalias !9212

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
          to label %.noexc99 unwind label %_ZN12async_simple4coro6detail8LazyBaseImLb0EED2Ev.exit106.from.710

.noexc99:                                         ; preds = %bb.d
  unreachable

_ZN12async_simple4coro6detail8LazyBaseImLb0EED2Ev.exit106.from.712: ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.y) #41, !noalias !9212
  br label %.from..body108

.from.798:                                        ; preds = %bb.b, %_ZNSt12_Vector_baseI7ibv_sgeSaIS0_EE11_M_allocateEm.exit.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

_ZN12async_simple4coro6detail8LazyBaseImLb0EED2Ev.exit106.from.710: ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

bb.e:                                             ; preds = %.noexc100, %AfterCoroSuspend689
  %i.ac = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ad = load ptr, ptr %.reload.addr866, align 8, !tbaa !2935 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %.from..body108, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr nonnull %i.ad)
          to label %.from..body108 unwind label %bb.g, !inline_history !173

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #49
  unreachable

AfterCoroSuspend689:                              ; preds = %resume.entry
  %i.ai = load ptr, ptr %.reload.addr866, align 8, !tbaa !2935
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNO12async_simple4coro6detail11LazyPromiseImE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %.noexc100 unwind label %bb.e

.noexc100:                                        ; preds = %AfterCoroSuspend689
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !316 ; 2 uses
  %i.am = load ptr, ptr %.reload.addr866, align 8, !tbaa !2935 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr %i.am)
          to label %bb.h unwind label %bb.e, !inline_history !174

bb.h:                                             ; preds = %.noexc100
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.al, ptr %.reload.addr873, align 8, !tbaa !316
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !2931 ; 3 uses
  %.spill.addr837 = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 %i.aq, ptr %.spill.addr837, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.av = load i8, ptr %i.as, align 8, !tbaa !915 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.av, -1
  br i1 %.not.i.i.i.i.i, label %.from._ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E.exit, label %bb.j, !prof !223

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp ne i8 %i.av, 2
  %i.ax = load ptr, ptr %i.au, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  %or.cond.i.i.i.i.i.i = select i1 %i.aw, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %.from._ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.au) #41
  br label %.from._ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E.exit

.from._ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS5_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S8_E.exit: ; preds = %bb.i, %bb.j, %bb.k
  store i32 0, ptr %i.au, align 8
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.at, ptr %.sroa.5278.0..sroa_idx, align 8
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %.sroa.6279.0..sroa_idx, align 8
  store i8 1, ptr %i.as, align 8, !tbaa !915
  br label %.from..thread372

bb.l:                                             ; preds = %bb.h
  %.reload.addr823 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.reload824 = load ptr, ptr %.reload.addr823, align 8, !tbaa !9208
  %i.ay = getelementptr inbounds nuw i8, ptr %.reload824, i64 120
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1364 ; 5 uses
  %.spill.addr840 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.az, ptr %.spill.addr840, align 8
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.m, label %.preheader.from..preheader.lr.ph, !prof !223

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 16) #41 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.419)
          to label %bb.n unwind label %.body108.from.796

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
          to label %.noexc107 unwind label %.body108.from.794

.noexc107:                                        ; preds = %bb.n
  unreachable

.body108.from.796:                                ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ba) #41
  br label %.from..body108

.preheader.from..preheader.lr.ph:                 ; preds = %bb.l
  %i.bc = load ptr, ptr %.reload.addr872.a, align 8, !tbaa !2080 ; 3 uses
  %.spill.addr853 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.bc, ptr %.spill.addr853, align 8
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.from..preheader.lr.ph
  %.reload852.pre59 = phi i32 [ %i.az, %.preheader.from..preheader.lr.ph ], [ %.reload852.pre60, %._crit_edge ] ; 2 uses
  %.reload83956 = phi i64 [ %i.aq, %.preheader.from..preheader.lr.ph ], [ %.reload839, %._crit_edge ]
  %.reload85554 = phi ptr [ %i.bc, %.preheader.from..preheader.lr.ph ], [ %.reload855, %._crit_edge ]
  %.reload84249 = phi i32 [ %i.az, %.preheader.from..preheader.lr.ph ], [ %.reload84250, %._crit_edge ] ; 2 uses
  %.reload85045 = phi i32 [ %i.az, %.preheader.from..preheader.lr.ph ], [ %.reload85046, %._crit_edge ] ; 2 uses
  %.064503 = phi i32 [ 0, %.preheader.from..preheader.lr.ph ], [ %.165.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0270.0502 = phi ptr [ %i.bc, %.preheader.from..preheader.lr.ph ], [ %i.gy, %._crit_edge ] ; 4 uses
  %.sroa.0270.0502.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %.sroa.0270.0502, ptr %.sroa.0270.0502.spill.addr, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0270.0502, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2081 ; 2 uses
  %.not511 = icmp eq i32 %i.be, 0
  br i1 %.not511, label %._crit_edge, label %.from..lr.ph

.body108.from.794:                                ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

.from..lr.ph:                                     ; preds = %.preheader, %.from.719
  %.reload852.pre58 = phi i32 [ %.reload852.pre61, %.from.719 ], [ %.reload852.pre59, %.preheader ] ; 2 uses
  %.reload84248 = phi i32 [ %.reload842, %.from.719 ], [ %.reload84249, %.preheader ]
  %.reload850 = phi i32 [ %.reload842, %.from.719 ], [ %.reload85045, %.preheader ] ; 2 uses
  %.sroa.0270.0502.reload859 = phi ptr [ %.sroa.0270.0502.reload857, %.from.719 ], [ %.sroa.0270.0502, %.preheader ] ; 2 uses
  %i.bg = phi i32 [ %i.gu, %.from.719 ], [ %i.be, %.preheader ] ; 2 uses
  %.165501 = phi i32 [ %.367, %.from.719 ], [ %.064503, %.preheader ] ; 3 uses
  %.071500 = phi i64 [ %i.gt, %.from.719 ], [ 0, %.preheader ] ; 3 uses
  %.071500.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %.071500, ptr %.071500.spill.addr, align 8
  %.165501.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 %.165501, ptr %.165501.spill.addr, align 8
  %.spill.addr862 = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %i.bg, ptr %.spill.addr862, align 4
  %.reload.addr849 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0270.0502.reload859, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bk = sub i32 %.reload850, %.165501
  %i.bl = trunc nuw i64 %.071500 to i32
  %i.bm = sub nuw i32 %i.bg, %i.bl
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bk) ; 3 uses
  %i.bn = load i64, ptr %.sroa.0270.0502.reload859, align 8, !tbaa !1760
  %i.bo = add i64 %i.bn, %.071500                 ; 2 uses
  %i.bp = load i32, ptr %i.bh, align 4, !tbaa !2918 ; 2 uses
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !2084 ; 6 uses
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !2085
  %.not.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i, label %bb.o, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.: ; preds = %.from..lr.ph
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !316
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !212
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 %i.bp, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !212
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bi, align 8, !tbaa !2084
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

bb.o:                                             ; preds = %.from..lr.ph
  %i.bt = load ptr, ptr %.reload.addr869.a, align 8, !tbaa !2086 ; 4 uses
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 6 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775792
  br i1 %i.bx, label %bb.p, label %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #52
          to label %.noexc110 unwind label %.body108.from..loopexit.split-lp382

.noexc110:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.by = ashr exact i64 %i.bw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.bz = icmp ult i64 %6, %i.by
  %i.ca = tail call i64 @llvm.umin.i64(i64 %6, i64 576460752303423487)
  %i.cb = select i1 %i.bz, i64 576460752303423487, i64 %i.ca ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #51
          to label %.noexc111 unwind label %.body108.from..loopexit381 ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bw ; 4 uses
  store i64 %i.bo, ptr %i.ce, align 8, !tbaa !316
  %.sroa.6.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %.sroa.speculated, ptr %.sroa.6.0..sroa_idx262, align 8, !tbaa !212
  %.sroa.7.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 %i.bp, ptr %.sroa.7.0..sroa_idx264, align 4, !tbaa !212
  %i.cf = icmp sgt i64 %i.bw, 0
  br i1 %i.cf, label %bb.q, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc111
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.q, %.noexc111
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #50
  %.reload852.pre.pre = load i32, ptr %.reload.addr849, align 8, !tbaa !9208
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i, %bb.r
  %.reload852.pre = phi i32 [ %.reload852.pre58, %_ZNSt6vectorI7ibv_sgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i ], [ %.reload852.pre.pre, %bb.r ] ; 3 uses
  store ptr %i.cd, ptr %.reload.addr869.a, align 8, !tbaa !2086
  store ptr %i.cg, ptr %i.bi, align 8, !tbaa !2084
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.bj, align 8, !tbaa !2085
  br label %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from.
  %.reload852.pre62 = phi i32 [ %.reload852.pre, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.reload852.pre58, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ]
  %.reload84252 = phi i32 [ %.reload852.pre, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.reload84248, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ]
  %.reload852 = phi i32 [ %.reload852.pre, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.reload850, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ] ; 2 uses
  %i.ci = phi ptr [ %i.cg, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from._ZNSt6vectorI7ibv_sgeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.bs, %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit.from. ]
  %i.cj = add i32 %.sroa.speculated, %.165501     ; 2 uses
  %i.ck = icmp eq i32 %i.cj, %.reload852
  br i1 %i.ck, label %_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE0ERSt5arrayIN4asio14mutable_bufferELm2EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.__await_suspend_wrapper__await2.exit, label %.from._ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit

_ZN7coro_io6detail19async_io_split_implILNS_11ib_socket_t7io_typeE0ERSt5arrayIN4asio14mutable_bufferELm2EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERS2_OT0_b.__await_suspend_wrapper__await2.exit: ; preds = %_ZNSt6vectorI7ibv_sgeSaIS0_EE9push_backEOS0_.exit
  %.reload.addr865 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %.reload.addr827 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.reload828 = load ptr, ptr %.reload.addr827, align 8, !tbaa !9208
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index.addr133.i817 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.spill.addr.i816 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.spill.addr112.i815 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.spill.addr119.i814 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.spill.addr122.i813 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cn = zext i32 %.reload852 to i64
  %.spill.addr125.i812 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.reload.addr132.i811 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %destroy.addr.i810 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %.reload.addr869.a, align 8, !tbaa !2086 ; 2 uses
  %i.cq = ptrtoint ptr %i.ci to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 4
  store ptr @_ZN7coro_io6detail15async_recv_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.resume, ptr %.reload.addr865, align 8
  store ptr @_ZN7coro_io6detail15async_recv_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.cleanup, ptr %destroy.addr.i810, align 8
  store i64 %i.cn, ptr %.spill.addr125.i812, align 8
  store i64 %i.ct, ptr %.spill.addr122.i813, align 8
  store ptr %i.cp, ptr %.spill.addr119.i814, align 8
  store ptr %.reload828, ptr %.spill.addr112.i815, align 8
  store ptr null, ptr %.spill.addr.i816, align 8
  store i8 0, ptr %i.cm, align 8, !tbaa !915
  store i8 0, ptr %index.addr133.i817, align 8
  store ptr %.reload.addr865, ptr %.reload.addr866, align 8, !alias.scope !9213
  store i8 2, ptr %index.addr, align 1
  store ptr %0, ptr %.reload.addr132.i811, align 8, !tbaa !255
  %i.cu = load <2 x ptr>, ptr %i.co, align 8, !tbaa !255
  store <2 x ptr> %i.cu, ptr %i.cl, align 8, !tbaa !255
  %i.cv = load ptr, ptr %.reload.addr865, align 8
  musttail call void %i.cv(ptr nonnull %.reload.addr865)
  ret void

.body108.from..loopexit381:                       ; preds = %_ZNKSt6vectorI7ibv_sgeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit383 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

.body108.from..loopexit.split-lp382:              ; preds = %bb.p
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

bb.s:                                             ; preds = %.noexc118, %AfterCoroSuspend693
  %i.cw = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cx = load ptr, ptr %.reload.addr866, align 8, !tbaa !919 ; 3 uses
  %.not.i117 = icmp eq ptr %i.cx, null
  br i1 %.not.i117, label %.from..body108, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr nonnull %i.cx)
          to label %.from..body108 unwind label %bb.u, !inline_history !48

bb.u:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  tail call void @__clang_call_terminate(ptr %i.db) #49
  unreachable

AfterCoroSuspend693:                              ; preds = %resume.entry
  %i.dc = load ptr, ptr %.reload.addr866, align 8, !tbaa !919, !noalias !9214
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE6resultEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dd)
          to label %.noexc118 unwind label %bb.s  ; 4 uses

.noexc118:                                        ; preds = %AfterCoroSuspend693
  %.sroa.0258.sroa.0.0.copyload = load i32, ptr %i.de, align 8 ; 2 uses
  %.sroa.0258.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.sroa.0258.sroa.5.0.copyload = load i32, ptr %.sroa.0258.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0258.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.0258.sroa.6.0.copyload = load ptr, ptr %.sroa.0258.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.5259.0.copyload = load i64, ptr %.sroa.5259.0..sroa_idx, align 8 ; 4 uses
  %i.df = load ptr, ptr %.reload.addr866, align 8, !tbaa !919, !noalias !9214 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr %i.df)
          to label %bb.v unwind label %bb.s, !inline_history !156

bb.v:                                             ; preds = %.noexc118
  %i.di = load i64, ptr %.reload.addr873, align 8, !tbaa !316
  %i.dj = add i64 %i.di, %.sroa.5259.0.copyload
  store i64 %i.dj, ptr %.reload.addr873, align 8, !tbaa !316
  %i.dk = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.w, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !213

bb.w:                                             ; preds = %bb.v
  %i.dm = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i123 = icmp eq i32 %i.dm, 0
  br i1 %.not.i123, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.y unwind label %.body108.from.790

bb.y:                                             ; preds = %bb.x
  %i.dn = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

.body108.from.790:                                ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.from..body108

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.y, %bb.w, %bb.v
  %i.dp = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.dq = icmp slt i32 %i.dp, 2
  br i1 %i.dq, label %bb.z, label %_ZN7easylog8record_tD2Ev.exit

.body108.from.788:                                ; preds = %bb.at
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body108

bb.z:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.ds = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #41 ; 2 uses
  %i.dt = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.aa, label %_ZN7easylog6loggerILm0EE8instanceEv.exit131, !prof !213

bb.aa:                                            ; preds = %bb.z
  %i.dv = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  %.not.i128 = icmp eq i32 %i.dv, 0
  br i1 %.not.i128, label %_ZN7easylog6loggerILm0EE8instanceEv.exit131, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.ac unwind label %.body108.from.786

bb.ac:                                            ; preds = %bb.ab
  %i.dw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit131

.body108.from.786:                                ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #41
  br label %.from..body108

_ZN7easylog6loggerILm0EE8instanceEv.exit131:      ; preds = %bb.ac, %bb.aa, %bb.z
  %i.dy = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
end_hunk_19
