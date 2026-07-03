inline.NumInlined: 1486
inline.NumDeleted: 584
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN10duckdb_re213PrefilterTree13CanonicalNodeEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_9PrefilterESt4lessIS7_ESaISt4pairIKS7_S9_EEES9_:bb.a
  %i.v = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %bb.d
  %.0 = phi ptr [ %i.x, %bb.d ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = icmp eq ptr %.pre, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  call void @_ZdlPv(ptr noundef %.pre) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re213PrefilterTree10NodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = load i32, ptr %2, align 8, !tbaa !57
  call void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.3, i32 noundef %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !113
  %i.d = icmp eq i64 %i.c, 4611686018427387903
  br i1 %i.d, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %.noexc21 unwind label %bb.i   ; 6 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !87, !alias.scope !113
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc21
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc21
  store ptr %i.g, ptr %0, align 8, !tbaa !55, !alias.scope !113
  %i.n = load i64, ptr %i.h, align 8, !tbaa !89
  store i64 %i.n, ptr %i.f, align 8, !tbaa !89, !alias.scope !113
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.o = phi i64 [ %i.k, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 %i.o, ptr %i.q, align 8, !tbaa !62, !alias.scope !113
  store ptr %i.h, ptr %i.e, align 8, !tbaa !55
  store i64 0, ptr %i.p, align 8, !tbaa !62
  store i8 0, ptr %i.h, align 8, !tbaa !89
  %i.r = load ptr, ptr %3, align 8, !tbaa !55     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.u = load i32, ptr %2, align 8, !tbaa !57
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !28  ; 2 uses
  %.not44 = icmp eq ptr %i.z, %i.aa
  br i1 %.not44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !85
  invoke void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.3, i32 noundef %i.ae)
          to label %bb.f unwind label %.loopexit.split-lp52

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !62
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %.loopexit56, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.peel: ; preds = %bb.f
  %i.aj = load ptr, ptr %4, align 8, !tbaa !55
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aj, i64 noundef %i.af)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.peel
  %i.al = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ac
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32.peel
  call void @_ZdlPv(ptr noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !61  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.at, 8
  br i1 %i.au, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !62 ; 2 uses
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !62
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc23 unwind label %bb.j

.noexc23:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bb, i64 noundef %i.aw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.j ; 0 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.be) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.m
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.043 = phi i64 [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel ] ; 2 uses
  %i.bi = load i64, ptr %i.q, align 8, !tbaa !62  ; 4 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.f                 ; 2 uses
  br i1 %i.bl, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.l:                                             ; preds = %.peel.next
  %i.bm = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.l, %.peel.next
  %5 = load i64, ptr %i.f, align 8
  %6 = select i1 %i.bl, i64 15, i64 %5
  %i.bn = icmp ugt i64 %i.bj, %6
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc28 unwind label %bb.k

.noexc28:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %.noexc28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bo = phi ptr [ %.pre.i.i, %.noexc28 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi
  store i8 44, ptr %i.bp, align 1, !tbaa !89
  store i64 %i.bj, ptr %i.q, align 8, !tbaa !62
  %i.bq = load ptr, ptr %0, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bj
  store i8 0, ptr %i.br, align 1, !tbaa !89
  %.pre60 = load ptr, ptr %i.w, align 8, !tbaa !61
  %.pre61 = load ptr, ptr %.pre60, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre61, i64 %.043
  %.pre62 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %.pre62, i64 48
  %.pre64 = load i32, ptr %.phi.trans.insert63, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.3, i32 noundef %.pre64)
          to label %bb.o unwind label %.loopexit51

bb.o:                                             ; preds = %bb.n
  %i.bs = load i64, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !62
  %i.bu = sub i64 4611686018427387903, %i.bt
  %i.bv = icmp ult i64 %i.bu, %i.bs
  br i1 %i.bv, label %.loopexit56, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29

.loopexit56:                                      ; preds = %bb.o, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %.loopexit56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29: ; preds = %bb.o
  %i.bw = load ptr, ptr %4, align 8, !tbaa !55
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bw, i64 noundef %i.bs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32 unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29
  %i.by = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ac
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32
  call void @_ZdlPv(ptr noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ca = add nuw i64 %.043, 1                    ; 2 uses
  %i.cb = load ptr, ptr %i.w, align 8, !tbaa !61  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !27
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3
  %i.cj = icmp ult i64 %i.ca, %i.ci
  br i1 %i.cj, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, !llvm.loop !116

.loopexit51:                                      ; preds = %bb.n
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit.split-lp52:                             ; preds = %bb.e
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.peel
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit56
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit57, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp58, %.loopexit.loopexit.split-lp ] ; 2 uses
  %i.ck = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ac
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.ck) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.loopexit, %.loopexit51, %.loopexit.split-lp52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp52 ], [ %lpad.loopexit53, %.loopexit51 ], [ %lpad.phi, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  ret void

bb.p:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.j
  %.pn18 = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %lpad.loopexit48, %bb.k ] ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.f
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn18.pn = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn18, %bb.p ]
  resume { ptr, i32 } %.pn18.pn
}

declare void @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %4 = alloca %"class.duckdb_re2::SparseArray", align 8 ; 12 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i8, ptr %i.d, align 8, !tbaa !37, !range !38, !noundef !39
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.7, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.n = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !53
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.p = getelementptr i8, ptr %i.n, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %i.q
  store ptr %i.o, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.u) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #23
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !28
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re213PrefilterTree14PrintPrefilterEi:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ab) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i64 0, ptr %i.b, align 8, !tbaa !62
  store i8 0, ptr %i.a, align 8, !tbaa !89
  %i.c = load i32, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  br i1 %i.g, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i
  %i.k = icmp eq i32 %i.c, 3                      ; 2 uses
  %i.l = select i1 %i.k, i64 3, i64 2
  %i.m = select i1 %i.k, ptr @.str.17, ptr @.str.18
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.m, i64 noundef %i.l)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !62
  %i.p = icmp eq i64 %i.o, 4611686018427387903
  br i1 %i.p, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34.preheader unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %.not82 = icmp eq ptr %i.u, %i.v
  br i1 %.not82, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !85
  invoke void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.3, i32 noundef %i.ab)
          to label %bb.d unwind label %.loopexit.split-lp87

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !62
  %i.ae = sub i64 4611686018427387903, %i.ad
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %.loopexit90, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40.peel: ; preds = %bb.d
  %i.ag = load ptr, ptr %3, align 8, !tbaa !55
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ag, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43.peel unwind label %.loopexit64.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40.peel
  %i.ai = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.x
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43.peel
  call void @_ZdlPv(ptr noundef %i.ai) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !62
  %i.al = icmp eq i64 %i.ak, 4611686018427387903
  br i1 %i.al, label %.loopexit94, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  invoke void @_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.ap)
          to label %bb.e unwind label %.loopexit.split-lp96

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47.peel
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !62  ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !62
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %.loopexit100, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48.peel: ; preds = %bb.e
  %i.au = load ptr, ptr %4, align 8, !tbaa !55
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.au, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51.peel unwind label %.loopexit69.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48.peel
  %i.aw = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.z
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51.peel
  call void @_ZdlPv(ptr noundef %i.aw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !61  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !28
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ugt i64 %i.be, 8
  br i1 %i.bf, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34.preheader
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !62
  %i.bh = icmp eq i64 %i.bg, 4611686018427387903
  br i1 %i.bh, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke

.invoke:                                          ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bi = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ], [ @.str.20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge ]
  %i.bj = phi i64 [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge ]
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bi, i64 noundef %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.b ; 0 uses

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44, %bb.g
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44.peel
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit94
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.081 = phi i64 [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel ] ; 3 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !62  ; 4 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.a                 ; 2 uses
  br i1 %i.bo, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.f:                                             ; preds = %.peel.next
  %i.bp = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.f, %.peel.next
  %5 = load i64, ptr %i.a, align 8
  %6 = select i1 %i.bo, i64 15, i64 %5
  %i.bq = icmp ugt i64 %i.bm, %6
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc39 unwind label %.loopexit.loopexit

.noexc39:                                         ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %.noexc39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.br = phi ptr [ %.pre.i.i, %.noexc39 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bl
  store i8 44, ptr %i.bs, align 1, !tbaa !89
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !62
  %i.bt = load ptr, ptr %0, align 8, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  store i8 0, ptr %i.bu, align 1, !tbaa !89
  %.pre104 = load ptr, ptr %i.r, align 8, !tbaa !61
  %.pre105 = load ptr, ptr %.pre104, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre105, i64 %.081
  %.pre106 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %.pre106, i64 48
  %.pre108 = load i32, ptr %.phi.trans.insert107, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.3, i32 noundef %.pre108)
          to label %bb.i unwind label %.loopexit86

bb.i:                                             ; preds = %bb.h
  %i.bv = load i64, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !62
  %i.bx = sub i64 4611686018427387903, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bv
  br i1 %i.by, label %.loopexit90, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40

.loopexit90:                                      ; preds = %bb.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc41 unwind label %.loopexit.split-lp65

.noexc41:                                         ; preds = %.loopexit90
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40: ; preds = %bb.i
  %i.bz = load ptr, ptr %3, align 8, !tbaa !55
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bz, i64 noundef %i.bv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43 unwind label %.loopexit64.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40
  %i.cb = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.x
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43
  call void @_ZdlPv(ptr noundef %i.cb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !62
  %i.ce = icmp eq i64 %i.cd, 4611686018427387903
  br i1 %i.ce, label %.loopexit94, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44

.loopexit94:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %.loopexit94
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47 unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.081
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !34
  invoke void @_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.cj)
          to label %bb.j unwind label %.loopexit95

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47
  %i.ck = load i64, ptr %i.y, align 8, !tbaa !62  ; 2 uses
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !62
  %i.cm = sub i64 4611686018427387903, %i.cl
  %i.cn = icmp ult i64 %i.cm, %i.ck
  br i1 %i.cn, label %.loopexit100, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48

.loopexit100:                                     ; preds = %bb.j, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc49 unwind label %.loopexit.split-lp70

.noexc49:                                         ; preds = %.loopexit100
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48: ; preds = %bb.j
  %i.co = load ptr, ptr %4, align 8, !tbaa !55
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.co, i64 noundef %i.ck)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51 unwind label %.loopexit69.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48
  %i.cq = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.z
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51
  call void @_ZdlPv(ptr noundef %i.cq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cs = add nuw i64 %.081, 1                    ; 2 uses
  %i.ct = load ptr, ptr %i.r, align 8, !tbaa !61  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !27
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !28
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = icmp ult i64 %i.cs, %i.da
  br i1 %i.db, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge, !llvm.loop !154

.loopexit86:                                      ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

.loopexit.split-lp87:                             ; preds = %bb.c
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

.loopexit64.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit64

.loopexit64.loopexit.split-lp:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40.peel
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit64

.loopexit.split-lp65:                             ; preds = %.loopexit90
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit64

.loopexit64:                                      ; preds = %.loopexit64.loopexit, %.loopexit64.loopexit.split-lp, %.loopexit.split-lp65
  %lpad.phi68 = phi { ptr, i32 } [ %lpad.loopexit.split-lp67, %.loopexit.split-lp65 ], [ %lpad.loopexit91, %.loopexit64.loopexit ], [ %lpad.loopexit.split-lp92, %.loopexit64.loopexit.split-lp ] ; 2 uses
  %i.dc = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.x
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %.loopexit64
  call void @_ZdlPv(ptr noundef %i.dc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %.loopexit64, %.loopexit86, %.loopexit.split-lp87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  %.pn = phi { ptr, i32 } [ %lpad.phi68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp87 ], [ %lpad.loopexit, %.loopexit86 ], [ %lpad.phi68, %.loopexit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.loopexit

.loopexit95:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

.loopexit.split-lp96:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47.peel
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

.loopexit69.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit69

.loopexit69.loopexit.split-lp:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48.peel
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit69

.loopexit.split-lp70:                             ; preds = %.loopexit100
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit69

.loopexit69:                                      ; preds = %.loopexit69.loopexit, %.loopexit69.loopexit.split-lp, %.loopexit.split-lp70
  %lpad.phi73 = phi { ptr, i32 } [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ], [ %lpad.loopexit101, %.loopexit69.loopexit ], [ %lpad.loopexit.split-lp102, %.loopexit69.loopexit.split-lp ] ; 2 uses
  %i.de = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.z
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %.loopexit69
  call void @_ZdlPv(ptr noundef %i.de) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

end_hunk_1
