Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldInfo?download=true
inline.NumInlined: 6011
inline.NumDeleted: 1810
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26, !noalias !659
  %i.um = load ptr, ptr %66, align 8, !tbaa !175
  %i.un = load i64, ptr %i.ie, align 8, !tbaa !118
  %i.uo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.um, i64 noundef %i.un) #26 ; 0 uses
  %i.up = load ptr, ptr %66, align 8, !tbaa !175  ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.id
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit178
  %i.ur = load i64, ptr %i.id, align 8, !tbaa !106
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  br label %.loopexit

bb.bj:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.ut = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.3, i64 noundef 1) #26 ; 0 uses
  %i.uu = icmp ugt i8 %i.ko, 112
  br i1 %i.uu, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i187, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.uv = icmp samesign ugt i8 %i.ko, 48          ; 2 uses
  %.idx.i.i.i.i.i.i.i.i182 = select i1 %i.uv, i64 64, i64 0
  %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.v.i183 = select i1 %i.uv, i64 80, i64 16
  %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.i184 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.v.i183
  %i.uw = load i8, ptr %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.i184, align 8, !tbaa !160
  %i.ux = icmp ult i8 %i.uw, %i.ko
  %.idx.i.i6.i.i.i.i.i.i.i185 = select i1 %i.ux, i64 32, i64 0
  %.add.i.i.i186 = or disjoint i64 %.idx.i.i6.i.i.i.i.i.i.i185, %.idx.i.i.i.i.i.i.i.i182
  br label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i187

_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i187: ; preds = %bb.bk, %bb.bj
  %.sink.i.i.i.i.idx.i.i.i188 = phi i64 [ %.add.i.i.i186, %bb.bk ], [ 128, %bb.bj ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i.i189 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.sink.i.i.i.i.idx.i.i.i188
  %.sink9.i.i.i.i.i.i.i190 = load i8, ptr %.sink.i.i.i.i.ptr.i.i.i189, align 1, !tbaa !160
  %i.uy = icmp ult i8 %.sink9.i.i.i.i.i.i.i190, %i.ko
  %.idx.i.i.i.i.i.i.i.i.i.i191 = select i1 %i.uy, i64 16, i64 0
  %.sink.i.i.i.i.add.i.i.i192 = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i191, %.sink.i.i.i.i.idx.i.i.i188 ; 2 uses
  %.not.i.i.i193 = icmp eq i64 %.sink.i.i.i.i.add.i.i.i192, 144
  br i1 %.not.i.i.i193, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195.thread, label %bb.bl

bb.bl:                                            ; preds = %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i187
  %.ptr.i.i.i194 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.sink.i.i.i.i.add.i.i.i192 ; 2 uses
  %i.uz = load i8, ptr %.ptr.i.i.i194, align 1, !tbaa !160
  %i.va = icmp ult i8 %i.ko, %i.uz
  br i1 %i.va, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195.thread, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195: ; preds = %bb.bl
  %i.vb = getelementptr inbounds nuw i8, ptr %.ptr.i.i.i194, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !162 ; 2 uses
  %.not.i196 = icmp eq ptr %i.vc, null
  br i1 %.not.i196, label %bb.bm, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195.thread

bb.bm:                                            ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195
  %i.vd = load ptr, ptr %60, align 8, !tbaa !69
  %i.ve = getelementptr i8, ptr %i.vd, i64 -24
  %i.vf = load i64, ptr %i.ve, align 8
  %i.vg = getelementptr inbounds i8, ptr %60, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !163
  %i.vj = or i32 %i.vi, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.vg, i32 noundef %i.vj) #26
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195.thread: ; preds = %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i187, %bb.bl, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195
  %i.vk = phi ptr [ %i.vc, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195 ], [ @.str.96, %bb.bl ], [ @.str.96, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i187 ] ; 2 uses
  %i.vl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vk) #26
  %i.vm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %i.vk, i64 noundef %i.vl) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %bb.bm, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit195.thread
  %i.vn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.4, i64 noundef 1) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 10, ptr %i.z, align 1, !tbaa !106
  %i.vo = load ptr, ptr %60, align 8, !tbaa !69
  %i.vp = getelementptr i8, ptr %i.vo, i64 -24
  %i.vq = load i64, ptr %i.vp, align 8
  %i.vr = getelementptr inbounds i8, ptr %60, i64 %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !164
  %.not.i198 = icmp eq i64 %i.vt, 0
  br i1 %.not.i198, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  %i.vu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %i.z, i64 noundef 1) #26 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit471

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  %i.vv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %60, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit471

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit471: ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #26
  %i.vw = zext nneg i8 %i.kn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26, !noalias !663
  store ptr @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, ptr %49, align 16, !tbaa !106, !noalias !663
  store i32 %i.vw, ptr %i.gi, align 16, !tbaa !106, !noalias !663
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26, !noalias !664
  store i64 0, ptr %i.gl, align 8, !noalias !664
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.gk, align 8, !tbaa !177, !noalias !664
  store ptr %i.gm, ptr %35, align 8, !tbaa !178, !noalias !664
  store i64 500, ptr %i.gj, align 8, !tbaa !179, !noalias !664
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !664
  store ptr @.str.12, ptr %13, align 8, !tbaa !98, !noalias !664
  store i64 22, ptr %.sroa.2.0..sroa_idx.i16.i466, align 8, !tbaa !99, !noalias !664
  store i32 0, ptr %i.gn, align 8, !tbaa !182, !noalias !664
  store ptr %35, ptr %i.go, align 8, !tbaa !184, !noalias !664
  store i64 44, ptr %i.gp, align 8, !tbaa !186, !noalias !664
  store ptr %49, ptr %.sroa.2.0..sroa_idx.i17.i467, align 8, !tbaa !106, !noalias !664
  store ptr null, ptr %i.gq, align 8, !tbaa !102, !noalias !664
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.12, i64 22, ptr noundef nonnull align 8 dereferenceable(56) %13), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !664
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.vx = load i64, ptr %i.gl, align 8, !tbaa !187, !noalias !666 ; 6 uses
  %i.vy = icmp ult i64 %i.vx, 4611686018427387903
  call void @llvm.assume(i1 %i.vy)
  %i.vz = load ptr, ptr %35, align 8, !tbaa !178, !noalias !666 ; 3 uses
  store ptr %i.gr, ptr %67, align 8, !tbaa !116, !alias.scope !666
  %i.wa = icmp eq ptr %i.vz, null
  %i.wb = icmp ne i64 %i.vx, 0
  %or.cond.i.i.i201 = and i1 %i.wb, %i.wa
  br i1 %or.cond.i.i.i201, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit471
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.223) #28
  unreachable

bb.bq:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26, !noalias !666
  store i64 %i.vx, ptr %i.y, align 8, !tbaa !99, !noalias !666
  %i.wc = icmp samesign ugt i64 %i.vx, 15
  br i1 %i.wc, label %bb.br, label %._crit_edge.i.i.i.i202

bb.br:                                            ; preds = %bb.bq
  %i.wd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef 0) #26 ; 2 uses
  store ptr %i.wd, ptr %67, align 8, !tbaa !175, !alias.scope !666
  %i.we = load i64, ptr %i.y, align 8, !tbaa !99, !noalias !666
  store i64 %i.we, ptr %i.gr, align 8, !tbaa !106, !alias.scope !666
  br label %._crit_edge.i.i.i.i202

._crit_edge.i.i.i.i202:                           ; preds = %bb.br, %bb.bq
  %i.wf = phi ptr [ %i.wd, %bb.br ], [ %i.gr, %bb.bq ] ; 2 uses
  switch i64 %i.vx, label %bb.bt [
    i64 1, label %bb.bs
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i203
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i202
  %i.wg = load i8, ptr %i.vz, align 1, !tbaa !106
  store i8 %i.wg, ptr %i.wf, align 1, !tbaa !106
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i203

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i202
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wf, ptr align 1 %i.vz, i64 %i.vx, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i203

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i203: ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i.i.i202
  %i.wh = load i64, ptr %i.y, align 8, !tbaa !99, !noalias !666 ; 2 uses
  store i64 %i.wh, ptr %i.gs, align 8, !tbaa !118, !alias.scope !666
  %i.wi = load ptr, ptr %67, align 8, !tbaa !175, !alias.scope !666
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wh
  store i8 0, ptr %i.wj, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26, !noalias !666
  %i.wk = load ptr, ptr %35, align 8, !tbaa !178, !noalias !664 ; 2 uses
  %.not.i.i.i204 = icmp eq ptr %i.wk, %i.gm
  br i1 %.not.i.i.i204, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit205, label %bb.bu

bb.bu:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i203
  call void @free(ptr noundef %i.wk) #26
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit205

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit205: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i203, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26, !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26, !noalias !663
  %i.wl = load ptr, ptr %67, align 8, !tbaa !175
  %i.wm = load i64, ptr %i.gs, align 8, !tbaa !118
  %i.wn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.wl, i64 noundef %i.wm) #26 ; 0 uses
  %i.wo = load ptr, ptr %67, align 8, !tbaa !175  ; 2 uses
  %i.wp = icmp eq ptr %i.wo, %i.gr
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit205
  %i.wq = load i64, ptr %i.gr, align 8, !tbaa !106
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.wr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  %i.ws = zext nneg i8 %i.kn to i64
  %.not844 = icmp eq i8 %i.kn, 0
  br i1 %.not844, label %._crit_edge835, label %.lr.ph834

.lr.ph834:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.wt = zext nneg i8 %.0688411016 to i64
  %i.wu = icmp samesign ult i8 %.0688411016, 3    ; 2 uses
  %i.wv = icmp eq i8 %.0688411016, 2              ; 2 uses
  %.idx.i.i.i.i.i.i.i.i212 = select i1 %i.wv, i64 16, i64 0
  %i.ww = select i1 %i.wv, i64 2, i64 1
  %.not11.i219.not = icmp eq i8 %.0688411016, 3   ; 2 uses
  %i.wx = zext nneg i32 %.07568381020 to i64      ; 2 uses
  %.idx.i.i.i.i.i.i.i.i212.mux = select i1 %i.wu, i64 %.idx.i.i.i.i.i.i.i.i212, i64 48
  %.idx.i.i.i.i.i.i.i.i212.mux.a = select i1 %i.wu, i64 %i.ww, i64 102
  %83 = icmp samesign ule i64 %.idx.i.i.i.i.i.i.i.i212.mux.a, %i.wt
  %brmerge = select i1 %.not11.i219.not, i1 true, i1 %83
  %.mux = select i1 %.not11.i219.not, i64 32, i64 %.idx.i.i.i.i.i.i.i.i212.mux
  %.0.i.i.i.i13.i.i.ptr.i218 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.enums2str, i64 %.mux
  %84 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13.i.i.ptr.i218, i64 8
  br label %bb.bx

._crit_edge835:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %.3.lcssa = phi i64 [ %.07508391019, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i8 10, ptr %i.x, align 1, !tbaa !106
  %i.wy = load ptr, ptr %60, align 8, !tbaa !69
  %i.wz = getelementptr i8, ptr %i.wy, i64 -24
  %i.xa = load i64, ptr %i.wz, align 8
  %i.xb = getelementptr inbounds i8, ptr %60, i64 %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !164
  %.not.i209 = icmp eq i64 %i.xd, 0
  br i1 %.not.i209, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge835
  %i.xe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %i.x, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit211

bb.bw:                                            ; preds = %._crit_edge835
  %i.xf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %60, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit211

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit211: ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.loopexit

bb.bx:                                            ; preds = %.lr.ph834, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %.081833 = phi i64 [ 0, %.lr.ph834 ], [ %i.aad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ]
  %.3831 = phi i64 [ %.07508391019, %.lr.ph834 ], [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ] ; 2 uses
  %i.xg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  %i.xh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #26
  br i1 %brmerge, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i216, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit220

_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i216: ; preds = %bb.bx
  %i.xi = load ptr, ptr %84, align 8, !tbaa !167
  br label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit220

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit220: ; preds = %bb.bx, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i216
  %i.xj = phi ptr [ %i.xi, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i216 ], [ @.str.96, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.xk = load ptr, ptr %i.cg, align 8, !tbaa !171, !noalias !667
  %i.xl = load ptr, ptr %i.cf, align 8, !tbaa !172, !noalias !667 ; 2 uses
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = ashr exact i64 %i.xo, 3
  %.not.i221 = icmp ugt i64 %i.xp, %i.wx
  br i1 %.not.i221, label %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i223, label %._crit_edge.i.i7.i222

_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i223: ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit220
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %i.wx
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !174, !noalias !667 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 56
  store ptr %i.gt, ptr %69, align 8, !tbaa !116, !alias.scope !667
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !175 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 64
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !118 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #26, !noalias !667
  store i64 %i.xv, ptr %i.w, align 8, !tbaa !99, !noalias !667
  %i.xw = icmp ugt i64 %i.xv, 15
  br i1 %i.xw, label %bb.by, label %._crit_edge.i.i.i227

bb.by:                                            ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i223
  %i.xx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0) #26 ; 2 uses
  store ptr %i.xx, ptr %69, align 8, !tbaa !175, !alias.scope !667
  %i.xy = load i64, ptr %i.w, align 8, !tbaa !99, !noalias !667
  store i64 %i.xy, ptr %i.gt, align 8, !tbaa !106, !alias.scope !667
  br label %._crit_edge.i.i.i227

._crit_edge.i.i.i227:                             ; preds = %bb.by, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i223
  %i.xz = phi ptr [ %i.xx, %bb.by ], [ %i.gt, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i223 ] ; 2 uses
  switch i64 %i.xv, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %.thread.i228
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i227
  %i.ya = load i8, ptr %i.xt, align 1, !tbaa !106
  store i8 %i.ya, ptr %i.xz, align 1, !tbaa !106
  br label %.thread.i228

bb.ca:                                            ; preds = %._crit_edge.i.i.i227
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xz, ptr align 1 %i.xt, i64 %i.xv, i1 false)
  br label %.thread.i228

.thread.i228:                                     ; preds = %bb.ca, %bb.bz, %._crit_edge.i.i.i227
  %i.yb = load i64, ptr %i.w, align 8, !tbaa !99, !noalias !667 ; 2 uses
  store i64 %i.yb, ptr %i.gu, align 8, !tbaa !118, !alias.scope !667
  %i.yc = load ptr, ptr %69, align 8, !tbaa !175, !alias.scope !667
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.yb
  store i8 0, ptr %i.yd, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #26, !noalias !667
  %.pre877 = load ptr, ptr %69, align 8, !tbaa !175, !noalias !668
  %.pre878 = load i64, ptr %i.gu, align 8, !tbaa !118, !noalias !668
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit477

._crit_edge.i.i7.i222:                            ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit220
  store ptr %i.gt, ptr %69, align 8, !tbaa !116, !alias.scope !667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gt, ptr noundef nonnull align 1 dereferenceable(9) @.str.225, i64 9, i1 false)
  store i64 9, ptr %i.gu, align 8, !tbaa !118, !alias.scope !667
  store i8 0, ptr %i.gv, align 1, !tbaa !106, !alias.scope !667
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit477

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit477: ; preds = %.thread.i228, %._crit_edge.i.i7.i222
  %i.ye = phi i64 [ %.pre878, %.thread.i228 ], [ 9, %._crit_edge.i.i7.i222 ]
  %i.yf = phi ptr [ %.pre877, %.thread.i228 ], [ %i.gt, %._crit_edge.i.i7.i222 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26, !noalias !668
  store ptr %i.xj, ptr %45, align 16, !tbaa !106, !noalias !668
  store ptr %i.yf, ptr %i.gw, align 16, !tbaa !106, !noalias !668
  store i64 %i.ye, ptr %i.gx, align 8, !tbaa !106, !noalias !668
  store i64 %.3831, ptr %i.gy, align 16, !tbaa !106, !noalias !668
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26, !noalias !669
  store i64 0, ptr %i.hb, align 8, !noalias !669
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ha, align 8, !tbaa !177, !noalias !669
  store ptr %i.hc, ptr %34, align 8, !tbaa !178, !noalias !669
  store i64 500, ptr %i.gz, align 8, !tbaa !179, !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !669
  store ptr @.str.13, ptr %12, align 8, !tbaa !98, !noalias !669
  store i64 22, ptr %.sroa.2.0..sroa_idx.i16.i472, align 8, !tbaa !99, !noalias !669
  store i32 0, ptr %i.hd, align 8, !tbaa !182, !noalias !669
  store ptr %34, ptr %i.he, align 8, !tbaa !184, !noalias !669
  store i64 1244, ptr %i.hf, align 8, !tbaa !186, !noalias !669
  store ptr %45, ptr %.sroa.2.0..sroa_idx.i17.i473, align 8, !tbaa !106, !noalias !669
  store ptr null, ptr %i.hg, align 8, !tbaa !102, !noalias !669
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.13, i64 22, ptr noundef nonnull align 8 dereferenceable(56) %12), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !669
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.yg = load i64, ptr %i.hb, align 8, !tbaa !187, !noalias !671 ; 6 uses
  %i.yh = icmp ult i64 %i.yg, 4611686018427387903
  call void @llvm.assume(i1 %i.yh)
  %i.yi = load ptr, ptr %34, align 8, !tbaa !178, !noalias !671 ; 3 uses
  store ptr %i.hh, ptr %68, align 8, !tbaa !116, !alias.scope !671
  %i.yj = icmp eq ptr %i.yi, null
  %i.yk = icmp ne i64 %i.yg, 0
  %or.cond.i.i.i230 = and i1 %i.yk, %i.yj
  br i1 %or.cond.i.i.i230, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit477
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.223) #28
  unreachable

bb.cc:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #26, !noalias !671
  store i64 %i.yg, ptr %i.v, align 8, !tbaa !99, !noalias !671
  %i.yl = icmp samesign ugt i64 %i.yg, 15
  br i1 %i.yl, label %bb.cd, label %._crit_edge.i.i.i.i231

bb.cd:                                            ; preds = %bb.cc
  %i.ym = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ym, ptr %68, align 8, !tbaa !175, !alias.scope !671
  %i.yn = load i64, ptr %i.v, align 8, !tbaa !99, !noalias !671
  store i64 %i.yn, ptr %i.hh, align 8, !tbaa !106, !alias.scope !671
  br label %._crit_edge.i.i.i.i231

._crit_edge.i.i.i.i231:                           ; preds = %bb.cd, %bb.cc
  %i.yo = phi ptr [ %i.ym, %bb.cd ], [ %i.hh, %bb.cc ] ; 2 uses
  switch i64 %i.yg, label %bb.cf [
    i64 1, label %bb.ce
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i232
  ]

bb.ce:                                            ; preds = %._crit_edge.i.i.i.i231
  %i.yp = load i8, ptr %i.yi, align 1, !tbaa !106
  store i8 %i.yp, ptr %i.yo, align 1, !tbaa !106
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i232

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i231
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yo, ptr align 1 %i.yi, i64 %i.yg, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i232

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i232: ; preds = %bb.cf, %bb.ce, %._crit_edge.i.i.i.i231
  %i.yq = load i64, ptr %i.v, align 8, !tbaa !99, !noalias !671 ; 2 uses
  store i64 %i.yq, ptr %i.hi, align 8, !tbaa !118, !alias.scope !671
  %i.yr = load ptr, ptr %68, align 8, !tbaa !175, !alias.scope !671
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yq
  store i8 0, ptr %i.ys, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #26, !noalias !671
  %i.yt = load ptr, ptr %34, align 8, !tbaa !178, !noalias !669 ; 2 uses
  %.not.i.i.i233 = icmp eq ptr %i.yt, %i.hc
  br i1 %.not.i.i.i233, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit234, label %bb.cg

bb.cg:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i232
  call void @free(ptr noundef %i.yt) #26
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit234

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit234: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i232, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26, !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26, !noalias !668
  %i.yu = load ptr, ptr %68, align 8, !tbaa !175
  %i.yv = load i64, ptr %i.hi, align 8, !tbaa !118
  %i.yw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.yu, i64 noundef %i.yv) #26 ; 0 uses
  %i.yx = load ptr, ptr %68, align 8, !tbaa !175  ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.hh
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit234
  %i.yz = load i64, ptr %i.hh, align 8, !tbaa !106
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.za) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  %i.zb = load ptr, ptr %69, align 8, !tbaa !175  ; 2 uses
  %i.zc = icmp eq ptr %i.zb, %i.gt
  br i1 %i.zc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  %i.zd = load i64, ptr %i.gt, align 8, !tbaa !106
  %i.ze = add i64 %i.zd, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.ze) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #26
  %i.zf = add i64 %.3831, %i.av                   ; 3 uses
  %i.zg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  %i.zh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26, !noalias !672
  store i64 %i.av, ptr %55, align 16, !tbaa !106, !noalias !672
  store i64 %i.zf, ptr %i.hj, align 16, !tbaa !106, !noalias !672
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26, !noalias !673
  store i64 0, ptr %i.hm, align 8, !noalias !673
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.hl, align 8, !tbaa !177, !noalias !673
  store ptr %i.hn, ptr %33, align 8, !tbaa !178, !noalias !673
  store i64 500, ptr %i.hk, align 8, !tbaa !179, !noalias !673
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !673
  store ptr @.str.14, ptr %11, align 8, !tbaa !98, !noalias !673
  store i64 33, ptr %.sroa.2.0..sroa_idx.i16.i478, align 8, !tbaa !99, !noalias !673
  store i32 0, ptr %i.ho, align 8, !tbaa !182, !noalias !673
end_hunk_0
begin_hunk_1_@_ZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11Ev:bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.abf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.abg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %31, i32 noundef 3, ptr nonnull @.str.226, i64 47, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  %i.abh = load i64, ptr %i.t, align 8, !tbaa !99
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.010.in.i = phi i64 [ %i.abh, %bb.cs ], [ %i.aat, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  br label %_ZN4LIEF5MachO22safe_dyld_opcode_countIjEET_PKNS0_14SegmentCommandEmmm.exit

_ZN4LIEF5MachO22safe_dyld_opcode_countIjEET_PKNS0_14SegmentCommandEmmm.exit: ; preds = %.thread780, %bb.cq, %bb.ct
  %.1.in.i = phi i64 [ %.010.in.i, %bb.ct ], [ %i.aat, %bb.cq ], [ %i.aaq, %.thread780 ] ; 2 uses
  %.1.i = trunc i64 %.1.in.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.abi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.3, i64 noundef 1) #26 ; 0 uses
  %i.abj = icmp ugt i8 %i.ko, 112
  br i1 %i.abj, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i255, label %bb.cu

bb.cu:                                            ; preds = %_ZN4LIEF5MachO22safe_dyld_opcode_countIjEET_PKNS0_14SegmentCommandEmmm.exit
  %i.abk = icmp samesign ugt i8 %i.ko, 48         ; 2 uses
  %.idx.i.i.i.i.i.i.i.i250 = select i1 %i.abk, i64 64, i64 0
  %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.v.i251 = select i1 %i.abk, i64 80, i64 16
  %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.i252 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.v.i251
  %i.abl = load i8, ptr %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.i252, align 8, !tbaa !160
  %i.abm = icmp ult i8 %i.abl, %i.ko
  %.idx.i.i6.i.i.i.i.i.i.i253 = select i1 %i.abm, i64 32, i64 0
  %.add.i.i.i254 = or disjoint i64 %.idx.i.i6.i.i.i.i.i.i.i253, %.idx.i.i.i.i.i.i.i.i250
  br label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i255

_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i255: ; preds = %bb.cu, %_ZN4LIEF5MachO22safe_dyld_opcode_countIjEET_PKNS0_14SegmentCommandEmmm.exit
  %.sink.i.i.i.i.idx.i.i.i256 = phi i64 [ %.add.i.i.i254, %bb.cu ], [ 128, %_ZN4LIEF5MachO22safe_dyld_opcode_countIjEET_PKNS0_14SegmentCommandEmmm.exit ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i.i257 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.sink.i.i.i.i.idx.i.i.i256
  %.sink9.i.i.i.i.i.i.i258 = load i8, ptr %.sink.i.i.i.i.ptr.i.i.i257, align 1, !tbaa !160
  %i.abn = icmp ult i8 %.sink9.i.i.i.i.i.i.i258, %i.ko
  %.idx.i.i.i.i.i.i.i.i.i.i259 = select i1 %i.abn, i64 16, i64 0
  %.sink.i.i.i.i.add.i.i.i260 = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i259, %.sink.i.i.i.i.idx.i.i.i256 ; 2 uses
  %.not.i.i.i261 = icmp eq i64 %.sink.i.i.i.i.add.i.i.i260, 144
  br i1 %.not.i.i.i261, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263.thread, label %bb.cv

bb.cv:                                            ; preds = %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i255
  %.ptr.i.i.i262 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.sink.i.i.i.i.add.i.i.i260 ; 2 uses
  %i.abo = load i8, ptr %.ptr.i.i.i262, align 1, !tbaa !160
  %i.abp = icmp ult i8 %i.ko, %i.abo
  br i1 %i.abp, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263.thread, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263: ; preds = %bb.cv
  %i.abq = getelementptr inbounds nuw i8, ptr %.ptr.i.i.i262, i64 8
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !162 ; 2 uses
  %.not.i264 = icmp eq ptr %i.abr, null
  br i1 %.not.i264, label %bb.cw, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263.thread

bb.cw:                                            ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263
  %i.abs = load ptr, ptr %60, align 8, !tbaa !69
  %i.abt = getelementptr i8, ptr %i.abs, i64 -24
  %i.abu = load i64, ptr %i.abt, align 8
  %i.abv = getelementptr inbounds i8, ptr %60, i64 %i.abu ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !163
  %i.aby = or i32 %i.abx, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.abv, i32 noundef %i.aby) #26
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263.thread: ; preds = %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i255, %bb.cv, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263
  %i.abz = phi ptr [ %i.abr, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263 ], [ @.str.96, %bb.cv ], [ @.str.96, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i255 ] ; 2 uses
  %i.aca = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.abz) #26
  %i.acb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %i.abz, i64 noundef %i.aca) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265: ; preds = %bb.cw, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit263.thread
  %i.acc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.4, i64 noundef 1) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 10, ptr %i.r, align 1, !tbaa !106
  %i.acd = load ptr, ptr %60, align 8, !tbaa !69
  %i.ace = getelementptr i8, ptr %i.acd, i64 -24
  %i.acf = load i64, ptr %i.ace, align 8
  %i.acg = getelementptr inbounds i8, ptr %60, i64 %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !164
  %.not.i266 = icmp eq i64 %i.aci, 0
  br i1 %.not.i266, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.acj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %i.r, i64 noundef 1) #26 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit485

bb.cy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.ack = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %60, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit485

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit485: ; preds = %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26, !noalias !676
  store ptr @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, ptr %50, align 16, !tbaa !106, !noalias !676
  store i32 %.1.i, ptr %i.ew, align 16, !tbaa !106, !noalias !676
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26, !noalias !677
  store i64 0, ptr %i.ez, align 8, !noalias !677
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ey, align 8, !tbaa !177, !noalias !677
  store ptr %i.fa, ptr %30, align 8, !tbaa !178, !noalias !677
  store i64 500, ptr %i.ex, align 8, !tbaa !179, !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !677
  store ptr @.str.12, ptr %10, align 8, !tbaa !98, !noalias !677
  store i64 22, ptr %.sroa.2.0..sroa_idx.i16.i480, align 8, !tbaa !99, !noalias !677
  store i32 0, ptr %i.fb, align 8, !tbaa !182, !noalias !677
  store ptr %30, ptr %i.fc, align 8, !tbaa !184, !noalias !677
  store i64 44, ptr %i.fd, align 8, !tbaa !186, !noalias !677
  store ptr %50, ptr %.sroa.2.0..sroa_idx.i17.i481, align 8, !tbaa !106, !noalias !677
  store ptr null, ptr %i.fe, align 8, !tbaa !102, !noalias !677
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.12, i64 22, ptr noundef nonnull align 8 dereferenceable(56) %10), !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !677
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.acl = load i64, ptr %i.ez, align 8, !tbaa !187, !noalias !679 ; 6 uses
  %i.acm = icmp ult i64 %i.acl, 4611686018427387903
  call void @llvm.assume(i1 %i.acm)
  %i.acn = load ptr, ptr %30, align 8, !tbaa !178, !noalias !679 ; 3 uses
  store ptr %i.ff, ptr %71, align 8, !tbaa !116, !alias.scope !679
  %i.aco = icmp eq ptr %i.acn, null
  %i.acp = icmp ne i64 %i.acl, 0
  %or.cond.i.i.i269 = and i1 %i.acp, %i.aco
  br i1 %or.cond.i.i.i269, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit485
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.223) #28
  unreachable

bb.da:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26, !noalias !679
  store i64 %i.acl, ptr %i.q, align 8, !tbaa !99, !noalias !679
  %i.acq = icmp samesign ugt i64 %i.acl, 15
  br i1 %i.acq, label %bb.db, label %._crit_edge.i.i.i.i270

bb.db:                                            ; preds = %bb.da
  %i.acr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0) #26 ; 2 uses
  store ptr %i.acr, ptr %71, align 8, !tbaa !175, !alias.scope !679
  %i.acs = load i64, ptr %i.q, align 8, !tbaa !99, !noalias !679
  store i64 %i.acs, ptr %i.ff, align 8, !tbaa !106, !alias.scope !679
  br label %._crit_edge.i.i.i.i270

._crit_edge.i.i.i.i270:                           ; preds = %bb.db, %bb.da
  %i.act = phi ptr [ %i.acr, %bb.db ], [ %i.ff, %bb.da ] ; 2 uses
  switch i64 %i.acl, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i271
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i.i.i270
  %i.acu = load i8, ptr %i.acn, align 1, !tbaa !106
  store i8 %i.acu, ptr %i.act, align 1, !tbaa !106
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i271

bb.dd:                                            ; preds = %._crit_edge.i.i.i.i270
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.act, ptr align 1 %i.acn, i64 %i.acl, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i271

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i271: ; preds = %bb.dd, %bb.dc, %._crit_edge.i.i.i.i270
  %i.acv = load i64, ptr %i.q, align 8, !tbaa !99, !noalias !679 ; 2 uses
  store i64 %i.acv, ptr %i.fg, align 8, !tbaa !118, !alias.scope !679
  %i.acw = load ptr, ptr %71, align 8, !tbaa !175, !alias.scope !679
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 %i.acv
  store i8 0, ptr %i.acx, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26, !noalias !679
  %i.acy = load ptr, ptr %30, align 8, !tbaa !178, !noalias !677 ; 2 uses
  %.not.i.i.i272 = icmp eq ptr %i.acy, %i.fa
  br i1 %.not.i.i.i272, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit273, label %bb.de

bb.de:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i271
  call void @free(ptr noundef %i.acy) #26
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit273

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit273: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i271, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26, !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26, !noalias !676
  %i.acz = load ptr, ptr %71, align 8, !tbaa !175
  %i.ada = load i64, ptr %i.fg, align 8, !tbaa !118
  %i.adb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.acz, i64 noundef %i.ada) #26 ; 0 uses
  %i.adc = load ptr, ptr %71, align 8, !tbaa !175 ; 2 uses
  %i.add = icmp eq ptr %i.adc, %i.ff
  br i1 %i.add, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit273
  %i.ade = load i64, ptr %i.ff, align 8, !tbaa !106
  %i.adf = add i64 %i.ade, 1
  call void @_ZdlPvm(ptr noundef %i.adc, i64 noundef %i.adf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #26
  %i.adg = and i64 %.1.in.i, 4294967295           ; 2 uses
  %.not843 = icmp eq i64 %i.adg, 0
  br i1 %.not843, label %._crit_edge, label %.lr.ph828

.lr.ph828:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %i.adh = zext nneg i8 %.0688411016 to i64
  %i.adi = icmp samesign ult i8 %.0688411016, 3   ; 2 uses
  %i.adj = icmp eq i8 %.0688411016, 2             ; 2 uses
  %.idx.i.i.i.i.i.i.i.i280 = select i1 %i.adj, i64 16, i64 0
  %i.adk = select i1 %i.adj, i64 2, i64 1
  %.not11.i287.not = icmp eq i8 %.0688411016, 3   ; 2 uses
  %.idx.i.i.i.i.i.i.i.i280.mux = select i1 %i.adi, i64 %.idx.i.i.i.i.i.i.i.i280, i64 48
  %.idx.i.i.i.i.i.i.i.i280.mux.a = select i1 %i.adi, i64 %i.adk, i64 102
  %85 = icmp samesign ule i64 %.idx.i.i.i.i.i.i.i.i280.mux.a, %i.adh
  %brmerge999 = select i1 %.not11.i287.not, i1 true, i1 %85
  %.mux993 = select i1 %.not11.i287.not, i64 32, i64 %.idx.i.i.i.i.i.i.i.i280.mux
  %.0.i.i.i.i13.i.i.ptr.i286 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.enums2str, i64 %.mux993
  %86 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13.i.i.ptr.i286, i64 8
  br label %bb.dh

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %.4753.lcssa = phi i64 [ %.07508391019, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %i.afs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 10, ptr %i.p, align 1, !tbaa !106
  %i.adl = load ptr, ptr %60, align 8, !tbaa !69
  %i.adm = getelementptr i8, ptr %i.adl, i64 -24
  %i.adn = load i64, ptr %i.adm, align 8
  %i.ado = getelementptr inbounds i8, ptr %60, i64 %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !164
  %.not.i277 = icmp eq i64 %i.adq, 0
  br i1 %.not.i277, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %._crit_edge
  %i.adr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %i.p, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit279

bb.dg:                                            ; preds = %._crit_edge
  %i.ads = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %60, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit279

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit279: ; preds = %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit

bb.dh:                                            ; preds = %.lr.ph828, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  %.080827 = phi i64 [ 0, %.lr.ph828 ], [ %i.agq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ]
  %.4753825 = phi i64 [ %.07508391019, %.lr.ph828 ], [ %i.afs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ] ; 2 uses
  %i.adt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  %i.adu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #26
  br i1 %brmerge999, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i284, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit288

_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i284: ; preds = %bb.dh
  %i.adv = load ptr, ptr %86, align 8, !tbaa !167
  br label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit288

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit288: ; preds = %bb.dh, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i284
  %i.adw = phi ptr [ %i.adv, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i284 ], [ @.str.96, %bb.dh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.adx = load ptr, ptr %i.cg, align 8, !tbaa !171, !noalias !680
  %i.ady = load ptr, ptr %i.cf, align 8, !tbaa !172, !noalias !680 ; 2 uses
  %i.adz = ptrtoint ptr %i.adx to i64
  %i.aea = ptrtoint ptr %i.ady to i64
  %i.aeb = sub i64 %i.adz, %i.aea
  %i.aec = ashr exact i64 %i.aeb, 3
  %.not.i289 = icmp ugt i64 %i.aec, %i.aai
  br i1 %.not.i289, label %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i291, label %._crit_edge.i.i7.i290

_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i291: ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit288
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.aai
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !174, !noalias !680 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 56
  store ptr %i.fh, ptr %73, align 8, !tbaa !116, !alias.scope !680
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !175 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 64
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !118 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26, !noalias !680
  store i64 %i.aei, ptr %i.o, align 8, !tbaa !99, !noalias !680
  %i.aej = icmp ugt i64 %i.aei, 15
  br i1 %i.aej, label %bb.di, label %._crit_edge.i.i.i295

bb.di:                                            ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i291
  %i.aek = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0) #26 ; 2 uses
  store ptr %i.aek, ptr %73, align 8, !tbaa !175, !alias.scope !680
  %i.ael = load i64, ptr %i.o, align 8, !tbaa !99, !noalias !680
  store i64 %i.ael, ptr %i.fh, align 8, !tbaa !106, !alias.scope !680
  br label %._crit_edge.i.i.i295

._crit_edge.i.i.i295:                             ; preds = %bb.di, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i291
  %i.aem = phi ptr [ %i.aek, %bb.di ], [ %i.fh, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i291 ] ; 2 uses
  switch i64 %i.aei, label %bb.dk [
    i64 1, label %bb.dj
    i64 0, label %.thread.i296
  ]

bb.dj:                                            ; preds = %._crit_edge.i.i.i295
  %i.aen = load i8, ptr %i.aeg, align 1, !tbaa !106
  store i8 %i.aen, ptr %i.aem, align 1, !tbaa !106
  br label %.thread.i296

bb.dk:                                            ; preds = %._crit_edge.i.i.i295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aem, ptr align 1 %i.aeg, i64 %i.aei, i1 false)
  br label %.thread.i296

.thread.i296:                                     ; preds = %bb.dk, %bb.dj, %._crit_edge.i.i.i295
  %i.aeo = load i64, ptr %i.o, align 8, !tbaa !99, !noalias !680 ; 2 uses
  store i64 %i.aeo, ptr %i.fi, align 8, !tbaa !118, !alias.scope !680
  %i.aep = load ptr, ptr %73, align 8, !tbaa !175, !alias.scope !680
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aeo
  store i8 0, ptr %i.aeq, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26, !noalias !680
  %.pre875 = load ptr, ptr %73, align 8, !tbaa !175, !noalias !681
  %.pre876 = load i64, ptr %i.fi, align 8, !tbaa !118, !noalias !681
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit491

._crit_edge.i.i7.i290:                            ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit288
  store ptr %i.fh, ptr %73, align 8, !tbaa !116, !alias.scope !680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.fh, ptr noundef nonnull align 1 dereferenceable(9) @.str.225, i64 9, i1 false)
  store i64 9, ptr %i.fi, align 8, !tbaa !118, !alias.scope !680
  store i8 0, ptr %i.fj, align 1, !tbaa !106, !alias.scope !680
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit491

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit491: ; preds = %.thread.i296, %._crit_edge.i.i7.i290
  %i.aer = phi i64 [ %.pre876, %.thread.i296 ], [ 9, %._crit_edge.i.i7.i290 ]
  %i.aes = phi ptr [ %.pre875, %.thread.i296 ], [ %i.fh, %._crit_edge.i.i7.i290 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26, !noalias !681
  store ptr %i.adw, ptr %46, align 16, !tbaa !106, !noalias !681
  store ptr %i.aes, ptr %i.fk, align 16, !tbaa !106, !noalias !681
  store i64 %i.aer, ptr %i.fl, align 8, !tbaa !106, !noalias !681
  store i64 %.4753825, ptr %i.fm, align 16, !tbaa !106, !noalias !681
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26, !noalias !682
  store i64 0, ptr %i.fp, align 8, !noalias !682
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.fo, align 8, !tbaa !177, !noalias !682
  store ptr %i.fq, ptr %29, align 8, !tbaa !178, !noalias !682
  store i64 500, ptr %i.fn, align 8, !tbaa !179, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !682
  store ptr @.str.13, ptr %9, align 8, !tbaa !98, !noalias !682
  store i64 22, ptr %.sroa.2.0..sroa_idx.i16.i486, align 8, !tbaa !99, !noalias !682
  store i32 0, ptr %i.fr, align 8, !tbaa !182, !noalias !682
  store ptr %29, ptr %i.fs, align 8, !tbaa !184, !noalias !682
  store i64 1244, ptr %i.ft, align 8, !tbaa !186, !noalias !682
  store ptr %46, ptr %.sroa.2.0..sroa_idx.i17.i487, align 8, !tbaa !106, !noalias !682
  store ptr null, ptr %i.fu, align 8, !tbaa !102, !noalias !682
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.13, i64 22, ptr noundef nonnull align 8 dereferenceable(56) %9), !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !682
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.aet = load i64, ptr %i.fp, align 8, !tbaa !187, !noalias !684 ; 6 uses
  %i.aeu = icmp ult i64 %i.aet, 4611686018427387903
  call void @llvm.assume(i1 %i.aeu)
  %i.aev = load ptr, ptr %29, align 8, !tbaa !178, !noalias !684 ; 3 uses
  store ptr %i.fv, ptr %72, align 8, !tbaa !116, !alias.scope !684
  %i.aew = icmp eq ptr %i.aev, null
  %i.aex = icmp ne i64 %i.aet, 0
  %or.cond.i.i.i298 = and i1 %i.aex, %i.aew
  br i1 %or.cond.i.i.i298, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit491
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.223) #28
  unreachable

bb.dm:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26, !noalias !684
  store i64 %i.aet, ptr %i.n, align 8, !tbaa !99, !noalias !684
  %i.aey = icmp samesign ugt i64 %i.aet, 15
  br i1 %i.aey, label %bb.dn, label %._crit_edge.i.i.i.i299

bb.dn:                                            ; preds = %bb.dm
  %i.aez = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0) #26 ; 2 uses
  store ptr %i.aez, ptr %72, align 8, !tbaa !175, !alias.scope !684
  %i.afa = load i64, ptr %i.n, align 8, !tbaa !99, !noalias !684
  store i64 %i.afa, ptr %i.fv, align 8, !tbaa !106, !alias.scope !684
  br label %._crit_edge.i.i.i.i299

._crit_edge.i.i.i.i299:                           ; preds = %bb.dn, %bb.dm
  %i.afb = phi ptr [ %i.aez, %bb.dn ], [ %i.fv, %bb.dm ] ; 2 uses
  switch i64 %i.aet, label %bb.dp [
    i64 1, label %bb.do
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i300
  ]

bb.do:                                            ; preds = %._crit_edge.i.i.i.i299
  %i.afc = load i8, ptr %i.aev, align 1, !tbaa !106
  store i8 %i.afc, ptr %i.afb, align 1, !tbaa !106
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i300

bb.dp:                                            ; preds = %._crit_edge.i.i.i.i299
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afb, ptr align 1 %i.aev, i64 %i.aet, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i300

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i300: ; preds = %bb.dp, %bb.do, %._crit_edge.i.i.i.i299
  %i.afd = load i64, ptr %i.n, align 8, !tbaa !99, !noalias !684 ; 2 uses
  store i64 %i.afd, ptr %i.fw, align 8, !tbaa !118, !alias.scope !684
  %i.afe = load ptr, ptr %72, align 8, !tbaa !175, !alias.scope !684
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.afd
  store i8 0, ptr %i.aff, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26, !noalias !684
  %i.afg = load ptr, ptr %29, align 8, !tbaa !178, !noalias !682 ; 2 uses
  %.not.i.i.i301 = icmp eq ptr %i.afg, %i.fq
  br i1 %.not.i.i.i301, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit302, label %bb.dq

bb.dq:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i300
  call void @free(ptr noundef %i.afg) #26
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit302

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit302: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i300, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26, !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26, !noalias !681
  %i.afh = load ptr, ptr %72, align 8, !tbaa !175
  %i.afi = load i64, ptr %i.fw, align 8, !tbaa !118
  %i.afj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.afh, i64 noundef %i.afi) #26 ; 0 uses
  %i.afk = load ptr, ptr %72, align 8, !tbaa !175 ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.fv
  br i1 %i.afl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit302
  %i.afm = load i64, ptr %i.fv, align 8, !tbaa !106
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  %i.afo = load ptr, ptr %73, align 8, !tbaa !175 ; 2 uses
  %i.afp = icmp eq ptr %i.afo, %i.fh
  br i1 %i.afp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305
  %i.afq = load i64, ptr %i.fh, align 8, !tbaa !106
  %i.afr = add i64 %i.afq, 1
  call void @_ZdlPvm(ptr noundef %i.afo, i64 noundef %i.afr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #26
  %i.afs = add i64 %.4753825, %i.av               ; 3 uses
  %i.aft = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  %i.afu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26, !noalias !685
  store i64 %i.av, ptr %56, align 16, !tbaa !106, !noalias !685
  store i64 %i.afs, ptr %i.fx, align 16, !tbaa !106, !noalias !685
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26, !noalias !686
  store i64 0, ptr %i.ga, align 8, !noalias !686
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.fz, align 8, !tbaa !177, !noalias !686
  store ptr %i.gb, ptr %28, align 8, !tbaa !178, !noalias !686
  store i64 500, ptr %i.fy, align 8, !tbaa !179, !noalias !686
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !686
  store ptr @.str.14, ptr %8, align 8, !tbaa !98, !noalias !686
  store i64 33, ptr %.sroa.2.0..sroa_idx.i16.i492, align 8, !tbaa !99, !noalias !686
  store i32 0, ptr %i.gc, align 8, !tbaa !182, !noalias !686
  store ptr %28, ptr %i.gd, align 8, !tbaa !184, !noalias !686
  store i64 68, ptr %i.ge, align 8, !tbaa !186, !noalias !686
  store ptr %56, ptr %.sroa.2.0..sroa_idx.i17.i493, align 8, !tbaa !106, !noalias !686
  store ptr null, ptr %i.gf, align 8, !tbaa !102, !noalias !686
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.14, i64 33, ptr noundef nonnull align 8 dereferenceable(56) %8), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !686
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.afv = load i64, ptr %i.ga, align 8, !tbaa !187, !noalias !688 ; 6 uses
  %i.afw = icmp ult i64 %i.afv, 4611686018427387903
  call void @llvm.assume(i1 %i.afw)
  %i.afx = load ptr, ptr %28, align 8, !tbaa !178, !noalias !688 ; 3 uses
  store ptr %i.gg, ptr %74, align 8, !tbaa !116, !alias.scope !688
  %i.afy = icmp eq ptr %i.afx, null
  %i.afz = icmp ne i64 %i.afv, 0
  %or.cond.i.i.i309 = and i1 %i.afz, %i.afy
  br i1 %or.cond.i.i.i309, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.223) #28
  unreachable

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26, !noalias !688
  store i64 %i.afv, ptr %i.m, align 8, !tbaa !99, !noalias !688
  %i.aga = icmp samesign ugt i64 %i.afv, 15
  br i1 %i.aga, label %bb.dt, label %._crit_edge.i.i.i.i310

bb.dt:                                            ; preds = %bb.ds
  %i.agb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0) #26 ; 2 uses
  store ptr %i.agb, ptr %74, align 8, !tbaa !175, !alias.scope !688
  %i.agc = load i64, ptr %i.m, align 8, !tbaa !99, !noalias !688
  store i64 %i.agc, ptr %i.gg, align 8, !tbaa !106, !alias.scope !688
  br label %._crit_edge.i.i.i.i310

._crit_edge.i.i.i.i310:                           ; preds = %bb.dt, %bb.ds
  %i.agd = phi ptr [ %i.agb, %bb.dt ], [ %i.gg, %bb.ds ] ; 2 uses
  switch i64 %i.afv, label %bb.dv [
    i64 1, label %bb.du
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i311
  ]

bb.du:                                            ; preds = %._crit_edge.i.i.i.i310
  %i.age = load i8, ptr %i.afx, align 1, !tbaa !106
  store i8 %i.age, ptr %i.agd, align 1, !tbaa !106
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i311

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i310
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agd, ptr align 1 %i.afx, i64 %i.afv, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i311

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i311: ; preds = %bb.dv, %bb.du, %._crit_edge.i.i.i.i310
  %i.agf = load i64, ptr %i.m, align 8, !tbaa !99, !noalias !688 ; 2 uses
  store i64 %i.agf, ptr %i.gh, align 8, !tbaa !118, !alias.scope !688
  %i.agg = load ptr, ptr %74, align 8, !tbaa !175, !alias.scope !688
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agf
  store i8 0, ptr %i.agh, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26, !noalias !688
  %i.agi = load ptr, ptr %28, align 8, !tbaa !178, !noalias !686 ; 2 uses
  %.not.i.i.i312 = icmp eq ptr %i.agi, %i.gb
  br i1 %.not.i.i.i312, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit313, label %bb.dw

bb.dw:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i311
  call void @free(ptr noundef %i.agi) #26
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit313

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit313: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i311, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26, !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26, !noalias !685
  %i.agj = load ptr, ptr %74, align 8, !tbaa !175
  %i.agk = load i64, ptr %i.gh, align 8, !tbaa !118
  %i.agl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.agj, i64 noundef %i.agk) #26 ; 0 uses
  %i.agm = load ptr, ptr %74, align 8, !tbaa !175 ; 2 uses
  %i.agn = icmp eq ptr %i.agm, %i.gg
  br i1 %i.agn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit313
  %i.ago = load i64, ptr %i.gg, align 8, !tbaa !106
  %i.agp = add i64 %i.ago, 1
  call void @_ZdlPvm(ptr noundef %i.agm, i64 noundef %i.agp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  %i.agq = add nuw nsw i64 %.080827, 1            ; 2 uses
  %exitcond870.not = icmp eq i64 %i.agq, %i.adg
  br i1 %exitcond870.not, label %._crit_edge, label %bb.dh, !llvm.loop !599

bb.dx:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.agr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.3, i64 noundef 1) #26 ; 0 uses
  %i.ags = icmp ugt i8 %i.ko, 112
  br i1 %i.ags, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i322, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.agt = icmp samesign ugt i8 %i.ko, 48         ; 2 uses
  %.idx.i.i.i.i.i.i.i.i317 = select i1 %i.agt, i64 64, i64 0
  %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.v.i318 = select i1 %i.agt, i64 80, i64 16
  %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.i319 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.v.i318
  %i.agu = load i8, ptr %.idx.i.i.i.i.i.i.i.sroa.sel.sroa.sel.i319, align 8, !tbaa !160
  %i.agv = icmp ult i8 %i.agu, %i.ko
  %.idx.i.i6.i.i.i.i.i.i.i320 = select i1 %i.agv, i64 32, i64 0
  %.add.i.i.i321 = or disjoint i64 %.idx.i.i6.i.i.i.i.i.i.i320, %.idx.i.i.i.i.i.i.i.i317
  br label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i322

_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i322: ; preds = %bb.dy, %bb.dx
  %.sink.i.i.i.i.idx.i.i.i323 = phi i64 [ %.add.i.i.i321, %bb.dy ], [ 128, %bb.dx ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i.i324 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.sink.i.i.i.i.idx.i.i.i323
  %.sink9.i.i.i.i.i.i.i325 = load i8, ptr %.sink.i.i.i.i.ptr.i.i.i324, align 1, !tbaa !160
  %i.agw = icmp ult i8 %.sink9.i.i.i.i.i.i.i325, %i.ko
  %.idx.i.i.i.i.i.i.i.i.i.i326 = select i1 %i.agw, i64 16, i64 0
  %.sink.i.i.i.i.add.i.i.i327 = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i326, %.sink.i.i.i.i.idx.i.i.i323 ; 2 uses
  %.not.i.i.i328 = icmp eq i64 %.sink.i.i.i.i.add.i.i.i327, 144
  br i1 %.not.i.i.i328, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330.thread, label %bb.dz

bb.dz:                                            ; preds = %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i322
  %.ptr.i.i.i329 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.enums2str, i64 %.sink.i.i.i.i.add.i.i.i327 ; 2 uses
  %i.agx = load i8, ptr %.ptr.i.i.i329, align 1, !tbaa !160
  %i.agy = icmp ult i8 %i.ko, %i.agx
  br i1 %i.agy, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330.thread, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330: ; preds = %bb.dz
  %i.agz = getelementptr inbounds nuw i8, ptr %.ptr.i.i.i329, i64 8
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !162 ; 2 uses
  %.not.i331 = icmp eq ptr %i.aha, null
  br i1 %.not.i331, label %bb.ea, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330.thread

bb.ea:                                            ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330
  %i.ahb = load ptr, ptr %60, align 8, !tbaa !69
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 -24
  %i.ahd = load i64, ptr %i.ahc, align 8
  %i.ahe = getelementptr inbounds i8, ptr %60, i64 %i.ahd ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 32
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !163
  %i.ahh = or i32 %i.ahg, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ahe, i32 noundef %i.ahh) #26
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330.thread: ; preds = %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i322, %bb.dz, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330
  %i.ahi = phi ptr [ %i.aha, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330 ], [ @.str.96, %bb.dz ], [ @.str.96, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo14REBASE_OPCODESEPKcLm9ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i.i.i322 ] ; 2 uses
  %i.ahj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahi) #26
  %i.ahk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %i.ahi, i64 noundef %i.ahj) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332: ; preds = %bb.ea, %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo14REBASE_OPCODESE.exit330.thread
  %i.ahl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.4, i64 noundef 1) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 10, ptr %i.l, align 1, !tbaa !106
  %i.ahm = load ptr, ptr %60, align 8, !tbaa !69
  %i.ahn = getelementptr i8, ptr %i.ahm, i64 -24
  %i.aho = load i64, ptr %i.ahn, align 8
  %i.ahp = getelementptr inbounds i8, ptr %60, i64 %i.aho
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 16
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !164
  %.not.i333 = icmp eq i64 %i.ahr, 0
  br i1 %.not.i333, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332
  %i.ahs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %i.l, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit335

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332
  %i.aht = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %60, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit335

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit335: ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ahu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #26
  %i.ahv = zext nneg i8 %.0688411016 to i64
  %i.ahw = icmp samesign ugt i8 %.0688411016, 2
  br i1 %i.ahw, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit335
  %.not11.i343 = icmp eq i8 %.0688411016, 3
  br i1 %.not11.i343, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i340, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i337

bb.ee:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit335
  %i.ahx = icmp eq i8 %.0688411016, 2             ; 2 uses
  %.idx.i.i.i.i.i.i.i.i336 = select i1 %i.ahx, i64 16, i64 0
  %i.ahy = select i1 %i.ahx, i64 2, i64 1
  br label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i337

_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i337: ; preds = %bb.ed, %bb.ee
  %.pre.i.i.i338 = phi i64 [ %i.ahy, %bb.ee ], [ 102, %bb.ed ]
  %.0.i.i.i.i.idx.ph.i.i.i339 = phi i64 [ %.idx.i.i.i.i.i.i.i.i336, %bb.ee ], [ 48, %bb.ed ]
  %i.ahz = icmp samesign ugt i64 %.pre.i.i.i338, %i.ahv
  br i1 %i.ahz, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit344, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i340

_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i340: ; preds = %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i337, %bb.ed
  %.0.i.i.i.i13.i.i.idx14.i341 = phi i64 [ %.0.i.i.i.i.idx.ph.i.i.i339, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i337 ], [ 32, %bb.ed ]
  %.0.i.i.i.i13.i.i.ptr.i342 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.enums2str, i64 %.0.i.i.i.i13.i.i.idx14.i341
  %i.aia = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13.i.i.ptr.i342, i64 8
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !167
  br label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit344

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit344: ; preds = %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i337, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i340
  %i.aic = phi ptr [ %i.aib, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i340 ], [ @.str.96, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.i337 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #26
  %i.aid = zext nneg i32 %.07568381020 to i64     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.aie = load ptr, ptr %i.cg, align 8, !tbaa !171, !noalias !689
  %i.aif = load ptr, ptr %i.cf, align 8, !tbaa !172, !noalias !689 ; 2 uses
  %i.aig = ptrtoint ptr %i.aie to i64
  %i.aih = ptrtoint ptr %i.aif to i64
  %i.aii = sub i64 %i.aig, %i.aih
  %i.aij = ashr exact i64 %i.aii, 3
  %.not.i345 = icmp ugt i64 %i.aij, %i.aid
  br i1 %.not.i345, label %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i347, label %._crit_edge.i.i7.i346

_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i347: ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit344
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.aif, i64 %i.aid
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !174, !noalias !689 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 56
  store ptr %i.dv, ptr %76, align 8, !tbaa !116, !alias.scope !689
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !175 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 64
  %i.aip = load i64, ptr %i.aio, align 8, !tbaa !118 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26, !noalias !689
  store i64 %i.aip, ptr %i.k, align 8, !tbaa !99, !noalias !689
  %i.aiq = icmp ugt i64 %i.aip, 15
  br i1 %i.aiq, label %bb.ef, label %._crit_edge.i.i.i351

bb.ef:                                            ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i347
  %i.air = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #26 ; 2 uses
  store ptr %i.air, ptr %76, align 8, !tbaa !175, !alias.scope !689
  %i.ais = load i64, ptr %i.k, align 8, !tbaa !99, !noalias !689
  store i64 %i.ais, ptr %i.dv, align 8, !tbaa !106, !alias.scope !689
  br label %._crit_edge.i.i.i351

._crit_edge.i.i.i351:                             ; preds = %bb.ef, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i347
  %i.ait = phi ptr [ %i.air, %bb.ef ], [ %i.dv, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i347 ] ; 2 uses
  switch i64 %i.aip, label %bb.eh [
    i64 1, label %bb.eg
    i64 0, label %.thread.i352
  ]

bb.eg:                                            ; preds = %._crit_edge.i.i.i351
  %i.aiu = load i8, ptr %i.ain, align 1, !tbaa !106
  store i8 %i.aiu, ptr %i.ait, align 1, !tbaa !106
  br label %.thread.i352

bb.eh:                                            ; preds = %._crit_edge.i.i.i351
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ait, ptr align 1 %i.ain, i64 %i.aip, i1 false)
  br label %.thread.i352

.thread.i352:                                     ; preds = %bb.eh, %bb.eg, %._crit_edge.i.i.i351
  %i.aiv = load i64, ptr %i.k, align 8, !tbaa !99, !noalias !689 ; 2 uses
  store i64 %i.aiv, ptr %i.dw, align 8, !tbaa !118, !alias.scope !689
  %i.aiw = load ptr, ptr %76, align 8, !tbaa !175, !alias.scope !689
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %i.aiv
  store i8 0, ptr %i.aix, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26, !noalias !689
  %.pre873 = load ptr, ptr %76, align 8, !tbaa !175, !noalias !690
  %.pre874 = load i64, ptr %i.dw, align 8, !tbaa !118, !noalias !690
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit499

._crit_edge.i.i7.i346:                            ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit344
  store ptr %i.dv, ptr %76, align 8, !tbaa !116, !alias.scope !689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dv, ptr noundef nonnull align 1 dereferenceable(9) @.str.225, i64 9, i1 false)
  store i64 9, ptr %i.dw, align 8, !tbaa !118, !alias.scope !689
  store i8 0, ptr %i.dx, align 1, !tbaa !106, !alias.scope !689
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit499

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit499: ; preds = %.thread.i352, %._crit_edge.i.i7.i346
  %i.aiy = phi i64 [ %.pre874, %.thread.i352 ], [ 9, %._crit_edge.i.i7.i346 ]
  %i.aiz = phi ptr [ %.pre873, %.thread.i352 ], [ %i.dv, %._crit_edge.i.i7.i346 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26, !noalias !690
  store ptr %i.aic, ptr %47, align 16, !tbaa !106, !noalias !690
  store ptr %i.aiz, ptr %i.dy, align 16, !tbaa !106, !noalias !690
  store i64 %i.aiy, ptr %i.dz, align 8, !tbaa !106, !noalias !690
  store i64 %.07508391019, ptr %i.ea, align 16, !tbaa !106, !noalias !690
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26, !noalias !691
  store i64 0, ptr %i.ed, align 8, !noalias !691
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ec, align 8, !tbaa !177, !noalias !691
  store ptr %i.ee, ptr %27, align 8, !tbaa !178, !noalias !691
  store i64 500, ptr %i.eb, align 8, !tbaa !179, !noalias !691
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !691
  store ptr @.str.13, ptr %7, align 8, !tbaa !98, !noalias !691
  store i64 22, ptr %.sroa.2.0..sroa_idx.i16.i494, align 8, !tbaa !99, !noalias !691
  store i32 0, ptr %i.ef, align 8, !tbaa !182, !noalias !691
  store ptr %27, ptr %i.eg, align 8, !tbaa !184, !noalias !691
  store i64 1244, ptr %i.eh, align 8, !tbaa !186, !noalias !691
  store ptr %47, ptr %.sroa.2.0..sroa_idx.i17.i495, align 8, !tbaa !106, !noalias !691
  store ptr null, ptr %i.ei, align 8, !tbaa !102, !noalias !691
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.13, i64 22, ptr noundef nonnull align 8 dereferenceable(56) %7), !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !691
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.aja = load i64, ptr %i.ed, align 8, !tbaa !187, !noalias !693 ; 6 uses
  %i.ajb = icmp ult i64 %i.aja, 4611686018427387903
  call void @llvm.assume(i1 %i.ajb)
  %i.ajc = load ptr, ptr %27, align 8, !tbaa !178, !noalias !693 ; 3 uses
  store ptr %i.ej, ptr %75, align 8, !tbaa !116, !alias.scope !693
  %i.ajd = icmp eq ptr %i.ajc, null
  %i.aje = icmp ne i64 %i.aja, 0
  %or.cond.i.i.i354 = and i1 %i.aje, %i.ajd
  br i1 %or.cond.i.i.i354, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit499
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.223) #28
  unreachable

bb.ej:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26, !noalias !693
  store i64 %i.aja, ptr %i.j, align 8, !tbaa !99, !noalias !693
  %i.ajf = icmp samesign ugt i64 %i.aja, 15
  br i1 %i.ajf, label %bb.ek, label %._crit_edge.i.i.i.i355

bb.ek:                                            ; preds = %bb.ej
  %i.ajg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ajg, ptr %75, align 8, !tbaa !175, !alias.scope !693
  %i.ajh = load i64, ptr %i.j, align 8, !tbaa !99, !noalias !693
  store i64 %i.ajh, ptr %i.ej, align 8, !tbaa !106, !alias.scope !693
  br label %._crit_edge.i.i.i.i355

._crit_edge.i.i.i.i355:                           ; preds = %bb.ek, %bb.ej
  %i.aji = phi ptr [ %i.ajg, %bb.ek ], [ %i.ej, %bb.ej ] ; 2 uses
  switch i64 %i.aja, label %bb.em [
    i64 1, label %bb.el
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i356
  ]

bb.el:                                            ; preds = %._crit_edge.i.i.i.i355
  %i.ajj = load i8, ptr %i.ajc, align 1, !tbaa !106
  store i8 %i.ajj, ptr %i.aji, align 1, !tbaa !106
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i356

bb.em:                                            ; preds = %._crit_edge.i.i.i.i355
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aji, ptr align 1 %i.ajc, i64 %i.aja, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i356

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i356: ; preds = %bb.em, %bb.el, %._crit_edge.i.i.i.i355
  %i.ajk = load i64, ptr %i.j, align 8, !tbaa !99, !noalias !693 ; 2 uses
  store i64 %i.ajk, ptr %i.ek, align 8, !tbaa !118, !alias.scope !693
  %i.ajl = load ptr, ptr %75, align 8, !tbaa !175, !alias.scope !693
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.ajk
  store i8 0, ptr %i.ajm, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !693
  %i.ajn = load ptr, ptr %27, align 8, !tbaa !178, !noalias !691 ; 2 uses
  %.not.i.i.i357 = icmp eq ptr %i.ajn, %i.ee
  br i1 %.not.i.i.i357, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit358, label %bb.en

bb.en:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i356
  call void @free(ptr noundef %i.ajn) #26
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit358

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit358: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i356, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26, !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26, !noalias !690
  %i.ajo = load ptr, ptr %75, align 8, !tbaa !175
  %i.ajp = load i64, ptr %i.ek, align 8, !tbaa !118
  %i.ajq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.ajo, i64 noundef %i.ajp) #26 ; 0 uses
  %i.ajr = load ptr, ptr %75, align 8, !tbaa !175 ; 2 uses
  %i.ajs = icmp eq ptr %i.ajr, %i.ej
  br i1 %i.ajs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit358
  %i.ajt = load i64, ptr %i.ej, align 8, !tbaa !106
  %i.aju = add i64 %i.ajt, 1
  call void @_ZdlPvm(ptr noundef %i.ajr, i64 noundef %i.aju) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit358, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359
  %i.ajv = load ptr, ptr %76, align 8, !tbaa !175 ; 2 uses
  %i.ajw = icmp eq ptr %i.ajv, %i.dv
  br i1 %i.ajw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361
  %i.ajx = load i64, ptr %i.dv, align 8, !tbaa !106
  %i.ajy = add i64 %i.ajx, 1
end_hunk_1
begin_hunk_2_@_ZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11Ev:bb.a
  %i.amd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %60, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit391

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit391: ; preds = %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ame = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef null) #26 ; 2 uses
  %.fca.1.extract4 = extractvalue { i64, i8 } %i.ame, 1
  %i.amf = trunc nuw i8 %.fca.1.extract4 to i1
  br i1 %i.amf, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit391
  %i.amg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.amh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %24, i32 noundef 4, ptr nonnull @.str.17, i64 69)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.loopexit

bb.fc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit391
  %.fca.0.extract3 = extractvalue { i64, i8 } %i.ame, 0 ; 2 uses
  %i.ami = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef null) #26 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ami, 1
  %i.amj = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.amj, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.amk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aml, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %23, i32 noundef 4, ptr nonnull @.str.18, i64 68)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %.loopexit

bb.fe:                                            ; preds = %bb.fc
  %.fca.0.extract = extractvalue { i64, i8 } %i.ami, 0 ; 2 uses
  %i.amm = trunc i64 %.fca.0.extract to i32
  %i.amn = zext nneg i32 %.07568381020 to i64     ; 4 uses
  %i.amo = load ptr, ptr %i.cg, align 8, !tbaa !171
  %i.amp = load ptr, ptr %i.cf, align 8, !tbaa !172 ; 2 uses
  %i.amq = ptrtoint ptr %i.amo to i64
  %i.amr = ptrtoint ptr %i.amp to i64
  %i.ams = sub i64 %i.amq, %i.amr
  %i.amt = ashr exact i64 %i.ams, 3
  %i.amu = icmp ugt i64 %i.amt, %i.amn
  br i1 %i.amu, label %bb.ff, label %.thread797

.thread797:                                       ; preds = %bb.fe
  %i.amv = and i64 %.fca.0.extract3, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit511

bb.ff:                                            ; preds = %bb.fe
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %i.amp, i64 %i.amn
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !174 ; 3 uses
  %i.amy = and i64 %.fca.0.extract3, 4294967295   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.amy, ptr %i.f, align 8, !tbaa !99
  %i.amz = icmp eq ptr %i.amx, null
  br i1 %i.amz, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit511, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 144
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !95
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amx, i64 152
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !104
  %i.ane = ptrtoint ptr %i.and to i64
  %i.anf = ptrtoint ptr %i.anb to i64
  %i.ang = sub i64 %i.ane, %i.anf
  %spec.select.i397 = call i64 @llvm.usub.sat.i64(i64 %i.ang, i64 %.07508391019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.anh = lshr i64 %spec.select.i397, %i.ch
  %i.ani = add nuw i64 %i.anh, 1                  ; 2 uses
  store i64 %i.ani, ptr %i.g, align 8, !tbaa !99
  %i.anj = icmp ugt i64 %i.amy, %i.ani
  br i1 %i.anj, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ank = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.anl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %22, i32 noundef 3, ptr nonnull @.str.226, i64 47, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.anm = load i64, ptr %i.g, align 8, !tbaa !99
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.010.in.i398 = phi i64 [ %i.anm, %bb.fh ], [ %i.amy, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit511

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit511: ; preds = %.thread797, %bb.ff, %bb.fi
  %.1.in.i399 = phi i64 [ %.010.in.i398, %bb.fi ], [ %i.amy, %bb.ff ], [ %i.amv, %.thread797 ] ; 2 uses
  %.1.i400 = trunc i64 %.1.in.i399 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26, !noalias !698
  store ptr @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, ptr %51, align 16, !tbaa !106, !noalias !698
  store i32 %.1.i400, ptr %i.ci, align 16, !tbaa !106, !noalias !698
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26, !noalias !699
  store i64 0, ptr %i.cl, align 8, !noalias !699
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ck, align 8, !tbaa !177, !noalias !699
  store ptr %i.cm, ptr %21, align 8, !tbaa !178, !noalias !699
  store i64 500, ptr %i.cj, align 8, !tbaa !179, !noalias !699
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !699
  store ptr @.str.12, ptr %5, align 8, !tbaa !98, !noalias !699
  store i64 22, ptr %.sroa.2.0..sroa_idx.i16.i506, align 8, !tbaa !99, !noalias !699
  store i32 0, ptr %i.cn, align 8, !tbaa !182, !noalias !699
  store ptr %21, ptr %i.co, align 8, !tbaa !184, !noalias !699
  store i64 44, ptr %i.cp, align 8, !tbaa !186, !noalias !699
  store ptr %51, ptr %.sroa.2.0..sroa_idx.i17.i507, align 8, !tbaa !106, !noalias !699
  store ptr null, ptr %i.cq, align 8, !tbaa !102, !noalias !699
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.12, i64 22, ptr noundef nonnull align 8 dereferenceable(56) %5), !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !699
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.ann = load i64, ptr %i.cl, align 8, !tbaa !187, !noalias !701 ; 6 uses
  %i.ano = icmp ult i64 %i.ann, 4611686018427387903
  call void @llvm.assume(i1 %i.ano)
  %i.anp = load ptr, ptr %21, align 8, !tbaa !178, !noalias !701 ; 3 uses
  store ptr %i.cr, ptr %78, align 8, !tbaa !116, !alias.scope !701
  %i.anq = icmp eq ptr %i.anp, null
  %i.anr = icmp ne i64 %i.ann, 0
  %or.cond.i.i.i402 = and i1 %i.anr, %i.anq
  br i1 %or.cond.i.i.i402, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit511
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.223) #28
  unreachable

bb.fk:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26, !noalias !701
  store i64 %i.ann, ptr %i.e, align 8, !tbaa !99, !noalias !701
  %i.ans = icmp samesign ugt i64 %i.ann, 15
  br i1 %i.ans, label %bb.fl, label %._crit_edge.i.i.i.i403

bb.fl:                                            ; preds = %bb.fk
  %i.ant = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ant, ptr %78, align 8, !tbaa !175, !alias.scope !701
  %i.anu = load i64, ptr %i.e, align 8, !tbaa !99, !noalias !701
  store i64 %i.anu, ptr %i.cr, align 8, !tbaa !106, !alias.scope !701
  br label %._crit_edge.i.i.i.i403

._crit_edge.i.i.i.i403:                           ; preds = %bb.fl, %bb.fk
  %i.anv = phi ptr [ %i.ant, %bb.fl ], [ %i.cr, %bb.fk ] ; 2 uses
  switch i64 %i.ann, label %bb.fn [
    i64 1, label %bb.fm
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i404
  ]

bb.fm:                                            ; preds = %._crit_edge.i.i.i.i403
  %i.anw = load i8, ptr %i.anp, align 1, !tbaa !106
  store i8 %i.anw, ptr %i.anv, align 1, !tbaa !106
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i404

bb.fn:                                            ; preds = %._crit_edge.i.i.i.i403
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.anv, ptr align 1 %i.anp, i64 %i.ann, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i404

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i404: ; preds = %bb.fn, %bb.fm, %._crit_edge.i.i.i.i403
  %i.anx = load i64, ptr %i.e, align 8, !tbaa !99, !noalias !701 ; 2 uses
  store i64 %i.anx, ptr %i.cs, align 8, !tbaa !118, !alias.scope !701
  %i.any = load ptr, ptr %78, align 8, !tbaa !175, !alias.scope !701
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 %i.anx
  store i8 0, ptr %i.anz, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !701
  %i.aoa = load ptr, ptr %21, align 8, !tbaa !178, !noalias !699 ; 2 uses
  %.not.i.i.i405 = icmp eq ptr %i.aoa, %i.cm
  br i1 %.not.i.i.i405, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit406, label %bb.fo

bb.fo:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i404
  call void @free(ptr noundef %i.aoa) #26
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit406

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit406: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i404, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26, !noalias !698
  %i.aob = load ptr, ptr %78, align 8, !tbaa !175
  %i.aoc = load i64, ptr %i.cs, align 8, !tbaa !118
  %i.aod = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.aob, i64 noundef %i.aoc) #26 ; 0 uses
  %i.aoe = load ptr, ptr %78, align 8, !tbaa !175 ; 2 uses
  %i.aof = icmp eq ptr %i.aoe, %i.cr
  br i1 %i.aof, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit406
  %i.aog = load i64, ptr %i.cr, align 8, !tbaa !106
  %i.aoh = add i64 %i.aog, 1
  call void @_ZdlPvm(ptr noundef %i.aoe, i64 noundef %i.aoh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  %i.aoi = and i64 %.1.in.i399, 4294967295        ; 2 uses
  %.not = icmp eq i64 %i.aoi, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409
  %i.aoj = zext nneg i8 %.0688411016 to i64
  %i.aok = icmp samesign ult i8 %.0688411016, 3   ; 2 uses
  %i.aol = icmp eq i8 %.0688411016, 2             ; 2 uses
  %.idx.i.i.i.i.i.i.i.i410 = select i1 %i.aol, i64 16, i64 0
  %i.aom = select i1 %i.aol, i64 2, i64 1
  %.not11.i417.not = icmp eq i8 %.0688411016, 3   ; 2 uses
  %i.aon = and i64 %.fca.0.extract, 4294967295
  %i.aoo = add nuw nsw i64 %i.aon, %i.av
  %.idx.i.i.i.i.i.i.i.i410.mux = select i1 %i.aok, i64 %.idx.i.i.i.i.i.i.i.i410, i64 48
  %.idx.i.i.i.i.i.i.i.i410.mux.a = select i1 %i.aok, i64 %i.aom, i64 102
  %87 = icmp samesign ule i64 %.idx.i.i.i.i.i.i.i.i410.mux.a, %i.aoj
  %brmerge1002 = select i1 %.not11.i417.not, i1 true, i1 %87
  %.mux996 = select i1 %.not11.i417.not, i64 32, i64 %.idx.i.i.i.i.i.i.i.i410.mux
  %.0.i.i.i.i13.i.i.ptr.i416 = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.enums2str, i64 %.mux996
  %88 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13.i.i.ptr.i416, i64 8
  br label %bb.fp

bb.fp:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446
  %.0823 = phi i64 [ 0, %.lr.ph ], [ %i.arm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446 ]
  %.5754821 = phi i64 [ %.07508391019, %.lr.ph ], [ %i.aqo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446 ] ; 2 uses
  %i.aop = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  %i.aoq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #26
  br i1 %brmerge1002, label %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i414, label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit418

_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i414: ; preds = %bb.fp
  %i.aor = load ptr, ptr %88, align 8, !tbaa !167
  br label %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit418

_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit418: ; preds = %bb.fp, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i414
  %i.aos = phi ptr [ %i.aor, %_ZNK6frozen3mapIN4LIEF5MachO8DyldInfo11REBASE_TYPEEPKcLm4ESt4lessIS4_EE4findIS4_EEPKSt4pairIKS4_S6_ERKT_.exit.thread12.i414 ], [ @.str.96, %bb.fp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.aot = load ptr, ptr %i.cg, align 8, !tbaa !171, !noalias !702
  %i.aou = load ptr, ptr %i.cf, align 8, !tbaa !172, !noalias !702 ; 2 uses
  %i.aov = ptrtoint ptr %i.aot to i64
  %i.aow = ptrtoint ptr %i.aou to i64
  %i.aox = sub i64 %i.aov, %i.aow
  %i.aoy = ashr exact i64 %i.aox, 3
  %.not.i419 = icmp ugt i64 %i.aoy, %i.amn
  br i1 %.not.i419, label %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i421, label %._crit_edge.i.i7.i420

_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i421: ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit418
  %i.aoz = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %i.amn
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !174, !noalias !702 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 56
  store ptr %i.ct, ptr %80, align 8, !tbaa !116, !alias.scope !702
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !175 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apa, i64 64
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !118 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !702
  store i64 %i.ape, ptr %i.d, align 8, !tbaa !99, !noalias !702
  %i.apf = icmp ugt i64 %i.ape, 15
  br i1 %i.apf, label %bb.fq, label %._crit_edge.i.i.i425

bb.fq:                                            ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i421
  %i.apg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #26 ; 2 uses
  store ptr %i.apg, ptr %80, align 8, !tbaa !175, !alias.scope !702
  %i.aph = load i64, ptr %i.d, align 8, !tbaa !99, !noalias !702
  store i64 %i.aph, ptr %i.ct, align 8, !tbaa !106, !alias.scope !702
  br label %._crit_edge.i.i.i425

._crit_edge.i.i.i425:                             ; preds = %bb.fq, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i421
  %i.api = phi ptr [ %i.apg, %bb.fq ], [ %i.ct, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit.i421 ] ; 2 uses
  switch i64 %i.ape, label %bb.fs [
    i64 1, label %bb.fr
    i64 0, label %.thread.i426
  ]

bb.fr:                                            ; preds = %._crit_edge.i.i.i425
  %i.apj = load i8, ptr %i.apc, align 1, !tbaa !106
  store i8 %i.apj, ptr %i.api, align 1, !tbaa !106
  br label %.thread.i426

bb.fs:                                            ; preds = %._crit_edge.i.i.i425
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.api, ptr align 1 %i.apc, i64 %i.ape, i1 false)
  br label %.thread.i426

.thread.i426:                                     ; preds = %bb.fs, %bb.fr, %._crit_edge.i.i.i425
  %i.apk = load i64, ptr %i.d, align 8, !tbaa !99, !noalias !702 ; 2 uses
  store i64 %i.apk, ptr %i.cu, align 8, !tbaa !118, !alias.scope !702
  %i.apl = load ptr, ptr %80, align 8, !tbaa !175, !alias.scope !702
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 %i.apk
  store i8 0, ptr %i.apm, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !702
  %.pre = load ptr, ptr %80, align 8, !tbaa !175, !noalias !703
  %.pre872 = load i64, ptr %i.cu, align 8, !tbaa !118, !noalias !703
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit517

._crit_edge.i.i7.i420:                            ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo11REBASE_TYPEE.exit418
  store ptr %i.ct, ptr %80, align 8, !tbaa !116, !alias.scope !702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ct, ptr noundef nonnull align 1 dereferenceable(9) @.str.225, i64 9, i1 false)
  store i64 9, ptr %i.cu, align 8, !tbaa !118, !alias.scope !702
  store i8 0, ptr %i.cv, align 1, !tbaa !106, !alias.scope !702
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit517

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit517: ; preds = %.thread.i426, %._crit_edge.i.i7.i420
  %i.apn = phi i64 [ %.pre872, %.thread.i426 ], [ 9, %._crit_edge.i.i7.i420 ]
  %i.apo = phi ptr [ %.pre, %.thread.i426 ], [ %i.ct, %._crit_edge.i.i7.i420 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26, !noalias !703
  store ptr %i.aos, ptr %48, align 16, !tbaa !106, !noalias !703
  store ptr %i.apo, ptr %i.cw, align 16, !tbaa !106, !noalias !703
  store i64 %i.apn, ptr %i.cx, align 8, !tbaa !106, !noalias !703
  store i64 %.5754821, ptr %i.cy, align 16, !tbaa !106, !noalias !703
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26, !noalias !704
  store i64 0, ptr %i.db, align 8, !noalias !704
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.da, align 8, !tbaa !177, !noalias !704
  store ptr %i.dc, ptr %20, align 8, !tbaa !178, !noalias !704
  store i64 500, ptr %i.cz, align 8, !tbaa !179, !noalias !704
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !704
  store ptr @.str.13, ptr %4, align 8, !tbaa !98, !noalias !704
  store i64 22, ptr %.sroa.2.0..sroa_idx.i16.i512, align 8, !tbaa !99, !noalias !704
  store i32 0, ptr %i.dd, align 8, !tbaa !182, !noalias !704
  store ptr %20, ptr %i.de, align 8, !tbaa !184, !noalias !704
  store i64 1244, ptr %i.df, align 8, !tbaa !186, !noalias !704
  store ptr %48, ptr %.sroa.2.0..sroa_idx.i17.i513, align 8, !tbaa !106, !noalias !704
  store ptr null, ptr %i.dg, align 8, !tbaa !102, !noalias !704
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.13, i64 22, ptr noundef nonnull align 8 dereferenceable(56) %4), !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !704
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.app = load i64, ptr %i.db, align 8, !tbaa !187, !noalias !706 ; 6 uses
  %i.apq = icmp ult i64 %i.app, 4611686018427387903
  call void @llvm.assume(i1 %i.apq)
  %i.apr = load ptr, ptr %20, align 8, !tbaa !178, !noalias !706 ; 3 uses
  store ptr %i.dh, ptr %79, align 8, !tbaa !116, !alias.scope !706
  %i.aps = icmp eq ptr %i.apr, null
  %i.apt = icmp ne i64 %i.app, 0
  %or.cond.i.i.i428 = and i1 %i.apt, %i.aps
  br i1 %or.cond.i.i.i428, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit517
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.223) #28
  unreachable

bb.fu:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !706
  store i64 %i.app, ptr %i.c, align 8, !tbaa !99, !noalias !706
  %i.apu = icmp samesign ugt i64 %i.app, 15
  br i1 %i.apu, label %bb.fv, label %._crit_edge.i.i.i.i429

bb.fv:                                            ; preds = %bb.fu
  %i.apv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #26 ; 2 uses
  store ptr %i.apv, ptr %79, align 8, !tbaa !175, !alias.scope !706
  %i.apw = load i64, ptr %i.c, align 8, !tbaa !99, !noalias !706
  store i64 %i.apw, ptr %i.dh, align 8, !tbaa !106, !alias.scope !706
  br label %._crit_edge.i.i.i.i429

._crit_edge.i.i.i.i429:                           ; preds = %bb.fv, %bb.fu
  %i.apx = phi ptr [ %i.apv, %bb.fv ], [ %i.dh, %bb.fu ] ; 2 uses
  switch i64 %i.app, label %bb.fx [
    i64 1, label %bb.fw
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i430
  ]

bb.fw:                                            ; preds = %._crit_edge.i.i.i.i429
  %i.apy = load i8, ptr %i.apr, align 1, !tbaa !106
  store i8 %i.apy, ptr %i.apx, align 1, !tbaa !106
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i430

bb.fx:                                            ; preds = %._crit_edge.i.i.i.i429
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apx, ptr align 1 %i.apr, i64 %i.app, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i430

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i430: ; preds = %bb.fx, %bb.fw, %._crit_edge.i.i.i.i429
  %i.apz = load i64, ptr %i.c, align 8, !tbaa !99, !noalias !706 ; 2 uses
  store i64 %i.apz, ptr %i.di, align 8, !tbaa !118, !alias.scope !706
  %i.aqa = load ptr, ptr %79, align 8, !tbaa !175, !alias.scope !706
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 %i.apz
  store i8 0, ptr %i.aqb, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !706
  %i.aqc = load ptr, ptr %20, align 8, !tbaa !178, !noalias !704 ; 2 uses
  %.not.i.i.i431 = icmp eq ptr %i.aqc, %i.dc
  br i1 %.not.i.i.i431, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit432, label %bb.fy

bb.fy:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i430
  call void @free(ptr noundef %i.aqc) #26
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit432

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit432: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i430, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26, !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26, !noalias !703
  %i.aqd = load ptr, ptr %79, align 8, !tbaa !175
  %i.aqe = load i64, ptr %i.di, align 8, !tbaa !118
  %i.aqf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %i.aqd, i64 noundef %i.aqe) #26 ; 0 uses
  %i.aqg = load ptr, ptr %79, align 8, !tbaa !175 ; 2 uses
  %i.aqh = icmp eq ptr %i.aqg, %i.dh
  br i1 %i.aqh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit432
  %i.aqi = load i64, ptr %i.dh, align 8, !tbaa !106
  %i.aqj = add i64 %i.aqi, 1
  call void @_ZdlPvm(ptr noundef %i.aqg, i64 noundef %i.aqj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433
  %i.aqk = load ptr, ptr %80, align 8, !tbaa !175 ; 2 uses
  %i.aql = icmp eq ptr %i.aqk, %i.ct
  br i1 %i.aql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.aqm = load i64, ptr %i.ct, align 8, !tbaa !106
  %i.aqn = add i64 %i.aqm, 1
  call void @_ZdlPvm(ptr noundef %i.aqk, i64 noundef %i.aqn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #26
  %i.aqo = add i64 %i.aoo, %.5754821              ; 3 uses
  %i.aqp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  %i.aqq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @_ZZNK4LIEF5MachO8DyldInfo20show_rebases_opcodesB5cxx11EvE3tab, i64 noundef 4) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26, !noalias !707
  store i32 %i.amm, ptr %44, align 16, !tbaa !106, !noalias !707
  store i64 %i.av, ptr %i.dj, align 16, !tbaa !106, !noalias !707
  store i64 %i.aqo, ptr %i.dk, align 16, !tbaa !106, !noalias !707
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !708
  store i64 0, ptr %i.dn, align 8, !noalias !708
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.dm, align 8, !tbaa !177, !noalias !708
  store ptr %i.do, ptr %19, align 8, !tbaa !178, !noalias !708
  store i64 500, ptr %i.dl, align 8, !tbaa !179, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !708
  store ptr @.str.19, ptr %3, align 8, !tbaa !98, !noalias !708
  store i64 41, ptr %.sroa.2.0..sroa_idx.i16.i518, align 8, !tbaa !99, !noalias !708
end_hunk_2
