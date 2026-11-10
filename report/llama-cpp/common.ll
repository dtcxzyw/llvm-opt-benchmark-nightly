Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/common?download=true
inline.NumInlined: 6727
inline.NumDeleted: 2709
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN18common_init_resultC2ER13common_paramsb:bb.a
bb.ai:                                            ; preds = %bb.ah, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ah ], [ %i.cj, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  br label %.body

bb.aj:                                            ; preds = %bb.ae, %bb.c
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3776 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !66
  %i.dm = invoke ptr @llama_model_load_from_file(ptr noundef %i.dl, ptr noundef nonnull byval(%struct.llama_model_params) align 8 %9)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 18 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.loopexit205, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = load ptr, ptr %0, align 8, !tbaa !270
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !279 ; 2 uses
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !279
  %.not.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI11llama_model19llama_model_deleterE5resetEPS0_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @llama_model_free(ptr noundef nonnull %i.dq)
          to label %_ZNSt10unique_ptrI11llama_model19llama_model_deleterE5resetEPS0_.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #46
  unreachable

_ZNSt10unique_ptrI11llama_model19llama_model_deleterE5resetEPS0_.exit: ; preds = %bb.al, %bb.am
  br i1 %2, label %.loopexit205, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10unique_ptrI11llama_model19llama_model_deleterE5resetEPS0_.exit
  %i.dt = invoke ptr @llama_model_get_vocab(ptr noundef nonnull %i.dm)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 4488
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !280 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4496
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !280 ; 2 uses
  %.not225 = icmp eq ptr %i.dv, %i.dx
  br i1 %.not225, label %.critedge, label %.lr.ph

bb.aq:                                            ; preds = %.noexc124, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0187.0226, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.dx
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ap, %bb.aq
  %.sroa.0187.0226 = phi ptr [ %i.dy, %bb.aq ], [ %i.dv, %bb.ap ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #47
  store ptr null, ptr %15, align 8, !tbaa !918
  %i.dz = load ptr, ptr %.sroa.0187.0226, align 8, !tbaa !66
  %i.ea = invoke ptr @llama_adapter_lora_init(ptr noundef nonnull %i.dm, ptr noundef %i.dz)
          to label %_ZNSt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterE5resetEPS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZNSt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterE5resetEPS0_.exit: ; preds = %.lr.ph
  store ptr %i.ea, ptr %15, align 8, !tbaa !282
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %.not.i = icmp eq ptr %i.ea, null
  br i1 %.not.i, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %_ZNSt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterE5resetEPS0_.exit
  %i.ec = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.at, label %.loopexit205.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ee = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.ef = load ptr, ptr %.sroa.0187.0226, align 8, !tbaa !66
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ee, i32 noundef 4, ptr noundef nonnull @.str.67, i32 noundef 12, ptr noundef nonnull @__func__._ZN18common_init_resultC2ER13common_paramsb, ptr noundef %i.ef)
          to label %.loopexit205.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.ar, %bb.at, %bb.au
  %lpad.loopexit.split-lp399 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.av:                                            ; preds = %_ZNSt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterE5resetEPS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #47
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0187.0226, i64 104 ; 2 uses
  store ptr %i.ea, ptr %i.eg, align 8, !tbaa !920
  %i.eh = invoke i32 @llama_adapter_meta_val_str(ptr noundef nonnull %i.ea, ptr noundef nonnull @.str.68, ptr noundef nonnull %i.ab, i64 noundef 1024)
          to label %bb.aw unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0187.0226, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0187.0226, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !67
  %i.el = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #47
  %i.em = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 noundef 0, i64 noundef %i.ek, ptr noundef nonnull %i.ab, i64 noundef %i.el)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.aw
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !920
  %i.eo = invoke i32 @llama_adapter_meta_val_str(ptr noundef %i.en, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.ab, i64 noundef 1024)
          to label %bb.ax unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0187.0226, i64 72
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0187.0226, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !67
  %i.es = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #47
  %i.et = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i64 noundef 0, i64 noundef %i.er, ptr noundef nonnull %i.ab, i64 noundef %i.es)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit122 unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit122: ; preds = %bb.ax
  %i.eu = load ptr, ptr %0, align 8, !tbaa !270   ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !285 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 56 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !286
  %.not.i123 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i123, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit122
  store i64 %i.eb, ptr %i.ex, align 8, !tbaa !282
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.fa, ptr %i.ew, align 8, !tbaa !285
  br label %bb.aq

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit122
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !287 ; 10 uses
  %i.fc = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 4 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %bb.ba, label %_ZNKSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #48
          to label %.noexc177 unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc177:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.az
  %i.fg = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 1152921504606846975)
  %i.fk = select i1 %i.fi, i64 1152921504606846975, i64 %i.fj ; 3 uses
  %.not.i.i174 = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i174)
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #52
          to label %.noexc178 unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc178:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe
  store i64 %i.eb, ptr %i.fn, align 8, !tbaa !282
  store ptr null, ptr %15, align 8, !tbaa !282
  %.not10.i.i.i.i = icmp eq ptr %i.fb, %i.ex
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i175.preheader

.lr.ph.i.i.i.i175.preheader:                      ; preds = %.noexc178
  %i.fo = add i64 %i.fc, -8
  %i.fp = sub i64 %i.fo, %i.fd                    ; 3 uses
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i175.preheader397, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i175.preheader
  %i.fs = and i64 %i.fp, -8
  %i.ft = add i64 %i.fs, 8                        ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fm, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fb, i64 %i.ft
  %bound0 = icmp ult ptr %i.fm, %i.fv
  %bound1 = icmp ult ptr %i.fb, %i.fu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i175.preheader397, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fr, 4611686018427387900     ; 3 uses
  %i.fw = shl i64 %n.vec, 3                       ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fm, i64 %i.fw  ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fb, i64 %i.fw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fm, i64 %i.fz ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.fb, i64 %i.fz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.ga = getelementptr i8, ptr %next.gep379, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep379, align 8, !tbaa !282, !alias.scope !923
  %wide.load380 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !282, !alias.scope !923
  %i.gb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !282, !alias.scope !924, !noalias !925
  store <2 x i64> %wide.load380, ptr %i.gb, align 8, !tbaa !282, !alias.scope !924, !noalias !925
  %17 = getelementptr i8, ptr %next.gep379, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep379, align 8, !tbaa !282, !alias.scope !923
  store <2 x ptr> splat (ptr null), ptr %17, align 8, !tbaa !282, !alias.scope !923
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !893

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i175.preheader397

.lr.ph.i.i.i.i175.preheader397:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i175.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fm, %vector.memcheck ], [ %i.fm, %.lr.ph.i.i.i.i175.preheader ], [ %i.fx, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fb, %vector.memcheck ], [ %i.fb, %.lr.ph.i.i.i.i175.preheader ], [ %i.fy, %middle.block ]
  br label %.lr.ph.i.i.i.i175

.lr.ph.i.i.i.i175:                                ; preds = %.lr.ph.i.i.i.i175.preheader397, %.lr.ph.i.i.i.i175
  %.012.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i175 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i175.preheader397 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i175 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i175.preheader397 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.gd = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !282, !alias.scope !922
  store i64 %i.gd, ptr %.012.i.i.i.i, align 8, !tbaa !282, !alias.scope !921
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !282, !alias.scope !922
  %i.ge = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i176 = icmp eq ptr %i.ge, %i.ex
  br i1 %.not.i.i.i.i176, label %_ZNSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i175, !llvm.loop !894

_ZNSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i175, %middle.block, %.noexc178
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fm, %.noexc178 ], [ %i.fx, %middle.block ], [ %i.gf, %.lr.ph.i.i.i.i175 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.fb, null
  br i1 %.not.i23.i, label %.noexc124, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fe) #49
  br label %.noexc124

.noexc124:                                        ; preds = %bb.bb, %_ZNSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.fm, ptr %i.ev, align 8, !tbaa !287
  store ptr %i.gg, ptr %i.ew, align 8, !tbaa !285
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.gh, ptr %i.ey, align 8, !tbaa !286
  br label %bb.aq

.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.ax, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.av, %bb.ba
  %lpad.loopexit.split-lp402 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #47
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn107 = phi { ptr, i32 } [ %lpad.loopexit.split-lp399, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp402, %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrI18llama_adapter_lora26llama_adapter_lora_deleterED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  br label %.body

.critedge:                                        ; preds = %bb.aq, %bb.ap
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 1776
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 1888
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !926 ; 12 uses
  %i.gl = and i64 %i.gk, 1
  %.not.i126 = icmp eq i64 %i.gl, 0
  br i1 %.not.i126, label %bb.bd, label %bb.cj

bb.bd:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.aa, i8 0, i64 512, i1 false)
  %i.gm = invoke ptr @llama_model_meta_key_str(i32 noundef 0)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc132:                                        ; preds = %bb.bd
  %i.gn = invoke i32 @llama_model_meta_val_str(ptr noundef nonnull %i.dm, ptr noundef %i.gm, ptr noundef nonnull %i.aa, i64 noundef 512)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %.noexc132
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.be, label %bb.ci

bb.be:                                            ; preds = %.noexc133
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.gp, ptr %6, align 8, !tbaa !64
  %i.gq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #47
  store i64 %i.gq, ptr %i.z, align 8, !tbaa !51
  %i.gr = icmp ugt i64 %i.gq, 15
  br i1 %i.gr, label %.noexc.i.i, label %._crit_edge.i.i.i127

.noexc.i.i:                                       ; preds = %bb.be
  %i.gs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef 0)
          to label %.noexc.i unwind label %bb.ce  ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.gs, ptr %6, align 8, !tbaa !66
  %i.gt = load i64, ptr %i.z, align 8, !tbaa !51
  store i64 %i.gt, ptr %i.gp, align 8, !tbaa !68
  br label %._crit_edge.i.i.i127

._crit_edge.i.i.i127:                             ; preds = %.noexc.i, %bb.be
  %i.gu = phi ptr [ %i.gs, %.noexc.i ], [ %i.gp, %bb.be ] ; 2 uses
  switch i64 %i.gq, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i127
  %i.gv = load i8, ptr %i.aa, align 16, !tbaa !68
  store i8 %i.gv, ptr %i.gu, align 1, !tbaa !68
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i.i127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr nonnull align 16 %i.aa, i64 %i.gq, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i127
  %i.gw = load i64, ptr %i.z, align 8, !tbaa !51  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !67
  %i.gy = load ptr, ptr %6, align 8, !tbaa !66
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gw
  store i8 0, ptr %i.gz, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #47
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !927
  %i.ha = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 59, i64 noundef 0) #47, !noalias !927 ; 2 uses
  %.not56.i.i = icmp eq i64 %i.ha, -1
  br i1 %.not56.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47, !noalias !927
  %i.hb = load i64, ptr %i.gx, align 8, !tbaa !67, !noalias !928
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i31.i.i

.lr.ph.i.i:                                       ; preds = %bb.bh
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.i.i
  %.01858.i.i = phi i64 [ %i.ha, %.lr.ph.i.i ], [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 3 uses
  %.01957.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47, !noalias !927
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.hg = load i64, ptr %i.gx, align 8, !tbaa !67, !noalias !930 ; 3 uses
  %i.hh = icmp ugt i64 %.01957.i.i, %i.hg
  br i1 %i.hh, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i64 noundef %.01957.i.i, i64 noundef %i.hg) #48
          to label %.noexc.i40.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i40.i:                                     ; preds = %bb.bj
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i: ; preds = %bb.bi
  %i.hi = sub i64 %.01858.i.i, %.01957.i.i
  store ptr %i.hc, ptr %3, align 8, !tbaa !64, !alias.scope !929, !noalias !927
  %i.hj = load ptr, ptr %6, align 8, !tbaa !66, !noalias !930
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.01957.i.i ; 2 uses
  %i.hl = sub nuw i64 %i.hg, %.01957.i.i
  %spec.select.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hi, i64 %i.hl) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #47, !noalias !930
  store i64 %spec.select.i.i.i.i.i, ptr %i.y, align 8, !tbaa !51, !noalias !930
  %i.hm = icmp ugt i64 %spec.select.i.i.i.i.i, 15
  br i1 %i.hm, label %.noexc10.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc10.i.i.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.hn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef 0)
          to label %.noexc24.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc24.i.i:                                     ; preds = %.noexc10.i.i.i.i
  store ptr %i.hn, ptr %3, align 8, !tbaa !66, !alias.scope !929, !noalias !927
  %i.ho = load i64, ptr %i.y, align 8, !tbaa !51, !noalias !930
  store i64 %i.ho, ptr %i.hc, align 8, !tbaa !68, !alias.scope !929, !noalias !927
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc24.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.hp = phi ptr [ %i.hn, %.noexc24.i.i ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i.i, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %bb.bm
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.hq = load i8, ptr %i.hk, align 1, !tbaa !68
  store i8 %i.hq, ptr %i.hp, align 1, !tbaa !68
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr align 1 %i.hk, i64 %spec.select.i.i.i.i.i, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i.i.i.i
  %i.hr = load i64, ptr %i.y, align 8, !tbaa !51, !noalias !930 ; 2 uses
  store i64 %i.hr, ptr %i.hd, align 8, !tbaa !67, !alias.scope !929, !noalias !927
  %i.hs = load ptr, ptr %3, align 8, !tbaa !66, !alias.scope !929, !noalias !927
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  store i8 0, ptr %i.ht, align 1, !tbaa !68
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI16llama_logit_biasSaIS0_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvS7_T_S8_St20forward_iterator_tag:bb.a
  br label %_ZSt22__uninitialized_move_aIP16llama_logit_biasS1_SaIS0_EET0_T_S4_S3_RT1_.exit51

_ZSt22__uninitialized_move_aIP16llama_logit_biasS1_SaIS0_EET0_T_S4_S3_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !292
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !292
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !369

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIP16llama_logit_biasS1_SaIS0_EET0_T_S4_S3_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_logit_biasSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIP16llama_logit_biasS1_SaIS0_EET0_T_S4_S3_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_logit_biasSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i64, ptr %2, align 4
  store i64 %i.ax, ptr %1, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_logit_biasSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !294   ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorI16llama_logit_biasSaIS0_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.303) #48
  unreachable

_ZNKSt6vectorI16llama_logit_biasSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorI16llama_logit_biasSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #52
  br label %_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI16llama_logit_biasSaIS0_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorI16llama_logit_biasSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !369

bb.z:                                             ; preds = %_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i64, ptr %i.ay, align 4
  store i64 %i.bp, ptr %i.bk, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !369

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i64, ptr %2, align 4
  store i64 %i.bt, ptr %i.bq, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !369

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i64, ptr %1, align 4
  store i64 %i.by, ptr %i.bu, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #49
  br label %_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !294
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !292
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !293
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_logit_biasSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_logit_biasSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseI16llama_logit_biasSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !299    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !630
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrI14common_sampler22common_sampler_deleterEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrI14common_sampler22common_sampler_deleterEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !1534
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !298
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.304) #48
  unreachable

_ZNKSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #52 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !1534
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  %i.af = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !301, !alias.scope !1536
  %wide.load41 = load <2 x i64>, ptr %i.af, align 8, !tbaa !301, !alias.scope !1536
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !301, !alias.scope !1535
  store <2 x i64> %wide.load41, ptr %i.ag, align 8, !tbaa !301, !alias.scope !1535
  %2 = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !301, !alias.scope !1536
  store <2 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !301, !alias.scope !1536
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1531

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader43

.lr.ph.i.i.i.preheader43:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader43, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !301, !alias.scope !1536
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !301, !alias.scope !1535
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !301, !alias.scope !1536
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1532

_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.al = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #49
  br label %_ZNSt12_Vector_baseISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !299
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.am, ptr %i.a, align 8, !tbaa !298
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.an, ptr %i.h, align 8, !tbaa !630
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrI14common_sampler22common_sampler_deleterEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI24llama_sampler_seq_configSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !304    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !629
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !1540
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1537

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !1540
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !1540
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !1540
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !1540
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1538

_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !303
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorI24llama_sampler_seq_configSaIS0_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.304) #48
  unreachable

_ZNKSt6vectorI24llama_sampler_seq_configSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #52 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI24llama_sampler_seq_configSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1540
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !1539

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1540
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1540
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1540
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1540
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !1538

_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorI24llama_sampler_seq_configSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorI24llama_sampler_seq_configSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorI24llama_sampler_seq_configSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorI24llama_sampler_seq_configSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIP24llama_sampler_seq_configmS0_ET_S2_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseI24llama_sampler_seq_configSaIS0_EE13_M_deallocateEPS0_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI24llama_sampler_seq_configSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.aw = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #49
  br label %_ZNSt12_Vector_baseI24llama_sampler_seq_configSaIS0_EE13_M_deallocateEPS0_m.exit38

_ZNSt12_Vector_baseI24llama_sampler_seq_configSaIS0_EE13_M_deallocateEPS0_m.exit38: ; preds = %_ZNSt6vectorI24llama_sampler_seq_configSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !304
end_hunk_1
