Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FactPointTo?download=true
inline.NumInlined: 915
inline.NumDeleted: 381
begin_hunk_0_@_ZNK11FactPointTo13is_assertableEPK9Statement:bb.a
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !102
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK11FactPointTo13has_invisibleEPK9Statement.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %i.az

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK8Variable10is_visibleEPK5Block.exit19.i, %bb.h, %.split.i, %bb.g, %bb.e, %bb.c, %bb.a
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !102
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %lpad.loopexit.split-lp15
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11FactPointTo26merge_pointees_of_pointersERKSt6vectorIPK8VariableSaIS3_EERKS0_IPK4FactSaISA_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.FactPointTo, align 8         ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %.not30 = icmp eq ptr %i.b, %i.c
  br i1 %.not30, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre33 = load ptr, ptr @_ZN11FactPointTo8null_ptrE, align 8, !tbaa !26
  %.pre35 = load ptr, ptr @_ZN11FactPointTo11garbage_ptrE, align 8
  %.pre37 = load ptr, ptr @_ZN11FactPointTo7tbd_ptrE, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph29, %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread
  %i.h = phi ptr [ %i.c, %.lr.ph29 ], [ %i.as, %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread ] ; 2 uses
  %i.i = phi ptr [ %i.b, %.lr.ph29 ], [ %i.at, %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread ]
  %i.j = phi ptr [ %.pre37, %.lr.ph29 ], [ %i.au, %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread ] ; 2 uses
  %i.k = phi ptr [ %.pre35, %.lr.ph29 ], [ %i.av, %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread ] ; 2 uses
  %i.l = phi ptr [ %.pre33, %.lr.ph29 ], [ %i.aw, %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread ] ; 2 uses
  %.02028 = phi i64 [ 0, %.lr.ph29 ], [ %i.ax, %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02028
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.l
  %i.p = icmp eq ptr %i.n, %i.k
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.p
  %i.q = icmp eq ptr %i.n, %i.j
  %or.cond = select i1 %or.cond.i, i1 true, i1 %i.q
  br i1 %or.cond, label %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN4FactC2E13eFactCategory(ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 1)
          to label %.noexc unwind label %bb.f, !inline_history !126

.noexc:                                           ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV11FactPointTo, i64 16), ptr %3, align 8, !tbaa !40
  store ptr %i.n, ptr %i.d, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.r = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.d unwind label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit.i, !inline_history !126 ; 3 uses

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit.i:      ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4FactD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(48) %3) #24, !inline_history !126
  br label %.body

bb.d:                                             ; preds = %.noexc
  %i.t = load ptr, ptr @_ZN11FactPointTo11garbage_ptrE, align 8, !tbaa !26
  store ptr %i.t, ptr %i.r, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !16
  store ptr %i.u, ptr %i.g, align 8, !tbaa !24
  store ptr %i.u, ptr %i.f, align 8, !tbaa !17
  %i.v = invoke noundef ptr @_Z17find_related_factRKSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !16   ; 2 uses
  %.not31 = icmp eq ptr %i.y, %i.z
  br i1 %.not31, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.ab = phi ptr [ %i.ah, %bb.g ], [ %i.z, %.preheader ]
  %.027 = phi i64 [ %i.af, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.027
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = invoke noundef zeroext i1 @_Z19add_variable_to_setRSt6vectorIPK8VariableSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ad)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.027, 1                    ; 2 uses
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !16  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %.lr.ph, label %.loopexit, !llvm.loop !168

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.d
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11FactPointToD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  br label %.body

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV11FactPointTo, i64 16), ptr %3, align 8, !tbaa !40
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !16  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZN11FactPointToD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #23, !inline_history !127
  br label %_ZN11FactPointToD2Ev.exit

_ZN11FactPointToD2Ev.exit:                        ; preds = %.loopexit, %bb.h
  call void @_ZN4FactD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(48) %3) #24, !inline_history !127
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pre = load ptr, ptr @_ZN11FactPointTo8null_ptrE, align 8, !tbaa !26
  %.pre34 = load ptr, ptr @_ZN11FactPointTo11garbage_ptrE, align 8
  %.pre36 = load ptr, ptr @_ZN11FactPointTo7tbd_ptrE, align 8
  %.pre38 = load ptr, ptr %i.a, align 8, !tbaa !24
  %.pre39 = load ptr, ptr %1, align 8, !tbaa !16
  br label %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread

_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread: ; preds = %bb.b, %_ZN11FactPointToD2Ev.exit
  %i.as = phi ptr [ %i.h, %bb.b ], [ %.pre39, %_ZN11FactPointToD2Ev.exit ] ; 2 uses
  %i.at = phi ptr [ %i.i, %bb.b ], [ %.pre38, %_ZN11FactPointToD2Ev.exit ] ; 2 uses
  %i.au = phi ptr [ %i.j, %bb.b ], [ %.pre36, %_ZN11FactPointToD2Ev.exit ]
  %i.av = phi ptr [ %i.k, %bb.b ], [ %.pre34, %_ZN11FactPointToD2Ev.exit ]
  %i.aw = phi ptr [ %i.l, %bb.b ], [ %.pre, %_ZN11FactPointToD2Ev.exit ]
  %i.ax = add nuw i64 %.02028, 1                  ; 2 uses
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !169

.body:                                            ; preds = %bb.f, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp48, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %bb.f ], [ %i.s, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bd = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit:        ; preds = %.body, %bb.i
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %_ZN11FactPointTo14is_special_ptrEPK8Variable.exit.thread, %bb.a
  ret void
}

declare noundef zeroext i1 @_Z19add_variable_to_setRSt6vectorIPK8VariableSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK11FactPointTo26update_with_modified_indexEPK8Variable(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %bb.c, !prof !41

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #26 ; 7 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !17
  %i.m = icmp samesign ugt i64 %i.g, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %.lr.ph144

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.g, 8
  br i1 %i.n, label %bb.f, label %.lr.ph144

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !26
  store ptr %i.o, ptr %i.i, align 8, !tbaa !26
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.d, %bb.e, %bb.f
  store ptr %i.k, ptr %i.j, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 18
  br label %bb.g

._crit_edge145:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  br i1 %.239, label %bb.ad, label %bb.ae

bb.g:                                             ; preds = %.lr.ph144, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.s = phi ptr [ %i.d, %.lr.ph144 ], [ %i.cs, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.036142 = phi i64 [ 0, %.lr.ph144 ], [ %i.cq, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.037141 = phi i1 [ false, %.lr.ph144 ], [ %.239, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.036142
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.035 = phi ptr [ %i.u, %bb.g ], [ %i.w, %bb.h ] ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.035, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.i, label %bb.h, !llvm.loop !170

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.035, i64 96
  %i.y = load i8, ptr %i.x, align 8, !tbaa !129, !range !130, !noundef !105
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %_ZNSt6vectorImSaImEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %.035, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(200) %.035)
          to label %bb.k unwind label %.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %.not42 = icmp eq ptr %i.ad, %.035
  br i1 %.not42, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.preheader82

.preheader82:                                     ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 240 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.035, i64 248 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !174
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !175 ; 2 uses
  %.not148 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not148, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ai = icmp eq ptr %.sroa.068.1, %.sroa.11.1
  br i1 %i.ai, label %.thread79, label %bb.s

.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.ad
  %lpad.loopexit.split-lp238 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit61

.lr.ph:                                           ; preds = %.preheader82, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.aj = phi ptr [ %i.bi, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.ah, %.preheader82 ]
  %storemerge135 = phi i64 [ %i.bg, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %.preheader82 ] ; 4 uses
  %.sroa.068.0134 = phi ptr [ %.sroa.068.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.preheader82 ] ; 7 uses
  %.sroa.16.0133 = phi ptr [ %.sroa.16.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.preheader82 ] ; 5 uses
  %.sroa.11.0132 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.preheader82 ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %storemerge135
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !122 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %1)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph
  br i1 %i.ap, label %bb.m, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq ptr %.sroa.11.0132, %.sroa.16.0133
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %storemerge135, ptr %.sroa.11.0132, align 8, !tbaa !176
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.11.0132, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = ptrtoint ptr %.sroa.16.0133 to i64
  %i.as = ptrtoint ptr %.sroa.068.0134 to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store i64 %storemerge135, ptr %i.bc, align 8, !tbaa !176
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc52
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %.sroa.068.0134, i64 %i.at, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc52
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.068.0134, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.0134, i64 noundef %i.at) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.n, %bb.l
  %.sroa.11.1 = phi ptr [ %.sroa.11.0132, %bb.l ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.aq, %bb.n ] ; 3 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0133, %bb.l ], [ %i.bf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.16.0133, %bb.n ] ; 5 uses
  %.sroa.068.1 = phi ptr [ %.sroa.068.0134, %bb.l ], [ %i.bb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.068.0134, %bb.n ] ; 10 uses
  %i.bg = add nuw i64 %storemerge135, 1           ; 2 uses
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !174
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !175 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = icmp ult i64 %i.bg, %i.bm
  br i1 %i.bn, label %.lr.ph, label %._crit_edge, !llvm.loop !171

bb.s:                                             ; preds = %._crit_edge
  %i.bo = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #26
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN13ArrayVariableC1ERKS_(ptr noundef nonnull align 8 dereferenceable(288) %i.bo, ptr noundef nonnull align 8 dereferenceable(288) %.035)
          to label %.lr.ph139.preheader unwind label %bb.u

.lr.ph139.preheader:                              ; preds = %bb.t
  %i.bp = ptrtoint ptr %.sroa.11.1 to i64
  %i.bq = ptrtoint ptr %.sroa.068.1 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  br label %.lr.ph139

bb.u:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 288) #23
  br label %.loopexit.split-lp

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.x
  %.0138 = phi i64 [ %i.cc, %bb.x ], [ 0, %.lr.ph139.preheader ] ; 2 uses
  %i.bu = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 3 uses

bb.v:                                             ; preds = %.lr.ph139
  %i.bv = invoke noundef ptr @_Z12get_int_typev()
          to label %._crit_edge.i.i unwind label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.p, ptr %3, align 8, !tbaa !131
  store i16 12589, ptr %i.p, align 8
  store i64 2, ptr %i.q, align 8, !tbaa !123
  store i8 0, ptr %i.r, align 2, !tbaa !102
  invoke void @_ZN8ConstantC1EPK4TypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.by = load i64, ptr %i.p, align 8, !tbaa !102
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.068.1, i64 %.0138
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !176
  invoke void @_ZN13ArrayVariable9set_indexEmPK10Expression(ptr noundef nonnull align 8 dereferenceable(288) %i.bo, i64 noundef %i.cb, ptr noundef nonnull %i.bu)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = add nuw i64 %.0138, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.bs
  br i1 %exitcond.not, label %._crit_edge140, label %.lr.ph139, !llvm.loop !172

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph139, %bb.s
  %lpad.loopexit.split-lp233 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %.lr.ph, %bb.p
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.p
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.z
  %i.ch = load i64, ptr %i.p, align 8, !tbaa !102
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.cd, %bb.y ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 64) #23
  br label %.loopexit.split-lp

._crit_edge140:                                   ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.036142
  store ptr %i.bo, ptr %i.cj, align 8, !tbaa !26
  br label %.thread79

.thread79:                                        ; preds = %._crit_edge, %._crit_edge140
  %.138 = phi i1 [ true, %._crit_edge140 ], [ %.037141, %._crit_edge ] ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %.sroa.068.1, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread79
  %i.ck = ptrtoint ptr %.sroa.16.1 to i64
  %i.cl = ptrtoint ptr %.sroa.068.1 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.1, i64 noundef %i.cm) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.u
  %.sroa.16.0106 = phi ptr [ %.sroa.16.1, %bb.u ], [ %.sroa.16.1, %bb.aa ], [ %.sroa.16.0133, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.16.1, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  %.sroa.068.095 = phi ptr [ %.sroa.068.1, %bb.u ], [ %.sroa.068.1, %bb.aa ], [ %.sroa.068.0134, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.068.1, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 3 uses
  %.pn48 = phi { ptr, i32 } [ %i.bt, %bb.u ], [ %.pn.pn, %bb.aa ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp233, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.sroa.068.095, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorImSaImEED2Ev.exit61, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp
  %i.cn = ptrtoint ptr %.sroa.16.0106 to i64
  %i.co = ptrtoint ptr %.sroa.068.095 to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.095, i64 noundef %i.cp) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit61

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.preheader82, %bb.ab, %.thread79, %bb.k, %bb.i
  %.239 = phi i1 [ %.037141, %bb.i ], [ %.037141, %bb.k ], [ %.138, %.thread79 ], [ %.138, %bb.ab ], [ %.037141, %.preheader82 ] ; 2 uses
  %i.cq = add nuw i64 %.036142, 1                 ; 2 uses
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3
  %i.cx = icmp ult i64 %i.cq, %i.cw
  br i1 %i.cx, label %bb.g, label %._crit_edge145, !llvm.loop !173

bb.ad:                                            ; preds = %._crit_edge145
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !33
  %i.da = invoke noundef ptr @_ZN11FactPointTo9make_factEPK8VariableRKSt6vectorIS2_SaIS2_EE(ptr noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ae unwind label %.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad, %._crit_edge145
  %.040.ph = phi ptr [ %0, %._crit_edge145 ], [ %i.da, %bb.ad ]
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit:        ; preds = %bb.a, %bb.ae
  %.040195 = phi ptr [ %.040.ph, %bb.ae ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %.040195

_ZNSt6vectorImSaImEED2Ev.exit61:                  ; preds = %.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ac, %.loopexit.split-lp
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48, %bb.ac ], [ %.pn48, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp238, %.loopexit.split-lp87.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn48.pn.pn
}

declare void @_ZN13ArrayVariableC1ERKS_(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #0

declare noundef ptr @_Z12get_int_typev() local_unnamed_addr #0

declare void @_ZN8ConstantC1EPK4TypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare void @_ZN13ArrayVariable9set_indexEmPK10Expression(ptr noundef nonnull align 8 dereferenceable(288), i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11FactPointTo32update_facts_with_modified_indexERSt6vectorIPK4FactSaIS3_EEPK8Variable(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.c
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.d = phi ptr [ %i.l, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %.014 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.a ]   ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call noundef ptr @_ZNK11FactPointTo26update_with_modified_indexEPK8Variable(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.j, %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.014
  store ptr %i.j, ptr %i.k, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %i.l = phi ptr [ %.pre, %bb.b ], [ %.pre, %bb.c ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.m = add nuw i64 %.014, 1                     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.m, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !177
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11FactPointTo18update_ptr_aliasesERKSt6vectorIP4FactSaIS2_EERS0_IPK8VariableSaIS9_EERS0_ISB_SaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %.not43 = icmp eq ptr %i.b, %i.c
  br i1 %.not43, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph42, %.loopexit
  %i.j = phi ptr [ %i.c, %.lr.ph42 ], [ %i.el, %.loopexit ]
  %.02541 = phi i64 [ 0, %.lr.ph42 ], [ %i.ej, %.loopexit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.02541
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !128
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  %i.z = call noundef i32 @_Z20find_variable_in_setRKSt6vectorIPK8VariableSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.y) ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %.not44 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.af = sext i32 %i.z to i64                    ; 2 uses
  br label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(48) %i.l) ; 2 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !24  ; 4 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.d, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK8VariableSaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %1, align 8, !tbaa !16    ; 4 uses
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
  unreachable

_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #26 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %i.aj, ptr %i.az, align 8, !tbaa !26
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.i, label %_ZNSt6vectorIPK8VariableSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPK8VariableSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK8VariableSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK8VariableSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK8VariableSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPK8VariableSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ay, ptr %1, align 8, !tbaa !16
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !17
  br label %_ZNSt6vectorIPK8VariableSaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPK8VariableSaIS2_EE9push_backEOS2_.exit: ; preds = %bb.f, %_ZNSt6vectorIPK8VariableSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24 ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !16 ; 4 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i27 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i27, label %_ZNSt6vectorIPK8VariableSaIS2_EEC2ERKS4_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EE9push_backEOS2_.exit
  %i.bk = icmp ugt i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %.noexc.i.i, label %bb.l, !prof !41
end_hunk_0
