Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/matches_relation_factory?download=true
inline.NumInlined: 7984
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE17transform_primaryB5cxx11EPKwS4_:bb.a
  %.0.lcssa130 = phi i64 [ %.069, %._crit_edge ], [ 0, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40 ], [ %i.ds, %bb.ad ] ; 3 uses
  store i64 %.0.lcssa130, ptr %i.b, align 8, !tbaa !386
  %i.ec = load ptr, ptr %0, align 8, !tbaa !389
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.0.lcssa130
  store i32 0, ptr %i.ed, align 4, !tbaa !388
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac, %bb.t, %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.ba, %bb.j ], [ %i.az, %bb.i ], [ %i.cn, %bb.t ], [ %i.ee, %bb.af ], [ %i.dz, %bb.ac ]
  %.015 = extractvalue { ptr, i32 } %.pn, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %.015) #27 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %thread-pre-split unwind label %bb.aj

thread-pre-split:                                 ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %.pr.pr = load i64, ptr %i.b, align 8, !tbaa !386
  br label %bb.ah

bb.ah:                                            ; preds = %thread-pre-split, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit42, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit
  %.pr = phi i64 [ %.pr.pr, %thread-pre-split ], [ %.0.lcssa130, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit42 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit ] ; 2 uses
  %i.eg = icmp eq i64 %.pr, 0
  br i1 %i.eg, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.ah
  %i.eh = load ptr, ptr %0, align 8, !tbaa !389, !noalias !1527 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph75, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit44
  %i.ei = phi i64 [ %.pr, %.lr.ph75 ], [ %i.en, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit44 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !388
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit44, label %.critedge

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit44: ; preds = %bb.ai
  %i.en = add i64 %i.ei, -1                       ; 4 uses
  store i64 %i.en, ptr %i.b, align 8, !tbaa !386
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.en
  store i32 0, ptr %i.eo, align 4, !tbaa !388
  %i.ep = icmp eq i64 %i.en, 0
  br i1 %i.ep, label %._crit_edge76, label %bb.ai

bb.aj:                                            ; preds = %bb.ag
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge76:                                    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE5eraseEmm.exit44, %bb.a, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.er, ptr %7, align 8, !tbaa !384
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_M_constructEmw(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, i32 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit unwind label %bb.ap

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit: ; preds = %._crit_edge76
  %i.es = load ptr, ptr %0, align 8, !tbaa !389   ; 8 uses
  %i.et = icmp eq ptr %i.es, %i.a
  %i.eu = load ptr, ptr %7, align 8, !tbaa !389   ; 8 uses
  %i.ev = icmp eq ptr %i.eu, %i.er                ; 2 uses
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i55, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i46

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i55: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit
  br i1 %i.ev, label %bb.ak, label %.thread.i56

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i46: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit
  br i1 %i.ev, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i47

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i46, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i55
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !386 ; 4 uses
  %i.ey = icmp ult i64 %i.ex, 4
  call void @llvm.assume(i1 %i.ey)
  %.not21.i49 = icmp eq ptr %7, %0
  br i1 %.not21.i49, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit57, label %bb.al, !prof !103

bb.al:                                            ; preds = %bb.ak
  switch i64 %i.ex, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i50
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.ez = load i32, ptr %i.eu, align 4, !tbaa !388
  store i32 %i.ez, ptr %i.es, align 4, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i50

bb.an:                                            ; preds = %bb.al
  %i.fa = call ptr @wmemcpy(ptr noundef %i.es, ptr noundef %i.eu, i64 noundef %i.ex) #27 ; 0 uses
  %.pre.i52 = load i64, ptr %i.ew, align 8, !tbaa !386
  %.pre30.i53 = load ptr, ptr %0, align 8, !tbaa !389
  %.pre31.pre.i54 = load ptr, ptr %7, align 8, !tbaa !389
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i50

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i50: ; preds = %bb.an, %bb.am, %bb.al
  %.pre31.i51 = phi ptr [ %i.eu, %bb.al ], [ %.pre31.pre.i54, %bb.an ], [ %i.eu, %bb.am ]
  %i.fb = phi ptr [ %i.es, %bb.al ], [ %.pre30.i53, %bb.an ], [ %i.es, %bb.am ]
  %i.fc = phi i64 [ %i.ex, %bb.al ], [ %.pre.i52, %bb.an ], [ 1, %bb.am ] ; 2 uses
  store i64 %i.fc, ptr %i.b, align 8, !tbaa !386
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  store i32 0, ptr %i.fd, align 4, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit57

.thread.i56:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i55
  store ptr %i.eu, ptr %0, align 8, !tbaa !389
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ff = load <2 x i64>, ptr %i.fe, align 8, !tbaa !84
  store <2 x i64> %i.ff, ptr %i.b, align 8, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i46
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !84
  store ptr %i.eu, ptr %0, align 8, !tbaa !389
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fi = load <2 x i64>, ptr %i.fh, align 8, !tbaa !84
  store <2 x i64> %i.fi, ptr %i.b, align 8, !tbaa !84
  %.not.i48 = icmp eq ptr %i.es, null
  br i1 %.not.i48, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i47
  store ptr %i.es, ptr %7, align 8, !tbaa !389
  store i64 %i.fg, ptr %i.er, align 8, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit57

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit57: ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i50, %bb.ao
  %i.fj = phi ptr [ %.pre31.i51, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i50 ], [ %i.es, %bb.ao ], [ %i.eu, %bb.ak ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.fk, align 8, !tbaa !386
  store i32 0, ptr %i.fj, align 4, !tbaa !388
  %i.fl = icmp eq ptr %i.fj, %i.er
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit57
  %i.fm = load i64, ptr %i.er, align 8, !tbaa !84
  %i.fn = shl i64 %i.fm, 2
  %i.fo = add i64 %i.fn, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i47, %.thread.i56, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit57, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.critedge

bb.ap:                                            ; preds = %._crit_edge76
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.aq

.critedge:                                        ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60
  ret void

bb.aq:                                            ; preds = %bb.ap, %bb.aj
  %.pn16 = phi { ptr, i32 } [ %i.fp, %bb.ap ], [ %i.eq, %bb.aj ]
  %i.fq = load ptr, ptr %0, align 8, !tbaa !389   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.a
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i61: ; preds = %bb.aq
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !84
  %i.ft = shl i64 %i.fs, 2
  %i.fu = add i64 %i.ft, 4
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i61
  resume { ptr, i32 } %.pn16
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182
  tail call void @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1528

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE18lookup_collatenameB5cxx11EPKwS4_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoaddr ptr %3 to i64
  %5 = ptrtoaddr ptr %2 to i64
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load i64, ptr %i.e, align 8, !tbaa !175
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.pre51 = ptrtoint ptr %3 to i64
  %.pre52 = ptrtoint ptr %2 to i64
  %.pre54 = sub i64 %.pre51, %.pre52              ; 2 uses
  %.pre56 = ashr exact i64 %.pre54, 2
  br label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !384
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.j = ptrtoint ptr %3 to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 6 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !81
  %i.n = icmp ugt i64 %i.m, 3
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !389
  %i.p = load i64, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  store i64 %i.p, ptr %i.h, align 8, !tbaa !84
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.q = phi i64 [ %i.p, %.noexc.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.o, %.noexc.i ], [ %i.h, %bb.b ] ; 4 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = load i32, ptr %2, align 4, !tbaa !388
  store i32 %i.s, ptr %i.r, align 4, !tbaa !388
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = call ptr @wmemcpy(ptr noundef %i.r, ptr noundef %2, i64 noundef %i.m) #27 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.d, align 8, !tbaa !81
  %.pre7.i.i = load ptr, ptr %6, align 8, !tbaa !389
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.u = phi ptr [ %i.r, %._crit_edge.i.i ], [ %i.r, %bb.c ], [ %.pre7.i.i, %bb.d ]
  %i.v = phi i64 [ %i.q, %._crit_edge.i.i ], [ %i.q, %bb.c ], [ %.pre6.i.i, %bb.d ] ; 7 uses
  store i64 %i.v, ptr %i.i, align 8, !tbaa !386
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !172  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.y, null
  %.pre = load ptr, ptr %6, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i ], [ %i.y, %bb.e ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i ], [ %i.z, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !386 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.ab) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !389
  %i.af = call i32 @wmemcmp(ptr noundef %i.ae, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ag = sub i64 %i.ab, %i.v
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ah, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ah, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1529

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i, %i.z
  br i1 %i.ai, label %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !386 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.v) ; 2 uses
  %i.al = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.al, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !389
  %i.ao = call i32 @wmemcmp(ptr noundef %.pre, ptr noundef %i.an, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i, %bb.f
  %i.ap = sub i64 %i.v, %i.ak
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ap, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ao, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i ]
  %i.aq = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.aq, ptr %i.z, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.z, %bb.e ], [ %i.z, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i ] ; 3 uses
  %i.ar = icmp eq ptr %.pre, %i.h
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.as = icmp ult i64 %i.v, 4
  call void @llvm.assume(i1 %i.as)
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.at = load i64, ptr %i.h, align 8, !tbaa !84
  %i.au = shl i64 %i.at, 2
  %i.av = add i64 %i.au, 4
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.av) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.z
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !384
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !389 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !386 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.ba, ptr %i.c, align 8, !tbaa !81
  %i.bb = icmp ugt i64 %i.ba, 3
  br i1 %i.bb, label %.noexc.i24, label %._crit_edge.i.i21

.noexc.i24:                                       ; preds = %bb.g
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !389
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !81  ; 2 uses
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !84
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %.noexc.i24, %bb.g
  %i.be = phi i64 [ %i.bd, %.noexc.i24 ], [ %i.ba, %bb.g ] ; 2 uses
  %i.bf = phi ptr [ %i.bc, %.noexc.i24 ], [ %i.ax, %bb.g ] ; 4 uses
  switch i64 %i.ba, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i21
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !388
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !388
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i21
  %i.bh = call ptr @wmemcpy(ptr noundef %i.bf, ptr noundef %i.ay, i64 noundef %i.ba) #27 ; 0 uses
  %.pre6.i.i22 = load i64, ptr %i.c, align 8, !tbaa !81
  %.pre7.i.i23 = load ptr, ptr %0, align 8, !tbaa !389
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i21
  %i.bi = phi ptr [ %i.bf, %._crit_edge.i.i21 ], [ %i.bf, %bb.h ], [ %.pre7.i.i23, %bb.i ]
  %i.bj = phi i64 [ %i.be, %._crit_edge.i.i21 ], [ %i.be, %bb.h ], [ %.pre6.i.i22, %bb.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !386
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj
  store i32 0, ptr %i.bl, align 4, !tbaa !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.z

.thread:                                          ; preds = %..thread_crit_edge, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %.pre-phi57 = phi i64 [ %.pre56, %..thread_crit_edge ], [ %i.m, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ] ; 3 uses
  %.pre-phi55 = phi i64 [ %.pre54, %..thread_crit_edge ], [ %i.l, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.bm, ptr %7, align 8, !tbaa !79
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.pre-phi57, ptr %i.b, align 8, !tbaa !81
  %i.bo = icmp ugt i64 %.pre-phi57, 15
  br i1 %i.bo, label %.noexc.i31, label %._crit_edge.i.i28

.noexc.i31:                                       ; preds = %.thread
  %i.bp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bp, ptr %7, align 8, !tbaa !83
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !84
  br label %._crit_edge.i.i28

._crit_edge.i.i28:                                ; preds = %.noexc.i31, %.thread
  %i.br = phi i64 [ %i.bq, %.noexc.i31 ], [ %.pre-phi57, %.thread ]
  %i.bs = phi ptr [ %i.bp, %.noexc.i31 ], [ %i.bm, %.thread ] ; 7 uses
  %.not7.i.i.i = icmp eq ptr %2, %3
  br i1 %.not7.i.i.i, label %bb.k, label %.lr.ph.i.i.i29.preheader

.lr.ph.i.i.i29.preheader:                         ; preds = %._crit_edge.i.i28
  %i.bt = add i64 %4, -4
  %i.bu = sub i64 %i.bt, %5                       ; 4 uses
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bu, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i29.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i29.preheader
  %i.bx = lshr i64 %i.bu, 2
  %i.by = getelementptr i8, ptr %i.bs, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 1
  %i.ca = and i64 %i.bu, -4
  %i.cb = getelementptr i8, ptr %2, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %bound0 = icmp ult ptr %i.bs, %i.cc
  %bound1 = icmp ult ptr %2, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i29.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bw, 9223372036854775800     ; 4 uses
  %i.cd = getelementptr i8, ptr %i.bs, i64 %n.vec
  %i.ce = shl i64 %n.vec, 2
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %index ; 2 uses
  %i.cg = shl i64 %index, 2
  %next.gep81 = getelementptr i8, ptr %2, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !388, !alias.scope !1541
  %wide.load82 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !388, !alias.scope !1541
  %i.ci = trunc <4 x i32> %wide.load to <4 x i8>
  %i.cj = trunc <4 x i32> %wide.load82 to <4 x i8>
  %i.ck = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.ci, ptr %next.gep, align 1, !tbaa !84, !alias.scope !1542, !noalias !1541
  store <4 x i8> %i.cj, ptr %i.ck, align 1, !tbaa !84, !alias.scope !1542, !noalias !1541
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1533

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i29.preheader107

.lr.ph.i.i.i29.preheader107:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i29.preheader, %middle.block
  %.09.i.i.i.ph = phi ptr [ %i.bs, %vector.memcheck ], [ %i.bs, %.lr.ph.i.i.i29.preheader ], [ %i.cd, %middle.block ]
  %.068.i.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i29.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.lr.ph.i.i.i29.preheader107, %.lr.ph.i.i.i29
  %.09.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i29 ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i29.preheader107 ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i29 ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i29.preheader107 ] ; 2 uses
  %i.cm = load i32, ptr %.068.i.i.i, align 4, !tbaa !388
  %i.cn = trunc i32 %i.cm to i8
  store i8 %i.cn, ptr %.09.i.i.i, align 1, !tbaa !84
  %i.co = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i30 = icmp eq ptr %i.co, %3
  br i1 %.not.i.i.i30, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i29, !llvm.loop !1534

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i29, %middle.block
  %.pre12.i.i = load i64, ptr %i.b, align 8, !tbaa !81
  %.pre13.i.i = load ptr, ptr %7, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i28
  %i.cq = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.bs, %._crit_edge.i.i28 ]
  %i.cr = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.br, %._crit_edge.i.i28 ] ; 2 uses
  store i64 %i.cr, ptr %i.bn, align 8, !tbaa !85
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  store i8 0, ptr %i.cs, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %7, align 8, !tbaa !83    ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.bm
  %i.cv = load ptr, ptr %8, align 8, !tbaa !83    ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw                ; 2 uses
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.l
  br i1 %i.cx, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.l
  br i1 %i.cx, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !85 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  switch i64 %i.cz, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !84
  store i8 %i.db, ptr %i.ct, align 1, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cv, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dc = load i64, ptr %i.cy, align 8, !tbaa !85 ; 2 uses
  store i64 %i.dc, ptr %i.bn, align 8, !tbaa !85
  %i.dd = load ptr, ptr %7, align 8, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store i8 0, ptr %i.de, align 1, !tbaa !84
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cv, ptr %7, align 8, !tbaa !83
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dg = load <2 x i64>, ptr %i.df, align 8, !tbaa !84
  store <2 x i64> %i.dg, ptr %i.bn, align 8, !tbaa !84
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dh = load i64, ptr %i.bm, align 8, !tbaa !84
  store ptr %i.cv, ptr %7, align 8, !tbaa !83
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dj = load <2 x i64>, ptr %i.di, align 8, !tbaa !84
  store <2 x i64> %i.dj, ptr %i.bn, align 8, !tbaa !84
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ct, ptr %8, align 8, !tbaa !83
  store i64 %i.dh, ptr %i.cw, align 8, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cw, ptr %8, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.p, %bb.q
  %i.dk = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ct, %bb.p ], [ %i.cw, %bb.q ]
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !85
  store i8 0, ptr %i.dk, align 1, !tbaa !84
  %i.dm = load ptr, ptr %8, align 8, !tbaa !83    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !84
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.dr = load i64, ptr %i.bn, align 8, !tbaa !85 ; 10 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dt = load ptr, ptr %7, align 8, !tbaa !83    ; 7 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.dt, i64 %i.dr  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dw, ptr %0, align 8, !tbaa !384
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.dx, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !81
  %i.dy = icmp ugt i64 %i.dr, 3
  br i1 %i.dy, label %.noexc.i36, label %._crit_edge.i.i33

.noexc.i36:                                       ; preds = %bb.r
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc37 unwind label %bb.t   ; 2 uses

.noexc37:                                         ; preds = %.noexc.i36
  store ptr %i.dz, ptr %0, align 8, !tbaa !389
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  store i64 %i.ea, ptr %i.dw, align 8, !tbaa !84
  br label %._crit_edge.i.i33

._crit_edge.i.i33:                                ; preds = %.noexc37, %bb.r
  %i.eb = phi i64 [ %i.ea, %.noexc37 ], [ %i.dr, %bb.r ] ; 2 uses
  %i.ec = phi ptr [ %i.dz, %.noexc37 ], [ %i.dw, %bb.r ] ; 7 uses
  %min.iters.check89 = icmp ult i64 %i.dr, 16
  br i1 %min.iters.check89, label %.lr.ph.i.i.i34.preheader, label %vector.memcheck90

vector.memcheck90:                                ; preds = %._crit_edge.i.i33
  %i.ed = shl i64 %i.dr, 2
  %i.ee = getelementptr i8, ptr %i.ec, i64 %i.ed
  %bound091 = icmp ult ptr %i.ec, %i.dv
  %bound192 = icmp ult ptr %i.dt, %i.ee
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %.lr.ph.i.i.i34.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck90
  %n.vec95 = and i64 %i.dr, -8                    ; 4 uses
  %i.ef = shl i64 %n.vec95, 2
  %i.eg = getelementptr i8, ptr %i.ec, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.dt, i64 %n.vec95
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body96 ] ; 3 uses
  %i.ei = shl i64 %index97, 2
  %next.gep98 = getelementptr i8, ptr %i.ec, i64 %i.ei ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.dt, i64 %index97 ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep99, i64 4
  %wide.load100 = load <4 x i8>, ptr %next.gep99, align 1, !tbaa !84, !alias.scope !1543
  %wide.load101 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !84, !alias.scope !1543
  %i.ek = sext <4 x i8> %wide.load100 to <4 x i32>
  %i.el = sext <4 x i8> %wide.load101 to <4 x i32>
  %i.em = getelementptr i8, ptr %next.gep98, i64 16
  store <4 x i32> %i.ek, ptr %next.gep98, align 4, !tbaa !388, !alias.scope !1544, !noalias !1543
  store <4 x i32> %i.el, ptr %i.em, align 4, !tbaa !388, !alias.scope !1544, !noalias !1543
  %index.next102 = add nuw i64 %index97, 8        ; 2 uses
  %i.en = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.en, label %middle.block103, label %vector.body96, !llvm.loop !1538

middle.block103:                                  ; preds = %vector.body96
  %cmp.n104 = icmp eq i64 %i.dr, %n.vec95
  br i1 %cmp.n104, label %.loopexit, label %.lr.ph.i.i.i34.preheader

.lr.ph.i.i.i34.preheader:                         ; preds = %vector.memcheck90, %._crit_edge.i.i33, %middle.block103
  %.07.i.i.i.ph = phi ptr [ %i.ec, %vector.memcheck90 ], [ %i.ec, %._crit_edge.i.i33 ], [ %i.eg, %middle.block103 ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.dt, %vector.memcheck90 ], [ %i.dt, %._crit_edge.i.i33 ], [ %i.eh, %middle.block103 ] ; 3 uses
  %i.eo = add i64 %i.dr, %i.du                    ; 2 uses
  %.sroa.02.06.i.i.i.ph108 = ptrtoaddr ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.ep = sub i64 %i.eo, %.sroa.02.06.i.i.i.ph108
  %xtraiter = and i64 %i.ep, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i34.prol.loopexit, label %.lr.ph.i.i.i34.prol

.lr.ph.i.i.i34.prol:                              ; preds = %.lr.ph.i.i.i34.preheader, %.lr.ph.i.i.i34.prol
  %.07.i.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i.i34.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i34.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.es, %.lr.ph.i.i.i34.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i34.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i34.prol ], [ 0, %.lr.ph.i.i.i34.preheader ]
  %i.eq = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1, !tbaa !84
  %i.er = sext i8 %i.eq to i32
  store i32 %i.er, ptr %.07.i.i.i.prol, align 4, !tbaa !388
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i34.prol.loopexit, label %.lr.ph.i.i.i34.prol, !llvm.loop !1539

.lr.ph.i.i.i34.prol.loopexit:                     ; preds = %.lr.ph.i.i.i34.prol, %.lr.ph.i.i.i34.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i34.preheader ], [ %i.et, %.lr.ph.i.i.i34.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i34.preheader ], [ %i.es, %.lr.ph.i.i.i34.prol ]
  %i.eu = sub i64 %.sroa.02.06.i.i.i.ph108, %i.eo
  %i.ev = icmp ugt i64 %i.eu, -8
  br i1 %i.ev, label %.loopexit, label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %.lr.ph.i.i.i34.prol.loopexit, %.lr.ph.i.i.i34
  %.07.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i34 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i34.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.ga, %.lr.ph.i.i.i34 ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i34.prol.loopexit ] ; 9 uses
  %i.ew = load i8, ptr %.sroa.02.06.i.i.i, align 1, !tbaa !84
  %i.ex = sext i8 %i.ew to i32
  store i32 %i.ex, ptr %.07.i.i.i, align 4, !tbaa !388
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !84
  %i.fb = sext i8 %i.fa to i32
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !388
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.fd = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  %i.fe = load i8, ptr %i.fc, align 1, !tbaa !84
  %i.ff = sext i8 %i.fe to i32
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !388
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.fh = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 12
  %i.fi = load i8, ptr %i.fg, align 1, !tbaa !84
  %i.fj = sext i8 %i.fi to i32
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !388
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 16
  %i.fm = load i8, ptr %i.fk, align 1, !tbaa !84
  %i.fn = sext i8 %i.fm to i32
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !388
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.fp = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 20
  %i.fq = load i8, ptr %i.fo, align 1, !tbaa !84
  %i.fr = sext i8 %i.fq to i32
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !388
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.ft = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 24
  %i.fu = load i8, ptr %i.fs, align 1, !tbaa !84
  %i.fv = sext i8 %i.fu to i32
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !388
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.fx = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 28
  %i.fy = load i8, ptr %i.fw, align 1, !tbaa !84
  %i.fz = sext i8 %i.fy to i32
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !388
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  %.not.i.i.i35.7 = icmp eq ptr %i.ga, %i.dv
  br i1 %.not.i.i.i35.7, label %.loopexit, label %.lr.ph.i.i.i34, !llvm.loop !1540

.loopexit:                                        ; preds = %.lr.ph.i.i.i34.prol.loopexit, %.lr.ph.i.i.i34, %middle.block103
  store i64 %i.eb, ptr %i.dx, align 8, !tbaa !386
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.eb
  store i32 0, ptr %i.gc, align 4, !tbaa !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit

bb.s:                                             ; preds = %bb.k
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.y

bb.t:                                             ; preds = %.noexc.i36
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gf = icmp eq i64 %.pre-phi55, 4
  br i1 %i.gf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gg = load i32, ptr %2, align 4, !tbaa !388
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gh, ptr %0, align 8, !tbaa !384
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_M_constructEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i32 noundef signext %i.gg)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.gj, ptr %0, align 8, !tbaa !384
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.gk, align 8, !tbaa !386
  store i32 0, ptr %i.gj, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit: ; preds = %bb.v, %bb.x, %.loopexit
  %i.gl = load ptr, ptr %7, align 8, !tbaa !83    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.bm
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit
  %i.gn = load i64, ptr %i.bm, align 8, !tbaa !84
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEmwRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.t, %bb.s
  %.pn17 = phi { ptr, i32 } [ %i.gi, %bb.w ], [ %i.ge, %bb.t ], [ %i.gd, %bb.s ]
  %i.gp = load ptr, ptr %7, align 8, !tbaa !83    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.bm
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.y
  %i.gr = load i64, ptr %i.bm, align 8, !tbaa !84
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn17

bb.z:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef signext %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = and i32 %2, 32518                        ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !414
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !409  ; 2 uses
  %i.e = trunc nuw nsw i32 %i.a to i16
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.d, i16 noundef zeroext %i.e, i32 noundef signext %1), !inline_history !1545
  br i1 %i.i, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = and i32 %2, 67108864
  %.not21 = icmp ne i32 %i.j, 0
  %i.k = icmp ugt i32 %1, 255
  %or.cond33 = and i1 %i.k, %.not21
  br i1 %or.cond33, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %2, 33554432
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp eq i32 %1, 95
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %2, 16777216
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !414
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !409  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.r, i16 noundef zeroext 8192, i32 noundef signext %1), !inline_history !1545
  br i1 %i.v, label %bb.g, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread

bb.g:                                             ; preds = %bb.f
  switch i32 %1, label %bb.h [
    i32 13, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread
    i32 12, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread
    i32 10, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread
  ]

bb.h:                                             ; preds = %bb.g
  %trunc.i = trunc i32 %1 to i16
  switch i16 %trunc.i, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit [
    i16 8232, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread
    i16 8233, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread
    i16 133, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread
  ]

_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread: ; preds = %bb.g, %bb.g, %bb.g, %bb.h, %bb.h, %bb.h, %bb.f, %bb.e
  %i.w = and i32 %2, 268435456
  %.not23 = icmp eq i32 %i.w, 0
  br i1 %.not23, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread
  switch i32 %1, label %bb.j [
    i32 13, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit
    i32 12, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit
    i32 10, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit
  ]

bb.j:                                             ; preds = %bb.i
  %trunc.i25 = trunc i32 %1 to i16
  switch i16 %trunc.i25, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26 [
    i16 8232, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit
    i16 8233, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit
    i16 133, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit
  ]

_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26: ; preds = %bb.j
  %i.x = icmp eq i32 %1, 11
  br i1 %i.x, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26, %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit.thread
  %i.y = and i32 %2, 134217728
  %.not24 = icmp eq i32 %i.y, 0
  br i1 %.not24, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %0, align 8, !tbaa !414
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !409 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i16 noundef zeroext 8192, i32 noundef signext %1), !inline_history !1546
  br i1 %i.af, label %bb.m, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit

bb.m:                                             ; preds = %bb.l
  switch i32 %1, label %bb.n [
    i32 13, label %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread
    i32 12, label %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread
    i32 10, label %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread
  ]

bb.n:                                             ; preds = %bb.m
  %trunc.i25.i = trunc i32 %1 to i16
  switch i16 %trunc.i25.i, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26.i [
    i16 8232, label %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread
    i16 8233, label %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread
    i16 133, label %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread
  ]

_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26.i: ; preds = %bb.n
  %i.ag = icmp eq i32 %1, 11
  br i1 %i.ag, label %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread, label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit

_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread: ; preds = %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26.i, %bb.n, %bb.n, %bb.n, %bb.m, %bb.m, %bb.m
  br label %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit

_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit: ; preds = %bb.c, %bb.i, %bb.i, %bb.i, %bb.j, %bb.j, %bb.j, %bb.k, %bb.l, %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread, %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26.i, %bb.h, %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.d ], [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.k ], [ true, %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26.i ], [ true, %_ZN5boost13re_detail_60012is_separatorIwEEbT_.exit26 ], [ true, %bb.h ], [ false, %_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj.exit28.thread ], [ false, %bb.l ], [ true, %bb.j ], [ true, %bb.j ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.i ], [ true, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE17parse_set_literalERNS0_14basic_char_setIwS5_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.boost::re_detail_600::digraph.335", align 4 ; 6 uses
  %5 = alloca %"struct.boost::re_detail_600::digraph.335", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE20get_next_set_literalERNS0_14basic_char_setIwS5_EE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::re_detail_600::digraph.335") align 4 %4, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !453  ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !452
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.l = load ptr, ptr %0, align 8, !tbaa !447
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !395
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !414, !noalias !1551
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %i.o, i32 noundef 7)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !84
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit

bb.d:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !84
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

end_hunk_0
