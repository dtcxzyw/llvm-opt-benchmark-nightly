Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3WidthSel?download=true
inline.NumInlined: 2000
inline.NumDeleted: 381
begin_hunk_0_@_ZN15WidthSelVisitor19replaceSelPlusMinusEP13AstNodePreSel:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.dz
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !17, !noalias !292
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #22
  br label %_ZNK7AstNode10prettyNameB5cxx11Ev.exit

bb.ea:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.qe = landingpad { ptr, i32 }
          cleanup
  %i.qf = load ptr, ptr %3, align 8, !tbaa !10, !noalias !292 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.qh = icmp eq ptr %i.qf, %i.qg
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.ea
  %i.qi = load i64, ptr %i.qg, align 8, !tbaa !17, !noalias !292
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !292
  br label %common.resume

_ZNK7AstNode10prettyNameB5cxx11Ev.exit:           ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !292
  %i.qk = load ptr, ptr %40, align 8, !tbaa !10
  %i.ql = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !16
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, ptr noundef %i.qk, i64 noundef %i.qm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit431 unwind label %bb.ec

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit431: ; preds = %_ZNK7AstNode10prettyNameB5cxx11Ev.exit
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.qn)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit431
  %i.qo = load ptr, ptr %40, align 8, !tbaa !10   ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %bb.eb
  %i.qr = load i64, ptr %i.qp, align 8, !tbaa !17
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qs) #22
  br label %.thread

.thread:                                          ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.en

bb.ec:                                            ; preds = %_ZNK7AstNode10prettyNameB5cxx11Ev.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit431
  %i.qt = landingpad { ptr, i32 }
          cleanup
  %i.qu = load ptr, ptr %40, align 8, !tbaa !10   ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.ec
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !17
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %common.resume

bb.ed:                                            ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.qz = icmp slt i32 %i.pm, 0
  br i1 %i.qz, label %bb.ee, label %bb.en

bb.ee:                                            ; preds = %bb.ed
  %i.ra = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.rb = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.rc = icmp eq i8 %i.rb, 0
  br i1 %i.rc, label %bb.ef, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit439, !prof !134

bb.ef:                                            ; preds = %bb.ee
  %i.rd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  %.not.i.i438 = icmp eq i32 %i.rd, 0
  br i1 %.not.i.i438, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit439, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.re = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit439

bb.ei:                                            ; preds = %bb.eg
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit439:         ; preds = %bb.ee, %bb.ef, %bb.eh
  %i.rg = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.8, ptr nonnull @.str.9, i32 481, ptr null) ; 2 uses
  %i.rh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr noundef nonnull @.str.545, i64 noundef 26) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !296
  %i.ri = load ptr, ptr %i.pb, align 8, !tbaa !18, !noalias !296
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 64
  %i.rk = load ptr, ptr %i.rj, align 8, !noalias !296
  call void %i.rk(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(152) %i.pb), !noalias !296, !inline_history !295
  invoke void @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit439
  %i.rl = load ptr, ptr %2, align 8, !tbaa !10, !noalias !296 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rn = icmp eq ptr %i.rl, %i.rm
  br i1 %i.rn, label %_ZNK7AstNode10prettyNameB5cxx11Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i443: ; preds = %bb.ej
  %i.ro = load i64, ptr %i.rm, align 8, !tbaa !17, !noalias !296
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.rp) #22
  br label %_ZNK7AstNode10prettyNameB5cxx11Ev.exit445

bb.ek:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit439
  %i.rq = landingpad { ptr, i32 }
          cleanup
  %i.rr = load ptr, ptr %2, align 8, !tbaa !10, !noalias !296 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rt = icmp eq ptr %i.rr, %i.rs
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i440: ; preds = %bb.ek
  %i.ru = load i64, ptr %i.rs, align 8, !tbaa !17, !noalias !296
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.rv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i441

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i441: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !296
  br label %common.resume

_ZNK7AstNode10prettyNameB5cxx11Ev.exit445:        ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !296
  %i.rw = load ptr, ptr %41, align 8, !tbaa !10
  %i.rx = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !16
  %i.rz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr noundef %i.rw, i64 noundef %i.ry)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit447 unwind label %bb.em

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit447: ; preds = %_ZNK7AstNode10prettyNameB5cxx11Ev.exit445
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.rz)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit447
  %i.sa = load ptr, ptr %41, align 8, !tbaa !10   ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %bb.el
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !17
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.se) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.en

bb.em:                                            ; preds = %_ZNK7AstNode10prettyNameB5cxx11Ev.exit445, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit447
  %i.sf = landingpad { ptr, i32 }
          cleanup
  %i.sg = load ptr, ptr %41, align 8, !tbaa !10   ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.si = icmp eq ptr %i.sg, %i.sh
  br i1 %i.si, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451: ; preds = %bb.em
  %i.sj = load i64, ptr %i.sh, align 8, !tbaa !17
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %common.resume

bb.en:                                            ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  call void @_ZN15WidthSelVisitor16fromDataForArrayEP7AstNodeS1_(ptr dead_on_unwind nonnull writable sret(%"struct.WidthSelVisitor::FromData") align 8 %42, ptr noundef nonnull %1, ptr noundef %i.ox)
  %i.sl = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !88 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %42, i64 16
  %.sroa.0688.0.copyload = load i32, ptr %i.sn, align 8, !tbaa !26 ; 10 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %42, i64 20
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !26 ; 14 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.so = load i32, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.31.sroa.0.0.extract.trunc = trunc i32 %i.so to i8
  %.not.i454 = icmp eq ptr %i.sm, null
  br i1 %.not.i454, label %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit.thread, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %bb.en
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 64
  %.sroa.0.0.copyload.i.i.i455 = load i16, ptr %i.sp, align 8, !tbaa !93 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i455, label %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit [
    i16 99, label %bb.eo
    i16 74, label %_ZN7AstNode2isI10AstSelPlus13AstNodePreSelEEbPKT0_.exit500
    i16 98, label %_ZN7AstNode4castI17AstPackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit
  ]

bb.eo:                                            ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %sub.i = sub nsw i32 %.sroa.0688.0.copyload, %.sroa.18.0.copyload
  %i.sq = call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %i.sr = add nuw nsw i32 %i.sq, 1
  %i.ss = icmp eq i32 %i.sr, %i.pm
  br i1 %i.ss, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %.not.i456 = icmp eq ptr %i.oz, null
  br i1 %.not.i456, label %.thread720, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit

_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit: ; preds = %bb.ep
  %i.st = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %.sroa.0.0.copyload.i.i.i457 = load i16, ptr %i.st, align 8, !tbaa !93
  %i.su = icmp eq i16 %.sroa.0.0.copyload.i.i.i457, 121
  br i1 %i.su, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit462, label %bb.er

_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit462: ; preds = %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit
  %i.sv = getelementptr inbounds nuw i8, ptr %i.oz, i64 152
  %i.sw = call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.sv)
  %..i = call noundef i32 @llvm.smin.i32(i32 %.sroa.0688.0.copyload, i32 %.sroa.18.0.copyload)
  %i.sx = icmp eq i32 %i.sw, %..i
  br i1 %i.sx, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit462
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %i.ox)
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN9VNDeleter11pushDeletepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.sy, ptr noundef nonnull %1)
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.er:                                            ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit462, %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit, %bb.eo
  %i.sz = icmp eq i32 %.sroa.0688.0.copyload, %.sroa.18.0.copyload
  br i1 %i.sz, label %bb.es, label %bb.fa

.thread720:                                       ; preds = %bb.ep
  %i.ta = icmp eq i32 %.sroa.0688.0.copyload, %.sroa.18.0.copyload
  br i1 %i.ta, label %bb.es, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470.thread

bb.es:                                            ; preds = %.thread720, %bb.er
  %i.tb = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 9 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !96
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.tb, i16 279, ptr noundef %i.td)
          to label %.noexc464 unwind label %bb.ez

.noexc464:                                        ; preds = %bb.es
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.tb, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 152
  store i64 0, ptr %i.te, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.tb, ptr noundef %i.ox)
          to label %.noexc465 unwind label %bb.ez

.noexc465:                                        ; preds = %.noexc464
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.tb, ptr noundef %i.oz)
          to label %.noexc466 unwind label %bb.ez

.noexc466:                                        ; preds = %.noexc465
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstArraySel, i64 16), ptr %i.tb, align 8, !tbaa !18
  invoke void @_ZN11AstArraySel4initEPK7AstNode(ptr noundef nonnull align 8 dereferenceable(160) %i.tb, ptr noundef %i.ox)
          to label %bb.et unwind label %bb.ez

bb.et:                                            ; preds = %.noexc466
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.tb)
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !123 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !25
  %.not.i.i631 = icmp eq ptr %i.th, %i.tj
  br i1 %.not.i.i631, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store ptr %1, ptr %i.th, align 8, !tbaa !124
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store ptr %i.tk, ptr %i.tg, align 8, !tbaa !123
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.ev:                                            ; preds = %bb.et
  %i.tl = load ptr, ptr %i.tf, align 8, !tbaa !21 ; 4 uses
  %i.tm = ptrtoint ptr %i.th to i64
  %i.tn = ptrtoint ptr %i.tl to i64               ; 2 uses
  %i.to = sub i64 %i.tm, %i.tn                    ; 5 uses
  %i.tp = icmp eq i64 %i.to, 9223372036854775800
  br i1 %i.tp, label %bb.ew, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ew:                                            ; preds = %bb.ev
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #25
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ev
  %i.tq = ashr exact i64 %i.to, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.tq, i64 1)
  %i.tr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.tq ; 2 uses
  %i.ts = icmp ult i64 %i.tr, %i.tq
  %i.tt = call i64 @llvm.umin.i64(i64 %i.tr, i64 1152921504606846975)
  %i.tu = select i1 %i.ts, i64 1152921504606846975, i64 %i.tt ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.tu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.tv = shl nuw nsw i64 %i.tu, 3
  %i.tw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tv) #26 ; 4 uses
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 %i.to ; 2 uses
  store ptr %1, ptr %i.tx, align 8, !tbaa !124
  %i.ty = icmp sgt i64 %i.to, 0
  br i1 %i.ty, label %bb.ex, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ex:                                            ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tw, ptr align 8 %i.tl, i64 %i.to, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ex, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.tl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ua = load ptr, ptr %i.ti, align 8, !tbaa !25
  %i.ub = ptrtoint ptr %i.ua to i64
  %i.uc = sub i64 %i.ub, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %i.tl, i64 noundef %i.uc) #22
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ey, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.tw, ptr %i.tf, align 8, !tbaa !21
  store ptr %i.tz, ptr %i.tg, align 8, !tbaa !123
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.tu
  store ptr %i.ud, ptr %i.ti, align 8, !tbaa !25
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.ez:                                            ; preds = %.noexc466, %.noexc465, %.noexc464, %bb.es
  %i.ue = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef 160) #22
  br label %bb.jw

bb.fa:                                            ; preds = %bb.er
  %.not.i468 = icmp eq ptr %i.oz, null
  br i1 %.not.i468, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470.thread, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470

_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470: ; preds = %bb.fa
  %i.uf = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %.sroa.0.0.copyload.i.i.i469 = load i16, ptr %i.uf, align 8, !tbaa !93
  %i.ug = icmp eq i16 %.sroa.0.0.copyload.i.i.i469, 121
  br i1 %i.ug, label %bb.fb, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470.thread

bb.fb:                                            ; preds = %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470
  %i.uh = getelementptr inbounds nuw i8, ptr %i.oz, i64 152
  %i.ui = call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.uh) ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i477 = load i16, ptr %i.uj, align 8, !tbaa !93
  %i.uk = icmp eq i16 %.sroa.0.0.copyload.i.i.i477, 297 ; 2 uses
  %i.ul = add i32 %i.pm, -1
  %i.um = select i1 %i.uk, i32 %i.ul, i32 0
  %i.un = add i32 %i.ui, %i.um
  %..i478 = call noundef i32 @llvm.smin.i32(i32 %.sroa.0688.0.copyload, i32 %.sroa.18.0.copyload) ; 2 uses
  %i.uo = sub nsw i32 %i.un, %..i478              ; 2 uses
  %reass.sub730 = sub i32 %i.ui, %i.pm
  %i.up = add i32 %reass.sub730, 1
  %i.uq = select i1 %i.uk, i32 %i.ui, i32 %i.up
  %i.ur = sub nsw i32 %i.uq, %..i478              ; 2 uses
  %i.us = call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #26 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  %i.uv = icmp slt i32 %.sroa.0688.0.copyload, %.sroa.18.0.copyload ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %43, i64 4
  %i.ux = getelementptr inbounds nuw i8, ptr %43, i64 8
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.ur, i32 %i.uo) ; 2 uses
  %spec.select6.i.i = call i32 @llvm.smin.i32(i32 %i.ur, i32 %i.uo) ; 2 uses
  %i.uy = select i1 %i.uv, i32 %spec.select6.i.i, i32 %spec.select.i.i
  store i32 %i.uy, ptr %43, align 4, !tbaa !94
  %i.uz = select i1 %i.uv, i32 %spec.select.i.i, i32 %spec.select6.i.i
  store i32 %i.uz, ptr %i.uw, align 4, !tbaa !95
  store i8 1, ptr %i.ux, align 4, !tbaa !133
  invoke void @_ZN11AstSliceSelC2EP8FileLineP11AstNodeExprRK9VNumRange(ptr noundef nonnull align 8 dereferenceable(176) %i.us, ptr noundef %i.uu, ptr noundef %i.ox, ptr noundef nonnull align 4 dereferenceable(12) %43)
          to label %bb.fc unwind label %bb.fi

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.us)
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !123 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !25
  %.not.i.i633 = icmp eq ptr %i.vc, %i.ve
  br i1 %.not.i.i633, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
end_hunk_0
begin_hunk_1_@_ZN15WidthSelVisitor19replaceSelPlusMinusEP13AstNodePreSel:bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #25
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i634: ; preds = %bb.fe
  %i.vl = ashr exact i64 %i.vj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i635 = call i64 @llvm.umax.i64(i64 %i.vl, i64 1)
  %i.vm = add nsw i64 %.sroa.speculated.i.i.i.i635, %i.vl ; 2 uses
  %i.vn = icmp ult i64 %i.vm, %i.vl
  %i.vo = call i64 @llvm.umin.i64(i64 %i.vm, i64 1152921504606846975)
  %i.vp = select i1 %i.vn, i64 1152921504606846975, i64 %i.vo ; 3 uses
  %.not.i.i.i.i636 = icmp ne i64 %i.vp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i636)
  %i.vq = shl nuw nsw i64 %i.vp, 3
  %i.vr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vq) #26 ; 4 uses
  %i.vs = getelementptr inbounds i8, ptr %i.vr, i64 %i.vj ; 2 uses
  store ptr %1, ptr %i.vs, align 8, !tbaa !124
  %i.vt = icmp sgt i64 %i.vj, 0
  br i1 %i.vt, label %bb.fg, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i637

bb.fg:                                            ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i634
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vr, ptr align 8 %i.vg, i64 %i.vj, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i637

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i637: ; preds = %bb.fg, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i634
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %.not.i17.i.i.i638 = icmp eq ptr %i.vg, null
  br i1 %.not.i17.i.i.i638, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i639, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i637
  %i.vv = load ptr, ptr %i.vd, align 8, !tbaa !25
  %i.vw = ptrtoint ptr %i.vv to i64
  %i.vx = sub i64 %i.vw, %i.vi
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.vx) #22
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i639

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i639: ; preds = %bb.fh, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i637
  store ptr %i.vr, ptr %i.va, align 8, !tbaa !21
  store ptr %i.vu, ptr %i.vb, align 8, !tbaa !123
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.vp
  store ptr %i.vy, ptr %i.vd, align 8, !tbaa !25
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.fi:                                            ; preds = %bb.fb
  %i.vz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.us, i64 noundef 176) #22
  br label %bb.jw

_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470.thread: ; preds = %.thread720, %bb.fa, %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470
  %i.wa = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 21) ; 0 uses
  %i.wb = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.wc = icmp eq i8 %i.wb, 0
  br i1 %i.wc, label %bb.fj, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit484, !prof !134

bb.fj:                                            ; preds = %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470.thread
  %i.wd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  %.not.i.i483 = icmp eq i32 %i.wd, 0
  br i1 %.not.i.i483, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit484, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.fl unwind label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.we = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit484

bb.fm:                                            ; preds = %bb.fk
  %i.wf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit484:         ; preds = %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit470.thread, %bb.fj, %bb.fl
  %i.wg = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.8, ptr nonnull @.str.9, i32 481, ptr null) ; 2 uses
  %i.wh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wg, ptr noundef nonnull @.str.546, i64 noundef 41) ; 0 uses
  call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.wg)
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.wi = and i16 %.sroa.0.0.copyload.i.i.i455, -2
  %spec.select.i.i491 = icmp eq i16 %i.wi, 100
  br i1 %spec.select.i.i491, label %_ZN7AstNode2isI10AstSelPlus13AstNodePreSelEEbPKT0_.exit500, label %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit.thread

_ZN7AstNode4castI17AstPackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit: ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.wj = getelementptr inbounds nuw i8, ptr %i.sm, i64 152
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !103
  %sub.i497 = sub nsw i32 %.sroa.0688.0.copyload, %.sroa.18.0.copyload
  %i.wl = call i32 @llvm.abs.i32(i32 %sub.i497, i1 true)
  %i.wm = add nuw nsw i32 %i.wl, 1
  %i.wn = sdiv i32 %i.wk, %i.wm                   ; 2 uses
  %i.wo = mul nsw i32 %i.wn, %i.pm
  br label %_ZN7AstNode2isI10AstSelPlus13AstNodePreSelEEbPKT0_.exit500

_ZN7AstNode2isI10AstSelPlus13AstNodePreSelEEbPKT0_.exit500: ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode4castI17AstPackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit
  %.0103 = phi i32 [ %i.wn, %_ZN7AstNode4castI17AstPackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit ], [ 1, %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit ], [ 1, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit ] ; 3 uses
  %.0102 = phi i32 [ %i.wo, %_ZN7AstNode4castI17AstPackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit ], [ %i.pm, %_ZN7AstNode2isI21AstNodeUOrStructDType12AstNodeDTypeEEbPKT0_.exit ], [ %i.pm, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit ] ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i499 = load i16, ptr %i.wp, align 8, !tbaa !93
  switch i16 %.sroa.0.0.copyload.i.i.i499, label %bb.ft [
    i16 297, label %bb.fn
    i16 296, label %bb.fq
  ]

bb.fn:                                            ; preds = %_ZN7AstNode2isI10AstSelPlus13AstNodePreSelEEbPKT0_.exit500
  %i.wq = icmp slt i32 %.sroa.0688.0.copyload, %.sroa.18.0.copyload
  br i1 %i.wq, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %reass.sub = sub i32 %.sroa.18.0.copyload, %i.pm
  %i.wr = add i32 %reass.sub, 1
  %i.ws = call noundef ptr @_ZN15WidthSelVisitor9newSubNegEiP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.wr, ptr noundef %i.oz)
  br label %bb.fu

bb.fp:                                            ; preds = %bb.fn
  %i.wt = call noundef ptr @_ZN15WidthSelVisitor9newSubNegEP11AstNodeExpri(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.oz, i32 noundef %.sroa.18.0.copyload)
  br label %bb.fu

bb.fq:                                            ; preds = %_ZN7AstNode2isI10AstSelPlus13AstNodePreSelEEbPKT0_.exit500
  %i.wu = icmp slt i32 %.sroa.0688.0.copyload, %.sroa.18.0.copyload
  br i1 %i.wu, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.wv = call noundef ptr @_ZN15WidthSelVisitor9newSubNegEiP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.sroa.18.0.copyload, ptr noundef %i.oz)
  br label %bb.fu

bb.fs:                                            ; preds = %bb.fq
  %i.ww = add nsw i32 %i.pm, -1
  %i.wx = add nsw i32 %i.ww, %.sroa.18.0.copyload
  %i.wy = call noundef ptr @_ZN15WidthSelVisitor9newSubNegEP11AstNodeExpri(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.oz, i32 noundef %i.wx)
  br label %bb.fu

bb.ft:                                            ; preds = %_ZN7AstNode2isI10AstSelPlus13AstNodePreSelEEbPKT0_.exit500
  %i.wz = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 603) ; 0 uses
  %i.xa = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.xb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.xa, ptr noundef nonnull @.str.547)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.xb) #25
  unreachable

bb.fu:                                            ; preds = %bb.fs, %bb.fr, %bb.fo, %bb.fp
  %.0 = phi ptr [ %i.ws, %bb.fo ], [ %i.wt, %bb.fp ], [ %i.wv, %bb.fr ], [ %i.wy, %bb.fs ] ; 2 uses
  %.not218 = icmp eq i32 %.0103, 1
  br i1 %.not218, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !96
  %i.xe = call noundef ptr @_ZN15WidthSelVisitor11newMulConstEP8FileLinejP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.xd, i32 noundef %.0103, ptr noundef %.0)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.1 = phi ptr [ %i.xe, %bb.fv ], [ %.0, %bb.fu ]
  %i.xf = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #26 ; 17 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !96
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(184) %i.xf, i16 246, ptr noundef %i.xh)
          to label %.noexc508 unwind label %bb.ge

.noexc508:                                        ; preds = %bb.fw
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.xf, align 8, !tbaa !18
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 152
  store i64 0, ptr %i.xi, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(184) %i.xf, ptr noundef %i.ox)
          to label %.noexc509 unwind label %bb.ge

.noexc509:                                        ; preds = %.noexc508
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(184) %i.xf, ptr noundef %.1)
          to label %.noexc510 unwind label %bb.ge

.noexc510:                                        ; preds = %.noexc509
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstSel, i64 16), ptr %i.xf, align 8, !tbaa !18
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.xj, i8 0, i64 9, i1 false)
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 172 ; 2 uses
  store i32 1, ptr %i.xk, align 4, !tbaa !105
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 176
  store i32 %.0102, ptr %i.xl, align 8, !tbaa !110
  %i.xm = invoke noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(184) %i.xf, i32 noundef %.0102, i32 noundef %.0102, i8 0)
          to label %.noexc511 unwind label %bb.ge ; 2 uses

.noexc511:                                        ; preds = %.noexc510
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xf, i64 72 ; 2 uses
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !102
  %.not.i.i.i = icmp eq ptr %i.xo, %i.xm
  br i1 %.not.i.i.i, label %_ZN6AstSelC2EP8FileLineP11AstNodeExprS3_i.exit, label %bb.fx

bb.fx:                                            ; preds = %.noexc511
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !102
  %i.xp = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  %i.xq = add i64 %i.xp, 1
  store i64 %i.xq, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  br label %_ZN6AstSelC2EP8FileLineP11AstNodeExprS3_i.exit

_ZN6AstSelC2EP8FileLineP11AstNodeExprS3_i.exit:   ; preds = %bb.fx, %.noexc511
  store i32 %.sroa.0688.0.copyload, ptr %i.xj, align 8, !tbaa !26
  %.sroa.18.0..sroa_idx702 = getelementptr inbounds nuw i8, ptr %i.xf, i64 164
  store i32 %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx702, align 4, !tbaa !26
  %.sroa.31.0..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.xf, i64 168
  store i8 %.sroa.31.sroa.0.0.extract.trunc, ptr %.sroa.31.0..sroa_idx716, align 8, !tbaa !92
  store i32 %.0103, ptr %i.xk, align 4, !tbaa !105
  %i.xr = call noundef i32 @_ZL5debugv()
  %i.xs = icmp sgt i32 %i.xr, 5
  br i1 %i.xs, label %bb.fy, label %bb.gp, !prof !9

bb.fy:                                            ; preds = %_ZN6AstSelC2EP8FileLineP11AstNodeExprS3_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %44)
  %i.xt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit513 unwind label %bb.gf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit513: ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull @.str.1, i32 noundef 609)
          to label %bb.fz unwind label %bb.gg

bb.fz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit513
  %i.xu = load ptr, ptr %45, align 8, !tbaa !10
  %i.xv = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !16
  %i.xx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %i.xu, i64 noundef %i.xw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit515 unwind label %bb.gh ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit515: ; preds = %bb.fz
  %i.xy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xx, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517 unwind label %bb.gh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit515
  %i.xz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.xx, ptr noundef nonnull %i.xf)
          to label %bb.ga unwind label %bb.gh     ; 0 uses

bb.ga:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517
  %i.ya = load ptr, ptr %45, align 8, !tbaa !10   ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.yc = icmp eq ptr %i.ya, %i.yb
  br i1 %i.yc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518: ; preds = %bb.ga
  %i.yd = load i64, ptr %i.yb, align 8, !tbaa !17
  %i.ye = add i64 %i.yd, 1
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.ye) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull align 8 dereferenceable(112) %44)
          to label %bb.gb unwind label %bb.gi

bb.gb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(112) %44)
          to label %bb.gc unwind label %bb.gj

bb.gc:                                            ; preds = %bb.gb
  %i.yf = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !16 ; 2 uses
  %i.yh = load ptr, ptr %46, align 8, !tbaa !10   ; 2 uses
  %i.yi = getelementptr i8, ptr %i.yh, i64 %i.yg
  %i.yj = getelementptr i8, ptr %i.yi, i64 -1
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !17
  %.not223 = icmp eq i8 %i.yk, 10
  %i.yl = load ptr, ptr %47, align 8, !tbaa !10   ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.yn = icmp eq ptr %i.yl, %i.ym
  br i1 %i.yn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i522: ; preds = %bb.gc
  %i.yo = icmp ult i64 %i.yg, 16
  call void @llvm.assume(i1 %i.yo)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521: ; preds = %bb.gc
  %i.yp = load i64, ptr %i.ym, align 8, !tbaa !17
  %i.yq = add i64 %i.yp, 1
  call void @_ZdlPvm(ptr noundef %i.yl, i64 noundef %i.yq) #22
  %.pre733 = load ptr, ptr %46, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i522, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521
  %i.yr = phi ptr [ %i.yh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i522 ], [ %.pre733, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  %i.ys = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.yt = icmp eq ptr %i.yr, %i.ys
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523
  %i.yu = load i64, ptr %i.ys, align 8, !tbaa !17
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.yr, i64 noundef %i.yv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  br i1 %.not223, label %bb.gk, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526
  %i.yw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %44, i8 noundef signext 10)
          to label %bb.gk unwind label %bb.gf     ; 0 uses

bb.ge:                                            ; preds = %.noexc510, %.noexc509, %.noexc508, %bb.fw
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef 184) #22
  br label %bb.jw

bb.gf:                                            ; preds = %bb.fy, %bb.gd
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit513
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529

bb.gh:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit515, %bb.fz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit517
  %i.za = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zb = load ptr, ptr %45, align 8, !tbaa !10   ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.zd = icmp eq ptr %i.zb, %i.zc
  br i1 %i.zd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527: ; preds = %bb.gh
  %i.ze = load i64, ptr %i.zc, align 8, !tbaa !17
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.zf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527, %bb.gg
  %.pn219 = phi { ptr, i32 } [ %i.yz, %bb.gg ], [ %i.za, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527 ], [ %i.za, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %bb.go

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

bb.gj:                                            ; preds = %bb.gb
  %i.zh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  %i.zi = load ptr, ptr %46, align 8, !tbaa !10   ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.zk = icmp eq ptr %i.zi, %i.zj
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530: ; preds = %bb.gj
  %i.zl = load i64, ptr %i.zj, align 8, !tbaa !17
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zi, i64 noundef %i.zm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530, %bb.gi
  %.pn221 = phi { ptr, i32 } [ %i.zg, %bb.gi ], [ %i.zh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530 ], [ %i.zh, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  br label %bb.go

bb.gk:                                            ; preds = %bb.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull align 8 dereferenceable(112) %44)
          to label %bb.gl unwind label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.zn = load ptr, ptr %48, align 8, !tbaa !10
  %i.zo = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !16
  %i.zq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.zn, i64 noundef %i.zp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit534 unwind label %bb.gn ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit534: ; preds = %bb.gl
  %i.zr = load ptr, ptr %48, align 8, !tbaa !10   ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.zt = icmp eq ptr %i.zr, %i.zs
  br i1 %i.zt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit534
  %i.zu = load i64, ptr %i.zs, align 8, !tbaa !17
  %i.zv = add i64 %i.zu, 1
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit534, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  br label %bb.gp

bb.gm:                                            ; preds = %bb.gk
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540

bb.gn:                                            ; preds = %bb.gl
  %i.zx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zy = load ptr, ptr %48, align 8, !tbaa !10   ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
end_hunk_1
