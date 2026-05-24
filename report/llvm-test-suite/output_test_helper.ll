inline.NumInlined: 5586
inline.NumDeleted: 2028
begin_hunk_0_@_Z14RunOutputTestsiPPc:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.du, i64 %i.dz, i1 false)
  br label %._crit_edge.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %.noexc138
  store ptr %i.dt, ptr %11, align 8, !tbaa !14, !alias.scope !182
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !19
  store i64 %i.ea, ptr %i.bv, align 8, !tbaa !19, !alias.scope !182
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %._crit_edge.i.i139

._crit_edge.i.i139:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.w
  %i.eb = phi i64 [ %i.dx, %bb.w ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.eb, ptr %i.bw, align 8, !tbaa !47, !alias.scope !182
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !14
  store i64 0, ptr %i.ec, align 8, !tbaa !47
  store i8 0, ptr %i.du, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  store ptr %i.bx, ptr %13, align 8, !tbaa !46
  store i64 753356163528347424, ptr %i.bx, align 8
  store i64 8, ptr %i.by, align 8, !tbaa !47
  store i8 0, ptr %i.ci, align 8, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.ed = load i64, ptr %i.bw, align 8, !tbaa !47, !noalias !185 ; 4 uses
  %i.ee = add i64 %i.ed, 8                        ; 2 uses
  %i.ef = load ptr, ptr %11, align 8, !tbaa !14, !noalias !185 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.bv                ; 2 uses
  br i1 %i.eg, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.x:                                             ; preds = %._crit_edge.i.i139
  %i.eh = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.eh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.x, %._crit_edge.i.i139
  %i.ei = load i64, ptr %i.bv, align 8, !noalias !185
  %i.ej = select i1 %i.eg, i64 15, i64 %i.ei
  %i.ek = icmp ule i64 %i.ee, %i.ej
  %.not.i144 = icmp ugt i64 %i.ee, 15
  %or.cond = or i1 %i.ek, %.not.i144
  br i1 %or.cond, label %bb.z, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.el = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.ef, i64 noundef %i.ed)
          to label %.noexc146 unwind label %.loopexit241 ; 5 uses

.noexc146:                                        ; preds = %.critedge.i
  store ptr %i.bz, ptr %10, align 8, !tbaa !46, !alias.scope !185
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !14 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 5 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

bb.y:                                             ; preds = %.noexc146
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !47 ; 2 uses
  %i.er = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.er)
  %i.es = add nuw nsw i64 %i.eq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.en, i64 %i.es, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %.noexc146
  store ptr %i.em, ptr %10, align 8, !tbaa !14, !alias.scope !185
  %i.et = load i64, ptr %i.en, align 8, !tbaa !19
  store i64 %i.et, ptr %i.bz, align 8, !tbaa !19, !alias.scope !185
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !47
  store i64 %i.ev, ptr %i.ca, align 8, !tbaa !47, !alias.scope !185
  store ptr %i.en, ptr %i.el, align 8, !tbaa !14
  store i64 0, ptr %i.eu, align 8, !tbaa !47
  store i8 0, ptr %i.en, align 8, !tbaa !19
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ew = and i64 %i.ed, -8
  %i.ex = icmp eq i64 %i.ew, 4611686018427387896
  br i1 %i.ex, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i143

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.275) #36
          to label %.noexc147 unwind label %.loopexit.split-lp242

.noexc147:                                        ; preds = %bb.aa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i143: ; preds = %bb.z
  %i.ey = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.bx, i64 noundef 8)
          to label %.noexc148 unwind label %.loopexit241 ; 5 uses

.noexc148:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i143
  store ptr %i.bz, ptr %10, align 8, !tbaa !46, !alias.scope !185
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !14 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 5 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i

bb.ab:                                            ; preds = %.noexc148
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !47 ; 2 uses
  %i.fe = icmp ult i64 %i.fd, 16
  call void @llvm.assume(i1 %i.fe)
  %i.ff = add nuw nsw i64 %i.fd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.fa, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %.noexc148
  store ptr %i.ez, ptr %10, align 8, !tbaa !14, !alias.scope !185
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !19
  store i64 %i.fg, ptr %i.bz, align 8, !tbaa !19, !alias.scope !185
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, %bb.ab
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !47
  store i64 %i.fi, ptr %i.ca, align 8, !tbaa !47, !alias.scope !185
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !14
  store i64 0, ptr %i.fh, align 8, !tbaa !47
  store i8 0, ptr %i.fa, align 8, !tbaa !19
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.fj = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.bx
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.fl = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.fn = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.bv
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.fp = load i64, ptr %i.bv, align 8, !tbaa !19
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  %i.fr = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.bt
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.ft = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.fv = load i64, ptr %i.ca, align 8, !tbaa !47
  %i.fw = add i64 %i.fv, -1
  store ptr %i.cb, ptr %14, align 8, !tbaa !46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.fw, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.fx = load ptr, ptr %14, align 8, !tbaa !14
  %i.fy = load i64, ptr %i.cc, align 8, !tbaa !47
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fx, i64 noundef %i.fy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.am

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ga = load ptr, ptr %10, align 8, !tbaa !14
  %i.gb = load i64, ptr %i.ca, align 8, !tbaa !47
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef %i.ga, i64 noundef %i.gb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit161 unwind label %bb.am

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit161: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.gd = load ptr, ptr %14, align 8, !tbaa !14
  %i.ge = load i64, ptr %i.cc, align 8, !tbaa !47
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.gd, i64 noundef %i.ge)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit163 unwind label %bb.am

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit163: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit161
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.gh = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 448
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  store ptr %i.cd, ptr %15, align 8, !tbaa !46, !alias.scope !194
  store i64 0, ptr %i.ce, align 8, !tbaa !47, !alias.scope !194
  store i8 0, ptr %i.cd, align 8, !tbaa !19, !alias.scope !194
  %i.gi = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 512
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !195, !noalias !194 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.gj, null
  br i1 %.not5.i.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165
  %19 = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 496
  %20 = load ptr, ptr %19, align 8, !noalias !194 ; 2 uses
  %21 = icmp ugt ptr %i.gj, %20
  %.08.i.i.i = select i1 %21, ptr %i.gj, ptr %20
  %i.gk = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 504
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !197, !noalias !194 ; 2 uses
  %i.gm = ptrtoint ptr %.08.i.i.i to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.gl, i64 noundef %i.go)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %15, align 8, !tbaa !14, !alias.scope !194 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.cd
  br i1 %i.gs, label %.body, label %.body.sink.split

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165
  %i.gt = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 544
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.gt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ad

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ae, %bb.ac
  %i.gu = load ptr, ptr %15, align 8, !tbaa !14
  %i.gv = load i64, ptr %i.ce, align 8, !tbaa !47
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.gu, i64 noundef %i.gv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167 unwind label %bb.an ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gx = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.cd
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167
  %i.gz = load i64, ptr %i.cd, align 8, !tbaa !19
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  %i.hb = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  store ptr %i.cf, ptr %16, align 8, !tbaa !46, !alias.scope !204
  store i64 0, ptr %i.cg, align 8, !tbaa !47, !alias.scope !204
  store i8 0, ptr %i.cf, align 8, !tbaa !19, !alias.scope !204
  %i.hc = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 120
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !195, !noalias !204 ; 3 uses
  %.not5.i.i173 = icmp eq ptr %i.hd, null
  br i1 %.not5.i.i173, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %22 = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 104
  %23 = load ptr, ptr %22, align 8, !noalias !204 ; 2 uses
  %24 = icmp ugt ptr %i.hd, %23
  %.08.i.i.i172 = select i1 %24, ptr %i.hd, ptr %23
  %i.he = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 112
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !197, !noalias !204 ; 2 uses
  %i.hg = ptrtoint ptr %.08.i.i.i172 to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.hf, i64 noundef %i.hi)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit180 unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %16, align 8, !tbaa !14, !alias.scope !204 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.cf
  br i1 %i.hm, label %.body178, label %.body178.sink.split

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.hn = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 152
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.hn)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit180 unwind label %bb.ag

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit180: ; preds = %bb.ah, %bb.af
  %i.ho = load ptr, ptr %16, align 8, !tbaa !14
  %i.hp = load i64, ptr %i.cg, align 8, !tbaa !47
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ho, i64 noundef %i.hp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit182 unwind label %bb.ao ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit182: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit180
  %i.hr = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.cf
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit182
  %i.ht = load i64, ptr %i.cf, align 8, !tbaa !19
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  %i.hv = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !205, !nonnull !90, !align !102
  invoke fastcc void @_ZN8internal12_GLOBAL__N_110CheckCasesERKSt6vectorI8TestCaseSaIS2_EERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(128) %i.gh)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.hx = getelementptr inbounds nuw i8, ptr %.054.ptr328, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !214, !nonnull !90, !align !102
  invoke fastcc void @_ZN8internal12_GLOBAL__N_110CheckCasesERKSt6vectorI8TestCaseSaIS2_EERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 8 dereferenceable(128) %i.hb)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187: ; preds = %bb.aj
  %i.ia = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.cb
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
  %i.ic = load i64, ptr %i.cb, align 8, !tbaa !19
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.ie = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.bz
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.ig = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %.054.add = add nuw nsw i64 %.054.idx327, 840   ; 2 uses
  %.not = icmp eq i64 %.054.add, 2520
  br i1 %.not, label %._crit_edge.i.i117, label %._crit_edge.i.i132

.loopexit240:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

.loopexit241:                                     ; preds = %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i143
  %lpad.loopexit243 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp242:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp242, %.loopexit241
  %lpad.phi245 = phi { ptr, i32 } [ %lpad.loopexit243, %.loopexit241 ], [ %lpad.loopexit.split-lp244, %.loopexit.split-lp242 ] ; 2 uses
  %i.ii = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.bx
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.ak
  %i.ik = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.im = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.bv
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.io = load i64, ptr %i.bv, align 8, !tbaa !19
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %.loopexit240, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit240 ], [ %lpad.phi245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ]
  %i.iq = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.bt
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %i.is = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.am:                                            ; preds = %bb.aj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit163, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit161, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.an:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.cd
  br i1 %i.iy, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.an, %bb.ad
  %.sink = phi ptr [ %i.gr, %bb.ad ], [ %i.ix, %bb.an ]
  %.pn71.ph = phi { ptr, i32 } [ %i.gq, %bb.ad ], [ %i.iw, %bb.an ]
  %i.iz = load i64, ptr %i.cd, align 8, !tbaa !19
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ja) #34
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.an, %bb.ad
  %.pn71 = phi { ptr, i32 } [ %i.gq, %bb.ad ], [ %i.iw, %bb.an ], [ %.pn71.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit180
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.cf
  br i1 %i.jd, label %.body178, label %.body178.sink.split

.body178.sink.split:                              ; preds = %bb.ao, %bb.ag
  %.sink392 = phi ptr [ %i.hl, %bb.ag ], [ %i.jc, %bb.ao ]
  %.pn73.ph = phi { ptr, i32 } [ %i.hk, %bb.ag ], [ %i.jb, %bb.ao ]
  %i.je = load i64, ptr %i.cf, align 8, !tbaa !19
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %.sink392, i64 noundef %i.jf) #34
  br label %.body178

.body178:                                         ; preds = %.body178.sink.split, %bb.ao, %bb.ag
  %.pn73 = phi { ptr, i32 } [ %i.hk, %bb.ag ], [ %i.jb, %bb.ao ], [ %.pn73.ph, %.body178.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.ap

bb.ap:                                            ; preds = %.body178, %.body, %bb.am
  %.pn75 = phi { ptr, i32 } [ %i.iv, %bb.am ], [ %.pn73, %.body178 ], [ %.pn71, %.body ] ; 2 uses
  %i.jg = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.cb
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

end_hunk_0
