Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpf?download=true
inline.NumInlined: 1714
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11mpf_manager9to_stringB5cxx11ERK3mpf:bb.a
          to label %.noexc43 unwind label %bb.f

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit42
  %i.bs = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %.noexc44 unwind label %bb.f

.noexc44:                                         ; preds = %.noexc43
  %i.bt = icmp eq i64 %i.bm, %i.bs
  br i1 %i.bt, label %_ZN11mpf_manager7is_zeroERK3mpf.exit.i, label %_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i

_ZN11mpf_manager7is_zeroERK3mpf.exit.i:           ; preds = %.noexc44
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !14
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, label %_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i

_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i:    ; preds = %_ZN11mpf_manager7is_zeroERK3mpf.exit.i, %.noexc44
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !21
  %i.by = load i32, ptr %2, align 8
  %i.bz = and i32 %i.by, 32767
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.cb = add nsw i32 %i.bz, -1
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i32 noundef %i.cb, i1 noundef zeroext true)
          to label %.noexc45 unwind label %bb.f

.noexc45:                                         ; preds = %_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i
  %i.cd = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cc)
          to label %_ZN11mpf_manager11is_denormalERK3mpf.exit unwind label %bb.f

_ZN11mpf_manager11is_denormalERK3mpf.exit:        ; preds = %.noexc45
  %i.ce = icmp eq i64 %i.bx, %i.cd
  br i1 %i.ce, label %bb.e, label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.e:                                             ; preds = %_ZN11mpf_manager11is_denormalERK3mpf.exit
  %i.cf = load i32, ptr %2, align 8
  %i.cg = and i32 %i.cf, 32767
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.ci = add nsw i32 %i.cg, -1
  %i.cj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i32 noundef %i.ci, i1 noundef zeroext true)
          to label %.noexc47 unwind label %bb.f

.noexc47:                                         ; preds = %bb.e
  %i.ck = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_ZN11mpf_manager10mk_min_expEj.exit unwind label %bb.f

_ZN11mpf_manager10mk_min_expEj.exit:              ; preds = %.noexc47
  %i.cl = add nsw i64 %i.ck, 1
  br label %bb.g

bb.f:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51, %bb.i, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %.noexc47, %bb.e, %.noexc45, %_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i, %.noexc43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit42, %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %_ZN11mpf_manager7is_zeroERK3mpf.exit.i, %_ZN11mpf_manager11is_denormalERK3mpf.exit
  %i.cn = load i8, ptr %i.bd, align 4
  %i.co = and i8 %i.cn, -2
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.cq = load i32, ptr %2, align 8
  %i.cr = lshr i32 %i.cq, 15
  %i.cs = and i32 %i.cr, 65535
  %i.ct = add nsw i32 %i.cs, -1
  store i32 1, ptr %i.bc, align 8, !tbaa !14
  store i8 %i.co, ptr %i.bd, align 4
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i32 noundef %i.ct)
          to label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit unwind label %bb.f

_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit:    ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %_ZN11mpf_manager10mk_min_expEj.exit, %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit
  %.0 = phi i64 [ %i.cu, %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit ], [ %i.cl, %_ZN11mpf_manager10mk_min_expEj.exit ]
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  %i.cy = load i32, ptr %2, align 8
  %i.cz = lshr i32 %i.cy, 15
  %i.da = and i32 %i.cz, 65535
  %i.db = add nsw i32 %i.da, -1
  %i.dc = load i8, ptr %i.bi, align 4
  %i.dd = and i8 %i.dc, 1
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51 unwind label %bb.f

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51:   ; preds = %bb.h, %bb.i
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.db)
          to label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit54 unwind label %bb.f

_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit54:  ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.df, align 8, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 4
  %i.di = and i8 %i.dh, -4                        ; 2 uses
  store i8 %i.di, ptr %i.dg, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.dj, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 5 uses
  %i.dm = load i8, ptr %i.dl, align 4
  %i.dn = and i8 %i.dm, -4
  store i8 %i.dn, ptr %i.dl, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.do, align 8, !tbaa !18
  %i.dp = load i8, ptr %i.bd, align 4
  %i.dq = and i8 %i.dp, 1
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit54
  %i.ds = load i32, ptr %i.bc, align 8, !tbaa !14
  store i32 %i.ds, ptr %i.df, align 8, !tbaa !14
  store i8 %i.di, ptr %i.dg, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i55

bb.k:                                             ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit54
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i55 unwind label %bb.q

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i55:   ; preds = %bb.k, %bb.j
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i55
  store i32 1, ptr %i.dk, align 8, !tbaa !14
  %i.dt = load i8, ptr %i.dl, align 4
  %i.du = and i8 %i.dt, -2
  store i8 %i.du, ptr %i.dl, align 4
  invoke void @_ZN11mpq_managerILb0EE3divERK3mpqRK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(728) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.dw = load i32, ptr %2, align 8
  %i.dx = lshr i32 %i.dw, 15
  %i.dy = and i32 %i.dx, 65535
  invoke void @_ZN11mpq_managerILb0EE15display_decimalERSoRK3mpqjb(ptr noundef nonnull align 8 dereferenceable(728) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i32 noundef %i.dy, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.dz = load i8, ptr %i.dl, align 4
  %i.ea = and i8 %i.dz, 1
  %i.eb = icmp eq i8 %i.ea, 0
  %i.ec = load i32, ptr %i.dk, align 8
  %i.ed = icmp eq i32 %i.ec, 1
  %i.ee = select i1 %i.eb, i1 %i.ed, i1 false
  br i1 %i.ee, label %bb.p, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

bb.q:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i55, %bb.k, %bb.l
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.r:                                             ; preds = %bb.m
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.p, %bb.n
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p, %bb.o
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i64 noundef %.0)
          to label %_ZNSolsEl.exit unwind label %bb.s ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !78, !noalias !104 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNSolsEl.exit
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 48
  %9 = load ptr, ptr %i.eo, align 8, !tbaa !79, !noalias !104 ; 2 uses
  %10 = icmp ugt ptr %i.en, %9
  %.08.i.i.i = select i1 %10, ptr %i.en, ptr %9
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !80, !noalias !104
  %i.er = ptrtoint ptr %.08.i.i.i to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es                    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !65, !noalias !104
  %i.ev = load ptr, ptr %8, align 8, !tbaa !64, !noalias !104
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.et
  store i8 0, ptr %i.ew, align 1, !tbaa !58, !noalias !104
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNSolsEl.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.ey, ptr %7, align 8, !tbaa !61, !alias.scope !104
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !64, !noalias !104 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 7 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !65, !noalias !104 ; 3 uses
  %i.fe = icmp ult i64 %i.fd, 16
  call void @llvm.assume(i1 %i.fe)
  %i.ff = add nuw nsw i64 %i.fd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ey, ptr noundef nonnull align 8 dereferenceable(1) %i.fa, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ez, ptr %7, align 8, !tbaa !64, !alias.scope !104
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !58, !noalias !104
  store i64 %i.fg, ptr %i.ey, align 8, !tbaa !58, !alias.scope !104
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !65, !noalias !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.t
  %i.fh = phi i64 [ %i.fd, %bb.t ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.fh, ptr %i.fj, align 8, !tbaa !65, !alias.scope !104
  store ptr %i.fa, ptr %i.ex, align 8, !tbaa !64, !noalias !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.fi, i8 0, i64 9, i1 false), !noalias !104
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.el, ptr noundef nonnull %i.fa, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %7, align 8, !tbaa !64, !alias.scope !104 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ey
  br i1 %i.fm, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.fn = load ptr, ptr %7, align 8, !tbaa !64    ; 3 uses
  %i.fo = load i64, ptr %i.fj, align 8, !tbaa !65 ; 6 uses
  %i.fp = load i64, ptr %i.b, align 8, !tbaa !65  ; 5 uses
  %i.fq = sub i64 9223372036854775807, %i.fp
  %i.fr = icmp ult i64 %i.fq, %i.fo
  br i1 %i.fr, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.v:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc62 unwind label %bb.af

.noexc62:                                         ; preds = %bb.v
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fs = add i64 %i.fp, %i.fo                    ; 3 uses
  %i.ft = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.a
  br i1 %i.fu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fv = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fw = load i64, ptr %i.a, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.fx = phi i64 [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.fs, %i.fx
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not8.i.i.i.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.fo, 1
  br i1 %cond.i.i.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fz = load i8, ptr %i.fn, align 1, !tbaa !58
  store i8 %i.fz, ptr %i.fy, align 1, !tbaa !58
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fy, ptr align 1 %i.fn, i64 %i.fo, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fp, i64 noundef 0, ptr noundef %i.fn, i64 noundef %i.fo)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.aa
  store i64 %i.fs, ptr %i.b, align 8, !tbaa !65
  %i.ga = load ptr, ptr %0, align 8, !tbaa !64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fs
  store i8 0, ptr %i.gb, align 1, !tbaa !58
  %i.gc = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ey
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.ge = load i64, ptr %i.ey, align 8, !tbaa !58
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.gg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gg, ptr %6, align 8, !tbaa !74
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.gi = getelementptr i8, ptr %i.gg, i64 -24
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds i8, ptr %6, i64 %i.gj
  store ptr %i.gh, ptr %i.gk, align 8, !tbaa !74
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.gl, ptr %i.dv, align 8, !tbaa !74
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.el, align 8, !tbaa !74
  %i.gm = load ptr, ptr %i.ex, align 8, !tbaa !64 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.fa
  br i1 %i.gn, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.go = load i64, ptr %i.fa, align 8, !tbaa !58
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.el, align 8, !tbaa !74
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gq) #23
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gr, ptr %6, align 8, !tbaa !74
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gt = getelementptr i8, ptr %i.gr, i64 -24
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds i8, ptr %6, i64 %i.gu
  store ptr %i.gs, ptr %i.gv, align 8, !tbaa !74
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.gw, align 8, !tbaa !82
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.gy = load ptr, ptr %5, align 8, !tbaa !57, !nonnull !49, !align !50 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %.noexc.i unwind label %bb.ac

.noexc.i:                                         ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #24
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.hb = load ptr, ptr %4, align 8, !tbaa !55, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #24
  unreachable

_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit: ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.he = load ptr, ptr %3, align 8, !tbaa !55, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit66 unwind label %bb.ae

bb.ae:                                            ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #24
  unreachable

_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit66: ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.af:                                            ; preds = %bb.aa, %bb.v
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11mpf_manager12display_smt2ERSoRK3mpfb:bb.a
_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %bb.a, %_ZN11mpf_manager11to_rationalERK3mpfR15_scoped_numeralI11mpq_managerILb0EEE.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.n
}

declare void @_ZNK11mpq_managerILb0EE12display_smt2ERSoRK3mpqb(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11mpf_manager13to_string_rawB5cxx11ERK3mpf(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i8 91, ptr %i.a, align 8, !tbaa !58
  %i.c = load i32, ptr %2, align 8
  %.not = icmp sgt i32 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.e = select i1 %.not, i8 43, i8 45
  store i8 %i.e, ptr %i.d, align 1, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 32, ptr %i.f, align 2, !tbaa !58
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 728
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  store i64 3, ptr %i.b, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.g, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNK11mpz_managerILb0EE9to_stringB5cxx11ERK3mpz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(600) %.pre, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.b unwind label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %3, align 8, !tbaa !64     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65   ; 6 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !65   ; 5 uses
  %i.m = sub i64 9223372036854775807, %i.l
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc43 unwind label %bb.ab

.noexc43:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.o = add i64 %i.l, %i.k                       ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.r = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.r)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.t = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.o, %i.t
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not8.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.k, 1
  br i1 %cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.i, align 1, !tbaa !58
  store i8 %i.v, ptr %i.u, align 1, !tbaa !58
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.k)
          to label %bb.i unwind label %bb.ab

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.h
  store i64 %i.o, ptr %i.b, align 8, !tbaa !65
  %i.w = load ptr, ptr %0, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store i8 0, ptr %i.x, align 1, !tbaa !58
  %i.y = load ptr, ptr %3, align 8, !tbaa !64     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !65  ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775807
  br i1 %i.ae, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i45

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc52 unwind label %bb.z

.noexc52:                                         ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = add nsw i64 %i.ad, 1                    ; 3 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i45
  %i.ai = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i45
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51
  %i.ak = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51 ]
  %.not.i.i.i48 = icmp ugt i64 %i.af, %i.ak
  br i1 %.not.i.i.i48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store i8 32, ptr %i.al, align 1, !tbaa !58
  br label %._crit_edge.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ad, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %._crit_edge.i.i unwind label %bb.z

._crit_edge.i.i:                                  ; preds = %bb.k, %bb.l
  store i64 %i.af, ptr %i.b, align 8, !tbaa !65
  %i.am = load ptr, ptr %0, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af
  store i8 0, ptr %i.an, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !65
  store i8 0, ptr %i.ao, align 8, !tbaa !58
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 24)
          to label %bb.m unwind label %bb.ac

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.aq = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ao
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.m
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i64 noundef %i.aw)
          to label %_ZNSolsEl.exit unwind label %bb.ad ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !78, !noalias !111 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNSolsEl.exit
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %8 = load ptr, ptr %i.bb, align 8, !tbaa !79, !noalias !111 ; 2 uses
  %9 = icmp ugt ptr %i.ba, %8
  %.08.i.i.i = select i1 %9, ptr %i.ba, ptr %8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !80, !noalias !111
  %i.be = ptrtoint ptr %.08.i.i.i to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !65, !noalias !111
  %i.bi = load ptr, ptr %7, align 8, !tbaa !64, !noalias !111
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !58, !noalias !111
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNSolsEl.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.bl, ptr %6, align 8, !tbaa !61, !alias.scope !111
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !64, !noalias !111 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !65, !noalias !111 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.bm, ptr %6, align 8, !tbaa !64, !alias.scope !111
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !58, !noalias !111
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !58, !alias.scope !111
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !65, !noalias !111
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.n
  %i.bu = phi i64 [ %i.bq, %bb.n ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !65, !alias.scope !111
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !64, !noalias !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bv, i8 0, i64 9, i1 false), !noalias !111
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, ptr noundef nonnull %i.bn, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %6, align 8, !tbaa !64, !alias.scope !111 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bl
  br i1 %i.bz, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ca = load ptr, ptr %6, align 8, !tbaa !64    ; 3 uses
  %i.cb = load i64, ptr %i.bw, align 8, !tbaa !65 ; 6 uses
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !65  ; 5 uses
  %i.cd = sub i64 9223372036854775807, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i64

bb.p:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc71 unwind label %bb.ae

.noexc71:                                         ; preds = %bb.p
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i64: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cf = add i64 %i.cc, %i.cb                    ; 3 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.a
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i64
  %i.ci = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i64
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i70
  %i.ck = phi i64 [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i70 ]
  %.not.i.i.i.i67 = icmp ugt i64 %i.cf, %i.ck
  br i1 %.not.i.i.i.i67, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i66
  %.not8.i.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not8.i.i.i.i68, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cc ; 2 uses
  %cond.i.i.i.i69 = icmp eq i64 %i.cb, 1
  br i1 %cond.i.i.i.i69, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = load i8, ptr %i.ca, align 1, !tbaa !58
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !58
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.ca, i64 %i.cb, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i66
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc, i64 noundef 0, ptr noundef %i.ca, i64 noundef %i.cb)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.u
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !65
  %i.cn = load ptr, ptr %0, align 8, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  store i8 0, ptr %i.co, align 1, !tbaa !58
  %i.cp = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bl
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.v
  %i.cr = load i64, ptr %i.bl, align 8, !tbaa !58
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ct = invoke noundef zeroext i1 @_ZN11mpf_manager9is_normalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !65  ; 8 uses
  %i.cv = and i64 %i.cu, -2
  %i.cw = icmp eq i64 %i.cv, 9223372036854775806  ; 2 uses
  br i1 %i.ct, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %i.cw, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i77: ; preds = %bb.x
  %i.cx = add nsw i64 %i.cu, 2                    ; 3 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.a
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i83: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i77
  %i.da = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.da)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i77
  %i.db = load i64, ptr %i.a, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i83
  %i.dc = phi i64 [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i83 ]
  %.not.i.i.i80 = icmp ugt i64 %i.cx, %i.dc
  br i1 %.not.i.i.i80, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit86.sink.split

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cu, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit86 unwind label %bb.ad

bb.z:                                             ; preds = %bb.l, %bb.j
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aa:                                            ; preds = %bb.a
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ab:                                            ; preds = %bb.h, %bb.c
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.ab
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !58
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.de, %bb.aa ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.df, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.am

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ao
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ac
  %i.do = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.al

bb.ad:                                            ; preds = %.invoke, %bb.ai, %bb.ag, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.dq = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN11mpf_manager18to_string_hexfloatB5cxx11EblRK15_scoped_numeralI11mpz_managerILb0EEEjjj:bb.a
  %i.y = add i32 %6, -1                           ; 2 uses
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers2clEjb(ptr noundef nonnull align 8 dereferenceable(104) %i.x, i32 noundef %i.y, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.f       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.j, align 4
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !14
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !14
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.split, %bb.k
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers2clEjb(ptr noundef nonnull align 8 dereferenceable(104) %i.x, i32 noundef %i.y, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN11mpf_manager10mk_bot_expEj.exit unwind label %bb.f

bb.n:                                             ; preds = %.split, %bb.k
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.ap = add i32 %5, -1                          ; 2 uses
  %i.aq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.x, i32 noundef %i.ap, i1 noundef zeroext true)
          to label %.noexc17 unwind label %bb.f

.noexc17:                                         ; preds = %bb.n
  %i.ar = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %.noexc17
  %i.as = add nsw i64 %i.ar, 1
  %i.at = icmp eq i64 %3, %i.as
  br i1 %i.at, label %bb.p, label %_ZN11mpf_manager10mk_bot_expEj.exit

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.av = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.x, i32 noundef %i.ap, i1 noundef zeroext true)
          to label %.noexc19 unwind label %bb.f

.noexc19:                                         ; preds = %bb.p
  %i.aw = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %_ZN11mpf_manager10mk_bot_expEj.exit unwind label %bb.f

_ZN11mpf_manager10mk_bot_expEj.exit:              ; preds = %.noexc19, %bb.o, %bb.m
  %.0 = phi i64 [ %3, %bb.m ], [ %3, %bb.o ], [ %i.aw, %.noexc19 ]
  %i.ax = and i32 %5, 32767
  %i.ay = shl i32 %6, 15
  %i.az = select i1 %2, i32 -2147483648, i32 0
  %.masked.i = and i32 %i.ay, 2147450880
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %.masked.i
  store i32 %i.bb, ptr %i.a, align 8
  %i.bc = load i8, ptr %i.j, align 4
  %i.bd = and i8 %i.bc, 1
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN11mpf_manager10mk_bot_expEj.exit
  %i.bf = load i32, ptr %i.i, align 8, !tbaa !14
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !14
  %i.bg = load i8, ptr %i.c, align 4
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.c, align 4
  br label %bb.s

bb.r:                                             ; preds = %_ZN11mpf_manager10mk_bot_expEj.exit
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.s unwind label %bb.f

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %.0, ptr %i.bj, align 8, !tbaa !17
  invoke void @_ZN11mpf_manager9to_stringB5cxx11ERK3mpf(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.t unwind label %bb.f

bb.t:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %9, align 8, !tbaa !55, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #24
  unreachable

_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bn = load ptr, ptr %8, align 8, !tbaa !72, !nonnull !49, !align !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 728
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #24
  unreachable

_ZN15_scoped_numeralI11mpf_managerED2Ev.exit:     ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void
}

declare void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11mpf_manager18to_string_hexfloatB5cxx11ERK3mpf(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 28 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !65
  store i8 0, ptr %i.a, align 8, !tbaa !58
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 24)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.c = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !58
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.g = load ptr, ptr %3, align 8, !tbaa !74
  %i.h = getelementptr i8, ptr %i.g, i64 -24      ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !122  ; 2 uses
  %i.m = or i32 %i.l, 19464
  store i32 %i.m, ptr %i.k, align 8, !tbaa !123
  %i.n = load i64, ptr %i.h, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !122
  %i.r = or i32 %i.q, %i.l
  store i32 %i.r, ptr %i.p, align 8, !tbaa !123
  %i.s = load i64, ptr %i.h, align 8
  %i.t = getelementptr inbounds i8, ptr %3, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 13, ptr %i.u, align 8, !tbaa !124
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !122
  %i.ac = or i32 %i.ab, 260
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !123
  %i.ad = invoke noundef double @_ZN11mpf_manager9to_doubleERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %i.ad)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78, !noalias !127 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNSolsEd.exit
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  %6 = load ptr, ptr %i.ai, align 8, !tbaa !79, !noalias !127 ; 2 uses
  %7 = icmp ugt ptr %i.ah, %6
  %.08.i.i.i = select i1 %7, ptr %i.ah, ptr %6
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80, !noalias !127
  %i.al = ptrtoint ptr %.08.i.i.i to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !65, !noalias !127
  %i.ap = load ptr, ptr %5, align 8, !tbaa !64, !noalias !127
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !58, !noalias !127
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNSolsEd.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !61, !alias.scope !127
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !64, !noalias !127 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 7 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !65, !noalias !127 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.at, ptr %0, align 8, !tbaa !64, !alias.scope !127
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !58, !noalias !127
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !58, !alias.scope !127
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !65, !noalias !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.bb = phi i64 [ %i.ax, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !65, !alias.scope !127
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !64, !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bc, i8 0, i64 9, i1 false), !noalias !127
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull %i.au, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !64, !alias.scope !127 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.as
  br i1 %i.bg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.bh = load i64, ptr %i.as, align 8, !tbaa !58, !alias.scope !127
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #27
  br label %.body

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !74
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %3, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !74
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bo, ptr %i.v, align 8, !tbaa !74
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !74
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.au
  br i1 %i.bq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.br = load i64, ptr %i.au, align 8, !tbaa !58
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #23
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %3, align 8, !tbaa !74
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %3, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !74
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !82
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !58
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.cg, %bb.f ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.be, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  br label %bb.g

bb.g:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN11mpf_manager9to_doubleERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call noundef i64 @_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = load i32, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = and i32 %i.e, 32767
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.k = add nsw i32 %i.h, -1
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers2clEjb(ptr noundef nonnull align 8 dereferenceable(104) %i.j, i32 noundef %i.k, i1 noundef zeroext false)
  %i.m = tail call noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.n = icmp eq i64 %i.g, %i.m
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.f, align 8, !tbaa !21
  %i.p = load i32, ptr %1, align 8
  %i.q = and i32 %i.p, 32767
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.s = add nsw i32 %i.q, -1
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.j, i32 noundef %i.s, i1 noundef zeroext true)
  %i.u = tail call noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  %i.v = icmp eq i64 %i.o, %i.u
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.f, align 8, !tbaa !17
  %i.x = shl i64 %i.w, 52
  %i.y = add i64 %i.x, 4607182418800017408
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.012 = phi i64 [ %i.y, %bb.c ], [ 9218868437227405312, %bb.a ], [ 0, %bb.b ]
  %i.z = lshr i32 %i.e, 15
  %i.aa = and i32 %i.z, 65535
  %i.ab = sub nsw i32 53, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl i64 %i.d, %i.ac
  %i.ae = or i64 %.012, %i.ad                     ; 2 uses
  %i.af = load i32, ptr %1, align 8
  %i.ag = or i64 %i.ae, -9223372036854775808
  %.not13 = icmp slt i32 %i.af, 0
  %spec.select = select i1 %.not13, i64 %i.ag, i64 %i.ae
  %i.ah = bitcast i64 %spec.select to double
  ret double %i.ah
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11mpf_manager16to_string_binaryB5cxx11ERK3mpfjj(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_2
