Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-backend-meta?download=true
inline.NumInlined: 2841
inline.NumDeleted: 1289
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb:bb.a
  br label %bb.gq

bb.fa:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %42, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext false)
          to label %bb.fb unwind label %bb.fc, !noalias !445, !inline_history !380

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %42, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !445
  br label %bb.gq

bb.fc:                                            ; preds = %bb.fa
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !445
  br label %bb.hd

bb.fd:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %43, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext true)
          to label %bb.fe unwind label %bb.ff, !noalias !445, !inline_history !380

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %43, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27, !noalias !445
  br label %bb.gq

bb.ff:                                            ; preds = %bb.fd
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27, !noalias !445
  br label %bb.hd

bb.fg:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %44, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext false)
          to label %bb.fh unwind label %bb.fi, !noalias !445, !inline_history !380

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %44, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27, !noalias !445
  br label %bb.gq

bb.fi:                                            ; preds = %bb.fg
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27, !noalias !445
  br label %bb.hd

bb.fj:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_15clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EE"(ptr dead_on_unwind noalias writable align 8 %45, ptr nonnull %i.fx, ptr nonnull %i.dj)
          to label %bb.fk unwind label %bb.fl, !noalias !445, !inline_history !380

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %45, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27, !noalias !445
  br label %bb.gq

bb.fl:                                            ; preds = %bb.fj
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27, !noalias !445
  br label %bb.hd

bb.fm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %46, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext true)
          to label %bb.fn unwind label %bb.fo, !noalias !445, !inline_history !380

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %46, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27, !noalias !445
  br label %bb.gq

bb.fo:                                            ; preds = %bb.fm
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27, !noalias !445
  br label %bb.hd

bb.fp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_17clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EE"(ptr dead_on_unwind noalias writable align 8 %47, ptr nonnull %56, ptr nonnull %i.dj)
          to label %bb.fq unwind label %bb.fr, !noalias !445, !inline_history !380

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %47, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27, !noalias !445
  br label %bb.gq

bb.fr:                                            ; preds = %bb.fp
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27, !noalias !445
  br label %bb.hd

bb.fs:                                            ; preds = %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %48, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext true)
          to label %bb.ft unwind label %bb.fu, !noalias !445, !inline_history !380

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %48, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27, !noalias !445
  br label %bb.gq

bb.fu:                                            ; preds = %bb.fs
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27, !noalias !445
  br label %bb.hd

bb.fv:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_18clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EE"(ptr dead_on_unwind noalias writable align 8 %49, ptr nonnull %i.dj)
          to label %bb.fw unwind label %bb.fx, !noalias !445, !inline_history !380

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %49, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27, !noalias !445
  br label %bb.gq

bb.fx:                                            ; preds = %bb.fv
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27, !noalias !445
  br label %bb.hd

bb.fy:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_16clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EE"(ptr dead_on_unwind noalias writable align 8 %50, ptr nonnull %i.dj)
          to label %bb.fz unwind label %bb.ga, !noalias !445, !inline_history !380

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %50, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27, !noalias !445
  br label %bb.gq

bb.ga:                                            ; preds = %bb.fy
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27, !noalias !445
  br label %bb.hd

bb.gb:                                            ; preds = %bb.bl, %bb.bl, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %51, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext true)
          to label %bb.gc unwind label %bb.gd, !noalias !445, !inline_history !380

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %51, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27, !noalias !445
  br label %bb.gq

bb.gd:                                            ; preds = %bb.gb
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27, !noalias !445
  br label %bb.hd

bb.ge:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %52, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext false)
          to label %bb.gf unwind label %bb.gg, !noalias !445, !inline_history !380

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %52, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27, !noalias !445
  br label %bb.gq

bb.gg:                                            ; preds = %bb.ge
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27, !noalias !445
  br label %bb.hd

bb.gh:                                            ; preds = %bb.bl, %bb.bl, %bb.bl, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %53, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext true)
          to label %bb.gi unwind label %bb.gj, !noalias !445, !inline_history !380

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %53, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27, !noalias !445
  br label %bb.gq

bb.gj:                                            ; preds = %bb.gh
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27, !noalias !445
  br label %bb.hd

bb.gk:                                            ; preds = %bb.bl, %bb.bl
  %i.hv = load i32, ptr %i.dj, align 8, !tbaa !162, !noalias !453
  %.not.i429 = icmp eq i32 %i.hv, 0
  br i1 %.not.i429, label %.invoke, label %bb.gl

.invoke:                                          ; preds = %bb.gz, %._crit_edge.us910, %.preheader598, %bb.gw, %bb.gs, %bb.bj, %bb.bf, %bb.bb, %bb.ax, %bb.at, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.gp, %ggml_backend_buffer_is_meta.exit.i425, %bb.gr, %bb.gk, %bb.ey, %bb.ek, %bb.ei, %bb.cq, %bb.cf
  %i.hw = phi i32 [ 543, %bb.ey ], [ 761, %bb.ei ], [ 543, %bb.cf ], [ 543, %bb.gk ], [ 543, %bb.cq ], [ 761, %bb.ek ], [ 1062, %bb.gp ], [ 1104, %bb.gs ], [ 1099, %._crit_edge.us910 ], [ 1086, %bb.gw ], [ 463, %bb.gr ], [ 862, %bb.z ], [ 862, %bb.bj ], [ 862, %bb.bf ], [ 862, %bb.bb ], [ 862, %bb.ax ], [ 862, %bb.at ], [ 862, %bb.ap ], [ 862, %bb.al ], [ 862, %bb.ah ], [ 862, %bb.ad ], [ 463, %ggml_backend_buffer_is_meta.exit.i425 ], [ 1099, %.preheader598 ], [ 1091, %bb.gz ]
  %i.hx = phi ptr [ @.str.10, %bb.ey ], [ @.str.10, %bb.ei ], [ @.str.10, %bb.cf ], [ @.str.10, %bb.gk ], [ @.str.10, %bb.cq ], [ @.str.10, %bb.ek ], [ @.str.49, %bb.gp ], [ @.str.10, %bb.gs ], [ @.str.10, %._crit_edge.us910 ], [ @.str.10, %bb.gw ], [ @.str.10, %bb.gr ], [ @.str.10, %bb.z ], [ @.str.10, %bb.bj ], [ @.str.10, %bb.bf ], [ @.str.10, %bb.bb ], [ @.str.10, %bb.ax ], [ @.str.10, %bb.at ], [ @.str.10, %bb.ap ], [ @.str.10, %bb.al ], [ @.str.10, %bb.ah ], [ @.str.10, %bb.ad ], [ @.str.10, %ggml_backend_buffer_is_meta.exit.i425 ], [ @.str.10, %.preheader598 ], [ @.str.10, %bb.gz ]
  %i.hy = phi ptr [ @.str.56, %bb.ey ], [ @.str.67, %bb.ei ], [ @.str.56, %bb.cf ], [ @.str.56, %bb.gk ], [ @.str.56, %bb.cq ], [ @.str.67, %bb.ek ], [ %i.ia, %bb.gp ], [ @.str.52, %bb.gs ], [ @.str.51, %._crit_edge.us910 ], [ @.str.50, %bb.gw ], [ @.str.43, %bb.gr ], [ @.str.48, %bb.z ], [ @.str.48, %bb.bj ], [ @.str.48, %bb.bf ], [ @.str.48, %bb.bb ], [ @.str.48, %bb.ax ], [ @.str.48, %bb.at ], [ @.str.48, %bb.ap ], [ @.str.48, %bb.al ], [ @.str.48, %bb.ah ], [ @.str.48, %bb.ad ], [ @.str.43, %ggml_backend_buffer_is_meta.exit.i425 ], [ @.str.51, %.preheader598 ], [ @.str.31, %bb.gz ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.hw, ptr noundef nonnull %i.hx, ptr noundef %i.hy) #26
          to label %.cont unwind label %bb.hc

.cont:                                            ; preds = %.invoke
  unreachable

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull readonly align 8 dereferenceable(2128) %i.dj, i64 2128, i1 false)
  br label %bb.gq

bb.gm:                                            ; preds = %bb.bl, %bb.bl, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #27, !noalias !445
  invoke fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_1clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EEb"(ptr dead_on_unwind noalias writable align 8 %54, ptr nonnull %i.b, ptr nonnull %55, ptr nonnull %i.dj, i1 noundef zeroext false)
          to label %bb.gn unwind label %bb.go, !noalias !445, !inline_history !380

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %61, ptr noundef nonnull align 8 dereferenceable(2128) %54, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27, !noalias !445
  br label %bb.gq

bb.go:                                            ; preds = %bb.gm
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27, !noalias !445
  br label %bb.hd

bb.gp:                                            ; preds = %bb.bl
  %i.ia = invoke ptr @ggml_op_name(i32 noundef %i.fz)
          to label %.invoke unwind label %bb.hc, !noalias !445, !inline_history !380

bb.gq:                                            ; preds = %bb.gn, %bb.gl, %bb.gi, %bb.gf, %bb.gc, %bb.fz, %bb.fw, %bb.ft, %bb.fq, %bb.fn, %bb.fk, %bb.fh, %bb.fe, %bb.fb, %bb.ez, %bb.ew, %bb.et, %bb.eq, %bb.en, %bb.el, %bb.ej, %bb.eg, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.do, %bb.dl, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cg, %bb.cd, %bb.ca, %bb.bx, %bb.bu, %bb.br, %bb.bo, %bb.bm
  %i.ib = load i32, ptr %61, align 8, !tbaa !162, !alias.scope !445 ; 2 uses
  %or.cond5.i = icmp ult i32 %i.ib, 4
  br i1 %or.cond5.i, label %bb.gr, label %_ZNSt6vectorI29ggml_backend_meta_split_stateSaIS0_EED2Ev.exit423

bb.gr:                                            ; preds = %bb.gq
  %i.ic = load ptr, ptr %i.b, align 8, !tbaa !174, !noalias !445 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !178, !noalias !445 ; 3 uses
  %.not.i.i424 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i424, label %.invoke, label %ggml_backend_buffer_is_meta.exit.i425

ggml_backend_buffer_is_meta.exit.i425:            ; preds = %bb.gr
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !182, !noalias !445
  %i.ig = icmp eq ptr %i.if, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.ig, label %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit428, label %.invoke

_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit428: ; preds = %ggml_backend_buffer_is_meta.exit.i425
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !184, !noalias !445 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 224
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 232
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !150, !noalias !445 ; 2 uses
  %i.im = load ptr, ptr %i.ij, align 8, !tbaa !137, !noalias !445 ; 2 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io                    ; 4 uses
  %i.iq = ashr exact i64 %i.ip, 3                 ; 16 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ic, i64 152
  %i.is = getelementptr inbounds nuw i8, ptr %61, i64 2120
  %i.it = load i32, ptr %i.is, align 8
  %i.iu = icmp eq i32 %i.it, 1
  %.not932 = icmp eq ptr %i.il, %i.im             ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %61, i64 2056 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 8
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ja = zext nneg i32 %i.ib to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ja ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.iq, i64 1) ; 3 uses
  %ident.check480.not = icmp eq i64 %i.ip, 8
  %ident.check468.not = icmp eq i64 %i.ip, 8
  %ident.check.not = icmp eq i64 %i.ip, 8
  br label %bb.gt

bb.gs:                                            ; preds = %.loopexit600
  %i.jc = trunc nuw i8 %.1.i to i1
  br i1 %i.jc, label %.invoke, label %_ZNSt6vectorI29ggml_backend_meta_split_stateSaIS0_EED2Ev.exit423

bb.gt:                                            ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit428, %.loopexit600
  %.096.i921 = phi i64 [ 0, %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit428 ], [ %i.pr, %.loopexit600 ] ; 3 uses
  %.097.i920 = phi i8 [ 1, %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit428 ], [ %.1.i, %.loopexit600 ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.096.i921
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !174, !noalias !445 ; 3 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %.loopexit600, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.jg = getelementptr inbounds nuw [2128 x i8], ptr %i.dj, i64 %.096.i921 ; 7 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !162, !noalias !445 ; 3 uses
  %or.cond511.not = icmp ult i32 %i.jh, 4
  br i1 %or.cond511.not, label %bb.gv, label %.loopexit600

bb.gv:                                            ; preds = %bb.gu
  %i.ji = trunc nuw i8 %.097.i920 to i1
  br i1 %i.ji, label %.preheader599.a, label %bb.gz

.preheader599.a:                                  ; preds = %bb.gv
  br i1 %.not932, label %.loopexit600, label %.preheader597.lr.ph

.preheader597.lr.ph:                              ; preds = %.preheader599.a
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 2120
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !160, !noalias !445 ; 4 uses
  %i.jl = zext i32 %i.jk to i64                   ; 10 uses
  %.not935 = icmp eq i32 %i.jk, 0
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 2056 ; 6 uses
  %i.jo = load i64, ptr %i.jb, align 8, !tbaa !77, !noalias !445
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jq = zext nneg i32 %i.jh to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jq
  %i.js = load i32, ptr %i.iw, align 8
  %i.jt = zext i32 %i.js to i64
  %.pre1004 = load i64, ptr %i.jr, align 8, !tbaa !77, !noalias !445 ; 2 uses
  %.not116.i = icmp ne i64 %.pre1004, 0
  %i.ju = mul nsw i64 %.pre1004, %i.jt            ; 2 uses
  %min.iters.check470 = icmp ugt i32 %i.jk, 3
  %or.cond499 = select i1 %min.iters.check470, i1 %ident.check468.not, i1 false
  %n.vec472 = and i64 %i.jl, 4294967292           ; 3 uses
  %cmp.n477 = icmp eq i64 %n.vec472, %i.jl
  %xtraiter585 = and i64 %i.jl, 3                 ; 2 uses
  %lcmp.mod586.not = icmp eq i64 %xtraiter585, 0
  %min.iters.check = icmp ugt i32 %i.jk, 3
  %or.cond500 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.jl, 4294967292              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.jl
  %xtraiter588 = and i64 %i.jl, 3                 ; 2 uses
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br label %.preheader597

.preheader597:                                    ; preds = %.preheader597.lr.ph, %bb.gy
  %.095.i919 = phi i64 [ 0, %.preheader597.lr.ph ], [ %i.mu, %bb.gy ] ; 3 uses
  %.phi.trans.insert = getelementptr [8 x i8], ptr %i.iv, i64 %.095.i919 ; 10 uses
  br i1 %.not935, label %.preheader._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader597
  br i1 %or.cond499, label %vector.body473, label %.lr.ph.preheader572

vector.body473:                                   ; preds = %.lr.ph.preheader, %vector.body473
  %index474 = phi i64 [ %index.next475, %vector.body473 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.jv = getelementptr [8 x i8], ptr %.phi.trans.insert, i64 %index474 ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  store <2 x i64> zeroinitializer, ptr %i.jv, align 8, !tbaa !77, !alias.scope !445
  store <2 x i64> zeroinitializer, ptr %i.jw, align 8, !tbaa !77, !alias.scope !445
  %index.next475 = add nuw i64 %index474, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next475, %n.vec472
  br i1 %i.jx, label %middle.block476, label %vector.body473, !llvm.loop !395

middle.block476:                                  ; preds = %vector.body473
  br i1 %cmp.n477, label %.lr.ph915, label %.lr.ph.preheader572

.lr.ph.preheader572:                              ; preds = %.lr.ph.preheader, %middle.block476
  %.094.i913.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec472, %middle.block476 ] ; 3 uses
  br i1 %lcmp.mod586.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader572, %.lr.ph.prol
  %.094.i913.prol = phi i64 [ %i.jz, %.lr.ph.prol ], [ %.094.i913.ph, %.lr.ph.preheader572 ] ; 2 uses
  %prol.iter587 = phi i64 [ %prol.iter587.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader572 ]
  %i.jy = mul i64 %.094.i913.prol, %i.iq
  %gep.prol = getelementptr [8 x i8], ptr %.phi.trans.insert, i64 %i.jy
  store i64 0, ptr %gep.prol, align 8, !tbaa !77, !alias.scope !445
  %i.jz = add nuw nsw i64 %.094.i913.prol, 1      ; 2 uses
  %prol.iter587.next = add i64 %prol.iter587, 1   ; 2 uses
  %prol.iter587.cmp.not = icmp eq i64 %prol.iter587.next, %xtraiter585
  br i1 %prol.iter587.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !396

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader572
  %.094.i913.unr = phi i64 [ %.094.i913.ph, %.lr.ph.preheader572 ], [ %i.jz, %.lr.ph.prol ]
  %i.ka = sub nsw i64 %.094.i913.ph, %i.jl
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %.lr.ph915, label %.lr.ph

.preheader._crit_edge:                            ; preds = %.preheader597
  %.pre1003 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77, !alias.scope !445
  br label %._crit_edge

.lr.ph915:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block476
  %invariant.gep916 = getelementptr [8 x i8], ptr %i.jm, i64 %.095.i919 ; 6 uses
  %.promoted = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77, !alias.scope !445 ; 2 uses
  br i1 %or.cond500, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph915
  %i.kc = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.kc, %vector.ph ], [ %i.kl, %vector.body ]
  %vec.phi463 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.km, %vector.body ]
  %i.kd = getelementptr [8 x i8], ptr %invariant.gep916, i64 %index ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 16
  %wide.load = load <2 x i64>, ptr %i.kd, align 8, !tbaa !77, !noalias !445
  %wide.load464 = load <2 x i64>, ptr %i.ke, align 8, !tbaa !77, !noalias !445
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %wide.load465 = load <2 x i32>, ptr %i.kf, align 4, !tbaa !161, !noalias !445
  %wide.load466 = load <2 x i32>, ptr %i.kg, align 4, !tbaa !161, !noalias !445
  %i.kh = zext <2 x i32> %wide.load465 to <2 x i64>
  %i.ki = zext <2 x i32> %wide.load466 to <2 x i64>
end_hunk_0
begin_hunk_1_@_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb:bb.a
  %i.mi = add nuw nsw i64 %.093.i914, 3           ; 2 uses
  %i.mj = mul i64 %i.mi, %i.iq
  %gep917.3 = getelementptr [8 x i8], ptr %invariant.gep916, i64 %i.mj
  %i.mk = load i64, ptr %gep917.3, align 8, !tbaa !77, !noalias !445
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.mi
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !161, !noalias !445
  %i.mn = zext i32 %i.mm to i64
  %i.mo = mul nsw i64 %i.mk, %i.mn
  %i.mp = add nsw i64 %i.mo, %i.mh                ; 2 uses
  %i.mq = add nuw nsw i64 %.093.i914, 4           ; 2 uses
  %exitcond978.not.3 = icmp eq i64 %i.mq, %i.jl
  br i1 %exitcond978.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !400

bb.gw:                                            ; preds = %._crit_edge
  %i.mr = srem i64 %i.lj, %i.ju
  %i.ms = sdiv i64 %i.lj, %i.ju
  %i.mt = icmp eq i64 %i.mr, 0
  br i1 %i.mt, label %bb.gx, label %.invoke

bb.gx:                                            ; preds = %bb.gw
  store i64 %i.ms, ptr %.phi.trans.insert, align 8, !tbaa !77, !alias.scope !445
  br label %bb.gy

bb.gy:                                            ; preds = %._crit_edge, %bb.gx
  %i.mu = add nuw i64 %.095.i919, 1               ; 2 uses
  %exitcond980.not = icmp eq i64 %i.mu, %umax
  br i1 %exitcond980.not, label %.loopexit600, label %.preheader597, !llvm.loop !401

bb.gz:                                            ; preds = %bb.gv
  br i1 %i.iu, label %.preheader601, label %.invoke

.preheader601:                                    ; preds = %bb.gz
  br i1 %.not932, label %.loopexit600, label %.preheader598.lr.ph

.preheader598.lr.ph:                              ; preds = %.preheader601
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jg, i64 2120
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !160, !noalias !445 ; 3 uses
  %i.mx = zext i32 %i.mw to i64                   ; 5 uses
  %.not934 = icmp eq i32 %i.mw, 0
  %i.my = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jg, i64 2056 ; 6 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.nb = zext nneg i32 %i.jh to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.nb
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !77, !noalias !445
  %factor.op.mul = mul i64 %i.nd, %i.iy           ; 2 uses
  %i.ne = load i64, ptr %i.jb, align 8, !tbaa !77, !noalias !445
  br i1 %.not934, label %.preheader598, label %.preheader598.us.preheader

.preheader598.us.preheader:                       ; preds = %.preheader598.lr.ph
  %min.iters.check482 = icmp ugt i32 %i.mw, 3
  %or.cond501 = select i1 %min.iters.check482, i1 %ident.check480.not, i1 false
  %n.vec484 = and i64 %i.mx, 4294967292           ; 3 uses
  %cmp.n496 = icmp eq i64 %n.vec484, %i.mx
  %xtraiter = and i64 %i.mx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader598.us

.preheader598.us:                                 ; preds = %.preheader598.us.preheader, %bb.ha
  %.092.i909.us = phi i64 [ %i.ob, %bb.ha ], [ 0, %.preheader598.us.preheader ] ; 3 uses
  %invariant.gep.us = getelementptr [8 x i8], ptr %i.my, i64 %.092.i909.us ; 6 uses
  br i1 %or.cond501, label %vector.body485, label %scalar.ph481.preheader

vector.body485:                                   ; preds = %.preheader598.us, %vector.body485
  %index486 = phi i64 [ %index.next493, %vector.body485 ], [ 0, %.preheader598.us ] ; 3 uses
  %vec.phi487 = phi <2 x i64> [ %i.nn, %vector.body485 ], [ zeroinitializer, %.preheader598.us ]
  %vec.phi488 = phi <2 x i64> [ %i.no, %vector.body485 ], [ zeroinitializer, %.preheader598.us ]
  %i.nf = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %index486 ; 2 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 16
  %wide.load489 = load <2 x i64>, ptr %i.nf, align 8, !tbaa !77, !noalias !445
  %wide.load490 = load <2 x i64>, ptr %i.ng, align 8, !tbaa !77, !noalias !445
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %index486 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %wide.load491 = load <2 x i32>, ptr %i.nh, align 4, !tbaa !161, !noalias !445
  %wide.load492 = load <2 x i32>, ptr %i.ni, align 4, !tbaa !161, !noalias !445
  %i.nj = zext <2 x i32> %wide.load491 to <2 x i64>
  %i.nk = zext <2 x i32> %wide.load492 to <2 x i64>
  %i.nl = mul nsw <2 x i64> %wide.load489, %i.nj
  %i.nm = mul nsw <2 x i64> %wide.load490, %i.nk
  %i.nn = add <2 x i64> %i.nl, %vec.phi487        ; 2 uses
  %i.no = add <2 x i64> %i.nm, %vec.phi488        ; 2 uses
  %index.next493 = add nuw i64 %index486, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next493, %n.vec484
  br i1 %i.np, label %middle.block494, label %vector.body485, !llvm.loop !402

middle.block494:                                  ; preds = %vector.body485
  %bin.rdx495 = add <2 x i64> %i.no, %i.nn
  %i.nq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx495) ; 2 uses
  br i1 %cmp.n496, label %._crit_edge.us910, label %scalar.ph481.preheader

scalar.ph481.preheader:                           ; preds = %.preheader598.us, %middle.block494
  %.0.i908.us.ph = phi i64 [ 0, %.preheader598.us ], [ %n.vec484, %middle.block494 ] ; 3 uses
  %.091.i907.us.ph = phi i64 [ 0, %.preheader598.us ], [ %i.nq, %middle.block494 ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph481.prol.loopexit, label %scalar.ph481.prol

scalar.ph481.prol:                                ; preds = %scalar.ph481.preheader, %scalar.ph481.prol
  %.0.i908.us.prol = phi i64 [ %i.ny, %scalar.ph481.prol ], [ %.0.i908.us.ph, %scalar.ph481.preheader ] ; 3 uses
  %.091.i907.us.prol = phi i64 [ %i.nx, %scalar.ph481.prol ], [ %.091.i907.us.ph, %scalar.ph481.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph481.prol ], [ 0, %scalar.ph481.preheader ]
  %i.nr = mul i64 %.0.i908.us.prol, %i.iq
  %gep.us.prol = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.nr
  %i.ns = load i64, ptr %gep.us.prol, align 8, !tbaa !77, !noalias !445
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.0.i908.us.prol
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !161, !noalias !445
  %i.nv = zext i32 %i.nu to i64
  %i.nw = mul nsw i64 %i.ns, %i.nv
  %i.nx = add nsw i64 %i.nw, %.091.i907.us.prol   ; 3 uses
  %i.ny = add nuw nsw i64 %.0.i908.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph481.prol.loopexit, label %scalar.ph481.prol, !llvm.loop !403

scalar.ph481.prol.loopexit:                       ; preds = %scalar.ph481.prol, %scalar.ph481.preheader
  %.lcssa580.unr = phi i64 [ poison, %scalar.ph481.preheader ], [ %i.nx, %scalar.ph481.prol ]
  %.0.i908.us.unr = phi i64 [ %.0.i908.us.ph, %scalar.ph481.preheader ], [ %i.ny, %scalar.ph481.prol ]
  %.091.i907.us.unr = phi i64 [ %.091.i907.us.ph, %scalar.ph481.preheader ], [ %i.nx, %scalar.ph481.prol ]
  %i.nz = sub nsw i64 %.0.i908.us.ph, %i.mx
  %i.oa = icmp ugt i64 %i.nz, -4
  br i1 %i.oa, label %._crit_edge.us910, label %scalar.ph481

bb.ha:                                            ; preds = %._crit_edge.us910
  %i.ob = add nuw nsw i64 %.092.i909.us, 1        ; 2 uses
  %exitcond974.not = icmp eq i64 %i.ob, %umax
  br i1 %exitcond974.not, label %.loopexit600, label %.preheader598.us, !llvm.loop !404

scalar.ph481:                                     ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481
  %.0.i908.us = phi i64 [ %i.ph, %scalar.ph481 ], [ %.0.i908.us.unr, %scalar.ph481.prol.loopexit ] ; 6 uses
  %.091.i907.us = phi i64 [ %i.pg, %scalar.ph481 ], [ %.091.i907.us.unr, %scalar.ph481.prol.loopexit ]
  %i.oc = mul i64 %.0.i908.us, %i.iq
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.oc
  %i.od = load i64, ptr %gep.us, align 8, !tbaa !77, !noalias !445
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.0.i908.us
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !161, !noalias !445
  %i.og = zext i32 %i.of to i64
  %i.oh = mul nsw i64 %i.od, %i.og
  %i.oi = add nsw i64 %i.oh, %.091.i907.us
  %i.oj = add nuw nsw i64 %.0.i908.us, 1          ; 2 uses
  %i.ok = mul i64 %i.oj, %i.iq
  %gep.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.ok
  %i.ol = load i64, ptr %gep.us.1, align 8, !tbaa !77, !noalias !445
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.oj
  %i.on = load i32, ptr %i.om, align 4, !tbaa !161, !noalias !445
  %i.oo = zext i32 %i.on to i64
  %i.op = mul nsw i64 %i.ol, %i.oo
  %i.oq = add nsw i64 %i.op, %i.oi
  %i.or = add nuw nsw i64 %.0.i908.us, 2          ; 2 uses
  %i.os = mul i64 %i.or, %i.iq
  %gep.us.2 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.os
  %i.ot = load i64, ptr %gep.us.2, align 8, !tbaa !77, !noalias !445
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.or
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !161, !noalias !445
  %i.ow = zext i32 %i.ov to i64
  %i.ox = mul nsw i64 %i.ot, %i.ow
  %i.oy = add nsw i64 %i.ox, %i.oq
  %i.oz = add nuw nsw i64 %.0.i908.us, 3          ; 2 uses
  %i.pa = mul i64 %i.oz, %i.iq
  %gep.us.3 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.pa
  %i.pb = load i64, ptr %gep.us.3, align 8, !tbaa !77, !noalias !445
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.oz
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !161, !noalias !445
  %i.pe = zext i32 %i.pd to i64
  %i.pf = mul nsw i64 %i.pb, %i.pe
  %i.pg = add nsw i64 %i.pf, %i.oy                ; 2 uses
  %i.ph = add nuw nsw i64 %.0.i908.us, 4          ; 2 uses
  %exitcond973.not.3 = icmp eq i64 %i.ph, %i.mx
  br i1 %exitcond973.not.3, label %._crit_edge.us910, label %scalar.ph481, !llvm.loop !405

._crit_edge.us910:                                ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481, %middle.block494
  %.lcssa460 = phi i64 [ %i.nq, %middle.block494 ], [ %.lcssa580.unr, %scalar.ph481.prol.loopexit ], [ %i.pg, %scalar.ph481 ]
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.092.i909.us
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !77, !alias.scope !445
  %.reass.us = mul i64 %i.pj, %factor.op.mul
  %i.pk = mul nsw i64 %.lcssa460, %i.ne
  %i.pl = icmp eq i64 %.reass.us, %i.pk
  br i1 %i.pl, label %bb.ha, label %.invoke

bb.hb:                                            ; preds = %.preheader598
  %i.pm = add nuw nsw i64 %.092.i909, 1           ; 2 uses
  %exitcond976.not = icmp eq i64 %i.pm, %umax
  br i1 %exitcond976.not, label %.loopexit600, label %.preheader598, !llvm.loop !404

.preheader598:                                    ; preds = %.preheader598.lr.ph, %bb.hb
  %.092.i909 = phi i64 [ %i.pm, %bb.hb ], [ 0, %.preheader598.lr.ph ] ; 2 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.092.i909
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !77, !alias.scope !445
  %.reass = mul i64 %i.po, %factor.op.mul
  %i.pp = icmp eq i64 %.reass, 0
  br i1 %i.pp, label %bb.hb, label %.invoke

bb.hc:                                            ; preds = %.invoke, %bb.gp
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

.loopexit600:                                     ; preds = %bb.ha, %bb.hb, %bb.gy, %.preheader601, %.preheader599.a, %bb.gu, %bb.gt
  %.1.i = phi i8 [ %.097.i920, %bb.gt ], [ %.097.i920, %bb.gu ], [ 0, %.preheader599.a ], [ 0, %.preheader601 ], [ 0, %bb.gy ], [ 0, %bb.hb ], [ 0, %bb.ha ] ; 2 uses
  %i.pr = add nuw nsw i64 %.096.i921, 1           ; 2 uses
  %exitcond981.not = icmp eq i64 %i.pr, 10
  br i1 %exitcond981.not, label %bb.gs, label %bb.gt, !llvm.loop !406

_ZNSt6vectorI29ggml_backend_meta_split_stateSaIS0_EED2Ev.exit423: ; preds = %bb.gq, %bb.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 21280) #29, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !445
  br label %"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_19clEv.exit"

bb.hd:                                            ; preds = %bb.aa, %bb.bp, %bb.bs, %bb.bv, %bb.by, %bb.cb, %bb.ce, %bb.cj, %bb.cm, %bb.cp, %bb.cu, %bb.cx, %bb.da, %bb.dd, %bb.dg, %bb.dj, %bb.dm, %bb.dp, %bb.ds, %bb.dv, %bb.dy, %bb.eb, %bb.ee, %bb.eh, %bb.eo, %bb.er, %bb.eu, %bb.ex, %bb.fc, %bb.ff, %bb.fi, %bb.fl, %bb.fo, %bb.fr, %bb.fu, %bb.fx, %bb.ga, %bb.gd, %bb.gg, %bb.gj, %bb.go, %bb.hc
  %.pn120.pn.i = phi { ptr, i32 } [ %i.hz, %bb.go ], [ %i.du, %bb.aa ], [ %i.pq, %bb.hc ], [ %i.ga, %bb.bp ], [ %i.gb, %bb.bs ], [ %i.gc, %bb.bv ], [ %i.gd, %bb.by ], [ %i.ge, %bb.cb ], [ %i.gf, %bb.ce ], [ %i.hq, %bb.fx ], [ %i.gh, %bb.cj ], [ %i.gj, %bb.cm ], [ %i.gk, %bb.cp ], [ %i.hu, %bb.gj ], [ %i.gm, %bb.cu ], [ %i.gn, %bb.cx ], [ %i.go, %bb.da ], [ %i.gp, %bb.dd ], [ %i.gq, %bb.dg ], [ %i.gr, %bb.dj ], [ %i.gs, %bb.dm ], [ %i.gt, %bb.dp ], [ %i.gu, %bb.ds ], [ %i.gv, %bb.dv ], [ %i.gw, %bb.dy ], [ %i.gx, %bb.eb ], [ %i.gy, %bb.ee ], [ %i.gz, %bb.eh ], [ %i.ht, %bb.gg ], [ %i.hs, %bb.gd ], [ %i.he, %bb.eo ], [ %i.hf, %bb.er ], [ %i.hg, %bb.eu ], [ %i.hh, %bb.ex ], [ %i.hr, %bb.ga ], [ %i.hj, %bb.fc ], [ %i.hk, %bb.ff ], [ %i.hl, %bb.fi ], [ %i.hm, %bb.fl ], [ %i.hn, %bb.fo ], [ %i.ho, %bb.fr ], [ %i.hp, %bb.fu ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 21280) #29, !noalias !445
  br label %_ZNSt6vectorI29ggml_backend_meta_split_stateSaIS0_EED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, %_ZNSt6vectorI29ggml_backend_meta_split_stateSaIS0_EED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn120.pn.pn.i, %_ZNSt6vectorI29ggml_backend_meta_split_stateSaIS0_EED2Ev.exit ], [ %.pn73.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorI29ggml_backend_meta_split_stateSaIS0_EED2Ev.exit: ; preds = %bb.hd, %bb.w
  %.pn120.pn.pn.i = phi { ptr, i32 } [ %i.ds, %bb.w ], [ %.pn120.pn.i, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !445
  br label %common.resume

"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_19clEv.exit": ; preds = %bb.g, %._crit_edge904, %bb.q, %bb.t, %_ZNSt6vectorI29ggml_backend_meta_split_stateSaIS0_EED2Ev.exit423
  %i.ps = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.ps, null
  br i1 %.not11.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_19clEv.exit"
  %i.pt = load ptr, ptr %60, align 8, !tbaa !232  ; 4 uses
  %i.pu = load i8, ptr %.sroa.2.0..sroa_idx, align 8, !range !81 ; 2 uses
  br label %bb.he

bb.he:                                            ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.ps, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i ]
  %i.pv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !232 ; 2 uses
  %i.px = icmp ult ptr %i.pw, %i.pt
  br i1 %i.px, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.py = icmp ult ptr %i.pt, %i.pw
  br i1 %i.py, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i

_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i: ; preds = %bb.hf
  %i.pz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.qa = load i8, ptr %i.pz, align 8, !tbaa !233, !range !81, !noundef !82
  %i.qb = icmp samesign ult i8 %i.qa, %i.pu
  br i1 %i.qb, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i, %bb.he
  br label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i, %bb.hf
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i ], [ 16, %bb.hf ], [ 16, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.hf ], [ %.013.i.i.i.i, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i ] ; 9 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.qc, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i, label %bb.he, !llvm.loop !377

_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i: ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i
  %i.qd = icmp eq ptr %.19.i.i.i.i, %i.ab
  br i1 %i.qd, label %.critedge.i, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i
  %i.qe = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !232 ; 2 uses
  %i.qg = icmp ult ptr %i.pt, %i.qf
  br i1 %i.qg, label %.critedge.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.qh = icmp ult ptr %i.qf, %i.pt
  br i1 %i.qh, label %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i

_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i: ; preds = %bb.hh
  %i.qi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.qj = load i8, ptr %i.qi, align 8, !tbaa !233, !range !81, !noundef !82
  %i.qk = icmp samesign ult i8 %i.pu, %i.qj
  br i1 %i.qk, label %.critedge.i, label %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i, %bb.hg, %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i, %"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_19clEv.exit"
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.ab, %"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK4$_19clEv.exit" ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i ], [ %.19.i.i.i.i, %bb.hg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr %60, ptr %11, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.ql = call ptr @_ZNSt8_Rb_treeISt4pairIPK11ggml_tensorbES0_IKS4_S0_I29ggml_backend_meta_split_stateA328_cEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit

_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit: ; preds = %bb.hh, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.ql, %.critedge.i ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i ], [ %.19.i.i.i.i, %bb.hh ]
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %i.qm, ptr noundef nonnull align 8 dereferenceable(2128) %61, i64 2128, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  %i.qn = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %.not11.i.i.i.i83 = icmp eq ptr %i.qn, null
  br i1 %.not11.i.i.i.i83, label %.critedge.i96, label %.lr.ph.i.i.i.i84

.lr.ph.i.i.i.i84:                                 ; preds = %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit
  %i.qo = load ptr, ptr %60, align 8, !tbaa !232  ; 4 uses
  %i.qp = load i8, ptr %.sroa.2.0..sroa_idx, align 8, !range !81 ; 2 uses
  br label %bb.hi

bb.hi:                                            ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i88, %.lr.ph.i.i.i.i84
  %.013.i.i.i.i85 = phi ptr [ %i.qn, %.lr.ph.i.i.i.i84 ], [ %.1.i.i.i.i91, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i88 ] ; 5 uses
  %.0812.i.i.i.i86 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i84 ], [ %.19.i.i.i.i90, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i88 ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i85, i64 32
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !232 ; 2 uses
  %i.qs = icmp ult ptr %i.qr, %i.qo
  br i1 %i.qs, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i98, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.qt = icmp ult ptr %i.qo, %i.qr
  br i1 %i.qt, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i88, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i87

_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i87: ; preds = %bb.hj
  %i.qu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i85, i64 40
  %i.qv = load i8, ptr %i.qu, align 8, !tbaa !233, !range !81, !noundef !82
  %i.qw = icmp samesign ult i8 %i.qv, %i.qp
  br i1 %i.qw, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i98, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i88

_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i98: ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i87, %bb.hi
  br label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i88

_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i88: ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i98, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i87, %bb.hj
  %.sink.i.i.i.i89 = phi i64 [ 24, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i98 ], [ 16, %bb.hj ], [ 16, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i87 ]
  %.19.i.i.i.i90 = phi ptr [ %.0812.i.i.i.i86, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread.i.i.i.i98 ], [ %.013.i.i.i.i85, %bb.hj ], [ %.013.i.i.i.i85, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i.i.i.i87 ] ; 9 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i85, i64 %.sink.i.i.i.i89
  %.1.i.i.i.i91 = load ptr, ptr %i.qx, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %.1.i.i.i.i91, null
  br i1 %.not.i.i.i.i92, label %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i93, label %bb.hi, !llvm.loop !377

_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i93: ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.thread10.i.i.i.i88
  %i.qy = icmp eq ptr %.19.i.i.i.i90, %i.ab
  br i1 %i.qy, label %.critedge.i96, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i93
  %i.qz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i90, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !232 ; 2 uses
  %i.rb = icmp ult ptr %i.qo, %i.ra
  br i1 %i.rb, label %.critedge.i96, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.rc = icmp ult ptr %i.ra, %i.qo
  br i1 %i.rc, label %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit99, label %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i94

_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i94: ; preds = %bb.hl
  %i.rd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i90, i64 40
  %i.re = load i8, ptr %i.rd, align 8, !tbaa !233, !range !81, !noundef !82
  %i.rf = icmp samesign ult i8 %i.qp, %i.re
  br i1 %i.rf, label %.critedge.i96, label %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit99

.critedge.i96:                                    ; preds = %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i94, %bb.hk, %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i93, %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit
  %.08.lcssa.i.i.i11.i97 = phi ptr [ %i.ab, %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit ], [ %.19.i.i.i.i90, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i94 ], [ %.19.i.i.i.i90, %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEE11lower_boundERSA_.exit.i93 ], [ %.19.i.i.i.i90, %bb.hk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %60, ptr %9, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.rg = call ptr @_ZNSt8_Rb_treeISt4pairIPK11ggml_tensorbES0_IKS4_S0_I29ggml_backend_meta_split_stateA328_cEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr %.08.lcssa.i.i.i11.i97, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit99

_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit99: ; preds = %bb.hl, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i94, %.critedge.i96
  %.sroa.06.0.i95 = phi ptr [ %i.rg, %.critedge.i96 ], [ %.19.i.i.i.i90, %_ZNKSt4lessISt4pairIPK11ggml_tensorbEEclERKS4_S7_.exit.i94 ], [ %.19.i.i.i.i90, %bb.hl ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i95, i64 2176
  %i.ri = load ptr, ptr %i.b, align 8, !tbaa !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.rh, ptr noundef nonnull align 8 dereferenceable(328) %i.ri, i64 328, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !241
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %bb.hm, label %.critedge

bb.hm:                                            ; preds = %_ZNSt3mapISt4pairIPK11ggml_tensorbES0_I29ggml_backend_meta_split_stateA328_cESt4lessIS4_ESaIS0_IKS4_S7_EEEixERSA_.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  %i.rm = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 6 uses
  store ptr %i.rm, ptr %62, align 8, !tbaa !70
  %i.rn = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  store i64 0, ptr %i.rn, align 8, !tbaa !71
  store i8 0, ptr %i.rm, align 8, !tbaa !62
  %i.ro = getelementptr inbounds nuw i8, ptr %63, i64 2120
  %i.rp = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 6 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 9 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %63, i64 2056
  %i.rx = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 7 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 10 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 7 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 7 uses
  %i.se = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 7 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 7 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 7 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 7 uses
  %i.so = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 7 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  br label %bb.ho

bb.hn:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #27
  %i.sr = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 6 uses
  store ptr %i.sr, ptr %77, align 8, !tbaa !70
  %i.ss = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 3 uses
  store i64 0, ptr %i.ss, align 8, !tbaa !71
  store i8 0, ptr %i.sr, align 8, !tbaa !62
end_hunk_1
