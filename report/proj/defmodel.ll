Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z37pj_projection_specific_setup_defmodelP8PJconsts:bb.a
vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ej, 4611686018427387900     ; 3 uses
  %i.eo = shl i64 %n.vec, 3                       ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eb, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ec, i64 %i.eo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.er = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eb, i64 %i.er ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.ec, i64 %i.er ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.es = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep120, align 8, !tbaa !168, !alias.scope !427, !noalias !425
  %wide.load121 = load <2 x i64>, ptr %i.es, align 8, !tbaa !168, !alias.scope !427, !noalias !425
  %i.et = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !428, !noalias !427
  store <2 x i64> %wide.load121, ptr %i.et, align 8, !tbaa !168, !alias.scope !428, !noalias !427
  %i.eu = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep120, align 8, !tbaa !168, !alias.scope !427, !noalias !425
  store <2 x ptr> splat (ptr null), ptr %i.eu, align 8, !tbaa !168, !alias.scope !427, !noalias !425
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader147

.lr.ph.i.i.i.i.i.preheader147:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.eb, %vector.memcheck ], [ %i.eb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ep, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %i.ec, %vector.memcheck ], [ %i.ec, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader147, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader147 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader147 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !426, !noalias !425
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !425, !noalias !426
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !426, !noalias !425
  %i.ew = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ew, %i.ee
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !409

_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc50.i
  %.not.i11.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i11.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i
  %i.ey = load ptr, ptr %i.dy, align 8, !tbaa !169
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ec to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.fb) #38
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i: ; preds = %bb.ar, %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i.i
  store ptr %i.eb, ptr %i.dn, align 8, !tbaa !165
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !166
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dw
  store ptr %i.fc, ptr %i.dy, align 8, !tbaa !169
  %.pre.i = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 904
  %.pre19.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !74
  %.phi.trans.insert20.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 912
  %.pre21.i = load ptr, ptr %.phi.trans.insert20.i, align 8, !tbaa !74
  br label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE7reserveEm.exit.i

_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i, %bb.aq
  %i.fd = phi ptr [ %.pre21.i, %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i ], [ %i.dr, %bb.aq ] ; 2 uses
  %i.fe = phi ptr [ %.pre19.i, %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE13_M_deallocateEPS9_m.exit.i.i ], [ %i.ds, %bb.aq ] ; 2 uses
  %.not17.i = icmp eq ptr %i.fe, %i.fd
  br i1 %.not17.i, label %_ZN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEEC2EOSt10unique_ptrINS_10MasterFileESt14default_deleteIS7_EERS4_dd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE7reserveEm.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_M_allocateEm.exit.i.i, %bb.ap
  %i.fg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bo

bb.at:                                            ; preds = %bb.bn, %.lr.ph.i
  %.sroa.01.018.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %i.ir, %bb.bn ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.fh = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #39
          to label %bb.au unwind label %bb.bi     ; 10 uses

bb.au:                                            ; preds = %bb.at
  store ptr %.sroa.01.018.i, ptr %i.fh, align 8, !tbaa !74
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 208
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 216
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !30 ; 3 uses
  %i.fm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, i64 8), align 8, !tbaa !30
  %i.fn = icmp eq i64 %i.fl, %i.fm
  br i1 %i.fn, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

bb.av:                                            ; preds = %bb.au
  %i.fo = icmp eq i64 %i.fl, 0
  br i1 %i.fo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fp = load ptr, ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, align 8, !tbaa !26
  %i.fq = load ptr, ptr %i.fj, align 8, !tbaa !26
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.fq, ptr %i.fp, i64 %i.fl)
  %i.fr = icmp eq i32 %bcmp.i.i.i, 0
  %i.fs = zext i1 %i.fr to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.aw, %bb.av, %bb.au
  %i.ft = phi i8 [ 0, %bb.au ], [ %i.fs, %bb.aw ], [ 1, %bb.av ]
  store i8 %i.ft, ptr %i.fi, align 8, !tbaa !184
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 96
  %.val.i51.i = load ptr, ptr %i.fu, align 8      ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 104
  %.val3.i.i = load i64, ptr %i.fv, align 8, !tbaa !30 ; 9 uses
  %i.fw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, i64 8), align 8, !tbaa !30
  %i.fx = icmp eq i64 %.val3.i.i, %i.fw
  br i1 %i.fx, label %bb.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.fy = icmp eq i64 %.val3.i.i, 0
  br i1 %i.fy, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %bb.ax
  %i.fz = load ptr, ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, align 8, !tbaa !26
  %bcmp.i.i.i.i = call i32 @bcmp(ptr readonly %.val.i51.i, ptr %i.fz, i64 %.val3.i.i)
  %i.ga = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ga, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.gb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, i64 8), align 8, !tbaa !30
  %i.gc = icmp eq i64 %.val3.i.i, %i.gb
  br i1 %i.gc, label %bb.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.thread2.i.i.i

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i
  %i.gd = icmp eq i64 %.val3.i.i, 0
  br i1 %i.gd, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.i.i.i: ; preds = %bb.ay
  %i.ge = load ptr, ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, align 8, !tbaa !26
  %bcmp.i3.i.i.i = call i32 @bcmp(ptr readonly %.val.i51.i, ptr %i.ge, i64 %.val3.i.i)
  %i.gf = icmp eq i32 %bcmp.i3.i.i.i, 0
  br i1 %i.gf, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.thread2.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.thread2.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i.i
  %i.gg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL6STR_3DB5cxx11E, i64 8), align 8, !tbaa !30
  %i.gh = icmp eq i64 %.val3.i.i, %i.gg
  br i1 %i.gh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.thread2.i.i.i
  %i.gi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.i.i.i: ; preds = %bb.az
  %i.gj = load ptr, ptr @_ZN16DeformationModelL6STR_3DB5cxx11E, align 8, !tbaa !26
  %bcmp.i5.i.i.i = call i32 @bcmp(ptr readonly %.val.i51.i, ptr %i.gj, i64 %.val3.i.i)
  %bcmp.i5.fr.i.i.i = freeze i32 %bcmp.i5.i.i.i
  %i.gk = icmp eq i32 %bcmp.i5.fr.i.i.i, 0
  br i1 %i.gk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.thread.i.i.i, label %bb.ba

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.i.i.i, %bb.az
  br label %bb.ba

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.thread.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.thread2.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.i.i.i, %bb.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.ax
  %.0.i.i.i = phi i32 [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.i.i.i ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i ], [ 1, %bb.ax ], [ 2, %bb.ay ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.thread.i.i.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit6.i.i.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit4.thread2.i.i.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 %.0.i.i.i, ptr %i.gl, align 4, !tbaa !185
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i8 0, i64 32, i1 false)
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !66
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store ptr %i.gn, ptr %i.gp, align 8, !tbaa !80
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i8 0, i64 24, i1 false)
  store ptr %i.fh, ptr %5, align 8, !tbaa !168
  %i.gr = load ptr, ptr %i.ff, align 8, !tbaa !166 ; 7 uses
  %i.gs = load ptr, ptr %i.dy, align 8, !tbaa !169
  %.not.i.i = icmp eq ptr %i.gr, %i.gs
  %i.gt = ptrtoint ptr %i.fh to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.bb, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.thread.i

_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.thread.i: ; preds = %bb.ba
  store i64 %i.gt, ptr %i.gr, align 8, !tbaa !168
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gu, ptr %i.ff, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS2_7GridSetEEESt14default_deleteIS5_EED2Ev.exit.i

bb.bb:                                            ; preds = %bb.ba
  %.val.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !165 ; 10 uses
  %i.gv = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gw = ptrtoint ptr %.val.i.i.i to i64         ; 3 uses
  %i.gx = sub i64 %i.gv, %i.gw                    ; 4 uses
  %i.gy = icmp eq i64 %i.gx, 9223372036854775800
  br i1 %i.gy, label %bb.bc, label %_ZNKSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.149) #36
          to label %.noexc52.i unwind label %.loopexit.split-lp.i

.noexc52.i:                                       ; preds = %bb.bc
  unreachable

_ZNKSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bb
  %i.gz = ashr exact i64 %i.gx, 3                 ; 3 uses
  %i.ha = icmp eq ptr %i.gr, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.ha, i64 1, i64 %i.gz
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gz ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gz
  %i.hd = call i64 @llvm.umin.i64(i64 %i.hb, i64 1152921504606846975)
  %i.he = select i1 %i.hc, i64 1152921504606846975, i64 %i.hd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.he, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #39
          to label %.noexc53.i unwind label %.loopexit.i ; 10 uses

.noexc53.i:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gx
  store i64 %i.gt, ptr %i.hh, align 8, !tbaa !168
  br i1 %i.ha, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc53.i
  %i.hi = add i64 %i.gv, -8
  %i.hj = sub i64 %i.hi, %i.gw                    ; 2 uses
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.hj, 40
  br i1 %min.iters.check132, label %.lr.ph.i.i.i.i.i.i.preheader146, label %vector.memcheck123

vector.memcheck123:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.hm = and i64 %i.gx, -8                       ; 2 uses
  %scevgep126 = getelementptr i8, ptr %i.hg, i64 %i.hm
  %scevgep127 = getelementptr i8, ptr %.val.i.i.i, i64 %i.hm
  %bound0128 = icmp ult ptr %i.hg, %scevgep127
  %bound1129 = icmp ult ptr %.val.i.i.i, %scevgep126
  %found.conflict130 = and i1 %bound0128, %bound1129
  br i1 %found.conflict130, label %.lr.ph.i.i.i.i.i.i.preheader146, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck123
  %n.vec134 = and i64 %i.hl, 4611686018427387900  ; 3 uses
  %i.hn = shl i64 %n.vec134, 3                    ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hg, i64 %i.hn  ; 2 uses
  %i.hp = getelementptr i8, ptr %.val.i.i.i, i64 %i.hn
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %i.hq = shl i64 %index136, 3                    ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.hg, i64 %i.hq ; 2 uses
  %next.gep138 = getelementptr i8, ptr %.val.i.i.i, i64 %i.hq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.hr = getelementptr i8, ptr %next.gep138, i64 16
  %wide.load139 = load <2 x i64>, ptr %next.gep138, align 8, !tbaa !168, !alias.scope !431, !noalias !429
  %wide.load140 = load <2 x i64>, ptr %i.hr, align 8, !tbaa !168, !alias.scope !431, !noalias !429
  %i.hs = getelementptr i8, ptr %next.gep137, i64 16
  store <2 x i64> %wide.load139, ptr %next.gep137, align 8, !tbaa !168, !alias.scope !432, !noalias !431
  store <2 x i64> %wide.load140, ptr %i.hs, align 8, !tbaa !168, !alias.scope !432, !noalias !431
  %i.ht = getelementptr i8, ptr %next.gep138, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep138, align 8, !tbaa !168, !alias.scope !431, !noalias !429
  store <2 x ptr> splat (ptr null), ptr %i.ht, align 8, !tbaa !168, !alias.scope !431, !noalias !429
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.hu, label %middle.block142, label %vector.body135, !llvm.loop !416

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.hl, %n.vec134
  br i1 %cmp.n143, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader146

.lr.ph.i.i.i.i.i.i.preheader146:                  ; preds = %vector.memcheck123, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block142
  %.03.i.i.i.i.i.i.ph = phi ptr [ %i.hg, %vector.memcheck123 ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ho, %middle.block142 ]
  %.092.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i, %vector.memcheck123 ], [ %.val.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hp, %middle.block142 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader146, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader146 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !430, !noalias !429
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !429, !noalias !430
  store ptr null, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !430, !noalias !429
  %i.hv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hv, %i.gr
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !417

_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block142, %.noexc53.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.hg, %.noexc53.i ], [ %i.ho, %middle.block142 ], [ %i.hw, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit27.i.i.i
  %i.hy = load ptr, ptr %i.dy, align 8, !tbaa !169
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = sub i64 %i.hz, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ia) #38
  br label %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit27.i.i.i
  store ptr %i.hg, ptr %i.dn, align 8, !tbaa !165
  store ptr %i.hx, ptr %i.ff, align 8, !tbaa !166
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  store ptr %i.ib, ptr %i.dy, align 8, !tbaa !169
  br label %_ZNSt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS2_7GridSetEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS2_7GridSetEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.i, %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.thread.i
  %i.ic = phi ptr [ %i.gr, %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.thread.i ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.id = load i8, ptr %i.ch, align 2, !tbaa !163, !range !92, !noundef !93
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.bn, label %bb.be

bb.be:                                            ; preds = %_ZNSt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS2_7GridSetEEESt14default_deleteIS5_EED2Ev.exit.i
  %.val41.i = load ptr, ptr %i.ic, align 8, !tbaa !168
  %i.if = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8
  %i.ig = load i8, ptr %i.if, align 8, !tbaa !184, !range !92, !noundef !93
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ii = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.249, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN16DeformationModel18EvaluatorExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.ii, ptr nonnull @_ZTIN16DeformationModel18EvaluatorExceptionE, ptr nonnull @_ZN16DeformationModel18EvaluatorExceptionD2Ev) #36
          to label %bb.bp unwind label %bb.bl

bb.bi:                                            ; preds = %bb.at
  %i.ij = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bk

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bj

.loopexit.split-lp.i:                             ; preds = %bb.bc
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @_ZNSt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS2_7GridSetEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #37
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn32.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.bj ], [ %i.ij, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread.i: ; preds = %bb.bf
  %i.ik = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh, %bb.bg
  %.0.i = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.il = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 4 uses
  %i.im = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %bb.bl
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !29
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i, label %bb.bm, label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread.i
  %.pn3416.i = phi { ptr, i32 } [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread.i ], [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i ], [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i ]
  call void @__cxa_free_exception(ptr %i.ii) #37
  br label %bb.bo

bb.bn:                                            ; preds = %bb.be, %_ZNSt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS2_7GridSetEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 312 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ir, %i.fd
  br i1 %.not.i74, label %_ZN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEEC2EOSt10unique_ptrINS_10MasterFileESt14default_deleteIS7_EERS4_dd.exit, label %bb.at

bb.bo:                                            ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i, %bb.bk, %bb.as, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.is = phi ptr [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i ], [ %i.dn, %bb.as ], [ %i.cr, %bb.ao ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ], [ %i.cr, %bb.ai ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dn, %bb.bm ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i ], [ %i.dn, %bb.bk ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i ]
  %.pn34.pn.pn.i = phi { ptr, i32 } [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i ], [ %i.fg, %bb.as ], [ %.pn3012.i, %bb.ao ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ], [ %.pn8.i, %bb.ai ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn3416.i, %bb.bm ], [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i ], [ %.pn32.i, %bb.bk ], [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i ]
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.is) #37
  br label %.body

.body:                                            ; preds = %bb.bo, %bb.ag
  %.pn34.pn.pn.pn.i = phi { ptr, i32 } [ %.pn34.pn.pn.i, %bb.bo ], [ %i.cv, %bb.ag ]
  call void @_ZNSt10unique_ptrIN16DeformationModel10MasterFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %i.ax) #37
  call void @_ZNSt10unique_ptrIN16DeformationModel10MasterFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #37
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bh, %bb.am, %bb.af
  unreachable

_ZN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEEC2EOSt10unique_ptrINS_10MasterFileESt14default_deleteIS7_EERS4_dd.exit: ; preds = %bb.bn, %_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE7reserveEm.exit.i
  %i.it = load ptr, ptr %i.e, align 8, !tbaa !186 ; 4 uses
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !186
  %.not.i.i75 = icmp eq ptr %i.it, null
  br i1 %.not.i.i75, label %_ZNSt10unique_ptrIN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS2_7GridSetENS2_14EvaluatorIfaceEEESt14default_deleteIS6_EE5resetEPS6_.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEEC2EOSt10unique_ptrINS_10MasterFileESt14default_deleteIS7_EERS4_dd.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EED2Ev(ptr noundef nonnull readonly align 8 dead_on_return(24) dereferenceable(24) %i.iu) #37
  %i.iv = load ptr, ptr %i.it, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i76, label %_ZNKSt14default_deleteIN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS2_7GridSetENS2_14EvaluatorIfaceEEEEclEPS6_.exit.i.i, label %_ZNKSt14default_deleteIN16DeformationModel10MasterFileEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN16DeformationModel10MasterFileEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.bq
  call void @_ZN16DeformationModel10MasterFileD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.iv) #37
end_hunk_0
