inline.NumInlined: 2442
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4cvc56parser15GetValueCommand6invokeEPNS_6SolverEPNS0_10SymManagerE:bb.a
bb.k:                                             ; preds = %bb.e
  %i.aq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #30
  %i.ar = icmp eq i32 %i.ab, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.as = call ptr @__cxa_begin_catch(ptr %i.aa) #30 ; 2 uses
  %i.at = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.m unwind label %bb.p       ; 3 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ax, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc56parser14CommandFailureC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !52
  %i.az = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.o
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @__cxa_end_catch()
  br label %bb.j

bb.p:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.r:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.r
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.q ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bg, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 40) #31
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.be, %bb.p ]
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.t:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.v:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.v
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.u
  %.pn18 = phi { ptr, i32 } [ %i.bn, %bb.u ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bo, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 40) #31
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.t
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.bm, %bb.t ]
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.s, %bb.k
  %.merged = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.z, %bb.k ], [ %.pn18.pn, %bb.w ]
  resume { ptr, i32 } %.merged

bb.y:                                             ; preds = %bb.w, %bb.s
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #32
  unreachable
}

declare void @_ZNK4cvc56Solver8getValueERKSt6vectorINS_4TermESaIS2_EE(ptr dead_on_unwind writable sret(%"class.std::vector.253") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc56parser25CommandRecoverableFailureC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef align 8 %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc56parser25CommandRecoverableFailureE, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !44
  %i.d = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8, !tbaa !62
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !22
  %i.i = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.i, ptr %i.c, align 8, !tbaa !8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !8
  store i8 %i.k, ptr %i.j, align 1, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !26
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc56parser15GetValueCommand9getResultEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(64) %0) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4cvc56parser15GetValueCommand11printResultEPNS_6SolverERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 24                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc5lsERSoRKNS_4TermE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.51, i64 noundef 1) ; 0 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc5lsERSoRKNS_4TermE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %exitcond.peel.not = icmp ult i64 %i.i, 2
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %.peel.next, %bb.b, %bb.a
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !9
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #33
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !91
  %.not.i1.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 10), !inline_history !109
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.ab, %bb.d ], [ %i.af, %bb.e ]
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %.0.i.i.i)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) ; 0 uses
  ret void

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %.012 = phi i64 [ %i.as, %.peel.next ], [ 1, %bb.b ] ; 3 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 1) ; 0 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.012
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc5lsERSoRKNS_4TermE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.al) ; 2 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.51, i64 noundef 1) ; 0 uses
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.012
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc5lsERSoRKNS_4TermE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.as = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !309
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK4cvc56parser15GetValueCommand14getCommandNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.52, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4cvc56parser15GetValueCommand8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 10 uses
  %i.a = tail call noundef ptr @_ZN4cvc58internal7Printer10getPrinterERSo(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4cvc54Term17termVectorToNodesERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !118    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !68 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = and i64 %i.j, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.c, !prof !35

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.l = add i64 %i.j, 1152920405095219200
  %i.m = and i64 %i.l, 1152920405095219200        ; 2 uses
  %i.n = and i64 %i.j, -1152920405095219201
  %i.o = or disjoint i64 %i.m, %i.n
  store i64 %i.o, ptr %i.i, align 8
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !35

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #32
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.h
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !122

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.f, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #31
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN4cvc56parser29GetModelDomainElementsCommandC2ENS_4SortE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4cvc56parser29GetModelDomainElementsCommandE, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !98
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN4cvc54SortC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !34
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !34
  br label %_ZN4cvc54SortC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54SortC2ERKS0_.exit

_ZN4cvc54SortC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZNK4cvc56parser29GetModelDomainElementsCommand7getSortEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::Sort") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !98
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !27
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN4cvc54SortC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !34
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !34
  br label %_ZN4cvc54SortC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54SortC2ERKS0_.exit

_ZN4cvc54SortC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4cvc56parser29GetModelDomainElementsCommand6invokeEPNS_6SolverEPNS0_10SymManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.253", align 16  ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNK4cvc56Solver22getModelDomainElementsERKNS_4SortE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.253") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load <2 x ptr>, ptr %3, align 16, !tbaa !116
  store <2 x ptr> %i.i, ptr %i.b, align 8, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !113
  store ptr %i.k, ptr %i.f, align 8, !tbaa !113
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4cvc56parser29GetModelDomainElementsCommand6invokeEPNS_6SolverEPNS0_10SymManagerE:bb.a
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.aa = extractvalue { ptr, i32 } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i32 } %i.z, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ac = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4cvc527CVC5ApiRecoverableExceptionE) #30
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ae = call ptr @__cxa_begin_catch(ptr %i.aa) #30 ; 2 uses
  %i.af = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.g unwind label %bb.t       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc56parser25CommandRecoverableFailureC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 %6)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ak, align 8, !tbaa !52
  %i.al = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @__cxa_end_catch()
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev.exit
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #30
  %i.ar = icmp eq i32 %i.ab, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.as = call ptr @__cxa_begin_catch(ptr %i.aa) #30 ; 2 uses
  %i.at = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.m unwind label %bb.p       ; 3 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ax, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc56parser14CommandFailureC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !52
  %i.az = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.o
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @__cxa_end_catch()
  br label %bb.j

bb.p:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.r:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.r
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.q ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bg, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 40) #31
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.be, %bb.p ]
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.t:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.v:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.v
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.u
  %.pn18 = phi { ptr, i32 } [ %i.bn, %bb.u ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bo, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 40) #31
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.t
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.bm, %bb.t ]
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.s, %bb.k
  %.merged = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.z, %bb.k ], [ %.pn18.pn, %bb.w ]
  resume { ptr, i32 } %.merged

bb.y:                                             ; preds = %bb.w, %bb.s
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #32
  unreachable
}

declare void @_ZNK4cvc56Solver22getModelDomainElementsERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.std::vector.253") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc56parser29GetModelDomainElementsCommand9getResultEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(64) %0) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4cvc56parser29GetModelDomainElementsCommand11printResultEPNS_6SolverERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 24                        ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc5lsERSoRKNS_4TermE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e) ; 0 uses
  %exitcond.peel.not = icmp ult i64 %i.i, 2
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.b, %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !9
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #33
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !91
  %.not.i1.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.q)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.q, i8 noundef signext 10), !inline_history !109
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.u, %bb.d ], [ %i.y, %bb.e ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %.0.i.i.i)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  ret void

.lr.ph.peel.next:                                 ; preds = %bb.b, %.lr.ph.peel.next
  %.011 = phi i64 [ %i.af, %.lr.ph.peel.next ], [ 1, %bb.b ] ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 1) ; 0 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.011
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc5lsERSoRKNS_4TermE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad) ; 0 uses
  %i.af = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !311
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4cvc56parser29GetModelDomainElementsCommand14getCommandNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 25, ptr %i.a, align 8, !tbaa !62
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !22
  %i.d = load i64, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.53, i64 25, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !26
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4cvc56parser29GetModelDomainElementsCommand8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN4cvc58internal7Printer10getPrinterERSo(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4cvc54Sort11getTypeNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72, !noalias !312 ; 5 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !72, !alias.scope !312
  %i.e = load i64, ptr %i.d, align 8, !noalias !312 ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.e, -1152920405095219201
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8, !noalias !312
  br label %_ZN4cvc56parser3Cmd14sortToTypeNodeERKNS_4SortE.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.h, 1048574
  br i1 %i.o, label %bb.d, label %_ZN4cvc56parser3Cmd14sortToTypeNodeERKNS_4SortE.exit, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8, !noalias !312
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !312
  br label %_ZN4cvc56parser3Cmd14sortToTypeNodeERKNS_4SortE.exit

_ZN4cvc56parser3Cmd14sortToTypeNodeERKNS_4SortE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 320
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN4cvc56parser3Cmd14sortToTypeNodeERKNS_4SortE.exit
  %i.t = load ptr, ptr %2, align 8, !tbaa !72     ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = and i64 %i.u, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.v, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.f, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.w = add i64 %i.u, 1152920405095219200
  %i.x = and i64 %i.w, 1152920405095219200        ; 2 uses
  %i.y = and i64 %i.u, -1152920405095219201
  %i.z = or disjoint i64 %i.x, %i.y
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.g, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !35

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.e, %bb.f, %bb.g
  ret void

bb.i:                                             ; preds = %_ZN4cvc56parser3Cmd14sortToTypeNodeERKNS_4SortE.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #30
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define void @_ZN4cvc56parser20GetAssignmentCommandC2Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 16)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4cvc56parser20GetAssignmentCommandE, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN4cvc54TermC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4cvc56parser3CmdE, i64 16), ptr %0, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = load ptr, ptr @_ZN4cvc56parser14CommandSuccess10s_instanceE, align 8
  %.not2.i = icmp eq ptr %i.d, %i.e
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %_ZN4cvc56parser3CmdD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #30, !inline_history !80
  br label %_ZN4cvc56parser3CmdD2Ev.exit

_ZN4cvc56parser3CmdD2Ev.exit:                     ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN4cvc56parser20GetAssignmentCommand6invokeEPNS_6SolverEPNS0_10SymManagerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::map", align 8          ; 9 uses
  %4 = alloca %"class.std::vector.253", align 8   ; 14 uses
  %5 = alloca %"class.std::vector.274", align 8   ; 13 uses
  %6 = alloca %"class.std::vector.253", align 8   ; 10 uses
  %7 = alloca %"class.std::vector.253", align 8   ; 13 uses
  %8 = alloca %"class.cvc5::Term", align 16       ; 8 uses
  %9 = alloca %"class.cvc5::Sort", align 8        ; 7 uses
  %10 = alloca %"class.std::optional", align 8    ; 13 uses
  %11 = alloca %"class.cvc5::Term", align 16      ; 9 uses
  %12 = alloca %"class.std::vector.253", align 8  ; 11 uses
  %13 = alloca [2 x %"class.cvc5::Term"], align 16 ; 13 uses
  %14 = alloca %"class.cvc5::Term", align 16      ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::allocator", align 1   ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc56Solver14getTermManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 4 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNK4cvc56parser10SymManager18getExpressionNamesB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !315  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not143 = icmp eq ptr %i.e, %i.f
  br i1 %.not143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNK4cvc56Solver8getValueERKSt6vectorINS_4TermESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.253") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.bw

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.bv

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.0124.0144 = phi ptr [ %i.e, %.lr.ph ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0124.0144, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !114  ; 6 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !98
  store <2 x ptr> %i.p, ptr %i.n, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0124.0144, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !27
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN4cvc54TermC2ERKS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !34
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !34
  br label %_ZN4cvc54TermC2ERKS0_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !114
  br label %_ZN4cvc54TermC2ERKS0_.exit.i

_ZN4cvc54TermC2ERKS0_.exit.i:                     ; preds = %bb.j, %bb.i, %bb.g
  %i.y = phi ptr [ %i.n, %bb.g ], [ %i.n, %bb.i ], [ %.pre.i, %bb.j ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.z, ptr %i.g, align 8, !tbaa !114
  br label %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIN4cvc54TermESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backERKS1_.exit unwind label %bb.p

_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZN4cvc54TermC2ERKS0_.exit.i, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0124.0144, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !320 ; 8 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !323
  %.not.i59 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i59, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backERKS1_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !44
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0124.0144, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !62
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc60 unwind label %bb.p   ; 2 uses

.noexc60:                                         ; preds = %.noexc.i.i
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !22
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !62
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc60, %bb.l
  %i.ak = phi ptr [ %i.ai, %.noexc60 ], [ %i.ad, %bb.l ] ; 2 uses
  switch i64 %i.ag, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !8
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.b, align 8, !tbaa !62  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !26
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !320
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !320
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.o:                                             ; preds = %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.p

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.o
  %i.as = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0124.0144) #35 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.f
  br i1 %.not, label %._crit_edge, label %bb.f

bb.p:                                             ; preds = %bb.o, %.noexc.i.i, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.bu

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !114 ; 2 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !110   ; 2 uses
  %.not149 = icmp eq ptr %i.av, %i.aw
  br i1 %.not149, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.q
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv i64 %i.az, 24
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %umax = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %bb.s

._crit_edge148:                                   ; preds = %_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev.exit, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZN4cvc511TermManager6mkTermENS_4KindERKSt6vectorINS_4TermESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::Term") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bb unwind label %bb.br

bb.r:                                             ; preds = %._crit_edge
  %i.bp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.bt

bb.s:                                             ; preds = %.lr.ph147, %_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev.exit
  %.025145 = phi i64 [ 0, %.lr.ph147 ], [ %i.ep, %_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN4cvc511TermManager14getBooleanSortEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::Sort") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.as

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bq = load ptr, ptr %5, align 8, !tbaa !324
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %.025145 ; 2 uses
  store ptr %i.bb, ptr %10, align 8, !tbaa !44
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !62
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.t
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc62 unwind label %bb.at  ; 2 uses

.noexc62:                                         ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.bw, ptr %10, align 8, !tbaa !22
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.bx, ptr %i.bb, align 8, !tbaa !8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc62, %bb.t
  %i.by = phi ptr [ %i.bw, %.noexc62 ], [ %i.bb, %bb.t ] ; 2 uses
  switch i64 %i.bu, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bz = load i8, ptr %i.bs, align 1, !tbaa !8
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !8
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bs, i64 %i.bu, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  store i64 %i.ca, ptr %i.bc, align 8, !tbaa !26
  %i.cb = load ptr, ptr %10, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store i8 0, ptr %i.cc, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store i8 1, ptr %i.bd, align 8, !tbaa !325
  invoke void @_ZN4cvc511TermManager5mkVarERKNS_4SortERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::Term") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %bb.x unwind label %bb.au

bb.x:                                             ; preds = %bb.w
  %i.cd = load i8, ptr %i.bd, align 8, !tbaa !325, !range !168, !noundef !169
  %i.ce = trunc nuw i8 %i.cd to i1
  store i8 0, ptr %i.bd, align 8, !tbaa !325
  br i1 %i.ce, label %bb.y, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.cf = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bb
  br i1 %i.cg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.ch = load i64, ptr %i.bb, align 8, !tbaa !8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.y, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN4cvc54SortD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.cj = load <2 x ptr>, ptr %8, align 16, !tbaa !98
  store <2 x ptr> %i.cj, ptr %13, align 16, !tbaa !98
  %i.ck = load ptr, ptr %i.bf, align 16, !tbaa !27 ; 3 uses
  store ptr %i.ck, ptr %i.be, align 16, !tbaa !27
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %_ZN4cvc54TermC2ERKS0_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i63 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i63, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !34
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !34
  br label %_ZN4cvc54TermC2ERKS0_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cp = atomicrmw volatile add ptr %i.cl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54TermC2ERKS0_.exit

_ZN4cvc54TermC2ERKS0_.exit:                       ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.aa, %bb.ab
  %i.cq = load ptr, ptr %6, align 8, !tbaa !110
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.025145 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !98
  store <2 x ptr> %i.cs, ptr %i.bg, align 8, !tbaa !98
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27 ; 3 uses
  store ptr %i.cu, ptr %i.bh, align 8, !tbaa !27
  %.not.i.i.i.i64 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i64, label %_ZN4cvc54TermC2ERKS0_.exit66, label %bb.ac

bb.ac:                                            ; preds = %_ZN4cvc54TermC2ERKS0_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i65 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i65, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !34
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !34
  br label %_ZN4cvc54TermC2ERKS0_.exit66

bb.ae:                                            ; preds = %bb.ac
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54TermC2ERKS0_.exit66

_ZN4cvc54TermC2ERKS0_.exit66:                     ; preds = %_ZN4cvc54TermC2ERKS0_.exit, %bb.ad, %bb.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.da = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34
          to label %.noexc3.i unwind label %_ZNSt12_Vector_baseIN4cvc54TermESaIS1_EED2Ev.exit.i ; 7 uses

.noexc3.i:                                        ; preds = %_ZN4cvc54TermC2ERKS0_.exit66
  store ptr %i.da, ptr %12, align 8, !tbaa !110
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store ptr %i.db, ptr %i.bi, align 8, !tbaa !113
  %i.dc = load <2 x ptr>, ptr %13, align 16, !tbaa !98
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !98
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.de = load ptr, ptr %i.be, align 16, !tbaa !27 ; 3 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !27
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.noexc3.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !34
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !34
  br label %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dj = atomicrmw volatile add ptr %i.df, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %.noexc3.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dl = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !98
  store <2 x ptr> %i.dl, ptr %i.dk, align 8, !tbaa !98
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dn = load ptr, ptr %i.bn, align 8, !tbaa !27 ; 3 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !27
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.ai

bb.ai:                                            ; preds = %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !34
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !34
  br label %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.ak:                                            ; preds = %bb.ai
  %i.ds = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.ak, %bb.aj, %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store ptr %i.dt, ptr %i.bj, align 8, !tbaa !114
  invoke void @_ZN4cvc511TermManager6mkTermENS_4KindERKSt6vectorINS_4TermESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::Term") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.al unwind label %bb.ax

_ZNSt12_Vector_baseIN4cvc54TermESaIS1_EED2Ev.exit.i: ; preds = %_ZN4cvc54TermC2ERKS0_.exit66
  %i.du = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

bb.al:                                            ; preds = %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.dv = load ptr, ptr %i.bk, align 8, !tbaa !114 ; 6 uses
  %i.dw = load ptr, ptr %i.bl, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = load <2 x ptr>, ptr %11, align 16, !tbaa !98
  store <2 x ptr> %i.dx, ptr %i.dv, align 8, !tbaa !98
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dz = load ptr, ptr %i.bm, align 16, !tbaa !27 ; 3 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !27
  %.not.i.i.i.i.i.i68 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i68, label %_ZN4cvc54TermC2ERKS0_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !34
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !34
  br label %_ZN4cvc54TermC2ERKS0_.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.ee = atomicrmw volatile add ptr %i.ea, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.bk, align 8, !tbaa !114
  br label %_ZN4cvc54TermC2ERKS0_.exit.i.i

_ZN4cvc54TermC2ERKS0_.exit.i.i:                   ; preds = %bb.ap, %bb.ao, %bb.am
  %i.ef = phi ptr [ %i.dv, %bb.am ], [ %i.dv, %bb.ao ], [ %.pre.i.i, %bb.ap ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr %i.eg, ptr %i.bk, align 8, !tbaa !114
  br label %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backEOS1_.exit

bb.aq:                                            ; preds = %bb.al
  invoke void @_ZNSt6vectorIN4cvc54TermESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backEOS1_.exit unwind label %bb.ay

_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN4cvc54TermC2ERKS0_.exit.i.i, %bb.aq
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  %i.eh = load ptr, ptr %12, align 8, !tbaa !110  ; 3 uses
  %i.ei = load ptr, ptr %i.bj, align 8, !tbaa !114 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backEOS1_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i ], [ %i.eh, %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #30
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ej, %i.ei
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !115

_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !110
  br label %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backEOS1_.exit
  %i.ek = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.eh, %_ZNSt6vectorIN4cvc54TermESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i
  %i.el = load ptr, ptr %i.bi, align 8, !tbaa !113
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.eo) #31
  br label %_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev.exit

_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i, %bb.ar
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #30
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ep = add nuw i64 %.025145, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %umax
  br i1 %exitcond.not, label %._crit_edge148, label %bb.s, !llvm.loop !327

bb.as:                                            ; preds = %bb.s
  %i.eq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.aw

bb.at:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.er = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73

bb.au:                                            ; preds = %bb.w
  %i.es = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.et = load i8, ptr %i.bd, align 8, !tbaa !325, !range !168, !noundef !169
  %i.eu = trunc nuw i8 %i.et to i1
  store i8 0, ptr %i.bd, align 8, !tbaa !325
  br i1 %i.eu, label %bb.av, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73

bb.av:                                            ; preds = %bb.au
  %i.ev = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.bb
  br i1 %i.ew, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71: ; preds = %bb.av
  %i.ex = load i64, ptr %i.bb, align 8, !tbaa !8
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71, %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.er, %bb.at ], [ %i.es, %bb.au ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71 ], [ %i.es, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN4cvc54SortD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73 ], [ %i.eq, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ba

bb.ax:                                            ; preds = %_ZSt10_ConstructIN4cvc54TermEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ez = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.az

bb.ay:                                            ; preds = %bb.aq
  %i.fa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc527CVC5ApiRecoverableExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn43 = phi { ptr, i32 } [ %i.fa, %bb.ay ], [ %i.ez, %bb.ax ]
  call void @_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #30
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc54TermESaIS1_EED2Ev.exit.i, %bb.az
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.az ], [ %i.du, %_ZNSt12_Vector_baseIN4cvc54TermESaIS1_EED2Ev.exit.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fb) #30
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  br label %bb.ba

bb.ba:                                            ; preds = %.body, %bb.aw
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %.body ], [ %.pn.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.bs

bb.bb:                                            ; preds = %._crit_edge148
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load <2 x ptr>, ptr %14, align 16, !tbaa !98
  store <2 x ptr> %i.fd, ptr %i.fc, align 8, !tbaa !98
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fg = load ptr, ptr %i.ff, align 16, !tbaa !27 ; 4 uses
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not.i.i.i.i74, label %_ZN4cvc54TermaSERKS0_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not7.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 3 uses
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i75 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i.i75, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !34
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !34
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.fm = atomicrmw volatile add ptr %i.fi, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.fe, align 8, !tbaa !27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bc
  %i.fn = phi ptr [ %i.fh, %bb.bc ], [ %i.fh, %bb.be ], [ %.pr.pre.i.i.i.i, %bb.bf ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 4 uses
  %i.fp = load atomic i64, ptr %i.fo acquire, align 8 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 4294967297
  %i.fr = trunc i64 %i.fp to i32                  ; 2 uses
  br i1 %i.fq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.fo, align 8, !tbaa !30
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store i32 0, ptr %i.fs, align 4, !tbaa !32
  %i.ft = load ptr, ptr %i.fn, align 8, !tbaa !9
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #30, !inline_history !152
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #30, !inline_history !152
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.fz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i9.i.i.i.i = icmp eq i8 %i.fz, 0
  br i1 %.not.i9.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ga = add nsw i32 %i.fr, -1
  store i32 %i.ga, ptr %i.fo, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.gb = atomicrmw volatile add ptr %i.fo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i = phi i32 [ %i.fr, %bb.bj ], [ %i.gb, %bb.bk ]
  %i.gc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gc, label %bb.bl, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !35

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bh, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !27
  br label %_ZN4cvc54TermaSERKS0_.exit

_ZN4cvc54TermaSERKS0_.exit:                       ; preds = %bb.bb, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.gd = load ptr, ptr @_ZN4cvc56parser14CommandSuccess10s_instanceE, align 8, !tbaa !81
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !52
  %i.gf = load ptr, ptr %7, align 8, !tbaa !110   ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !114 ; 2 uses
  %.not4.i.i.i76 = icmp eq ptr %i.gf, %i.gh
  br i1 %.not4.i.i.i76, label %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i82, label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZN4cvc54TermaSERKS0_.exit, %.lr.ph.i.i.i77
  %.05.i.i.i78 = phi ptr [ %i.gi, %.lr.ph.i.i.i77 ], [ %i.gf, %_ZN4cvc54TermaSERKS0_.exit ] ; 2 uses
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i78) #30
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i78, i64 24 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.gi, %i.gh
  br i1 %.not.i.i.i79, label %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i80, label %.lr.ph.i.i.i77, !llvm.loop !115

_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i80: ; preds = %.lr.ph.i.i.i77
  %.pr.i81 = load ptr, ptr %7, align 8, !tbaa !110
  br label %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i82

_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i82: ; preds = %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i80, %_ZN4cvc54TermaSERKS0_.exit
  %i.gj = phi ptr [ %.pr.i81, %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i80 ], [ %i.gf, %_ZN4cvc54TermaSERKS0_.exit ] ; 3 uses
  %.not.i.i1.i83 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i1.i83, label %_ZNSt6vectorIN4cvc54TermESaIS1_EED2Ev.exit85, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPN4cvc54TermES1_EvT_S3_RSaIT0_E.exit.i82
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !113
end_hunk_1
