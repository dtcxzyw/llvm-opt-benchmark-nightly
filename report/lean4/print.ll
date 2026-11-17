Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/print?download=true
inline.NumInlined: 610
inline.NumDeleted: 247
begin_hunk_0_@_ZN4lean13print_expr_fn5printERKNS_4exprE:bb.a
          to label %_ZN4lean10object_refD2Ev.exit47 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #20
  unreachable

_ZN4lean10object_refD2Ev.exit47:                  ; preds = %_ZN4lean13print_expr_fn16print_arrow_bodyERKNS_4exprE.exit, %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN4lean10object_refD2Ev.exit32

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %tailrecurse.i70, %_ZN4lean13print_expr_fn11print_childERKNS_4exprE.exit40, %bb.ax, %.noexc41.thread, %.noexc41
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume

bb.bd:                                            ; preds = %bb.a
  tail call void @_ZN4lean13print_expr_fn10print_sortERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN4lean10object_refD2Ev.exit32

bb.be:                                            ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !21 ; 3 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %.val.i.i.i48 = load i32, ptr %i.do, align 4
  %i.dp = lshr i32 %.val.i.i.i48, 24
  %trunc77 = trunc nuw i32 %i.dp to i8
  switch i8 %trunc77, label %_ZN4lean10object_refD2Ev.exit32 [
    i8 0, label %bb.bf
    i8 1, label %bb.bk
  ]

bb.bf:                                            ; preds = %bb.be
  %i.dq = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !21, !noalias !98 ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.du = trunc i64 %i.dt to i1
  br i1 %i.du, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dv = lshr i64 %i.dt, 1
  call void @_ZN4lean3mpzC1Em(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.dv)
  br label %_ZNK4lean3nat6to_mpzEv.exit49

bb.bh:                                            ; preds = %bb.bf
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @_ZN4lean3mpzC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.dw)
  br label %_ZNK4lean3nat6to_mpzEv.exit49

_ZNK4lean3nat6to_mpzEv.exit49:                    ; preds = %bb.bg, %bb.bh
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_3mpzE(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bi unwind label %bb.bj     ; 0 uses

bb.bi:                                            ; preds = %_ZNK4lean3nat6to_mpzEv.exit49
  call void @_ZN4lean3mpzD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN4lean10object_refD2Ev.exit32

bb.bj:                                            ; preds = %_ZNK4lean3nat6to_mpzEv.exit49
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean3mpzD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

bb.bk:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !21, !noalias !99 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ea, i64 8
  %.val.i.i.i50 = load i64, ptr %i.ec, align 8, !tbaa !100, !noalias !99 ; 3 uses
  %i.ed = add i64 %.val.i.i.i50, -1               ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ee, ptr %10, align 8, !tbaa !29, !alias.scope !99
  %i.ef = icmp ugt i64 %i.ed, 15
  br i1 %i.ef, label %bb.bl, label %._crit_edge.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.eg = icmp slt i64 %i.ed, 0
  br i1 %i.eg, label %.noexc.i.i, label %bb.bm

.noexc.i.i:                                       ; preds = %bb.bl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.eh = icmp slt i64 %.val.i.i.i50, 0
  br i1 %i.eh, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !39

.noexc9.i.i:                                      ; preds = %bb.bm
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.bm
  %i.ei = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.val.i.i.i50) #21 ; 2 uses
  store ptr %i.ei, ptr %10, align 8, !tbaa !36, !alias.scope !99
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !33, !alias.scope !99
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.bk
  %i.ej = phi ptr [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.ee, %bb.bk ] ; 3 uses
  switch i64 %i.ed, label %bb.bo [
    i64 1, label %bb.bn
    i64 0, label %_ZNK4lean10string_ref13to_std_stringB5cxx11Ev.exit
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i
  %i.ek = load i8, ptr %i.eb, align 8, !tbaa !33
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !33
  br label %_ZNK4lean10string_ref13to_std_stringB5cxx11Ev.exit

bb.bo:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr nonnull align 8 %i.eb, i64 %i.ed, i1 false)
  br label %_ZNK4lean10string_ref13to_std_stringB5cxx11Ev.exit

_ZNK4lean10string_ref13to_std_stringB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.bn, %bb.bo
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ed, ptr %i.el, align 8, !tbaa !32, !alias.scope !99
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ed
  store i8 0, ptr %i.em, align 1, !tbaa !33
  %i.en = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40 ; 2 uses
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK4lean10string_ref13to_std_stringB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ep = load ptr, ptr %10, align 8, !tbaa !36
  store ptr %i.ep, ptr %11, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.eq, align 8, !tbaa !47
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !48
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_7escapedE(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.eu = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ee
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.ew = load i64, ptr %i.ee, align 8, !tbaa !33
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %_ZN4lean10object_refD2Ev.exit32

bb.bq:                                            ; preds = %_ZNK4lean10string_ref13to_std_stringB5cxx11Ev.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.br ], [ %i.ey, %bb.bq ]
  %i.fa = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ee
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.bs
  %i.fc = load i64, ptr %i.ee, align 8, !tbaa !33
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %common.resume

_ZN4lean10object_refD2Ev.exit32:                  ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.be, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4lean10object_refD2Ev.exit47, %bb.bd, %bb.y, %bb.x, %bb.w, %_ZN4leanlsERSoRKNS_3natE.exit, %bb.o, %bb.k, %bb.j, %_ZN4lean10object_refD2Ev.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_4nameE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean13print_expr_fn11print_mdataERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::mpz", align 8         ; 8 uses
  %3 = alloca %"class.lean::list_ref", align 8    ; 9 uses
  %4 = alloca %"class.lean::escaped", align 8     ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.13, i64 noundef 7) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = load ptr, ptr %1, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !21
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEC2ERKS5_.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.e, align 4, !tbaa !23 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.i, ptr %i.e, align 4, !tbaa !23
  br label %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEC2ERKS5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = atomicrmw add ptr %i.e, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEC2ERKS5_.exit

_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEC2ERKS5_.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.k = trunc i64 %i.f to i1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEC2ERKS5_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEaSERKS5_.exit
  %i.n = phi ptr [ %i.e, %.lr.ph ], [ %i.bd, %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEaSERKS5_.exit ] ; 8 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_4nameE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %bb.h unwind label %.loopexit  ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val.i.i = load i32, ptr %i.x, align 4
  %i.y = lshr i32 %.val.i.i, 24
  %trunc = trunc nuw i32 %i.y to i8
  switch i8 %trunc, label %_ZNSolsEb.exit [
    i8 1, label %bb.i
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 0, label %bb.p
  ]

.loopexit:                                        ; preds = %bb.i, %bb.k, %bb.f, %bb.g, %bb.j, %bb.m, %bb.n, %_ZNSolsEb.exit, %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %3, align 8
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge, %bb.aa
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.aa = invoke noundef zeroext i1 @_ZNK4lean10data_value8get_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i1 noundef zeroext %i.aa)
          to label %_ZNSolsEb.exit unwind label %.loopexit ; 0 uses

bb.k:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_4nameE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_ZNSolsEb.exit unwind label %.loopexit ; 0 uses

bb.l:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21, !noalias !103 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = lshr i64 %i.ai, 1
  invoke void @_ZN4lean3mpzC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ak)
          to label %_ZNK4lean3nat6to_mpzEv.exit.i unwind label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  invoke void @_ZN4lean3mpzC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %_ZNK4lean3nat6to_mpzEv.exit.i unwind label %.loopexit

_ZNK4lean3nat6to_mpzEv.exit.i:                    ; preds = %bb.n, %bb.m
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_3mpzE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4leanlsERSoRKNS_3natE.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZNK4lean3nat6to_mpzEv.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %3, align 8
  call void @_ZN4lean3mpzD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body

_ZN4leanlsERSoRKNS_3natE.exit:                    ; preds = %_ZNK4lean3nat6to_mpzEv.exit.i
  call void @_ZN4lean3mpzD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNSolsEb.exit

bb.p:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %4, align 8, !tbaa !46
  store i8 0, ptr %i.l, align 8, !tbaa !47
  store i32 0, ptr %i.m, align 4, !tbaa !48
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_7escapedE(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSolsEb.exit

bb.r:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

_ZNSolsEb.exit:                                   ; preds = %bb.j, %_ZN4leanlsERSoRKNS_3natE.exit, %bb.k, %bb.q, %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %bb.s unwind label %.loopexit  ; 0 uses

bb.s:                                             ; preds = %_ZNSolsEb.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 7 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 1
  %.not.i.i.i.i16 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i16, label %bb.t, label %_ZN4lean3incEP11lean_object.exit.i.i

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i.i17 = load i32, ptr %i.ax, align 4, !tbaa !23 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i.i.i.i17, 0
  br i1 %i.ba, label %bb.u, label %bb.v, !prof !24

bb.u:                                             ; preds = %bb.t
  %i.bb = add nuw i32 %.val.i.i.i.i.i17, 1
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !23
  br label %_ZN4lean3incEP11lean_object.exit.i.i

bb.v:                                             ; preds = %bb.t
  %.not.i.i.i.i.i18 = icmp eq i32 %.val.i.i.i.i.i17, 0
  br i1 %.not.i.i.i.i.i18, label %_ZN4lean3incEP11lean_object.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = atomicrmw add ptr %i.ax, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.aw, align 8, !tbaa !21
  br label %_ZN4lean3incEP11lean_object.exit.i.i

_ZN4lean3incEP11lean_object.exit.i.i:             ; preds = %bb.s, %bb.u, %bb.v, %bb.w
  %i.bd = phi ptr [ %i.ax, %bb.s ], [ %i.ax, %bb.u ], [ %i.ax, %bb.v ], [ %.pre.i.i, %bb.w ] ; 3 uses
  %i.be = load i32, ptr %i.n, align 8, !tbaa !23  ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.x, label %bb.y, !prof !24

bb.x:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.n, align 8, !tbaa !23
  br label %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEaSERKS5_.exit

bb.y:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i
  %.not.i1.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEaSERKS5_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.n)
          to label %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEaSERKS5_.exit unwind label %.loopexit

_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEaSERKS5_.exit: ; preds = %bb.z, %bb.x, %bb.y
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEaSERKS5_.exit, %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEC2ERKS5_.exit
  %i.bj = phi ptr [ %i.e, %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEC2ERKS5_.exit ], [ %i.bd, %_ZN4lean8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEaSERKS5_.exit ] ; 5 uses
  store ptr %i.bj, ptr %3, align 8
  %i.bk = load ptr, ptr %1, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  invoke void @_ZN4lean13print_expr_fn5printERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %._crit_edge
  %i.bm = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %bb.aa
  %i.bo = ptrtoint ptr %i.bj to i64
  %i.bp = and i64 %i.bo, 1
  %.not.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i, label %bb.ab, label %_ZN4lean10object_refD2Ev.exit

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.bq = load i32, ptr %i.bj, align 4, !tbaa !23 ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !24

bb.ac:                                            ; preds = %bb.ab
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %i.bj, align 4, !tbaa !23
  br label %_ZN4lean10object_refD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i1.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bj)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #20
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.r ], [ %i.an, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp25, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean13print_expr_fn11print_childERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4lean9is_atomicERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !104
  br i1 %i.a, label %.loopexit, label %.lr.ph.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZN4lean9is_atomicERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !104
  br i1 %i.c, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %tailrecurse.i
  %.tr4.i = phi ptr [ %i.b, %tailrecurse.i ], [ %1, %bb.a ]
  %i.d = load ptr, ptr %.tr4.i, align 8, !tbaa !21 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val.i.i.i.i.i = load i32, ptr %i.e, align 4
  %.mask.i.i = and i32 %.val.i.i.i.i.i, -16777216
  %i.f = icmp eq i32 %.mask.i.i, 184549376
  br i1 %i.f, label %tailrecurse.i, label %_ZN4lean13print_expr_fn9is_atomicERKNS_4exprE.exit

.loopexit:                                        ; preds = %tailrecurse.i, %bb.a
  tail call void @_ZN4lean13print_expr_fn5printERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.b

_ZN4lean13print_expr_fn9is_atomicERKNS_4exprE.exit: ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.17, i64 noundef 1) ; 0 uses
  tail call void @_ZN4lean13print_expr_fn5printERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.18, i64 noundef 1) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4lean13print_expr_fn9is_atomicERKNS_4exprE.exit, %.loopexit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_3mpzE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4lean3mpzD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean13print_expr_fn11print_constERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::level", align 8       ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_4nameE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.19, i64 noundef 2) ; 0 uses
  %.sroa.09.012 = load ptr, ptr %i.b, align 8, !tbaa !25 ; 3 uses
  %.not13 = icmp eq ptr %.sroa.09.012, inttoptr (i64 1 to ptr)
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.09.012, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 5 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !21
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, 1
  %.not.i.i.i.i.peel = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.peel, label %bb.c, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel

bb.c:                                             ; preds = %.lr.ph.preheader
  %.val.i.i.i.i.i.peel = load i32, ptr %i.l, align 4, !tbaa !23 ; 3 uses
  %i.o = icmp sgt i32 %.val.i.i.i.i.i.peel, 0
  br i1 %i.o, label %bb.f, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.peel = icmp eq i32 %.val.i.i.i.i.i.peel, 0
  br i1 %.not.i.i.i.i.i.peel, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = atomicrmw add ptr %i.l, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel

bb.f:                                             ; preds = %bb.c
  %i.q = add nuw i32 %.val.i.i.i.i.i.peel, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !23
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel: ; preds = %.lr.ph.preheader, %bb.d, %bb.e, %bb.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_5levelE(ptr noundef nonnull align 8 dereferenceable(8) %.pre, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %i.s = load ptr, ptr %2, align 8, !tbaa !21     ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 1
  %.not.i.i.i.peel = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.peel, label %bb.h, label %_ZN4lean10object_refD2Ev.exit.peel

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.s, align 4, !tbaa !23   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.k, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  %.not.i1.i.i.peel = icmp eq i32 %i.v, 0
  br i1 %.not.i1.i.i.peel, label %_ZN4lean10object_refD2Ev.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.s)
          to label %_ZN4lean10object_refD2Ev.exit.peel unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.s, align 4, !tbaa !23
  br label %_ZN4lean10object_refD2Ev.exit.peel

_ZN4lean10object_refD2Ev.exit.peel:               ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.012, i64 16
  %.sroa.09.0.peel = load ptr, ptr %i.y, align 8, !tbaa !25 ; 2 uses
  %.not.peel = icmp eq ptr %.sroa.09.0.peel, inttoptr (i64 1 to ptr)
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit, %_ZN4lean10object_refD2Ev.exit.peel, %bb.b
  %i.z = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.21, i64 noundef 1) ; 0 uses
  br label %bb.u

.lr.ph:                                           ; preds = %_ZN4lean10object_refD2Ev.exit.peel, %_ZN4lean10object_refD2Ev.exit
  %.sroa.09.015 = phi ptr [ %.sroa.09.0, %_ZN4lean10object_refD2Ev.exit ], [ %.sroa.09.0.peel, %_ZN4lean10object_refD2Ev.exit.peel ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 5 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !21
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN4lean5levelC2ERKS0_.exit

bb.l:                                             ; preds = %.lr.ph
  %.val.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !23 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.af, label %bb.m, label %bb.n, !prof !24

bb.m:                                             ; preds = %bb.l
  %i.ag = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !23
  br label %_ZN4lean5levelC2ERKS0_.exit

bb.n:                                             ; preds = %bb.l
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean5levelC2ERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = atomicrmw add ptr %i.ac, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean5levelC2ERKS0_.exit

_ZN4lean5levelC2ERKS0_.exit:                      ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph
  %i.ai = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4lean5levelC2ERKS0_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp29

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4lean5levelC2ERKS0_.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !19, !align !40
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_5levelE(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.am = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.q, label %_ZN4lean10object_refD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !23 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %bb.s, !prof !24

bb.r:                                             ; preds = %bb.q
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !23
  br label %_ZN4lean10object_refD2Ev.exit

end_hunk_0
