inline.NumInlined: 5334
inline.NumDeleted: 1210
begin_hunk_0_@_ZN2PP11PowerParser16list_wt_cmdsf_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
  %i.gx = getelementptr i8, ptr %i.gw, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr %i.ae, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 240
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i74 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i74, label %bb.ag, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75

bb.ag:                                            ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit32
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75: ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !161
  %.not.i1.i.i76 = icmp eq i8 %i.hd, 0
  br i1 %.not.i1.i.i76, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 67
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hb)
  %i.hg = load ptr, ptr %i.hb, align 8, !tbaa !132
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call noundef signext i8 %i.hi(ptr noundef nonnull align 8 dereferenceable(570) %i.hb, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78: ; preds = %bb.ah, %bb.ai
  %.0.i.i.i77 = phi i8 [ %i.hf, %bb.ah ], [ %i.hj, %bb.ai ]
  %i.hk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext %.0.i.i.i77)
  %i.hl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hk) ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !1570

bb.aj:                                            ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ai
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.aj
  %i.hp = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.hr = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.ag
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ht = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  resume { ptr, i32 } %i.hm

.loopexit:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit48
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser19list_wt_cmdsf_startEv(ptr noundef nonnull align 8 dereferenceable(2796) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !32
  store i8 0, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.a    ; 0 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !422
  %i.j = and i32 %i.i, 3
  %.not.i.i.i = icmp eq i32 %i.j, 0
  %i.k = load i64, ptr %i.d, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.k
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !27
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef %i.l, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.a

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc4
  %i.m = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.o = load i64, ptr %i.a, align 8, !tbaa !33
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1080
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @_ZN2PP11PowerParser16list_wt_cmdsf_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i32 0, ptr %i.r, align 8, !tbaa !587
  ret void

bb.a:                                             ; preds = %.noexc4, %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.a
  %i.v = load i64, ptr %i.a, align 8, !tbaa !33
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2PP11PowerParser15get_ssfout_lineERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !123, !alias.scope !1577
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !32, !alias.scope !1577
  store i8 0, ptr %i.a, align 8, !tbaa !33, !alias.scope !1577
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142, !noalias !1577 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1577 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143, !noalias !1577 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !27, !alias.scope !1577 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.a, align 8, !tbaa !33, !alias.scope !1577
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1176
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.v, ptr noundef nonnull @.str, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !32
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %i.z = load i32, ptr %i.t, align 8, !tbaa !4    ; 2 uses
  %.not.i = icmp slt i32 %i.z, %i.y               ; 2 uses
  %.pre13 = load ptr, ptr %2, align 8, !tbaa !27  ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit

.preheader.i:                                     ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = sext i32 %i.z to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.preheader.i
  %3 = phi ptr [ %.pre13, %.preheader.i ], [ %4, %bb.j ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.ab, %.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !33  ; 2 uses
  switch i8 %i.ad, label %bb.g [
    i8 10, label %bb.f
    i8 13, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = trunc nsw i64 %indvars.iv.i to i32
  %i.af = add nsw i32 %i.ae, 1
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !32  ; 4 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.aa                ; 2 uses
  br i1 %i.aj, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ak)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.al = load i64, ptr %i.aa, align 8
  %i.am = select i1 %i.aj, i64 15, i64 %i.al
  %i.an = icmp ugt i64 %i.ah, %i.am
  br i1 %i.an, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ag, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %bb.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %.noexc4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ao = phi ptr [ %.pre.i.i.i, %.noexc4 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store i8 %i.ad, ptr %i.ap, align 1, !tbaa !33
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !32
  %i.aq = load ptr, ptr %1, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ah
  store i8 0, ptr %i.ar, align 1, !tbaa !33
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %bb.e
  %4 = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ %3, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %lftr.wideiv.i, %i.y
  br i1 %exitcond.not.i, label %.sink.split.i, label %bb.e, !llvm.loop !437

.sink.split.i:                                    ; preds = %bb.j, %bb.f
  %5 = phi ptr [ %3, %bb.f ], [ %4, %bb.j ]
  %.sink.i = phi i32 [ %i.af, %bb.f ], [ %i.y, %bb.j ]
  store i32 %.sink.i, ptr %i.t, align 8, !tbaa !4
  br label %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.au = load i64, ptr %i.a, align 8, !tbaa !33
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit: ; preds = %.sink.split.i, %.noexc
  %6 = phi ptr [ %5, %.sink.split.i ], [ %.pre13, %.noexc ] ; 2 uses
  %i.aw = icmp eq ptr %6, %i.a
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !33
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %6, i64 noundef %i.ay) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i1 %.not.i
}

declare void @_ZN2PP4Comm9broadcastEPci(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser13chars_to_vstrEPcRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2796) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = sext i32 %4 to i64                       ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #31 ; 5 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = zext i32 %4 to i64
  %wide.trip.count83 = zext nneg i32 %3 to i64
  %i.k = icmp sgt i32 %4, 0
  %i.l = icmp sgt i32 %4, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv80 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv80 to i32   ; 2 uses
  %i.n = mul i32 %4, %i.m                         ; 3 uses
  %i.o = add i32 %4, %i.n
  %i.p = add i32 %i.n, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.p)
  %i.q = mul i32 %4, %i.m
  %i.r = xor i32 %i.q, -1
  %i.s = add i32 %smax, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1
  %i.v = sext i32 %i.n to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.u, i1 false), !tbaa !33
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.b
  br i1 %i.l, label %.lr.ph, label %split

bb.c:                                             ; preds = %.lr.ph
  %i.w = trunc nuw i64 %i.z to i32                ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %split, !llvm.loop !1578

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.y = phi i32 [ %i.w, %bb.c ], [ %4, %.preheader ]
  %indvars.iv73101 = phi i64 [ %i.z, %bb.c ], [ %i.j, %.preheader ] ; 2 uses
  %i.z = add nsw i64 %indvars.iv73101, -1         ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33
  %.not = icmp eq i8 %i.ab, 32
  br i1 %.not, label %bb.c, label %._crit_edge85, !llvm.loop !1578

._crit_edge85:                                    ; preds = %.lr.ph
  br label %split, !llvm.loop !1578

split:                                            ; preds = %bb.c, %.preheader, %._crit_edge85
  %.pre-phi = phi i64 [ %indvars.iv73101, %._crit_edge85 ], [ %i.c, %.preheader ], [ %i.c, %bb.c ] ; 2 uses
  %.040 = phi i32 [ %i.y, %._crit_edge85 ], [ %4, %.preheader ], [ %4, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.f, ptr %5, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !124
  %i.ac = icmp ugt i32 %.040, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %split
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !27
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %split
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.f, %split ] ; 2 uses
  switch i32 %.040, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.d, i64 %.pre-phi, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !32
  %i.ai = load ptr, ptr %5, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !32  ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph66, label %.thread

.lr.ph66:                                         ; preds = %bb.f
  %i.an = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %wide.trip.count = and i64 %i.ak, 2147483647
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph66, %bb.h
  %indvars.iv77 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next78, %bb.h ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv77
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !33
  %.not42 = icmp eq i8 %i.ap, 32
  br i1 %.not42, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.g, !llvm.loop !1579

bb.i:                                             ; preds = %bb.g
  %.not43 = icmp eq i64 %indvars.iv77, 0
  br i1 %.not43, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = and i64 %indvars.iv77, 4294967295       ; 2 uses
  %i.ar = icmp samesign eq i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.g, align 8, !tbaa !32
  store i8 0, ptr %i.an, align 1, !tbaa !33
  br label %.thread

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.aq)
          to label %.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.thread:                                          ; preds = %bb.h, %bb.f, %bb.l, %bb.k, %bb.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !323 ; 8 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !123
  %i.aw = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ax = load i64, ptr %i.g, align 8, !tbaa !32  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !124
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.r   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i.i
  store ptr %i.az, ptr %i.at, align 8, !tbaa !27
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc47, %bb.n
  %i.bb = phi ptr [ %i.az, %.noexc47 ], [ %i.av, %bb.n ] ; 2 uses
  switch i64 %i.ax, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !33
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.aw, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !124 ; 2 uses
end_hunk_0
