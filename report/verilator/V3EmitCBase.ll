Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCBase?download=true
inline.NumInlined: 1433
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode:bb.a
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %8, align 16, !tbaa !99
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.hd, align 16, !tbaa !99
  invoke void @_ZN11VHashSha2566insertEPKvm(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef %i.gx, i64 noundef %i.gr)
          to label %_ZN11VHashSha256C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ak

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %i.gy, align 16, !tbaa !107 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.gz
  br i1 %i.hg, label %.body, label %.body.sink.split

_ZN11VHashSha256C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.hh = load ptr, ptr %2, align 8, !tbaa !107, !noalias !246
  %i.hi = load i64, ptr %i.gq, align 8, !tbaa !108, !noalias !246 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.hj, ptr %10, align 8, !tbaa !106, !alias.scope !247
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.hk, align 8, !tbaa !108, !alias.scope !247
  store i8 0, ptr %i.hj, align 8, !tbaa !98, !alias.scope !247
  %i.hl = add i64 %i.hi, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.hl)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %_ZN11VHashSha256C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !108, !alias.scope !247
  %i.hn = sub i64 4611686018427387903, %i.hm
  %i.ho = icmp ult i64 %i.hn, %i.hi
  br i1 %i.ho, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.al
  %i.hp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.hh, i64 noundef %i.hi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.am ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.hq = load i64, ptr %i.hk, align 8, !tbaa !108, !alias.scope !247
  %i.hr = add i64 %i.hq, -4611686018427387897
  %i.hs = icmp ult i64 %i.hr, 7
  br i1 %i.hs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #21
          to label %.cont.i.i unwind label %bb.am

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.1, i64 noundef 7)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZN11VHashSha256C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %10, align 8, !tbaa !107, !alias.scope !247 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hj
  br i1 %i.hw, label %.body101, label %.body101.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN11VHashSha25612digestSymbolB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %bb.an unwind label %bb.az

bb.an:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.hx = load i64, ptr %i.hk, align 8, !tbaa !108, !noalias !248 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !108, !noalias !248 ; 4 uses
  %i.ia = add i64 %i.hz, %i.hx                    ; 2 uses
  %i.ib = load ptr, ptr %10, align 8, !tbaa !107, !noalias !248 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hj
  br i1 %i.ic, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115: ; preds = %bb.an
  %i.id = icmp ult i64 %i.hx, 16
  call void @llvm.assume(i1 %i.id)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.an
  %i.ie = load i64, ptr %i.hj, align 8, !tbaa !98, !noalias !248
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115
  %i.if = phi i64 [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115 ]
  %i.ig = icmp ugt i64 %i.ia, %i.if
  br i1 %i.ig, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104
  %i.ih = load ptr, ptr %11, align 8, !tbaa !107, !noalias !248
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i114: ; preds = %bb.ao
  %i.ik = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ik)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i108: ; preds = %bb.ao
  %i.il = load i64, ptr %i.ii, align 8, !tbaa !98, !noalias !248
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i109: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i114
  %i.im = phi i64 [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i108 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i114 ]
  %.not.i110 = icmp ugt i64 %i.ia, %i.im
  br i1 %.not.i110, label %bb.aq, label %.critedge.i111

.critedge.i111:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i109
  %i.in = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ib, i64 noundef %i.hx)
          to label %.noexc116 unwind label %bb.ba ; 5 uses

.noexc116:                                        ; preds = %.critedge.i111
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.io, ptr %9, align 8, !tbaa !106, !alias.scope !248
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !107 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 5 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i112

bb.ap:                                            ; preds = %.noexc116
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !108 ; 2 uses
  %i.iu = icmp ult i64 %i.it, 16
  call void @llvm.assume(i1 %i.iu)
  %i.iv = add nuw nsw i64 %i.it, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.io, ptr noundef nonnull align 8 dereferenceable(1) %i.iq, i64 %i.iv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i112: ; preds = %.noexc116
  store ptr %i.ip, ptr %9, align 8, !tbaa !107, !alias.scope !248
  %i.iw = load i64, ptr %i.iq, align 8, !tbaa !98
  store i64 %i.iw, ptr %i.io, align 8, !tbaa !98, !alias.scope !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i112, %bb.ap
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !108
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !108, !alias.scope !248
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !107
  store i64 0, ptr %i.ix, align 8, !tbaa !108
  store i8 0, ptr %i.iq, align 8, !tbaa !98
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit119

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104
  %i.ja = sub i64 4611686018427387903, %i.hx
  %i.jb = icmp ult i64 %i.ja, %i.hz
  br i1 %i.jb, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i105

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #21
          to label %.noexc117 unwind label %bb.ba

.noexc117:                                        ; preds = %bb.ar
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i105: ; preds = %bb.aq
  %i.jc = load ptr, ptr %11, align 8, !tbaa !107, !noalias !248
  %i.jd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.jc, i64 noundef %i.hz)
          to label %.noexc118 unwind label %bb.ba ; 5 uses

.noexc118:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i105
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.je, ptr %9, align 8, !tbaa !106, !alias.scope !248
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !107 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 5 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i106

bb.as:                                            ; preds = %.noexc118
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !108 ; 2 uses
  %i.jk = icmp ult i64 %i.jj, 16
  call void @llvm.assume(i1 %i.jk)
  %i.jl = add nuw nsw i64 %i.jj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.je, ptr noundef nonnull align 8 dereferenceable(1) %i.jg, i64 %i.jl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i106: ; preds = %.noexc118
  store ptr %i.jf, ptr %9, align 8, !tbaa !107, !alias.scope !248
  %i.jm = load i64, ptr %i.jg, align 8, !tbaa !98
  store i64 %i.jm, ptr %i.je, align 8, !tbaa !98, !alias.scope !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i107: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i106, %bb.as
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !108
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !108, !alias.scope !248
  store ptr %i.jg, ptr %i.jd, align 8, !tbaa !107
  store i64 0, ptr %i.jn, align 8, !tbaa !108
  store i8 0, ptr %i.jg, align 8, !tbaa !98
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit119

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113
  %i.jq = load ptr, ptr %0, align 8, !tbaa !107   ; 6 uses
  %i.jr = load ptr, ptr %9, align 8, !tbaa !107   ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit119
  %12 = icmp eq ptr %i.jq, %i.fn
  br i1 %12, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.at:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit119
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !108 ; 3 uses
  %i.jw = icmp ult i64 %i.jv, 16
  call void @llvm.assume(i1 %i.jw)
  %.not21.i = icmp eq ptr %9, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.au, !prof !94

bb.au:                                            ; preds = %bb.at
  switch i64 %i.jv, label %bb.aw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.jx = load i8, ptr %i.jr, align 1, !tbaa !98
  store i8 %i.jx, ptr %i.jq, align 1, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jq, ptr align 1 %i.jr, i64 %i.jv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aw, %bb.av, %bb.au
  %i.jy = load i64, ptr %i.ju, align 8, !tbaa !108 ; 2 uses
  store i64 %i.jy, ptr %i.fo, align 8, !tbaa !108
  %i.jz = load ptr, ptr %0, align 8, !tbaa !107
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jy
  store i8 0, ptr %i.ka, align 1, !tbaa !98
  %.pre.i121 = load ptr, ptr %9, align 8, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  store ptr %i.jr, ptr %0, align 8, !tbaa !107
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kc = load <2 x i64>, ptr %i.kb, align 8, !tbaa !98
  store <2 x i64> %i.kc, ptr %i.fo, align 8, !tbaa !98
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.kd = load i64, ptr %i.fn, align 8, !tbaa !98
  store ptr %i.jr, ptr %0, align 8, !tbaa !107
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kf = load <2 x i64>, ptr %i.ke, align 8, !tbaa !98
  store <2 x i64> %i.kf, ptr %i.fo, align 8, !tbaa !98
  %.not.i120 = icmp eq ptr %i.jq, null
  br i1 %.not.i120, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.jq, ptr %9, align 8, !tbaa !107
  store i64 %i.kd, ptr %i.js, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.js, ptr %9, align 8, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ax, %bb.ay
  %i.kg = phi ptr [ %.pre.i121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.jq, %bb.ax ], [ %i.js, %bb.ay ], [ %i.jr, %bb.at ]
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.kh, align 8, !tbaa !108
  store i8 0, ptr %i.kg, align 1, !tbaa !98
  %i.ki = load ptr, ptr %9, align 8, !tbaa !107   ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !98
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  %i.kn = load ptr, ptr %11, align 8, !tbaa !107  ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !98
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ks = load ptr, ptr %10, align 8, !tbaa !107  ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.hj
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.ku = load i64, ptr %i.hj, align 8, !tbaa !98
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.kw = load ptr, ptr %i.gy, align 16, !tbaa !107 ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.gz
  br i1 %i.kx, label %_ZN11VHashSha256D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.ky = load i64, ptr %i.gz, align 16, !tbaa !98
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #24
  br label %_ZN11VHashSha256D2Ev.exit

_ZN11VHashSha256D2Ev.exit:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.az:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i105, %bb.ar, %.critedge.i111
  %i.lb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lc = load ptr, ptr %11, align 8, !tbaa !107  ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.ba
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !98
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.az
  %.pn21 = phi { ptr, i32 } [ %i.la, %bb.az ], [ %i.lb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %i.lb, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.lh = load ptr, ptr %10, align 8, !tbaa !107  ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.hj
  br i1 %i.li, label %.body101, label %.body101.sink.split

.body101.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %bb.am
  %.sink = phi ptr [ %i.hv, %bb.am ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ]
  %.pn21.pn.ph = phi { ptr, i32 } [ %i.hu, %bb.am ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ]
  %i.lj = load i64, ptr %i.hj, align 8, !tbaa !98
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.lk) #24
  br label %.body101

.body101:                                         ; preds = %.body101.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %bb.am
  %.pn21.pn = phi { ptr, i32 } [ %i.hu, %bb.am ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %.pn21.pn.ph, %.body101.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ll = load ptr, ptr %i.gy, align 16, !tbaa !107 ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.gz
  br i1 %i.lm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body101, %bb.ak
  %.sink252 = phi ptr [ %i.hf, %bb.ak ], [ %i.ll, %.body101 ]
  %.pn21.pn.pn.ph = phi { ptr, i32 } [ %i.he, %bb.ak ], [ %.pn21.pn, %.body101 ]
  %i.ln = load i64, ptr %i.gz, align 16, !tbaa !98
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %.sink252, i64 noundef %i.lo) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body101, %bb.ak
  %.pn21.pn.pn = phi { ptr, i32 } [ %i.he, %bb.ak ], [ %.pn21.pn, %.body101 ], [ %.pn21.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.invoke, %_ZN11VHashSha256D2Ev.exit
  %i.lp = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_RS5_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNodeE10s_memoizedB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.bc unwind label %bb.bb     ; 0 uses

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.lr = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.bc
  %i.lu = load i64, ptr %i.ls, align 8, !tbaa !98
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.be

bb.bd:                                            ; preds = %bb.ai, %.body, %bb.bb
  %.pn27 = phi { ptr, i32 } [ %i.lq, %bb.bb ], [ %i.gm, %bb.ai ], [ %.pn21.pn.pn, %.body ] ; 2 uses
  %i.lw = load ptr, ptr %0, align 8, !tbaa !107   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.fn
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.bd
  %i.ly = load i64, ptr %i.fn, align 8, !tbaa !98
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  %i.ma = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !98
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ah
  %.pn27.pn = phi { ptr, i32 } [ %i.gl, %bb.ah ], [ %.pn27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.bg

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.mf = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !113, !range !114, !noundef !115
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %bb.bf, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.mh = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNodeE7s_mutex) #22 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit: ; preds = %bb.be, %bb.bf
end_hunk_0
