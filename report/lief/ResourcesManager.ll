Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ResourcesManager?download=true
inline.NumInlined: 5055
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZNK4LIEF2PE16ResourcesManager10print_treeERKNS0_12ResourceNodeERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEjjPS3_NS5_12basic_stringIcS8_S9_EEb:bb.a
  %i.qy = icmp ult i64 %i.qx, 4611686018427387903
  call void @llvm.assume(i1 %i.qy)
  %i.qz = load ptr, ptr %18, align 8, !tbaa !208, !noalias !929 ; 3 uses
  store ptr %i.nh, ptr %50, align 8, !tbaa !90, !alias.scope !929
  %i.ra = icmp eq ptr %i.qz, null
  %i.rb = icmp ne i64 %i.qx, 0
  %or.cond.i.i.i142 = and i1 %i.rb, %i.ra
  br i1 %or.cond.i.i.i142, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.176) #26
  unreachable

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !929
  store i64 %i.qx, ptr %i.a, align 8, !tbaa !103, !noalias !929
  %i.rc = icmp samesign ugt i64 %i.qx, 15
  br i1 %i.rc, label %bb.cb, label %._crit_edge.i.i.i.i143

bb.cb:                                            ; preds = %bb.ca
  %i.rd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.rd, ptr %50, align 8, !tbaa !104, !alias.scope !929
  %i.re = load i64, ptr %i.a, align 8, !tbaa !103, !noalias !929
  store i64 %i.re, ptr %i.nh, align 8, !tbaa !93, !alias.scope !929
  br label %._crit_edge.i.i.i.i143

._crit_edge.i.i.i.i143:                           ; preds = %bb.cb, %bb.ca
  %i.rf = phi ptr [ %i.rd, %bb.cb ], [ %i.nh, %bb.ca ] ; 2 uses
  switch i64 %i.qx, label %bb.cd [
    i64 1, label %bb.cc
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144
  ]

bb.cc:                                            ; preds = %._crit_edge.i.i.i.i143
  %i.rg = load i8, ptr %i.qz, align 1, !tbaa !93
  store i8 %i.rg, ptr %i.rf, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144

bb.cd:                                            ; preds = %._crit_edge.i.i.i.i143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rf, ptr align 1 %i.qz, i64 %i.qx, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144: ; preds = %bb.cd, %bb.cc, %._crit_edge.i.i.i.i143
  %i.rh = load i64, ptr %i.a, align 8, !tbaa !103, !noalias !929 ; 2 uses
  store i64 %i.rh, ptr %i.ni, align 8, !tbaa !92, !alias.scope !929
  %i.ri = load ptr, ptr %50, align 8, !tbaa !104, !alias.scope !929
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rh
  store i8 0, ptr %i.rj, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !929
  %i.rk = load ptr, ptr %18, align 8, !tbaa !208, !noalias !927 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.rk, %i.nc
  br i1 %.not.i.i.i145, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146, label %bb.ce

bb.ce:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144
  call void @free(ptr noundef %i.rk) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25, !noalias !926
  %i.rl = load i64, ptr %i.ni, align 8, !tbaa !92 ; 2 uses
  %i.rm = load i64, ptr %i.mo, align 8, !tbaa !92
  %i.rn = sub i64 4611686018427387903, %i.rm
  %i.ro = icmp ult i64 %i.rn, %i.rl
  br i1 %i.ro, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit147

bb.cf:                                            ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.180) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit147: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146
  %i.rp = load ptr, ptr %50, align 8, !tbaa !104
  %i.rq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef %i.rp, i64 noundef %i.rl) #25 ; 0 uses
  %i.rr = load ptr, ptr %50, align 8, !tbaa !104  ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.nh
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit147
  %i.rt = load i64, ptr %i.nh, align 8, !tbaa !93
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  %.not56 = icmp eq i64 %.047285, %i.nj
  br i1 %.not56, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.rv = load i64, ptr %i.mo, align 8, !tbaa !92 ; 4 uses
  %i.rw = add i64 %i.rv, 1                        ; 3 uses
  %i.rx = load ptr, ptr %48, align 8, !tbaa !104  ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.mn
  br i1 %i.ry, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.cg
  %i.rz = icmp ult i64 %i.rv, 16
  call void @llvm.assume(i1 %i.rz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cg
  %i.sa = load i64, ptr %i.mn, align 8, !tbaa !93
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.sb = phi i64 [ %i.sa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.sc = icmp ugt i64 %i.rw, %i.sb
  br i1 %i.sc, label %bb.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef %i.rv, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i = load ptr, ptr %48, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.ch
  %i.sd = phi ptr [ %.pre.i.i, %bb.ch ], [ %i.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.rv
  store i8 58, ptr %i.se, align 1, !tbaa !93
  store i64 %i.rw, ptr %i.mo, align 8, !tbaa !92
  %i.sf = load ptr, ptr %48, align 8, !tbaa !104
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.rw
  store i8 0, ptr %i.sg, align 1, !tbaa !93
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.sh = load i8, ptr %i.qu, align 1, !tbaa !93  ; 3 uses
  %i.si = add i8 %i.sh, -32
  %i.sj = icmp ult i8 %i.si, 95
  %i.sk = load i64, ptr %i.mq, align 8, !tbaa !92 ; 5 uses
  %i.sl = add i64 %i.sk, 1                        ; 4 uses
  %i.sm = load ptr, ptr %49, align 8, !tbaa !104  ; 3 uses
  %i.sn = icmp eq ptr %i.sm, %i.mp                ; 2 uses
  br i1 %i.sj, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.sn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i154: ; preds = %bb.cj
  %i.so = icmp ult i64 %i.sk, 16
  call void @llvm.assume(i1 %i.so)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151: ; preds = %bb.cj
  %i.sp = load i64, ptr %i.mp, align 8, !tbaa !93
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i154
  %i.sq = phi i64 [ %i.sp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i154 ]
  %i.sr = icmp ugt i64 %i.sl, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155

bb.ck:                                            ; preds = %bb.ci
  br i1 %i.sn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i159: ; preds = %bb.ck
  %i.ss = icmp ult i64 %i.sk, 16
  call void @llvm.assume(i1 %i.ss)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156: ; preds = %bb.ck
  %i.st = load i64, ptr %i.mp, align 8, !tbaa !93
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i159
  %i.su = phi i64 [ %i.st, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i159 ]
  %i.sv = icmp ugt i64 %i.sl, %i.su
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152
  %.sink.ph = phi i8 [ %i.sh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152 ], [ 46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %49, i64 noundef %i.sk, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i158 = load ptr, ptr %49, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152
  %.sink368 = phi ptr [ %i.sm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152 ], [ %i.sm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157 ], [ %.pre.i.i158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split ]
  %.sink = phi i8 [ %i.sh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152 ], [ 46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157 ], [ %.sink.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.sink368, i64 %i.sk
  store i8 %.sink, ptr %i.sw, align 1, !tbaa !93
  store i64 %i.sl, ptr %i.mq, align 8, !tbaa !92
  %i.sx = load ptr, ptr %49, align 8, !tbaa !104
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sl
  store i8 0, ptr %i.sy, align 1, !tbaa !93
  %i.sz = add nuw nsw i64 %.047285, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.sz, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.by, !llvm.loop !878

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !203
  %i.td = load ptr, ptr %i.ta, align 8, !tbaa !204 ; 2 uses
  %.not290 = icmp eq ptr %i.tc, %i.td
  br i1 %.not290, label %._crit_edge288, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph: ; preds = %bb.cl
  %i.te = add i32 %3, 1                           ; 3 uses
  %i.tf = select i1 %7, ptr @.str.33, ptr @.str.31 ; 3 uses
  %i.tg = select i1 %7, i64 4, i64 5              ; 9 uses
  %i.th = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 12 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 11 uses
  %i.tj = load ptr, ptr %i.td, align 8, !tbaa !74
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.tk = load ptr, ptr %6, align 8, !tbaa !104, !noalias !930
  %i.tl = load i64, ptr %i.ky, align 8, !tbaa !92, !noalias !930 ; 3 uses
  store ptr %i.th, ptr %53, align 8, !tbaa !90, !alias.scope !931
  store i64 0, ptr %i.ti, align 8, !tbaa !92, !alias.scope !931
  store i8 0, ptr %i.th, align 8, !tbaa !93, !alias.scope !931
  %i.tm = add i64 %i.tl, %i.tg
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.tm) #25
  %i.tn = load i64, ptr %i.ti, align 8, !tbaa !92, !alias.scope !931
  %i.to = sub i64 4611686018427387903, %i.tn
  %i.tp = icmp ult i64 %i.to, %i.tl
  br i1 %i.tp, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph
  %i.tq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %i.tk, i64 noundef %i.tl) #25 ; 0 uses
  %i.tr = load i64, ptr %i.ti, align 8, !tbaa !92, !alias.scope !931
  %i.ts = sub i64 4611686018427387903, %i.tr
  %i.tt = icmp ult i64 %i.ts, %i.tg
  br i1 %i.tt, label %.loopexit301, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel
  %i.tu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull %i.tf, i64 noundef %i.tg) #25 ; 0 uses
  %i.tv = load ptr, ptr %i.tb, align 8, !tbaa !203
  %i.tw = load ptr, ptr %i.ta, align 8, !tbaa !204
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = sub i64 %i.tx, %i.ty
  %i.ua = icmp eq i64 %i.tz, 8
  call void @_ZNK4LIEF2PE16ResourcesManager10print_treeERKNS0_12ResourceNodeERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEjjPS3_NS5_12basic_stringIcS8_S9_EEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.tj, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.te, i32 noundef %4, ptr nonnull poison, ptr noundef nonnull align 8 %53, i1 noundef zeroext %i.ua)
  %i.ub = load ptr, ptr %53, align 8, !tbaa !104  ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.th
  br i1 %i.uc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel
  %i.ud = load i64, ptr %i.th, align 8, !tbaa !93
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.ue) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169.peel: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel
  %54 = load i64, ptr %i.ti, align 8, !tbaa !92
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel
  %i.uf = load ptr, ptr %i.tb, align 8, !tbaa !203
  %i.ug = load ptr, ptr %i.ta, align 8, !tbaa !204 ; 2 uses
  %i.uh = ptrtoint ptr %i.uf to i64
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = icmp ugt i64 %i.uj, 8
  br i1 %i.uk, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.peel.next, label %._crit_edge288

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !74
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.un = load ptr, ptr %6, align 8, !tbaa !104, !noalias !932
  %i.uo = load i64, ptr %i.ky, align 8, !tbaa !92, !noalias !932 ; 3 uses
  store ptr %i.th, ptr %53, align 8, !tbaa !90, !alias.scope !933
  store i64 0, ptr %i.ti, align 8, !tbaa !92, !alias.scope !933
  store i8 0, ptr %i.th, align 8, !tbaa !93, !alias.scope !933
  %i.up = add i64 %i.uo, %i.tg
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.up) #25
  %i.uq = load i64, ptr %i.ti, align 8, !tbaa !92, !alias.scope !933
  %i.ur = sub i64 4611686018427387903, %i.uq
  %i.us = icmp ult i64 %i.ur, %i.uo
  br i1 %i.us, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel295: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.peel.next
  %i.ut = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %i.un, i64 noundef %i.uo) #25 ; 0 uses
  %i.uu = load i64, ptr %i.ti, align 8, !tbaa !92, !alias.scope !933
  %i.uv = sub i64 4611686018427387903, %i.uu
  %i.uw = icmp ult i64 %i.uv, %i.tg
  br i1 %i.uw, label %.loopexit301, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel296

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel295
  %i.ux = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull %i.tf, i64 noundef %i.tg) #25 ; 0 uses
  %i.uy = load ptr, ptr %i.tb, align 8, !tbaa !203
  %i.uz = load ptr, ptr %i.ta, align 8, !tbaa !204
  %i.va = ptrtoint ptr %i.uy to i64
  %i.vb = ptrtoint ptr %i.uz to i64
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = icmp eq i64 %i.vc, 16
  call void @_ZNK4LIEF2PE16ResourcesManager10print_treeERKNS0_12ResourceNodeERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEjjPS3_NS5_12basic_stringIcS8_S9_EEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.um, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.te, i32 noundef %4, ptr nonnull poison, ptr noundef nonnull align 8 %53, i1 noundef zeroext %i.vd)
  %i.ve = load ptr, ptr %53, align 8, !tbaa !104  ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.th
  br i1 %i.vf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169.peel298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel297: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel296
  %i.vg = load i64, ptr %i.th, align 8, !tbaa !93
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169.peel298: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel296
  %56 = load i64, ptr %i.ti, align 8, !tbaa !92
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169.peel298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel297
  %i.vi = load ptr, ptr %i.tb, align 8, !tbaa !203
  %i.vj = load ptr, ptr %i.ta, align 8, !tbaa !204 ; 2 uses
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = icmp ugt i64 %i.vm, 16
  br i1 %i.vn, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit, label %._crit_edge288

._crit_edge288:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299, %bb.cl
  %i.vo = load ptr, ptr %39, align 8, !tbaa !104  ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.aj
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %._crit_edge288
  %i.vq = load i64, ptr %i.aj, align 8, !tbaa !93
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %._crit_edge288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  %i.vs = load ptr, ptr %38, align 8, !tbaa !104  ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.q
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.vu = load i64, ptr %i.q, align 8, !tbaa !93
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.cm

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.vw = phi ptr [ %i.wy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.vj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299 ]
  %.0287 = phi i64 [ %i.ww, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299 ] ; 3 uses
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.vw, i64 %.0287
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !74
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.vz = load ptr, ptr %6, align 8, !tbaa !104, !noalias !934
  %i.wa = load i64, ptr %i.ky, align 8, !tbaa !92, !noalias !934 ; 3 uses
  store ptr %i.th, ptr %53, align 8, !tbaa !90, !alias.scope !935
  store i64 0, ptr %i.ti, align 8, !tbaa !92, !alias.scope !935
  store i8 0, ptr %i.th, align 8, !tbaa !93, !alias.scope !935
  %i.wb = add i64 %i.wa, %i.tg
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.wb) #25
  %i.wc = load i64, ptr %i.ti, align 8, !tbaa !92, !alias.scope !935
  %i.wd = sub i64 4611686018427387903, %i.wc
  %i.we = icmp ult i64 %i.wd, %i.wa
  br i1 %i.we, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

.loopexit:                                        ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.peel.next, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.180) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit
  %i.wf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %i.vz, i64 noundef %i.wa) #25 ; 0 uses
  %i.wg = load i64, ptr %i.ti, align 8, !tbaa !92, !alias.scope !935
  %i.wh = sub i64 4611686018427387903, %i.wg
  %i.wi = icmp ult i64 %i.wh, %i.tg
  br i1 %i.wi, label %.loopexit301, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

.loopexit301:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.180) #26
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.wj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull %i.tf, i64 noundef %i.tg) #25 ; 0 uses
  %i.wk = load ptr, ptr %i.tb, align 8, !tbaa !203
  %i.wl = load ptr, ptr %i.ta, align 8, !tbaa !204
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = sub i64 %i.wm, %i.wn
  %i.wp = ashr exact i64 %i.wo, 3
  %i.wq = add nsw i64 %i.wp, -1
  %i.wr = icmp eq i64 %.0287, %i.wq
  call void @_ZNK4LIEF2PE16ResourcesManager10print_treeERKNS0_12ResourceNodeERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEjjPS3_NS5_12basic_stringIcS8_S9_EEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.vy, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.te, i32 noundef %4, ptr nonnull poison, ptr noundef nonnull align 8 %53, i1 noundef zeroext %i.wr)
  %i.ws = load ptr, ptr %53, align 8, !tbaa !104  ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.th
  br i1 %i.wt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.wu = load i64, ptr %i.th, align 8, !tbaa !93
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.wv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  %i.ww = add nuw i64 %.0287, 1                   ; 2 uses
  %i.wx = load ptr, ptr %i.tb, align 8, !tbaa !203
  %i.wy = load ptr, ptr %i.ta, align 8, !tbaa !204 ; 2 uses
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %i.xc = ashr exact i64 %i.xb, 3
  %i.xd = icmp ult i64 %i.ww, %i.xc
  br i1 %i.xd, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit, label %._crit_edge288, !llvm.loop !887

bb.cm:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF2PE16ResourcesManager6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(40) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_16ResourcesManagerE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 18 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer.710", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 18 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer.710", align 8 ; 22 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer.710", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer.710", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.fmt::v12::basic_memory_buffer.710", align 8 ; 10 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"struct.fmt::v12::detail::format_arg_store.1408", align 16 ; 6 uses
  %13 = alloca %"struct.fmt::v12::detail::format_arg_store.1408", align 16 ; 14 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store.1408", align 16 ; 6 uses
  %15 = alloca %"struct.fmt::v12::detail::format_arg_store.1398", align 16 ; 5 uses
  %16 = alloca %"struct.fmt::v12::detail::format_arg_store.1404", align 16 ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::vector.53", align 8   ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::vector.88", align 8   ; 8 uses
  %23 = alloca %"class.LIEF::ref_iterator.150", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.LIEF::ref_iterator.230", align 8 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %29 = alloca %"class.std::vector.233", align 8  ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @_ZNK4LIEF2PE16ResourcesManager5printB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3)
  %i.h = load ptr, ptr %17, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.h, i64 noundef %i.j) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 10, ptr %i.g, align 1, !tbaa !93
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !981
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.g, i64 noundef 1) #25 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 10) #25 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.t = load ptr, ptr %17, align 8, !tbaa !104   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !93
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @_ZNK4LIEF2PE16ResourcesManager9get_typesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.y = load ptr, ptr %18, align 8, !tbaa !217
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 8
end_hunk_0
begin_hunk_1_@_ZN4LIEF2PElsERSoRKNS0_16ResourcesManagerE:bb.a
  %or.cond.i.i.i32 = and i1 %i.ca, %i.bz
  br i1 %or.cond.i.i.i32, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.176) #26
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !989
  store i64 %i.bv, ptr %i.e, align 8, !tbaa !103, !noalias !989
  %i.cb = icmp samesign ugt i64 %i.bv, 15
  br i1 %i.cb, label %bb.o, label %._crit_edge.i.i.i.i33

bb.o:                                             ; preds = %bb.n
  %i.cc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.cc, ptr %21, align 8, !tbaa !104, !alias.scope !989
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !103, !noalias !989
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !93, !alias.scope !989
  br label %._crit_edge.i.i.i.i33

._crit_edge.i.i.i.i33:                            ; preds = %bb.o, %bb.n
  %i.ce = phi ptr [ %i.cc, %bb.o ], [ %i.by, %bb.n ] ; 2 uses
  switch i64 %i.bv, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i33
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !93
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34

bb.q:                                             ; preds = %._crit_edge.i.i.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.bx, i64 %i.bv, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34: ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i33
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !103, !noalias !989 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !92, !alias.scope !989
  %i.ci = load ptr, ptr %21, align 8, !tbaa !104, !alias.scope !989
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !989
  %i.ck = load ptr, ptr %10, align 8, !tbaa !208, !noalias !987 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ck, %i.bq
  br i1 %.not.i.i.i35, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36, label %bb.r

bb.r:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34
  call void @free(ptr noundef %i.ck) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !986
  %i.cl = load ptr, ptr %21, align 8, !tbaa !104
  %i.cm = load i64, ptr %i.ch, align 8, !tbaa !92
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cl, i64 noundef %i.cm) #25 ; 0 uses
  %i.co = load ptr, ptr %21, align 8, !tbaa !104  ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.by
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36
  %i.cq = load i64, ptr %i.by, align 8, !tbaa !93
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.k
  %i.cs = load ptr, ptr %20, align 8, !tbaa !104  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.s
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !93
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @_ZNK4LIEF2PE16ResourcesManager7versionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.88") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.cx = load ptr, ptr %22, align 8, !tbaa !990  ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !990 ; 2 uses
  %.not181 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not181, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46
  %.pre = load ptr, ptr %22, align 8, !tbaa !270  ; 3 uses
  %.pre212 = load ptr, ptr %i.cy, align 8, !tbaa !129 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre212
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.da = load ptr, ptr %.05.i.i.i, align 8, !tbaa !113
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %.05.i.i.i) #25, !inline_history !948
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 264 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.dd, %.pre212
  br i1 %.not.i.i.i43, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !949

_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %22, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i

_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i, %._crit_edge
  %i.de = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !130
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #28
  br label %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @_ZNK4LIEF2PE16ResourcesManager5iconsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.150") align 8 %23, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.dk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !184
  %i.dm = load ptr, ptr %23, align 8, !tbaa !183  ; 3 uses
  %.not192 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not192, label %._crit_edge184, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph: ; preds = %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i16.i95 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.2.0..sroa_idx.i17.i96 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46
  %.sroa.0157.0182 = phi ptr [ %i.em, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 2 uses
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_15ResourceVersionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.0157.0182) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !93
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !113
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !981
  %.not.i44 = icmp eq i64 %i.ej, 0
  br i1 %.not.i44, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %i.d, i64 noundef 1) #25 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46

bb.v:                                             ; preds = %.lr.ph
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, i8 noundef signext 10) #25 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0157.0182, i64 264 ; 2 uses
  %.not = icmp eq ptr %i.em, %i.cz
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge184:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @_ZNK4LIEF2PE16ResourcesManager7dialogsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.230") align 8 %26, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.en = load ptr, ptr %26, align 8, !tbaa !991, !nonnull !126, !align !271 ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !228
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !227
  %.not193 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not193, label %._crit_edge186, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph: ; preds = %._crit_edge184
  %i.er = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  %.sroa.2.0..sroa_idx.i16.i97 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i17.i98 = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 15 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %.promoted = load ptr, ptr %i.er, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.fg = load ptr, ptr %i.en, align 8, !tbaa !231
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !230
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.fh)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !992
  store i64 0, ptr %13, align 16, !tbaa !93, !noalias !992
  %i.fi = load ptr, ptr %28, align 8, !tbaa !104, !noalias !992
  %i.fj = load i64, ptr %i.et, align 8, !tbaa !92, !noalias !992
  store ptr %i.fi, ptr %i.es, align 16, !tbaa !93, !noalias !992
  store i64 %i.fj, ptr %i.eu, align 8, !tbaa !93, !noalias !992
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !993
  store i64 0, ptr %i.ex, align 8, !noalias !993
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ew, align 8, !tbaa !207, !noalias !993
  store ptr %i.ey, ptr %8, align 8, !tbaa !208, !noalias !993
  store i64 500, ptr %i.ev, align 8, !tbaa !209, !noalias !993
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !993
  store ptr @.str.50, ptr %3, align 8, !tbaa !177, !noalias !993
  store i64 19, ptr %.sroa.2.0..sroa_idx.i16.i97, align 8, !tbaa !103, !noalias !993
  store i32 0, ptr %i.ez, align 8, !tbaa !212, !noalias !993
  store ptr %8, ptr %i.fa, align 8, !tbaa !214, !noalias !993
  store i64 212, ptr %i.fb, align 8, !tbaa !216, !noalias !993
  store ptr %13, ptr %.sroa.2.0..sroa_idx.i17.i98, align 8, !tbaa !93, !noalias !993
  store ptr null, ptr %i.fc, align 8, !tbaa !217, !noalias !993
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.50, i64 19, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !993
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.fk = load i64, ptr %i.ex, align 8, !tbaa !218, !noalias !995 ; 6 uses
  %i.fl = icmp ult i64 %i.fk, 4611686018427387903
  call void @llvm.assume(i1 %i.fl)
  %i.fm = load ptr, ptr %8, align 8, !tbaa !208, !noalias !995 ; 3 uses
  store ptr %i.fd, ptr %27, align 8, !tbaa !90, !alias.scope !995
  %i.fn = icmp eq ptr %i.fm, null
  %i.fo = icmp ne i64 %i.fk, 0
  %or.cond.i.i.i64.peel = and i1 %i.fo, %i.fn
  br i1 %or.cond.i.i.i64.peel, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !995
  store i64 %i.fk, ptr %i.b, align 8, !tbaa !103, !noalias !995
  %i.fp = icmp samesign ugt i64 %i.fk, 15
  br i1 %i.fp, label %bb.x, label %._crit_edge.i.i.i.i65.peel

bb.x:                                             ; preds = %bb.w
  %i.fq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.fq, ptr %27, align 8, !tbaa !104, !alias.scope !995
  %i.fr = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !995
  store i64 %i.fr, ptr %i.fd, align 8, !tbaa !93, !alias.scope !995
  br label %._crit_edge.i.i.i.i65.peel

._crit_edge.i.i.i.i65.peel:                       ; preds = %bb.x, %bb.w
  %i.fs = phi ptr [ %i.fq, %bb.x ], [ %i.fd, %bb.w ] ; 2 uses
  switch i64 %i.fk, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i65.peel
  %i.ft = load i8, ptr %i.fm, align 1, !tbaa !93
  store i8 %i.ft, ptr %i.fs, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel

bb.z:                                             ; preds = %._crit_edge.i.i.i.i65.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr align 1 %i.fm, i64 %i.fk, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel: ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i65.peel
  %i.fu = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !995 ; 2 uses
  store i64 %i.fu, ptr %i.fe, align 8, !tbaa !92, !alias.scope !995
  %i.fv = load ptr, ptr %27, align 8, !tbaa !104, !alias.scope !995
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fu
  store i8 0, ptr %i.fw, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !995
  %i.fx = load ptr, ptr %8, align 8, !tbaa !208, !noalias !993 ; 2 uses
  %.not.i.i.i67.peel = icmp eq ptr %i.fx, %i.ey
  br i1 %.not.i.i.i67.peel, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel, label %bb.aa

bb.aa:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  call void @free(ptr noundef %i.fx) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel: ; preds = %bb.aa, %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !992
  %i.fy = load ptr, ptr %27, align 8, !tbaa !104
  %i.fz = load i64, ptr %i.fe, align 8, !tbaa !92
  %i.ga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.fy, i64 noundef %i.fz) #25 ; 0 uses
  %i.gb = load ptr, ptr %27, align 8, !tbaa !104  ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fd
  br i1 %i.gc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel
  %i.gd = load i64, ptr %i.fd, align 8, !tbaa !93
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel
  %32 = load i64, ptr %i.fe, align 8, !tbaa !92
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel
  %i.gf = load ptr, ptr %28, align 8, !tbaa !104  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ff
  br i1 %i.gg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel
  %i.gh = load i64, ptr %i.ff, align 8, !tbaa !93
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel
  %34 = load i64, ptr %i.et, align 8, !tbaa !92
  %35 = icmp ult i64 %34, 16
  call void @llvm.assume(i1 %35)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.gj = load ptr, ptr %i.eo, align 8, !tbaa !228
  %i.gk = load ptr, ptr %i.en, align 8, !tbaa !227
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp ugt i64 %i.gn, 8
  br i1 %i.go, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next, label %._crit_edge186

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.gp = load ptr, ptr %i.en, align 8, !tbaa !231 ; 3 uses
  %i.gq = ptrtoint ptr %.promoted to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !230
  %i.gv = getelementptr inbounds i8, ptr %i.gp, i64 %i.gs
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.gu)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !992
  store i64 1, ptr %13, align 16, !tbaa !93, !noalias !992
  %i.gw = load ptr, ptr %28, align 8, !tbaa !104, !noalias !992
  %i.gx = load i64, ptr %i.et, align 8, !tbaa !92, !noalias !992
  store ptr %i.gw, ptr %i.es, align 16, !tbaa !93, !noalias !992
  store i64 %i.gx, ptr %i.eu, align 8, !tbaa !93, !noalias !992
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !996
  store i64 0, ptr %i.ex, align 8, !noalias !996
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ew, align 8, !tbaa !207, !noalias !996
  store ptr %i.ey, ptr %8, align 8, !tbaa !208, !noalias !996
  store i64 500, ptr %i.ev, align 8, !tbaa !209, !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !996
  store ptr @.str.50, ptr %3, align 8, !tbaa !177, !noalias !996
  store i64 19, ptr %.sroa.2.0..sroa_idx.i16.i97, align 8, !tbaa !103, !noalias !996
  store i32 0, ptr %i.ez, align 8, !tbaa !212, !noalias !996
  store ptr %8, ptr %i.fa, align 8, !tbaa !214, !noalias !996
  store i64 212, ptr %i.fb, align 8, !tbaa !216, !noalias !996
  store ptr %13, ptr %.sroa.2.0..sroa_idx.i17.i98, align 8, !tbaa !93, !noalias !996
  store ptr null, ptr %i.fc, align 8, !tbaa !217, !noalias !996
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.50, i64 19, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !996
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.gy = load i64, ptr %i.ex, align 8, !tbaa !218, !noalias !998 ; 6 uses
  %i.gz = icmp ult i64 %i.gy, 4611686018427387903
  call void @llvm.assume(i1 %i.gz)
  %i.ha = load ptr, ptr %8, align 8, !tbaa !208, !noalias !998 ; 3 uses
  store ptr %i.fd, ptr %27, align 8, !tbaa !90, !alias.scope !998
  %i.hb = icmp eq ptr %i.ha, null
  %i.hc = icmp ne i64 %i.gy, 0
  %or.cond.i.i.i64.peel200 = and i1 %i.hc, %i.hb
  br i1 %or.cond.i.i.i64.peel200, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !998
  store i64 %i.gy, ptr %i.b, align 8, !tbaa !103, !noalias !998
  %i.hd = icmp samesign ugt i64 %i.gy, 15
  br i1 %i.hd, label %bb.ac, label %._crit_edge.i.i.i.i65.peel201

bb.ac:                                            ; preds = %bb.ab
  %i.he = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.he, ptr %27, align 8, !tbaa !104, !alias.scope !998
  %i.hf = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !998
  store i64 %i.hf, ptr %i.fd, align 8, !tbaa !93, !alias.scope !998
  br label %._crit_edge.i.i.i.i65.peel201

._crit_edge.i.i.i.i65.peel201:                    ; preds = %bb.ac, %bb.ab
  %i.hg = phi ptr [ %i.he, %bb.ac ], [ %i.fd, %bb.ab ] ; 2 uses
  switch i64 %i.gy, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i65.peel201
  %i.hh = load i8, ptr %i.ha, align 1, !tbaa !93
  store i8 %i.hh, ptr %i.hg, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i65.peel201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr align 1 %i.ha, i64 %i.gy, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202: ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i65.peel201
  %i.hi = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !998 ; 2 uses
  store i64 %i.hi, ptr %i.fe, align 8, !tbaa !92, !alias.scope !998
  %i.hj = load ptr, ptr %27, align 8, !tbaa !104, !alias.scope !998
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  store i8 0, ptr %i.hk, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !998
  %i.hl = load ptr, ptr %8, align 8, !tbaa !208, !noalias !996 ; 2 uses
  %.not.i.i.i67.peel203 = icmp eq ptr %i.hl, %i.ey
  br i1 %.not.i.i.i67.peel203, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204, label %bb.af

bb.af:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  call void @free(ptr noundef %i.hl) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204: ; preds = %bb.af, %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !992
  %i.hm = load ptr, ptr %27, align 8, !tbaa !104
  %i.hn = load i64, ptr %i.fe, align 8, !tbaa !92
  %i.ho = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hm, i64 noundef %i.hn) #25 ; 0 uses
  %i.hp = load ptr, ptr %27, align 8, !tbaa !104  ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.fd
  br i1 %i.hq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204
  %i.hr = load i64, ptr %i.fd, align 8, !tbaa !93
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel206: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204
  %36 = load i64, ptr %i.fe, align 8, !tbaa !92
  %37 = icmp ult i64 %36, 16
  call void @llvm.assume(i1 %37)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205
  %i.ht = load ptr, ptr %28, align 8, !tbaa !104  ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ff
  br i1 %i.hu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73.peel209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207
  %i.hv = load i64, ptr %i.ff, align 8, !tbaa !93
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73.peel209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207
  %38 = load i64, ptr %i.et, align 8, !tbaa !92
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73.peel209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.hx = load ptr, ptr %i.eo, align 8, !tbaa !228
  %i.hy = load ptr, ptr %i.en, align 8, !tbaa !227
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = icmp ugt i64 %i.ib, 16
  br i1 %i.ic, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %._crit_edge186

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.id = phi i64 [ %i.dn, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  %i.ie = phi ptr [ %i.dm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 2 uses
  %storemerge183 = phi i64 [ 0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %.sroa.02.0.copyload.i = load ptr, ptr %i.do, align 8, !tbaa !179
  %i.if = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.ig = sub i64 %i.if, %i.id
  %i.ih = getelementptr inbounds [56 x i8], ptr %i.ie, i64 %storemerge183
  %i.ii = getelementptr inbounds i8, ptr %i.ie, i64 %i.ig
  store ptr %i.ii, ptr %i.do, align 8, !tbaa !999
  call void @_ZN4LIEF9to_stringINS_2PE12ResourceIconEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(56) %i.ih)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !1000
  store i64 %storemerge183, ptr %12, align 16, !tbaa !93, !noalias !1000
  %i.ij = load ptr, ptr %25, align 8, !tbaa !104, !noalias !1000
  %i.ik = load i64, ptr %i.dq, align 8, !tbaa !92, !noalias !1000
  store ptr %i.ij, ptr %i.dp, align 16, !tbaa !93, !noalias !1000
  store i64 %i.ik, ptr %i.dr, align 8, !tbaa !93, !noalias !1000
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !1001
  store i64 0, ptr %i.du, align 8, !noalias !1001
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.dt, align 8, !tbaa !207, !noalias !1001
  store ptr %i.dv, ptr %9, align 8, !tbaa !208, !noalias !1001
  store i64 500, ptr %i.ds, align 8, !tbaa !209, !noalias !1001
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1001
  store ptr @.str.49, ptr %4, align 8, !tbaa !177, !noalias !1001
  store i64 17, ptr %.sroa.2.0..sroa_idx.i16.i95, align 8, !tbaa !103, !noalias !1001
  store i32 0, ptr %i.dw, align 8, !tbaa !212, !noalias !1001
  store ptr %9, ptr %i.dx, align 8, !tbaa !214, !noalias !1001
  store i64 212, ptr %i.dy, align 8, !tbaa !216, !noalias !1001
  store ptr %12, ptr %.sroa.2.0..sroa_idx.i17.i96, align 8, !tbaa !93, !noalias !1001
  store ptr null, ptr %i.dz, align 8, !tbaa !217, !noalias !1001
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.49, i64 17, ptr noundef nonnull align 8 dereferenceable(56) %4), !noalias !1001
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1001
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.il = load i64, ptr %i.du, align 8, !tbaa !218, !noalias !1003 ; 6 uses
  %i.im = icmp ult i64 %i.il, 4611686018427387903
  call void @llvm.assume(i1 %i.im)
  %i.in = load ptr, ptr %9, align 8, !tbaa !208, !noalias !1003 ; 3 uses
  store ptr %i.ea, ptr %24, align 8, !tbaa !90, !alias.scope !1003
  %i.io = icmp eq ptr %i.in, null
  %i.ip = icmp ne i64 %i.il, 0
  %or.cond.i.i.i47 = and i1 %i.ip, %i.io
  br i1 %or.cond.i.i.i47, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.176) #26
  unreachable

bb.ah:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !1003
  store i64 %i.il, ptr %i.c, align 8, !tbaa !103, !noalias !1003
  %i.iq = icmp samesign ugt i64 %i.il, 15
  br i1 %i.iq, label %bb.ai, label %._crit_edge.i.i.i.i48

bb.ai:                                            ; preds = %bb.ah
  %i.ir = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ir, ptr %24, align 8, !tbaa !104, !alias.scope !1003
  %i.is = load i64, ptr %i.c, align 8, !tbaa !103, !noalias !1003
  store i64 %i.is, ptr %i.ea, align 8, !tbaa !93, !alias.scope !1003
  br label %._crit_edge.i.i.i.i48

._crit_edge.i.i.i.i48:                            ; preds = %bb.ai, %bb.ah
  %i.it = phi ptr [ %i.ir, %bb.ai ], [ %i.ea, %bb.ah ] ; 2 uses
  switch i64 %i.il, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i48
  %i.iu = load i8, ptr %i.in, align 1, !tbaa !93
  store i8 %i.iu, ptr %i.it, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %i.in, i64 %i.il, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i48
  %i.iv = load i64, ptr %i.c, align 8, !tbaa !103, !noalias !1003 ; 2 uses
  store i64 %i.iv, ptr %i.eb, align 8, !tbaa !92, !alias.scope !1003
  %i.iw = load ptr, ptr %24, align 8, !tbaa !104, !alias.scope !1003
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv
  store i8 0, ptr %i.ix, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !1003
  %i.iy = load ptr, ptr %9, align 8, !tbaa !208, !noalias !1001 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.iy, %i.dv
  br i1 %.not.i.i.i50, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51, label %bb.al

bb.al:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49
  call void @free(ptr noundef %i.iy) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !1001
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1000
  %i.iz = load ptr, ptr %24, align 8, !tbaa !104
  %i.ja = load i64, ptr %i.eb, align 8, !tbaa !92
  %i.jb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.iz, i64 noundef %i.ja) #25 ; 0 uses
  %i.jc = load ptr, ptr %24, align 8, !tbaa !104  ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.ea
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51
  %i.je = load i64, ptr %i.ea, align 8, !tbaa !93
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.jg = load ptr, ptr %25, align 8, !tbaa !104  ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.ec
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.ji = load i64, ptr %i.ec, align 8, !tbaa !93
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.jk = add nuw i64 %storemerge183, 1           ; 2 uses
  %i.jl = load ptr, ptr %i.dk, align 8, !tbaa !184
  %i.jm = load ptr, ptr %23, align 8, !tbaa !183  ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64               ; 2 uses
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = sdiv exact i64 %i.jp, 56
  %i.jr = icmp ult i64 %i.jk, %i.jq
  br i1 %i.jr, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %._crit_edge184, !llvm.loop !966

._crit_edge186:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210, %._crit_edge184
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @_ZNK4LIEF2PE16ResourcesManager12string_tableEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.233") align 8 %29, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.js = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !241 ; 3 uses
  %i.ju = load ptr, ptr %29, align 8, !tbaa !1004 ; 6 uses
  %i.jv = ptrtoint ptr %i.ju to i64               ; 2 uses
  %.not194 = icmp eq ptr %i.jt, %i.ju
  br i1 %.not194, label %_ZSt8_DestroyIPN4LIEF2PE16ResourcesManager14string_entry_tEEvT_S5_.exit.i, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit108.lr.ph

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit108.lr.ph: ; preds = %._crit_edge186
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jw, %i.jv
  %i.jy = sdiv exact i64 %i.jx, 40
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.kc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i16.i103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0..sroa_idx.i17.i104 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit108

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.kn = phi ptr [ %i.ku, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210 ]
  %storemerge27185 = phi i64 [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.ko = load ptr, ptr %i.en, align 8, !tbaa !231 ; 3 uses
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %storemerge27185
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !230
  %i.ku = getelementptr inbounds i8, ptr %i.ko, i64 %i.kr
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.kt)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !992
  store i64 %storemerge27185, ptr %13, align 16, !tbaa !93, !noalias !992
  %i.kv = load ptr, ptr %28, align 8, !tbaa !104, !noalias !992
  %i.kw = load i64, ptr %i.et, align 8, !tbaa !92, !noalias !992
  store ptr %i.kv, ptr %i.es, align 16, !tbaa !93, !noalias !992
  store i64 %i.kw, ptr %i.eu, align 8, !tbaa !93, !noalias !992
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !1005
  store i64 0, ptr %i.ex, align 8, !noalias !1005
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ew, align 8, !tbaa !207, !noalias !1005
  store ptr %i.ey, ptr %8, align 8, !tbaa !208, !noalias !1005
end_hunk_1
