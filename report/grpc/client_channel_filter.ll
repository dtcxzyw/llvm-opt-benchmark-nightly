Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/client_channel_filter?download=true
inline.NumInlined: 8133
inline.NumDeleted: 4100
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9grpc_core19ClientChannelFilterC2EP25grpc_channel_element_argsPN4absl12lts_202505126StatusE:bb.a
  store i64 %i.hb, ptr %i.gq, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.gq, ptr %12, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bv, %bb.bw
  %i.he = phi ptr [ %i.gn, %bb.bv ], [ %i.gq, %bb.bw ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.hf, align 8, !tbaa !317
  store i8 0, ptr %i.he, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #43
  %i.hg = load atomic ptr, ptr @_ZN9grpc_core17CoreConfiguration7config_E acquire, align 8 ; 2 uses
  %.not.i118 = icmp eq ptr %i.hg, null
  br i1 %.not.i118, label %bb.bx, label %_ZN9grpc_core17CoreConfiguration3GetEv.exit

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hh = invoke noundef nonnull align 8 dereferenceable(1928) ptr @_ZN9grpc_core17CoreConfiguration19BuildNewAndMaybeSetEv()
          to label %_ZN9grpc_core17CoreConfiguration3GetEv.exit unwind label %bb.cx

_ZN9grpc_core17CoreConfiguration3GetEv.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.bx
  %.0.i = phi ptr [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %i.hh, %bb.bx ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.i, i64 1760
  %i.hj = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.hk = load i64, ptr %i.n, align 8, !tbaa !317
  invoke void @_ZNK9grpc_core19ProxyMapperRegistry7MapNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPNS_11ChannelArgsE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.82") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i64 %i.hk, ptr %i.hj, ptr noundef nonnull %0)
          to label %bb.by unwind label %bb.cx

bb.by:                                            ; preds = %_ZN9grpc_core17CoreConfiguration3GetEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 5 uses
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !334, !range !68, !noalias !792, !noundef !69
  %i.hn = trunc nuw i8 %i.hm to i1
  %i.ho = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 11 uses
  store ptr %i.ho, ptr %16, align 8, !tbaa !316, !alias.scope !792
  br i1 %i.hn, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.hp = load ptr, ptr %17, align 8, !tbaa !75, !noalias !792 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.hs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !317, !noalias !792 ; 3 uses
  %i.hu = icmp ult i64 %i.ht, 16
  call void @llvm.assume(i1 %i.hu)
  %i.hv = add nuw nsw i64 %i.ht, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ho, ptr noundef nonnull align 8 dereferenceable(1) %i.hq, i64 %i.hv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bz
  store ptr %i.hp, ptr %16, align 8, !tbaa !75, !alias.scope !792
  %i.hw = load i64, ptr %i.hq, align 8, !tbaa !76, !noalias !792
  store i64 %i.hw, ptr %i.ho, align 8, !tbaa !76, !alias.scope !792
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre.i120 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !317, !noalias !792
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ca
  %i.hx = phi i64 [ %i.ht, %bb.ca ], [ %.pre.i120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.hx, ptr %i.hz, align 8, !tbaa !317, !alias.scope !792
  store ptr %i.hq, ptr %17, align 8, !tbaa !75, !noalias !792
  store i64 0, ptr %i.hy, align 8, !tbaa !317, !noalias !792
  store i8 0, ptr %i.hq, align 8, !tbaa !76, !noalias !792
  br label %_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRS5_EES5_OT_.exit

bb.cb:                                            ; preds = %bb.by
  %i.ia = load ptr, ptr %i.l, align 8, !tbaa !75, !noalias !792 ; 2 uses
  %i.ib = load i64, ptr %i.n, align 8, !tbaa !317, !noalias !792 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43, !noalias !792
  store i64 %i.ib, ptr %i.a, align 8, !tbaa !244, !noalias !792
  %i.ic = icmp ugt i64 %i.ib, 15
  br i1 %i.ic, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.cb
  %i.id = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc121 unwind label %bb.cy ; 2 uses

.noexc121:                                        ; preds = %.noexc.i.i
  store ptr %i.id, ptr %16, align 8, !tbaa !75, !alias.scope !792
  %i.ie = load i64, ptr %i.a, align 8, !tbaa !244, !noalias !792
  store i64 %i.ie, ptr %i.ho, align 8, !tbaa !76, !alias.scope !792
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc121, %bb.cb
  %i.if = phi ptr [ %i.id, %.noexc121 ], [ %i.ho, %bb.cb ] ; 2 uses
  switch i64 %i.ib, label %bb.cd [
    i64 1, label %bb.cc
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.cc:                                            ; preds = %._crit_edge.i.i.i
  %i.ig = load i8, ptr %i.ia, align 1, !tbaa !76
  store i8 %i.ig, ptr %i.if, align 1, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.cd:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.if, ptr align 1 %i.ia, i64 %i.ib, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.cd, %bb.cc, %._crit_edge.i.i.i
  %i.ih = load i64, ptr %i.a, align 8, !tbaa !244, !noalias !792 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ih, ptr %i.ii, align 8, !tbaa !317, !alias.scope !792
  %i.ij = load ptr, ptr %16, align 8, !tbaa !75, !alias.scope !792
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ih
  store i8 0, ptr %i.ik, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43, !noalias !792
  br label %_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRS5_EES5_OT_.exit

_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRS5_EES5_OT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.il = load ptr, ptr %i.o, align 8, !tbaa !75  ; 6 uses
  %i.im = icmp eq ptr %i.il, %i.p
  %i.in = load ptr, ptr %16, align 8, !tbaa !75   ; 5 uses
  %i.io = icmp eq ptr %i.in, %i.ho                ; 2 uses
  br i1 %i.im, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i127: ; preds = %_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRS5_EES5_OT_.exit
  br i1 %i.io, label %bb.ce, label %.thread.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i122: ; preds = %_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRS5_EES5_OT_.exit
  br i1 %i.io, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i123

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i127
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !317 ; 3 uses
  %i.ir = icmp ult i64 %i.iq, 16
  call void @llvm.assume(i1 %i.ir)
  switch i64 %i.iq, label %bb.cg [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125
    i64 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.is = load i8, ptr %i.in, align 1, !tbaa !76
  store i8 %i.is, ptr %i.il, align 1, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.il, ptr align 1 %i.in, i64 %i.iq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.it = load i64, ptr %i.ip, align 8, !tbaa !317 ; 2 uses
  store i64 %i.it, ptr %i.q, align 8, !tbaa !317
  %i.iu = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.it
  store i8 0, ptr %i.iv, align 1, !tbaa !76
  %.pre.i126 = load ptr, ptr %16, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit129

.thread.i128:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i127
  store ptr %i.in, ptr %i.o, align 8, !tbaa !75
  %i.iw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ix = load <2 x i64>, ptr %i.iw, align 8, !tbaa !76
  store <2 x i64> %i.ix, ptr %i.q, align 8, !tbaa !76
  br label %bb.ci

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i123: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i122
  %i.iy = load i64, ptr %i.p, align 8, !tbaa !76
  store ptr %i.in, ptr %i.o, align 8, !tbaa !75
  %i.iz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ja = load <2 x i64>, ptr %i.iz, align 8, !tbaa !76
  store <2 x i64> %i.ja, ptr %i.q, align 8, !tbaa !76
  %.not.i124 = icmp eq ptr %i.il, null
  br i1 %.not.i124, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i123
  store ptr %i.il, ptr %16, align 8, !tbaa !75
  store i64 %i.iy, ptr %i.ho, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit129

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i123, %.thread.i128
  store ptr %i.ho, ptr %16, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125, %bb.ch, %bb.ci
  %i.jb = phi ptr [ %i.il, %bb.ch ], [ %i.ho, %bb.ci ], [ %.pre.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.jc, align 8, !tbaa !317
  store i8 0, ptr %i.jb, align 1, !tbaa !76
  %i.jd = load ptr, ptr %16, align 8, !tbaa !75   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ho
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit129
  %i.jf = load i64, ptr %i.ho, align 8, !tbaa !76
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  %i.jh = load i8, ptr %i.hl, align 8, !tbaa !334, !range !68, !noundef !69
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.cj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 0, ptr %i.hl, align 8, !tbaa !334
  %i.jj = load ptr, ptr %17, align 8, !tbaa !75   ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.cj
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !76
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #45
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  %i.jo = load atomic ptr, ptr @_ZN9grpc_core17CoreConfiguration7config_E acquire, align 8 ; 2 uses
  %.not.i131 = icmp eq ptr %i.jo, null
  br i1 %.not.i131, label %bb.ck, label %_ZN9grpc_core17CoreConfiguration3GetEv.exit134

bb.ck:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.jp = invoke noundef nonnull align 8 dereferenceable(1928) ptr @_ZN9grpc_core17CoreConfiguration19BuildNewAndMaybeSetEv()
          to label %_ZN9grpc_core17CoreConfiguration3GetEv.exit134 unwind label %bb.dh

_ZN9grpc_core17CoreConfiguration3GetEv.exit134:   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.ck
  %.0.i132 = phi ptr [ %i.jo, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ], [ %i.jp, %bb.ck ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i132, i64 1632
  %i.jr = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.js = load i64, ptr %i.q, align 8, !tbaa !317
  %i.jt = invoke noundef zeroext i1 @_ZNK9grpc_core16ResolverRegistry13IsValidTargetESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jq, i64 %i.js, ptr %i.jr)
          to label %bb.cl unwind label %bb.dh

bb.cl:                                            ; preds = %_ZN9grpc_core17CoreConfiguration3GetEv.exit134
  br i1 %i.jt, label %bb.dc, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  store i64 29, ptr %20, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.16, ptr %i.ju, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #43
  %i.jv = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.jw = load i64, ptr %i.q, align 8, !tbaa !317
  store i64 %i.jw, ptr %21, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.jv, ptr %i.jx, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.cn unwind label %bb.da

bb.cn:                                            ; preds = %bb.cm
  %i.jy = load ptr, ptr %19, align 8, !tbaa !75
  %i.jz = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  invoke void @_ZN9grpc_core12StatusCreateEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEERKNS_13DebugLocationESt6vectorINS1_6StatusESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %18, i32 noundef 2, i64 %i.ka, ptr %i.jy, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 8 %23)
          to label %bb.co unwind label %bb.db

bb.co:                                            ; preds = %bb.cn
  %i.kb = load i64, ptr %2, align 8, !tbaa !132   ; 4 uses
  %i.kc = load i64, ptr %18, align 8, !tbaa !132  ; 2 uses
  %.not.i139 = icmp eq i64 %i.kc, %i.kb
  br i1 %.not.i139, label %_ZN4absl12lts_202505126StatusaSEOS1_.exit140, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i64 %i.kc, ptr %2, align 8, !tbaa !132
  store i64 55, ptr %18, align 8, !tbaa !132
  %i.kd = trunc i64 %i.kb to i1
  br i1 %i.kd, label %_ZN4absl12lts_202505126StatusD2Ev.exit141, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ke = inttoptr i64 %i.kb to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ke)
          to label %._ZN4absl12lts_202505126StatusaSEOS1_.exit140_crit_edge unwind label %bb.cr

._ZN4absl12lts_202505126StatusaSEOS1_.exit140_crit_edge: ; preds = %bb.cq
  %.pre248 = load i64, ptr %18, align 8, !tbaa !132
  br label %_ZN4absl12lts_202505126StatusaSEOS1_.exit140

bb.cr:                                            ; preds = %bb.cq
  %i.kf = landingpad { ptr, i32 }
          catch ptr null
  %i.kg = extractvalue { ptr, i32 } %i.kf, 0
  call void @__clang_call_terminate(ptr %i.kg) #47
  unreachable

_ZN4absl12lts_202505126StatusaSEOS1_.exit140:     ; preds = %._ZN4absl12lts_202505126StatusaSEOS1_.exit140_crit_edge, %bb.co
  %i.kh = phi i64 [ %.pre248, %._ZN4absl12lts_202505126StatusaSEOS1_.exit140_crit_edge ], [ %i.kb, %bb.co ] ; 2 uses
  %i.ki = trunc i64 %i.kh to i1
  br i1 %i.ki, label %_ZN4absl12lts_202505126StatusD2Ev.exit141, label %bb.cs

bb.cs:                                            ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit140
  %i.kj = inttoptr i64 %i.kh to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.kj)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit141 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  call void @__clang_call_terminate(ptr %i.kl) #47
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit141:        ; preds = %bb.cp, %_ZN4absl12lts_202505126StatusaSEOS1_.exit140, %bb.cs
  %i.km = load ptr, ptr %23, align 8, !tbaa !329  ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !330 ; 2 uses
  %.not4.i.i.i142 = icmp eq ptr %i.km, %i.ko
  br i1 %.not4.i.i.i142, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i149, label %.lr.ph.i.i.i143

.lr.ph.i.i.i143:                                  ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit141, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i145
  %.05.i.i.i144 = phi ptr [ %i.ku, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i145 ], [ %i.km, %_ZN4absl12lts_202505126StatusD2Ev.exit141 ] ; 2 uses
  %i.kp = load i64, ptr %.05.i.i.i144, align 8, !tbaa !132 ; 2 uses
  %i.kq = trunc i64 %i.kp to i1
  br i1 %i.kq, label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i145, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i143
  %i.kr = inttoptr i64 %i.kp to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.kr)
          to label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i145 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #47
  unreachable

_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i145: ; preds = %bb.cu, %.lr.ph.i.i.i143
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i144, i64 8 ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %i.ku, %i.ko
  br i1 %.not.i.i.i146, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i147, label %.lr.ph.i.i.i143, !llvm.loop !4

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i147: ; preds = %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i145
  %.pr.i148 = load ptr, ptr %23, align 8, !tbaa !329
  br label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i149

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i149: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i147, %_ZN4absl12lts_202505126StatusD2Ev.exit141
  %i.kv = phi ptr [ %.pr.i148, %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i147 ], [ %i.km, %_ZN4absl12lts_202505126StatusD2Ev.exit141 ] ; 3 uses
  %.not.i.i1.i150 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i1.i150, label %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit151, label %bb.cw

bb.cw:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i149
  %i.kw = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !331
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.la) #45
  br label %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit151

_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit151: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i149, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.lb = load ptr, ptr %19, align 8, !tbaa !75   ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit151
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !76
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  br label %bb.ef

bb.cx:                                            ; preds = %bb.bx, %_ZN9grpc_core17CoreConfiguration3GetEv.exit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit157

bb.cy:                                            ; preds = %.noexc.i.i
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.li = load i8, ptr %i.hl, align 8, !tbaa !334, !range !68, !noundef !69
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.cz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit157

bb.cz:                                            ; preds = %bb.cy
  store i8 0, ptr %i.hl, align 8, !tbaa !334
  %i.lk = load ptr, ptr %17, align 8, !tbaa !75   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155: ; preds = %bb.cz
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !76
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #45
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit157

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit157: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155, %bb.cy, %bb.cx
  %.pn57 = phi { ptr, i32 } [ %i.lg, %bb.cx ], [ %i.lh, %bb.cy ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155 ], [ %i.lh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.ep

bb.da:                                            ; preds = %bb.cm
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.db:                                            ; preds = %bb.cn
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.lr = load ptr, ptr %19, align 8, !tbaa !75   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.db
  %i.lu = load i64, ptr %i.ls, align 8, !tbaa !76
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.da
  %.pn59 = phi { ptr, i32 } [ %i.lp, %bb.da ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %i.lq, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  br label %bb.ep

bb.dc:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  invoke void @_ZNK9grpc_core11ChannelArgs6RemoveESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::ChannelArgs") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 19, ptr nonnull @.str.12)
          to label %bb.dd unwind label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.lw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %24) #43 ; 0 uses
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  %i.lx = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 22, ptr nonnull @.str.17)
          to label %bb.de unwind label %bb.dh     ; 2 uses

bb.de:                                            ; preds = %bb.dd
  %i.ly = and i64 %i.lx, 4294967296
  %.not = icmp eq i64 %i.ly, 0
  br i1 %.not, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.0233.0.extract.trunc = trunc i64 %i.lx to i32
  %.0.i161 = call i32 @llvm.smax.i32(i32 %.sroa.0233.0.extract.trunc, i32 1)
  %i.lz = zext nneg i32 %.0.i161 to i64
  store i64 %i.lz, ptr %i.bm, align 8, !tbaa !244
  br label %bb.di

bb.dg:                                            ; preds = %bb.dc
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  br label %bb.ep

bb.dh:                                            ; preds = %_ZN9grpc_core17CoreConfiguration3GetEv.exit134, %bb.ck, %bb.dd
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.di:                                            ; preds = %bb.df, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  invoke void @_ZNK9grpc_core11ChannelArgs14GetOwnedStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.82") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 22, ptr nonnull @.str.18)
          to label %bb.dj unwind label %bb.ds

bb.dj:                                            ; preds = %bb.di
  %i.mc = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 5 uses
  %i.md = load i8, ptr %i.mc, align 8, !tbaa !334, !range !68, !noundef !69
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.du, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  %i.mf = load atomic ptr, ptr @_ZN9grpc_core17CoreConfiguration7config_E acquire, align 8 ; 2 uses
  %.not.i162 = icmp eq ptr %i.mf, null
  br i1 %.not.i162, label %bb.dl, label %_ZN9grpc_core17CoreConfiguration3GetEv.exit165

bb.dl:                                            ; preds = %bb.dk
  %i.mg = invoke noundef nonnull align 8 dereferenceable(1928) ptr @_ZN9grpc_core17CoreConfiguration19BuildNewAndMaybeSetEv()
          to label %_ZN9grpc_core17CoreConfiguration3GetEv.exit165 unwind label %bb.dt

_ZN9grpc_core17CoreConfiguration3GetEv.exit165:   ; preds = %bb.dk, %bb.dl
  %.0.i163 = phi ptr [ %i.mf, %bb.dk ], [ %i.mg, %bb.dl ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i163, i64 1632
  %i.mi = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.mj = load i64, ptr %i.n, align 8, !tbaa !317
  invoke void @_ZNK9grpc_core16ResolverRegistry19GetDefaultAuthorityB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(80) %i.mh, i64 %i.mj, ptr %i.mi)
          to label %bb.dm unwind label %bb.dt

bb.dm:                                            ; preds = %_ZN9grpc_core17CoreConfiguration3GetEv.exit165
  %i.mk = load ptr, ptr %i.r, align 8, !tbaa !75  ; 6 uses
  %i.ml = icmp eq ptr %i.mk, %i.s
  %i.mm = load ptr, ptr %26, align 8, !tbaa !75   ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.mo = icmp eq ptr %i.mm, %i.mn                ; 2 uses
  br i1 %i.ml, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i173: ; preds = %bb.dm
  br i1 %i.mo, label %bb.dn, label %.thread.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i168: ; preds = %bb.dm
  br i1 %i.mo, label %bb.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i169

bb.dn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i173
  %i.mp = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !317 ; 3 uses
  %i.mr = icmp ult i64 %i.mq, 16
  call void @llvm.assume(i1 %i.mr)
  switch i64 %i.mq, label %bb.dp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i171
    i64 1, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn
  %i.ms = load i8, ptr %i.mm, align 1, !tbaa !76
  store i8 %i.ms, ptr %i.mk, align 1, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i171

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mk, ptr align 1 %i.mm, i64 %i.mq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i171: ; preds = %bb.dp, %bb.do, %bb.dn
  %i.mt = load i64, ptr %i.mp, align 8, !tbaa !317 ; 2 uses
  store i64 %i.mt, ptr %i.t, align 8, !tbaa !317
  %i.mu = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mt
  store i8 0, ptr %i.mv, align 1, !tbaa !76
  %.pre.i172 = load ptr, ptr %26, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit175

.thread.i174:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i173
  store ptr %i.mm, ptr %i.r, align 8, !tbaa !75
  %i.mw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.mx = load <2 x i64>, ptr %i.mw, align 8, !tbaa !76
  store <2 x i64> %i.mx, ptr %i.t, align 8, !tbaa !76
  br label %bb.dr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i169: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i168
  %i.my = load i64, ptr %i.s, align 8, !tbaa !76
  store ptr %i.mm, ptr %i.r, align 8, !tbaa !75
  %i.mz = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.na = load <2 x i64>, ptr %i.mz, align 8, !tbaa !76
  store <2 x i64> %i.na, ptr %i.t, align 8, !tbaa !76
  %.not.i170 = icmp eq ptr %i.mk, null
  br i1 %.not.i170, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i169
  store ptr %i.mk, ptr %26, align 8, !tbaa !75
  store i64 %i.my, ptr %i.mn, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit175

bb.dr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i169, %.thread.i174
  store ptr %i.mn, ptr %26, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i171, %bb.dq, %bb.dr
  %i.nb = phi ptr [ %i.mk, %bb.dq ], [ %i.mn, %bb.dr ], [ %.pre.i172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i171 ]
  %i.nc = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.nc, align 8, !tbaa !317
  store i8 0, ptr %i.nb, align 1, !tbaa !76
  %i.nd = load ptr, ptr %26, align 8, !tbaa !75   ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit175
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !76
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nh) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  br label %bb.ea

bb.ds:                                            ; preds = %bb.di
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit199

bb.dt:                                            ; preds = %bb.dl, %_ZN9grpc_core17CoreConfiguration3GetEv.exit165
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.nk = load i8, ptr %i.mc, align 8, !tbaa !334, !range !68, !noundef !69
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %bb.eo, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit199

bb.du:                                            ; preds = %bb.dj
  %i.nm = load ptr, ptr %i.r, align 8, !tbaa !75  ; 6 uses
  %i.nn = icmp eq ptr %i.nm, %i.s
  %i.no = load ptr, ptr %25, align 8, !tbaa !75   ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.nq = icmp eq ptr %i.no, %i.np                ; 2 uses
  br i1 %i.nn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i184: ; preds = %bb.du
  br i1 %i.nq, label %bb.dv, label %.thread.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i179: ; preds = %bb.du
  br i1 %i.nq, label %bb.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i180

bb.dv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i184
  %i.nr = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !317 ; 3 uses
  %i.nt = icmp ult i64 %i.ns, 16
  call void @llvm.assume(i1 %i.nt)
  switch i64 %i.ns, label %bb.dx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182
    i64 1, label %bb.dw
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.nu = load i8, ptr %i.no, align 1, !tbaa !76
  store i8 %i.nu, ptr %i.nm, align 1, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nm, ptr align 1 %i.no, i64 %i.ns, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182: ; preds = %bb.dx, %bb.dw, %bb.dv
  %i.nv = load i64, ptr %i.nr, align 8, !tbaa !317 ; 2 uses
  store i64 %i.nv, ptr %i.t, align 8, !tbaa !317
  %i.nw = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nv
  store i8 0, ptr %i.nx, align 1, !tbaa !76
  %.pre.i183 = load ptr, ptr %25, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186

.thread.i185:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i184
  store ptr %i.no, ptr %i.r, align 8, !tbaa !75
  %i.ny = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.nz = load <2 x i64>, ptr %i.ny, align 8, !tbaa !76
  store <2 x i64> %i.nz, ptr %i.t, align 8, !tbaa !76
  br label %bb.dz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i180: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i179
  %i.oa = load i64, ptr %i.s, align 8, !tbaa !76
  store ptr %i.no, ptr %i.r, align 8, !tbaa !75
  %i.ob = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.oc = load <2 x i64>, ptr %i.ob, align 8, !tbaa !76
  store <2 x i64> %i.oc, ptr %i.t, align 8, !tbaa !76
  %.not.i181 = icmp eq ptr %i.nm, null
  br i1 %.not.i181, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i180
  store ptr %i.nm, ptr %25, align 8, !tbaa !75
  store i64 %i.oa, ptr %i.np, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i180, %.thread.i185
  store ptr %i.np, ptr %25, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182, %bb.dy, %bb.dz
  %i.od = phi ptr [ %i.nm, %bb.dy ], [ %i.np, %bb.dz ], [ %.pre.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182 ]
  %i.oe = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.oe, align 8, !tbaa !317
  store i8 0, ptr %i.od, align 1, !tbaa !76
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186
  %i.of = load i64, ptr %2, align 8, !tbaa !132   ; 3 uses
  %.not.i187 = icmp eq i64 %i.of, 1
  br i1 %.not.i187, label %_ZN4absl12lts_202505126StatusD2Ev.exit189, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i64 1, ptr %2, align 8, !tbaa !132
  %i.og = trunc i64 %i.of to i1
  br i1 %i.og, label %_ZN4absl12lts_202505126StatusD2Ev.exit189, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oh = inttoptr i64 %i.of to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.oh)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit189 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #47
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit189:        ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.ok = load i8, ptr %i.mc, align 8, !tbaa !334, !range !68, !noundef !69
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.ee, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit192

bb.ee:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit189
  store i8 0, ptr %i.mc, align 8, !tbaa !334
  %i.om = load ptr, ptr %25, align 8, !tbaa !75   ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i190: ; preds = %bb.ee
  %i.op = load i64, ptr %i.on, align 8, !tbaa !76
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.oq) #45
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit192

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit192: ; preds = %bb.ee, %_ZN4absl12lts_202505126StatusD2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %bb.ef

bb.ef:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit116
  %i.or = load i8, ptr %i.fi, align 8, !tbaa !334, !range !68, !noundef !69
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.eg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit195

bb.eg:                                            ; preds = %bb.ef
  store i8 0, ptr %i.fi, align 8, !tbaa !334
  %i.ot = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193: ; preds = %bb.eg
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !76
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #45
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit195

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit195: ; preds = %bb.eg, %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit195, %_ZN4absl12lts_202505126StatusD2Ev.exit102
  %i.oy = load i64, ptr %9, align 8, !tbaa !132   ; 3 uses
  %i.oz = icmp eq i64 %i.oy, 1
  br i1 %i.oz, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.ek

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.eh
  %i.pa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !315 ; 4 uses
  %.not.i.i196 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i196, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = atomicrmw add ptr %i.pc, i64 -1 acq_rel, align 8
  %i.pe = icmp eq i64 %i.pd, 1
  br i1 %i.pe, label %bb.ej, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEED2Ev.exit, !prof !70

bb.ej:                                            ; preds = %bb.ei
  %i.pf = load ptr, ptr %i.pb, align 8, !tbaa !234
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #43, !inline_history !6
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEED2Ev.exit

bb.ek:                                            ; preds = %bb.eh
  %i.pi = trunc i64 %i.oy to i1
  br i1 %i.pi, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEED2Ev.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.pj = inttoptr i64 %i.oy to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.pj)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEED2Ev.exit unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.pk = landingpad { ptr, i32 }
          catch ptr null
  %i.pl = extractvalue { ptr, i32 } %i.pk, 0
  call void @__clang_call_terminate(ptr %i.pl) #47
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.ei, %bb.ej, %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.en

bb.en:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEED2Ev.exit, %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit
  ret void

bb.eo:                                            ; preds = %bb.dt
  store i8 0, ptr %i.mc, align 8, !tbaa !334
  %i.pm = load ptr, ptr %25, align 8, !tbaa !75   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i197: ; preds = %bb.eo
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !76
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #45
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit199

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit199: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i197, %bb.dt, %bb.ds
  %.pn62.pn = phi { ptr, i32 } [ %i.ni, %bb.ds ], [ %i.nj, %bb.dt ], [ %i.nj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i197 ], [ %i.nj, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %bb.ep

bb.ep:                                            ; preds = %bb.dh, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit199, %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit157, %bb.bq
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.bq ], [ %i.ma, %bb.dg ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.mb, %bb.dh ], [ %.pn57, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit157 ], [ %.pn62.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit199 ] ; 3 uses
  %i.pr = load i8, ptr %i.fi, align 8, !tbaa !334, !range !68, !noundef !69
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.eq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit202

bb.eq:                                            ; preds = %bb.ep
  store i8 0, ptr %i.fi, align 8, !tbaa !334
  %i.pt = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i200: ; preds = %bb.eq
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !76
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #45
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit202

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit202: ; preds = %bb.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i200, %bb.ep, %bb.bp
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.bp ], [ %.pn62.pn.pn.pn, %bb.ep ], [ %.pn62.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i200 ], [ %.pn62.pn.pn.pn, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  br label %bb.er

bb.er:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit202, %bb.ba
  %.pn62.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit202 ], [ %i.ey, %bb.ba ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #43
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.az
  %.pn62.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn, %bb.er ], [ %i.ex, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.aj
  %.pn62.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn.pn, %bb.es ], [ %i.dw, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ag, %bb.af, %bb.aa
  %.pn71 = phi { ptr, i32 } [ %i.dr, %bb.ag ], [ %.pn62.pn.pn.pn.pn.pn.pn.pn, %bb.et ], [ %i.dn, %bb.aa ], [ %.pn52.pn, %bb.af ] ; 3 uses
  call void @_ZNSt3mapIP12grpc_closureN9grpc_core13RefCountedPtrINS2_19ClientChannelFilter27ExternalConnectivityWatcherEEESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bw) #43
  %i.py = load ptr, ptr %i.bs, align 8, !tbaa !75 ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.bt
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.eu
  %i.qa = load i64, ptr %i.bt, align 8, !tbaa !76
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qb) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  %i.qc = load ptr, ptr %i.bp, align 8, !tbaa !75 ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.bq
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.qe = load i64, ptr %i.bq, align 8, !tbaa !76
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #43
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bl) #43
  %i.qg = load ptr, ptr %i.az, align 8, !tbaa !326 ; 4 uses
  %.not.i209 = icmp eq ptr %i.qg, null
  br i1 %.not.i209, label %_ZN9grpc_core13RefCountedPtrINS_23SubchannelPoolInterfaceEED2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = atomicrmw add ptr %i.qh, i64 -1 acq_rel, align 8
  %i.qj = icmp eq i64 %i.qi, 1
  br i1 %i.qj, label %bb.ew, label %_ZN9grpc_core13RefCountedPtrINS_23SubchannelPoolInterfaceEED2Ev.exit, !prof !70

bb.ew:                                            ; preds = %bb.ev
  %i.qk = load ptr, ptr %i.qg, align 8, !tbaa !234
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  call void %i.qm(ptr noundef nonnull align 8 dereferenceable(16) %i.qg) #43, !inline_history !7
  br label %_ZN9grpc_core13RefCountedPtrINS_23SubchannelPoolInterfaceEED2Ev.exit

_ZN9grpc_core13RefCountedPtrINS_23SubchannelPoolInterfaceEED2Ev.exit: ; preds = %bb.ew, %bb.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %bb.z
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.z ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %.pn71, %bb.ev ], [ %.pn71, %bb.ew ]
  %i.qn = load ptr, ptr %i.ay, align 8, !tbaa !335 ; 3 uses
  %.not.i210 = icmp eq ptr %i.qn, null
  br i1 %.not.i210, label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicyENS0_16OrphanableDeleteEED2Ev.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_23SubchannelPoolInterfaceEED2Ev.exit
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !234
  %i.qp = load ptr, ptr %i.qo, align 8
  invoke void %i.qp(ptr noundef nonnull align 8 dereferenceable(56) %i.qn)
          to label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicyENS0_16OrphanableDeleteEED2Ev.exit unwind label %bb.ey, !inline_history !8

bb.ey:                                            ; preds = %bb.ex
  %i.qq = landingpad { ptr, i32 }
          catch ptr null
  %i.qr = extractvalue { ptr, i32 } %i.qq, 0
  call void @__clang_call_terminate(ptr %i.qr) #47
  unreachable

_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicyENS0_16OrphanableDeleteEED2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_23SubchannelPoolInterfaceEED2Ev.exit, %bb.ex
  call void @_ZN9grpc_core32RetryThrottlerChannelArgsUpdaterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #43
  %i.qs = load ptr, ptr %i.aw, align 8, !tbaa !336 ; 4 uses
  %.not.i211 = icmp eq ptr %i.qs, null
  br i1 %.not.i211, label %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicyENS0_16OrphanableDeleteEED2Ev.exit
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = atomicrmw add ptr %i.qt, i64 -1 acq_rel, align 8
  %i.qv = icmp eq i64 %i.qu, 1
  br i1 %i.qv, label %bb.fa, label %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit, !prof !70

bb.fa:                                            ; preds = %bb.ez
  %i.qw = load ptr, ptr %i.qs, align 8, !tbaa !234
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(16) %i.qs) #43, !inline_history !9
  br label %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit

_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicyENS0_16OrphanableDeleteEED2Ev.exit, %bb.ez, %bb.fa
  %i.qz = load ptr, ptr %i.av, align 8, !tbaa !315 ; 4 uses
  %.not.i212 = icmp eq ptr %i.qz, null
  br i1 %.not.i212, label %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = atomicrmw add ptr %i.ra, i64 -1 acq_rel, align 8
  %i.rc = icmp eq i64 %i.rb, 1
  br i1 %i.rc, label %bb.fc, label %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit, !prof !70

bb.fc:                                            ; preds = %bb.fb
  %i.rd = load ptr, ptr %i.qz, align 8, !tbaa !234
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(16) %i.qz) #43, !inline_history !10
  br label %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit

_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit, %bb.fb, %bb.fc
  %i.rg = load ptr, ptr %i.at, align 8, !tbaa !337 ; 3 uses
  %.not.i213 = icmp eq ptr %i.rg, null
  br i1 %.not.i213, label %_ZNSt10unique_ptrIN9grpc_core8ResolverENS0_16OrphanableDeleteEED2Ev.exit, label %bb.fd

bb.fd:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !234
  %i.ri = load ptr, ptr %i.rh, align 8
  invoke void %i.ri(ptr noundef nonnull align 8 dereferenceable(16) %i.rg)
          to label %_ZNSt10unique_ptrIN9grpc_core8ResolverENS0_16OrphanableDeleteEED2Ev.exit unwind label %bb.fe, !inline_history !11

bb.fe:                                            ; preds = %bb.fd
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  %i.rk = extractvalue { ptr, i32 } %i.rj, 0
  call void @__clang_call_terminate(ptr %i.rk) #47
  unreachable

_ZNSt10unique_ptrIN9grpc_core8ResolverENS0_16OrphanableDeleteEED2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit, %bb.fd
  call void @_ZN9grpc_core24ConnectivityStateTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ap) #43
  call void @_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ai) #43
  br label %.body

.body:                                            ; preds = %bb.y, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core14WorkSerializerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %_ZNSt10unique_ptrIN9grpc_core8ResolverENS0_16OrphanableDeleteEED2Ev.exit
  %.pn71.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn, %_ZNSt10unique_ptrIN9grpc_core8ResolverENS0_16OrphanableDeleteEED2Ev.exit ], [ %i.dl, %bb.y ], [ %i.am, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core14WorkSerializerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_19ClientChannelFilter16LoadBalancedCallEEEEENS4_17RefCountedPtrHashIS7_EENS4_15RefCountedPtrEqIS7_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ah) #43
  call void @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #43
  %i.rl = load ptr, ptr %i.af, align 8, !tbaa !336 ; 4 uses
  %.not.i214 = icmp eq ptr %i.rl, null
  br i1 %.not.i214, label %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit215, label %bb.ff

bb.ff:                                            ; preds = %.body
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = atomicrmw add ptr %i.rm, i64 -1 acq_rel, align 8
  %i.ro = icmp eq i64 %i.rn, 1
  br i1 %i.ro, label %bb.fg, label %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit215, !prof !70

bb.fg:                                            ; preds = %bb.ff
  %i.rp = load ptr, ptr %i.rl, align 8, !tbaa !234
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(16) %i.rl) #43, !inline_history !9
  br label %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit215

_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit215: ; preds = %.body, %bb.ff, %bb.fg
  %i.rs = load ptr, ptr %i.ae, align 8, !tbaa !315 ; 4 uses
  %.not.i216 = icmp eq ptr %i.rs, null
  br i1 %.not.i216, label %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit217, label %bb.fh

bb.fh:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit215
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = atomicrmw add ptr %i.rt, i64 -1 acq_rel, align 8
  %i.rv = icmp eq i64 %i.ru, 1
  br i1 %i.rv, label %bb.fi, label %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit217, !prof !70

bb.fi:                                            ; preds = %bb.fh
  %i.rw = load ptr, ptr %i.rs, align 8, !tbaa !234
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(16) %i.rs) #43, !inline_history !10
  br label %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit217

_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit217: ; preds = %_ZN9grpc_core13RefCountedPtrINS_14ConfigSelectorEED2Ev.exit215, %bb.fh, %bb.fi
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #43
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core19ClientChannelFilter8CallDataEEENS1_6HashEqIS7_vE4HashENSA_2EqESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ab) #43
  br label %bb.fj

bb.fj:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit217, %bb.x
  %.pn71.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn.pn.pn, %_ZN9grpc_core13RefCountedPtrINS_13ServiceConfigEED2Ev.exit217 ], [ %i.dk, %bb.x ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEv:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = atomicrmw add ptr %i.by, i64 -1 acq_rel, align 8
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.al, label %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit61, !prof !70

bb.al:                                            ; preds = %bb.ak
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !234
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #43, !inline_history !1263
  br label %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit61

_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit61: ; preds = %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %.thread

bb.am:                                            ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.an:                                            ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ao:                                            ; preds = %bb.u, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit57
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %bb.v, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit58
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aq:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.ar:                                            ; preds = %bb.x, %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.ar
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !76
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.aq
  %.pn35 = phi { ptr, i32 } [ %i.ci, %bb.aq ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.cj, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.ap
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %i.ch, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.as ], [ %i.cg, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %bb.au

bb.au:                                            ; preds = %bb.an, %bb.at
  %.pn35.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn, %bb.at ], [ %i.cf, %bb.an ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #46
  br label %bb.av

bb.av:                                            ; preds = %bb.am, %bb.au
  %.pn35.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn, %bb.au ], [ %i.ce, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %.thread

bb.aw:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #43
  br label %.thread

bb.ax:                                            ; preds = %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cr = load ptr, ptr %i.ae, align 16, !tbaa !130 ; 2 uses
  %.not.i65 = icmp eq ptr %i.cr, null
  br i1 %.not.i65, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN9grpc_core14DynamicFilters4Call17IncrementRefCountEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %bb.ay
  %.pre.i66 = load ptr, ptr %i.ae, align 16, !tbaa !130
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %.noexc
  %i.cs = phi ptr [ %.pre.i66, %.noexc ], [ null, %bb.ax ]
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.cs, ptr %1, align 16, !tbaa !130
  store ptr null, ptr %9, align 16, !tbaa !130
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateES9_", ptr %i.cv, align 16, !tbaa !558
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvE3$_0JP30grpc_transport_stream_op_batchEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.cw, align 8, !tbaa !559
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.cu, align 16, !tbaa !558
  store ptr null, ptr %i.ct, align 8, !tbaa !559
  invoke void @_ZN9grpc_core12BufferedCall6ResumeEN4absl12lts_2025051212AnyInvocableIFvP30grpc_transport_stream_op_batchEEEPFbRKNS_23CallCombinerClosureListEE(ptr noundef nonnull align 16 dereferenceable(96) %i.cq, ptr noundef nonnull align 16 %1, ptr noundef nonnull @_ZN9grpc_core12BufferedCall17YieldCallCombinerERKNS_23CallCombinerClosureListE)
          to label %"_ZZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvEN3$_0D2Ev.exit" unwind label %.body

.body:                                            ; preds = %bb.az
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %i.cv, align 16, !tbaa !558
  call void %i.cy(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %1) #43, !inline_history !34
  %i.cz = load ptr, ptr %i.cu, align 16, !tbaa !558
  call void %i.cz(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9) #43, !inline_history !35
  br label %.thread

"_ZZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvEN3$_0D2Ev.exit": ; preds = %bb.az
  %i.da = load ptr, ptr %i.cv, align 16, !tbaa !558
  call void %i.da(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %1) #43, !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.db = load ptr, ptr %i.cu, align 16, !tbaa !558
  call void %i.db(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9) #43, !inline_history !35
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.ab, %bb.aa, %"_ZZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvEN3$_0D2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.dc = load i64, ptr %2, align 8, !tbaa !132   ; 2 uses
  %i.dd = trunc i64 %i.dc to i1
  br i1 %i.dd, label %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit70, label %bb.ba

bb.ba:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.de = inttoptr i64 %i.dc to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.de)
          to label %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit70 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #47
  unreachable

_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit70: ; preds = %bb.ba, %_ZN4absl12lts_202505126StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void

bb.bc:                                            ; preds = %bb.ay
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.bc, %bb.aw, %bb.av, %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit61, %.body
  %.pn41.pn.pn.ph = phi { ptr, i32 } [ %i.cx, %.body ], [ %i.bw, %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit61 ], [ %.pn35.pn.pn.pn.pn, %bb.av ], [ %i.cp, %bb.aw ], [ %i.dh, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit72

bb.bd:                                            ; preds = %bb.ai, %bb.ad
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.bs, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %.not.i.i71 = icmp eq ptr %i.j, null
  br i1 %.not.i.i71, label %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit72, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dj = atomicrmw add ptr %i.di, i64 -1 acq_rel, align 8
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.bf, label %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit72, !prof !70

bb.bf:                                            ; preds = %bb.be
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !234
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #43, !inline_history !1263
  br label %_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit72

_ZN9grpc_core14DynamicFilters4Call4ArgsD2Ev.exit72: ; preds = %.thread, %bb.bd, %bb.be, %bb.bf
  %.pn41.pn.pn94 = phi { ptr, i32 } [ %.pn41.pn.pn.ph, %.thread ], [ %.pn.pn.pn, %bb.bd ], [ %.pn.pn.pn, %bb.be ], [ %.pn.pn.pn, %bb.bf ]
  resume { ptr, i32 } %.pn41.pn.pn94
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN4absl12lts_202505126StatusELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !554, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4absl12lts_202505126StatusELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !554
  %i.d = load i64, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZNSt17_Optional_payloadIN4absl12lts_202505126StatusELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZNSt17_Optional_payloadIN4absl12lts_202505126StatusELb0ELb0ELb0EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #47
  unreachable

_ZNSt17_Optional_payloadIN4absl12lts_202505126StatusELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKN9grpc_core14DynamicFiltersEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !544
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.f
}

declare void @_ZNK9grpc_core14DynamicFilters10CreateCallENS0_4Call4ArgsEPN4absl12lts_202505126StatusE(ptr dead_on_unwind writable sret(%"class.grpc_core::RefCountedPtr.194") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core34ClientChannelServiceConfigCallDataEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !265
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK9grpc_core19ClientChannelFilter16LoadBalancedCall11LbCallState16GetCallAttributeENS_14UniqueTypeNameE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, ptr nofree readnone captures(address) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !563
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !564
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i16, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_21ServiceConfigCallDataEE3id_E, align 2, !tbaa !262
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1266 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNK9grpc_core21ServiceConfigCallData16GetCallAttributeENS_14UniqueTypeNameE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !566
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK9grpc_core21ServiceConfigCallData16GetCallAttributeENS_14UniqueTypeNameE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i
  %.sroa.8.019.i = phi i64 [ %storemerge.lcssa.i.i, %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.011.018.i = phi ptr [ %.sroa.011.2.i, %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i ], [ %i.k, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i, i64 16
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.8.019.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1268 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call { i64, ptr } %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !1264
  %i.v = extractvalue { i64, ptr } %i.u, 1
  %i.w = icmp eq ptr %i.v, %2
  br i1 %i.w, label %_ZNK9grpc_core21ServiceConfigCallData16GetCallAttributeENS_14UniqueTypeNameE.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i
  %i.x = add i64 %.sroa.8.019.i, 1                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !566
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i

bb.c:                                             ; preds = %.lr.ph.preheader.i.i
  %i.ab = load ptr, ptr %.sroa.011.018.i, align 8, !tbaa !1269 ; 2 uses
  %.not.peel.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.peel.i.i, label %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.011.1.i = phi ptr [ %i.af, %bb.d ], [ %i.ab, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !566
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = load ptr, ptr %.sroa.011.1.i, align 8, !tbaa !1269 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.af, null
  br i1 %.not.i9.i, label %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1265

_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i: ; preds = %bb.d, %.lr.ph.i.i, %bb.c, %.lr.ph.preheader.i.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.018.i, %.lr.ph.preheader.i.i ], [ null, %bb.c ], [ null, %bb.d ], [ %.sroa.011.1.i, %.lr.ph.i.i ] ; 2 uses
  %storemerge.lcssa.i.i = phi i64 [ %i.x, %.lr.ph.preheader.i.i ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ag = icmp ne ptr %.sroa.011.2.i, null
  %i.ah = icmp ne i64 %storemerge.lcssa.i.i, 0
  %.not3.i.i = or i1 %i.ag, %i.ah
  br i1 %.not3.i.i, label %.lr.ph.i, label %_ZNK9grpc_core21ServiceConfigCallData16GetCallAttributeENS_14UniqueTypeNameE.exit

_ZNK9grpc_core21ServiceConfigCallData16GetCallAttributeENS_14UniqueTypeNameE.exit: ; preds = %.lr.ph.i, %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i, %bb.a, %bb.b
  %i.ai = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %_ZN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE20ConstForwardIteratorppEv.exit.i ], [ %i.q, %.lr.ph.i ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK9grpc_core19ClientChannelFilter16LoadBalancedCall11LbCallState20GetCallAttemptTracerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !563
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !568
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core19ClientChannelFilter16LoadBalancedCallC2EPS0_RK22grpc_call_element_argsP19grpc_polling_entityP12grpc_closureN4absl12lts_2025051212AnyInvocableIFvvEEEb(ptr noundef nonnull align 16 dereferenceable(400) initializes((0, 72)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef %3, ptr noundef %4, ptr noundef align 16 %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core28client_channel_lb_call_traceE, i64 8) monotonic, align 8, !range !68, !noundef !69 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !286
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core19ClientChannelFilter16LoadBalancedCallE, i64 16), ptr %0, align 16, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.d, align 16, !tbaa !496
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !246  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.h = load i16, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8CallSpanEE3id_E, align 2, !tbaa !262
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !263  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1274 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !234
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i1 noundef zeroext %6), !inline_history !1270 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN9grpc_core21WrapCallAttemptTracerEPNS_25ClientCallTracerInterface17CallAttemptTracerEPNS_5ArenaE.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = atomicrmw add ptr %i.t, i64 48 monotonic, align 8 ; 2 uses
  %i.v = add i64 %i.u, 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
end_hunk_1
begin_hunk_2_@_ZN9grpc_core19ClientChannelFilter16LoadBalancedCallC2EPS0_RK22grpc_call_element_argsP19grpc_polling_entityP12grpc_closureN4absl12lts_2025051212AnyInvocableIFvvEEEb:bb.a
  store ptr %i.al, ptr %i.ak, align 16, !tbaa !575
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !257
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !576
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.ap, align 16, !tbaa !495
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.aq, align 8, !tbaa !577
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ai, ptr %i.ar, align 16, !tbaa !564
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !214
  tail call void %i.au(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) %i.as) #43, !inline_history !1271
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = load <2 x ptr>, ptr %i.at, align 16, !tbaa !263
  store <2 x ptr> %i.ax, ptr %i.av, align 16, !tbaa !263
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.at, align 16, !tbaa !214
  store ptr null, ptr %i.aw, align 8, !tbaa !213
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.bb, align 16, !tbaa !578
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bc, align 8, !tbaa !132
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i64 1, ptr %i.bd, align 16, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.bh, align 8, !tbaa !579
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !576
  invoke void @_ZN9grpc_core12BufferedCallC1EPNS_12CallCombinerEPNS_9TraceFlagE(ptr noundef nonnull align 16 dereferenceable(96) %i.bi, ptr noundef %i.bj, ptr noundef nonnull @_ZN9grpc_core28client_channel_lb_call_traceE)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.bk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core28client_channel_lb_call_traceE, i64 8) monotonic, align 8, !range !68, !noundef !69
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.g, label %bb.k, !prof !70

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.2, i32 noundef 2339) #44
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 6, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.h
  %i.bm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilterEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.i unwind label %bb.o       ; 2 uses

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 9, ptr nonnull @.str.84)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit: ; preds = %bb.i
  store ptr %0, ptr %i.a, align 8, !tbaa !243
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilter16LoadBalancedCallEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.p       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 9, ptr nonnull @.str.85)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit35 unwind label %bb.p

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit35: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %bb.l unwind label %bb.p

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge29

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %.critedge29

.critedge29:                                      ; preds = %bb.k, %bb.l
  ret void

bb.m:                                             ; preds = %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.i, %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit35, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn = phi { ptr, i32 } [ %i.br, %bb.p ], [ %i.bq, %bb.o ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #46
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.bp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @_ZN9grpc_core12BufferedCallD1Ev(ptr noundef nonnull align 16 dead_on_return(96) dereferenceable(96) %i.bi) #43
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.bo, %bb.m ]
  %i.bs = load ptr, ptr %i.bf, align 16, !tbaa !283 ; 3 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !234
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #47
  unreachable

_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #43
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #43
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ba) #43
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !580 ; 3 uses
  %.not.i37 = icmp eq ptr %i.by, null
  br i1 %.not.i37, label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i: ; preds = %_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !234
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by) #43, !inline_history !36
  br label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit, %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i
  %i.cc = load ptr, ptr %i.av, align 16, !tbaa !214
  call void %i.cc(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.as, ptr noundef nonnull align 16 dereferenceable(32) %i.as) #43, !inline_history !0
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilter16LoadBalancedCallEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !243
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !578, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !578
  %i.d = load ptr, ptr %0, align 8, !tbaa !583    ; 4 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 1 to ptr)
  br i1 %i.e, label %bb.c, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !585
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit unwind label %bb.e, !inline_history !37

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #47
  unreachable

_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core19ClientChannelFilter16LoadBalancedCallD2Ev(ptr noundef nonnull align 16 dead_on_return(400) dereferenceable(400) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::DebugLocation", align 1 ; 3 uses
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !586 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN9grpc_core17BackendMetricDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !301
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_dESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEdSt4lessIS3_ESaISt4pairIKS3_dEEED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #47
  unreachable

_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEdSt4lessIS3_ESaISt4pairIKS3_dEEED2Ev.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !301
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_dESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
          to label %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEdSt4lessIS3_ESaISt4pairIKS3_dEEED2Ev.exit1.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEdSt4lessIS3_ESaISt4pairIKS3_dEEED2Ev.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #47
  unreachable

_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEdSt4lessIS3_ESaISt4pairIKS3_dEEED2Ev.exit1.i: ; preds = %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEdSt4lessIS3_ESaISt4pairIKS3_dEEED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !301
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_dESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
          to label %_ZN9grpc_core17BackendMetricDataD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEdSt4lessIS3_ESaISt4pairIKS3_dEEED2Ev.exit1.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #47
  unreachable

_ZN9grpc_core17BackendMetricDataD2Ev.exit:        ; preds = %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEdSt4lessIS3_ESaISt4pairIKS3_dEEED2Ev.exit1.i, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !577  ; 2 uses
  %.not1 = icmp eq ptr %i.s, null
  br i1 %.not1, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core17BackendMetricDataD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store i64 1, ptr %2, align 8, !tbaa !132, !alias.scope !1279
  invoke void @_ZN9grpc_core7ExecCtx3RunERKNS_13DebugLocationEP12grpc_closureN4absl12lts_202505126StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 %2)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %2, align 8, !tbaa !132    ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = inttoptr i64 %i.t to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #47
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZN9grpc_core17BackendMetricDataD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZN9grpc_core12BufferedCallD1Ev(ptr noundef nonnull align 16 dead_on_return(96) dereferenceable(96) %i.y) #43
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !283 ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !234
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #47
  unreachable

_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit: ; preds = %bb.j, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !132 ; 2 uses
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %_ZN4absl12lts_202505126StatusD2Ev.exit2, label %bb.m

bb.m:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit
  %i.aj = inttoptr i64 %i.ah to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit2 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #47
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit2:          ; preds = %_ZN9grpc_core13RefCountedPtrINS_10Subchannel4CallEED2Ev.exit, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load i64, ptr %i.am, align 8, !tbaa !132 ; 2 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %_ZN4absl12lts_202505126StatusD2Ev.exit3, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit2
  %i.ap = inttoptr i64 %i.an to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ap)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit3 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #47
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit3:          ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit2, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.at = load i8, ptr %i.as, align 16, !tbaa !578, !range !68, !noundef !69
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.q, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.as, align 16, !tbaa !578
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !583 ; 4 uses
  %i.ax = icmp ugt ptr %i.aw, inttoptr (i64 1 to ptr)
  br i1 %i.ax, label %bb.r, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ay = atomicrmw add ptr %i.aw, i64 -1 acq_rel, align 8
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.s, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !585
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit unwind label %bb.t, !inline_history !37

bb.t:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #47
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit3, %bb.q, %bb.r, %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !580 ; 3 uses
  %.not.i4 = icmp eq ptr %i.bf, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i: ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !234
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #43, !inline_history !36
  br label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit, %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !214
  call void %i.bl(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.bj, ptr noundef nonnull align 16 dereferenceable(32) %i.bj) #43, !inline_history !0
  ret void

bb.u:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #47
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core19ClientChannelFilter16LoadBalancedCallD0Ev(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN9grpc_core19ClientChannelFilter16LoadBalancedCallD1Ev(ptr noundef nonnull align 16 dead_on_return(400) dereferenceable(400) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 400) #45
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core19ClientChannelFilter16LoadBalancedCall6OrphanEv(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !587
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051214CancelledErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %1, i64 14, ptr nonnull @.str.86)
  invoke void @_ZN9grpc_core19ClientChannelFilter16LoadBalancedCall20RecordCallCompletionEN4absl12lts_202505126StatusEP19grpc_metadata_batchP27grpc_transport_stream_statsSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 16 dereferenceable(400) %0, ptr noundef nonnull align 8 %1, ptr noundef null, ptr noundef null, i64 0, ptr nonnull @.str.87)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !tbaa !132    ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #47
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #43
  resume { ptr, i32 } %i.i

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.d, %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !568  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN9grpc_core19ClientChannelFilter16LoadBalancedCall13RecordLatencyEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !574  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !inline_history !1280
  br label %_ZN9grpc_core19ClientChannelFilter16LoadBalancedCall13RecordLatencyEv.exit

_ZN9grpc_core19ClientChannelFilter16LoadBalancedCall13RecordLatencyEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 -1 acq_rel, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_ZN9grpc_core20InternallyRefCountedINS_19ClientChannelFilter16LoadBalancedCallENS_13UnrefCallDtorEE5UnrefEv.exit, !prof !70

bb.h:                                             ; preds = %_ZN9grpc_core19ClientChannelFilter16LoadBalancedCall13RecordLatencyEv.exit
  call void @_ZN9grpc_core19ClientChannelFilter16LoadBalancedCallD1Ev(ptr noundef nonnull align 16 dead_on_return(400) dereferenceable(400) %0) #43
  br label %_ZN9grpc_core20InternallyRefCountedINS_19ClientChannelFilter16LoadBalancedCallENS_13UnrefCallDtorEE5UnrefEv.exit

_ZN9grpc_core20InternallyRefCountedINS_19ClientChannelFilter16LoadBalancedCallENS_13UnrefCallDtorEE5UnrefEv.exit: ; preds = %_ZN9grpc_core19ClientChannelFilter16LoadBalancedCall13RecordLatencyEv.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core19ClientChannelFilter16LoadBalancedCall20RecordCallCompletionEN4absl12lts_202505126StatusEP19grpc_metadata_batchP27grpc_transport_stream_statsSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 16 dereferenceable(400) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef %2, ptr noundef %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 2 uses
  %8 = alloca %"class.grpc_core::LbMetadata", align 8 ; 7 uses
  %9 = alloca %"class.grpc_core::ClientChannelFilter::LoadBalancedCall::BackendMetricAccessor", align 8 ; 8 uses
  %10 = alloca %"struct.grpc_core::LoadBalancingPolicy::SubchannelCallTrackerInterface::FinishArgs", align 8 ; 13 uses
  %11 = alloca %"struct.grpc_core::LoadBalancingPolicy::SubchannelCallTrackerInterface::FinishArgs", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !568  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !132    ; 7 uses
  store i64 %i.c, ptr %7, align 8, !tbaa !132
  %i.d = trunc i64 %i.c to i1                     ; 2 uses
  br i1 %i.d, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread, label %bb.c

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !574
  store i64 %i.c, ptr %6, align 8, !tbaa !132
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %i.c to ptr
  %i.h = atomicrmw add ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !574
  store i64 %i.c, ptr %6, align 8, !tbaa !132
  %i.k = inttoptr i64 %i.c to ptr
  %i.l = atomicrmw add ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread, %bb.c
  %i.m = phi ptr [ %i.f, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread ], [ %i.j, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 %6, ptr noundef %2, ptr noundef %3)
          to label %bb.d unwind label %.body

bb.d:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  %i.q = load i64, ptr %6, align 8, !tbaa !132    ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = inttoptr i64 %i.q to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #47
  unreachable

.body:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #43
  br label %bb.t

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.d, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = inttoptr i64 %i.c to ptr
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper25OnConnectivityStateChangeE23grpc_connectivity_stateRKNS0_6StatusEEUlvE_JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !690
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper39ApplyUpdateInControlPlaneWorkSerializerE23grpc_connectivity_stateRKN4absl12lts_202505126StatusE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper25OnConnectivityStateChangeE23grpc_connectivity_stateRKNS0_6StatusEEUlvE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESE_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !76    ; 5 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !76
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !132  ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #47
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !688  ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper25OnConnectivityStateChangeE23grpc_connectivity_stateRKN4absl12lts_202505126StatusEENUlvE_D2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 -1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper25OnConnectivityStateChangeE23grpc_connectivity_stateRKN4absl12lts_202505126StatusEENUlvE_D2Ev.exit, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !234
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #43, !inline_history !1678
  br label %_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper25OnConnectivityStateChangeE23grpc_connectivity_stateRKN4absl12lts_202505126StatusEENUlvE_D2Ev.exit

_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper25OnConnectivityStateChangeE23grpc_connectivity_stateRKN4absl12lts_202505126StatusEENUlvE_D2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #45
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper25OnConnectivityStateChangeE23grpc_connectivity_stateRKN4absl12lts_202505126StatusEENUlvE_D2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper39ApplyUpdateInControlPlaneWorkSerializerE23grpc_connectivity_stateRKN4absl12lts_202505126StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.std::optional.965", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %i.f = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core20client_channel_traceE, i64 8) monotonic, align 8, !range !68, !noundef !69
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  br i1 %i.g, label %bb.b, label %bb.j, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.2, i32 noundef 598) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 6, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.x

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !678
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilterEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.c unwind label %bb.x       ; 2 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 75, ptr nonnull @.str.165)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi76EEERS2_RAT__Kc.exit unwind label %bb.x

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi76EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !678
  store ptr %i.l, ptr %i.b, align 8, !tbaa !659
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilter17SubchannelWrapperEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.y       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi76EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 12, ptr nonnull @.str.166)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit unwind label %bb.y

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !678
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !510
  store ptr %i.p, ptr %i.c, align 8, !tbaa !660
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core10SubchannelEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.z       ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 9, ptr nonnull @.str.167)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit unwind label %bb.z

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !674
  store ptr %i.s, ptr %i.d, align 8, !tbaa !674
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19SubchannelInterface33ConnectivityStateWatcherInterfaceEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.f unwind label %bb.aa      ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 7, ptr nonnull @.str.168)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit unwind label %bb.aa

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit: ; preds = %bb.f
  %i.u = invoke noundef ptr @_ZN9grpc_core21ConnectivityStateNameE23grpc_connectivity_state(i32 noundef %1)
          to label %bb.g unwind label %bb.ab

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  store ptr %i.u, ptr %i.e, align 8, !tbaa !241
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.h unwind label %bb.ab      ; 2 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 8, ptr nonnull @.str.169)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit unwind label %bb.ab

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit: ; preds = %bb.h
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.ab

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.k unwind label %bb.ab

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %.critedge73

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %.critedge73

.critedge73:                                      ; preds = %bb.j, %bb.k
  %i.x = load atomic i64, ptr @_ZN9grpc_core15ExperimentFlags17experiment_flags_E monotonic, align 16 ; 2 uses
  %i.y = and i64 %i.x, 18014398509481984
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %bb.l, label %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread

bb.l:                                             ; preds = %.critedge73
  %.not4.i.i.i = icmp sgt i64 %i.x, -1
  br i1 %.not4.i.i.i, label %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit, label %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread115

_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit: ; preds = %bb.l
  %i.z = call noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 54)
  br i1 %i.z, label %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread, label %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread115

_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread115: ; preds = %bb.l, %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %i.aa = load i64, ptr %2, align 8, !tbaa !132, !noalias !1683 ; 2 uses
  %i.ab = trunc i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.ab, label %_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread115
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.ad, align 8, !tbaa !692, !alias.scope !1683
  br label %.loopexit

_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread115
  %i.ae = inttoptr i64 %i.aa to ptr
  call void @_ZNK4absl12lts_2025051215status_internal9StatusRep10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.965") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 34, ptr nonnull @.str.170)
  %.pre = load i8, ptr %i.ac, align 8, !tbaa !692, !range !68
  %i.af = trunc nuw i8 %.pre to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  br i1 %i.af, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  invoke void @_ZNK4absl12lts_202505124CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.n unwind label %bb.ag

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %5, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.ak = invoke noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64 %i.aj, ptr %i.ah, ptr noundef nonnull %i.a, i32 noundef 10)
          to label %bb.o unwind label %bb.ah

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %i.a, align 4, !tbaa !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.am = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !76
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br i1 %i.ak, label %bb.p, label %bb.an

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = sext i32 %i.al to i64                   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !678
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !656 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 432 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.aw, align 8, !tbaa !244
  %i.ax = icmp slt i64 %.sroa.013.0.copyload, %i.ar
  br i1 %i.ax, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !244
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core20client_channel_traceE, i64 8) monotonic, align 8, !range !68, !noundef !69
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %.critedge76, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.2, i32 noundef 615) #44
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 6, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit81 unwind label %bb.aj

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit81: ; preds = %bb.s
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !678
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilterEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %bb.t unwind label %bb.aj      ; 2 uses

bb.t:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit81
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 31, ptr nonnull @.str.171)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit unwind label %bb.aj

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit: ; preds = %bb.t
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !678
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !656
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 432
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN9grpc_core8DurationEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.critedge75 unwind label %bb.aj

.critedge75:                                      ; preds = %bb.u
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %.pre132 = load ptr, ptr %i.as, align 8, !tbaa !678
  %.phi.trans.insert133 = getelementptr inbounds nuw i8, ptr %.pre132, i64 16
  %.pre134 = load ptr, ptr %.phi.trans.insert133, align 8, !tbaa !656
  br label %.critedge76

.critedge76:                                      ; preds = %bb.q, %.critedge75
  %i.bi = phi ptr [ %i.av, %bb.q ], [ %.pre134, %.critedge75 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 408
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !344
  %.not.i.i = icmp ult i64 %i.bk, 131072
  br i1 %.not.i.i, label %.loopexit, label %bb.v, !prof !70

bb.v:                                             ; preds = %.critedge76
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 400
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !340
  %i.bn = icmp eq i64 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 416
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !76, !nonnull !69, !noundef !69 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 424
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !76 ; 3 uses
  br i1 %i.bn, label %.lr.ph.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !368
  %i.bs = icmp slt i8 %i.br, -1
  br i1 %i.bs, label %.lr.ph.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i, %bb.v, %bb.w
  %.sroa.0105.0127.ph = phi ptr [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %i.cc, %.lr.ph.i.i ]
  %.sroa.9.0126.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.v ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.w ], [ %i.cd, %.lr.ph.i.i ]
  br label %.lr.ph

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %i.bt = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.w ]
  %i.bu = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %i.bp, %bb.w ] ; 2 uses
  %i.bv = load <16 x i8>, ptr %i.bu, align 1, !tbaa !76
  %i.bw = icmp slt <16 x i8> %i.bv, splat (i8 -1)
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = zext i16 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bz, i1 true)
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.cb ; 2 uses
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !368
  %i.cf = icmp slt i8 %i.ce, -1
  br i1 %i.cf, label %.lr.ph.i.i, label %.lr.ph.preheader, !llvm.loop !47

bb.x:                                             ; preds = %bb.c, %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.y:                                             ; preds = %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi76EEERS2_RAT__Kc.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.i, %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.ab ], [ %i.cj, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.ci, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ad ], [ %i.ch, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.af

bb.af:                                            ; preds = %bb.x, %bb.ae
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ae ], [ %i.cg, %bb.x ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %.thread117

bb.ag:                                            ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ah:                                            ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.ah
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !76
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ag
  %.pn54 = phi { ptr, i32 } [ %i.cl, %bb.ag ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.cm, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.az

bb.ai:                                            ; preds = %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.u, %bb.t, %bb.s, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit81
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #46
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.pn60 = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.az

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i
  %.sroa.0105.0127 = phi ptr [ %.sroa.0105.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.0105.0127.ph, %.lr.ph.preheader ]
  %.sroa.9.0126 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.9.0126.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.9.0126, align 8, !tbaa !660 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !234
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 %i.ar)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0105.0127, i64 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.9.0126, i64 40 ; 2 uses
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !368 ; 2 uses
  %i.db = icmp slt i8 %i.da, -1
  br i1 %i.db, label %.lr.ph.i.i90, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i90:                                     ; preds = %bb.al, %.lr.ph.i.i90
  %i.dc = phi ptr [ %i.dm, %.lr.ph.i.i90 ], [ %i.cz, %bb.al ]
  %i.dd = phi ptr [ %i.dl, %.lr.ph.i.i90 ], [ %i.cy, %bb.al ] ; 2 uses
  %i.de = load <16 x i8>, ptr %i.dd, align 1, !tbaa !76
  %i.df = icmp slt <16 x i8> %i.de, splat (i8 -1)
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = zext i16 %i.dg to i32
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.di, i1 true)
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.dk ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !368 ; 2 uses
  %i.do = icmp slt i8 %i.dn, -1
  br i1 %i.do, label %.lr.ph.i.i90, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !47

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i90, %bb.al
  %.sroa.9.1 = phi ptr [ %i.cz, %bb.al ], [ %i.dm, %.lr.ph.i.i90 ]
  %.sroa.0105.1 = phi ptr [ %i.cy, %bb.al ], [ %i.dl, %.lr.ph.i.i90 ]
  %i.dp = phi i8 [ %i.da, %bb.al ], [ %i.dn, %.lr.ph.i.i90 ]
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %.loopexit, label %.lr.ph, !prof !70

bb.am:                                            ; preds = %.lr.ph
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.2, i32 noundef 628) #44
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 6, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit92 unwind label %bb.au

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit92: ; preds = %bb.ao
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !678
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilterEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %bb.ap unwind label %bb.au     ; 2 uses

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit92
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 37, ptr nonnull @.str.172)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi38EEERS2_RAT__Kc.exit unwind label %bb.au

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi38EEERS2_RAT__Kc.exit: ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.dw = load i8, ptr %i.ag, align 8, !tbaa !692, !range !68, !noundef !69
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZNRSt8optionalIN4absl12lts_202505124CordEE5valueEv.exit95, label %bb.aq

bb.aq:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi38EEERS2_RAT__Kc.exit
  invoke void @_ZSt27__throw_bad_optional_accessv() #49
          to label %.noexc94 unwind label %bb.av

.noexc94:                                         ; preds = %bb.aq
  unreachable

_ZNRSt8optionalIN4absl12lts_202505124CordEE5valueEv.exit95: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi38EEERS2_RAT__Kc.exit
  invoke void @_ZNK4absl12lts_202505124CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %_ZNRSt8optionalIN4absl12lts_202505124CordEE5valueEv.exit95
  %i.dy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit97 unwind label %bb.aw

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit97: ; preds = %bb.as
  %i.dz = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit97
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !76
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %.loopexit

bb.at:                                            ; preds = %bb.an
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.au:                                            ; preds = %bb.ap, %bb.ao, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit92
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.av:                                            ; preds = %bb.aq, %_ZNRSt8optionalIN4absl12lts_202505124CordEE5valueEv.exit95
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.aw:                                            ; preds = %bb.as, %bb.ar
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.aw
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !76
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.av
  %.pn56 = phi { ptr, i32 } [ %i.eg, %bb.av ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.eh, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.au
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.ef, %bb.au ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #46
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.at
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %bb.ax ], [ %i.ee, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.az

bb.az:                                            ; preds = %bb.ak, %bb.am, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn56.pn.pn, %bb.ay ], [ %i.dr, %bb.am ], [ %.pn60, %bb.ak ]
  call void @_ZNSt14_Optional_baseIN4absl12lts_202505124CordELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %.thread117

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i, %.critedge76, %_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.p, %_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %10 = phi ptr [ %i.ac, %_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %i.ag, %.critedge76 ], [ %i.ag, %_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.ag, %bb.p ], [ %i.ag, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 2 uses
  %11 = load i8, ptr %10, align 8, !tbaa !692, !range !68, !noundef !69
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %.loopexit.a, label %_ZNSt14_Optional_baseIN4absl12lts_202505124CordELb0ELb0EED2Ev.exit

.loopexit.a:                                      ; preds = %.loopexit
  store i8 0, ptr %10, align 8, !tbaa !692
  %i.en = load i8, ptr %4, align 8, !tbaa !76
  %i.eo = trunc i8 %i.en to i1
  br i1 %i.eo, label %bb.ba, label %_ZNSt14_Optional_baseIN4absl12lts_202505124CordELb0ELb0EED2Ev.exit

bb.ba:                                            ; preds = %.loopexit.a
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt14_Optional_baseIN4absl12lts_202505124CordELb0ELb0EED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #47
  unreachable

_ZNSt14_Optional_baseIN4absl12lts_202505124CordELb0ELb0EED2Ev.exit: ; preds = %.loopexit, %.loopexit.a, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread

_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread: ; preds = %.critedge73, %_ZNSt14_Optional_baseIN4absl12lts_202505124CordELb0ELb0EED2Ev.exit, %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !674 ; 2 uses
  %i.et = icmp eq i32 %1, 3
  br i1 %i.et, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread
  %i.eu = load i64, ptr %2, align 8, !tbaa !132   ; 3 uses
  store i64 %i.eu, ptr %9, align 8, !tbaa !132
  %i.ev = trunc i64 %i.eu to i1
  br i1 %i.ev, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ew = inttoptr i64 %i.eu to ptr
  %i.ex = atomicrmw add ptr %i.ew, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

bb.be:                                            ; preds = %_ZN9grpc_core36IsSubchannelConnectionScalingEnabledEv.exit.thread
  store i64 1, ptr %9, align 8, !tbaa !132, !alias.scope !1684
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %bb.bd, %bb.bc, %bb.be
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !234
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.es, i32 noundef %1, ptr noundef nonnull align 8 %9)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.fb = load i64, ptr %9, align 8, !tbaa !132   ; 2 uses
  %i.fc = trunc i64 %i.fb to i1
  br i1 %i.fc, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fd = inttoptr i64 %i.fb to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fd)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #47
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.bf, %bb.bg
  ret void

bb.bi:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #43
  br label %.thread117

.thread117:                                       ; preds = %bb.bi, %bb.az, %bb.af
  %.pn69.pn = phi { ptr, i32 } [ %i.fg, %bb.bi ], [ %.pn.pn.pn.pn, %bb.af ], [ %.pn64.pn.pn.pn, %bb.az ]
  resume { ptr, i32 } %.pn69.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19SubchannelInterface33ConnectivityStateWatcherInterfaceEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !674
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.f
}

declare noundef ptr @_ZN9grpc_core21ConnectivityStateNameE23grpc_connectivity_state(i32 noundef) local_unnamed_addr #2

declare void @_ZNK4absl12lts_202505124CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN9grpc_core8DurationEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @_ZNK9grpc_core8Duration8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !317
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE1EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.c, ptr %i.a)
          to label %_ZN4absl12lts_2025051212log_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i unwind label %bb.b

_ZN4absl12lts_2025051212log_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN9grpc_core13AbslStringifyIN4absl12lts_2025051212log_internal13StringifySinkEEEvRT_RKNS_8DurationE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051212log_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !76
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #45
  br label %_ZN9grpc_core13AbslStringifyIN4absl12lts_2025051212log_internal13StringifySinkEEEvRT_RKNS_8DurationE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !76
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.i

_ZN9grpc_core13AbslStringifyIN4absl12lts_2025051212log_internal13StringifySinkEEEvRT_RKNS_8DurationE.exit: ; preds = %_ZN4absl12lts_2025051212log_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN4absl12lts_202505124CordELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %3 = load i8, ptr %2, align 8, !tbaa !692, !range !68, !noundef !69
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.a, label %_ZNSt17_Optional_payloadIN4absl12lts_202505124CordELb0ELb0ELb0EED2Ev.exit

bb.a:                                             ; preds = %1
  store i8 0, ptr %2, align 8, !tbaa !692
  %i.a = load i8, ptr %0, align 8, !tbaa !76
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNSt17_Optional_payloadIN4absl12lts_202505124CordELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt17_Optional_payloadIN4absl12lts_202505124CordELb0ELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #47
  unreachable

_ZNSt17_Optional_payloadIN4absl12lts_202505124CordELb0ELb0ELb0EED2Ev.exit: ; preds = %1, %bb.a, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef) local_unnamed_addr #2

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::optional.965") align 8, ptr noundef nonnull align 8 dereferenceable(48), i64, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64, ptr, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK9grpc_core8Duration8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper17OnKeepaliveUpdateENS3_8DurationEEUlvE_JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !688
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !244
  tail call void @_ZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper40ApplyKeepaliveThrottlingInWorkSerializerENS_8DurationE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper17OnKeepaliveUpdateENS3_8DurationEEUlvE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESB_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %0, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !688
  %i.a = load ptr, ptr %1, align 8, !tbaa !688
  store ptr %i.a, ptr %2, align 8, !tbaa !688
  store ptr null, ptr %1, align 8, !tbaa !688
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !244
  store i64 %i.d, ptr %i.b, align 8, !tbaa !244
  br label %_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper17OnKeepaliveUpdateENS_8DurationEENUlvE_D2Ev.exit

bb.b:                                             ; preds = %bb.a
  %.pr = load ptr, ptr %1, align 8, !tbaa !688    ; 4 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper17OnKeepaliveUpdateENS_8DurationEENUlvE_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper17OnKeepaliveUpdateENS_8DurationEENUlvE_D2Ev.exit, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.pr, align 8, !tbaa !234
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #43, !inline_history !1685
  br label %_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper17OnKeepaliveUpdateENS_8DurationEENUlvE_D2Ev.exit

_ZZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper17OnKeepaliveUpdateENS_8DurationEENUlvE_D2Ev.exit: ; preds = %.thread, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core19ClientChannelFilter17SubchannelWrapper14WatcherWrapper40ApplyKeepaliveThrottlingInWorkSerializerENS_8DurationE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !678
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !656  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 432 ; 2 uses
  %.sroa.011.0.copyload = load i64, ptr %i.e, align 8, !tbaa !244
  %i.f = icmp sgt i64 %1, %.sroa.011.0.copyload
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.e, align 8, !tbaa !244
  %i.g = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core20client_channel_traceE, i64 8) monotonic, align 8, !range !68, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.critedge14, !prof !70

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.2, i32 noundef 647) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 6, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !678
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilterEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.d unwind label %bb.h       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 31, ptr nonnull @.str.171)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !678
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !656
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN9grpc_core8DurationEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.critedge unwind label %bb.h

.critedge:                                        ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !678
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre34 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !656
  br label %.critedge14

.critedge14:                                      ; preds = %bb.b, %.critedge
  %i.q = phi ptr [ %i.d, %bb.b ], [ %.pre34, %.critedge ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  %i.s = load i64, ptr %i.r, align 8, !tbaa !344
  %.not.i.i = icmp ult i64 %i.s, 131072
  br i1 %.not.i.i, label %.loopexit, label %bb.f, !prof !70

bb.f:                                             ; preds = %.critedge14
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 400
  %i.u = load i64, ptr %i.t, align 8, !tbaa !340
  %i.v = icmp eq i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 416
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76, !nonnull !69, !noundef !69 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 424
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !76 ; 3 uses
  br i1 %i.v, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.x, align 1, !tbaa !368
  %i.aa = icmp slt i8 %i.z, -1
  br i1 %i.aa, label %.lr.ph.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i, %bb.f, %bb.g
  %.sroa.016.029.ph = phi ptr [ %i.x, %bb.f ], [ %i.x, %bb.g ], [ %i.ak, %.lr.ph.i.i ]
  %.sroa.8.028.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.f ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.g ], [ %i.al, %.lr.ph.i.i ]
  br label %.lr.ph

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ab = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.g ]
  %i.ac = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.x, %bb.g ] ; 2 uses
  %i.ad = load <16 x i8>, ptr %i.ac, align 1, !tbaa !76
  %i.ae = icmp slt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = zext i16 %i.af to i32
  %i.ah = add nuw nsw i32 %i.ag, 1
  %i.ai = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ah, i1 true)
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.aj ; 2 uses
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !368
  %i.an = icmp slt i8 %i.am, -1
  br i1 %i.an, label %.lr.ph.i.i, label %.lr.ph.preheader, !llvm.loop !47

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.ao

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i
  %.sroa.016.029 = phi ptr [ %.sroa.016.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.016.029.ph, %.lr.ph.preheader ]
  %.sroa.8.028 = phi ptr [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.8.028.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !678
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %.sroa.8.028, align 8, !tbaa !660 ; 3 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !510
  %i.at = icmp eq ptr %i.as, %i.ar
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !234
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 %1)
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.016.029, i64 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.8.028, i64 40 ; 2 uses
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !368 ; 2 uses
  %i.ba = icmp slt i8 %i.az, -1
  br i1 %i.ba, label %.lr.ph.i.i15, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core10SubchannelENS0_13flat_hash_setIPNS4_19ClientChannelFilter17SubchannelWrapperENS1_6HashEqISA_vE4HashENSC_2EqESaISA_EEEEENSB_IS6_vE4HashENSI_2EqESaISt4pairIKS6_SG_EEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i15:                                     ; preds = %bb.j, %.lr.ph.i.i15
  %i.bb = phi ptr [ %i.bl, %.lr.ph.i.i15 ], [ %i.ay, %bb.j ]
  %i.bc = phi ptr [ %i.bk, %.lr.ph.i.i15 ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 1, !tbaa !76
  %i.be = icmp slt <16 x i8> %i.bd, splat (i8 -1)
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = zext i16 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bh, i1 true)
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_14ConfigSelectorEEEE12AssignStatusINS0_6StatusEEEvOT_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #43, !inline_history !1822
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_14ConfigSelectorEEEE5ClearEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_14ConfigSelectorEEEE5ClearEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = load i64, ptr %1, align 8, !tbaa !132    ; 5 uses
  store i64 55, ptr %1, align 8, !tbaa !132
  %i.l = load i64, ptr %0, align 8, !tbaa !132    ; 3 uses
  %.not.i = icmp eq i64 %i.k, %i.l
  br i1 %.not.i, label %_ZN4absl12lts_202505126StatusaSEOS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_14ConfigSelectorEEEE5ClearEv.exit
  store i64 %i.k, ptr %0, align 8, !tbaa !132
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = inttoptr i64 %i.l to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #47
  unreachable

_ZN4absl12lts_202505126StatusaSEOS1_.exit:        ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_14ConfigSelectorEEEE5ClearEv.exit
  %i.q = trunc i64 %i.k to i1
  br i1 %i.q, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit
  %i.r = inttoptr i64 %i.k to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #47
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split: ; preds = %bb.f, %bb.e, %bb.h
  %.pr = load i64, ptr %0, align 8, !tbaa !132
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split, %_ZN4absl12lts_202505126StatusaSEOS1_.exit
  %i.u = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split ], [ %i.k, %_ZN4absl12lts_202505126StatusaSEOS1_.exit ]
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_14ConfigSelectorEEEE11EnsureNotOkEv.exit, !prof !70

bb.j:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_14ConfigSelectorEEEE11EnsureNotOkEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_14ConfigSelectorEEEE11EnsureNotOkEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.j
  ret void
}

declare void @_ZN9grpc_core14DynamicFilters4Call5UnrefEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core19ClientChannelFilter8CallData27StartTransportStreamOpBatchEP17grpc_call_elementP30grpc_transport_stream_op_batchE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef readonly captures(none) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::AnyInvocable", align 16 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1825   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.c = tail call noundef i32 @_ZNK9grpc_core24ConnectivityStateTracker5stateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN9grpc_core19ClientChannelFilter22CheckConnectivityStateEb.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !211
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %1, align 16, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core19ClientChannelFilter22CheckConnectivityStateEbE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.k, align 8, !tbaa !213
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable19LocalManagerTrivialENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.l, align 16, !tbaa !214
  invoke void @_ZN9grpc_core14WorkSerializer3RunEN4absl12lts_2025051212AnyInvocableIFvvEEENS_13DebugLocationE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 16 %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !214
  call void %i.m(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %1) #43, !inline_history !1823
  br label %_ZN9grpc_core19ClientChannelFilter22CheckConnectivityStateEb.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.l, align 16, !tbaa !214
  call void %i.o(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %1) #43, !inline_history !1823
  resume { ptr, i32 } %i.n

_ZN9grpc_core19ClientChannelFilter22CheckConnectivityStateEb.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.p = load ptr, ptr %0, align 8, !tbaa !1825
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !210  ; 2 uses
  %i.s = atomicrmw add ptr %i.r, i64 -1 acq_rel, align 8
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core19ClientChannelFilter8CallData27StartTransportStreamOpBatchEP17grpc_call_elementP30grpc_transport_stream_op_batchE3$_0JEEET_OT0_DpOT1_.exit", !prof !70

bb.e:                                             ; preds = %_ZN9grpc_core19ClientChannelFilter22CheckConnectivityStateEb.exit.i.i.i.i.i
  call void @_Z19grpc_stream_destroyP20grpc_stream_refcount(ptr noundef nonnull %i.r)
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core19ClientChannelFilter8CallData27StartTransportStreamOpBatchEP17grpc_call_elementP30grpc_transport_stream_op_batchE3$_0JEEET_OT0_DpOT1_.exit"

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core19ClientChannelFilter8CallData27StartTransportStreamOpBatchEP17grpc_call_elementP30grpc_transport_stream_op_batchE3$_0JEEET_OT0_DpOT1_.exit": ; preds = %_ZN9grpc_core19ClientChannelFilter22CheckConnectivityStateEb.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core19ClientChannelFilter8CallData26RetryCheckResolutionLockedEvE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef readonly captures(none) %0) #38 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1827
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !234
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8, !tbaa !706
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !707
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !708
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !709
  %i.h = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !68, !noundef !69
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i

_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i:         ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  store ptr %1, ptr %i.e, align 8, !tbaa !708
  invoke void @_ZN9grpc_core19ClientChannelFilter8CallData18TryCheckResolutionEb(ptr noundef nonnull align 16 dereferenceable(232) %.val, i1 noundef zeroext true)
          to label %bb.f unwind label %common.resume.i.i.i.i.i

bb.f:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !234
  %i.j = load i64, ptr %i.b, align 8, !tbaa !706
  %i.k = or i64 %i.j, 1
  store i64 %i.k, ptr %i.b, align 8, !tbaa !706
  %i.l = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.g unwind label %bb.n, !inline_history !710 ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !709
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.i unwind label %bb.n, !inline_history !710

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.m, ptr %i.e, align 8, !tbaa !708
  %i.n = load i64, ptr %i.b, align 8, !tbaa !706
  %i.o = and i64 %i.n, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.p = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !68, !noundef !69
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.k, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, !prof !70

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.n, !inline_history !710

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.r = load i8, ptr %i.d, align 8, !tbaa !707, !range !68, !noundef !69
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.l, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core19ClientChannelFilter8CallData26RetryCheckResolutionLockedEvE3$_0JEEET_OT0_DpOT1_.exit"

bb.l:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  store i8 0, ptr %i.d, align 8, !tbaa !707
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.c, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !714
  %.not.i.i.i.i.i.i.i4.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i4.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #43, !inline_history !710
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.v = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.u, ptr %i.v, align 8, !tbaa !715
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core19ClientChannelFilter8CallData26RetryCheckResolutionLockedEvE3$_0JEEET_OT0_DpOT1_.exit"

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #47, !inline_history !710
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %i.y

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core19ClientChannelFilter8CallData26RetryCheckResolutionLockedEvE3$_0JEEET_OT0_DpOT1_.exit": ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #39 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !234
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !706
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !706
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !709
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !708
  %i.h = load i64, ptr %i.a, align 8, !tbaa !706
  %i.i = and i64 %i.h, 4
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !68, !noundef !69
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, !prof !70

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit unwind label %bb.i

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit:       ; preds = %bb.e, %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !707, !range !68, !noundef !69
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.l, align 8, !tbaa !707
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !234
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !714
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #43
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !715
  br label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit: ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #47
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #39 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !234
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !706
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !706
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i, !inline_history !710 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !709
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i, !inline_history !710

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !708
  %i.h = load i64, ptr %i.a, align 8, !tbaa !706
  %i.i = and i64 %i.h, 4
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !68, !noundef !69
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !70

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.i, !inline_history !710

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !707, !range !68, !noundef !69
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.l, align 8, !tbaa !707
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !234
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !714
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #43, !inline_history !710
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !715
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #47, !inline_history !710
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i
  tail call void @abort() #47
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !714  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #40

declare noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv() local_unnamed_addr #2

declare void @_ZN9grpc_core14DynamicFilters4Call17IncrementRefCountEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvE3$_0JP30grpc_transport_stream_op_batchEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !130
  tail call void @_ZN9grpc_core14DynamicFilters4Call27StartTransportStreamOpBatchEP30grpc_transport_stream_op_batch(ptr noundef nonnull align 8 dereferenceable(16) %.val, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateES9_"(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %0, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !130
  %i.a = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %i.a, ptr %2, align 8, !tbaa !130
  store ptr null, ptr %1, align 8, !tbaa !130
  br label %"_ZZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvEN3$_0D2Ev.exit"

bb.b:                                             ; preds = %bb.a
  %.val.pr = load ptr, ptr %1, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.pr, null
  br i1 %.not.i.i, label %"_ZZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvEN3$_0D2Ev.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9grpc_core14DynamicFilters4Call5UnrefEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.pr)
          to label %"_ZZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvEN3$_0D2Ev.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #47
  unreachable

"_ZZN9grpc_core19ClientChannelFilter8CallData17CreateDynamicCallEvEN3$_0D2Ev.exit": ; preds = %.thread, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEEZNS0_19ClientChannelFilter16LoadBalancedCall18PickSubchannelImplEPNS1_16SubchannelPickerEPN4absl12lts_202505126StatusEE3$_0E9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.grpc_core::Subchannel::CreateCallArgs", align 8 ; 8 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.grpc_core::RefCountedPtr.349", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %"class.grpc_event_engine::experimental::Slice", align 8 ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !600    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.e = load ptr, ptr %0, align 8, !tbaa !1837   ; 11 uses
  %i.f = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core28client_channel_lb_call_traceE, i64 8) monotonic, align 8, !range !68, !noundef !69
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  br i1 %i.g, label %bb.b, label %bb.f, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.2, i32 noundef 2499) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 6, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i.i.i unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilterEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 9, ptr nonnull @.str.84)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i.i.i unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i.i.i: ; preds = %bb.c
  store ptr %i.e, ptr %i.a, align 8, !tbaa !243
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19ClientChannelFilter16LoadBalancedCallEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 32, ptr nonnull @.str.193)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i.i.i unwind label %bb.j

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i.i.i: ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !507
  store ptr %i.k, ptr %i.b, align 8, !tbaa !624
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19SubchannelInterfaceEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.g unwind label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge41.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %.critedge41.i.i.i

.critedge41.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !507  ; 2 uses
  %.not59.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not59.i.i.i, label %bb.h, label %.critedge43.i.i.i, !prof !70

bb.h:                                             ; preds = %.critedge41.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.2, i32 noundef 2503, ptr noundef nonnull @.str.194) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit48.i.i.i unwind label %bb.n

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit48.i.i.i: ; preds = %bb.h
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #47
  unreachable

bb.i:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i.i.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i.i.i = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.o, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
end_hunk_4
