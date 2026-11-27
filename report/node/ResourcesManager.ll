Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ResourcesManager?download=true
inline.NumInlined: 4533
inline.NumDeleted: 1757
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZNK4LIEF2PE16ResourcesManager10print_treeERKNS0_12ResourceNodeERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEjjPS3_NS5_12basic_stringIcS8_S9_EEb:bb.a
  %i.qo = icmp ult i64 %i.qn, 4611686018427387903
  call void @llvm.assume(i1 %i.qo)
  %i.qp = load ptr, ptr %18, align 8, !noalias !645 ; 3 uses
  store ptr %i.mx, ptr %50, align 8, !alias.scope !645
  %i.qq = icmp eq ptr %i.qp, null
  %i.qr = icmp ne i64 %i.qn, 0
  %or.cond.i.i.i142 = and i1 %i.qr, %i.qq
  br i1 %or.cond.i.i.i142, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.81) #25
  unreachable

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !645
  store i64 %i.qn, ptr %i.a, align 8, !noalias !645
  %i.qs = icmp samesign ugt i64 %i.qn, 15
  br i1 %i.qs, label %bb.cb, label %._crit_edge.i.i.i.i143

bb.cb:                                            ; preds = %bb.ca
  %i.qt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.qt, ptr %50, align 8, !alias.scope !645
  %i.qu = load i64, ptr %i.a, align 8, !noalias !645
  store i64 %i.qu, ptr %i.mx, align 8, !alias.scope !645
  br label %._crit_edge.i.i.i.i143

._crit_edge.i.i.i.i143:                           ; preds = %bb.cb, %bb.ca
  %i.qv = phi ptr [ %i.qt, %bb.cb ], [ %i.mx, %bb.ca ] ; 2 uses
  switch i64 %i.qn, label %bb.cd [
    i64 1, label %bb.cc
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144
  ]

bb.cc:                                            ; preds = %._crit_edge.i.i.i.i143
  %i.qw = load i8, ptr %i.qp, align 1
  store i8 %i.qw, ptr %i.qv, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144

bb.cd:                                            ; preds = %._crit_edge.i.i.i.i143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qv, ptr align 1 %i.qp, i64 %i.qn, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144: ; preds = %bb.cd, %bb.cc, %._crit_edge.i.i.i.i143
  %i.qx = load i64, ptr %i.a, align 8, !noalias !645 ; 2 uses
  store i64 %i.qx, ptr %i.my, align 8, !alias.scope !645
  %i.qy = load ptr, ptr %50, align 8, !alias.scope !645
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qx
  store i8 0, ptr %i.qz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !645
  %i.ra = load ptr, ptr %18, align 8, !noalias !643 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.ra, %i.ms
  br i1 %.not.i.i.i145, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146, label %bb.ce

bb.ce:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144
  call void @free(ptr noundef %i.ra) #24
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i144, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24, !noalias !642
  %i.rb = load i64, ptr %i.my, align 8            ; 2 uses
  %i.rc = load i64, ptr %i.me, align 8
  %i.rd = sub i64 4611686018427387903, %i.rc
  %i.re = icmp ult i64 %i.rd, %i.rb
  br i1 %i.re, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit147

bb.cf:                                            ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.181) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit147: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit146
  %i.rf = load ptr, ptr %50, align 8
  %i.rg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef %i.rf, i64 noundef %i.rb) #24 ; 0 uses
  %i.rh = load ptr, ptr %50, align 8              ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.mx
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit147
  %i.rj = load i64, ptr %i.mx, align 8
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #24
  %.not56 = icmp eq i64 %.047285, %i.mz
  br i1 %.not56, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.rl = load i64, ptr %i.me, align 8            ; 4 uses
  %i.rm = add i64 %i.rl, 1                        ; 3 uses
  %i.rn = load ptr, ptr %48, align 8              ; 2 uses
  %i.ro = icmp eq ptr %i.rn, %i.md
  br i1 %i.ro, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.cg
  %i.rp = icmp ult i64 %i.rl, 16
  call void @llvm.assume(i1 %i.rp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cg
  %i.rq = load i64, ptr %i.md, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.rr = phi i64 [ %i.rq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.rs = icmp ugt i64 %i.rm, %i.rr
  br i1 %i.rs, label %bb.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef %i.rl, i64 noundef 0, ptr noundef null, i64 noundef 1) #24
  %.pre.i.i = load ptr, ptr %48, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.ch
  %i.rt = phi ptr [ %.pre.i.i, %bb.ch ], [ %i.rn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rl
  store i8 58, ptr %i.ru, align 1
  store i64 %i.rm, ptr %i.me, align 8
  %i.rv = load ptr, ptr %48, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rm
  store i8 0, ptr %i.rw, align 1
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.rx = load i8, ptr %i.qk, align 1             ; 3 uses
  %i.ry = add i8 %i.rx, -32
  %i.rz = icmp ult i8 %i.ry, 95
  %i.sa = load i64, ptr %i.mg, align 8            ; 5 uses
  %i.sb = add i64 %i.sa, 1                        ; 4 uses
  %i.sc = load ptr, ptr %49, align 8              ; 3 uses
  %i.sd = icmp eq ptr %i.sc, %i.mf                ; 2 uses
  br i1 %i.rz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.sd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i154: ; preds = %bb.cj
  %i.se = icmp ult i64 %i.sa, 16
  call void @llvm.assume(i1 %i.se)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151: ; preds = %bb.cj
  %i.sf = load i64, ptr %i.mf, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i154
  %i.sg = phi i64 [ %i.sf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i154 ]
  %i.sh = icmp ugt i64 %i.sb, %i.sg
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155

bb.ck:                                            ; preds = %bb.ci
  br i1 %i.sd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i159: ; preds = %bb.ck
  %i.si = icmp ult i64 %i.sa, 16
  call void @llvm.assume(i1 %i.si)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156: ; preds = %bb.ck
  %i.sj = load i64, ptr %i.mf, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i159
  %i.sk = phi i64 [ %i.sj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i159 ]
  %i.sl = icmp ugt i64 %i.sb, %i.sk
  br i1 %i.sl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152
  %.sink.ph = phi i8 [ %i.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152 ], [ 46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %49, i64 noundef %i.sa, i64 noundef 0, ptr noundef null, i64 noundef 1) #24
  %.pre.i.i158 = load ptr, ptr %49, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152
  %.sink368 = phi ptr [ %i.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152 ], [ %i.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157 ], [ %.pre.i.i158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split ]
  %.sink = phi i8 [ %i.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i152 ], [ 46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i157 ], [ %.sink.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit155.sink.split ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.sink368, i64 %i.sa
  store i8 %.sink, ptr %i.sm, align 1
  store i64 %i.sb, ptr %i.mg, align 8
  %i.sn = load ptr, ptr %49, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sb
  store i8 0, ptr %i.so, align 1
  %i.sp = add nuw nsw i64 %.047285, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.sp, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.by, !llvm.loop !595

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.ss = load ptr, ptr %i.sr, align 8
  %i.st = load ptr, ptr %i.sq, align 8            ; 2 uses
  %.not290 = icmp eq ptr %i.ss, %i.st
  br i1 %.not290, label %._crit_edge288, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph: ; preds = %bb.cl
  %i.su = add i32 %3, 1                           ; 3 uses
  %i.sv = select i1 %7, ptr @.str.34, ptr @.str.32 ; 3 uses
  %i.sw = select i1 %7, i64 4, i64 5              ; 9 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 12 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 9 uses
  %i.sz = load ptr, ptr %i.st, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.ta = load ptr, ptr %6, align 8, !noalias !646
  %i.tb = load i64, ptr %i.ko, align 8, !noalias !646 ; 3 uses
  store ptr %i.sx, ptr %53, align 8, !alias.scope !647
  store i64 0, ptr %i.sy, align 8, !alias.scope !647
  store i8 0, ptr %i.sx, align 8, !alias.scope !647
  %i.tc = add i64 %i.tb, %i.sw
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.tc) #24
  %i.td = load i64, ptr %i.sy, align 8, !alias.scope !647
  %i.te = sub i64 4611686018427387903, %i.td
  %i.tf = icmp ult i64 %i.te, %i.tb
  br i1 %i.tf, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph
  %i.tg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %i.ta, i64 noundef %i.tb) #24 ; 0 uses
  %i.th = load i64, ptr %i.sy, align 8, !alias.scope !647
  %i.ti = sub i64 4611686018427387903, %i.th
  %i.tj = icmp ult i64 %i.ti, %i.sw
  br i1 %i.tj, label %.loopexit301, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel
  %i.tk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull %i.sv, i64 noundef %i.sw) #24 ; 0 uses
  %i.tl = load ptr, ptr %i.sr, align 8
  %i.tm = load ptr, ptr %i.sq, align 8
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = ptrtoint ptr %i.tm to i64
  %i.tp = sub i64 %i.tn, %i.to
  %i.tq = icmp eq i64 %i.tp, 8
  call void @_ZNK4LIEF2PE16ResourcesManager10print_treeERKNS0_12ResourceNodeERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEjjPS3_NS5_12basic_stringIcS8_S9_EEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.sz, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.su, i32 noundef %4, ptr nonnull poison, ptr noundef nonnull %53, i1 noundef zeroext %i.tq)
  %i.tr = load ptr, ptr %53, align 8              ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.sx
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel
  %i.tt = load i64, ptr %i.sx, align 8
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel
  %i.tv = load ptr, ptr %i.sr, align 8
  %i.tw = load ptr, ptr %i.sq, align 8            ; 2 uses
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = sub i64 %i.tx, %i.ty
  %i.ua = icmp ugt i64 %i.tz, 8
  br i1 %i.ua, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.peel.next, label %._crit_edge288

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.ud = load ptr, ptr %6, align 8, !noalias !648
  %i.ue = load i64, ptr %i.ko, align 8, !noalias !648 ; 3 uses
  store ptr %i.sx, ptr %53, align 8, !alias.scope !649
  store i64 0, ptr %i.sy, align 8, !alias.scope !649
  store i8 0, ptr %i.sx, align 8, !alias.scope !649
  %i.uf = add i64 %i.ue, %i.sw
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.uf) #24
  %i.ug = load i64, ptr %i.sy, align 8, !alias.scope !649
  %i.uh = sub i64 4611686018427387903, %i.ug
  %i.ui = icmp ult i64 %i.uh, %i.ue
  br i1 %i.ui, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel295: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.peel.next
  %i.uj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %i.ud, i64 noundef %i.ue) #24 ; 0 uses
  %i.uk = load i64, ptr %i.sy, align 8, !alias.scope !649
  %i.ul = sub i64 4611686018427387903, %i.uk
  %i.um = icmp ult i64 %i.ul, %i.sw
  br i1 %i.um, label %.loopexit301, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel296

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel295
  %i.un = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull %i.sv, i64 noundef %i.sw) #24 ; 0 uses
  %i.uo = load ptr, ptr %i.sr, align 8
  %i.up = load ptr, ptr %i.sq, align 8
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = sub i64 %i.uq, %i.ur
  %i.ut = icmp eq i64 %i.us, 16
  call void @_ZNK4LIEF2PE16ResourcesManager10print_treeERKNS0_12ResourceNodeERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEjjPS3_NS5_12basic_stringIcS8_S9_EEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.uc, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.su, i32 noundef %4, ptr nonnull poison, ptr noundef nonnull %53, i1 noundef zeroext %i.ut)
  %i.uu = load ptr, ptr %53, align 8              ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.sx
  br i1 %i.uv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel297: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel296
  %i.uw = load i64, ptr %i.sx, align 8
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.ux) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.peel296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.peel297
  %i.uy = load ptr, ptr %i.sr, align 8
  %i.uz = load ptr, ptr %i.sq, align 8            ; 2 uses
  %i.va = ptrtoint ptr %i.uy to i64
  %i.vb = ptrtoint ptr %i.uz to i64
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = icmp ugt i64 %i.vc, 16
  br i1 %i.vd, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit, label %._crit_edge288

._crit_edge288:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299, %bb.cl
  %i.ve = load ptr, ptr %39, align 8              ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.aj
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %._crit_edge288
  %i.vg = load i64, ptr %i.aj, align 8
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %._crit_edge288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  %i.vi = load ptr, ptr %38, align 8              ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.q
  br i1 %i.vj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.vk = load i64, ptr %i.q, align 8
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %bb.cm

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.vm = phi ptr [ %i.wo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.uz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299 ]
  %.0287 = phi i64 [ %i.wm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.peel299 ] ; 3 uses
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.vm, i64 %.0287
  %i.vo = load ptr, ptr %i.vn, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.vp = load ptr, ptr %6, align 8, !noalias !650
  %i.vq = load i64, ptr %i.ko, align 8, !noalias !650 ; 3 uses
  store ptr %i.sx, ptr %53, align 8, !alias.scope !651
  store i64 0, ptr %i.sy, align 8, !alias.scope !651
  store i8 0, ptr %i.sx, align 8, !alias.scope !651
  %i.vr = add i64 %i.vq, %i.sw
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.vr) #24
  %i.vs = load i64, ptr %i.sy, align 8, !alias.scope !651
  %i.vt = sub i64 4611686018427387903, %i.vs
  %i.vu = icmp ult i64 %i.vt, %i.vq
  br i1 %i.vu, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

.loopexit:                                        ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.peel.next, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.181) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit
  %i.vv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %i.vp, i64 noundef %i.vq) #24 ; 0 uses
  %i.vw = load i64, ptr %i.sy, align 8, !alias.scope !651
  %i.vx = sub i64 4611686018427387903, %i.vw
  %i.vy = icmp ult i64 %i.vx, %i.sw
  br i1 %i.vy, label %.loopexit301, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

.loopexit301:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.181) #25
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.vz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull %i.sv, i64 noundef %i.sw) #24 ; 0 uses
  %i.wa = load ptr, ptr %i.sr, align 8
  %i.wb = load ptr, ptr %i.sq, align 8
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = sub i64 %i.wc, %i.wd
  %i.wf = ashr exact i64 %i.we, 3
  %i.wg = add nsw i64 %i.wf, -1
  %i.wh = icmp eq i64 %.0287, %i.wg
  call void @_ZNK4LIEF2PE16ResourcesManager10print_treeERKNS0_12ResourceNodeERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEjjPS3_NS5_12basic_stringIcS8_S9_EEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.vo, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.su, i32 noundef %4, ptr nonnull poison, ptr noundef nonnull %53, i1 noundef zeroext %i.wh)
  %i.wi = load ptr, ptr %53, align 8              ; 2 uses
  %i.wj = icmp eq ptr %i.wi, %i.sx
  br i1 %i.wj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.wk = load i64, ptr %i.sx, align 8
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  %i.wm = add nuw i64 %.0287, 1                   ; 2 uses
  %i.wn = load ptr, ptr %i.sr, align 8
  %i.wo = load ptr, ptr %i.sq, align 8            ; 2 uses
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = ptrtoint ptr %i.wo to i64
  %i.wr = sub i64 %i.wp, %i.wq
  %i.ws = ashr exact i64 %i.wr, 3
  %i.wt = icmp ult i64 %i.wm, %i.ws
  br i1 %i.wt, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit, label %._crit_edge288, !llvm.loop !604

bb.cm:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF2PE16ResourcesManager6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 align 2 !guid !652 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(40) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_16ResourcesManagerE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 !guid !698 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 18 uses
  %4 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.fmt::v11::basic_memory_buffer.772", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 18 uses
  %8 = alloca %"class.fmt::v11::basic_memory_buffer.772", align 8 ; 22 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.fmt::v11::basic_memory_buffer.772", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.fmt::v11::basic_memory_buffer.772", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.fmt::v11::basic_memory_buffer.772", align 8 ; 10 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.1397", align 16 ; 6 uses
  %13 = alloca %"struct.fmt::v11::detail::format_arg_store.1397", align 16 ; 14 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1397", align 16 ; 6 uses
  %15 = alloca %"struct.fmt::v11::detail::format_arg_store.1385", align 16 ; 5 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.1393", align 16 ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZNK4LIEF2PE16ResourcesManager5printB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3)
  %i.h = load ptr, ptr %17, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.h, i64 noundef %i.j) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 10, ptr %i.g, align 1
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.g, i64 noundef 1) #24 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 10) #24 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.t = load ptr, ptr %17, align 8               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @_ZNK4LIEF2PE16ResourcesManager9get_typesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.y = load ptr, ptr %18, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 8
end_hunk_0
begin_hunk_1_@_ZN4LIEF2PElsERSoRKNS0_16ResourcesManagerE:bb.a
  %or.cond.i.i.i32 = and i1 %i.ca, %i.bz
  br i1 %or.cond.i.i.i32, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.81) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !706
  store i64 %i.bv, ptr %i.e, align 8, !noalias !706
  %i.cb = icmp samesign ugt i64 %i.bv, 15
  br i1 %i.cb, label %bb.o, label %._crit_edge.i.i.i.i33

bb.o:                                             ; preds = %bb.n
  %i.cc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #24 ; 2 uses
  store ptr %i.cc, ptr %21, align 8, !alias.scope !706
  %i.cd = load i64, ptr %i.e, align 8, !noalias !706
  store i64 %i.cd, ptr %i.by, align 8, !alias.scope !706
  br label %._crit_edge.i.i.i.i33

._crit_edge.i.i.i.i33:                            ; preds = %bb.o, %bb.n
  %i.ce = phi ptr [ %i.cc, %bb.o ], [ %i.by, %bb.n ] ; 2 uses
  switch i64 %i.bv, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i33
  %i.cf = load i8, ptr %i.bx, align 1
  store i8 %i.cf, ptr %i.ce, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34

bb.q:                                             ; preds = %._crit_edge.i.i.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.bx, i64 %i.bv, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34: ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i33
  %i.cg = load i64, ptr %i.e, align 8, !noalias !706 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %i.cg, ptr %i.ch, align 8, !alias.scope !706
  %i.ci = load ptr, ptr %21, align 8, !alias.scope !706
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !706
  %i.ck = load ptr, ptr %10, align 8, !noalias !704 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ck, %i.bq
  br i1 %.not.i.i.i35, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36, label %bb.r

bb.r:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34
  call void @free(ptr noundef %i.ck) #24
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !703
  %i.cl = load ptr, ptr %21, align 8
  %i.cm = load i64, ptr %i.ch, align 8
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cl, i64 noundef %i.cm) #24 ; 0 uses
  %i.co = load ptr, ptr %21, align 8              ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.by
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36
  %i.cq = load i64, ptr %i.by, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.k
  %i.cs = load ptr, ptr %20, align 8              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.s
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @_ZNK4LIEF2PE16ResourcesManager7versionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.88") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.cx = load ptr, ptr %22, align 8              ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not181 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not181, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46
  %.pre = load ptr, ptr %22, align 8              ; 3 uses
  %.pre212 = load ptr, ptr %i.cy, align 8         ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre212
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.da = load ptr, ptr %.05.i.i.i, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(264) %.05.i.i.i) #24, !inline_history !665
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 264 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.dd, %.pre212
  br i1 %.not.i.i.i43, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !666

_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %22, align 8
  br label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i

_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i, %._crit_edge
  %i.de = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #27
  br label %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @_ZNK4LIEF2PE16ResourcesManager5iconsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.150") align 8 %23, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.dk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = load ptr, ptr %23, align 8              ; 3 uses
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
  %.sroa.2.0..sroa_idx.i14.i95 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.2.0..sroa_idx.i15.i96 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46
  %.sroa.0157.0182 = phi ptr [ %i.em, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 2 uses
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_15ResourceVersionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.0157.0182) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8
  %.not.i44 = icmp eq i64 %i.ej, 0
  br i1 %.not.i44, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %i.d, i64 noundef 1) #24 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46

bb.v:                                             ; preds = %.lr.ph
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, i8 noundef signext 10) #24 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0157.0182, i64 264 ; 2 uses
  %.not = icmp eq ptr %i.em, %i.cz
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge184:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @_ZNK4LIEF2PE16ResourcesManager7dialogsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.230") align 8 %26, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.en = load ptr, ptr %26, align 8, !nonnull !168, !align !171 ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = load ptr, ptr %i.en, align 8
  %.not193 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not193, label %._crit_edge186, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph: ; preds = %._crit_edge184
  %i.er = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  %.sroa.2.0..sroa_idx.i14.i97 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i15.i98 = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 15 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %.promoted = load ptr, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.fg = load ptr, ptr %i.en, align 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.fh)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !707
  store i64 0, ptr %13, align 16, !noalias !707
  %i.fi = load ptr, ptr %28, align 8, !noalias !707
  %i.fj = load i64, ptr %i.et, align 8, !noalias !707
  store ptr %i.fi, ptr %i.es, align 16, !noalias !707
  store i64 %i.fj, ptr %i.eu, align 8, !noalias !707
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !708
  store i64 0, ptr %i.ex, align 8, !noalias !708
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ew, align 8, !noalias !708
  store ptr %i.ey, ptr %8, align 8, !noalias !708
  store i64 500, ptr %i.ev, align 8, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !708
  store ptr @.str.51, ptr %3, align 8, !noalias !708
  store i64 19, ptr %.sroa.2.0..sroa_idx.i14.i97, align 8, !noalias !708
  store i32 0, ptr %i.ez, align 8, !noalias !708
  store ptr %8, ptr %i.fa, align 8, !noalias !708
  store i64 212, ptr %i.fb, align 8, !noalias !708
  store ptr %13, ptr %.sroa.2.0..sroa_idx.i15.i98, align 8, !noalias !708
  store ptr null, ptr %i.fc, align 8, !noalias !708
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.51, i64 19, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !708
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.fk = load i64, ptr %i.ex, align 8, !noalias !710 ; 6 uses
  %i.fl = icmp ult i64 %i.fk, 4611686018427387903
  call void @llvm.assume(i1 %i.fl)
  %i.fm = load ptr, ptr %8, align 8, !noalias !710 ; 3 uses
  store ptr %i.fd, ptr %27, align 8, !alias.scope !710
  %i.fn = icmp eq ptr %i.fm, null
  %i.fo = icmp ne i64 %i.fk, 0
  %or.cond.i.i.i64.peel = and i1 %i.fo, %i.fn
  br i1 %or.cond.i.i.i64.peel, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !710
  store i64 %i.fk, ptr %i.b, align 8, !noalias !710
  %i.fp = icmp samesign ugt i64 %i.fk, 15
  br i1 %i.fp, label %bb.x, label %._crit_edge.i.i.i.i65.peel

bb.x:                                             ; preds = %bb.w
  %i.fq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #24 ; 2 uses
  store ptr %i.fq, ptr %27, align 8, !alias.scope !710
  %i.fr = load i64, ptr %i.b, align 8, !noalias !710
  store i64 %i.fr, ptr %i.fd, align 8, !alias.scope !710
  br label %._crit_edge.i.i.i.i65.peel

._crit_edge.i.i.i.i65.peel:                       ; preds = %bb.x, %bb.w
  %i.fs = phi ptr [ %i.fq, %bb.x ], [ %i.fd, %bb.w ] ; 2 uses
  switch i64 %i.fk, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i65.peel
  %i.ft = load i8, ptr %i.fm, align 1
  store i8 %i.ft, ptr %i.fs, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel

bb.z:                                             ; preds = %._crit_edge.i.i.i.i65.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr align 1 %i.fm, i64 %i.fk, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel: ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i65.peel
  %i.fu = load i64, ptr %i.b, align 8, !noalias !710 ; 2 uses
  store i64 %i.fu, ptr %i.fe, align 8, !alias.scope !710
  %i.fv = load ptr, ptr %27, align 8, !alias.scope !710
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fu
  store i8 0, ptr %i.fw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !710
  %i.fx = load ptr, ptr %8, align 8, !noalias !708 ; 2 uses
  %.not.i.i.i67.peel = icmp eq ptr %i.fx, %i.ey
  br i1 %.not.i.i.i67.peel, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel, label %bb.aa

bb.aa:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  call void @free(ptr noundef %i.fx) #24
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel: ; preds = %bb.aa, %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !707
  %i.fy = load ptr, ptr %27, align 8
  %i.fz = load i64, ptr %i.fe, align 8
  %i.ga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.fy, i64 noundef %i.fz) #24 ; 0 uses
  %i.gb = load ptr, ptr %27, align 8              ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fd
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel
  %i.gd = load i64, ptr %i.fd, align 8
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel
  %i.gf = load ptr, ptr %28, align 8              ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ff
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel
  %i.gh = load i64, ptr %i.ff, align 8
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.gj = load ptr, ptr %i.eo, align 8
  %i.gk = load ptr, ptr %i.en, align 8
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp ugt i64 %i.gn, 8
  br i1 %i.go, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next, label %._crit_edge186

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.gp = load ptr, ptr %i.en, align 8            ; 3 uses
  %i.gq = ptrtoint ptr %.promoted to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds i8, ptr %i.gp, i64 %i.gs
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.gu)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !707
  store i64 1, ptr %13, align 16, !noalias !707
  %i.gw = load ptr, ptr %28, align 8, !noalias !707
  %i.gx = load i64, ptr %i.et, align 8, !noalias !707
  store ptr %i.gw, ptr %i.es, align 16, !noalias !707
  store i64 %i.gx, ptr %i.eu, align 8, !noalias !707
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !711
  store i64 0, ptr %i.ex, align 8, !noalias !711
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ew, align 8, !noalias !711
  store ptr %i.ey, ptr %8, align 8, !noalias !711
  store i64 500, ptr %i.ev, align 8, !noalias !711
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !711
  store ptr @.str.51, ptr %3, align 8, !noalias !711
  store i64 19, ptr %.sroa.2.0..sroa_idx.i14.i97, align 8, !noalias !711
  store i32 0, ptr %i.ez, align 8, !noalias !711
  store ptr %8, ptr %i.fa, align 8, !noalias !711
  store i64 212, ptr %i.fb, align 8, !noalias !711
  store ptr %13, ptr %.sroa.2.0..sroa_idx.i15.i98, align 8, !noalias !711
  store ptr null, ptr %i.fc, align 8, !noalias !711
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.51, i64 19, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !711
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.gy = load i64, ptr %i.ex, align 8, !noalias !713 ; 6 uses
  %i.gz = icmp ult i64 %i.gy, 4611686018427387903
  call void @llvm.assume(i1 %i.gz)
  %i.ha = load ptr, ptr %8, align 8, !noalias !713 ; 3 uses
  store ptr %i.fd, ptr %27, align 8, !alias.scope !713
  %i.hb = icmp eq ptr %i.ha, null
  %i.hc = icmp ne i64 %i.gy, 0
  %or.cond.i.i.i64.peel200 = and i1 %i.hc, %i.hb
  br i1 %or.cond.i.i.i64.peel200, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !713
  store i64 %i.gy, ptr %i.b, align 8, !noalias !713
  %i.hd = icmp samesign ugt i64 %i.gy, 15
  br i1 %i.hd, label %bb.ac, label %._crit_edge.i.i.i.i65.peel201

bb.ac:                                            ; preds = %bb.ab
  %i.he = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #24 ; 2 uses
  store ptr %i.he, ptr %27, align 8, !alias.scope !713
  %i.hf = load i64, ptr %i.b, align 8, !noalias !713
  store i64 %i.hf, ptr %i.fd, align 8, !alias.scope !713
  br label %._crit_edge.i.i.i.i65.peel201

._crit_edge.i.i.i.i65.peel201:                    ; preds = %bb.ac, %bb.ab
  %i.hg = phi ptr [ %i.he, %bb.ac ], [ %i.fd, %bb.ab ] ; 2 uses
  switch i64 %i.gy, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i65.peel201
  %i.hh = load i8, ptr %i.ha, align 1
  store i8 %i.hh, ptr %i.hg, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i65.peel201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr align 1 %i.ha, i64 %i.gy, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202: ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i65.peel201
  %i.hi = load i64, ptr %i.b, align 8, !noalias !713 ; 2 uses
  store i64 %i.hi, ptr %i.fe, align 8, !alias.scope !713
  %i.hj = load ptr, ptr %27, align 8, !alias.scope !713
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  store i8 0, ptr %i.hk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !713
  %i.hl = load ptr, ptr %8, align 8, !noalias !711 ; 2 uses
  %.not.i.i.i67.peel203 = icmp eq ptr %i.hl, %i.ey
  br i1 %.not.i.i.i67.peel203, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204, label %bb.af

bb.af:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  call void @free(ptr noundef %i.hl) #24
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204: ; preds = %bb.af, %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !707
  %i.hm = load ptr, ptr %27, align 8
  %i.hn = load i64, ptr %i.fe, align 8
  %i.ho = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hm, i64 noundef %i.hn) #24 ; 0 uses
  %i.hp = load ptr, ptr %27, align 8              ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.fd
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204
  %i.hr = load i64, ptr %i.fd, align 8
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205
  %i.ht = load ptr, ptr %28, align 8              ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ff
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207
  %i.hv = load i64, ptr %i.ff, align 8
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.hx = load ptr, ptr %i.eo, align 8
  %i.hy = load ptr, ptr %i.en, align 8
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = icmp ugt i64 %i.ib, 16
  br i1 %i.ic, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %._crit_edge186

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.id = phi i64 [ %i.dn, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  %i.ie = phi ptr [ %i.dm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 2 uses
  %storemerge183 = phi i64 [ 0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %.sroa.02.0.copyload.i = load ptr, ptr %i.do, align 8
  %i.if = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.ig = sub i64 %i.if, %i.id
  %i.ih = getelementptr inbounds [56 x i8], ptr %i.ie, i64 %storemerge183
  %i.ii = getelementptr inbounds i8, ptr %i.ie, i64 %i.ig
  store ptr %i.ii, ptr %i.do, align 8
  call void @_ZN4LIEF9to_stringINS_2PE12ResourceIconEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(56) %i.ih)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !714
  store i64 %storemerge183, ptr %12, align 16, !noalias !714
  %i.ij = load ptr, ptr %25, align 8, !noalias !714
  %i.ik = load i64, ptr %i.dq, align 8, !noalias !714
  store ptr %i.ij, ptr %i.dp, align 16, !noalias !714
  store i64 %i.ik, ptr %i.dr, align 8, !noalias !714
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !715
  store i64 0, ptr %i.du, align 8, !noalias !715
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.dt, align 8, !noalias !715
  store ptr %i.dv, ptr %9, align 8, !noalias !715
  store i64 500, ptr %i.ds, align 8, !noalias !715
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !715
  store ptr @.str.50, ptr %4, align 8, !noalias !715
  store i64 17, ptr %.sroa.2.0..sroa_idx.i14.i95, align 8, !noalias !715
  store i32 0, ptr %i.dw, align 8, !noalias !715
  store ptr %9, ptr %i.dx, align 8, !noalias !715
  store i64 212, ptr %i.dy, align 8, !noalias !715
  store ptr %12, ptr %.sroa.2.0..sroa_idx.i15.i96, align 8, !noalias !715
  store ptr null, ptr %i.dz, align 8, !noalias !715
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.50, i64 17, ptr noundef nonnull align 8 dereferenceable(56) %4), !noalias !715
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !715
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.il = load i64, ptr %i.du, align 8, !noalias !717 ; 6 uses
  %i.im = icmp ult i64 %i.il, 4611686018427387903
  call void @llvm.assume(i1 %i.im)
  %i.in = load ptr, ptr %9, align 8, !noalias !717 ; 3 uses
  store ptr %i.ea, ptr %24, align 8, !alias.scope !717
  %i.io = icmp eq ptr %i.in, null
  %i.ip = icmp ne i64 %i.il, 0
  %or.cond.i.i.i47 = and i1 %i.ip, %i.io
  br i1 %or.cond.i.i.i47, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.81) #25
  unreachable

bb.ah:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !717
  store i64 %i.il, ptr %i.c, align 8, !noalias !717
  %i.iq = icmp samesign ugt i64 %i.il, 15
  br i1 %i.iq, label %bb.ai, label %._crit_edge.i.i.i.i48

bb.ai:                                            ; preds = %bb.ah
  %i.ir = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ir, ptr %24, align 8, !alias.scope !717
  %i.is = load i64, ptr %i.c, align 8, !noalias !717
  store i64 %i.is, ptr %i.ea, align 8, !alias.scope !717
  br label %._crit_edge.i.i.i.i48

._crit_edge.i.i.i.i48:                            ; preds = %bb.ai, %bb.ah
  %i.it = phi ptr [ %i.ir, %bb.ai ], [ %i.ea, %bb.ah ] ; 2 uses
  switch i64 %i.il, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i48
  %i.iu = load i8, ptr %i.in, align 1
  store i8 %i.iu, ptr %i.it, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %i.in, i64 %i.il, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i48
  %i.iv = load i64, ptr %i.c, align 8, !noalias !717 ; 2 uses
  store i64 %i.iv, ptr %i.eb, align 8, !alias.scope !717
  %i.iw = load ptr, ptr %24, align 8, !alias.scope !717
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv
  store i8 0, ptr %i.ix, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !717
  %i.iy = load ptr, ptr %9, align 8, !noalias !715 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.iy, %i.dv
  br i1 %.not.i.i.i50, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51, label %bb.al

bb.al:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49
  call void @free(ptr noundef %i.iy) #24
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !715
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !714
  %i.iz = load ptr, ptr %24, align 8
  %i.ja = load i64, ptr %i.eb, align 8
  %i.jb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.iz, i64 noundef %i.ja) #24 ; 0 uses
  %i.jc = load ptr, ptr %24, align 8              ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.ea
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51
  %i.je = load i64, ptr %i.ea, align 8
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.jg = load ptr, ptr %25, align 8              ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.ec
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.ji = load i64, ptr %i.ec, align 8
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.jk = add nuw i64 %storemerge183, 1           ; 2 uses
  %i.jl = load ptr, ptr %i.dk, align 8
  %i.jm = load ptr, ptr %23, align 8              ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64               ; 2 uses
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = sdiv exact i64 %i.jp, 56
  %i.jr = icmp ult i64 %i.jk, %i.jq
  br i1 %i.jr, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %._crit_edge184, !llvm.loop !683

._crit_edge186:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210, %._crit_edge184
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @_ZNK4LIEF2PE16ResourcesManager12string_tableEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.233") align 8 %29, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.js = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jt = load ptr, ptr %i.js, align 8            ; 3 uses
  %i.ju = load ptr, ptr %29, align 8              ; 6 uses
  %i.jv = ptrtoint ptr %i.ju to i64               ; 2 uses
  %.not194 = icmp eq ptr %i.jt, %i.ju
  br i1 %.not194, label %_ZSt8_DestroyIPN4LIEF2PE16ResourcesManager14string_entry_tEEvT_S5_.exit.i, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit108.lr.ph

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit108.lr.ph: ; preds = %._crit_edge186
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
  %.sroa.2.0..sroa_idx.i14.i103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0..sroa_idx.i15.i104 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit108

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.kn = phi ptr [ %i.ku, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210 ]
  %storemerge27185 = phi i64 [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.ko = load ptr, ptr %i.en, align 8            ; 3 uses
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %storemerge27185
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = getelementptr inbounds i8, ptr %i.ko, i64 %i.kr
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.kt)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !707
  store i64 %storemerge27185, ptr %13, align 16, !noalias !707
  %i.kv = load ptr, ptr %28, align 8, !noalias !707
  %i.kw = load i64, ptr %i.et, align 8, !noalias !707
  store ptr %i.kv, ptr %i.es, align 16, !noalias !707
  store i64 %i.kw, ptr %i.eu, align 8, !noalias !707
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !718
  store i64 0, ptr %i.ex, align 8, !noalias !718
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ew, align 8, !noalias !718
  store ptr %i.ey, ptr %8, align 8, !noalias !718
end_hunk_1
