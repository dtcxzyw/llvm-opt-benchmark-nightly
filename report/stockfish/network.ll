inline.NumInlined: 1222
inline.NumDeleted: 483
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE:bb.a
  store i64 %i.fr, ptr %i.fj, align 8, !tbaa !51, !alias.scope !172
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.r
  %i.fs = phi i64 [ %i.fo, %bb.r ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !71, !alias.scope !172
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !73
  store i64 0, ptr %i.ft, align 8, !tbaa !71
  store i8 0, ptr %i.fl, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 5 uses
  store ptr %i.fv, ptr %43, align 8, !tbaa !67, !alias.scope !175
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %43, i64 noundef 3, i8 noundef signext 0) #19
  %i.fw = load ptr, ptr %43, align 8, !tbaa !73, !alias.scope !175 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !71, !alias.scope !175 ; 2 uses
  %i.fz = add i64 %i.fy, 4294967295
  %i.ga = and i64 %i.fz, 4294967295
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ga
  store i8 53, ptr %i.gb, align 1, !tbaa !51
  %i.gc = add i64 %i.fy, 4294967294
  %i.gd = and i64 %i.gc, 4294967295
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gd
  store i8 50, ptr %i.ge, align 1, !tbaa !51
  store i8 49, ptr %i.fw, align 1, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.gf = load i64, ptr %i.fu, align 8, !tbaa !71, !noalias !178 ; 4 uses
  %i.gg = load i64, ptr %i.fx, align 8, !tbaa !71, !noalias !178 ; 4 uses
  %i.gh = add i64 %i.gg, %i.gf                    ; 2 uses
  %i.gi = load ptr, ptr %41, align 8, !tbaa !73, !noalias !178 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fj
  br i1 %i.gj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74: ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.gk = icmp ult i64 %i.gf, 16
  call void @llvm.assume(i1 %i.gk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.gl = load i64, ptr %i.fj, align 8, !tbaa !51, !noalias !178
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74
  %i.gm = phi i64 [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74 ]
  %i.gn = icmp ugt i64 %i.gh, %i.gm
  br i1 %i.gn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.go = load ptr, ptr %43, align 8, !tbaa !73, !noalias !178
  %i.gp = icmp eq ptr %i.go, %i.fv
  br i1 %i.gp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.s
  %i.gq = icmp ult i64 %i.gg, 16
  call void @llvm.assume(i1 %i.gq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.s
  %i.gr = load i64, ptr %i.fv, align 8, !tbaa !51, !noalias !178
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.gs = phi i64 [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.gh, %i.gs
  br i1 %.not.i, label %bb.u, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.gt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %43, i64 noundef 0, i64 noundef 0, ptr noundef %i.gi, i64 noundef %i.gf) #19, !noalias !178 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  store ptr %i.gu, ptr %40, align 8, !tbaa !67, !alias.scope !178
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !73 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 5 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.t:                                             ; preds = %.critedge.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !71 ; 2 uses
  %i.ha = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.ha)
  %i.hb = add nuw nsw i64 %i.gz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gu, ptr noundef nonnull align 8 dereferenceable(1) %i.gw, i64 %i.hb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.critedge.i
  store ptr %i.gv, ptr %40, align 8, !tbaa !73, !alias.scope !178
  %i.hc = load i64, ptr %i.gw, align 8, !tbaa !51
  store i64 %i.hc, ptr %i.gu, align 8, !tbaa !51, !alias.scope !178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.t
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !71
  %i.hf = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !71, !alias.scope !178
  store ptr %i.gw, ptr %i.gt, align 8, !tbaa !73
  store i64 0, ptr %i.hd, align 8, !tbaa !71
  store i8 0, ptr %i.gw, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.hg = sub i64 4611686018427387903, %i.gf
  %i.hh = icmp ult i64 %i.hg, %i.gg
  br i1 %i.hh, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22, !noalias !178
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.u
  %i.hi = load ptr, ptr %43, align 8, !tbaa !73, !noalias !178
  %i.hj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef %i.hi, i64 noundef %i.gg) #19, !noalias !178 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  store ptr %i.hk, ptr %40, align 8, !tbaa !67, !alias.scope !178
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !73 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 5 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !71 ; 2 uses
  %i.hq = icmp ult i64 %i.hp, 16
  call void @llvm.assume(i1 %i.hq)
  %i.hr = add nuw nsw i64 %i.hp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(1) %i.hm, i64 %i.hr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.hl, ptr %40, align 8, !tbaa !73, !alias.scope !178
  %i.hs = load i64, ptr %i.hm, align 8, !tbaa !51
  store i64 %i.hs, ptr %i.hk, align 8, !tbaa !51, !alias.scope !178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.w
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !71
  %i.hv = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !71, !alias.scope !178
  store ptr %i.hm, ptr %i.hj, align 8, !tbaa !73
  store i64 0, ptr %i.ht, align 8, !tbaa !71
  store i8 0, ptr %i.hm, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.hw = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !71, !noalias !181
  %i.hy = add i64 %i.hx, -4611686018427387898
  %i.hz = icmp ult i64 %i.hy, 6
  br i1 %i.hz, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22, !noalias !181
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ia = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.14, i64 noundef 6) #19, !noalias !181 ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  store ptr %i.ib, ptr %39, align 8, !tbaa !67, !alias.scope !181
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !73 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 5 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !71 ; 3 uses
  %i.ih = icmp ult i64 %i.ig, 16
  call void @llvm.assume(i1 %i.ih)
  %i.ii = add nuw nsw i64 %i.ig, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ib, ptr noundef nonnull align 8 dereferenceable(1) %i.id, i64 %i.ii, i1 false)
  br label %_ZNSt7__cxx119to_stringEj.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75
  store ptr %i.ic, ptr %39, align 8, !tbaa !73, !alias.scope !181
  %i.ij = load i64, ptr %i.id, align 8, !tbaa !51
  store i64 %i.ij, ptr %i.ib, align 8, !tbaa !51, !alias.scope !181
  %.phi.trans.insert.i77 = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.pre.i78 = load i64, ptr %.phi.trans.insert.i77, align 8, !tbaa !71
  br label %_ZNSt7__cxx119to_stringEj.exit

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.ik = phi i64 [ %i.ig, %bb.y ], [ %.pre.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store i64 %i.ik, ptr %i.im, align 8, !tbaa !71, !alias.scope !181
  store ptr %i.id, ptr %i.ia, align 8, !tbaa !73
  store i64 0, ptr %i.il, align 8, !tbaa !71
  store i8 0, ptr %i.id, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  %i.in = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 5 uses
  store ptr %i.in, ptr %44, align 8, !tbaa !67, !alias.scope !184
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef 6, i8 noundef signext 0) #19
  %i.io = load ptr, ptr %44, align 8, !tbaa !73, !alias.scope !184 ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !71, !alias.scope !184 ; 3 uses
  %i.ir = add i64 %i.iq, 4294967295
  %i.is = and i64 %i.ir, 4294967295               ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.is
  store i8 52, ptr %i.it, align 1, !tbaa !51
  %i.iu = add i64 %i.iq, 4294967294
  %i.iv = and i64 %i.iu, 4294967295
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.iv
  store i8 56, ptr %i.iw, align 1, !tbaa !51
  %48 = getelementptr i8, ptr %i.io, i64 %i.is
  %i.ix = getelementptr i8, ptr %48, i64 -2
  store i8 51, ptr %i.ix, align 1, !tbaa !51
  %i.iy = add i64 %i.iq, 4294967292
  %i.iz = and i64 %i.iy, 4294967295
  %i.ja = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.iz
  store i8 50, ptr %i.ja, align 1, !tbaa !51
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  store i8 48, ptr %i.jb, align 1, !tbaa !51
  store i8 49, ptr %i.io, align 1, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.jc = load i64, ptr %i.im, align 8, !tbaa !71, !noalias !187 ; 4 uses
  %i.jd = load i64, ptr %i.ip, align 8, !tbaa !71, !noalias !187 ; 4 uses
  %i.je = add i64 %i.jd, %i.jc                    ; 2 uses
  %i.jf = load ptr, ptr %39, align 8, !tbaa !73, !noalias !187 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.ib
  br i1 %i.jg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i99: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.jh = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.ji = load i64, ptr %i.ib, align 8, !tbaa !51, !noalias !187
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i88: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i99
  %i.jj = phi i64 [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i99 ]
  %i.jk = icmp ugt i64 %i.je, %i.jj
  br i1 %i.jk, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i88
  %i.jl = load ptr, ptr %44, align 8, !tbaa !73, !noalias !187
  %i.jm = icmp eq ptr %i.jl, %i.in
  br i1 %i.jm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i98: ; preds = %bb.z
  %i.jn = icmp ult i64 %i.jd, 16
  call void @llvm.assume(i1 %i.jn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i92: ; preds = %bb.z
  %i.jo = load i64, ptr %i.in, align 8, !tbaa !51, !noalias !187
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i93: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i98
  %i.jp = phi i64 [ %i.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i92 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i98 ]
  %.not.i94 = icmp ugt i64 %i.je, %i.jp
  br i1 %.not.i94, label %bb.ab, label %.critedge.i95

.critedge.i95:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i93
  %i.jq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef 0, i64 noundef 0, ptr noundef %i.jf, i64 noundef %i.jc) #19, !noalias !187 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  store ptr %i.jr, ptr %38, align 8, !tbaa !67, !alias.scope !187
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !73 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 5 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i96

bb.aa:                                            ; preds = %.critedge.i95
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !71 ; 2 uses
  %i.jx = icmp ult i64 %i.jw, 16
  call void @llvm.assume(i1 %i.jx)
  %i.jy = add nuw nsw i64 %i.jw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jr, ptr noundef nonnull align 8 dereferenceable(1) %i.jt, i64 %i.jy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i96: ; preds = %.critedge.i95
  store ptr %i.js, ptr %38, align 8, !tbaa !73, !alias.scope !187
  %i.jz = load i64, ptr %i.jt, align 8, !tbaa !51
  store i64 %i.jz, ptr %i.jr, align 8, !tbaa !51, !alias.scope !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i97: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i96, %bb.aa
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !71
  %i.kc = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !71, !alias.scope !187
  store ptr %i.jt, ptr %i.jq, align 8, !tbaa !73
  store i64 0, ptr %i.ka, align 8, !tbaa !71
  store i8 0, ptr %i.jt, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit100

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i88
  %i.kd = sub i64 4611686018427387903, %i.jc
  %i.ke = icmp ult i64 %i.kd, %i.jd
  br i1 %i.ke, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i89

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22, !noalias !187
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i89: ; preds = %bb.ab
  %i.kf = load ptr, ptr %44, align 8, !tbaa !73, !noalias !187
  %i.kg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef %i.kf, i64 noundef %i.jd) #19, !noalias !187 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  store ptr %i.kh, ptr %38, align 8, !tbaa !67, !alias.scope !187
  %i.ki = load ptr, ptr %i.kg, align 8, !tbaa !73 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 5 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i90

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i89
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !71 ; 2 uses
  %i.kn = icmp ult i64 %i.km, 16
  call void @llvm.assume(i1 %i.kn)
  %i.ko = add nuw nsw i64 %i.km, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kh, ptr noundef nonnull align 8 dereferenceable(1) %i.kj, i64 %i.ko, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i89
  store ptr %i.ki, ptr %38, align 8, !tbaa !73, !alias.scope !187
  %i.kp = load i64, ptr %i.kj, align 8, !tbaa !51
  store i64 %i.kp, ptr %i.kh, align 8, !tbaa !51, !alias.scope !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i91: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i90, %bb.ad
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !71
  %i.ks = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !71, !alias.scope !187
  store ptr %i.kj, ptr %i.kg, align 8, !tbaa !73
  store i64 0, ptr %i.kq, align 8, !tbaa !71
  store i8 0, ptr %i.kj, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit100

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i91
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.kt = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !71, !noalias !190
  %i.kv = and i64 %i.ku, -2
  %i.kw = icmp eq i64 %i.kv, 4611686018427387902
  br i1 %i.kw, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit100
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22, !noalias !190
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit100
  %i.kx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.15, i64 noundef 2) #19, !noalias !190 ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  store ptr %i.ky, ptr %37, align 8, !tbaa !67, !alias.scope !190
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !73 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 5 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !71 ; 3 uses
  %i.le = icmp ult i64 %i.ld, 16
  call void @llvm.assume(i1 %i.le)
  %i.lf = add nuw nsw i64 %i.ld, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ky, ptr noundef nonnull align 8 dereferenceable(1) %i.la, i64 %i.lf, i1 false)
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101
  store ptr %i.kz, ptr %37, align 8, !tbaa !73, !alias.scope !190
  %i.lg = load i64, ptr %i.la, align 8, !tbaa !51
  store i64 %i.lg, ptr %i.ky, align 8, !tbaa !51, !alias.scope !190
  %.phi.trans.insert.i103 = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %.pre.i104 = load i64, ptr %.phi.trans.insert.i103, align 8, !tbaa !71
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i110

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i110: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %i.lh = phi i64 [ %i.ld, %bb.af ], [ %.pre.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %i.lh, ptr %i.lj, align 8, !tbaa !71, !alias.scope !190
  store ptr %i.la, ptr %i.kx, align 8, !tbaa !73
  store i64 0, ptr %i.li, align 8, !tbaa !71
  store i8 0, ptr %i.la, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.lk = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 5 uses
  store ptr %i.lk, ptr %45, align 8, !tbaa !67, !alias.scope !193
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %45, i64 noundef 4, i8 noundef signext 0) #19
  %i.ll = load ptr, ptr %45, align 8, !tbaa !73, !alias.scope !193 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !71, !alias.scope !193 ; 2 uses
  %i.lo = add i64 %i.ln, 4294967295
  %i.lp = and i64 %i.lo, 4294967295
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lp
  store i8 52, ptr %i.lq, align 1, !tbaa !51
  %i.lr = add i64 %i.ln, 4294967294
  %i.ls = and i64 %i.lr, 4294967295
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ls
  store i8 50, ptr %i.lt, align 1, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  store i8 48, ptr %i.lu, align 1, !tbaa !51
  store i8 49, ptr %i.ll, align 1, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.lv = load i64, ptr %i.lj, align 8, !tbaa !71, !noalias !196 ; 4 uses
  %i.lw = load i64, ptr %i.lm, align 8, !tbaa !71, !noalias !196 ; 4 uses
  %i.lx = add i64 %i.lw, %i.lv                    ; 2 uses
  %i.ly = load ptr, ptr %37, align 8, !tbaa !73, !noalias !196 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ky
  br i1 %i.lz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i110
end_hunk_0
begin_hunk_1_@_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE:bb.a
  %i.fp = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fp)
  %i.fq = add nuw nsw i64 %i.fo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fj, ptr noundef nonnull align 8 dereferenceable(1) %i.fl, i64 %i.fq, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.fk, ptr %41, align 8, !tbaa !73, !alias.scope !276
  %i.fr = load i64, ptr %i.fl, align 8, !tbaa !51
  store i64 %i.fr, ptr %i.fj, align 8, !tbaa !51, !alias.scope !276
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %i.fs = phi i64 [ %i.fo, %bb.r ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !71, !alias.scope !276
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !73
  store i64 0, ptr %i.ft, align 8, !tbaa !71
  store i8 0, ptr %i.fl, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 5 uses
  store ptr %i.fv, ptr %43, align 8, !tbaa !67, !alias.scope !279
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %43, i64 noundef 1, i8 noundef signext 0) #19
  %i.fw = load ptr, ptr %43, align 8, !tbaa !73, !alias.scope !279
  store i8 54, ptr %i.fw, align 1, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.fx = load i64, ptr %i.fu, align 8, !tbaa !71, !noalias !282 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !71, !noalias !282 ; 4 uses
  %i.ga = add i64 %i.fz, %i.fx                    ; 2 uses
  %i.gb = load ptr, ptr %41, align 8, !tbaa !73, !noalias !282 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fj
  br i1 %i.gc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.gd = icmp ult i64 %i.fx, 16
  call void @llvm.assume(i1 %i.gd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ge = load i64, ptr %i.fj, align 8, !tbaa !51, !noalias !282
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74
  %i.gf = phi i64 [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74 ]
  %i.gg = icmp ugt i64 %i.ga, %i.gf
  br i1 %i.gg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.gh = load ptr, ptr %43, align 8, !tbaa !73, !noalias !282
  %i.gi = icmp eq ptr %i.gh, %i.fv
  br i1 %i.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.s
  %i.gj = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.gj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.s
  %i.gk = load i64, ptr %i.fv, align 8, !tbaa !51, !noalias !282
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.gl = phi i64 [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ga, %i.gl
  br i1 %.not.i, label %bb.u, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.gm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %43, i64 noundef 0, i64 noundef 0, ptr noundef %i.gb, i64 noundef %i.fx) #19, !noalias !282 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  store ptr %i.gn, ptr %40, align 8, !tbaa !67, !alias.scope !282
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !73 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 5 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.t:                                             ; preds = %.critedge.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !71 ; 2 uses
  %i.gt = icmp ult i64 %i.gs, 16
  call void @llvm.assume(i1 %i.gt)
  %i.gu = add nuw nsw i64 %i.gs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gn, ptr noundef nonnull align 8 dereferenceable(1) %i.gp, i64 %i.gu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.critedge.i
  store ptr %i.go, ptr %40, align 8, !tbaa !73, !alias.scope !282
  %i.gv = load i64, ptr %i.gp, align 8, !tbaa !51
  store i64 %i.gv, ptr %i.gn, align 8, !tbaa !51, !alias.scope !282
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.t
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !71
  %i.gy = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !71, !alias.scope !282
  store ptr %i.gp, ptr %i.gm, align 8, !tbaa !73
  store i64 0, ptr %i.gw, align 8, !tbaa !71
  store i8 0, ptr %i.gp, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.gz = sub i64 4611686018427387903, %i.fx
  %i.ha = icmp ult i64 %i.gz, %i.fz
  br i1 %i.ha, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22, !noalias !282
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.u
  %i.hb = load ptr, ptr %43, align 8, !tbaa !73, !noalias !282
  %i.hc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef %i.hb, i64 noundef %i.fz) #19, !noalias !282 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  store ptr %i.hd, ptr %40, align 8, !tbaa !67, !alias.scope !282
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !73 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 5 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !71 ; 2 uses
  %i.hj = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hj)
  %i.hk = add nuw nsw i64 %i.hi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hd, ptr noundef nonnull align 8 dereferenceable(1) %i.hf, i64 %i.hk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.he, ptr %40, align 8, !tbaa !73, !alias.scope !282
  %i.hl = load i64, ptr %i.hf, align 8, !tbaa !51
  store i64 %i.hl, ptr %i.hd, align 8, !tbaa !51, !alias.scope !282
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.w
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !71
  %i.ho = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !71, !alias.scope !282
  store ptr %i.hf, ptr %i.hc, align 8, !tbaa !73
  store i64 0, ptr %i.hm, align 8, !tbaa !71
  store i8 0, ptr %i.hf, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.hp = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !71, !noalias !285
  %i.hr = add i64 %i.hq, -4611686018427387898
  %i.hs = icmp ult i64 %i.hr, 6
  br i1 %i.hs, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22, !noalias !285
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ht = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.14, i64 noundef 6) #19, !noalias !285 ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  store ptr %i.hu, ptr %39, align 8, !tbaa !67, !alias.scope !285
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !73 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 5 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !71 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hu, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.ib, i1 false)
  br label %_ZNSt7__cxx119to_stringEj.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i75
  store ptr %i.hv, ptr %39, align 8, !tbaa !73, !alias.scope !285
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !51
  store i64 %i.ic, ptr %i.hu, align 8, !tbaa !51, !alias.scope !285
  %.phi.trans.insert.i77 = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.pre.i78 = load i64, ptr %.phi.trans.insert.i77, align 8, !tbaa !71
  br label %_ZNSt7__cxx119to_stringEj.exit

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.id = phi i64 [ %i.hz, %bb.y ], [ %.pre.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store i64 %i.id, ptr %i.if, align 8, !tbaa !71, !alias.scope !285
  store ptr %i.hw, ptr %i.ht, align 8, !tbaa !73
  store i64 0, ptr %i.ie, align 8, !tbaa !71
  store i8 0, ptr %i.hw, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  %i.ig = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 5 uses
  store ptr %i.ig, ptr %44, align 8, !tbaa !67, !alias.scope !288
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef 5, i8 noundef signext 0) #19
  %i.ih = load ptr, ptr %44, align 8, !tbaa !73, !alias.scope !288 ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !71, !alias.scope !288 ; 3 uses
  %i.ik = add i64 %i.ij, 4294967295
  %i.il = and i64 %i.ik, 4294967295               ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.il
  store i8 56, ptr %i.im, align 1, !tbaa !51
  %i.in = add i64 %i.ij, 4294967294
  %i.io = and i64 %i.in, 4294967295
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.io
  store i8 50, ptr %i.ip, align 1, !tbaa !51
  %48 = getelementptr i8, ptr %i.ih, i64 %i.il
  %i.iq = getelementptr i8, ptr %48, i64 -2
  store i8 53, ptr %i.iq, align 1, !tbaa !51
  %i.ir = add i64 %i.ij, 4294967292
  %i.is = and i64 %i.ir, 4294967295
  %i.it = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.is
  store i8 50, ptr %i.it, align 1, !tbaa !51
  store i8 50, ptr %i.ih, align 1, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.iu = load i64, ptr %i.if, align 8, !tbaa !71, !noalias !291 ; 4 uses
  %i.iv = load i64, ptr %i.ii, align 8, !tbaa !71, !noalias !291 ; 4 uses
  %i.iw = add i64 %i.iv, %i.iu                    ; 2 uses
  %i.ix = load ptr, ptr %39, align 8, !tbaa !73, !noalias !291 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.hu
  br i1 %i.iy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.iz = icmp ult i64 %i.iu, 16
  call void @llvm.assume(i1 %i.iz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.ja = load i64, ptr %i.hu, align 8, !tbaa !51, !noalias !291
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93
  %i.jb = phi i64 [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93 ]
  %i.jc = icmp ugt i64 %i.iw, %i.jb
  br i1 %i.jc, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82
  %i.jd = load ptr, ptr %44, align 8, !tbaa !73, !noalias !291
  %i.je = icmp eq ptr %i.jd, %i.ig
  br i1 %i.je, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i92: ; preds = %bb.z
  %i.jf = icmp ult i64 %i.iv, 16
  call void @llvm.assume(i1 %i.jf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i86: ; preds = %bb.z
  %i.jg = load i64, ptr %i.ig, align 8, !tbaa !51, !noalias !291
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i92
  %i.jh = phi i64 [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i86 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i92 ]
  %.not.i88 = icmp ugt i64 %i.iw, %i.jh
  br i1 %.not.i88, label %bb.ab, label %.critedge.i89

.critedge.i89:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i87
  %i.ji = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef 0, i64 noundef 0, ptr noundef %i.ix, i64 noundef %i.iu) #19, !noalias !291 ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  store ptr %i.jj, ptr %38, align 8, !tbaa !67, !alias.scope !291
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !73 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 5 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i90

bb.aa:                                            ; preds = %.critedge.i89
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !71 ; 2 uses
  %i.jp = icmp ult i64 %i.jo, 16
  call void @llvm.assume(i1 %i.jp)
  %i.jq = add nuw nsw i64 %i.jo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jj, ptr noundef nonnull align 8 dereferenceable(1) %i.jl, i64 %i.jq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i90: ; preds = %.critedge.i89
  store ptr %i.jk, ptr %38, align 8, !tbaa !73, !alias.scope !291
  %i.jr = load i64, ptr %i.jl, align 8, !tbaa !51
  store i64 %i.jr, ptr %i.jj, align 8, !tbaa !51, !alias.scope !291
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i91: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i90, %bb.aa
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !71
  %i.ju = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %i.jt, ptr %i.ju, align 8, !tbaa !71, !alias.scope !291
  store ptr %i.jl, ptr %i.ji, align 8, !tbaa !73
  store i64 0, ptr %i.js, align 8, !tbaa !71
  store i8 0, ptr %i.jl, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit94

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82
  %i.jv = sub i64 4611686018427387903, %i.iu
  %i.jw = icmp ult i64 %i.jv, %i.iv
  br i1 %i.jw, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22, !noalias !291
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83: ; preds = %bb.ab
  %i.jx = load ptr, ptr %44, align 8, !tbaa !73, !noalias !291
  %i.jy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef %i.jx, i64 noundef %i.iv) #19, !noalias !291 ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  store ptr %i.jz, ptr %38, align 8, !tbaa !67, !alias.scope !291
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !73 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 5 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i84

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !71 ; 2 uses
  %i.kf = icmp ult i64 %i.ke, 16
  call void @llvm.assume(i1 %i.kf)
  %i.kg = add nuw nsw i64 %i.ke, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jz, ptr noundef nonnull align 8 dereferenceable(1) %i.kb, i64 %i.kg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83
  store ptr %i.ka, ptr %38, align 8, !tbaa !73, !alias.scope !291
  %i.kh = load i64, ptr %i.kb, align 8, !tbaa !51
  store i64 %i.kh, ptr %i.jz, align 8, !tbaa !51, !alias.scope !291
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i84, %bb.ad
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !71
  %i.kk = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !71, !alias.scope !291
  store ptr %i.kb, ptr %i.jy, align 8, !tbaa !73
  store i64 0, ptr %i.ki, align 8, !tbaa !71
  store i8 0, ptr %i.kb, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit94

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i85
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.kl = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !71, !noalias !294
  %i.kn = and i64 %i.km, -2
  %i.ko = icmp eq i64 %i.kn, 4611686018427387902
  br i1 %i.ko, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit94
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22, !noalias !294
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit94
  %i.kp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.15, i64 noundef 2) #19, !noalias !294 ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  store ptr %i.kq, ptr %37, align 8, !tbaa !67, !alias.scope !294
  %i.kr = load ptr, ptr %i.kp, align 8, !tbaa !73 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 5 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !71 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 16
  call void @llvm.assume(i1 %i.kw)
  %i.kx = add nuw nsw i64 %i.kv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kq, ptr noundef nonnull align 8 dereferenceable(1) %i.ks, i64 %i.kx, i1 false)
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95
  store ptr %i.kr, ptr %37, align 8, !tbaa !73, !alias.scope !294
  %i.ky = load i64, ptr %i.ks, align 8, !tbaa !51
  store i64 %i.ky, ptr %i.kq, align 8, !tbaa !51, !alias.scope !294
  %.phi.trans.insert.i97 = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.pre.i98 = load i64, ptr %.phi.trans.insert.i97, align 8, !tbaa !71
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i104

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.af
  %i.kz = phi i64 [ %i.kv, %bb.af ], [ %.pre.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %i.kz, ptr %i.lb, align 8, !tbaa !71, !alias.scope !294
  store ptr %i.ks, ptr %i.kp, align 8, !tbaa !73
  store i64 0, ptr %i.la, align 8, !tbaa !71
  store i8 0, ptr %i.ks, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.lc = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 5 uses
  store ptr %i.lc, ptr %45, align 8, !tbaa !67, !alias.scope !297
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %45, i64 noundef 3, i8 noundef signext 0) #19
  %i.ld = load ptr, ptr %45, align 8, !tbaa !73, !alias.scope !297 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !71, !alias.scope !297 ; 2 uses
  %i.lg = add i64 %i.lf, 4294967295
  %i.lh = and i64 %i.lg, 4294967295
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lh
  store i8 56, ptr %i.li, align 1, !tbaa !51
  %i.lj = add i64 %i.lf, 4294967294
  %i.lk = and i64 %i.lj, 4294967295
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lk
  store i8 50, ptr %i.ll, align 1, !tbaa !51
  store i8 49, ptr %i.ld, align 1, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.lm = load i64, ptr %i.lb, align 8, !tbaa !71, !noalias !300 ; 4 uses
  %i.ln = load i64, ptr %i.le, align 8, !tbaa !71, !noalias !300 ; 4 uses
  %i.lo = add i64 %i.ln, %i.lm                    ; 2 uses
  %i.lp = load ptr, ptr %37, align 8, !tbaa !73, !noalias !300 ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.kq
  br i1 %i.lq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i104
  %i.lr = icmp ult i64 %i.lm, 16
  call void @llvm.assume(i1 %i.lr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i113

end_hunk_1
