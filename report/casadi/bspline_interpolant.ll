Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/bspline_interpolant?download=true
inline.NumInlined: 2124
inline.NumDeleted: 740
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6casadi18BSplineInterpolant4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE:bb.a

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc230
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.l, %.noexc230 ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.n, 56
  br i1 %i.r, label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 3, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 3, ptr %i.s, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 3, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 3, ptr %i.u, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 3, ptr %i.v, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 3, ptr %i.w, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 3, ptr %i.x, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 3, ptr %i.y, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.z, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !218

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  br label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit:            ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aa, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit ]
  %.sroa.0528.0 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.m, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  store ptr %.sroa.0528.0, ptr %i.ab, align 8, !tbaa !53
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !68
  store ptr %.sroa.11.0, ptr %i.ae, align 8, !tbaa !54
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ai) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.am = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef 0, i64 noundef %i.al, ptr noundef nonnull @.str.17, i64 noundef 4) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !133
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  store double 1.000000e-01, ptr %i.ao, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i64 0, ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not605 = icmp eq ptr %i.av, %i.aw
  br i1 %.not605, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549, %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = icmp eq i64 %i.bn, %i.bu
  br i1 %i.bv, label %bb.bv, label %bb.bf

bb.c:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549
  %.sroa.0524.0606 = phi ptr [ %i.av, %.lr.ph ], [ %i.jx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549 ] ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0524.0606, i64 32 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0524.0606, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !29 ; 5 uses
  switch i64 %i.by, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237
    i64 21, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit239
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = xor i32 %i.ca, 1919378788
  %i.cc = getelementptr i8, ptr %i.bz, i64 4
  %i.cd = load i16, ptr %i.cc, align 1
  %i.ce = zext i16 %i.cd to i32
  %i.cf = xor i32 %i.ce, 25957
  %i.cg = or i32 %i.cb, %i.cf
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0524.0606, i64 64
  invoke void @_ZNK6casadi11GenericType13to_int_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.48") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
          to label %_ZNK6casadi11GenericTypecvSt6vectorIxSaIxEEEv.exit unwind label %bb.f

_ZNK6casadi11GenericTypecvSt6vectorIxSaIxEEEv.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 3 uses
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.cn = load <2 x ptr>, ptr %5, align 16, !tbaa !231
  store <2 x ptr> %i.cn, ptr %i.ab, align 8, !tbaa !231
  %i.co = load ptr, ptr %i.bh, align 16, !tbaa !54
  store ptr %i.co, ptr %i.ae, align 8, !tbaa !54
  %.not.i.i.i.i.i232 = icmp eq ptr %i.cl, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i232, label %_ZNSt6vectorIxSaIxEED2Ev.exit235, label %_ZNSt6vectorIxSaIxEEaSEOS1_.exit233

_ZNSt6vectorIxSaIxEEaSEOS1_.exit233:              ; preds = %_ZNK6casadi11GenericTypecvSt6vectorIxSaIxEEEv.exit
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cr) #24
  %.pr = load ptr, ptr %5, align 16, !tbaa !53    ; 3 uses
  %.not.i.i.i234 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIxSaIxEED2Ev.exit235, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIxSaIxEEaSEOS1_.exit233
  %i.cs = load ptr, ptr %i.bh, align 16, !tbaa !54
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.pr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cv) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit235

_ZNSt6vectorIxSaIxEED2Ev.exit235:                 ; preds = %_ZNK6casadi11GenericTypecvSt6vectorIxSaIxEEEv.exit, %_ZNSt6vectorIxSaIxEEaSEOS1_.exit233, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ez

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237: ; preds = %bb.c
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !25
  %bcmp.i236 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.3, i64 %i.by)
  %i.cy = icmp eq i32 %bcmp.i236, 0
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0524.0606, i64 64
  invoke void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread
  %i.da = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 6 uses
  %i.db = load ptr, ptr %6, align 8, !tbaa !25    ; 5 uses
  %i.dc = icmp eq ptr %i.db, %i.bf
  br i1 %i.dc, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  %75 = icmp eq ptr %i.da, %i.be
  br i1 %75, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %bb.g
  %i.dd = load i64, ptr %i.bg, align 8, !tbaa !29 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  switch i64 %i.dd, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.df = load i8, ptr %i.db, align 1, !tbaa !28
  store i8 %i.df, ptr %i.da, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.dg = load i64, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  store i64 %i.dg, ptr %i.ak, align 8, !tbaa !29
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !28
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  store ptr %i.db, ptr %i.aj, align 8, !tbaa !25
  %i.dj = load <2 x i64>, ptr %i.bg, align 8, !tbaa !28
  store <2 x i64> %i.dj, ptr %i.ak, align 8, !tbaa !28
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dk = load i64, ptr %i.be, align 8, !tbaa !28
  store ptr %i.db, ptr %i.aj, align 8, !tbaa !25
  %i.dl = load <2 x i64>, ptr %i.bg, align 8, !tbaa !28
  store <2 x i64> %i.dl, ptr %i.ak, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.da, ptr %6, align 8, !tbaa !25
  store i64 %i.dk, ptr %i.bf, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bf, ptr %6, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.dm = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.da, %bb.k ], [ %i.bf, %bb.l ]
  store i64 0, ptr %i.bg, align 8, !tbaa !29
  store i8 0, ptr %i.dm, align 1, !tbaa !28
  %i.dn = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bf
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dp = load i64, ptr %i.bf, align 8, !tbaa !28
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ez

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit239: ; preds = %bb.c
  %.pre608 = load ptr, ptr %i.bw, align 8, !tbaa !25
  %bcmp.i238 = call i32 @bcmp(ptr %.pre608, ptr nonnull @.str.5, i64 %i.by)
  %i.ds = icmp eq i32 %bcmp.i238, 0
  br i1 %i.ds, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit239.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit239.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit239
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0524.0606, i64 64
  invoke void @_ZNK6casadi11GenericType7to_dictB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.32") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit239.thread
  %i.du = load ptr, ptr %i.aq, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.du)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #27
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i: ; preds = %bb.n
  store ptr null, ptr %i.aq, align 8, !tbaa !38
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !39
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !40
  store i64 0, ptr %i.at, align 8, !tbaa !41
  %i.dx = load ptr, ptr %i.az, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i240 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i240, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i
  %i.dy = load i32, ptr %i.ba, align 8, !tbaa !37
  store i32 %i.dy, ptr %i.ap, align 8, !tbaa !37
  store ptr %i.dx, ptr %i.aq, align 8, !tbaa !38
  %i.dz = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !42
  store <2 x ptr> %i.dz, ptr %i.ar, align 8, !tbaa !42
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.ap, ptr %i.ea, align 8, !tbaa !232
  %i.eb = load i64, ptr %i.bd, align 8, !tbaa !41
  store i64 %i.eb, ptr %i.at, align 8, !tbaa !41
  store ptr null, ptr %i.az, align 8, !tbaa !38
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !39
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !40
  store i64 0, ptr %i.bd, align 8, !tbaa !41
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i, %bb.p
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit239.thread
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ez

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242: ; preds = %bb.c
  %.pre609 = load ptr, ptr %i.bw, align 8, !tbaa !25
  %bcmp.i241 = call i32 @bcmp(ptr %.pre609, ptr nonnull @.str.7, i64 %i.by)
  %i.ef = icmp eq i32 %bcmp.i241, 0
  br i1 %i.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit278.thread549

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0524.0606, i64 64
  invoke void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread
  %i.eh = load i64, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  switch i64 %i.eh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread536 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244: ; preds = %bb.s
  %i.ei = load ptr, ptr %8, align 8, !tbaa !25    ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 1
  %i.ek = xor i64 %i.ej, 7956558038498045806
  %i.el = getelementptr i8, ptr %i.ei, i64 8
  %i.em = load i16, ptr %i.el, align 1
  %i.en = zext i16 %i.em to i64
  %i.eo = xor i64 %i.en, 29807
  %i.ep = or i64 %i.ek, %i.eo
  %i.eq = icmp ne i64 %i.ep, 0
  %i.er = zext i1 %i.eq to i32
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread536

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246: ; preds = %bb.s
  %i.eu = load ptr, ptr %8, align 8, !tbaa !25    ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 1
  %i.ew = xor i64 %i.ev, 7809075128178797939
  %i.ex = getelementptr i8, ptr %i.eu, i64 5
  %i.ey = load i64, ptr %i.ex, align 1
  %i.ez = xor i64 %i.ey, 8241980317954236264
  %i.fa = or i64 %i.ew, %i.ez
  %i.fb = icmp ne i64 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread536

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread536: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244, %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246
  %i.fe = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270.thread

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread536
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.12)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ff = load ptr, ptr %0, align 8, !tbaa !50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = invoke noundef nonnull align 8 dereferenceable(72) ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(1520) %0)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.y unwind label %bb.ag
end_hunk_0
