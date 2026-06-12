inline.NumInlined: 191
inline.NumDeleted: 98
begin_hunk_0_@_ZN2kc19f_is_known_ptr_typeEPNS_7impl_IDE:bb.a

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01316 = phi ptr [ %.013, %bb.d ], [ %.01315, %bb.c ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01316, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !233
  %i.bl = tail call noundef zeroext i1 @_ZNK2kc20impl_abstract_phylum2eqEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %0) ; 3 uses
  br i1 %i.bl, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.d, %.lr.ph, %bb.c
  %.lcssa = phi i1 [ false, %bb.c ], [ %i.bl, %.lr.ph ], [ %i.bl, %bb.d ]
  ret i1 %.lcssa
}

declare noundef ptr @_ZN2kc14NilphylumnamesEv() local_unnamed_addr #2

declare noundef ptr @_ZN2kc15ConsphylumnamesEPNS_7impl_IDEPNS_16impl_phylumnamesE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2kc21rewrite_withcasesinfoEPNS_18impl_withcasesinfoE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.d = icmp eq i32 %i.c, 221
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.j = icmp eq i32 %i.i, 222
  br i1 %i.j, label %bb.c, label %bb.d

common.ret14:                                     ; preds = %bb.d, %bb.e, %bb.c
  %common.ret14.op = phi ptr [ %i.z, %bb.c ], [ null, %bb.e ], [ %0, %bb.d ]
  ret ptr %common.ret14.op

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !235
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !236
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 4 dereferenceable(4) @_ZN2kc10base_rviewE)
  %i.x = tail call noundef ptr @_ZN2kc12WithcaseinfoEPNS_26impl_patternrepresentationES1_PNS_10impl_CtextE(ptr noundef %i.w, ptr noundef %i.o, ptr noundef %i.q)
  %i.y = tail call noundef ptr @_ZN2kc21rewrite_withcasesinfoEPNS_18impl_withcasesinfoE(ptr noundef %i.s)
  %i.z = tail call noundef ptr @_ZN2kc17ConswithcasesinfoEPNS_17impl_withcaseinfoEPNS_18impl_withcasesinfoE(ptr noundef %i.x, ptr noundef %i.y)
  br label %common.ret14

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ad = icmp eq i32 %i.ac, 220
  br i1 %i.ad, label %common.ret14, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.26, i32 noundef 1102, ptr noundef nonnull @.str.1)
  br label %common.ret14
}

declare noundef ptr @_ZN2kc17ConswithcasesinfoEPNS_17impl_withcaseinfoEPNS_18impl_withcasesinfoE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc12WithcaseinfoEPNS_26impl_patternrepresentationES1_PNS_10impl_CtextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN2kc45pos_of_sole_dollar_or_pattern_in_patternchainEPNS_17impl_patternchainE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2kc47t_pos_of_sole_dollar_or_pattern_in_patternchainEPNS_17impl_patternchainEii(ptr noundef %0, i32 noundef -2, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN2kc47t_pos_of_sole_dollar_or_pattern_in_patternchainEPNS_17impl_patternchainEii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.e = icmp eq i32 %i.d, 74
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !237  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.j = add nsw i32 %2, 1
  %i.k = tail call noundef i32 @_ZN2kc47t_pos_of_sole_dollar_or_pattern_in_patternchainEPNS_17impl_patternchainEii(ptr noundef %i.i, i32 noundef %1, i32 noundef %i.j) ; 6 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.p = icmp eq i32 %i.o, 79
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %i.k, -1
  %i.r = select i1 %i.q, i32 -1, i32 %2
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.v = icmp eq i32 %i.u, 77
  br i1 %i.v, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !242  ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.ab = icmp eq i32 %i.aa, 80
  br i1 %i.ab, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !246 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ah = icmp eq i32 %i.ag, 7
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !246
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !250 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %i.aq = icmp eq i32 %i.ap, 172
  br i1 %i.aq, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %i.au = icmp eq i32 %i.at, 185
  br i1 %i.au, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = icmp sgt i32 %i.k, -1
  %. = select i1 %i.av, i32 -1, i32 %2
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.aw = icmp sgt i32 %i.k, -1
  %i.ax = select i1 %i.aw, i32 -1, i32 %2
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l, %bb.f, %bb.c, %bb.b, %bb.a
  %.5 = phi i32 [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.c ], [ %i.r, %bb.e ], [ %., %bb.k ], [ %i.ax, %bb.l ], [ %i.k, %bb.j ], [ %i.k, %bb.i ], [ %1, %bb.b ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2kc20f_getidentfromstringB5cxx11EPPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !251
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !252
  store i8 0, ptr %i.a, align 8, !tbaa !139
  %i.c = load ptr, ptr %1, align 8, !tbaa !253    ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !139   ; 3 uses
  %i.e = sext i8 %i.d to i32
  %i.f = tail call i32 @isalnum(i32 noundef %i.e) #12
  %.not = icmp ne i32 %i.f, 0
  %i.g = icmp eq i8 %i.d, 95
  %or.cond = or i1 %i.g, %.not
  br i1 %or.cond, label %.critedge, label %switch.early.test

.critedge:                                        ; preds = %._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.h = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.c, %._crit_edge.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !253
  %i.j = load i8, ptr %i.h, align 1, !tbaa !139
  %i.k = load i64, ptr %i.b, align 8, !tbaa !252  ; 4 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !141    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.a:                                             ; preds = %.critedge
  %i.o = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %2 = load i64, ptr %i.a, align 8, !tbaa !139
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.a
  %3 = phi i64 [ %2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %bb.a ]
  %i.p = icmp ugt i64 %i.l, %3
  br i1 %i.p, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc21
  %i.q = phi ptr [ %.pre.i.i, %.noexc21 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 %i.j, ptr %i.r, align 1, !tbaa !139
  store i64 %i.l, ptr %i.b, align 8, !tbaa !252
  %i.s = load ptr, ptr %0, align 8, !tbaa !141
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store i8 0, ptr %i.t, align 1, !tbaa !139
  %i.u = load ptr, ptr %1, align 8, !tbaa !253    ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !139   ; 2 uses
  %i.w = sext i8 %i.v to i32
  %i.x = tail call i32 @isalnum(i32 noundef %i.w) #12
  %.not14 = icmp ne i32 %i.x, 0
  %i.y = icmp eq i8 %i.v, 95
  %or.cond16 = or i1 %i.y, %.not14
  br i1 %or.cond16, label %.critedge, label %.critedge19

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !141    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !139
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

switch.early.test:                                ; preds = %._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25
  %i.ad = phi i8 [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25 ], [ %i.d, %._crit_edge.i.i ]
  %i.ae = phi ptr [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25 ], [ %i.c, %._crit_edge.i.i ] ; 2 uses
  switch i8 %i.ad, label %bb.d [
    i8 95, label %.critedge19
    i8 0, label %.critedge19
  ]

bb.d:                                             ; preds = %switch.early.test
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %1, align 8, !tbaa !253
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !139
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !252 ; 4 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !141   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

bb.e:                                             ; preds = %bb.d
  %i.al = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.al)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.d
  %4 = load i64, ptr %i.a, align 8, !tbaa !139
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22, %bb.e
  %5 = phi i64 [ %4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22 ], [ 15, %bb.e ]
  %i.am = icmp ugt i64 %i.ai, %5
  br i1 %i.am, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ah, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.f
  %.pre.i.i23 = load ptr, ptr %0, align 8, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22, %.noexc24
  %i.an = phi ptr [ %.pre.i.i23, %.noexc24 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah
  store i8 %i.ag, ptr %i.ao, align 1, !tbaa !139
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !252
  %i.ap = load ptr, ptr %0, align 8, !tbaa !141
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ai
  store i8 0, ptr %i.aq, align 1, !tbaa !139
  %i.ar = load ptr, ptr %1, align 8, !tbaa !253   ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !139 ; 2 uses
  %i.at = sext i8 %i.as to i32
  %i.au = tail call i32 @isalnum(i32 noundef %i.at) #12
  %.fr34 = freeze i32 %i.au
  %.not13 = icmp eq i32 %.fr34, 0
  br i1 %.not13, label %switch.early.test, label %.critedge19

.critedge19:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25, %switch.early.test, %switch.early.test, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZN2kc18f_ID_of_declaratorEPNS_18impl_ac_declaratorE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc13AcParDeclDeclEPNS_30impl_ac_declaration_specifiersEPNS_18impl_ac_declaratorEPNS_34impl_ac_constant_expression_optionE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc24Noac_constant_expressionEv() local_unnamed_addr #2

declare noundef ptr @_ZN2kc7WarningEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc29Consac_declaration_specifiersEPNS_29impl_ac_declaration_specifierEPNS_30impl_ac_declaration_specifiersE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc18AcDeclSpecTypeSpecEPNS_22impl_ac_type_specifierE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc10AcTypeSpecEPNS_7impl_IDE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc28Nilac_declaration_specifiersEv() local_unnamed_addr #2

declare noundef ptr @_ZN2kc12AcDeclaratorEPNS_22impl_ac_pointer_optionEPNS_18impl_ac_ref_optionEPNS_25impl_ac_direct_declaratorE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc9NopointerEv() local_unnamed_addr #2

declare noundef ptr @_ZN2kc7AcNoRefEv() local_unnamed_addr #2

declare noundef ptr @_ZN2kc14AcDirectDeclIdEPNS_7impl_IDE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN2kcL16f_operatorofpathEPNS_9impl_pathE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.d = icmp eq i32 %i.c, 212
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.l = icmp eq i32 %i.k, 211
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.36, i32 noundef 897, ptr noundef nonnull @.str.1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.n, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN2kcL17f_operatorofpathsEPNS_10impl_pathsE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.d = icmp eq i32 %i.c, 214
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !221  ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.f), !inline_history !254
  %i.j = icmp eq i32 %i.i, 212
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %_ZN2kcL16f_operatorofpathEPNS_9impl_pathE.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.f), !inline_history !254
  %i.r = icmp eq i32 %i.q, 211
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181
  br label %_ZN2kcL16f_operatorofpathEPNS_9impl_pathE.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.36, i32 noundef 897, ptr noundef nonnull @.str.1)
  br label %_ZN2kcL16f_operatorofpathEPNS_9impl_pathE.exit

bb.g:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.x = icmp eq i32 %i.w, 213
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noundef ptr @_ZN2kc9f_emptyIdEv()
  br label %_ZN2kcL16f_operatorofpathEPNS_9impl_pathE.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.37, i32 noundef 876, ptr noundef nonnull @.str.1)
  br label %_ZN2kcL16f_operatorofpathEPNS_9impl_pathE.exit

_ZN2kcL16f_operatorofpathEPNS_9impl_pathE.exit:   ; preds = %bb.f, %bb.e, %bb.c, %bb.i, %bb.h
  %.0 = phi ptr [ null, %bb.i ], [ %i.y, %bb.h ], [ %i.n, %bb.c ], [ %i.t, %bb.e ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
end_hunk_0
