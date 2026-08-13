inline.NumInlined: 558
inline.NumDeleted: 215
begin_hunk_0_@_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o13TicTocElementESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 12 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !30
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 9 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !34
  %i.k = load i64, ptr %i.e, align 8, !tbaa !36
  store i64 %i.k, ptr %i.c, align 8, !tbaa !36
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !37
  store ptr %i.e, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.m, align 8, !tbaa !37
  store i8 0, ptr %i.e, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !44, !range !28, !noundef !29
  store i8 %i.q, ptr %i.o, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef nonnull align 8 dereferenceable(81) %0, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %.not21.i.i = icmp eq ptr %0, %2
  br i1 %.not21.i.i, label %_ZN3g2o13TicTocElementaSEOS0_.exit, label %bb.d, !prof !94

bb.d:                                             ; preds = %bb.c
  switch i64 %i.w, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.s, align 1, !tbaa !36
  store i8 %i.y, ptr %i.e, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.z = load i64, ptr %i.v, align 8, !tbaa !37   ; 2 uses
  store i64 %i.z, ptr %i.m, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !36
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !34
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  store ptr %i.s, ptr %i.b, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !37
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !36
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !36
  store ptr %i.t, ptr %i.r, align 8, !tbaa !34
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit

_ZN3g2o13TicTocElementaSEOS0_.exit:               ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g
  %i.ae = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.t, %bb.g ], [ %i.s, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.af, align 8, !tbaa !37
  store i8 0, ptr %i.ae, align 1, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !44, !range !28, !noundef !29
  store i8 %i.ah, ptr %i.p, align 8, !tbaa !44
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = ptrtoint ptr %0 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef nonnull align 8 dereferenceable(81) %4, i64 48, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 7 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.c
  br i1 %i.ap, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

bb.h:                                             ; preds = %_ZN3g2o13TicTocElementaSEOS0_.exit
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !37  ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.as, i1 false)
  br label %_ZN3g2o13TicTocElementC2EOS0_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN3g2o13TicTocElementaSEOS0_.exit
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !34
  %i.at = load i64, ptr %i.c, align 8, !tbaa !36
  store i64 %i.at, ptr %i.an, align 8, !tbaa !36
  %.pre17 = load i64, ptr %i.n, align 8, !tbaa !37
  br label %_ZN3g2o13TicTocElementC2EOS0_.exit3

_ZN3g2o13TicTocElementC2EOS0_.exit3:              ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.au = phi i64 [ %i.aq, %bb.h ], [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2 ]
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.au, ptr %i.av, align 8, !tbaa !37
  store ptr %i.c, ptr %i.a, align 8, !tbaa !34
  store i64 0, ptr %i.n, align 8, !tbaa !37
  store i8 0, ptr %i.c, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ax = load i8, ptr %i.o, align 8, !tbaa !44, !range !28, !noundef !29
  store i8 %i.ax, ptr %i.aw, align 8, !tbaa !44
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o13TicTocElementESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.al, ptr noundef nonnull align 8 %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN3g2o13TicTocElementC2EOS0_.exit3
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.an
  br i1 %i.az, label %_ZN3g2o13TicTocElementD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !36
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #24
  br label %_ZN3g2o13TicTocElementD2Ev.exit

_ZN3g2o13TicTocElementD2Ev.exit:                  ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %_ZN3g2o13TicTocElementD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN3g2o13TicTocElementD2Ev.exit
  %i.be = load i64, ptr %i.c, align 8, !tbaa !36
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZN3g2o13TicTocElementD2Ev.exit6

_ZN3g2o13TicTocElementD2Ev.exit6:                 ; preds = %_ZN3g2o13TicTocElementD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.j:                                             ; preds = %_ZN3g2o13TicTocElementC2EOS0_.exit3
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.an
  br i1 %i.bi, label %_ZN3g2o13TicTocElementD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.j
  %i.bj = load i64, ptr %i.an, align 8, !tbaa !36
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #24
  br label %_ZN3g2o13TicTocElementD2Ev.exit9

_ZN3g2o13TicTocElementD2Ev.exit9:                 ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZN3g2o13TicTocElementD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN3g2o13TicTocElementD2Ev.exit9
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !36
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #24
  br label %_ZN3g2o13TicTocElementD2Ev.exit12

_ZN3g2o13TicTocElementD2Ev.exit12:                ; preds = %_ZN3g2o13TicTocElementD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o13TicTocElementESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 4 uses
  %5 = alloca %"struct.g2o::TicTocElement", align 8 ; 6 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN3g2o13TicTocElementaSEOS0_.exit
  %.047 = phi i64 [ %spec.select, %_ZN3g2o13TicTocElementaSEOS0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.047, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [88 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %6 = getelementptr inbounds [88 x i8], ptr %0, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !64
  %i.l = fcmp olt double %i.i, %i.k
  %spec.select = select i1 %i.l, i64 %i.g, i64 %i.e ; 5 uses
  %i.m = getelementptr inbounds [88 x i8], ptr %0, i64 %spec.select ; 8 uses
  %i.n = getelementptr inbounds [88 x i8], ptr %0, i64 %.047 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.n, ptr noundef nonnull align 8 dereferenceable(81) %i.m, i64 48, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !34   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !34   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u                   ; 2 uses
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  br i1 %i.v, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %i.v, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %.not21.i.i = icmp eq i64 %spec.select, %.047
  br i1 %.not21.i.i, label %_ZN3g2o13TicTocElementaSEOS0_.exit, label %bb.c, !prof !94

bb.c:                                             ; preds = %bb.b
  switch i64 %i.x, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.t, align 1, !tbaa !36
  store i8 %i.z, ptr %i.q, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !37  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !37
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !36
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !34
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.t, ptr %i.o, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !tbaa !36
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !tbaa !36
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !36
  store ptr %i.t, ptr %i.o, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !36
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !36
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.q, ptr %i.p, align 8, !tbaa !34
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !36
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.u, ptr %i.p, align 8, !tbaa !34
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit

_ZN3g2o13TicTocElementaSEOS0_.exit:               ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.al = phi ptr [ %i.q, %bb.f ], [ %i.u, %bb.g ], [ %i.t, %bb.b ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 0, ptr %i.am, align 8, !tbaa !37
  store i8 0, ptr %i.al, align 1, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !44, !range !28, !noundef !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !44
  %i.aq = icmp slt i64 %spec.select, %i.b
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %_ZN3g2o13TicTocElementaSEOS0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN3g2o13TicTocElementaSEOS0_.exit ] ; 6 uses
  %i.ar = and i64 %2, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.at = add nsw i64 %2, -2
  %i.au = ashr exact i64 %i.at, 1
  %i.av = icmp eq i64 %.0.lcssa, %i.au
  br i1 %i.av, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.aw = shl nsw i64 %.0.lcssa, 1
  %i.ax = or disjoint i64 %i.aw, 1                ; 3 uses
  %7 = getelementptr inbounds [88 x i8], ptr %0, i64 %i.ax ; 8 uses
  %8 = getelementptr inbounds [88 x i8], ptr %0, i64 %.0.lcssa ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef nonnull align 8 dereferenceable(81) %7, i64 48, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !34 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 6 uses
  %i.bf = icmp eq ptr %i.bd, %i.be                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.i
  br i1 %i.bf, label %bb.j, label %.thread.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25: ; preds = %bb.i
  br i1 %i.bf, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !37 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %.not21.i.i28 = icmp eq i64 %i.ax, %.0.lcssa
  br i1 %.not21.i.i28, label %_ZN3g2o13TicTocElementaSEOS0_.exit33, label %bb.k, !prof !94

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bh, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !36
  store i8 %i.bj, ptr %i.ba, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !37 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !37
  %i.bm = load ptr, ptr %i.ay, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !36
  %.pre.i.i30 = load ptr, ptr %i.az, align 8, !tbaa !34
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit33

.thread.i.i32:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !37
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !37
  %i.br = load i64, ptr %i.be, align 8, !tbaa !36
  store i64 %i.br, ptr %i.bb, align 8, !tbaa !36
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25
  %i.bs = load i64, ptr %i.bb, align 8, !tbaa !36
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !37
  %i.bw = load i64, ptr %i.be, align 8, !tbaa !36
  store i64 %i.bw, ptr %i.bb, align 8, !tbaa !36
  %.not.i.i27 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i26
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !34
  store i64 %i.bs, ptr %i.be, align 8, !tbaa !36
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit33

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i26, %.thread.i.i32
  store ptr %i.be, ptr %i.az, align 8, !tbaa !34
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit33

_ZN3g2o13TicTocElementaSEOS0_.exit33:             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29, %bb.n, %bb.o
  %i.bx = phi ptr [ %i.ba, %bb.n ], [ %i.be, %bb.o ], [ %i.bd, %bb.j ], [ %.pre.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29 ]
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.by, align 8, !tbaa !37
  store i8 0, ptr %i.bx, align 1, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !44, !range !28, !noundef !29
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i8 %i.ca, ptr %i.cb, align 8, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %_ZN3g2o13TicTocElementaSEOS0_.exit33, %bb.h, %._crit_edge
  %.1 = phi i64 [ %i.ax, %_ZN3g2o13TicTocElementaSEOS0_.exit33 ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef nonnull align 8 dereferenceable(81) %3, i64 48, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 7 uses
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !30
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !34 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !37 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.cl, i1 false)
  br label %_ZN3g2o13TicTocElementC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.p
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !34
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !36
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !36
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %_ZN3g2o13TicTocElementC2EOS0_.exit

_ZN3g2o13TicTocElementC2EOS0_.exit:               ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  %i.cn = phi i64 [ %i.cj, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !37
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !34
  store i64 0, ptr %i.co, align 8, !tbaa !37
  store i8 0, ptr %i.cg, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !44, !range !28, !noundef !29
  store i8 %i.cs, ptr %i.cq, align 8, !tbaa !44
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o13TicTocElementESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZN3g2o13TicTocElementC2EOS0_.exit
  %i.ct = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ce
  br i1 %i.cu, label %_ZN3g2o13TicTocElementD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.cv = load i64, ptr %i.ce, align 8, !tbaa !36
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #24
  br label %_ZN3g2o13TicTocElementD2Ev.exit

_ZN3g2o13TicTocElementD2Ev.exit:                  ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.s:                                             ; preds = %_ZN3g2o13TicTocElementC2EOS0_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ce
  br i1 %i.cz, label %_ZN3g2o13TicTocElementD2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.s
  %i.da = load i64, ptr %i.ce, align 8, !tbaa !36
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #24
  br label %_ZN3g2o13TicTocElementD2Ev.exit37

_ZN3g2o13TicTocElementD2Ev.exit37:                ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.cx
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o13TicTocElementESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3g2o13TicTocElementaSEOS0_.exit
  %.027 = phi i64 [ %1, %.lr.ph ], [ %.0928, %_ZN3g2o13TicTocElementaSEOS0_.exit ] ; 4 uses
  %.0928.in = add nsw i64 %.027, -1
  %.0928 = sdiv i64 %.0928.in, 2                  ; 5 uses
  %i.c = getelementptr inbounds [88 x i8], ptr %0, i64 %.0928 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !64
  %i.f = load double, ptr %i.b, align 8, !tbaa !64
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds [88 x i8], ptr %0, i64 %.027 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.h, ptr noundef nonnull align 8 dereferenceable(81) %i.c, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !34   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !34   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o                   ; 2 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  br i1 %i.p, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  br i1 %i.p, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %.not21.i.i = icmp eq i64 %.0928, %.027
  br i1 %.not21.i.i, label %_ZN3g2o13TicTocElementaSEOS0_.exit, label %bb.e, !prof !94

bb.e:                                             ; preds = %bb.d
  switch i64 %i.r, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.n, align 1, !tbaa !36
  store i8 %i.t, ptr %i.k, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.u = load i64, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %i.u, ptr %i.v, align 8, !tbaa !37
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !36
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.n, ptr %i.i, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !tbaa !36
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !36
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !36
  store ptr %i.n, ptr %i.i, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !36
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !36
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.k, ptr %i.j, align 8, !tbaa !34
  store i64 %i.ab, ptr %i.o, align 8, !tbaa !36
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.o, ptr %i.j, align 8, !tbaa !34
  br label %_ZN3g2o13TicTocElementaSEOS0_.exit

_ZN3g2o13TicTocElementaSEOS0_.exit:               ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h, %bb.i
  %i.af = phi ptr [ %i.k, %bb.h ], [ %i.o, %bb.i ], [ %i.n, %bb.d ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 0, ptr %i.ag, align 8, !tbaa !37
  store i8 0, ptr %i.af, align 1, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !44, !range !28, !noundef !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 %i.ai, ptr %i.aj, align 8, !tbaa !44
  %i.ak = icmp sgt i64 %.0928, %2
  br i1 %i.ak, label %bb.b, label %.critedge, !llvm.loop !96

.critedge:                                        ; preds = %bb.b, %_ZN3g2o13TicTocElementaSEOS0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.0928, %_ZN3g2o13TicTocElementaSEOS0_.exit ], [ %.027, %bb.b ]
  %i.al = getelementptr inbounds [88 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.al, ptr noundef nonnull align 8 dereferenceable(81) %3, i64 48, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 4 uses
end_hunk_0
