Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_fpa?download=true
inline.NumInlined: 1861
inline.NumDeleted: 264
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Z3_fpa_get_numeral_significand_string:bb.a
  br i1 %i.ak, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread

_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit:            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !176
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread

_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread:     ; preds = %.noexc, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i, %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit, %_Z9is_app_ofPK4exprii.exit, %bb.f
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull @.str.11)
          to label %bb.az unwind label %bb.h

bb.h:                                             ; preds = %.invoke, %_Z9is_app_ofPK4exprii.exit.thread, %bb.e, %bb.b, %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.bb

bb.i:                                             ; preds = %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %i.l, ptr %2, align 8, !tbaa !180
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  invoke void @_ZN3mpfC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZN10scoped_mpfC2ER11mpf_manager.exit unwind label %bb.t

_ZN10scoped_mpfC2ER11mpf_manager.exit:            ; preds = %bb.i
  %i.aq = invoke noundef zeroext i1 @_ZN15fpa_decl_plugin10is_numeralEP4exprR3mpf(ptr noundef nonnull align 8 dereferenceable(1008) %i.o, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %_ZN10scoped_mpfC2ER11mpf_manager.exit
  br i1 %i.aq, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ar = invoke noundef zeroext i1 @_ZN11mpf_manager9is_normalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  br i1 %i.ar, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 @_ZN11mpf_manager7is_zeroERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %i.at, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = invoke noundef zeroext i1 @_ZN11mpf_manager6is_infERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %i.au, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull @.str.11)
          to label %bb.av unwind label %bb.u

bb.t:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ay

bb.u:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %_ZN10scoped_mpfC2ER11mpf_manager.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ax

bb.v:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  %i.ax = load i32, ptr %i.ap, align 8
  %i.ay = lshr i32 %i.ax, 15
  %i.az = and i32 %i.ay, 65535                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.l, ptr %3, align 8, !tbaa !215
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !210
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = and i8 %i.bc, -4                        ; 2 uses
  store i8 %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.be, align 8, !tbaa !211
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store i32 1, ptr %i.bf, align 8, !tbaa !210
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 6 uses
  %i.bh = load i8, ptr %i.bg, align 4
  %i.bi = and i8 %i.bh, -4
  store i8 %i.bi, ptr %i.bg, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.bj, align 8, !tbaa !211
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bm = load i8, ptr %i.bl, align 4
  %i.bn = and i8 %i.bm, 1
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bp = load i32, ptr %i.bk, align 8, !tbaa !210
  store i32 %i.bp, ptr %i.ba, align 8, !tbaa !210
  store i8 %i.bd, ptr %i.bb, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bk)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.ac

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.x, %bb.w
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  store i32 1, ptr %i.bf, align 8, !tbaa !210
  %i.bq = load i8, ptr %i.bg, align 4
  %i.br = and i8 %i.bq, -2
  store i8 %i.br, ptr %i.bg, align 4
  %i.bs = invoke noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %i.bs, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %bb.z
  %.pre = add nsw i32 %i.az, -1
  br label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 760
  %i.bu = add nsw i32 %i.az, -1                   ; 2 uses
  %i.bv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers2clEjb(ptr noundef nonnull align 8 dereferenceable(104) %i.bt, i32 noundef %i.bu, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11mpq_managerILb0EE3addERK3mpqRK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ah, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.x, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.y
  %i.bw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.au

bb.ad:                                            ; preds = %._crit_edge, %bb.ab
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.bu, %bb.ab ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 760
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers2clEjb(ptr noundef nonnull align 8 dereferenceable(104) %i.bx, i32 noundef %.pre-phi, i1 noundef zeroext false)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11mpq_managerILb0EE3divERK3mpqRK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %bb.ae
  %i.bz = invoke noundef zeroext i1 @_ZN11mpf_manager6is_infERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.ag unwind label %bb.ac

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ba, align 8, !tbaa !210
  %i.ca = load i8, ptr %i.bb, align 4
  %i.cb = and i8 %i.ca, -2
  store i8 %i.cb, ptr %i.bb, align 4
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %_ZN11mpq_managerILb0EE3setER3mpqi.exit unwind label %bb.ac

_ZN11mpq_managerILb0EE3setER3mpqi.exit:           ; preds = %bb.ah
  store i32 1, ptr %i.bf, align 8, !tbaa !210
  %i.cc = load i8, ptr %i.bg, align 4
  %i.cd = and i8 %i.cc, -2
  store i8 %i.cd, ptr %i.bg, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN11mpq_managerILb0EE3setER3mpqi.exit, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  invoke void @_ZN11mpq_managerILb0EE15display_decimalERSoRK3mpqjb(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i32 noundef %i.az, i1 noundef zeroext false)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !221, !noalias !252 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.ak
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 48
  %7 = load ptr, ptr %i.ci, align 8, !tbaa !222, !noalias !252 ; 2 uses
  %8 = icmp ugt ptr %i.ch, %7
  %.08.i.i.i = select i1 %8, ptr %i.ch, ptr %7
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !223, !noalias !252
  %i.cl = ptrtoint ptr %.08.i.i.i to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !224, !noalias !252
  %i.cp = load ptr, ptr %6, align 8, !tbaa !225, !noalias !252
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  store i8 0, ptr %i.cq, align 1, !tbaa !226, !noalias !252
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.cs, ptr %5, align 8, !tbaa !227, !alias.scope !252
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !225, !noalias !252 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !224, !noalias !252 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.cx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ct, ptr %5, align 8, !tbaa !225, !alias.scope !252
  %i.da = load i64, ptr %i.cu, align 8, !tbaa !226, !noalias !252
  store i64 %i.da, ptr %i.cs, align 8, !tbaa !226, !alias.scope !252
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !224, !noalias !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.al
  %i.db = phi i64 [ %i.cx, %bb.al ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !224, !alias.scope !252
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !225, !noalias !252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dc, i8 0, i64 9, i1 false), !noalias !252
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.cf, ptr noundef nonnull %i.cu, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.df = load ptr, ptr %5, align 8, !tbaa !225, !alias.scope !252 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cs
  br i1 %i.dg, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.dh = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.di = load ptr, ptr %5, align 8, !tbaa !225   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cs
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.dk = load i64, ptr %i.cs, align 8, !tbaa !226
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.dm = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dm, ptr %4, align 8, !tbaa !229
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.do = getelementptr i8, ptr %i.dm, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %4, i64 %i.dp
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !229
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dr, ptr %i.ce, align 8, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cf, align 8, !tbaa !229
  %i.ds = load ptr, ptr %i.cr, align 8, !tbaa !225 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cu
  br i1 %i.dt, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.du = load i64, ptr %i.cu, align 8, !tbaa !226
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cf, align 8, !tbaa !229
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dw) #12
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !229
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dz = getelementptr i8, ptr %i.dx, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds i8, ptr %4, i64 %i.ea
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !229
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ec, align 8, !tbaa !231
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ed) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ee = load ptr, ptr %3, align 8, !tbaa !217, !nonnull !162, !align !163 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %.noexc.i unwind label %bb.ao

.noexc.i:                                         ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #13
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.av

bb.ap:                                            ; preds = %bb.ai
  %i.eh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.at

bb.aq:                                            ; preds = %bb.aj
  %i.ei = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.as

bb.ar:                                            ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ek = load ptr, ptr %5, align 8, !tbaa !225   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.cs
  br i1 %i.el, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ar, %bb.am
  %.sink = phi ptr [ %i.df, %bb.am ], [ %i.ek, %bb.ar ]
  %.pn.ph = phi { ptr, i32 } [ %i.de, %bb.am ], [ %i.ej, %bb.ar ]
  %i.em = load i64, ptr %i.cs, align 8, !tbaa !226
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.en) #14
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ar, %bb.am
  %.pn = phi { ptr, i32 } [ %i.de, %bb.am ], [ %i.ej, %bb.ar ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.as

bb.as:                                            ; preds = %.body, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ei, %bb.aq ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.as ], [ %i.eh, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ac
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.at ], [ %i.bw, %bb.ac ]
  call void @_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ax

bb.av:                                            ; preds = %bb.s, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit
  %.063 = phi ptr [ %i.dh, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit ], [ @.str.12, %bb.s ]
  %i.eo = load ptr, ptr %2, align 8, !tbaa !183, !nonnull !162, !align !163
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 728
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !192, !nonnull !162, !align !163
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %i.er)
          to label %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #13
  unreachable

_ZN15_scoped_numeralI11mpf_managerED2Ev.exit:     ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.az

bb.ax:                                            ; preds = %bb.au, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.au ], [ %i.aw, %bb.u ]
  call void @_ZN15_scoped_numeralI11mpf_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.t
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ax ], [ %i.av, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.bb

bb.az:                                            ; preds = %.invoke, %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit, %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread
  %.265 = phi ptr [ @.str.12, %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread ], [ null, %.invoke ], [ %.063, %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit ] ; 2 uses
  br i1 %i.b, label %bb.ba, label %_ZN10z3_log_ctxD2Ev.exit, !prof !165

bb.ba:                                            ; preds = %bb.az
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
end_hunk_0
begin_hunk_1_@Z3_fpa_get_numeral_exponent_string:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !178
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1540
  %i.n = load i32, ptr %i.m, align 4, !tbaa !203  ; 2 uses
  %i.o = invoke noundef ptr @_ZNK11ast_manager10get_pluginEi(ptr noundef nonnull align 8 dereferenceable(952) %i.i, i32 noundef %i.n)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 65535
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !208
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !171  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_Z9is_app_ofPK4exprii.exit.thread, label %_Z9is_app_ofPK4exprii.exit

_Z9is_app_ofPK4exprii.exit:                       ; preds = %bb.g
  %i.x = load i32, ptr %i.w, align 8, !tbaa !175
  %i.y = icmp eq i32 %i.x, %i.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, 8
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread, label %_Z9is_app_ofPK4exprii.exit.thread

_Z9is_app_ofPK4exprii.exit.thread:                ; preds = %bb.g, %_Z9is_app_ofPK4exprii.exit
  %i.ad = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_Z9is_app_ofPK4exprii.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !171 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i: ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !164
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !175
  %i.ak = icmp eq i32 %i.aj, %i.ai
  br i1 %i.ak, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread

_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit:            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !176
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread

_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread:     ; preds = %.noexc, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i, %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit, %_Z9is_app_ofPK4exprii.exit, %bb.f
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull @.str.11)
          to label %bb.ax unwind label %bb.h

bb.h:                                             ; preds = %.invoke, %_Z9is_app_ofPK4exprii.exit.thread, %bb.e, %bb.b, %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.az

bb.i:                                             ; preds = %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.l, ptr %3, align 8, !tbaa !180
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  invoke void @_ZN3mpfC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZN10scoped_mpfC2ER11mpf_manager.exit unwind label %bb.t

_ZN10scoped_mpfC2ER11mpf_manager.exit:            ; preds = %bb.i
  %i.aq = invoke noundef zeroext i1 @_ZN15fpa_decl_plugin10is_numeralEP4exprR3mpf(ptr noundef nonnull align 8 dereferenceable(1008) %i.o, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.j unwind label %bb.aa

bb.j:                                             ; preds = %_ZN10scoped_mpfC2ER11mpf_manager.exit
  br i1 %i.aq, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ar = invoke noundef zeroext i1 @_ZN11mpf_manager9is_normalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  br i1 %i.ar, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.n unwind label %bb.aa

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 @_ZN11mpf_manager7is_zeroERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  br i1 %i.at, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = invoke noundef zeroext i1 @_ZN11mpf_manager6is_infERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  br i1 %i.au, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull @.str.11)
          to label %bb.at unwind label %bb.aa

bb.t:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.aw

bb.u:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  %i.aw = load i32, ptr %i.ap, align 8
  %i.ax = and i32 %i.aw, 32767                    ; 3 uses
  br i1 %2, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ay = invoke noundef zeroext i1 @_ZN11mpf_manager7is_zeroERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  br i1 %i.ay, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = invoke noundef zeroext i1 @_ZN11mpf_manager6is_infERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  br i1 %i.az, label %.invoke106, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !242
  %i.bc = invoke noundef i64 @_ZN11mpf_manager8bias_expEjl(ptr noundef nonnull align 8 dereferenceable(840) %i.l, i32 noundef %i.ax, i64 noundef %i.bb)
          to label %bb.aj unwind label %bb.aa

bb.aa:                                            ; preds = %.invoke106, %_ZN10scoped_mpfC2ER11mpf_manager.exit, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.av

bb.ab:                                            ; preds = %bb.u
  %i.be = invoke noundef zeroext i1 @_ZN11mpf_manager7is_zeroERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.be, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = invoke noundef zeroext i1 @_ZN11mpf_manager6is_infERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.ae unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bf, label %.invoke106, label %bb.af

.invoke106:                                       ; preds = %bb.y, %bb.ae
  %i.bg = invoke noundef i64 @_ZN11mpf_manager10mk_top_expEj(ptr noundef nonnull align 8 dereferenceable(840) %i.l, i32 noundef %i.ax)
          to label %bb.aj unwind label %bb.aa

bb.af:                                            ; preds = %bb.ae
  %i.bh = invoke noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.ag unwind label %bb.aa

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bi = invoke noundef i64 @_ZN11mpf_manager10mk_min_expEj(ptr noundef nonnull align 8 dereferenceable(840) %i.l, i32 noundef %i.ax)
          to label %bb.aj unwind label %bb.aa

bb.ai:                                            ; preds = %bb.ag
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !242
  br label %bb.aj

bb.aj:                                            ; preds = %.invoke106, %bb.ac, %bb.ai, %bb.ah, %bb.w, %bb.z
  %.0 = phi i64 [ %i.bc, %bb.z ], [ 0, %bb.w ], [ %i.bi, %bb.ah ], [ 0, %bb.ac ], [ %i.bg, %.invoke106 ], [ %i.bk, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %.0)
          to label %_ZNSolsEl.exit unwind label %bb.ap ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !221, !noalias !267 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNSolsEl.exit
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %7 = load ptr, ptr %i.bq, align 8, !tbaa !222, !noalias !267 ; 2 uses
  %8 = icmp ugt ptr %i.bp, %7
  %.08.i.i.i = select i1 %8, ptr %i.bp, ptr %7
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !223, !noalias !267
  %i.bt = ptrtoint ptr %.08.i.i.i to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !224, !noalias !267
  %i.bx = load ptr, ptr %6, align 8, !tbaa !225, !noalias !267
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !226, !noalias !267
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNSolsEl.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ca, ptr %5, align 8, !tbaa !227, !alias.scope !267
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !225, !noalias !267 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !224, !noalias !267 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.cb, ptr %5, align 8, !tbaa !225, !alias.scope !267
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !226, !noalias !267
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !226, !alias.scope !267
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !224, !noalias !267
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.al
  %i.cj = phi i64 [ %i.cf, %bb.al ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !224, !alias.scope !267
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !225, !noalias !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ck, i8 0, i64 9, i1 false), !noalias !267
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bn, ptr noundef nonnull %i.cc, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !225, !alias.scope !267 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ca
  br i1 %i.co, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.cp = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = load ptr, ptr %5, align 8, !tbaa !225   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ca
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.cs = load i64, ptr %i.ca, align 8, !tbaa !226
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.cu = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cu, ptr %4, align 8, !tbaa !229
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cw = getelementptr i8, ptr %i.cu, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %4, i64 %i.cx
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !229
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cz, ptr %i.bl, align 8, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bn, align 8, !tbaa !229
  %i.da = load ptr, ptr %i.bz, align 8, !tbaa !225 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cc
  br i1 %i.db, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dc = load i64, ptr %i.cc, align 8, !tbaa !226
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bn, align 8, !tbaa !229
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.de) #12
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.df, ptr %4, align 8, !tbaa !229
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dh = getelementptr i8, ptr %i.df, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %4, i64 %i.di
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !229
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dk, align 8, !tbaa !231
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dl) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.at

bb.ao:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.as

bb.ap:                                            ; preds = %bb.ak
  %i.dn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !225   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ca
  br i1 %i.dq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.aq, %bb.am
  %.sink = phi ptr [ %i.cn, %bb.am ], [ %i.dp, %bb.aq ]
  %.pn.ph = phi { ptr, i32 } [ %i.cm, %bb.am ], [ %i.do, %bb.aq ]
  %i.dr = load i64, ptr %i.ca, align 8, !tbaa !226
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ds) #14
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.aq, %bb.am
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.am ], [ %i.do, %bb.aq ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ar

bb.ar:                                            ; preds = %.body, %bb.ap
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.dn, %bb.ap ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ar ], [ %i.dm, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.av

bb.at:                                            ; preds = %bb.s, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.067 = phi ptr [ %i.cp, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ @.str.12, %bb.s ]
  %i.dt = load ptr, ptr %3, align 8, !tbaa !183, !nonnull !162, !align !163
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 728
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !192, !nonnull !162, !align !163
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #13
  unreachable

_ZN15_scoped_numeralI11mpf_managerED2Ev.exit:     ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ax

bb.av:                                            ; preds = %bb.aa, %bb.as
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.aa ], [ %.pn.pn.pn, %bb.as ]
  call void @_ZN15_scoped_numeralI11mpf_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.av ], [ %i.av, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.az

bb.ax:                                            ; preds = %.invoke, %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit, %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread
  %.269 = phi ptr [ @.str.12, %_ZL5is_fpP11_Z3_contextP7_Z3_ast.exit.thread ], [ null, %.invoke ], [ %.067, %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit ] ; 2 uses
  br i1 %i.b, label %bb.ay, label %_ZN10z3_log_ctxD2Ev.exit, !prof !165

bb.ay:                                            ; preds = %bb.ax
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.az:                                            ; preds = %bb.aw, %bb.h
  %.pn83 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.aw ], [ %i.ao, %bb.h ] ; 3 uses
  %.10 = extractvalue { ptr, i32 } %.pn83, 1
  br i1 %i.b, label %bb.ba, label %_ZN10z3_log_ctxD2Ev.exit90, !prof !165

bb.ba:                                            ; preds = %bb.az
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit90

_ZN10z3_log_ctxD2Ev.exit90:                       ; preds = %bb.az, %bb.ba
  %i.dz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #12
  %i.ea = icmp eq i32 %.10, %i.dz
  br i1 %i.ea, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %_ZN10z3_log_ctxD2Ev.exit90
  %.1065 = extractvalue { ptr, i32 } %.pn83, 0
  %i.eb = call ptr @__cxa_begin_catch(ptr %.1065) #12
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.eb)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
end_hunk_1
