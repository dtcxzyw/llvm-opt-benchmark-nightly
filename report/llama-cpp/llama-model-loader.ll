Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-model-loader?download=true
inline.NumInlined: 7519
inline.NumDeleted: 3205
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN18llama_model_loaderC2EP12gguf_contextPFvP11ggml_tensorPvES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISC_SaISC_EEP8_IO_FILE15llama_load_modebbbPK23llama_model_kv_overridePK32llama_model_tensor_buft_override:bb.a
          to label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exitthread-pre-split unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #36
  unreachable

_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exitthread-pre-split: ; preds = %bb.o
  %.pr = load ptr, ptr %i.bc, align 8, !tbaa !174
  br label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit

_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit: ; preds = %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exitthread-pre-split, %bb.n
  %i.en = phi ptr [ %.pr, %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exitthread-pre-split ], [ %i.ej, %bb.n ] ; 2 uses
  store ptr %i.en, ptr %i.bd, align 8, !tbaa !123
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit
  %i.ep = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  %i.eq = load ptr, ptr %4, align 8, !tbaa !52
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__._ZN18llama_model_loaderC2EP12gguf_contextPFvP11ggml_tensorPvES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISC_SaISC_EEP8_IO_FILE15llama_load_modebbbPK23llama_model_kv_overridePK32llama_model_tensor_buft_override, ptr noundef %i.eq)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.ep, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.lt unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread: ; preds = %bb.q
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0215 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.et = load ptr, ptr %22, align 8, !tbaa !52   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.t
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !53
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  br i1 %.0215, label %bb.u, label %.loopexit.split-lp778

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  br i1 %.0215, label %bb.u, label %.loopexit.split-lp778

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %.pn281708 = phi { ptr, i32 } [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ]
  call void @__cxa_free_exception(ptr %i.ep) #33
  br label %.loopexit.split-lp778

bb.v:                                             ; preds = %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i32 noundef 1)
          to label %bb.w unwind label %bb.aj

bb.w:                                             ; preds = %bb.v
  %i.ey = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23llama_model_kv_overrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %.noexc333 unwind label %bb.ak ; 2 uses

.noexc333:                                        ; preds = %bb.w
  %i.ez = load ptr, ptr %i.bd, align 8, !tbaa !123 ; 2 uses
  %i.fa = load ptr, ptr %23, align 8, !tbaa !52
  %i.fb = invoke i64 @gguf_find_key(ptr noundef %i.ez, ptr noundef %i.fa)
          to label %.noexc334 unwind label %bb.ak

.noexc334:                                        ; preds = %.noexc333
  %.not21.i = icmp eq ptr %i.ey, null
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fd = select i1 %.not21.i, ptr null, ptr %i.fc
  %i.fe = trunc i64 %i.fb to i32
  %i.ff = invoke noundef zeroext i1 @_ZN8GGUFMeta3GKVINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3setEPK12gguf_contextiRS6_PK23llama_model_kv_override(ptr noundef %i.ez, i32 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef %i.fd)
          to label %_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS6_RT_b.exit unwind label %bb.ak ; 0 uses

_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS6_RT_b.exit: ; preds = %.noexc334
  %i.fg = load ptr, ptr %23, align 8, !tbaa !52   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS6_RT_b.exit
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !53
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS6_RT_b.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  %i.fl = invoke noundef i32 @_Z20llm_arch_from_stringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  invoke void @_ZN6LLM_KVC1E8llm_archPKc(ptr noundef nonnull align 8 dereferenceable(16) %24, i32 noundef %i.fl, ptr noundef null)
          to label %bb.y unwind label %bb.al

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !729
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  %i.fm = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37
          to label %bb.z unwind label %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.z:                                             ; preds = %bb.y
  %i.fn = load ptr, ptr %4, align 8, !tbaa !52
  %i.fo = load i8, ptr %i.ac, align 1, !tbaa !727, !range !150, !noundef !151
  %i.fp = trunc nuw i8 %i.fo to i1
  invoke void @_ZN10llama_fileC1EPKcS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef %i.fn, ptr noundef nonnull @.str.45, i1 noundef zeroext %i.fp)
          to label %bb.aa unwind label %bb.am

bb.aa:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !176 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !177
  %.not.i = icmp eq ptr %i.fr, %i.ft
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.fm, ptr %i.fr, align 8, !tbaa !179
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !176
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fv = load ptr, ptr %i.ao, align 8, !tbaa !180 ; 10 uses
  %i.fw = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fx = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 4 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.af, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #35
          to label %.cont unwind label %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.ga = ashr exact i64 %i.fy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 1152921504606846975)
  %i.ge = select i1 %i.gc, i64 1152921504606846975, i64 %i.gd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #37
          to label %.noexc340 unwind label %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc340:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy
  store ptr %i.fm, ptr %i.gh, align 8, !tbaa !179
  %.not10.i.i.i.i.i = icmp eq ptr %i.fv, %i.fr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc340
  %i.gi = add i64 %i.fw, -8
  %i.gj = sub i64 %i.gi, %i.fx                    ; 3 uses
  %i.gk = lshr i64 %i.gj, 3
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader1585, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.gm = and i64 %i.gj, -8
  %i.gn = add i64 %i.gm, 8                        ; 2 uses
  %i.go = getelementptr i8, ptr %i.gg, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.fv, i64 %i.gn
  %bound0 = icmp ult ptr %i.gg, %i.gp
  %bound1 = icmp ult ptr %i.fv, %i.go
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader1585, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gl, 4611686018427387900     ; 3 uses
  %i.gq = shl i64 %n.vec, 3                       ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gg, i64 %i.gq  ; 2 uses
  %i.gs = getelementptr i8, ptr %i.fv, i64 %i.gq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gg, i64 %i.gt ; 2 uses
  %next.gep1371 = getelementptr i8, ptr %i.fv, i64 %i.gt ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.gu = getelementptr i8, ptr %next.gep1371, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep1371, align 8, !tbaa !179, !alias.scope !732
  %wide.load1372 = load <2 x i64>, ptr %i.gu, align 8, !tbaa !179, !alias.scope !732
  %i.gv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !179, !alias.scope !733, !noalias !734
  store <2 x i64> %wide.load1372, ptr %i.gv, align 8, !tbaa !179, !alias.scope !733, !noalias !734
  store <2 x ptr> splat (ptr null), ptr %next.gep1371, align 8, !tbaa !179, !alias.scope !732
  store <2 x ptr> splat (ptr null), ptr %i.gu, align 8, !tbaa !179, !alias.scope !732
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader1585

.lr.ph.i.i.i.i.i.preheader1585:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gg, %vector.memcheck ], [ %i.gg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gr, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.fv, %vector.memcheck ], [ %i.fv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1585, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1585 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1585 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.gx = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !179, !alias.scope !731
  store i64 %i.gx, ptr %.012.i.i.i.i.i, align 8, !tbaa !179, !alias.scope !730
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !179, !alias.scope !731
  %i.gy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gy, %i.fr
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !673

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc340
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gg, %.noexc340 ], [ %i.gr, %middle.block ], [ %i.gz, %.lr.ph.i.i.i.i.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fy) #34
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.gg, ptr %i.ao, align 8, !tbaa !180
  store ptr %i.ha, ptr %i.fq, align 8, !tbaa !176
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.hb, ptr %i.fs, align 8, !tbaa !177
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !181 ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !182
  %.not.i341 = icmp eq ptr %i.hd, %i.hf
  br i1 %.not.i341, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit
  %i.hg = load ptr, ptr %i.s, align 8, !tbaa !173 ; 2 uses
  store ptr %i.hg, ptr %i.hd, align 8, !tbaa !173
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hh, ptr %i.hc, align 8, !tbaa !181
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit
  %i.hi = load ptr, ptr %i.bg, align 8, !tbaa !183 ; 10 uses
  %i.hj = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64               ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 4 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775800
  br i1 %i.hm, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.af
  %i.hn = ashr exact i64 %i.hl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i342 = call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i342, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = call i64 @llvm.umin.i64(i64 %i.ho, i64 1152921504606846975)
  %i.hr = select i1 %i.hp, i64 1152921504606846975, i64 %i.hq ; 3 uses
  %.not.i.i.i343 = icmp ne i64 %i.hr, 0
  call void @llvm.assume(i1 %.not.i.i.i343)
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #37
          to label %.noexc352 unwind label %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc352:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hl
  %i.hv = load ptr, ptr %i.s, align 8, !tbaa !173
  store ptr %i.hv, ptr %i.hu, align 8, !tbaa !173
  %.not10.i.i.i.i.i344 = icmp eq ptr %i.hi, %i.hd
  br i1 %.not10.i.i.i.i.i344, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i345.preheader

.lr.ph.i.i.i.i.i345.preheader:                    ; preds = %.noexc352
  %i.hw = add i64 %i.hj, -8
  %i.hx = sub i64 %i.hw, %i.hk                    ; 3 uses
  %i.hy = lshr i64 %i.hx, 3
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check1380 = icmp ult i64 %i.hx, 136
  br i1 %min.iters.check1380, label %.lr.ph.i.i.i.i.i345.preheader1583, label %vector.memcheck1381

vector.memcheck1381:                              ; preds = %.lr.ph.i.i.i.i.i345.preheader
  %i.ia = and i64 %i.hx, -8
  %i.ib = add i64 %i.ia, 8                        ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ht, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.hi, i64 %i.ib
  %bound01382 = icmp ult ptr %i.ht, %i.id
  %bound11383 = icmp ult ptr %i.hi, %i.ic
  %found.conflict1384 = and i1 %bound01382, %bound11383
  br i1 %found.conflict1384, label %.lr.ph.i.i.i.i.i345.preheader1583, label %vector.ph1385

vector.ph1385:                                    ; preds = %vector.memcheck1381
  %n.vec1386 = and i64 %i.hz, 4611686018427387900 ; 3 uses
  %i.ie = shl i64 %n.vec1386, 3                   ; 2 uses
  %i.if = getelementptr i8, ptr %i.ht, i64 %i.ie  ; 2 uses
  %i.ig = getelementptr i8, ptr %i.hi, i64 %i.ie
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1385
  %index1388 = phi i64 [ 0, %vector.ph1385 ], [ %index.next1393, %vector.body1387 ] ; 2 uses
  %i.ih = shl i64 %index1388, 3                   ; 2 uses
  %next.gep1389 = getelementptr i8, ptr %i.ht, i64 %i.ih ; 2 uses
  %next.gep1390 = getelementptr i8, ptr %i.hi, i64 %i.ih ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.ii = getelementptr i8, ptr %next.gep1390, i64 16 ; 2 uses
  %wide.load1391 = load <2 x i64>, ptr %next.gep1390, align 8, !tbaa !173, !alias.scope !737
  %wide.load1392 = load <2 x i64>, ptr %i.ii, align 8, !tbaa !173, !alias.scope !737
  %i.ij = getelementptr i8, ptr %next.gep1389, i64 16
  store <2 x i64> %wide.load1391, ptr %next.gep1389, align 8, !tbaa !173, !alias.scope !738, !noalias !739
  store <2 x i64> %wide.load1392, ptr %i.ij, align 8, !tbaa !173, !alias.scope !738, !noalias !739
  store <2 x ptr> splat (ptr null), ptr %next.gep1390, align 8, !tbaa !173, !alias.scope !737
  store <2 x ptr> splat (ptr null), ptr %i.ii, align 8, !tbaa !173, !alias.scope !737
  %index.next1393 = add nuw i64 %index1388, 4     ; 2 uses
  %i.ik = icmp eq i64 %index.next1393, %n.vec1386
  br i1 %i.ik, label %middle.block1394, label %vector.body1387, !llvm.loop !680

middle.block1394:                                 ; preds = %vector.body1387
  %cmp.n1395 = icmp eq i64 %i.hz, %n.vec1386
  br i1 %cmp.n1395, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i345.preheader1583

.lr.ph.i.i.i.i.i345.preheader1583:                ; preds = %vector.memcheck1381, %.lr.ph.i.i.i.i.i345.preheader, %middle.block1394
  %.012.i.i.i.i.i346.ph = phi ptr [ %i.ht, %vector.memcheck1381 ], [ %i.ht, %.lr.ph.i.i.i.i.i345.preheader ], [ %i.if, %middle.block1394 ]
  %.0911.i.i.i.i.i347.ph = phi ptr [ %i.hi, %vector.memcheck1381 ], [ %i.hi, %.lr.ph.i.i.i.i.i345.preheader ], [ %i.ig, %middle.block1394 ]
  br label %.lr.ph.i.i.i.i.i345

.lr.ph.i.i.i.i.i345:                              ; preds = %.lr.ph.i.i.i.i.i345.preheader1583, %.lr.ph.i.i.i.i.i345
  %.012.i.i.i.i.i346 = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i345 ], [ %.012.i.i.i.i.i346.ph, %.lr.ph.i.i.i.i.i345.preheader1583 ] ; 2 uses
  %.0911.i.i.i.i.i347 = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i345 ], [ %.0911.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i345.preheader1583 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.il = load i64, ptr %.0911.i.i.i.i.i347, align 8, !tbaa !173, !alias.scope !736
  store i64 %i.il, ptr %.012.i.i.i.i.i346, align 8, !tbaa !173, !alias.scope !735
  store ptr null, ptr %.0911.i.i.i.i.i347, align 8, !tbaa !173, !alias.scope !736
  %i.im = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i347, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i346, i64 8 ; 2 uses
  %.not.i.i.i.i.i348 = icmp eq ptr %i.im, %i.hd
  br i1 %.not.i.i.i.i.i348, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i345, !llvm.loop !681

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i345, %middle.block1394, %.noexc352
  %.0.lcssa.i.i.i.i.i349 = phi ptr [ %i.ht, %.noexc352 ], [ %i.if, %middle.block1394 ], [ %i.in, %.lr.ph.i.i.i.i.i345 ]
  %i.io = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i349, i64 8
  %.not.i23.i.i350 = icmp eq ptr %i.hi, null
  br i1 %.not.i23.i.i350, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hl) #34
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ht, ptr %i.bg, align 8, !tbaa !183
  store ptr %i.io, ptr %i.hc, align 8, !tbaa !181
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hr
  store ptr %i.ip, ptr %i.he, align 8, !tbaa !182
  %.pre991 = load ptr, ptr %i.s, align 8, !tbaa !173
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ae
  %i.iq = phi ptr [ %.pre991, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.hg, %bb.ae ]
  %i.ir = invoke ptr @ggml_get_first_tensor(ptr noundef %i.iq)
          to label %.preheader776 unwind label %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader776:                                    ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit
  %i.is = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.it = getelementptr inbounds nuw i8, ptr %25, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader776, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %.0217 = phi ptr [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ], [ %i.ir, %.preheader776 ] ; 7 uses
  %.not239 = icmp eq ptr %.0217, null
  br i1 %.not239, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i32 noundef 161)
          to label %bb.bg unwind label %bb.bo

bb.aj:                                            ; preds = %bb.v
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

bb.ak:                                            ; preds = %.noexc334, %.noexc333, %bb.w
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = load ptr, ptr %23, align 8, !tbaa !52   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.ak
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !53
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.iu, %bb.aj ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ], [ %i.iv, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %.loopexit.split-lp778

bb.al:                                            ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %.loopexit.split-lp778

bb.am:                                            ; preds = %bb.z
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef 8) #34
  br label %.loopexit.split-lp778

.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %.invoke, %bb.y, %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.m, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit
  %lpad.loopexit.split-lp1576 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp778

bb.an:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  %i.jd = getelementptr inbounds nuw i8, ptr %.0217, i64 256 ; 3 uses
  store ptr %i.is, ptr %25, align 8, !tbaa !135
  %i.je = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jd) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #33
  store i64 %i.je, ptr %i.q, align 8, !tbaa !136
  %i.jf = icmp ugt i64 %i.je, 15
  br i1 %i.jf, label %.noexc.i357, label %._crit_edge.i.i356

.noexc.i357:                                      ; preds = %bb.an
  %i.jg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc358 unwind label %bb.av ; 2 uses

.noexc358:                                        ; preds = %.noexc.i357
  store ptr %i.jg, ptr %25, align 8, !tbaa !52
  %i.jh = load i64, ptr %i.q, align 8, !tbaa !136
  store i64 %i.jh, ptr %i.is, align 8, !tbaa !53
  br label %._crit_edge.i.i356

._crit_edge.i.i356:                               ; preds = %.noexc358, %bb.an
  %i.ji = phi ptr [ %i.jg, %.noexc358 ], [ %i.is, %bb.an ] ; 2 uses
  switch i64 %i.je, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i356
  %i.jj = load i8, ptr %i.jd, align 1, !tbaa !53
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !53
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i356
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr nonnull align 1 %i.jd, i64 %i.je, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i356
  %i.jk = load i64, ptr %i.q, align 8, !tbaa !136 ; 2 uses
  store i64 %i.jk, ptr %i.it, align 8, !tbaa !137
  %i.jl = load ptr, ptr %25, align 8, !tbaa !52
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jk
  store i8 0, ptr %i.jm, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #33
  %i.jn = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N18llama_model_loader19llama_tensor_weightEESt10_Select1stISA_ENS8_20weight_name_comparerESaISA_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18llama_model_loader19llama_tensor_weightENS6_20weight_name_comparerESaISt4pairIKS5_S7_EEE4findERSA_.exit unwind label %bb.bd

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18llama_model_loader19llama_tensor_weightENS6_20weight_name_comparerESaISt4pairIKS5_S7_EEE4findERSA_.exit: ; preds = %bb.aq
  %.not748 = icmp eq ptr %i.jn, %i.ar
  br i1 %.not748, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18llama_model_loader19llama_tensor_weightENS6_20weight_name_comparerESaISt4pairIKS5_S7_EEE4findERSA_.exit
  %i.jo = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  %i.jp = invoke ptr @ggml_get_name(ptr noundef nonnull %.0217)
          to label %bb.as unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread

bb.as:                                            ; preds = %bb.ar
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull @.str.46, ptr noundef %i.jp)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread

bb.at:                                            ; preds = %bb.as
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr nonnull %i.jo, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.lt unwind label %bb.aw

bb.av:                                            ; preds = %.noexc.i357
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread: ; preds = %bb.ar, %bb.as
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au, %bb.at
  %.0222 = phi i1 [ false, %bb.au ], [ true, %bb.at ] ; 2 uses
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jt = load ptr, ptr %26, align 8, !tbaa !52   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %bb.aw
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !53
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  br i1 %.0222, label %bb.ax, label %bb.bf

end_hunk_0
begin_hunk_1_@_ZN18llama_model_loaderC2EP12gguf_contextPFvP11ggml_tensorPvES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISC_SaISC_EEP8_IO_FILE15llama_load_modebbbPK23llama_model_kv_overridePK32llama_model_tensor_buft_override:bb.a

bb.ea:                                            ; preds = %bb.dt
  %i.tj = load ptr, ptr %29, align 8, !tbaa !52
  %i.tk = invoke i64 @gguf_find_key(ptr noundef nonnull %i.sz, ptr noundef %i.tj)
          to label %bb.eb unwind label %.loopexit.split-lp769.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  %i.tl = and i64 %i.tk, 2147483648
  %.not251 = icmp eq i64 %i.tl, 0
  br i1 %.not251, label %bb.eh, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.tm = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #33
  %i.tn = load ptr, ptr %29, align 8, !tbaa !52
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull @.str.51, ptr noundef %i.tn, ptr noundef %i.sy)
          to label %bb.ed unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.tm, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  invoke void @__cxa_throw(ptr nonnull %i.tm, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.lt unwind label %bb.ef

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread: ; preds = %bb.ec
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.0211 = phi i1 [ false, %bb.ee ], [ true, %bb.ed ] ; 2 uses
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.tq = load ptr, ptr %35, align 8, !tbaa !52   ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.ts = icmp eq ptr %i.tq, %i.tr
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %bb.ef
  %i.tt = load i64, ptr %i.tr, align 8, !tbaa !53
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tu) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br i1 %.0211, label %bb.eg, label %.loopexit.split-lp769.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br i1 %.0211, label %bb.eg, label %.loopexit.split-lp769.loopexit.split-lp

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %.pn264726 = phi { ptr, i32 } [ %i.to, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread ], [ %i.tp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 ], [ %i.tp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400 ]
  call void @__cxa_free_exception(ptr %i.tm) #33
  br label %.loopexit.split-lp769.loopexit.split-lp

bb.eh:                                            ; preds = %bb.eb
  %i.tv = and i64 %i.tk, 2147483647
  %i.tw = invoke zeroext i16 @gguf_get_val_u16(ptr noundef nonnull %i.sz, i64 noundef %i.tv)
          to label %bb.ei unwind label %.loopexit.split-lp769.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %i.tx = load i16, ptr %i.t, align 2, !tbaa !188
  %.not252 = icmp eq i16 %i.tw, %i.tx
  br i1 %.not252, label %bb.eo, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ty = zext i16 %i.tw to i32
  %i.tz = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #33
  %i.ua = load i16, ptr %i.t, align 2, !tbaa !188
  %i.ub = zext i16 %i.ua to i32
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull @.str.52, i32 noundef %i.ty, ptr noundef %i.sy, i32 noundef %i.ub)
          to label %bb.ek unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  invoke void @__cxa_throw(ptr nonnull %i.tz, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.lt unwind label %bb.em

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread: ; preds = %bb.ej
  %i.uc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  br label %bb.en

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.0209 = phi i1 [ false, %bb.el ], [ true, %bb.ek ] ; 2 uses
  %i.ud = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ue = load ptr, ptr %36, align 8, !tbaa !52   ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.em
  %i.uh = load i64, ptr %i.uf, align 8, !tbaa !53
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.ui) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  br i1 %.0209, label %bb.en, label %.loopexit.split-lp769.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  br i1 %.0209, label %bb.en, label %.loopexit.split-lp769.loopexit.split-lp

bb.en:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %.pn261729 = phi { ptr, i32 } [ %i.uc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread ], [ %i.ud, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ], [ %i.ud, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ]
  call void @__cxa_free_exception(ptr %i.tz) #33
  br label %.loopexit.split-lp769.loopexit.split-lp

bb.eo:                                            ; preds = %bb.ei
  %i.uj = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37
          to label %bb.ep unwind label %.loopexit.split-lp769.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ep:                                            ; preds = %bb.eo
  %i.uk = load i8, ptr %i.ac, align 1, !tbaa !727, !range !150, !noundef !151
  %i.ul = trunc nuw i8 %i.uk to i1
  invoke void @_ZN10llama_fileC1EPKcS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.uj, ptr noundef %i.sy, ptr noundef nonnull @.str.45, i1 noundef zeroext %i.ul)
          to label %bb.eq unwind label %bb.fa

bb.eq:                                            ; preds = %bb.ep
  %i.um = load ptr, ptr %i.fq, align 8, !tbaa !176 ; 6 uses
  %i.un = load ptr, ptr %i.fs, align 8, !tbaa !177
  %.not.i406 = icmp eq ptr %i.um, %i.un
  br i1 %.not.i406, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store ptr %i.uj, ptr %i.um, align 8, !tbaa !179
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store ptr %i.uo, ptr %i.fq, align 8, !tbaa !176
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit421

bb.es:                                            ; preds = %bb.eq
  %i.up = load ptr, ptr %i.ao, align 8, !tbaa !180 ; 10 uses
  %i.uq = ptrtoint ptr %i.um to i64               ; 2 uses
  %i.ur = ptrtoint ptr %i.up to i64               ; 2 uses
  %i.us = sub i64 %i.uq, %i.ur                    ; 4 uses
  %i.ut = icmp eq i64 %i.us, 9223372036854775800
  br i1 %i.ut, label %.invoke1289, label %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i407

.invoke1289:                                      ; preds = %bb.ev, %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #35
          to label %.cont1290 unwind label %.loopexit.split-lp769.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1290:                                        ; preds = %.invoke1289
  unreachable

_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i407: ; preds = %bb.es
  %i.uu = ashr exact i64 %i.us, 3                 ; 3 uses
  %.sroa.speculated.i.i.i408 = call i64 @llvm.umax.i64(i64 %i.uu, i64 1)
  %i.uv = add nsw i64 %.sroa.speculated.i.i.i408, %i.uu ; 2 uses
  %i.uw = icmp ult i64 %i.uv, %i.uu
  %i.ux = call i64 @llvm.umin.i64(i64 %i.uv, i64 1152921504606846975)
  %i.uy = select i1 %i.uw, i64 1152921504606846975, i64 %i.ux ; 3 uses
  %.not.i.i.i409 = icmp ne i64 %i.uy, 0
  call void @llvm.assume(i1 %.not.i.i.i409)
  %i.uz = shl nuw nsw i64 %i.uy, 3
  %i.va = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uz) #37
          to label %.noexc420 unwind label %.loopexit.split-lp769.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc420:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i407
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.us
  store ptr %i.uj, ptr %i.vb, align 8, !tbaa !179
  %.not10.i.i.i.i.i410 = icmp eq ptr %i.up, %i.um
  br i1 %.not10.i.i.i.i.i410, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i415, label %.lr.ph.i.i.i.i.i411.preheader

.lr.ph.i.i.i.i.i411.preheader:                    ; preds = %.noexc420
  %i.vc = add i64 %i.uq, -8
  %i.vd = sub i64 %i.vc, %i.ur                    ; 3 uses
  %i.ve = lshr i64 %i.vd, 3
  %i.vf = add nuw nsw i64 %i.ve, 1                ; 2 uses
  %min.iters.check1432 = icmp ult i64 %i.vd, 56
  br i1 %min.iters.check1432, label %.lr.ph.i.i.i.i.i411.preheader1527, label %vector.memcheck1433

vector.memcheck1433:                              ; preds = %.lr.ph.i.i.i.i.i411.preheader
  %i.vg = and i64 %i.vd, -8
  %i.vh = add i64 %i.vg, 8                        ; 2 uses
  %i.vi = getelementptr i8, ptr %i.va, i64 %i.vh
  %i.vj = getelementptr i8, ptr %i.up, i64 %i.vh
  %bound01434 = icmp ult ptr %i.va, %i.vj
  %bound11435 = icmp ult ptr %i.up, %i.vi
  %found.conflict1436 = and i1 %bound01434, %bound11435
  br i1 %found.conflict1436, label %.lr.ph.i.i.i.i.i411.preheader1527, label %vector.ph1437

vector.ph1437:                                    ; preds = %vector.memcheck1433
  %n.vec1438 = and i64 %i.vf, 4611686018427387900 ; 3 uses
  %i.vk = shl i64 %n.vec1438, 3                   ; 2 uses
  %i.vl = getelementptr i8, ptr %i.va, i64 %i.vk  ; 2 uses
  %i.vm = getelementptr i8, ptr %i.up, i64 %i.vk
  br label %vector.body1439

vector.body1439:                                  ; preds = %vector.body1439, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1445, %vector.body1439 ] ; 2 uses
  %i.vn = shl i64 %index1440, 3                   ; 2 uses
  %next.gep1441 = getelementptr i8, ptr %i.va, i64 %i.vn ; 2 uses
  %next.gep1442 = getelementptr i8, ptr %i.up, i64 %i.vn ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.vo = getelementptr i8, ptr %next.gep1442, i64 16 ; 2 uses
  %wide.load1443 = load <2 x i64>, ptr %next.gep1442, align 8, !tbaa !179, !alias.scope !743
  %wide.load1444 = load <2 x i64>, ptr %i.vo, align 8, !tbaa !179, !alias.scope !743
  %i.vp = getelementptr i8, ptr %next.gep1441, i64 16
  store <2 x i64> %wide.load1443, ptr %next.gep1441, align 8, !tbaa !179, !alias.scope !744, !noalias !745
  store <2 x i64> %wide.load1444, ptr %i.vp, align 8, !tbaa !179, !alias.scope !744, !noalias !745
  store <2 x ptr> splat (ptr null), ptr %next.gep1442, align 8, !tbaa !179, !alias.scope !743
  store <2 x ptr> splat (ptr null), ptr %i.vo, align 8, !tbaa !179, !alias.scope !743
  %index.next1445 = add nuw i64 %index1440, 4     ; 2 uses
  %i.vq = icmp eq i64 %index.next1445, %n.vec1438
  br i1 %i.vq, label %middle.block1446, label %vector.body1439, !llvm.loop !692

middle.block1446:                                 ; preds = %vector.body1439
  %cmp.n1447 = icmp eq i64 %i.vf, %n.vec1438
  br i1 %cmp.n1447, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i415, label %.lr.ph.i.i.i.i.i411.preheader1527

.lr.ph.i.i.i.i.i411.preheader1527:                ; preds = %vector.memcheck1433, %.lr.ph.i.i.i.i.i411.preheader, %middle.block1446
  %.012.i.i.i.i.i412.ph = phi ptr [ %i.va, %vector.memcheck1433 ], [ %i.va, %.lr.ph.i.i.i.i.i411.preheader ], [ %i.vl, %middle.block1446 ]
  %.0911.i.i.i.i.i413.ph = phi ptr [ %i.up, %vector.memcheck1433 ], [ %i.up, %.lr.ph.i.i.i.i.i411.preheader ], [ %i.vm, %middle.block1446 ]
  br label %.lr.ph.i.i.i.i.i411

.lr.ph.i.i.i.i.i411:                              ; preds = %.lr.ph.i.i.i.i.i411.preheader1527, %.lr.ph.i.i.i.i.i411
  %.012.i.i.i.i.i412 = phi ptr [ %i.vt, %.lr.ph.i.i.i.i.i411 ], [ %.012.i.i.i.i.i412.ph, %.lr.ph.i.i.i.i.i411.preheader1527 ] ; 2 uses
  %.0911.i.i.i.i.i413 = phi ptr [ %i.vs, %.lr.ph.i.i.i.i.i411 ], [ %.0911.i.i.i.i.i413.ph, %.lr.ph.i.i.i.i.i411.preheader1527 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.vr = load i64, ptr %.0911.i.i.i.i.i413, align 8, !tbaa !179, !alias.scope !742
  store i64 %i.vr, ptr %.012.i.i.i.i.i412, align 8, !tbaa !179, !alias.scope !741
  store ptr null, ptr %.0911.i.i.i.i.i413, align 8, !tbaa !179, !alias.scope !742
  %i.vs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i413, i64 8 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i412, i64 8 ; 2 uses
  %.not.i.i.i.i.i414 = icmp eq ptr %i.vs, %i.um
  br i1 %.not.i.i.i.i.i414, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i415, label %.lr.ph.i.i.i.i.i411, !llvm.loop !693

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i415: ; preds = %.lr.ph.i.i.i.i.i411, %middle.block1446, %.noexc420
  %.0.lcssa.i.i.i.i.i416 = phi ptr [ %i.va, %.noexc420 ], [ %i.vl, %middle.block1446 ], [ %i.vt, %.lr.ph.i.i.i.i.i411 ]
  %i.vu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i416, i64 8
  %.not.i23.i.i417 = icmp eq ptr %i.up, null
  br i1 %.not.i23.i.i417, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i418, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i415
  call void @_ZdlPvm(ptr noundef nonnull %i.up, i64 noundef %i.us) #34
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i418

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i418: ; preds = %bb.et, %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i415
  store ptr %i.va, ptr %i.ao, align 8, !tbaa !180
  store ptr %i.vu, ptr %i.fq, align 8, !tbaa !176
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.uy
  store ptr %i.vv, ptr %i.fs, align 8, !tbaa !177
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit421

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit421: ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i418, %bb.er
  %i.vw = load ptr, ptr %i.hc, align 8, !tbaa !181 ; 6 uses
  %i.vx = load ptr, ptr %i.he, align 8, !tbaa !182
  %.not.i422 = icmp eq ptr %i.vw, %i.vx
  br i1 %.not.i422, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit421
  %i.vy = load ptr, ptr %i.s, align 8, !tbaa !173 ; 2 uses
  store ptr %i.vy, ptr %i.vw, align 8, !tbaa !173
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  store ptr %i.vz, ptr %i.hc, align 8, !tbaa !181
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit437

bb.ev:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit421
  %i.wa = load ptr, ptr %i.bg, align 8, !tbaa !183 ; 10 uses
  %i.wb = ptrtoint ptr %i.vw to i64               ; 2 uses
  %i.wc = ptrtoint ptr %i.wa to i64               ; 2 uses
  %i.wd = sub i64 %i.wb, %i.wc                    ; 4 uses
  %i.we = icmp eq i64 %i.wd, 9223372036854775800
  br i1 %i.we, label %.invoke1289, label %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i423

_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i423: ; preds = %bb.ev
  %i.wf = ashr exact i64 %i.wd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i424 = call i64 @llvm.umax.i64(i64 %i.wf, i64 1)
  %i.wg = add nsw i64 %.sroa.speculated.i.i.i424, %i.wf ; 2 uses
  %i.wh = icmp ult i64 %i.wg, %i.wf
  %i.wi = call i64 @llvm.umin.i64(i64 %i.wg, i64 1152921504606846975)
  %i.wj = select i1 %i.wh, i64 1152921504606846975, i64 %i.wi ; 3 uses
  %.not.i.i.i425 = icmp ne i64 %i.wj, 0
  call void @llvm.assume(i1 %.not.i.i.i425)
  %i.wk = shl nuw nsw i64 %i.wj, 3
  %i.wl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wk) #37
          to label %.noexc436 unwind label %.loopexit.split-lp769.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i423
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.wd
  %i.wn = load ptr, ptr %i.s, align 8, !tbaa !173
  store ptr %i.wn, ptr %i.wm, align 8, !tbaa !173
  %.not10.i.i.i.i.i426 = icmp eq ptr %i.wa, %i.vw
  br i1 %.not10.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i431, label %.lr.ph.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i427.preheader:                    ; preds = %.noexc436
  %i.wo = add i64 %i.wb, -8
  %i.wp = sub i64 %i.wo, %i.wc                    ; 3 uses
  %i.wq = lshr i64 %i.wp, 3
  %i.wr = add nuw nsw i64 %i.wq, 1                ; 2 uses
  %min.iters.check1406 = icmp ult i64 %i.wp, 56
  br i1 %min.iters.check1406, label %.lr.ph.i.i.i.i.i427.preheader1526, label %vector.memcheck1407

vector.memcheck1407:                              ; preds = %.lr.ph.i.i.i.i.i427.preheader
  %i.ws = and i64 %i.wp, -8
  %i.wt = add i64 %i.ws, 8                        ; 2 uses
  %i.wu = getelementptr i8, ptr %i.wl, i64 %i.wt
  %i.wv = getelementptr i8, ptr %i.wa, i64 %i.wt
  %bound01408 = icmp ult ptr %i.wl, %i.wv
  %bound11409 = icmp ult ptr %i.wa, %i.wu
  %found.conflict1410 = and i1 %bound01408, %bound11409
  br i1 %found.conflict1410, label %.lr.ph.i.i.i.i.i427.preheader1526, label %vector.ph1411

vector.ph1411:                                    ; preds = %vector.memcheck1407
  %n.vec1412 = and i64 %i.wr, 4611686018427387900 ; 3 uses
  %i.ww = shl i64 %n.vec1412, 3                   ; 2 uses
  %i.wx = getelementptr i8, ptr %i.wl, i64 %i.ww  ; 2 uses
  %i.wy = getelementptr i8, ptr %i.wa, i64 %i.ww
  br label %vector.body1413

vector.body1413:                                  ; preds = %vector.body1413, %vector.ph1411
  %index1414 = phi i64 [ 0, %vector.ph1411 ], [ %index.next1419, %vector.body1413 ] ; 2 uses
  %i.wz = shl i64 %index1414, 3                   ; 2 uses
  %next.gep1415 = getelementptr i8, ptr %i.wl, i64 %i.wz ; 2 uses
  %next.gep1416 = getelementptr i8, ptr %i.wa, i64 %i.wz ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.xa = getelementptr i8, ptr %next.gep1416, i64 16 ; 2 uses
  %wide.load1417 = load <2 x i64>, ptr %next.gep1416, align 8, !tbaa !173, !alias.scope !748
  %wide.load1418 = load <2 x i64>, ptr %i.xa, align 8, !tbaa !173, !alias.scope !748
  %i.xb = getelementptr i8, ptr %next.gep1415, i64 16
  store <2 x i64> %wide.load1417, ptr %next.gep1415, align 8, !tbaa !173, !alias.scope !749, !noalias !750
  store <2 x i64> %wide.load1418, ptr %i.xb, align 8, !tbaa !173, !alias.scope !749, !noalias !750
  store <2 x ptr> splat (ptr null), ptr %next.gep1416, align 8, !tbaa !173, !alias.scope !748
  store <2 x ptr> splat (ptr null), ptr %i.xa, align 8, !tbaa !173, !alias.scope !748
  %index.next1419 = add nuw i64 %index1414, 4     ; 2 uses
  %i.xc = icmp eq i64 %index.next1419, %n.vec1412
  br i1 %i.xc, label %middle.block1420, label %vector.body1413, !llvm.loop !700

middle.block1420:                                 ; preds = %vector.body1413
  %cmp.n1421 = icmp eq i64 %i.wr, %n.vec1412
  br i1 %cmp.n1421, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i431, label %.lr.ph.i.i.i.i.i427.preheader1526

.lr.ph.i.i.i.i.i427.preheader1526:                ; preds = %vector.memcheck1407, %.lr.ph.i.i.i.i.i427.preheader, %middle.block1420
  %.012.i.i.i.i.i428.ph = phi ptr [ %i.wl, %vector.memcheck1407 ], [ %i.wl, %.lr.ph.i.i.i.i.i427.preheader ], [ %i.wx, %middle.block1420 ]
  %.0911.i.i.i.i.i429.ph = phi ptr [ %i.wa, %vector.memcheck1407 ], [ %i.wa, %.lr.ph.i.i.i.i.i427.preheader ], [ %i.wy, %middle.block1420 ]
  br label %.lr.ph.i.i.i.i.i427

.lr.ph.i.i.i.i.i427:                              ; preds = %.lr.ph.i.i.i.i.i427.preheader1526, %.lr.ph.i.i.i.i.i427
  %.012.i.i.i.i.i428 = phi ptr [ %i.xf, %.lr.ph.i.i.i.i.i427 ], [ %.012.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i427.preheader1526 ] ; 2 uses
  %.0911.i.i.i.i.i429 = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i427.preheader1526 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.xd = load i64, ptr %.0911.i.i.i.i.i429, align 8, !tbaa !173, !alias.scope !747
  store i64 %i.xd, ptr %.012.i.i.i.i.i428, align 8, !tbaa !173, !alias.scope !746
  store ptr null, ptr %.0911.i.i.i.i.i429, align 8, !tbaa !173, !alias.scope !747
  %i.xe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i429, i64 8 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i430 = icmp eq ptr %i.xe, %i.vw
  br i1 %.not.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i431, label %.lr.ph.i.i.i.i.i427, !llvm.loop !701

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i431: ; preds = %.lr.ph.i.i.i.i.i427, %middle.block1420, %.noexc436
  %.0.lcssa.i.i.i.i.i432 = phi ptr [ %i.wl, %.noexc436 ], [ %i.wx, %middle.block1420 ], [ %i.xf, %.lr.ph.i.i.i.i.i427 ]
  %i.xg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i432, i64 8
  %.not.i23.i.i433 = icmp eq ptr %i.wa, null
  br i1 %.not.i23.i.i433, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i434, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i431
  call void @_ZdlPvm(ptr noundef nonnull %i.wa, i64 noundef %i.wd) #34
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i434

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i434: ; preds = %bb.ew, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i431
  store ptr %i.wl, ptr %i.bg, align 8, !tbaa !183
  store ptr %i.xg, ptr %i.hc, align 8, !tbaa !181
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.wj
  store ptr %i.xh, ptr %i.he, align 8, !tbaa !182
  %.pre997 = load ptr, ptr %i.s, align 8, !tbaa !173
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit437

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit437: ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i434, %bb.eu
  %i.xi = phi ptr [ %.pre997, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i434 ], [ %i.vy, %bb.eu ]
  %i.xj = invoke ptr @ggml_get_first_tensor(ptr noundef %i.xi)
          to label %.preheader767 unwind label %.loopexit.split-lp769.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader767:                                    ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit437, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453
  %.0208 = phi ptr [ %i.add, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453 ], [ %i.xj, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit437 ] ; 7 uses
  %.not255 = icmp eq ptr %.0208, null
  br i1 %.not255, label %bb.ex, label %bb.fb

bb.ex:                                            ; preds = %.preheader767
  %i.xk = load ptr, ptr %33, align 8, !tbaa !174  ; 2 uses
  %.not.i438 = icmp eq ptr %i.xk, null
  br i1 %.not.i438, label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @gguf_free(ptr noundef nonnull %i.xk)
          to label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterED2Ev.exit unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xl = landingpad { ptr, i32 }
          catch ptr null
  %i.xm = extractvalue { ptr, i32 } %i.xl, 0
  call void @__clang_call_terminate(ptr %i.xm) #36
  unreachable

_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterED2Ev.exit: ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  %i.xn = load i16, ptr %i.t, align 2, !tbaa !188
  %i.xo = add i16 %i.xn, 1                        ; 3 uses
  store i16 %i.xo, ptr %i.t, align 2, !tbaa !188
  %i.xp = icmp ult i16 %i.xo, %.0
  br i1 %i.xp, label %bb.ds, label %._crit_edge, !llvm.loop !702

bb.fa:                                            ; preds = %bb.ep
  %i.xq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef 8) #34
  br label %.loopexit.split-lp769.loopexit.split-lp

.loopexit.split-lp769.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, %bb.eo, %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i407, %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i423, %bb.eh, %bb.ea, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit437, %.invoke1289
  %lpad.loopexit.split-lp1529 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp769.loopexit.split-lp

bb.fb:                                            ; preds = %.preheader767
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #33
  %i.xr = getelementptr inbounds nuw i8, ptr %.0208, i64 256 ; 3 uses
  store ptr %i.ss, ptr %37, align 8, !tbaa !135
  %i.xs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xr) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #33
  store i64 %i.xs, ptr %i.n, align 8, !tbaa !136
  %i.xt = icmp ugt i64 %i.xs, 15
  br i1 %i.xt, label %.noexc.i440, label %._crit_edge.i.i439

.noexc.i440:                                      ; preds = %bb.fb
  %i.xu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc441 unwind label %bb.fo ; 2 uses

.noexc441:                                        ; preds = %.noexc.i440
  store ptr %i.xu, ptr %37, align 8, !tbaa !52
  %i.xv = load i64, ptr %i.n, align 8, !tbaa !136
  store i64 %i.xv, ptr %i.ss, align 8, !tbaa !53
  br label %._crit_edge.i.i439

._crit_edge.i.i439:                               ; preds = %.noexc441, %bb.fb
  %i.xw = phi ptr [ %i.xu, %.noexc441 ], [ %i.ss, %bb.fb ] ; 2 uses
  switch i64 %i.xs, label %bb.fd [
    i64 1, label %bb.fc
    i64 0, label %bb.fe
  ]

bb.fc:                                            ; preds = %._crit_edge.i.i439
  %i.xx = load i8, ptr %i.xr, align 1, !tbaa !53
  store i8 %i.xx, ptr %i.xw, align 1, !tbaa !53
  br label %bb.fe

bb.fd:                                            ; preds = %._crit_edge.i.i439
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xw, ptr nonnull align 1 %i.xr, i64 %i.xs, i1 false)
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %._crit_edge.i.i439
  %i.xy = load i64, ptr %i.n, align 8, !tbaa !136 ; 2 uses
  store i64 %i.xy, ptr %i.st, align 8, !tbaa !137
  %i.xz = load ptr, ptr %37, align 8, !tbaa !52
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 %i.xy
  store i8 0, ptr %i.ya, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #33
  %i.yb = load ptr, ptr %i.as, align 8, !tbaa !159 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.yb, null
  br i1 %.not10.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18llama_model_loader19llama_tensor_weightENS6_20weight_name_comparerESaISt4pairIKS5_S7_EEE4findERSA_.exit444.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.fe, %bb.fh
  %.012.i.i = phi ptr [ %.1.i.i, %bb.fh ], [ %i.yb, %bb.fe ] ; 5 uses
  %.0811.i.i = phi ptr [ %.19.i.i, %bb.fh ], [ %i.ar, %bb.fe ]
  %i.yc = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store i32 -1, ptr %i.g, align 4, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store i32 -1, ptr %i.h, align 4, !tbaa !127
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !52
  %i.ye = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.yd, ptr noundef nonnull @.str.319, ptr noundef nonnull %i.g) #33 ; 0 uses
  %i.yf = load ptr, ptr %37, align 8, !tbaa !52
  %i.yg = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.yf, ptr noundef nonnull @.str.319, ptr noundef nonnull %i.h) #33 ; 0 uses
  %i.yh = load i32, ptr %i.g, align 4, !tbaa !127 ; 2 uses
  %i.yi = load i32, ptr %i.h, align 4, !tbaa !127 ; 2 uses
  %.not.i.i.i626 = icmp eq i32 %i.yh, %i.yi
  br i1 %.not.i.i.i626, label %bb.ff, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.yj = icmp slt i32 %i.yh, %i.yi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br i1 %i.yj, label %bb.fg, label %bb.fh

bb.ff:                                            ; preds = %.lr.ph.i.i
  %i.yk = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40
  %i.yl = load i64, ptr %i.yk, align 8, !tbaa !137 ; 2 uses
  %i.ym = load i64, ptr %i.st, align 8, !tbaa !137 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ym, i64 %i.yl) ; 2 uses
  %i.yn = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.yn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ff
  %i.yo = load ptr, ptr %37, align 8, !tbaa !52
  %i.yp = load ptr, ptr %i.yc, align 8, !tbaa !52
  %i.yq = call i32 @memcmp(ptr noundef %i.yp, ptr noundef %i.yo, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i638 = icmp eq i32 %i.yq, 0
  br i1 %.not.i.i.i.i.i638, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNK18llama_model_loader20weight_name_comparerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ff
  %i.yr = sub i64 %i.yl, %i.ym
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.yr, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNK18llama_model_loader20weight_name_comparerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i.i

_ZNK18llama_model_loader20weight_name_comparerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.yq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ys = icmp slt i32 %.0.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br i1 %i.ys, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %_ZNK18llama_model_loader20weight_name_comparerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i.i, %.split.i.i
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %_ZNK18llama_model_loader20weight_name_comparerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i.i, %.split.i.i
  %.sink.i.i = phi i64 [ 24, %bb.fg ], [ 16, %.split.i.i ], [ 16, %_ZNK18llama_model_loader20weight_name_comparerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i.i ]
  %.19.i.i = phi ptr [ %.0811.i.i, %bb.fg ], [ %.012.i.i, %.split.i.i ], [ %.012.i.i, %_ZNK18llama_model_loader20weight_name_comparerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i.i ] ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.sink.i.i
  %.1.i.i = load ptr, ptr %i.yt, align 8, !tbaa !190 ; 2 uses
  %.not.i.i627 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i627, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N18llama_model_loader19llama_tensor_weightEESt10_Select1stISA_ENS8_20weight_name_comparerESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N18llama_model_loader19llama_tensor_weightEESt10_Select1stISA_ENS8_20weight_name_comparerESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i: ; preds = %bb.fh
end_hunk_1
begin_hunk_2_@_ZN18llama_model_loaderC2EP12gguf_contextPFvP11ggml_tensorPvES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISC_SaISC_EEP8_IO_FILE15llama_load_modebbbPK23llama_model_kv_overridePK32llama_model_tensor_buft_override:bb.a
  br i1 %.not.i.i472, label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  invoke void @gguf_free(ptr noundef nonnull %i.aew)
          to label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473thread-pre-split unwind label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aex = landingpad { ptr, i32 }
          catch ptr null
  %i.aey = extractvalue { ptr, i32 } %i.aex, 0
  call void @__clang_call_terminate(ptr %i.aey) #36
  unreachable

_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473thread-pre-split: ; preds = %bb.hb
  %.pr739 = load ptr, ptr %i.bc, align 8, !tbaa !174
  br label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473

_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473: ; preds = %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473thread-pre-split, %bb.ha
  %i.aez = phi ptr [ %.pr739, %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473thread-pre-split ], [ %i.aev, %bb.ha ] ; 2 uses
  store ptr %i.aez, ptr %i.bd, align 8, !tbaa !123
  %i.afa = icmp eq ptr %i.aez, null
  br i1 %i.afa, label %bb.hd, label %bb.hi

bb.hd:                                            ; preds = %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473
  %i.afb = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #33
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__._ZN18llama_model_loaderC2EP12gguf_contextPFvP11ggml_tensorPvES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISC_SaISC_EEP8_IO_FILE15llama_load_modebbbPK23llama_model_kv_overridePK32llama_model_tensor_buft_override)
          to label %bb.he unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.thread

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.hf unwind label %bb.hg

bb.hf:                                            ; preds = %bb.he
  invoke void @__cxa_throw(ptr nonnull %i.afb, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.lt unwind label %bb.hg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.thread: ; preds = %bb.hd
  %i.afc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  br label %bb.hh

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.0200 = phi i1 [ false, %bb.hf ], [ true, %bb.he ] ; 2 uses
  %i.afd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.afe = load ptr, ptr %42, align 8, !tbaa !52  ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.afg = icmp eq ptr %i.afe, %i.aff
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474: ; preds = %bb.hg
  %i.afh = load i64, ptr %i.aff, align 8, !tbaa !53
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.afe, i64 noundef %i.afi) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  br i1 %.0200, label %bb.hh, label %.loopexit.split-lp763

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476: ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  br i1 %.0200, label %bb.hh, label %.loopexit.split-lp763

bb.hh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476
  %.pn314742 = phi { ptr, i32 } [ %i.afc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.thread ], [ %i.afd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476 ], [ %i.afd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474 ]
  call void @__cxa_free_exception(ptr %i.afb) #33
  br label %.loopexit.split-lp763

bb.hi:                                            ; preds = %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit473
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #33
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i32 noundef 1)
          to label %bb.hj unwind label %bb.hw

bb.hj:                                            ; preds = %bb.hi
  %i.afj = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23llama_model_kv_overrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %.noexc481 unwind label %bb.hx ; 2 uses

.noexc481:                                        ; preds = %bb.hj
  %i.afk = load ptr, ptr %i.bd, align 8, !tbaa !123 ; 2 uses
  %i.afl = load ptr, ptr %43, align 8, !tbaa !52
  %i.afm = invoke i64 @gguf_find_key(ptr noundef %i.afk, ptr noundef %i.afl)
          to label %.noexc482 unwind label %bb.hx

.noexc482:                                        ; preds = %.noexc481
  %.not21.i477 = icmp eq ptr %i.afj, null
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afj, i64 40
  %i.afo = select i1 %.not21.i477, ptr null, ptr %i.afn
  %i.afp = trunc i64 %i.afm to i32
  %i.afq = invoke noundef zeroext i1 @_ZN8GGUFMeta3GKVINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3setEPK12gguf_contextiRS6_PK23llama_model_kv_override(ptr noundef %i.afk, i32 noundef %i.afp, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef %i.afo)
          to label %_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS6_RT_b.exit484 unwind label %bb.hx ; 0 uses

_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS6_RT_b.exit484: ; preds = %.noexc482
  %i.afr = load ptr, ptr %43, align 8, !tbaa !52  ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.aft = icmp eq ptr %i.afr, %i.afs
  br i1 %i.aft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485: ; preds = %_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS6_RT_b.exit484
  %i.afu = load i64, ptr %i.afs, align 8, !tbaa !53
  %i.afv = add i64 %i.afu, 1
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.afv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487: ; preds = %_ZN18llama_model_loader7get_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS6_RT_b.exit484, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #33
  %i.afw = invoke noundef i32 @_Z20llm_arch_from_stringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %bb.hk unwind label %bb.hy

bb.hk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487
  invoke void @_ZN6LLM_KVC1E8llm_archPKc(ptr noundef nonnull align 8 dereferenceable(16) %44, i32 noundef %i.afw, ptr noundef null)
          to label %bb.hl unwind label %bb.hy

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %44, i64 16, i1 false), !tbaa.struct !729
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  %i.afx = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37
          to label %bb.hm unwind label %.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.hm:                                            ; preds = %bb.hl
  invoke void @_ZN10llama_fileC1EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(8) %i.afx, ptr noundef nonnull %6)
          to label %bb.hn unwind label %bb.hz

bb.hn:                                            ; preds = %bb.hm
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !176 ; 6 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !177
  %.not.i488 = icmp eq ptr %i.afz, %i.agb
  br i1 %.not.i488, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  store ptr %i.afx, ptr %i.afz, align 8, !tbaa !179
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  store ptr %i.agc, ptr %i.afy, align 8, !tbaa !176
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit503

bb.hp:                                            ; preds = %bb.hn
  %i.agd = load ptr, ptr %i.ao, align 8, !tbaa !180 ; 10 uses
  %i.age = ptrtoint ptr %i.afz to i64             ; 2 uses
  %i.agf = ptrtoint ptr %i.agd to i64             ; 2 uses
  %i.agg = sub i64 %i.age, %i.agf                 ; 4 uses
  %i.agh = icmp eq i64 %i.agg, 9223372036854775800
  br i1 %i.agh, label %.invoke1291, label %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i489

.invoke1291:                                      ; preds = %bb.hs, %bb.hp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #35
          to label %.cont1292 unwind label %.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1292:                                        ; preds = %.invoke1291
  unreachable

_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i489: ; preds = %bb.hp
  %i.agi = ashr exact i64 %i.agg, 3               ; 3 uses
  %.sroa.speculated.i.i.i490 = call i64 @llvm.umax.i64(i64 %i.agi, i64 1)
  %i.agj = add nsw i64 %.sroa.speculated.i.i.i490, %i.agi ; 2 uses
  %i.agk = icmp ult i64 %i.agj, %i.agi
  %i.agl = call i64 @llvm.umin.i64(i64 %i.agj, i64 1152921504606846975)
  %i.agm = select i1 %i.agk, i64 1152921504606846975, i64 %i.agl ; 3 uses
  %.not.i.i.i491 = icmp ne i64 %i.agm, 0
  call void @llvm.assume(i1 %.not.i.i.i491)
  %i.agn = shl nuw nsw i64 %i.agm, 3
  %i.ago = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agn) #37
          to label %.noexc502 unwind label %.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc502:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i489
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 %i.agg
  store ptr %i.afx, ptr %i.agp, align 8, !tbaa !179
  %.not10.i.i.i.i.i492 = icmp eq ptr %i.agd, %i.afz
  br i1 %.not10.i.i.i.i.i492, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497, label %.lr.ph.i.i.i.i.i493.preheader

.lr.ph.i.i.i.i.i493.preheader:                    ; preds = %.noexc502
  %i.agq = add i64 %i.age, -8
  %i.agr = sub i64 %i.agq, %i.agf                 ; 3 uses
  %i.ags = lshr i64 %i.agr, 3
  %i.agt = add nuw nsw i64 %i.ags, 1              ; 2 uses
  %min.iters.check1456 = icmp ult i64 %i.agr, 136
  br i1 %min.iters.check1456, label %.lr.ph.i.i.i.i.i493.preheader1521, label %vector.memcheck1457

vector.memcheck1457:                              ; preds = %.lr.ph.i.i.i.i.i493.preheader
  %i.agu = and i64 %i.agr, -8
  %i.agv = add i64 %i.agu, 8                      ; 2 uses
  %i.agw = getelementptr i8, ptr %i.ago, i64 %i.agv
  %i.agx = getelementptr i8, ptr %i.agd, i64 %i.agv
  %bound01458 = icmp ult ptr %i.ago, %i.agx
  %bound11459 = icmp ult ptr %i.agd, %i.agw
  %found.conflict1460 = and i1 %bound01458, %bound11459
  br i1 %found.conflict1460, label %.lr.ph.i.i.i.i.i493.preheader1521, label %vector.ph1461

vector.ph1461:                                    ; preds = %vector.memcheck1457
  %n.vec1462 = and i64 %i.agt, 4611686018427387900 ; 3 uses
  %i.agy = shl i64 %n.vec1462, 3                  ; 2 uses
  %i.agz = getelementptr i8, ptr %i.ago, i64 %i.agy ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agd, i64 %i.agy
  br label %vector.body1463

vector.body1463:                                  ; preds = %vector.body1463, %vector.ph1461
  %index1464 = phi i64 [ 0, %vector.ph1461 ], [ %index.next1469, %vector.body1463 ] ; 2 uses
  %i.ahb = shl i64 %index1464, 3                  ; 2 uses
  %next.gep1465 = getelementptr i8, ptr %i.ago, i64 %i.ahb ; 2 uses
  %next.gep1466 = getelementptr i8, ptr %i.agd, i64 %i.ahb ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.ahc = getelementptr i8, ptr %next.gep1466, i64 16 ; 2 uses
  %wide.load1467 = load <2 x i64>, ptr %next.gep1466, align 8, !tbaa !179, !alias.scope !753
  %wide.load1468 = load <2 x i64>, ptr %i.ahc, align 8, !tbaa !179, !alias.scope !753
  %i.ahd = getelementptr i8, ptr %next.gep1465, i64 16
  store <2 x i64> %wide.load1467, ptr %next.gep1465, align 8, !tbaa !179, !alias.scope !754, !noalias !755
  store <2 x i64> %wide.load1468, ptr %i.ahd, align 8, !tbaa !179, !alias.scope !754, !noalias !755
  store <2 x ptr> splat (ptr null), ptr %next.gep1466, align 8, !tbaa !179, !alias.scope !753
  store <2 x ptr> splat (ptr null), ptr %i.ahc, align 8, !tbaa !179, !alias.scope !753
  %index.next1469 = add nuw i64 %index1464, 4     ; 2 uses
  %i.ahe = icmp eq i64 %index.next1469, %n.vec1462
  br i1 %i.ahe, label %middle.block1470, label %vector.body1463, !llvm.loop !710

middle.block1470:                                 ; preds = %vector.body1463
  %cmp.n1471 = icmp eq i64 %i.agt, %n.vec1462
  br i1 %cmp.n1471, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497, label %.lr.ph.i.i.i.i.i493.preheader1521

.lr.ph.i.i.i.i.i493.preheader1521:                ; preds = %vector.memcheck1457, %.lr.ph.i.i.i.i.i493.preheader, %middle.block1470
  %.012.i.i.i.i.i494.ph = phi ptr [ %i.ago, %vector.memcheck1457 ], [ %i.ago, %.lr.ph.i.i.i.i.i493.preheader ], [ %i.agz, %middle.block1470 ]
  %.0911.i.i.i.i.i495.ph = phi ptr [ %i.agd, %vector.memcheck1457 ], [ %i.agd, %.lr.ph.i.i.i.i.i493.preheader ], [ %i.aha, %middle.block1470 ]
  br label %.lr.ph.i.i.i.i.i493

.lr.ph.i.i.i.i.i493:                              ; preds = %.lr.ph.i.i.i.i.i493.preheader1521, %.lr.ph.i.i.i.i.i493
  %.012.i.i.i.i.i494 = phi ptr [ %i.ahh, %.lr.ph.i.i.i.i.i493 ], [ %.012.i.i.i.i.i494.ph, %.lr.ph.i.i.i.i.i493.preheader1521 ] ; 2 uses
  %.0911.i.i.i.i.i495 = phi ptr [ %i.ahg, %.lr.ph.i.i.i.i.i493 ], [ %.0911.i.i.i.i.i495.ph, %.lr.ph.i.i.i.i.i493.preheader1521 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.ahf = load i64, ptr %.0911.i.i.i.i.i495, align 8, !tbaa !179, !alias.scope !752
  store i64 %i.ahf, ptr %.012.i.i.i.i.i494, align 8, !tbaa !179, !alias.scope !751
  store ptr null, ptr %.0911.i.i.i.i.i495, align 8, !tbaa !179, !alias.scope !752
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i495, i64 8 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i494, i64 8 ; 2 uses
  %.not.i.i.i.i.i496 = icmp eq ptr %i.ahg, %i.afz
  br i1 %.not.i.i.i.i.i496, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497, label %.lr.ph.i.i.i.i.i493, !llvm.loop !711

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497: ; preds = %.lr.ph.i.i.i.i.i493, %middle.block1470, %.noexc502
  %.0.lcssa.i.i.i.i.i498 = phi ptr [ %i.ago, %.noexc502 ], [ %i.agz, %middle.block1470 ], [ %i.ahh, %.lr.ph.i.i.i.i.i493 ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i498, i64 8
  %.not.i23.i.i499 = icmp eq ptr %i.agd, null
  br i1 %.not.i23.i.i499, label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i500, label %bb.hq

bb.hq:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497
  call void @_ZdlPvm(ptr noundef nonnull %i.agd, i64 noundef %i.agg) #34
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i500

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i500: ; preds = %bb.hq, %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497
  store ptr %i.ago, ptr %i.ao, align 8, !tbaa !180
  store ptr %i.ahi, ptr %i.afy, align 8, !tbaa !176
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.ago, i64 %i.agm
  store ptr %i.ahj, ptr %i.aga, align 8, !tbaa !177
  br label %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit503

_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit503: ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i500, %bb.ho
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !181 ; 6 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !182
  %.not.i504 = icmp eq ptr %i.ahl, %i.ahn
  br i1 %.not.i504, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit503
  %i.aho = load ptr, ptr %i.u, align 8, !tbaa !173 ; 2 uses
  store ptr %i.aho, ptr %i.ahl, align 8, !tbaa !173
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  store ptr %i.ahp, ptr %i.ahk, align 8, !tbaa !181
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit519

bb.hs:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit503
  %i.ahq = load ptr, ptr %i.bg, align 8, !tbaa !183 ; 10 uses
  %i.ahr = ptrtoint ptr %i.ahl to i64             ; 2 uses
  %i.ahs = ptrtoint ptr %i.ahq to i64             ; 2 uses
  %i.aht = sub i64 %i.ahr, %i.ahs                 ; 4 uses
  %i.ahu = icmp eq i64 %i.aht, 9223372036854775800
  br i1 %i.ahu, label %.invoke1291, label %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i505

_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i505: ; preds = %bb.hs
  %i.ahv = ashr exact i64 %i.aht, 3               ; 3 uses
  %.sroa.speculated.i.i.i506 = call i64 @llvm.umax.i64(i64 %i.ahv, i64 1)
  %i.ahw = add nsw i64 %.sroa.speculated.i.i.i506, %i.ahv ; 2 uses
  %i.ahx = icmp ult i64 %i.ahw, %i.ahv
  %i.ahy = call i64 @llvm.umin.i64(i64 %i.ahw, i64 1152921504606846975)
  %i.ahz = select i1 %i.ahx, i64 1152921504606846975, i64 %i.ahy ; 3 uses
  %.not.i.i.i507 = icmp ne i64 %i.ahz, 0
  call void @llvm.assume(i1 %.not.i.i.i507)
  %i.aia = shl nuw nsw i64 %i.ahz, 3
  %i.aib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aia) #37
          to label %.noexc518 unwind label %.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc518:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i505
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.aht
  %i.aid = load ptr, ptr %i.u, align 8, !tbaa !173
  store ptr %i.aid, ptr %i.aic, align 8, !tbaa !173
  %.not10.i.i.i.i.i508 = icmp eq ptr %i.ahq, %i.ahl
  br i1 %.not10.i.i.i.i.i508, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i513, label %.lr.ph.i.i.i.i.i509.preheader

.lr.ph.i.i.i.i.i509.preheader:                    ; preds = %.noexc518
  %i.aie = add i64 %i.ahr, -8
  %i.aif = sub i64 %i.aie, %i.ahs                 ; 3 uses
  %i.aig = lshr i64 %i.aif, 3
  %i.aih = add nuw nsw i64 %i.aig, 1              ; 2 uses
  %min.iters.check1480 = icmp ult i64 %i.aif, 136
  br i1 %min.iters.check1480, label %.lr.ph.i.i.i.i.i509.preheader1520, label %vector.memcheck1481

vector.memcheck1481:                              ; preds = %.lr.ph.i.i.i.i.i509.preheader
  %i.aii = and i64 %i.aif, -8
  %i.aij = add i64 %i.aii, 8                      ; 2 uses
  %i.aik = getelementptr i8, ptr %i.aib, i64 %i.aij
  %i.ail = getelementptr i8, ptr %i.ahq, i64 %i.aij
  %bound01482 = icmp ult ptr %i.aib, %i.ail
  %bound11483 = icmp ult ptr %i.ahq, %i.aik
  %found.conflict1484 = and i1 %bound01482, %bound11483
  br i1 %found.conflict1484, label %.lr.ph.i.i.i.i.i509.preheader1520, label %vector.ph1485

vector.ph1485:                                    ; preds = %vector.memcheck1481
  %n.vec1486 = and i64 %i.aih, 4611686018427387900 ; 3 uses
  %i.aim = shl i64 %n.vec1486, 3                  ; 2 uses
  %i.ain = getelementptr i8, ptr %i.aib, i64 %i.aim ; 2 uses
  %i.aio = getelementptr i8, ptr %i.ahq, i64 %i.aim
  br label %vector.body1487

vector.body1487:                                  ; preds = %vector.body1487, %vector.ph1485
  %index1488 = phi i64 [ 0, %vector.ph1485 ], [ %index.next1493, %vector.body1487 ] ; 2 uses
  %i.aip = shl i64 %index1488, 3                  ; 2 uses
  %next.gep1489 = getelementptr i8, ptr %i.aib, i64 %i.aip ; 2 uses
  %next.gep1490 = getelementptr i8, ptr %i.ahq, i64 %i.aip ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.aiq = getelementptr i8, ptr %next.gep1490, i64 16 ; 2 uses
  %wide.load1491 = load <2 x i64>, ptr %next.gep1490, align 8, !tbaa !173, !alias.scope !758
  %wide.load1492 = load <2 x i64>, ptr %i.aiq, align 8, !tbaa !173, !alias.scope !758
  %i.air = getelementptr i8, ptr %next.gep1489, i64 16
  store <2 x i64> %wide.load1491, ptr %next.gep1489, align 8, !tbaa !173, !alias.scope !759, !noalias !760
  store <2 x i64> %wide.load1492, ptr %i.air, align 8, !tbaa !173, !alias.scope !759, !noalias !760
  store <2 x ptr> splat (ptr null), ptr %next.gep1490, align 8, !tbaa !173, !alias.scope !758
  store <2 x ptr> splat (ptr null), ptr %i.aiq, align 8, !tbaa !173, !alias.scope !758
  %index.next1493 = add nuw i64 %index1488, 4     ; 2 uses
  %i.ais = icmp eq i64 %index.next1493, %n.vec1486
  br i1 %i.ais, label %middle.block1494, label %vector.body1487, !llvm.loop !718

middle.block1494:                                 ; preds = %vector.body1487
  %cmp.n1495 = icmp eq i64 %i.aih, %n.vec1486
  br i1 %cmp.n1495, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i513, label %.lr.ph.i.i.i.i.i509.preheader1520

.lr.ph.i.i.i.i.i509.preheader1520:                ; preds = %vector.memcheck1481, %.lr.ph.i.i.i.i.i509.preheader, %middle.block1494
  %.012.i.i.i.i.i510.ph = phi ptr [ %i.aib, %vector.memcheck1481 ], [ %i.aib, %.lr.ph.i.i.i.i.i509.preheader ], [ %i.ain, %middle.block1494 ]
  %.0911.i.i.i.i.i511.ph = phi ptr [ %i.ahq, %vector.memcheck1481 ], [ %i.ahq, %.lr.ph.i.i.i.i.i509.preheader ], [ %i.aio, %middle.block1494 ]
  br label %.lr.ph.i.i.i.i.i509

.lr.ph.i.i.i.i.i509:                              ; preds = %.lr.ph.i.i.i.i.i509.preheader1520, %.lr.ph.i.i.i.i.i509
  %.012.i.i.i.i.i510 = phi ptr [ %i.aiv, %.lr.ph.i.i.i.i.i509 ], [ %.012.i.i.i.i.i510.ph, %.lr.ph.i.i.i.i.i509.preheader1520 ] ; 2 uses
  %.0911.i.i.i.i.i511 = phi ptr [ %i.aiu, %.lr.ph.i.i.i.i.i509 ], [ %.0911.i.i.i.i.i511.ph, %.lr.ph.i.i.i.i.i509.preheader1520 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.ait = load i64, ptr %.0911.i.i.i.i.i511, align 8, !tbaa !173, !alias.scope !757
  store i64 %i.ait, ptr %.012.i.i.i.i.i510, align 8, !tbaa !173, !alias.scope !756
  store ptr null, ptr %.0911.i.i.i.i.i511, align 8, !tbaa !173, !alias.scope !757
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i511, i64 8 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i510, i64 8 ; 2 uses
  %.not.i.i.i.i.i512 = icmp eq ptr %i.aiu, %i.ahl
  br i1 %.not.i.i.i.i.i512, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i513, label %.lr.ph.i.i.i.i.i509, !llvm.loop !719

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i513: ; preds = %.lr.ph.i.i.i.i.i509, %middle.block1494, %.noexc518
  %.0.lcssa.i.i.i.i.i514 = phi ptr [ %i.aib, %.noexc518 ], [ %i.ain, %middle.block1494 ], [ %i.aiv, %.lr.ph.i.i.i.i.i509 ]
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i514, i64 8
  %.not.i23.i.i515 = icmp eq ptr %i.ahq, null
  br i1 %.not.i23.i.i515, label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i516, label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i513
  call void @_ZdlPvm(ptr noundef nonnull %i.ahq, i64 noundef %i.aht) #34
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i516

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i516: ; preds = %bb.ht, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i513
  store ptr %i.aib, ptr %i.bg, align 8, !tbaa !183
  store ptr %i.aiw, ptr %i.ahk, align 8, !tbaa !181
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %i.ahz
  store ptr %i.aix, ptr %i.ahm, align 8, !tbaa !182
  %.pre998 = load ptr, ptr %i.u, align 8, !tbaa !173
  br label %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit519

_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit519: ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i516, %bb.hr
  %i.aiy = phi ptr [ %.pre998, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i516 ], [ %i.aho, %bb.hr ]
  %i.aiz = invoke ptr @ggml_get_first_tensor(ptr noundef %i.aiy)
          to label %.preheader761 unwind label %.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader761:                                    ; preds = %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit519
  %i.aja = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 7 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %45, i64 8
  br label %bb.hu

bb.hu:                                            ; preds = %.preheader761, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534
  %.0199 = phi ptr [ %i.akw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534 ], [ %i.aiz, %.preheader761 ] ; 7 uses
  %.not291 = icmp eq ptr %.0199, null
  br i1 %.not291, label %bb.hv, label %bb.ia

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #33
  br label %bb.ja

bb.hw:                                            ; preds = %bb.hi
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522

bb.hx:                                            ; preds = %.noexc482, %.noexc481, %bb.hj
  %i.ajd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aje = load ptr, ptr %43, align 8, !tbaa !52  ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.ajg = icmp eq ptr %i.aje, %i.ajf
  br i1 %i.ajg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520: ; preds = %bb.hx
  %i.ajh = load i64, ptr %i.ajf, align 8, !tbaa !53
  %i.aji = add i64 %i.ajh, 1
  call void @_ZdlPvm(ptr noundef %i.aje, i64 noundef %i.aji) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522: ; preds = %bb.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520, %bb.hw
  %.pn287 = phi { ptr, i32 } [ %i.ajc, %bb.hw ], [ %i.ajd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520 ], [ %i.ajd, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  br label %.loopexit.split-lp763

bb.hy:                                            ; preds = %bb.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  br label %.loopexit.split-lp763

bb.hz:                                            ; preds = %bb.hm
  %i.ajk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.afx, i64 noundef 8) #34
  br label %.loopexit.split-lp763

.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, %.invoke1291, %bb.hl, %_ZNKSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i489, %_ZNKSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i.i505, %bb.gz, %_ZNSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12emplace_backIJRPS1_EEERS3_DpOT_.exit519
  %lpad.loopexit.split-lp1513 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp763

bb.ia:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #33
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0199, i64 256 ; 3 uses
  store ptr %i.aja, ptr %45, align 8, !tbaa !135
  %i.ajm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajl) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  store i64 %i.ajm, ptr %i.k, align 8, !tbaa !136
  %i.ajn = icmp ugt i64 %i.ajm, 15
  br i1 %i.ajn, label %.noexc.i524, label %._crit_edge.i.i523

.noexc.i524:                                      ; preds = %bb.ia
  %i.ajo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc525 unwind label %bb.ii ; 2 uses

.noexc525:                                        ; preds = %.noexc.i524
  store ptr %i.ajo, ptr %45, align 8, !tbaa !52
  %i.ajp = load i64, ptr %i.k, align 8, !tbaa !136
  store i64 %i.ajp, ptr %i.aja, align 8, !tbaa !53
  br label %._crit_edge.i.i523

._crit_edge.i.i523:                               ; preds = %.noexc525, %bb.ia
  %i.ajq = phi ptr [ %i.ajo, %.noexc525 ], [ %i.aja, %bb.ia ] ; 2 uses
  switch i64 %i.ajm, label %bb.ic [
    i64 1, label %bb.ib
    i64 0, label %bb.id
  ]

bb.ib:                                            ; preds = %._crit_edge.i.i523
  %i.ajr = load i8, ptr %i.ajl, align 1, !tbaa !53
  store i8 %i.ajr, ptr %i.ajq, align 1, !tbaa !53
  br label %bb.id

bb.ic:                                            ; preds = %._crit_edge.i.i523
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajq, ptr nonnull align 1 %i.ajl, i64 %i.ajm, i1 false)
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib, %._crit_edge.i.i523
  %i.ajs = load i64, ptr %i.k, align 8, !tbaa !136 ; 2 uses
  store i64 %i.ajs, ptr %i.ajb, align 8, !tbaa !137
  %i.ajt = load ptr, ptr %45, align 8, !tbaa !52
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.ajs
  store i8 0, ptr %i.aju, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  %i.ajv = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N18llama_model_loader19llama_tensor_weightEESt10_Select1stISA_ENS8_20weight_name_comparerESaISA_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18llama_model_loader19llama_tensor_weightENS6_20weight_name_comparerESaISt4pairIKS5_S7_EEE4findERSA_.exit528 unwind label %bb.iq

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18llama_model_loader19llama_tensor_weightENS6_20weight_name_comparerESaISt4pairIKS5_S7_EEE4findERSA_.exit528: ; preds = %bb.id
  %.not751 = icmp eq ptr %i.ajv, %i.ar
  br i1 %.not751, label %bb.il, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18llama_model_loader19llama_tensor_weightENS6_20weight_name_comparerESaISt4pairIKS5_S7_EEE4findERSA_.exit528
  %i.ajw = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #33
  %i.ajx = invoke ptr @ggml_get_name(ptr noundef nonnull %.0199)
          to label %bb.if unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531.thread

bb.if:                                            ; preds = %bb.ie
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull @.str.46, ptr noundef %i.ajx)
          to label %bb.ig unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531.thread

bb.ig:                                            ; preds = %bb.if
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ajw, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.ih unwind label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  invoke void @__cxa_throw(ptr nonnull %i.ajw, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.lt unwind label %bb.ij

bb.ii:                                            ; preds = %.noexc.i524
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531.thread: ; preds = %bb.ie, %bb.if
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  br label %bb.ik

bb.ij:                                            ; preds = %bb.ih, %bb.ig
  %.0197 = phi i1 [ false, %bb.ih ], [ true, %bb.ig ] ; 2 uses
  %i.aka = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.akb = load ptr, ptr %46, align 8, !tbaa !52  ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.akd = icmp eq ptr %i.akb, %i.akc
  br i1 %i.akd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529: ; preds = %bb.ij
  %i.ake = load i64, ptr %i.akc, align 8, !tbaa !53
  %i.akf = add i64 %i.ake, 1
  call void @_ZdlPvm(ptr noundef %i.akb, i64 noundef %i.akf) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  br i1 %.0197, label %bb.ik, label %bb.is

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531: ; preds = %bb.ij
end_hunk_2
begin_hunk_3_@_ZNK18llama_model_loader20done_getting_tensorsEb:bb.a
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.q unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.05 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !53
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.05, label %.sink.split, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.05, label %.sink.split, label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.p = icmp slt i32 %i.b, %i.d
  br i1 %i.p, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  br i1 %1, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %i.s = load i32, ptr %i.a, align 8, !tbaa !156
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__._ZNK18llama_model_loader20done_getting_tensorsEb, i32 noundef %i.r, i32 noundef %i.s)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.q unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread: ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !52     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.k
  %i.y = load i64, ptr %i.w, align 8, !tbaa !53
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.0, label %.sink.split, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.0, label %.sink.split, label %bb.p

bb.l:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__._ZNK18llama_model_loader20done_getting_tensorsEb, i32 noundef %i.b, i32 noundef %i.d)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !285 ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  %i.ag = add i64 %i.ab, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !286
  %i.aj = tail call ptr @ggml_backend_buft_name(ptr noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !287
  %i.am = tail call ptr @ggml_backend_buft_name(ptr noundef %i.al)
  tail call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__._ZNK18llama_model_loader20done_getting_tensorsEb, ptr noundef %i.ad, ptr noundef %i.af, i64 noundef %i.ag, ptr noundef %i.aj, ptr noundef %i.am)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  %.pn15.pn.ph = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  call void @__cxa_free_exception(ptr %.sink) #33
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15.pn = phi { ptr, i32 } [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn15.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn15.pn

bb.q:                                             ; preds = %bb.j, %bb.d
  unreachable
}

declare ptr @ggml_backend_buft_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN18llama_model_loader13init_mappingsEbPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS2_EESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(592) %0, i1 noundef zeroext %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.120", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr.136", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !171, !range !150, !noundef !151
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ne i64 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !176  ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !180  ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp ugt i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.323) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !222
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !218  ; 10 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.n
  br i1 %i.v, label %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !219  ; 3 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = sub i64 %i.y, %i.t
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #37 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, %i.x
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_M_allocateEm.exit.i
  %i.ab = add i64 %i.y, -8
  %i.ac = sub i64 %i.ab, %i.t                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader284, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.af = and i64 %i.ac, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %i.ah = getelementptr i8, ptr %i.aa, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ag
  %bound0 = icmp ult ptr %i.aa, %i.ai
  %bound1 = icmp ult ptr %i.r, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader284, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.r, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.am ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.r, i64 %i.am ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.an = getelementptr i8, ptr %next.gep211, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep211, align 8, !tbaa !221, !alias.scope !847
  %wide.load212 = load <2 x i64>, ptr %i.an, align 8, !tbaa !221, !alias.scope !847
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !221, !alias.scope !848, !noalias !849
  store <2 x i64> %wide.load212, ptr %i.ao, align 8, !tbaa !221, !alias.scope !848, !noalias !849
  store <2 x ptr> splat (ptr null), ptr %next.gep211, align 8, !tbaa !221, !alias.scope !847
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !221, !alias.scope !847
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.preheader284

.lr.ph.i.i.i.i.preheader284:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader284, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader284 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader284 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.aq = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !221, !alias.scope !846
  store i64 %i.aq, ptr %.012.i.i.i.i, align 8, !tbaa !221, !alias.scope !845
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !221, !alias.scope !846
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.x
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !818

_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.r, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.u) #34
  %.pre.pre = load ptr, ptr %i.i, align 8, !tbaa !176 ; 2 uses
  %.pre135.pre = load ptr, ptr %i.h, align 8, !tbaa !180 ; 2 uses
  %.pre147 = ptrtoint ptr %.pre.pre to i64
  %.pre148 = ptrtoint ptr %.pre135.pre to i64
  %.pre149 = sub i64 %.pre147, %.pre148
  br label %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %.pre145.pre-phi = phi i64 [ %.pre149, %bb.e ], [ %i.n, %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ]
  %.pre135 = phi ptr [ %.pre135.pre, %bb.e ], [ %i.k, %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.j, %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ]
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !218
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store ptr %i.at, ptr %i.w, align 8, !tbaa !219
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n
  store ptr %i.au, ptr %i.p, align 8, !tbaa !222
  br label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %.pre-phi146 = phi i64 [ %i.n, %bb.d ], [ %.pre145.pre-phi, %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i ] ; 2 uses
  %i.av = phi ptr [ %i.k, %bb.d ], [ %.pre135, %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i ] ; 2 uses
  %i.aw = phi ptr [ %i.j, %bb.d ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.ay = ashr exact i64 %.pre-phi146, 3          ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 576460752303423487
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE7reserveEm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.323) #35
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE7reserveEm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !214
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !213 ; 5 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 4
  %i.bh = icmp ult i64 %i.bg, %i.ay
  br i1 %i.bh, label %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairImmESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !228 ; 3 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.be
  %i.bm = shl nuw nsw i64 %.pre-phi146, 1
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #37 ; 4 uses
  %.not10.i.i.i.i33 = icmp eq ptr %i.bc, %i.bj
  br i1 %.not10.i.i.i.i33, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i34
  %.012.i.i.i.i35 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i34 ], [ %i.bn, %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i36 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i34 ], [ %i.bc, %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i36, i64 16, i1 false), !alias.scope !850
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i36, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i35, i64 16
  %.not.i.i.i.i37 = icmp eq ptr %i.bo, %i.bj
  br i1 %.not.i.i.i.i37, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i34, !llvm.loop !2

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i34, %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i38 = icmp eq ptr %i.bc, null
  br i1 %.not.i8.i38, label %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #34
  %.pre136.pre = load ptr, ptr %i.i, align 8, !tbaa !176
  %.pre137.pre = load ptr, ptr %i.h, align 8, !tbaa !180
  br label %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.pre137 = phi ptr [ %.pre137.pre, %bb.h ], [ %i.av, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ]
  %.pre136 = phi ptr [ %.pre136.pre, %bb.h ], [ %i.aw, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ]
  store ptr %i.bn, ptr %i.ax, align 8, !tbaa !213
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !228
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.ay
  store ptr %i.br, ptr %i.ba, align 8, !tbaa !214
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairImmESaIS1_EE7reserveEm.exit:  ; preds = %bb.g, %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.bs = phi ptr [ %i.av, %bb.g ], [ %.pre137, %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.bt = phi ptr [ %i.aw, %bb.g ], [ %.pre136, %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.not117 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not117, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE7reserveEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %.not28 = icmp eq ptr %2, null
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev.exit
  %i.ca = phi ptr [ %i.bs, %.lr.ph ], [ %i.hc, %_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev.exit ]
  %i.cb = phi i64 [ 0, %.lr.ph ], [ %i.ha, %_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev.exit ]
  %.0113 = phi i32 [ 0, %.lr.ph ], [ %i.gz, %_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = tail call ptr @ggml_backend_dev_by_type(i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.cd, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = tail call ptr @ggml_backend_dev_backend_reg(ptr noundef nonnull %i.cd)
  %i.cf = tail call ptr @ggml_backend_reg_get_proc_address(ptr noundef %i.ce, ptr noundef nonnull @.str.84) ; 2 uses
  %.not26 = icmp eq ptr %i.cf, null
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = tail call noundef zeroext i1 %i.cf()
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.086 = phi i1 [ false, %bb.i ], [ false, %bb.j ], [ %i.cg, %bb.k ]
  br i1 %1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.a, align 8, !tbaa !171, !range !150, !noundef !151
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = phi i64 [ 0, %bb.l ], [ %i.cj, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !179
  %i.cm = load atomic i8, ptr @_ZGVZNK18llama_model_loader9lazy_read8for_fileEjE4none acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.o, label %bb.q, !prof !291

bb.o:                                             ; preds = %bb.n
  %i.co = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK18llama_model_loader9lazy_read8for_fileEjE4none) #33
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK18llama_model_loader9lazy_read8for_fileEjE4none, i8 0, i64 24, i1 false)
  %i.cp = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorISt4pairImmESaIS1_EED2Ev, ptr nonnull @_ZZNK18llama_model_loader9lazy_read8for_fileEjE4none, ptr nonnull @__dso_handle) #33 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK18llama_model_loader9lazy_read8for_fileEjE4none) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cq = load ptr, ptr %i.bu, align 8, !tbaa !159 ; 2 uses
  %.not10.i.i.i.i39 = icmp eq ptr %i.cq, null
  br i1 %.not10.i.i.i.i39, label %_ZNK18llama_model_loader9lazy_read8for_fileEj.exit, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %bb.q, %.lr.ph.i.i.i.i40
  %.012.i.i.i.i41 = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i40 ], [ %i.cq, %bb.q ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i40 ], [ %i.bv, %bb.q ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i41, i64 32
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !127
  %i.ct = icmp ult i32 %i.cs, %.0113              ; 2 uses
  %.19.i.i.i.i = select i1 %i.ct, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i41 ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.ct, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i41, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !190 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i42, label %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIS0_ImmESaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !822

_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIS0_ImmESaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i40
  %i.cu = icmp eq ptr %.19.i.i.i.i, %i.bv
  br i1 %i.cu, label %_ZNK18llama_model_loader9lazy_read8for_fileEj.exit, label %_ZNKSt3mapIjSt6vectorISt4pairImmESaIS2_EESt4lessIjESaIS1_IKjS4_EEE4findERS7_.exit.i

_ZNKSt3mapIjSt6vectorISt4pairImmESaIS2_EESt4lessIjESaIS1_IKjS4_EEE4findERS7_.exit.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIS0_ImmESaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZN18llama_model_loader13init_mappingsEbPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS2_EESaIS5_EE:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %spec.select.i = select i1 %i.cx, ptr @_ZZNK18llama_model_loader9lazy_read8for_fileEjE4none, ptr %i.cy
  br label %_ZNK18llama_model_loader9lazy_read8for_fileEj.exit

_ZNK18llama_model_loader9lazy_read8for_fileEj.exit: ; preds = %bb.q, %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIS0_ImmESaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapIjSt6vectorISt4pairImmESaIS2_EESt4lessIjESaIS1_IKjS4_EEE4findERS7_.exit.i
  %i.cz = phi ptr [ @_ZZNK18llama_model_loader9lazy_read8for_fileEjE4none, %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIS0_ImmESaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ %spec.select.i, %_ZNKSt3mapIjSt6vectorISt4pairImmESaIS2_EESt4lessIjESaIS1_IKjS4_EEE4findERS7_.exit.i ], [ @_ZZNK18llama_model_loader9lazy_read8for_fileEjE4none, %bb.q ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.da = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !noalias !851 ; 6 uses
  invoke void @_ZN10llama_mmapC1EP10llama_filembRKSt6vectorISt4pairImmESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef %i.cl, i64 noundef %i.ck, i1 noundef zeroext %.086, ptr noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %_ZSt11make_uniqueI10llama_mmapJP10llama_fileRKmRbRKSt6vectorISt4pairImmESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.r, !noalias !851

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.db, %bb.r ], [ %.pn31, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %_ZNK18llama_model_loader9lazy_read8for_fileEj.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 8) #34, !noalias !851
  br label %common.resume

_ZSt11make_uniqueI10llama_mmapJP10llama_fileRKmRbRKSt6vectorISt4pairImmESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNK18llama_model_loader9lazy_read8for_fileEj.exit
  store ptr %i.da, ptr %3, align 8, !tbaa !221, !alias.scope !851
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = invoke noundef i64 @_ZNK10llama_mmap4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %_ZSt11make_uniqueI10llama_mmapJP10llama_fileRKmRbRKSt6vectorISt4pairImmESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.de = load ptr, ptr %i.bw, align 8, !tbaa !228 ; 7 uses
  %i.df = load ptr, ptr %i.ba, align 8, !tbaa !214
  %.not.i43 = icmp eq ptr %i.de, %i.df
  br i1 %.not.i43, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !230
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !231
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.dh, ptr %i.bw, align 8, !tbaa !228
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmiEEERS1_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %i.ax, align 8, !tbaa !213 ; 5 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 4 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775792
  br i1 %i.dm, label %.invoke, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ai, %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #35
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.dn = ashr exact i64 %i.dl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = tail call i64 @llvm.umin.i64(i64 %i.do, i64 576460752303423487)
  %i.dr = select i1 %i.dp, i64 576460752303423487, i64 %i.dq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ds = shl nuw nsw i64 %i.dr, 4
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #37
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl ; 2 uses
  store i64 %i.dd, ptr %i.du, align 8, !tbaa !230
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 0, ptr %i.dv, align 8, !tbaa !231
  %.not10.i.i.i.i.i = icmp eq ptr %i.di, %i.de
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc44, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %i.dt, %.noexc44 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %i.di, %.noexc44 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !852
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, %i.de
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc44
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dt, %.noexc44 ], [ %i.dx, %.lr.ph.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dl) #34
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.dt, ptr %i.ax, align 8, !tbaa !213
  store ptr %i.dy, ptr %i.bw, align 8, !tbaa !228
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.dz, ptr %i.ba, align 8, !tbaa !214
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmiEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmiEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.t
  br i1 %.not28, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmiEEERS1_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ea = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37
          to label %bb.x unwind label %bb.ae      ; 5 uses

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11llama_mlockC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  store ptr %i.ea, ptr %4, align 8, !tbaa !293
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ec = invoke noundef ptr @_ZNK10llama_mmap4addrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.z unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11llama_mlock4initEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.ec)
          to label %bb.aa unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.ed = load ptr, ptr %i.bx, align 8, !tbaa !296 ; 6 uses
  %i.ee = load ptr, ptr %i.by, align 8, !tbaa !853
  %.not.i45 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i45, label %bb.ab, label %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %bb.aa
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !293
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.ef, ptr %i.bx, align 8, !tbaa !296
  br label %_ZNSt10unique_ptrI11llama_mlockSt14default_deleteIS0_EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %2, align 8, !tbaa !297   ; 10 uses
  %i.eh = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775800
  br i1 %i.ek, label %bb.ac, label %_ZNKSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #35
          to label %.noexc57 unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ab
  %i.el = ashr exact i64 %i.ej, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.em = add nsw i64 %.sroa.speculated.i.i, %i.el ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.el
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.em, i64 1152921504606846975)
  %i.ep = select i1 %i.en, i64 1152921504606846975, i64 %i.eo ; 3 uses
  %.not.i.i = icmp ne i64 %i.ep, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.eq = shl nuw nsw i64 %i.ep, 3
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #37
          to label %.noexc58 unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej
  store i64 %i.eb, ptr %i.es, align 8, !tbaa !293
  %.not10.i.i.i.i52 = icmp eq ptr %i.eg, %i.ed
  br i1 %.not10.i.i.i.i52, label %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i53.preheader

.lr.ph.i.i.i.i53.preheader:                       ; preds = %.noexc58
  %i.et = add i64 %i.eh, -8
  %i.eu = sub i64 %i.et, %i.ei                    ; 3 uses
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check248 = icmp ult i64 %i.eu, 56
  br i1 %min.iters.check248, label %.lr.ph.i.i.i.i53.preheader267, label %vector.memcheck249

vector.memcheck249:                               ; preds = %.lr.ph.i.i.i.i53.preheader
  %i.ex = and i64 %i.eu, -8
  %i.ey = add i64 %i.ex, 8                        ; 2 uses
  %i.ez = getelementptr i8, ptr %i.er, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.eg, i64 %i.ey
  %bound0250 = icmp ult ptr %i.er, %i.fa
  %bound1251 = icmp ult ptr %i.eg, %i.ez
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.i.i.i53.preheader267, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck249
  %n.vec254 = and i64 %i.ew, 4611686018427387900  ; 3 uses
  %i.fb = shl i64 %n.vec254, 3                    ; 2 uses
  %i.fc = getelementptr i8, ptr %i.er, i64 %i.fb  ; 2 uses
  %i.fd = getelementptr i8, ptr %i.eg, i64 %i.fb
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.fe = shl i64 %index256, 3                    ; 2 uses
  %next.gep257 = getelementptr i8, ptr %i.er, i64 %i.fe ; 2 uses
  %next.gep258 = getelementptr i8, ptr %i.eg, i64 %i.fe ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.ff = getelementptr i8, ptr %next.gep258, i64 16 ; 2 uses
  %wide.load259 = load <2 x i64>, ptr %next.gep258, align 8, !tbaa !293, !alias.scope !856
  %wide.load260 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !293, !alias.scope !856
  %i.fg = getelementptr i8, ptr %next.gep257, i64 16
  store <2 x i64> %wide.load259, ptr %next.gep257, align 8, !tbaa !293, !alias.scope !857, !noalias !858
  store <2 x i64> %wide.load260, ptr %i.fg, align 8, !tbaa !293, !alias.scope !857, !noalias !858
  store <2 x ptr> splat (ptr null), ptr %next.gep258, align 8, !tbaa !293, !alias.scope !856
  store <2 x ptr> splat (ptr null), ptr %i.ff, align 8, !tbaa !293, !alias.scope !856
  %index.next261 = add nuw i64 %index256, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.fh, label %middle.block262, label %vector.body255, !llvm.loop !834

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.ew, %n.vec254
  br i1 %cmp.n263, label %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i53.preheader267

.lr.ph.i.i.i.i53.preheader267:                    ; preds = %vector.memcheck249, %.lr.ph.i.i.i.i53.preheader, %middle.block262
  %.012.i.i.i.i54.ph = phi ptr [ %i.er, %vector.memcheck249 ], [ %i.er, %.lr.ph.i.i.i.i53.preheader ], [ %i.fc, %middle.block262 ]
  %.0911.i.i.i.i55.ph = phi ptr [ %i.eg, %vector.memcheck249 ], [ %i.eg, %.lr.ph.i.i.i.i53.preheader ], [ %i.fd, %middle.block262 ]
  br label %.lr.ph.i.i.i.i53

.lr.ph.i.i.i.i53:                                 ; preds = %.lr.ph.i.i.i.i53.preheader267, %.lr.ph.i.i.i.i53
  %.012.i.i.i.i54 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i53 ], [ %.012.i.i.i.i54.ph, %.lr.ph.i.i.i.i53.preheader267 ] ; 2 uses
  %.0911.i.i.i.i55 = phi ptr [ %i.fj, %.lr.ph.i.i.i.i53 ], [ %.0911.i.i.i.i55.ph, %.lr.ph.i.i.i.i53.preheader267 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.fi = load i64, ptr %.0911.i.i.i.i55, align 8, !tbaa !293, !alias.scope !855
  store i64 %i.fi, ptr %.012.i.i.i.i54, align 8, !tbaa !293, !alias.scope !854
  store ptr null, ptr %.0911.i.i.i.i55, align 8, !tbaa !293, !alias.scope !855
  %i.fj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i55, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i54, i64 8 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.fj, %i.ed
  br i1 %.not.i.i.i.i56, label %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i53, !llvm.loop !835

_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i53, %middle.block262, %.noexc58
  %.0.lcssa.i.i.i.i = phi ptr [ %i.er, %.noexc58 ], [ %i.fc, %middle.block262 ], [ %i.fk, %.lr.ph.i.i.i.i53 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.eg, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ej) #34
  br label %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.ad
  store ptr %i.er, ptr %2, align 8, !tbaa !297
  store ptr %i.fl, ptr %i.bx, align 8, !tbaa !296
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ep
  store ptr %i.fm, ptr %i.by, align 8, !tbaa !853
  br label %_ZNSt10unique_ptrI11llama_mlockSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI11llama_mlockSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ah

bb.ae:                                            ; preds = %bb.w
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.x
  %i.fo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 8) #34
  br label %bb.ag

.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.z, %bb.y, %bb.ac
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI11llama_mlockSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #33
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.ae
  %.pn29 = phi { ptr, i32 } [ %lpad.loopexit.split-lp269, %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fo, %bb.af ], [ %i.fn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %_ZNSt10unique_ptrI11llama_mlockSt14default_deleteIS0_EED2Ev.exit, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmiEEERS1_DpOT_.exit
  %i.fp = load ptr, ptr %i.bz, align 8, !tbaa !219 ; 6 uses
  %i.fq = load ptr, ptr %i.p, align 8, !tbaa !222
  %.not.i48 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i48, label %bb.ai, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %bb.ah
  store i64 %i.dc, ptr %i.fp, align 8, !tbaa !221
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.fr, ptr %i.bz, align 8, !tbaa !219
  br label %_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fs = load ptr, ptr %i.g, align 8, !tbaa !218 ; 10 uses
  %i.ft = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 4 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775800
  br i1 %i.fw, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ai
  %i.fx = ashr exact i64 %i.fv, 3                 ; 3 uses
  %.sroa.speculated.i.i59 = tail call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i59, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.gb, 0
  tail call void @llvm.assume(i1 %.not.i.i60)
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #37
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv
  store i64 %i.dc, ptr %i.ge, align 8, !tbaa !221
  %.not10.i.i.i.i61 = icmp eq ptr %i.fs, %i.fp
  br i1 %.not10.i.i.i.i61, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i62.preheader

.lr.ph.i.i.i.i62.preheader:                       ; preds = %.noexc77
  %i.gf = add i64 %i.ft, -8
  %i.gg = sub i64 %i.gf, %i.fu                    ; 3 uses
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check222 = icmp ult i64 %i.gg, 56
  br i1 %min.iters.check222, label %.lr.ph.i.i.i.i62.preheader266, label %vector.memcheck223

vector.memcheck223:                               ; preds = %.lr.ph.i.i.i.i62.preheader
  %i.gj = and i64 %i.gg, -8
  %i.gk = add i64 %i.gj, 8                        ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gd, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.fs, i64 %i.gk
  %bound0224 = icmp ult ptr %i.gd, %i.gm
  %bound1225 = icmp ult ptr %i.fs, %i.gl
  %found.conflict226 = and i1 %bound0224, %bound1225
  br i1 %found.conflict226, label %.lr.ph.i.i.i.i62.preheader266, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck223
  %n.vec228 = and i64 %i.gi, 4611686018427387900  ; 3 uses
  %i.gn = shl i64 %n.vec228, 3                    ; 2 uses
  %i.go = getelementptr i8, ptr %i.gd, i64 %i.gn  ; 2 uses
  %i.gp = getelementptr i8, ptr %i.fs, i64 %i.gn
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next235, %vector.body229 ] ; 2 uses
  %i.gq = shl i64 %index230, 3                    ; 2 uses
  %next.gep231 = getelementptr i8, ptr %i.gd, i64 %i.gq ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.fs, i64 %i.gq ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.gr = getelementptr i8, ptr %next.gep232, i64 16 ; 2 uses
  %wide.load233 = load <2 x i64>, ptr %next.gep232, align 8, !tbaa !221, !alias.scope !861
  %wide.load234 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !221, !alias.scope !861
  %i.gs = getelementptr i8, ptr %next.gep231, i64 16
  store <2 x i64> %wide.load233, ptr %next.gep231, align 8, !tbaa !221, !alias.scope !862, !noalias !863
  store <2 x i64> %wide.load234, ptr %i.gs, align 8, !tbaa !221, !alias.scope !862, !noalias !863
  store <2 x ptr> splat (ptr null), ptr %next.gep232, align 8, !tbaa !221, !alias.scope !861
  store <2 x ptr> splat (ptr null), ptr %i.gr, align 8, !tbaa !221, !alias.scope !861
  %index.next235 = add nuw i64 %index230, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.gt, label %middle.block236, label %vector.body229, !llvm.loop !842

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %i.gi, %n.vec228
  br i1 %cmp.n237, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i62.preheader266

.lr.ph.i.i.i.i62.preheader266:                    ; preds = %vector.memcheck223, %.lr.ph.i.i.i.i62.preheader, %middle.block236
  %.012.i.i.i.i63.ph = phi ptr [ %i.gd, %vector.memcheck223 ], [ %i.gd, %.lr.ph.i.i.i.i62.preheader ], [ %i.go, %middle.block236 ]
  %.0911.i.i.i.i64.ph = phi ptr [ %i.fs, %vector.memcheck223 ], [ %i.fs, %.lr.ph.i.i.i.i62.preheader ], [ %i.gp, %middle.block236 ]
  br label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph.i.i.i.i62.preheader266, %.lr.ph.i.i.i.i62
  %.012.i.i.i.i63 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i62 ], [ %.012.i.i.i.i63.ph, %.lr.ph.i.i.i.i62.preheader266 ] ; 2 uses
  %.0911.i.i.i.i64 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i62 ], [ %.0911.i.i.i.i64.ph, %.lr.ph.i.i.i.i62.preheader266 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.gu = load i64, ptr %.0911.i.i.i.i64, align 8, !tbaa !221, !alias.scope !860
  store i64 %i.gu, ptr %.012.i.i.i.i63, align 8, !tbaa !221, !alias.scope !859
  store ptr null, ptr %.0911.i.i.i.i64, align 8, !tbaa !221, !alias.scope !860
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i64, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.gv, %i.fp
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i62, !llvm.loop !843

_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i62, %middle.block236, %.noexc77
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.gd, %.noexc77 ], [ %i.go, %middle.block236 ], [ %i.gw, %.lr.ph.i.i.i.i62 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 8
  %.not.i23.i74 = icmp eq ptr %i.fs, null
  br i1 %.not.i23.i74, label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fv) #34
  br label %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.aj
  store ptr %i.gd, ptr %i.g, align 8, !tbaa !218
  store ptr %i.gx, ptr %i.bz, align 8, !tbaa !219
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.gy, ptr %i.p, align 8, !tbaa !222
  br label %_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gz = add i32 %.0113, 1                       ; 2 uses
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = load ptr, ptr %i.i, align 8, !tbaa !176
  %i.hc = load ptr, ptr %i.h, align 8, !tbaa !180 ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = ashr exact i64 %i.hf, 3
  %i.hh = icmp ugt i64 %i.hg, %i.ha
  br i1 %i.hh, label %bb.i, label %.loopexit, !llvm.loop !844

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZSt11make_uniqueI10llama_mmapJP10llama_fileRKmRbRKSt6vectorISt4pairImmESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %.pn31 = phi { ptr, i32 } [ %.pn29, %bb.ag ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

.loopexit:                                        ; preds = %_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev.exit, %_ZNSt6vectorISt4pairImmESaIS1_EE7reserveEm.exit, %bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !160 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.not93114 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not93114, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %.loopexit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.ak, %.loopexit
  ret void

bb.ak:                                            ; preds = %.lr.ph116, %bb.ak
  %.sroa.078.0115 = phi ptr [ %i.hj, %.lr.ph116 ], [ %i.hr, %bb.ak ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.078.0115, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !865
  %i.ho = tail call i64 @ggml_nbytes(ptr noundef %i.hn)
  %i.hp = load i64, ptr %i.hl, align 8, !tbaa !250
  %i.hq = add i64 %i.hp, %i.ho
  store i64 %i.hq, ptr %i.hl, align 8, !tbaa !250
  %i.hr = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.078.0115) #38 ; 2 uses
  %.not93 = icmp eq ptr %i.hr, %i.hk
  br i1 %.not93, label %._crit_edge, label %bb.ak
}

declare ptr @ggml_backend_dev_backend_reg(ptr noundef) local_unnamed_addr #3

declare ptr @ggml_backend_reg_get_proc_address(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK10llama_mmap4sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN11llama_mlockC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZN11llama_mlock4initEPv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK10llama_mmap4addrEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI11llama_mlockSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !293    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI11llama_mlockEclEPS0_.exit

_ZNKSt14default_deleteI11llama_mlockEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN11llama_mlockD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #34
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI11llama_mlockEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !221    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI10llama_mmapEclEPS0_.exit

_ZNKSt14default_deleteI10llama_mmapEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN10llama_mmapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #34
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI10llama_mmapEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK18llama_model_loader17get_mapping_rangeEPmS0_PPviP12ggml_context(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !867  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !867  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.73, i32 noundef 1443, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.85) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = sext i32 %4 to i64                       ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.f
  br i1 %.not.i.i, label %_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.324, i64 noundef %i.f, i64 noundef %i.j) #35
  unreachable

_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE2atEm.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !221
  %i.m = tail call noundef i64 @_ZNK10llama_mmap4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  store i64 %i.m, ptr %1, align 8, !tbaa !136
  store i64 0, ptr %2, align 8, !tbaa !136
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !221
  %i.o = tail call noundef ptr @_ZNK10llama_mmap4addrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  store ptr %i.o, ptr %3, align 8, !tbaa !249
  %i.p = tail call ptr @ggml_get_first_tensor(ptr noundef %5) ; 2 uses
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE2atEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE2atEm.exit, %bb.g
  %.028 = phi ptr [ %i.ac, %bb.g ], [ %i.p, %_ZNKSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE2atEm.exit ] ; 3 uses
  %i.q = tail call ptr @ggml_get_name(ptr noundef nonnull %.028)
  %i.r = tail call noundef ptr @_ZNK18llama_model_loader10get_weightEPKc(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef %i.q) ; 3 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = load i16, ptr %i.r, align 8, !tbaa !206
  %i.t = zext i16 %i.s to i32
  %.not23 = icmp eq i32 %4, %i.t
  br i1 %.not23, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !136
  %i.w = load i64, ptr %1, align 8, !tbaa !136
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.w)
  store i64 %i.x, ptr %1, align 8, !tbaa !136
end_hunk_4
