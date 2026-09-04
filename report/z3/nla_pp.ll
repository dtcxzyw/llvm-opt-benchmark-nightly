Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nla_pp?download=true
inline.NumInlined: 1470
inline.NumDeleted: 612
begin_hunk_0_@"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_1clEbS5_j":bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i29.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i29.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.83, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33.i
  %i.hz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i.i unwind label %bb.ap

.noexc.i.i:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hz, ptr noundef nonnull align 8 dereferenceable(16) %i.gn)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %.noexc.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #24
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_0clEbRKS5_.exit"

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33.i, %_ZngRK8rational.exit.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i29.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ic, %bb.aq ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i29.i ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume

"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_0clEbRKS5_.exit": ; preds = %bb.v, %_ZlsRSoRK8rational.exit.i, %bb.z, %_ZlsRSoRK8rational.exit20.i, %bb.ae, %_ZlsRSoRK8rational.exit27.i, %_ZN8rationalD2Ev.exit.i
  %i.id = load ptr, ptr %i.b, align 8, !tbaa !25  ; 3 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %_ZNK3nla4core12is_monic_varEj.exit58.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i54

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i54:          ; preds = %"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_0clEbRKS5_.exit"
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 -4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !26
  %.not.i.i.i55 = icmp ult i32 %3, %i.ig
  br i1 %.not.i.i.i55, label %_ZNK3nla4core12is_monic_varEj.exit58, label %_ZNK3nla4core12is_monic_varEj.exit58.thread

_ZNK3nla4core12is_monic_varEj.exit58:             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i54
  %i.ih = zext i32 %3 to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ih
  %.0.i.sroa.speculate.load..i.i57 = load i32, ptr %i.ii, align 4, !tbaa !26 ; 2 uses
  %.not81 = icmp eq i32 %.0.i.sroa.speculate.load..i.i57, -1
  br i1 %.not81, label %_ZNK3nla4core12is_monic_varEj.exit58.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZNK3nla4core12is_monic_varEj.exit58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 4592
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !29
  %i.il = zext i32 %.0.i.sroa.speculate.load..i.i57 to i64
  %i.im = getelementptr inbounds nuw [40 x i8], ptr %i.ik, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !25 ; 4 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %.loopexit, label %_ZNK6vectorIjLb0EjE3endEv.exit60

_ZNK6vectorIjLb0EjE3endEv.exit60:                 ; preds = %bb.ar
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !26 ; 2 uses
  %i.is = zext i32 %i.ir to i64
  %i.it = shl nuw nsw i64 %i.is, 2
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.it
  %.not2885 = icmp eq i32 %i.ir, 0
  br i1 %.not2885, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit60
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph88, %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit67
  %.087 = phi ptr [ %i.io, %.lr.ph88 ], [ %i.jn, %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit67 ] ; 2 uses
  %.02486 = phi ptr [ @.str.37, %.lr.ph88 ], [ @.str.83, %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit67 ] ; 2 uses
  %i.ix = load i32, ptr %.087, align 4, !tbaa !26
  %i.iy = load ptr, ptr %i.iv, align 8, !tbaa !427, !nonnull !19, !align !231 ; 3 uses
  %i.iz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.02486) #22
  %i.ja = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull %.02486, i64 noundef %i.iz) ; 0 uses
  %i.jb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.jc = shl i32 %i.ix, 1                        ; 4 uses
  %i.jd = load ptr, ptr %i.iw, align 8, !tbaa !25 ; 3 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit67, label %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i61

_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i61: ; preds = %bb.as
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 -4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !26
  %.not.i.i62 = icmp ult i32 %i.jc, %i.jg
  br i1 %.not.i.i62, label %.preheader.i.i64, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit67

.preheader.i.i64:                                 ; preds = %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i61, %.preheader.i.i64
  %.07.i.i.i65 = phi i32 [ %i.jj, %.preheader.i.i64 ], [ %i.jc, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i61 ] ; 3 uses
  %i.jh = zext i32 %.07.i.i.i65 to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.i66 = icmp eq i32 %i.jj, %.07.i.i.i65
  br i1 %.not.i.i.i66, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit67, label %.preheader.i.i64

_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit67:     ; preds = %.preheader.i.i64, %bb.as, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i61
  %.sroa.03.0.i.i63 = phi i32 [ %i.jc, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i61 ], [ %i.jc, %bb.as ], [ %.07.i.i.i65, %.preheader.i.i64 ]
  %i.jk = lshr i32 %.sroa.03.0.i.i63, 1
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, i64 noundef %i.jl) ; 0 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.087, i64 4 ; 2 uses
  %.not28 = icmp eq ptr %i.jn, %i.iu
  br i1 %.not28, label %.loopexit, label %bb.as

_ZNK3nla4core12is_monic_varEj.exit58.thread:      ; preds = %"_ZZNK3nla4core11display_rowERSoRKSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS6_EEENK3$_0clEbRKS5_.exit", %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i54, %_ZNK3nla4core12is_monic_varEj.exit58
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !427, !nonnull !19, !align !231 ; 2 uses
  %i.jq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.jr = shl i32 %3, 1                           ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !25 ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit74, label %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i68

_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i68: ; preds = %_ZNK3nla4core12is_monic_varEj.exit58.thread
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !26
  %.not.i.i69 = icmp ult i32 %i.jr, %i.jw
  br i1 %.not.i.i69, label %.preheader.i.i71, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit74

.preheader.i.i71:                                 ; preds = %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i68, %.preheader.i.i71
  %.07.i.i.i72 = phi i32 [ %i.jz, %.preheader.i.i71 ], [ %i.jr, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i68 ] ; 3 uses
  %i.jx = zext i32 %.07.i.i.i72 to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.i73 = icmp eq i32 %i.jz, %.07.i.i.i72
  br i1 %.not.i.i.i73, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit74, label %.preheader.i.i71

_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit74:     ; preds = %.preheader.i.i71, %_ZNK3nla4core12is_monic_varEj.exit58.thread, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i68
  %.sroa.03.0.i.i70 = phi i32 [ %i.jr, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i68 ], [ %i.jr, %_ZNK3nla4core12is_monic_varEj.exit58.thread ], [ %.07.i.i.i72, %.preheader.i.i71 ]
  %i.ka = lshr i32 %.sroa.03.0.i.i70, 1
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, i64 noundef %i.kb) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit67, %bb.ar, %_ZNK6vectorIjLb0EjE3endEv.exit60, %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit74
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN3nla4core7displayERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK3nla7emonics3endEv.exit

_ZNK3nla7emonics3endEv.exit:                      ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZNK3nla7emonics3endEv.exit
  ret ptr %1

.lr.ph:                                           ; preds = %_ZNK3nla7emonics3endEv.exit, %.lr.ph
  %.011 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %_ZNK3nla7emonics3endEv.exit ] ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core11print_monicERKNS_5monicERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(34) %.011, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN3nla4core11display_smtERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4857) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.42, i64 noundef 30) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core24display_declarations_smtERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !230, !nonnull !19, !align !231
  %i.e = tail call noundef nonnull align 8 dereferenceable(105) ptr @_ZNK2lp10lar_solver11constraintsEv(ptr noundef nonnull align 8 dereferenceable(152) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !257  ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %._crit_edge, label %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i

_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26   ; 4 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !259
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load i8, ptr %i.l, align 8, !tbaa !428, !range !18, !noundef !19
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNK2lp14constraint_set18active_constraints3endEv.exit, label %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.lr.ph.i

_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.lr.ph.i: ; preds = %.lr.ph.i.i.preheader.i
  %i.o = zext i32 %i.j to i64
  %i.p = add nsw i64 %i.o, -1                     ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.p, 0
  br i1 %exitcond.not.i53, label %._crit_edge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.lr.ph.i, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i
  %indvars.iv.i.i1.i54 = phi i64 [ %indvars.iv.next.i.i.i, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i ], [ 0, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.lr.ph.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i1.i54, 1 ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !259
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load i8, ptr %i.s, align 8, !tbaa !428, !range !18, !noundef !19
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN2lp14constraint_set18active_constraints8iteratorC2ERKS0_j.exit.loopexit.split.loop.exit.i, label %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.p
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph.i.i.i

_ZN2lp14constraint_set18active_constraints8iteratorC2ERKS0_j.exit.loopexit.split.loop.exit.i: ; preds = %.lr.ph.i.i.i
  %i.v = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK2lp14constraint_set18active_constraints3endEv.exit

_ZNK2lp14constraint_set18active_constraints3endEv.exit: ; preds = %_ZN2lp14constraint_set18active_constraints8iteratorC2ERKS0_j.exit.loopexit.split.loop.exit.i, %.lr.ph.i.i.preheader.i
  %.sroa.2.1.i34 = phi i32 [ %i.v, %_ZN2lp14constraint_set18active_constraints8iteratorC2ERKS0_j.exit.loopexit.split.loop.exit.i ], [ 0, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.not39 = icmp eq i32 %.sroa.2.1.i34, %i.j
  br i1 %.not39, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i, %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.lr.ph.i, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i, %bb.a, %_ZNK2lp14constraint_set18active_constraints3endEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.43, i64 noundef 12) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.44, i64 noundef 17) ; 0 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.45, i64 noundef 8) ; 0 uses
  ret ptr %1

.lr.ph:                                           ; preds = %_ZNK2lp14constraint_set18active_constraints3endEv.exit, %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit
  %i.z = phi ptr [ %i.ag, %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit ], [ %i.g, %_ZNK2lp14constraint_set18active_constraints3endEv.exit ]
  %.041 = phi i32 [ %i.ad, %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit ], [ 0, %_ZNK2lp14constraint_set18active_constraints3endEv.exit ] ; 2 uses
  %.sroa.525.040 = phi i32 [ %.sroa.525.2, %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit ], [ %.sroa.2.1.i34, %_ZNK2lp14constraint_set18active_constraints3endEv.exit ] ; 2 uses
  %i.aa = zext i32 %.sroa.525.040 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !259
  %i.ad = add i32 %.041, 1
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core22display_constraint_smtERSojRKN2lp19lar_base_constraintE(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.041, ptr noundef nonnull align 8 dereferenceable(96) %i.ac) ; 0 uses
  %i.af = add i32 %.sroa.525.040, 1               ; 5 uses
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !257 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit, label %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i19

_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i19: ; preds = %.lr.ph
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !26 ; 4 uses
  %i.ak = icmp ult i32 %i.af, %i.aj
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i, label %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i19
  %i.al = zext i32 %i.af to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !259
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !428, !range !18, !noundef !19
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit, label %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21.lr.ph

_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21.lr.ph: ; preds = %.lr.ph.preheader.i.i.i
  %i.ar = zext i32 %i.aj to i64
  %i.as = add nsw i64 %i.ar, -1                   ; 2 uses
  %exitcond.not55 = icmp eq i64 %i.as, %i.al
  br i1 %exitcond.not55, label %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21.lr.ph, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21
  %indvars.iv.i.i.i3756 = phi i64 [ %indvars.iv.next.i.i.i22, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21 ], [ %i.al, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21.lr.ph ]
  %indvars.iv.next.i.i.i22 = add nuw nsw i64 %indvars.iv.i.i.i3756, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i22
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !259
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !428, !range !18, !noundef !19
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit.loopexit.split.loop.exit, label %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21

_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21: ; preds = %.lr.ph.i.i.i20
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i.i22, %i.as
  br i1 %exitcond.not, label %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit, label %.lr.ph.i.i.i20

_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i.i20
  %i.ay = trunc nuw i64 %indvars.iv.next.i.i.i22 to i32
  br label %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit

_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit: ; preds = %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21.lr.ph, %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit.loopexit.split.loop.exit, %.lr.ph.preheader.i.i.i, %.lr.ph, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i19
  %.sroa.525.2 = phi i32 [ %i.af, %.lr.ph ], [ %i.af, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.lr.ph.i.i.i19 ], [ %i.af, %.lr.ph.preheader.i.i.i ], [ %i.ay, %_ZN2lp14constraint_set18active_constraints8iteratorppEv.exit.loopexit.split.loop.exit ], [ %i.aj, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21.lr.ph ], [ %i.aj, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit.i.i.i21 ] ; 2 uses
  %.not = icmp eq i32 %.sroa.525.2, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core24display_declarations_smtERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4857) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %class.rational, align 8            ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !19, !align !231
  %i.c = tail call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !432
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !433
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = and i64 %i.k, 4294967295
  %.not86 = icmp eq i64 %i.l, 0
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge85:                                    ; preds = %bb.n, %bb.a
  ret ptr %1

bb.b:                                             ; preds = %.lr.ph84, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next, %bb.n ] ; 10 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK3nla4core12is_monic_varEj.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.b
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ad = zext i32 %i.ac to i64
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv, %i.ad
  br i1 %.not.i.i.i, label %_ZNK3nla4core12is_monic_varEj.exit, label %_ZNK3nla4core12is_monic_varEj.exit.thread

_ZNK3nla4core12is_monic_varEj.exit:               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %.0.i.sroa.speculate.load..i.i = load i32, ptr %i.ae, align 4, !tbaa !26
  %.not68 = icmp eq i32 %.0.i.sroa.speculate.load..i.i, -1
  br i1 %.not68, label %_ZNK3nla4core12is_monic_varEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK3nla4core12is_monic_varEj.exit
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.46, i64 noundef 15) ; 0 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %indvars.iv)
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.23, i64 noundef 1) ; 0 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !19, !align !231
  %i.aj = trunc nuw i64 %indvars.iv to i32
  %i.ak = call noundef zeroext i1 @_ZNK2lp10lar_solver10var_is_intEj(ptr noundef nonnull align 8 dereferenceable(152) %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.al = select i1 %i.ak, ptr @.str.47, ptr @.str.48
  %i.am = select i1 %i.ak, i64 3, i64 4
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.al, i64 noundef %i.am) ; 0 uses
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !26
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.as
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.49, i64 noundef 3) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %._crit_edge, label %_ZNK6vectorIjLb0EjE3endEv.exit

_ZNK6vectorIjLb0EjE3endEv.exit:                   ; preds = %bb.c
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !26 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  %.not76 = icmp eq i32 %i.az, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %_ZNK6vectorIjLb0EjE3endEv.exit
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.51, i64 noundef 3) ; 0 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !19, !align !231
  %i.bg = call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !314
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(728) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
  %i.bl = load ptr, ptr %4, align 8, !tbaa !236
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !237
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bl, i64 noundef %i.bm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %._crit_edge
  %i.bo = load ptr, ptr %4, align 8, !tbaa !236   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.p
  br i1 %i.bp, label %_ZlsRSoRK8rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bq = load i64, ptr %i.p, align 8, !tbaa !238
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #23
  br label %_ZlsRSoRK8rational.exit

bb.d:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %4, align 8, !tbaa !236   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.p
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !238
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i61, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %.pn, %.body ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i61 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZlsRSoRK8rational.exit:                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.by = load i8, ptr %i.q, align 4
  %i.bz = and i8 %i.by, -4
  store ptr null, ptr %i.r, align 8, !tbaa !270
  store i32 1, ptr %i.s, align 8, !tbaa !269
  %i.ca = load i8, ptr %i.t, align 4
  %i.cb = and i8 %i.ca, -4
  store i8 %i.cb, ptr %i.t, align 4
  store ptr null, ptr %i.u, align 8, !tbaa !270
  %i.cc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252
  store i32 1, ptr %5, align 8, !tbaa !269
  store i8 %i.bz, ptr %i.q, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
  store i32 1, ptr %i.s, align 8, !tbaa !269
  %i.cd = load i8, ptr %i.t, align 4
  %i.ce = and i8 %i.cd, -2
  store i8 %i.ce, ptr %i.t, align 4
  %i.cf = load ptr, ptr %i.av, align 8, !tbaa !25 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %._crit_edge81, label %_ZNK6vectorIjLb0EjE3endEv.exit47

_ZNK6vectorIjLb0EjE3endEv.exit47:                 ; preds = %_ZlsRSoRK8rational.exit
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ck
  %.not4478 = icmp eq i32 %i.ci, 0
  br i1 %.not4478, label %._crit_edge81, label %.lr.ph80

.lr.ph:                                           ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit, %.lr.ph
  %.04377 = phi ptr [ %i.cq, %.lr.ph ], [ %i.aw, %_ZNK6vectorIjLb0EjE3endEv.exit ] ; 2 uses
  %i.cm = load i32, ptr %.04377, align 4, !tbaa !26
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.50, i64 noundef 2) ; 0 uses
  %i.co = zext i32 %i.cm to i64
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.co) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04377, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.bc
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge81:                                    ; preds = %_ZN8rationalmLERKS_.exit, %_ZlsRSoRK8rational.exit, %_ZNK6vectorIjLb0EjE3endEv.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.cr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252
  invoke void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(728) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %._crit_edge81
  %i.cs = load ptr, ptr %3, align 8, !tbaa !236
  %i.ct = load i64, ptr %i.v, align 8, !tbaa !237
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cs, i64 noundef %i.ct)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i51 unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i51: ; preds = %.noexc
  %i.cv = load ptr, ptr %3, align 8, !tbaa !236   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.w
end_hunk_0
