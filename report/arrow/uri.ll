inline.NumInlined: 924
inline.NumDeleted: 458
begin_hunk_0_@_ZNK5arrow4util3Uri4pathB5cxx11Ev:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.sroa.2.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.peel.pre = load ptr, ptr %.sroa.2.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !54
  %.sroa.0.0.copyload.peel.pre = load i64, ptr %i.i, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %.sroa.0.0.copyload.peel.pre, ptr %.sroa.2.0.copyload.peel.pre)
          to label %bb.d unwind label %.loopexit.split-lp28

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %i.p = load ptr, ptr %3, align 8, !tbaa !16
  %i.q = load i64, ptr %i.n, align 8, !tbaa !11
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.p, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp33 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.d
  %i.s = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.u = load i64, ptr %i.o, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62, !noalias !66 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67, !noalias !66 ; 2 uses
  %i.ad = icmp ugt ptr %i.aa, %i.ac
  %.08.i9.i.i = select i1 %i.ad, ptr %i.aa, ptr %i.ac ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68, !noalias !66
  %i.ah = ptrtoint ptr %.08.i9.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !11, !noalias !66
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !16, !noalias !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !14, !noalias !66
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !7, !alias.scope !66
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !16, !noalias !66 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11, !noalias !66 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !16, !alias.scope !66
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !14, !noalias !66
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !14, !alias.scope !66
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11, !noalias !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.ax = phi i64 [ %i.at, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !11, !alias.scope !66
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !16, !noalias !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ay, i8 0, i64 9, i1 false), !noalias !66
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull %i.aq, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !66 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.bd = load i64, ptr %i.ao, align 8, !tbaa !14, !alias.scope !66
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #24
  br label %.body

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.021.024 = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 3 uses
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload = load i64, ptr %.sroa.021.024, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.024, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54
  invoke void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.h unwind label %.loopexit27

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.bg = load ptr, ptr %3, align 8, !tbaa !16
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !11
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit32 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.h
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.o
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bl = load i64, ptr %i.o, align 8, !tbaa !14
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.021.024, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.k
  br i1 %i.bo, label %._crit_edge, label %.peel.next, !llvm.loop !69

.loopexit27:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit.split-lp28:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit32:                                      ; preds = %bb.h
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp33:                             ; preds = %bb.d
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp33, %.loopexit32
  %lpad.phi36 = phi { ptr, i32 } [ %lpad.loopexit34, %.loopexit32 ], [ %lpad.loopexit.split-lp35, %.loopexit.split-lp33 ] ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.o
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.br = load i64, ptr %i.o, align 8, !tbaa !14
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %.loopexit27, %.loopexit.split-lp28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn = phi { ptr, i32 } [ %lpad.phi36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp28 ], [ %lpad.loopexit29, %.loopexit27 ], [ %lpad.phi36, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bt = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bt, ptr %2, align 8, !tbaa !71
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %i.bw
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !71
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !71
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.y, align 8, !tbaa !71
  %i.ca = load ptr, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.aq
  br i1 %i.cb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = load i64, ptr %i.aq, align 8, !tbaa !14
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.y, align 8, !tbaa !71
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #25
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cf, ptr %2, align 8, !tbaa !71
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %2, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %lpad.loopexit, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ba, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri12query_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 120
  %.val1 = load ptr, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.sroa.3.0.i.i = select i1 %i.d, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.d, i64 0, i64 %i.g ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !7, !alias.scope !75
  %i.i = icmp ugt i64 %.sroa.0.0.i.i, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %.sroa.0.0.i.i, 0
  br i1 %i.j, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.0.0.i.i, 1            ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !17

.noexc9.i.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #23 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !16, !alias.scope !75
  store i64 %.sroa.0.0.i.i, ptr %i.h, align 8, !tbaa !14, !alias.scope !75
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.a
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  switch i64 %.sroa.0.0.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = load i8, ptr %.sroa.3.0.i.i, align 1, !tbaa !14, !noalias !75
  store i8 %i.o, ptr %i.n, align 1, !tbaa !14
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.sroa.3.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.p, align 8, !tbaa !11, !alias.scope !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i.i
  store i8 0, ptr %i.q, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri11query_itemsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::vector.13", align 16   ; 17 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %_ZNSt10unique_ptrI19UriQueryListStructAPFvPS0_EED2Ev.exit28

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = invoke i32 @uriDissectQueryMallocA(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef %i.h)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.j = load ptr, ptr %1, align 8, !tbaa !40, !noalias !79 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !42, !noalias !79 ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 120
  %.val1.i = load ptr, ptr %i.l, align 8, !noalias !79
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.m = icmp eq ptr %.val.i, null                ; 2 uses
  %i.n = ptrtoint ptr %.val1.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %.sroa.3.0.i.i.i = select i1 %i.m, ptr @.str.2, ptr %.val.i ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.m, i64 0, i64 %i.p ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !7, !alias.scope !85
  %i.r = icmp ugt i64 %.sroa.0.0.i.i.i, 15
  br i1 %i.r, label %bb.f, label %._crit_edge.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp slt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %bb.g

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i64 %.sroa.0.0.i.i.i, 1          ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc9.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !17

.noexc9.i.i.i.i.i:                                ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc13 unwind label %bb.p

.noexc13:                                         ; preds = %.noexc9.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #23
          to label %.noexc14 unwind label %bb.p   ; 2 uses

.noexc14:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.v, ptr %5, align 8, !tbaa !16, !alias.scope !85
  store i64 %.sroa.0.0.i.i.i, ptr %i.q, align 8, !tbaa !14, !alias.scope !85
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc14, %bb.e
  %i.w = phi ptr [ %i.v, %.noexc14 ], [ %i.q, %bb.e ] ; 3 uses
  switch i64 %.sroa.0.0.i.i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = load i8, ptr %.sroa.3.0.i.i.i, align 1, !tbaa !14, !noalias !82
  store i8 %i.x, ptr %i.w, align 1, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %.sroa.3.0.i.i.i, i64 %.sroa.0.0.i.i.i, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_0
begin_hunk_1_@_ZN5arrow4util3Uri5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.cj = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 224 ; 2 uses
  %.0.val = load ptr, ptr %.058, align 8, !tbaa !42 ; 3 uses
  %i.cl = getelementptr i8, ptr %.058, i64 8
  %.0.val23 = load ptr, ptr %i.cl, align 8
  %i.cm = icmp eq ptr %.0.val, null               ; 2 uses
  %i.cn = ptrtoint ptr %.0.val23 to i64
  %i.co = ptrtoint ptr %.0.val to i64
  %i.cp = sub i64 %i.cn, %i.co
  %.sroa.3.0.i33 = select i1 %i.cm, ptr @.str.2, ptr %.0.val ; 2 uses
  %.sroa.0.0.i34 = select i1 %i.cm, i64 0, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 232 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !127 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 240 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !144
  %.not.i.i = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i64 %.sroa.0.0.i34, ptr %i.cr, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %.sroa.3.0.i33, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !127
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %.lr.ph
  %i.cv = load ptr, ptr %i.ck, align 8, !tbaa !126 ; 5 uses
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775792
  br i1 %i.cz, label %bb.o, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #22
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.da = ashr exact i64 %i.cy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 576460752303423487)
  %i.de = select i1 %i.dc, i64 576460752303423487, i64 %i.dd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.df = shl nuw nsw i64 %i.de, 4
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #23 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store i64 %.sroa.0.0.i34, ptr %i.dh, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %.sroa.3.0.i33, ptr %.sroa.5.0..sroa_idx50, align 8, !tbaa !54
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cr
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i ], [ %i.dg, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i ], [ %i.cv, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !145, !alias.scope !146
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !150

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #24
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.dg, ptr %i.ck, align 8, !tbaa !126
  store ptr %i.dk, ptr %i.cq, align 8, !tbaa !127
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dl, ptr %i.cs, align 8, !tbaa !144
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.m, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %.0 = load ptr, ptr %i.dm, align 8, !tbaa !143  ; 2 uses
  %.not19 = icmp eq ptr %.0, null
  br i1 %.not19, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !151

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.dn = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bh, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ] ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 249 ; 2 uses
  store i8 0, ptr %i.do, align 1, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 144
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !152
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %.val.i = load ptr, ptr %i.ds, align 8, !tbaa !42
  %.not = icmp eq ptr %.val.i, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 224
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 232
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !127
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !126
  %.not20 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not20, label %bb.s, label %.sink.split

.sink.split:                                      ; preds = %bb.r, %._crit_edge
  store i8 1, ptr %i.do, align 1, !tbaa !52
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.q, %bb.r
  %.not89 = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ false, %.sink.split ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 248
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !46, !range !47, !noundef !48
  %i.dz = trunc nuw i8 %i.dy to i1
  %brmerge.not = and i1 %.not89, %i.dz
  br i1 %brmerge.not, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !153
  call void @_ZN5arrow8internal12JoinToStringIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.5), !noalias !153
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ea = load ptr, ptr %5, align 8, !tbaa !16, !noalias !153 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZN5arrow6Status7InvalidIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40: ; preds = %bb.u
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !14, !noalias !153
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #24
  br label %_ZN5arrow6Status7InvalidIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit

bb.v:                                             ; preds = %bb.t
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %5, align 8, !tbaa !16, !noalias !153 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i37: ; preds = %bb.v
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !14, !noalias !153
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !153
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !153
  br label %bb.af

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  %.val = load ptr, ptr %i.el, align 8, !tbaa !42 ; 3 uses
  %i.em = getelementptr i8, ptr %i.dn, i64 88
  %.val22 = load ptr, ptr %i.em, align 8
  %i.en = icmp eq ptr %.val, null                 ; 2 uses
  %i.eo = ptrtoint ptr %.val22 to i64
  %i.ep = ptrtoint ptr %.val to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %.sroa.3.0.i42 = select i1 %i.en, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i43 = select i1 %i.en, i64 0, i64 %i.eq ; 3 uses
  store i64 %.sroa.0.0.i43, ptr %9, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.3.0.i42, ptr %i.er, align 8
  %.not21 = icmp eq i64 %.sroa.0.0.i43, 0
  br i1 %.not21, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.es = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.y, label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !158

bb.y:                                             ; preds = %bb.x
  %i.eu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #25
  %.not.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 88) ({ [13 x ptr] }, ptr @_ZTVN5arrow10UInt16TypeE, i32 0, i32 0, i32 2), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !71
  %i.ev = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #25
  br label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ew = call noundef zeroext i1 @_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt16TypeEE7ConvertERKS2_PKcmPt(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef nonnull %.sroa.3.0.i42, i64 noundef %.sroa.0.0.i43, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %i.ew, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !175
  call void @_ZN5arrow8internal12JoinToStringIJRA22_KcRSt17basic_string_viewIcSt11char_traitsIcEERA11_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEERA2_S2_EEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(11) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.5), !noalias !175
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ex = load ptr, ptr %3, align 8, !tbaa !16, !noalias !175 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46: ; preds = %bb.ab
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !14, !noalias !175
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47

bb.ac:                                            ; preds = %bb.aa
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %3, align 8, !tbaa !16, !noalias !175 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.ac
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !14, !noalias !175
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !175
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.fi = load i16, ptr %i.c, align 2, !tbaa !180
  %i.fj = zext i16 %i.fi to i32
  %i.fk = load ptr, ptr %1, align 8, !tbaa !40
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 216
  store i32 %i.fj, ptr %i.fl, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ae

bb.ad:                                            ; preds = %.thread, %bb.w
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !182
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6Status7InvalidIJRA24_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, %bb.ae, %_ZN5arrow6Status7InvalidIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util3Uri4Impl10KeepStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(250) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !7
  %i.f = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !17

.noexc6.i.i.i:                                    ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #23 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !16
  store i64 %i.h, ptr %i.e, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !14
  store i8 %i.o, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1, !tbaa !14
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !124
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !186
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.g
  %i.u = phi ptr [ %i.s, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i ], [ %.pre, %bb.g ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  ret ptr %i.v
}

declare i32 @uriParseSingleUriExA(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util3Uri10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::util::Uri", align 8  ; 8 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN5arrow4util3UriC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN5arrow4util3Uri5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !91     ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit11, label %bb.b, !prof !94

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_4util3UriEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.c = load ptr, ptr %3, align 8, !tbaa !91     ; 2 uses
  %.not.i6 = icmp eq ptr %i.c, null
  br i1 %.not.i6, label %_ZN5arrow6StatusD2Ev.exit7, label %bb.c, !prof !94

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !95, !range !47, !noundef !48
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZN5arrow6StatusD2Ev.exit7

_ZN5arrow6StatusD2Ev.exit7:                       ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN5arrow6ResultINS_4util3UriEEC2EOS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
end_hunk_1
