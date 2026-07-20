inline.NumInlined: 2499
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
          to label %.noexc.i unwind label %bb.dm, !noalias !245 ; 6 uses

.noexc.i:                                         ; preds = %bb.bs
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 14 uses
  store ptr %i.is, ptr %12, align 8, !tbaa !38, !alias.scope !248, !noalias !245
  %i.it = load ptr, ptr %i.ir, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 5 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bt:                                            ; preds = %.noexc.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !39, !noalias !245 ; 3 uses
  %i.iy = icmp ult i64 %i.ix, 16
  call void @llvm.assume(i1 %i.iy)
  %i.iz = add nuw nsw i64 %i.ix, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.is, ptr noundef nonnull align 8 dereferenceable(1) %i.iu, i64 %i.iz, i1 false), !noalias !245
  br label %bb.bu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i
  store ptr %i.it, ptr %12, align 8, !tbaa !30, !alias.scope !248, !noalias !245
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !31, !noalias !245
  store i64 %i.ja, ptr %i.is, align 8, !tbaa !31, !alias.scope !248, !noalias !245
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.pre.i.i86 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !39, !noalias !245
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bt
  %i.jb = phi i64 [ %i.ix, %bb.bt ], [ %.pre.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i64 %i.jb, ptr %i.jd, align 8, !tbaa !39, !alias.scope !248, !noalias !245
  store ptr %i.iu, ptr %i.ir, align 8, !tbaa !30, !noalias !245
  store i64 0, ptr %i.jc, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.iu, align 8, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !39, !noalias !255 ; 5 uses
  %i.jf = icmp sgt i64 %i.je, 9223372036854775796
  br i1 %i.jf, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #31
          to label %.noexc77.i unwind label %bb.dn, !noalias !245

.noexc77.i:                                       ; preds = %bb.bv
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.jg = add nsw i64 %i.je, 11                   ; 3 uses
  %i.jh = load ptr, ptr %12, align 8, !tbaa !30, !noalias !255 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.is
  br i1 %i.ji, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jj = icmp ult i64 %i.je, 16
  call void @llvm.assume(i1 %i.jj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jk = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !255
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i96
  %i.jl = phi i64 [ %i.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i96 ]
  %.not.i.i.i.i = icmp ugt i64 %i.jg, %i.jl
  br i1 %.not.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.je
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.jm, ptr noundef nonnull align 1 dereferenceable(11) @.str.30, i64 11, i1 false), !noalias !255
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.je, i64 noundef 0, ptr noundef nonnull @.str.30, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i unwind label %bb.dn, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.bx, %bb.bw
  store i64 %i.jg, ptr %i.jd, align 8, !tbaa !39, !noalias !255
  %i.jn = load ptr, ptr %12, align 8, !tbaa !30, !noalias !255
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jg
  store i8 0, ptr %i.jo, align 1, !tbaa !31, !noalias !255
  %i.jp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.jp, ptr %11, align 8, !tbaa !38, !alias.scope !252, !noalias !245
  %i.jq = load ptr, ptr %12, align 8, !tbaa !30, !noalias !255 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.is
  br i1 %i.jr, label %bb.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.js = load i64, ptr %i.jd, align 8, !tbaa !39, !noalias !255 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 16
  call void @llvm.assume(i1 %i.jt)
  %i.ju = add nuw nsw i64 %i.js, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jp, ptr noundef nonnull align 8 dereferenceable(1) %i.is, i64 %i.ju, i1 false), !noalias !245
  br label %bb.bz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.jq, ptr %11, align 8, !tbaa !30, !alias.scope !252, !noalias !245
  %i.jv = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !255
  store i64 %i.jv, ptr %i.jp, align 8, !tbaa !31, !alias.scope !252, !noalias !245
  %.pre.i76.i = load i64, ptr %i.jd, align 8, !tbaa !39, !noalias !255
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i, %bb.by
  %i.jw = phi i64 [ %i.js, %bb.by ], [ %.pre.i76.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i ]
  %i.jx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !39, !alias.scope !252, !noalias !245
  store ptr %i.is, ptr %12, align 8, !tbaa !30, !noalias !255
  store i64 0, ptr %i.jd, align 8, !tbaa !39, !noalias !255
  store i8 0, ptr %i.is, align 8, !tbaa !31, !noalias !255
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 4)
          to label %bb.ca unwind label %bb.do, !noalias !245

bb.ca:                                            ; preds = %bb.bz
  %i.jy = load ptr, ptr %11, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.jp
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i: ; preds = %bb.ca
  %i.ka = load i64, ptr %i.jp, align 8, !tbaa !31, !noalias !245
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i
  %i.kc = load ptr, ptr %12, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.is
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ke = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !245
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i
  %i.kg = load ptr, ptr %13, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.im
  br i1 %i.kh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i
  %i.ki = load i64, ptr %i.im, align 8, !tbaa !31, !noalias !245
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #28, !noalias !245
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !245
  %i.kk = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.kl = getelementptr i8, ptr %i.kk, i64 -24    ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !noalias !245
  %i.kn = getelementptr inbounds i8, ptr %10, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !72, !noalias !245
  %i.kq = and i32 %i.kp, 5
  %.not.i86.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i86.i, label %bb.cb, label %bb.ef

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %41, i8 0, i64 24, i1 false), !alias.scope !245
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !245
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.kr, ptr %14, align 8, !tbaa !38, !noalias !245
  %i.ks = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 0, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.kr, align 8, !tbaa !31, !noalias !245
  %i.kt = load i64, ptr %i.kl, align 8, !noalias !245 ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %10, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !72, !noalias !245
  %i.kx = and i32 %i.kw, 5
  %.not.i87383.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i87383.i, label %.lr.ph385.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i

.lr.ph385.i:                                      ; preds = %bb.cb
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.ld = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.lh = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !245 ; 2 uses
  %i.li = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !245
  %i.lj = getelementptr i8, ptr %i.lh, i64 -24
  %i.lk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.lm = getelementptr inbounds nuw i8, ptr %15, i64 104 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.lo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !245 ; 2 uses
  %i.lp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !245
  %i.lq = getelementptr i8, ptr %i.lo, i64 -24
  %i.lr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %15, i64 120
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ec, %.lr.ph385.i
  %i.lt = phi ptr [ null, %.lr.ph385.i ], [ %i.uo, %bb.ec ] ; 12 uses
  %i.lu = phi ptr [ null, %.lr.ph385.i ], [ %i.up, %bb.ec ] ; 9 uses
  %i.lv = phi ptr [ null, %.lr.ph385.i ], [ %i.uq, %bb.ec ] ; 6 uses
  %i.lw = phi i64 [ %i.kt, %.lr.ph385.i ], [ %i.ut, %bb.ec ]
  %i.lx = getelementptr inbounds i8, ptr %10, i64 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 240
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !191, !noalias !245 ; 6 uses
  %.not.i.i.i88.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i88.i, label %bb.cd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc89.i unwind label %.loopexit.split-lp.i, !noalias !245

.noexc89.i:                                       ; preds = %bb.cd
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.cc
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 56
  %i.mb = load i8, ptr %i.ma, align 8, !tbaa !198, !noalias !245
  %.not.i1.i.i.i = icmp eq i8 %i.mb, 0
  br i1 %.not.i1.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 67
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !31, !noalias !245
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.cf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lz)
          to label %.noexc90.i unwind label %.loopexit.i, !noalias !245

.noexc90.i:                                       ; preds = %bb.cf
  %i.me = load ptr, ptr %i.lz, align 8, !tbaa !61, !noalias !245
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !245
  %i.mh = invoke noundef signext i8 %i.mg(ptr noundef nonnull align 8 dereferenceable(570) %i.lz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.i, !noalias !245, !inline_history !204

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc90.i, %bb.ce
  %.0.i.i.i.i = phi i8 [ %i.md, %bb.ce ], [ %i.mh, %.noexc90.i ]
  %i.mi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef signext %.0.i.i.i.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit.i, !noalias !245 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.mj = load i64, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.ec, label %bb.cg

bb.cg:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ml = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !31, !noalias !245
  %.not59.i = icmp eq i8 %i.mm, 35
  br i1 %.not59.i, label %bb.ec, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30, !noalias !245
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %15, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 8)
          to label %bb.ci unwind label %bb.dq, !noalias !245

bb.ci:                                            ; preds = %bb.ch
  %i.mn = load ptr, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.mo = getelementptr i8, ptr %i.mn, i64 -24
  %i.mp = load i64, ptr %i.mo, align 8, !noalias !245
  %i.mq = getelementptr inbounds i8, ptr %15, i64 %i.mp ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  store i32 5, ptr %i.mr, align 4, !tbaa !63, !noalias !245
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !72, !noalias !245
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mq, i32 noundef %i.mt)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i unwind label %bb.dr, !noalias !245

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i: ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !245
  store ptr %i.ky, ptr %16, align 8, !tbaa !38, !noalias !245
  store i64 0, ptr %i.kz, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.ky, align 8, !tbaa !31, !noalias !245
  %i.mu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.cj unwind label %bb.ds, !noalias !245 ; 0 uses

bb.cj:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %.val.i = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %.val70.i = load i64, ptr %i.kz, align 8, !tbaa !39, !noalias !245 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val70.i
  %i.mw = icmp samesign eq i64 %.val70.i, 0
  br i1 %i.mw, label %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %.lr.ph.i.i

_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30, !noalias !245
  br label %bb.ck

.lr.ph.i.i:                                       ; preds = %bb.cj, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi ptr [ %i.nb, %.lr.ph.i.i ], [ %.val.i, %bb.cj ] ; 3 uses
  %i.mx = load i8, ptr %.sroa.01.04.i.i, align 1, !tbaa !31, !noalias !245
  %i.my = sext i8 %i.mx to i32
  %i.mz = call i32 @tolower(i32 noundef %i.my) #33, !noalias !245
  %i.na = trunc i32 %i.mz to i8
  store i8 %i.na, ptr %.sroa.01.04.i.i, align 1, !tbaa !31, !noalias !245
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 1 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.mv
  br i1 %i.nc, label %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i

_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i
  %.val72.pre.i = load i64, ptr %i.kz, align 8, !tbaa !39, !noalias !245 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30, !noalias !245
  store ptr %i.la, ptr %17, align 8, !tbaa !38, !noalias !245
  store i32 1885431148, ptr %i.la, align 8, !noalias !245
  store i64 4, ptr %i.lb, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.lc, align 4, !tbaa !31, !noalias !245
  %i.nd = icmp eq i64 %.val72.pre.i, 0
  br i1 %i.nd, label %bb.ck, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.val72.pre.i, i64 4)
  %.val71.i = load ptr, ptr %16, align 8, !noalias !245
  %bcmp.i.i = call i32 @bcmp(ptr readonly %.val71.i, ptr nonnull readonly %i.la, i64 %.sroa.speculated.i.i), !noalias !245
  %.not.i.i.i90 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i.i.i90, label %bb.ck, label %bb.dv

bb.ck:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30, !noalias !245
  %i.ne = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.cl unwind label %bb.dt, !noalias !245 ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.nf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %.noexc106.i unwind label %bb.dt, !noalias !245 ; 0 uses

.noexc106.i:                                      ; preds = %bb.cl
  store ptr %i.ld, ptr %8, align 8, !tbaa !38, !alias.scope !256, !noalias !245
  store i64 0, ptr %i.le, align 8, !tbaa !39, !alias.scope !256, !noalias !245
  store i8 0, ptr %i.ld, align 8, !tbaa !31, !alias.scope !256, !noalias !245
  %i.ng = load ptr, ptr %15, align 8, !tbaa !61, !noalias !259
  %i.nh = getelementptr i8, ptr %i.ng, i64 -24
  %i.ni = load i64, ptr %i.nh, align 8, !noalias !245
  %i.nj = getelementptr inbounds i8, ptr %15, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !72, !noalias !259
  %i.nm = and i32 %i.nl, 2
  %.not89.i.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not89.i.i.i, label %.lr.ph.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %.noexc106.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i
  %i.nn = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.cm unwind label %.loopexit.i.i, !noalias !245

bb.cm:                                            ; preds = %.lr.ph.i.i.i
  %i.no = call i32 @isalpha(i32 noundef %i.nn) #33, !noalias !245
  %.not.i.i101.i = icmp eq i32 %i.no, 0
  br i1 %.not.i.i101.i, label %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.np = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.co unwind label %.loopexit.i.i, !noalias !245

bb.co:                                            ; preds = %bb.cn
  %i.nq = trunc i32 %i.np to i8
  %i.nr = load i64, ptr %i.le, align 8, !tbaa !39, !alias.scope !256, !noalias !245 ; 6 uses
  %i.ns = add i64 %i.nr, 1                        ; 9 uses
  %i.nt = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !256, !noalias !245 ; 6 uses
  %i.nu = icmp eq ptr %i.nt, %i.ld                ; 2 uses
  br i1 %i.nu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i105.i: ; preds = %bb.co
  %i.nv = icmp samesign ult i64 %i.nr, 16
  call void @llvm.assume(i1 %i.nv)
  %i.nw = icmp samesign ugt i64 %i.ns, 15
  br i1 %i.nw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i: ; preds = %bb.co
  %i.nx = load i64, ptr %i.ld, align 8, !tbaa !31, !alias.scope !256, !noalias !245 ; 2 uses
  %i.ny = icmp ugt i64 %i.ns, %i.nx
  br i1 %i.ny, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i105.i
  %i.nz = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i105.i ], [ %i.nx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i ] ; 2 uses
  %i.oa = icmp slt i64 %i.ns, 0
  br i1 %i.oa, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
          to label %.noexc.i104.i unwind label %.loopexit.split-lp.i.i, !noalias !245

.noexc.i104.i:                                    ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95
  %i.ob = icmp ugt i64 %i.ns, %i.nz
  br i1 %i.ob, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.oc = shl nuw i64 %i.nz, 1                    ; 2 uses
  %i.od = icmp ult i64 %i.ns, %i.oc
  br i1 %i.od, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.oc, i64 9223372036854775807)
  br label %bb.ct
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i
  %.sroa.speculated.i.i.i61.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 5) ; 2 uses
  %bcmp.i.i.i63.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 80), i64 %.sroa.speculated.i.i.i61.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i
  %bcmp.i.i.i70.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 112), i64 %.sroa.speculated.i.i.i61.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i71.i.i.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 3)
  %bcmp.i.i.i.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 144), i64 %.sroa.speculated.i.i.i.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i
  %.sroa.speculated.i.i.i54.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 4) ; 2 uses
  %bcmp.i.i.i56.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 176), i64 %.sroa.speculated.i.i.i54.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i57.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i56.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i57.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i
  %bcmp.i.i.i63.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 208), i64 %.sroa.speculated.i.i.i54.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i
  %.sroa.speculated.i.i.i68.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 6)
  %bcmp.i.i.i70.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 240), i64 %.sroa.speculated.i.i.i68.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i71.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i
  %.sroa.speculated.i.i.i.i.i.i.2.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 9)
  %bcmp.i.i.i.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 272), i64 %.sroa.speculated.i.i.i.i.i.i.2.i.i), !noalias !245
  %.not.i.i.i.i.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i
  %bcmp.i.i.i56.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 304), i64 %.sroa.speculated.i.i.i.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i57.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i56.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i57.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i
  %bcmp.i.i.i63.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 336), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i
  %bcmp.i.i.i70.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 368), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.2.i.i, 0
  %spec.select.i.i = select i1 %.not.i.i.i.i71.i.i.i.2.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 352), ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 384)
  br label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"

"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i, %.noexc106.i
  %.val1555.i.i = phi ptr [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i ], [ %.val15.pre.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i ], [ %i.ld, %.noexc106.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i ], [ %.val.pre.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ] ; 2 uses
  %.028.i.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 32), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 256), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 96), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 192), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 64), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 288), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %.noexc106.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 224), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 128), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i ], [ %spec.select.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 160), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 320), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ]
  %i.pj = ptrtoint ptr %.028.i.i.i.i.i to i64
  %i.pk = sub i64 %i.pj, ptrtoint (ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11 to i64) ; 2 uses
  %.not.i100.i = icmp slt i64 %i.pk, 384
  br i1 %.not.i100.i, label %bb.dd, label %bb.cy

bb.cy:                                            ; preds = %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"
  %i.pl = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !245 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !245
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, !noalias !245

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.da unwind label %bb.db, !noalias !245

bb.da:                                            ; preds = %bb.cz
  invoke void @__cxa_throw(ptr nonnull %i.pl, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.df unwind label %bb.db, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.cy
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br label %bb.dc

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.0.i.i = phi i1 [ false, %bb.da ], [ true, %bb.cz ] ; 2 uses
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.po = load ptr, ptr %9, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93: ; preds = %bb.db
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !31, !noalias !245
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.ps) #28, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br i1 %.0.i.i, label %bb.dc, label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br i1 %.0.i.i, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn30.i.i = phi { ptr, i32 } [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93 ]
  call void @__cxa_free_exception(ptr %i.pl) #30, !noalias !245
  br label %bb.de

bb.dd:                                            ; preds = %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"
  %i.pt = icmp eq ptr %.val1555.i.i, %i.ld
  br i1 %i.pt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %bb.dd
  %i.pu = load i64, ptr %i.ld, align 8, !tbaa !31, !noalias !245
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %.val1555.i.i, i64 noundef %i.pv) #28, !noalias !245
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i

bb.de:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93 ], [ %.pn30.i.i, %bb.dc ], [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  %i.pw = load ptr, ptr %8, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.ld
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i: ; preds = %bb.de
  %i.py = load i64, ptr %i.ld, align 8, !tbaa !31, !noalias !245
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !245
  br label %.body.i

bb.df:                                            ; preds = %bb.da
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !245
  %i.qa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.dg unwind label %bb.dt, !noalias !245 ; 0 uses

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i
  %i.qb = trunc i64 %i.pk to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30, !noalias !245
  %i.qc = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !245
  %i.qd = shl i32 %i.qb, 11
  %i.qe = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !245
  %.sroa.0329.2.extract.shift337.i = add i32 %i.qd, 65536
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.0329.2.extract.shift337.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8 ; 2 uses
  %sext.i = shl i32 %i.qc, 16
  %i.qf = ashr exact i32 %sext.i, 16
  %i.qg = icmp ult i8 %.sroa.5.0.extract.trunc.i, 3
  %.neg.i.i.i = sext i1 %i.qg to i32
  %i.qh = add nsw i32 %i.qf, %.neg.i.i.i          ; 4 uses
  %i.qi = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.qj = and i32 %i.qe, 255
  %i.qk = add nsw i32 %i.qh, -399
  %i.ql = icmp slt i32 %i.qh, 0
  %i.qm = select i1 %i.ql, i32 %i.qk, i32 %i.qh
  %i.qn = sdiv i32 %i.qm, 400                     ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %i.qn, -400
  %i.qo = add nsw i32 %.neg15.i.i.i, %i.qh        ; 3 uses
  %i.qp = icmp ugt i8 %.sroa.5.0.extract.trunc.i, 2
  %.v.i.i.i = select i1 %i.qp, i32 -3, i32 9
  %i.qq = add nsw i32 %.v.i.i.i, %i.qi
  %i.qr = mul nsw i32 %i.qq, 153
  %i.qs = add nsw i32 %i.qr, 2
  %i.qt = udiv i32 %i.qs, 5
  %i.qu = mul nsw i32 %i.qo, 365
  %i.qv = lshr i32 %i.qo, 2
  %i.qw = udiv i32 %i.qo, 100
  %i.qx = mul nsw i32 %i.qn, 146097
  %i.qy = add nsw i32 %i.qt, -719468
  %i.qz = add nsw i32 %i.qy, %i.qj
  %i.ra = add nsw i32 %i.qz, %i.qx
  %i.rb = add nsw i32 %i.ra, %i.qv
  %i.rc = add nsw i32 %i.rb, %i.qu
  %i.rd = sub nsw i32 %i.rc, %i.qw
  %i.re = sext i32 %i.rd to i64
  %i.rf = mul nsw i64 %i.re, 86400
  store i64 %i.rf, ptr %19, align 8, !tbaa !78, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.dh unwind label %.loopexit338.i, !noalias !245

bb.dh:                                            ; preds = %bb.dg
  %.not.i.i110.i = icmp eq ptr %i.lv, %i.lu
  br i1 %.not.i.i110.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rg = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.rg, ptr %i.lv, align 8, !tbaa !75, !noalias !245
  %i.rh = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  store ptr %i.rh, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.ri = ptrtoint ptr %i.lu to i64
  %i.rj = ptrtoint ptr %i.lt to i64               ; 2 uses
  %i.rk = sub i64 %i.ri, %i.rj                    ; 4 uses
  %i.rl = icmp eq i64 %i.rk, 9223372036854775800
  br i1 %i.rl, label %bb.dk, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc111.i unwind label %.loopexit.split-lp339.i, !noalias !245

.noexc111.i:                                      ; preds = %bb.dk
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.dj
  %i.rm = ashr exact i64 %i.rk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rm, i64 1)
  %i.rn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.rm ; 2 uses
  %i.ro = icmp ult i64 %i.rn, %i.rm
  %i.rp = call i64 @llvm.umin.i64(i64 %i.rn, i64 1152921504606846975)
  %i.rq = select i1 %i.ro, i64 1152921504606846975, i64 %i.rp ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.rq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.rr = shl nuw nsw i64 %i.rq, 3
  %i.rs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rr) #32
          to label %.noexc112.i unwind label %.loopexit338.i, !noalias !245 ; 9 uses

.noexc112.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rk
  %i.ru = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.ru, ptr %i.rt, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.lt, %i.lu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc112.i
  %i.rv = ptrtoaddr ptr %i.rs to i64
  %43 = ptrtoaddr ptr %i.lu to i64
  %44 = ptrtoaddr ptr %i.lt to i64
  %i.rw = sub i64 %43, %44
  %i.rx = add i64 %i.rw, -8                       ; 2 uses
  %i.ry = lshr i64 %i.rx, 3
  %i.rz = add nuw nsw i64 %i.ry, 1                ; 2 uses
  %min.iters.check520 = icmp ult i64 %i.rx, 24
  %i.sa = sub i64 %i.rj, %i.rv
  %diff.check518 = icmp ugt i64 %i.sa, -32
  %or.cond = or i1 %min.iters.check520, %diff.check518
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader536, label %vector.ph521

vector.ph521:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec523 = and i64 %i.rz, 4611686018427387900  ; 3 uses
  %i.sb = shl i64 %n.vec523, 3                    ; 2 uses
  %i.sc = getelementptr i8, ptr %i.rs, i64 %i.sb  ; 2 uses
  %i.sd = getelementptr i8, ptr %i.lt, i64 %i.sb
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph521
  %index525 = phi i64 [ 0, %vector.ph521 ], [ %index.next530, %vector.body524 ] ; 2 uses
  %i.se = shl i64 %index525, 3                    ; 2 uses
  %next.gep526 = getelementptr i8, ptr %i.rs, i64 %i.se ; 2 uses
  %next.gep527 = getelementptr i8, ptr %i.lt, i64 %i.se ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.sf = getelementptr i8, ptr %next.gep527, i64 16
  %wide.load528 = load <2 x i64>, ptr %next.gep527, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  %wide.load529 = load <2 x i64>, ptr %i.sf, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  %i.sg = getelementptr i8, ptr %next.gep526, i64 16
  store <2 x i64> %wide.load528, ptr %next.gep526, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  store <2 x i64> %wide.load529, ptr %i.sg, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %index.next530 = add nuw i64 %index525, 4       ; 2 uses
  %i.sh = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.sh, label %middle.block531, label %vector.body524, !llvm.loop !268

middle.block531:                                  ; preds = %vector.body524
  %cmp.n532 = icmp eq i64 %i.rz, %n.vec523
  br i1 %cmp.n532, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader536

.lr.ph.i.i.i.i.i.i.i.preheader536:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block531
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.rs, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.sc, %middle.block531 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.sd, %middle.block531 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader536, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.sk, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader536 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.sj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader536 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.si = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  store i64 %i.si, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %i.sj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.sj, %i.lu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !271

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block531, %.noexc112.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.rs, %.noexc112.i ], [ %i.sc, %middle.block531 ], [ %i.sk, %.lr.ph.i.i.i.i.i.i.i ]
  %i.sl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.rk) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.dl, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.rs, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.sl, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.rq ; 2 uses
  store ptr %i.sm, ptr %i.lg, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.di
  %i.sn = phi ptr [ %i.rs, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lt, %bb.di ]
  %i.so = phi ptr [ %i.sm, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lu, %bb.di ]
  %i.sp = phi ptr [ %i.sl, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.rh, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.dy

bb.dm:                                            ; preds = %bb.bs
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i

bb.dn:                                            ; preds = %bb.bx, %bb.bv
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

bb.do:                                            ; preds = %bb.bz
  %i.ss = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.st = load ptr, ptr %11, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.jp
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i: ; preds = %bb.do
  %i.sv = load i64, ptr %i.jp, align 8, !tbaa !31, !noalias !245
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i, %bb.dn
  %.pn.i = phi { ptr, i32 } [ %i.sr, %bb.dn ], [ %i.ss, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i ], [ %i.ss, %bb.do ] ; 2 uses
  %i.sx = load ptr, ptr %12, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.is
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i
  %i.sz = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !245
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i, %bb.dm
  %.pn.pn.i = phi { ptr, i32 } [ %i.sq, %bb.dm ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i ]
  %i.tb = load ptr, ptr %13, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.im
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i
  %i.td = load i64, ptr %i.im, align 8, !tbaa !31, !noalias !245
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.te) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !245
  br label %bb.hl

bb.dp:                                            ; preds = %.noexc152, %.noexc151, %.noexc150, %.noexc149, %.noexc148, %.noexc147, %.noexc146, %.noexc145, %bb.hg, %.noexc143, %bb.hf, %.noexc141, %.noexc140, %.noexc139, %.noexc138, %.noexc137, %.noexc136, %.noexc135, %.noexc134, %.noexc133, %.noexc132, %.noexc131, %.invoke.i, %bb.gp, %bb.fw, %bb.ef
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc90.i, %bb.cf
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp.i:                             ; preds = %bb.cd
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dq:                                            ; preds = %bb.ch
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dr:                                            ; preds = %bb.ci
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ds:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, %bb.cl, %bb.ck
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit338.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.dg
  %lpad.loopexit340.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp339.i:                          ; preds = %bb.dk
  %lpad.loopexit.split-lp341.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.du:                                            ; preds = %.loopexit.split-lp339.i, %.loopexit338.i
  %lpad.phi342.i = phi { ptr, i32 } [ %lpad.loopexit340.i, %.loopexit338.i ], [ %lpad.loopexit.split-lp341.i, %.loopexit.split-lp339.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  br label %.body.i

.body.i:                                          ; preds = %bb.cx, %bb.du, %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  %.pn62.i = phi { ptr, i32 } [ %lpad.phi342.i, %bb.du ], [ %i.tj, %bb.dt ], [ %.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i ], [ %lpad.phi.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i ], [ %lpad.phi.i.i, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.dz

bb.dv:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !245
  %i.tk = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245
  %i.tl = load i64, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  %i.tm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.tk, i64 noundef %i.tl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.ds, !noalias !245 ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !245
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  call void @llvm.assume(i1 %i.wb)
  %i.wc = add nuw nsw i64 %i.wa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vv, ptr noundef nonnull align 8 dereferenceable(1) %i.vx, i64 %i.wc, i1 false), !noalias !245
  br label %bb.en

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i: ; preds = %.noexc150.i
  store ptr %i.vw, ptr %21, align 8, !tbaa !30, !alias.scope !275, !noalias !245
  %i.wd = load i64, ptr %i.vx, align 8, !tbaa !31, !noalias !245
  store i64 %i.wd, ptr %i.vv, align 8, !tbaa !31, !alias.scope !275, !noalias !245
  %.phi.trans.insert.i148.i = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %.pre.i149.i = load i64, ptr %.phi.trans.insert.i148.i, align 8, !tbaa !39, !noalias !245
  br label %bb.en

bb.en:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i, %bb.em
  %i.we = phi i64 [ %i.wa, %bb.em ], [ %.pre.i149.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i ]
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  store i64 %i.we, ptr %i.wg, align 8, !tbaa !39, !alias.scope !275, !noalias !245
  store ptr %i.vx, ptr %i.vu, align 8, !tbaa !30, !noalias !245
  store i64 0, ptr %i.wf, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.vx, align 8, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !39, !noalias !282 ; 5 uses
  %i.wi = icmp sgt i64 %i.wh, 9223372036854775790
  br i1 %i.wi, label %bb.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152.i

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #31
          to label %.noexc162.i unwind label %bb.fe, !noalias !245

.noexc162.i:                                      ; preds = %bb.eo
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152.i: ; preds = %bb.en
  %i.wj = add nsw i64 %i.wh, 17                   ; 3 uses
  %i.wk = load ptr, ptr %21, align 8, !tbaa !30, !noalias !282 ; 2 uses
  %i.wl = icmp eq ptr %i.wk, %i.vv
  br i1 %i.wl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i161.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i161.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152.i
  %i.wm = icmp ult i64 %i.wh, 16
  call void @llvm.assume(i1 %i.wm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152.i
  %i.wn = load i64, ptr %i.vv, align 8, !tbaa !31, !noalias !282
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i161.i
  %i.wo = phi i64 [ %i.wn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i161.i ]
  %.not.i.i.i155.i = icmp ugt i64 %i.wj, %i.wo
  br i1 %.not.i.i.i155.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.wh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.wp, ptr noundef nonnull align 1 dereferenceable(17) @.str.31, i64 17, i1 false), !noalias !282
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.wh, i64 noundef 0, ptr noundef nonnull @.str.31, i64 noundef 17)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i unwind label %bb.fe, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i: ; preds = %bb.eq, %bb.ep
  store i64 %i.wj, ptr %i.wg, align 8, !tbaa !39, !noalias !282
  %i.wq = load ptr, ptr %21, align 8, !tbaa !30, !noalias !282
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wj
  store i8 0, ptr %i.wr, align 1, !tbaa !31, !noalias !282
  %i.ws = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  store ptr %i.ws, ptr %20, align 8, !tbaa !38, !alias.scope !279, !noalias !245
  %i.wt = load ptr, ptr %21, align 8, !tbaa !30, !noalias !282 ; 3 uses
  %i.wu = icmp eq ptr %i.wt, %i.vv
  br i1 %i.wu, label %bb.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i

bb.er:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i
  %i.wv = load i64, ptr %i.wg, align 8, !tbaa !39, !noalias !282 ; 3 uses
  %i.ww = icmp ult i64 %i.wv, 16
  call void @llvm.assume(i1 %i.ww)
  %i.wx = add nuw nsw i64 %i.wv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ws, ptr noundef nonnull align 8 dereferenceable(1) %i.vv, i64 %i.wx, i1 false), !noalias !245
  br label %bb.es

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i
  store ptr %i.wt, ptr %20, align 8, !tbaa !30, !alias.scope !279, !noalias !245
  %i.wy = load i64, ptr %i.vv, align 8, !tbaa !31, !noalias !282
  store i64 %i.wy, ptr %i.ws, align 8, !tbaa !31, !alias.scope !279, !noalias !245
  %.pre.i160.i = load i64, ptr %i.wg, align 8, !tbaa !39, !noalias !282
  br label %bb.es

bb.es:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i, %bb.er
  %i.wz = phi ptr [ %i.ws, %bb.er ], [ %i.wt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i ]
  %i.xa = phi i64 [ %i.wv, %bb.er ], [ %.pre.i160.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i ]
  %i.xb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.xa, ptr %i.xb, align 8, !tbaa !39, !alias.scope !279, !noalias !245
  store ptr %i.vv, ptr %21, align 8, !tbaa !30, !noalias !282
  store i64 0, ptr %i.wg, align 8, !tbaa !39, !noalias !282
  store i8 0, ptr %i.vv, align 8, !tbaa !31, !noalias !282
  %i.xc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.xd = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.xc, ptr noundef %i.wz, i32 noundef 12)
          to label %.noexc166.i unwind label %bb.ff, !noalias !245

.noexc166.i:                                      ; preds = %bb.es
  %.not.i165.i = icmp eq ptr %i.xd, null
  %i.xe = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.xf = getelementptr i8, ptr %i.xe, i64 -24
  %i.xg = load i64, ptr %i.xf, align 8, !noalias !245
  %i.xh = getelementptr inbounds i8, ptr %10, i64 %i.xg ; 2 uses
  br i1 %.not.i165.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %.noexc166.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 32
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !72, !noalias !245
  %i.xk = or i32 %i.xj, 4
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %.noexc166.i
  %.sink.i.i = phi i32 [ %i.xk, %bb.et ], [ 0, %.noexc166.i ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.xh, i32 noundef %.sink.i.i)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i unwind label %bb.ff, !noalias !245

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i: ; preds = %bb.eu
  %i.xl = load ptr, ptr %20, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.ws
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.i: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i
  %i.xn = load i64, ptr %i.ws, align 8, !tbaa !31, !noalias !245
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xo) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.i
  %i.xp = load ptr, ptr %21, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.vv
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i
  %i.xr = load i64, ptr %i.vv, align 8, !tbaa !31, !noalias !245
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i
  %i.xt = load ptr, ptr %22, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %i.vp
  br i1 %i.xu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i
  %i.xv = load i64, ptr %i.vp, align 8, !tbaa !31, !noalias !245
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xw) #28, !noalias !245
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30, !noalias !245
  %i.xx = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.xy = getelementptr i8, ptr %i.xx, i64 -24    ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 8, !noalias !245
  %i.ya = getelementptr inbounds i8, ptr %10, i64 %i.xz ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 32
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !72, !noalias !245
  %i.yd = and i32 %i.yc, 5
  %.not.i177.i = icmp eq i32 %i.yd, 0
  br i1 %.not.i177.i, label %bb.ev, label %bb.fw

bb.ev:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %41, i8 0, i64 24, i1 false), !alias.scope !245
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30, !noalias !245
  %i.ye = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.ye, ptr %23, align 8, !tbaa !38, !noalias !245
  %i.yf = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 0, ptr %i.yf, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.ye, align 8, !tbaa !31, !noalias !245
  %i.yg = load i64, ptr %i.xy, align 8, !noalias !245 ; 2 uses
  %i.yh = getelementptr inbounds i8, ptr %10, i64 %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 32
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !72, !noalias !245
  %i.yk = and i32 %i.yj, 5
  %.not.i178382.i = icmp eq i32 %i.yk, 0
  br i1 %.not.i178382.i, label %.lr.ph.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

.lr.ph.i:                                         ; preds = %bb.ev
  %i.yl = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.yn = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !245 ; 2 uses
  %i.yo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !245
  %i.yp = getelementptr i8, ptr %i.yn, i64 -24
  %i.yq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.ys = getelementptr inbounds nuw i8, ptr %24, i64 104 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.yu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !245 ; 2 uses
  %i.yv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !245
  %i.yw = getelementptr i8, ptr %i.yu, i64 -24
  %i.yx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.yy = getelementptr inbounds nuw i8, ptr %24, i64 120
  br label %bb.ew

bb.ew:                                            ; preds = %.backedge.i, %.lr.ph.i
  %i.yz = phi ptr [ null, %.lr.ph.i ], [ %i.acq, %.backedge.i ] ; 12 uses
  %i.za = phi ptr [ null, %.lr.ph.i ], [ %i.acr, %.backedge.i ] ; 9 uses
  %i.zb = phi ptr [ null, %.lr.ph.i ], [ %i.acs, %.backedge.i ] ; 6 uses
  %i.zc = phi i64 [ %i.yg, %.lr.ph.i ], [ %i.acv, %.backedge.i ]
  %i.zd = getelementptr inbounds i8, ptr %10, i64 %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 240
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !191, !noalias !245 ; 6 uses
  %.not.i.i.i179.i = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i179.i, label %bb.ex, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc184.i unwind label %.loopexit.split-lp344.i, !noalias !245

.noexc184.i:                                      ; preds = %bb.ex
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i: ; preds = %bb.ew
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 56
  %i.zh = load i8, ptr %i.zg, align 8, !tbaa !198, !noalias !245
  %.not.i1.i.i181.i = icmp eq i8 %i.zh, 0
  br i1 %.not.i1.i.i181.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 67
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !31, !noalias !245
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i

bb.ez:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.zf)
          to label %.noexc185.i unwind label %.loopexit343.i, !noalias !245

.noexc185.i:                                      ; preds = %bb.ez
  %i.zk = load ptr, ptr %i.zf, align 8, !tbaa !61, !noalias !245
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 48
  %i.zm = load ptr, ptr %i.zl, align 8, !noalias !245
  %i.zn = invoke noundef signext i8 %i.zm(ptr noundef nonnull align 8 dereferenceable(570) %i.zf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i unwind label %.loopexit343.i, !noalias !245, !inline_history !204

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i: ; preds = %.noexc185.i, %bb.ey
  %.0.i.i.i183.i = phi i8 [ %i.zj, %bb.ey ], [ %i.zn, %.noexc185.i ]
  %i.zo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %23, i8 noundef signext %.0.i.i.i183.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i unwind label %.loopexit343.i, !noalias !245 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i
  %i.zp = load i64, ptr %i.yf, align 8, !tbaa !39, !noalias !245
  %i.zq = icmp eq i64 %i.zp, 0
  br i1 %i.zq, label %.backedge.i, label %bb.fa

bb.fa:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i
  %i.zr = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !31, !noalias !245
  %.not.i88 = icmp eq i8 %i.zs, 35
  br i1 %.not.i88, label %.backedge.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30, !noalias !245
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %24, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 8)
          to label %bb.fc unwind label %bb.fg, !noalias !245

bb.fc:                                            ; preds = %bb.fb
  %i.zt = load ptr, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.zu = getelementptr i8, ptr %i.zt, i64 -24
  %i.zv = load i64, ptr %i.zu, align 8, !noalias !245
  %i.zw = getelementptr inbounds i8, ptr %24, i64 %i.zv ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 28
  store i32 5, ptr %i.zx, align 4, !tbaa !63, !noalias !245
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  %i.zz = load i32, ptr %i.zy, align 8, !tbaa !72, !noalias !245
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.zw, i32 noundef %i.zz)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i unwind label %bb.fh, !noalias !245

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i: ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30, !noalias !245
  %i.aaa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNSirsERl.exit.i unwind label %bb.fi, !noalias !245 ; 0 uses

_ZNSirsERl.exit.i:                                ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i
  %i.aab = load i64, ptr %i.j, align 8, !tbaa !75, !noalias !245 ; 2 uses
  %.not336.i = icmp eq i64 %i.aab, 2272060800
  br i1 %.not336.i, label %bb.fp, label %bb.fj, !llvm.loop !283

bb.fd:                                            ; preds = %bb.el
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

bb.fe:                                            ; preds = %bb.eq, %bb.eo
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i

bb.ff:                                            ; preds = %bb.eu, %bb.es
  %i.aae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaf = load ptr, ptr %20, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, %i.ws
  br i1 %i.aag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i: ; preds = %bb.ff
  %i.aah = load i64, ptr %i.ws, align 8, !tbaa !31, !noalias !245
  %i.aai = add i64 %i.aah, 1
  call void @_ZdlPvm(ptr noundef %i.aaf, i64 noundef %i.aai) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i, %bb.fe
  %.pn39.i = phi { ptr, i32 } [ %i.aad, %bb.fe ], [ %i.aae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i ], [ %i.aae, %bb.ff ] ; 2 uses
  %i.aaj = load ptr, ptr %21, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, %i.vv
  br i1 %i.aak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i
  %i.aal = load i64, ptr %i.vv, align 8, !tbaa !31, !noalias !245
  %i.aam = add i64 %i.aal, 1
  call void @_ZdlPvm(ptr noundef %i.aaj, i64 noundef %i.aam) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i, %bb.fd
  %.pn39.pn.i = phi { ptr, i32 } [ %i.aac, %bb.fd ], [ %.pn39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i ], [ %.pn39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i ]
  %i.aan = load ptr, ptr %22, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aao = icmp eq ptr %i.aan, %i.vp
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i
  %i.aap = load i64, ptr %i.vp, align 8, !tbaa !31, !noalias !245
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aan, i64 noundef %i.aaq) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !245
  br label %.body144.i

.body144.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, %bb.ek
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i ], [ %i.vo, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit343.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i, %.noexc185.i, %bb.ez
  %lpad.loopexit345.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

.loopexit.split-lp344.i:                          ; preds = %bb.ex
  %lpad.loopexit.split-lp346.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fg:                                            ; preds = %bb.fb
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fh:                                            ; preds = %bb.fc
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fj:                                            ; preds = %_ZNSirsERl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30, !noalias !245
  %i.aau = add i64 %i.aab, -2208988800
  store i64 %i.aau, ptr %26, align 8, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.fk unwind label %.loopexit348.i, !noalias !245

bb.fk:                                            ; preds = %bb.fj
  %.not.i.i203.i = icmp eq ptr %i.zb, %i.za
  br i1 %.not.i.i203.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aav = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aav, ptr %i.zb, align 8, !tbaa !75, !noalias !245
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zb, i64 8 ; 2 uses
  store ptr %i.aaw, ptr %i.yl, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i

bb.fm:                                            ; preds = %bb.fk
  %i.aax = ptrtoint ptr %i.za to i64
  %i.aay = ptrtoint ptr %i.yz to i64              ; 2 uses
  %i.aaz = sub i64 %i.aax, %i.aay                 ; 4 uses
  %i.aba = icmp eq i64 %i.aaz, 9223372036854775800
  br i1 %i.aba, label %bb.fn, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc216.i unwind label %.loopexit.split-lp349.i, !noalias !245

.noexc216.i:                                      ; preds = %bb.fn
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i: ; preds = %bb.fm
  %i.abb = ashr exact i64 %i.aaz, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i205.i = call i64 @llvm.umax.i64(i64 %i.abb, i64 1)
  %i.abc = add nsw i64 %.sroa.speculated.i.i.i.i205.i, %i.abb ; 2 uses
  %i.abd = icmp ult i64 %i.abc, %i.abb
  %i.abe = call i64 @llvm.umin.i64(i64 %i.abc, i64 1152921504606846975)
  %i.abf = select i1 %i.abd, i64 1152921504606846975, i64 %i.abe ; 3 uses
  %.not.i.i.i.i206.i = icmp ne i64 %i.abf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i206.i)
  %i.abg = shl nuw nsw i64 %i.abf, 3
  %i.abh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abg) #32
          to label %.noexc217.i unwind label %.loopexit348.i, !noalias !245 ; 9 uses

.noexc217.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.aaz
  %i.abj = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.abj, ptr %i.abi, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i207.i = icmp eq ptr %i.yz, %i.za
  br i1 %.not10.i.i.i.i.i.i207.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i.preheader

.lr.ph.i.i.i.i.i.i208.i.preheader:                ; preds = %.noexc217.i
  %i.abk = ptrtoaddr ptr %i.abh to i64
  %45 = ptrtoaddr ptr %i.za to i64
  %46 = ptrtoaddr ptr %i.yz to i64
  %i.abl = sub i64 %45, %46
  %i.abm = add i64 %i.abl, -8                     ; 2 uses
  %i.abn = lshr i64 %i.abm, 3
  %i.abo = add nuw nsw i64 %i.abn, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.abm, 24
  %i.abp = sub i64 %i.aay, %i.abk
  %diff.check = icmp ugt i64 %i.abp, -32
  %or.cond535 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond535, label %.lr.ph.i.i.i.i.i.i208.i.preheader537, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader
  %n.vec = and i64 %i.abo, 4611686018427387900    ; 3 uses
  %i.abq = shl i64 %n.vec, 3                      ; 2 uses
  %i.abr = getelementptr i8, ptr %i.abh, i64 %i.abq ; 2 uses
  %i.abs = getelementptr i8, ptr %i.yz, i64 %i.abq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abt = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.abh, i64 %i.abt ; 2 uses
  %next.gep514 = getelementptr i8, ptr %i.yz, i64 %i.abt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abu = getelementptr i8, ptr %next.gep514, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep514, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %wide.load515 = load <2 x i64>, ptr %i.abu, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %i.abv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  store <2 x i64> %wide.load515, ptr %i.abv, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abw = icmp eq i64 %index.next, %n.vec
  br i1 %i.abw, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i.preheader537

.lr.ph.i.i.i.i.i.i208.i.preheader537:             ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader, %middle.block
  %.012.i.i.i.i.i.i209.i.ph = phi ptr [ %i.abh, %.lr.ph.i.i.i.i.i.i208.i.preheader ], [ %i.abr, %middle.block ]
  %.0911.i.i.i.i.i.i210.i.ph = phi ptr [ %i.yz, %.lr.ph.i.i.i.i.i.i208.i.preheader ], [ %i.abs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i208.i

.lr.ph.i.i.i.i.i.i208.i:                          ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader537, %.lr.ph.i.i.i.i.i.i208.i
  %.012.i.i.i.i.i.i209.i = phi ptr [ %i.abz, %.lr.ph.i.i.i.i.i.i208.i ], [ %.012.i.i.i.i.i.i209.i.ph, %.lr.ph.i.i.i.i.i.i208.i.preheader537 ] ; 2 uses
  %.0911.i.i.i.i.i.i210.i = phi ptr [ %i.aby, %.lr.ph.i.i.i.i.i.i208.i ], [ %.0911.i.i.i.i.i.i210.i.ph, %.lr.ph.i.i.i.i.i.i208.i.preheader537 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abx = load i64, ptr %.0911.i.i.i.i.i.i210.i, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  store i64 %i.abx, ptr %.012.i.i.i.i.i.i209.i, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %i.aby = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i210.i, i64 8 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i209.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i211.i = icmp eq ptr %i.aby, %i.za
  br i1 %.not.i.i.i.i.i.i211.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i, !llvm.loop !292

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i: ; preds = %.lr.ph.i.i.i.i.i.i208.i, %middle.block, %.noexc217.i
  %.0.lcssa.i.i.i.i.i.i213.i = phi ptr [ %i.abh, %.noexc217.i ], [ %i.abr, %middle.block ], [ %i.abz, %.lr.ph.i.i.i.i.i.i208.i ]
  %i.aca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i213.i, i64 8 ; 2 uses
  %.not.i23.i.i.i214.i = icmp eq ptr %i.yz, null
  br i1 %.not.i23.i.i.i214.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yz, i64 noundef %i.aaz) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i: ; preds = %bb.fo, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i
  store ptr %i.abh, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.aca, ptr %i.yl, align 8, !tbaa !260, !alias.scope !245
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %i.abf ; 2 uses
  store ptr %i.acb, ptr %i.ym, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i, %bb.fl
  %i.acc = phi ptr [ %i.abh, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.yz, %bb.fl ]
  %i.acd = phi ptr [ %i.acb, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.za, %bb.fl ]
  %i.ace = phi ptr [ %i.aca, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.aaw, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i, %_ZNSirsERl.exit.i
  %i.acf = phi ptr [ %i.acc, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.yz, %_ZNSirsERl.exit.i ]
  %i.acg = phi ptr [ %i.acd, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.za, %_ZNSirsERl.exit.i ]
  %i.ach = phi ptr [ %i.ace, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.zb, %_ZNSirsERl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  store ptr %i.yn, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.aci = load i64, ptr %i.yp, align 8, !noalias !245
  %i.acj = getelementptr inbounds i8, ptr %24, i64 %i.aci
  store ptr %i.yo, ptr %i.acj, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yq, align 8, !tbaa !61, !noalias !245
  %i.ack = load ptr, ptr %i.yr, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.ys
  br i1 %i.acl, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i: ; preds = %bb.fp
  %i.acm = load i64, ptr %i.ys, align 8, !tbaa !31, !noalias !245
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acn) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yq, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.yt) #30, !noalias !245
  store ptr %i.yu, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.aco = load i64, ptr %i.yw, align 8, !noalias !245
  %i.acp = getelementptr inbounds i8, ptr %24, i64 %i.aco
  store ptr %i.yv, ptr %i.acp, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.yx, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.yy) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i, %bb.fa, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i
  %i.acq = phi ptr [ %i.acf, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.yz, %bb.fa ], [ %i.yz, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.acr = phi ptr [ %i.acg, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.za, %bb.fa ], [ %i.za, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.acs = phi ptr [ %i.ach, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.zb, %bb.fa ], [ %i.zb, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.act = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.acu = getelementptr i8, ptr %i.act, i64 -24
  %i.acv = load i64, ptr %i.acu, align 8, !noalias !245 ; 2 uses
  %i.acw = getelementptr inbounds i8, ptr %10, i64 %i.acv
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 32
  %i.acy = load i32, ptr %i.acx, align 8, !tbaa !72, !noalias !245
  %i.acz = and i32 %i.acy, 5
  %.not.i178.i = icmp eq i32 %i.acz, 0
  br i1 %.not.i178.i, label %bb.ew, label %._crit_edge.i, !llvm.loop !283

.loopexit348.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i, %bb.fj
  %lpad.loopexit350.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

.loopexit.split-lp349.i:                          ; preds = %bb.fn
  %lpad.loopexit.split-lp351.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fq:                                            ; preds = %.loopexit.split-lp349.i, %.loopexit348.i
  %lpad.phi352.i = phi { ptr, i32 } [ %lpad.loopexit350.i, %.loopexit348.i ], [ %lpad.loopexit.split-lp351.i, %.loopexit.split-lp349.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fi
  %.pn54.i = phi { ptr, i32 } [ %lpad.phi352.i, %bb.fq ], [ %i.aat, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fh
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %bb.fr ], [ %i.aas, %bb.fh ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %24) #30, !noalias !245
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fg
  %.pn54.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.i, %bb.fs ], [ %i.aar, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %bb.fu

._crit_edge.i:                                    ; preds = %.backedge.i
  %.pre.i89 = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ada = icmp eq ptr %.pre.i89, %i.ye
  br i1 %i.ada, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i: ; preds = %._crit_edge.i
  %i.adb = load i64, ptr %i.ye, align 8, !tbaa !31, !noalias !245
  %i.adc = add i64 %i.adb, 1
  call void @_ZdlPvm(ptr noundef %.pre.i89, i64 noundef %i.adc) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i: ; preds = %bb.ev, %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  br label %bb.hm

bb.fu:                                            ; preds = %bb.ft, %.loopexit.split-lp344.i, %.loopexit343.i
  %.pn54.pn.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.pn.i, %bb.ft ], [ %lpad.loopexit345.i, %.loopexit343.i ], [ %lpad.loopexit.split-lp346.i, %.loopexit.split-lp344.i ] ; 2 uses
  %i.add = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ade = icmp eq ptr %i.add, %i.ye
  br i1 %i.ade, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i: ; preds = %bb.fu
  %i.adf = load i64, ptr %i.ye, align 8, !tbaa !31, !noalias !245
  %i.adg = add i64 %i.adf, 1
  call void @_ZdlPvm(ptr noundef %i.add, i64 noundef %i.adg) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  %i.adh = load ptr, ptr %41, align 16, !tbaa !25, !alias.scope !245 ; 3 uses
  %.not.i.i.i228.i = icmp eq ptr %i.adh, null
  br i1 %.not.i.i.i228.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i
  %i.adi = load ptr, ptr %i.ym, align 16, !tbaa !26, !alias.scope !245
  %i.adj = ptrtoint ptr %i.adi to i64
  %i.adk = ptrtoint ptr %i.adh to i64
  %i.adl = sub i64 %i.adj, %i.adk
  call void @_ZdlPvm(ptr noundef nonnull %i.adh, i64 noundef %i.adl) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ya, i32 noundef 0)
          to label %bb.fx unwind label %bb.dp, !noalias !245
end_hunk_2
begin_hunk_3_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a
bb.f:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i: ; preds = %bb.f, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bh = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !31
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #28
  br label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit

_ZN14arrow_vendored4date9time_zoneD2Ev.exit:      ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #21

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #22

declare noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL10load_leapsIiEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 6 uses
  %4 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not22 = icmp eq i32 %2, 0
  br i1 %.not22, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  store ptr %i.i, ptr %i.e, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit
  %.017 = phi i32 [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i ], [ %i.w, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 4, !tbaa !3
  %i.n = call noundef i32 @llvm.bswap.i32(i32 %i.m) ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.neg16 = add i32 %i.n, 1
  %i.q = sub i32 %.neg16, %i.p
  %i.r = sext i32 %i.q to i64
  store i64 %i.r, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !260  ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.f
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.j, align 8, !tbaa !260
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit unwind label %bb.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit: ; preds = %bb.g, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.w = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !360

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 9 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %4 = ptrtoaddr ptr %1 to i64
  %5 = ptrtoaddr ptr %i.c to i64
  %i.s = sub i64 %4, %5
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.e, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ab = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %wide.load49 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  store <2 x i64> %wide.load49, ptr %i.ac, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !367

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i52 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader

.lr.ph.i.i.i28.preheader:                         ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %6 = ptrtoaddr ptr %i.b to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.ai = sub i64 %6, %7
  %i.aj = add i64 %i.ai, -8                       ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.aj, 104
  br i1 %min.iters.check55, label %.lr.ph.i.i.i28.preheader70, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.i.i.i28.preheader
  %i.am = sub i64 %.0.lcssa.i.i.i52, %i.m
  %i.an = add i64 %i.am, 7
  %diff.check53 = icmp ult i64 %i.an, 31
  br i1 %diff.check53, label %.lr.ph.i.i.i28.preheader70, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck51
  %n.vec58 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ao = shl i64 %n.vec58, 3                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ah, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.ar = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ah, i64 %i.ar ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.ar ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.as = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %wide.load64 = load <2 x i64>, ptr %i.as, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %i.at = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x i64> %wide.load63, ptr %next.gep61, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  store <2 x i64> %wide.load64, ptr %i.at, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.au, label %middle.block66, label %vector.body59, !llvm.loop !373

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %i.al, %n.vec58
  br i1 %cmp.n67, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader70

.lr.ph.i.i.i28.preheader70:                       ; preds = %vector.memcheck51, %.lr.ph.i.i.i28.preheader, %middle.block66
  %.012.i.i.i29.ph = phi ptr [ %i.ah, %vector.memcheck51 ], [ %i.ah, %.lr.ph.i.i.i28.preheader ], [ %i.ap, %middle.block66 ]
  %.0911.i.i.i30.ph = phi ptr [ %1, %vector.memcheck51 ], [ %1, %.lr.ph.i.i.i28.preheader ], [ %i.aq, %middle.block66 ]
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28.preheader70, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ax, %.lr.ph.i.i.i28 ], [ %.012.i.i.i29.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.aw, %.lr.ph.i.i.i28 ], [ %.0911.i.i.i30.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.av = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  store i64 %i.av, ptr %.012.i.i.i29, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.aw, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !374

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %middle.block66, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ah, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ap, %middle.block66 ], [ %i.ax, %.lr.ph.i.i.i28 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !25
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !260
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !26
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bf) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bd

bb.g:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL10load_leapsIlEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 6 uses
  %4 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not21 = icmp eq i32 %2, 0
  br i1 %.not21, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  store ptr %i.i, ptr %i.e, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit
  %.016 = phi i32 [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i ], [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !75
  %i.n = call noundef i64 @llvm.bswap.i64(i64 %i.m) ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !75
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.q = add nsw i32 %i.p, -1
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 %i.n, %i.r
  store i64 %i.s, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !260  ; 3 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.j, align 8, !tbaa !260
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit unwind label %bb.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit: ; preds = %bb.g, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.x = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !375

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
end_hunk_3
