inline.NumInlined: 5147
inline.NumDeleted: 2292
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK27cmCMakePresetsGraphInternal16MatchesCondition8EvaluateERKSt6vectorISt10unique_ptrINS_13MacroExpanderESt14default_deleteIS3_EESaIS6_EEiRSt8optionalIbE:bb.a
  br label %bb.w

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 528
  store ptr null, ptr %i.al, align 8, !tbaa !158
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 544 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %6, i8 0, i64 522, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %5, align 8, !tbaa !67
  %i.ao = invoke noundef zeroext i1 @_ZN5cmsys17RegularExpression7compileEPKc(ptr noundef nonnull align 8 dereferenceable(560) %6, ptr noundef %i.an)
          to label %_ZN5cmsys17RegularExpression7compileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.p ; 2 uses

_ZN5cmsys17RegularExpression7compileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.o
  br i1 %i.ao, label %bb.q, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %_ZN5cmsys17RegularExpression7compileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = load ptr, ptr %4, align 8, !tbaa !67
  %i.ar = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %6, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(560) %6, i64 noundef 0, i32 noundef 0)
          to label %_ZN5cmsys17RegularExpression4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmj.exit unwind label %bb.r

_ZN5cmsys17RegularExpression4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmj.exit: ; preds = %bb.q
  %.sroa.0.0.insert.ext = zext i1 %i.ar to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %3, align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %_ZN5cmsys17RegularExpression7compileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN5cmsys17RegularExpression4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmj.exit
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !161 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5cmsys17RegularExpressionD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.at) #26
  br label %_ZN5cmsys17RegularExpressionD2Ev.exit

_ZN5cmsys17RegularExpressionD2Ev.exit:            ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.w

bb.u:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.ap, %bb.p ]
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !161 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN5cmsys17RegularExpressionD2Ev.exit28, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.av) #26
  br label %_ZN5cmsys17RegularExpressionD2Ev.exit28

_ZN5cmsys17RegularExpressionD2Ev.exit28:          ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.w:                                             ; preds = %bb.k, %_ZN5cmsys17RegularExpressionD2Ev.exit, %bb.n
  %.116 = phi i1 [ %i.ao, %_ZN5cmsys17RegularExpressionD2Ev.exit ], [ true, %bb.n ], [ false, %bb.k ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !67    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.u
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.az = load i64, ptr %i.u, align 8, !tbaa !70
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.y

bb.x:                                             ; preds = %_ZN5cmsys17RegularExpressionD2Ev.exit28, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN5cmsys17RegularExpressionD2Ev.exit28 ], [ %i.aj, %bb.m ] ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !67    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.u
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.x
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !70
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn.pn.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.z

bb.y:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.217 = phi i1 [ %.116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.f ], [ false, %bb.d ]
  %i.bf = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.y
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !70
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.217

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.r, %bb.e ]
  %i.bj = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.d
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.z
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !70
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK27cmCMakePresetsGraphInternal17AnyAllOfCondition8EvaluateERKSt6vectorISt10unique_ptrINS_13MacroExpanderESt14default_deleteIS3_EESaIS6_EEiRSt8optionalIbE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(2) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional.32", align 2  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not27 = icmp eq ptr %i.b, %i.d
  br i1 %.not27, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !164, !range !27
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.017.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.t, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i8 0, ptr %i.e, align 1, !tbaa !156
  %i.g = load ptr, ptr %.sroa.017.028, align 8, !tbaa !171 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %4) ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.l, align 1, !tbaa !156
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.e, align 1, !tbaa !156, !range !27, !noundef !28
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.o, align 1, !tbaa !156
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %4, align 2, !range !27
  %i.q = load i8, ptr %i.f, align 8, !range !27   ; 2 uses
  %i.r = icmp eq i8 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %4, align 2
  store i16 %i.s, ptr %3, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %bb.g, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.j

._crit_edge:                                      ; preds = %bb.h, %.._crit_edge_crit_edge
  %i.u = phi i8 [ %.pre, %.._crit_edge_crit_edge ], [ %i.q, %bb.h ]
  %5 = xor i8 %i.u, 1
  %.sroa.0.0.insert.ext = zext nneg i8 %5 to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %3, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.3 = phi i1 [ true, %._crit_edge ], [ %i.k, %bb.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK27cmCMakePresetsGraphInternal12NotCondition8EvaluateERKSt6vectorISt10unique_ptrINS_13MacroExpanderESt14default_deleteIS3_EESaIS6_EEiRSt8optionalIbE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) initializes((1, 2)) %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  store i8 0, ptr %i.a, align 1, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !156
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.a, align 1, !tbaa !156, !range !27, !noundef !28
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %3, align 1, !tbaa !172, !range !27, !noundef !28
  %i.k = xor i8 %i.j, 1
  store i8 %i.k, ptr %3, align 1, !tbaa !172
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN19cmCMakePresetsGraph15ConfigurePreset18VisitPresetInheritERKNS_6PresetE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::optional<cmCMakePresetsGraph::CacheVariable>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::optional<cmCMakePresetsGraph::CacheVariable>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !68
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit

_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit49

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 280
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  br label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit49

_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit49: ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit50

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  br label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit50

_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit50: ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit49, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.q = load i8, ptr %i.p, align 4, !tbaa !173, !range !27, !noundef !28
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.w = load i8, ptr %i.v, align 4, !tbaa !173, !range !27, !noundef !28
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.aa = load i64, ptr %i.z, align 8
  store i64 %i.aa, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !68
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit51

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 424
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
  br label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit51

_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit51: ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !68
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit52

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
  br label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit52

_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit52: ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit51, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.am = load i64, ptr %i.al, align 8, !tbaa !68
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit53

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit52
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
  br label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit53

_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit53: ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit52, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.l, label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit54

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit53
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  br label %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit54

_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit54: ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit53, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 536
  tail call fastcc void @_ZN12_GLOBAL__N_110InheritMapIN13cmDiagnostics18DiagnosticCategoryEbEEvRSt3mapIT_T0_St4lessIS4_ESaISt4pairIKS4_S5_EEERKSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 584
  tail call fastcc void @_ZN12_GLOBAL__N_110InheritMapIN13cmDiagnostics18DiagnosticCategoryEbEEvRSt3mapIT_T0_St4lessIS4_ESaISt4pairIKS4_S5_EEERKSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 633
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !156, !range !27, !noundef !28
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN12_GLOBAL__N_120InheritOptionalValueIbEEvRSt8optionalIT_ERKS3_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit54
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 632
  %.val46 = load i16, ptr %i.bd, align 8
  store i16 %.val46, ptr %i.bc, align 8
  br label %_ZN12_GLOBAL__N_120InheritOptionalValueIbEEvRSt8optionalIT_ERKS3_.exit

_ZN12_GLOBAL__N_120InheritOptionalValueIbEEvRSt8optionalIT_ERKS3_.exit: ; preds = %_ZN12_GLOBAL__N_113InheritStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_.exit54, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %.not8.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not8.i, label %_ZN12_GLOBAL__N_110InheritMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEEEEvRSt3mapIT_T0_St4lessISC_ESaISt4pairIKSC_SD_EEERKSK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_120InheritOptionalValueIbEEvRSt8optionalIT_ERKS3_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEESt4lessIS5_ESaISt4pairIKS5_S9_EEE6insertERKSE_.exit.i
  %.sroa.05.09.i = phi ptr [ %i.bn, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEESt4lessIS5_ESaISt4pairIKS5_S9_EEE6insertERKSE_.exit.i ], [ %i.bg, %_ZN12_GLOBAL__N_120InheritOptionalValueIbEEvRSt8optionalIT_ERKS3_.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %i.bj = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIN19cmCMakePresetsGraph13CacheVariableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(104) %i.bi) ; 2 uses
  %i.bk = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEESt4lessIS5_ESaISt4pairIKS5_S9_EEE6insertERKSE_.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.be, ptr %2, align 8, !tbaa !175
  %i.bm = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIN19cmCMakePresetsGraph13CacheVariableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_M_insert_IRKSC_NSI_11_Alloc_nodeEEESt17_Rb_tree_iteratorISC_EPSt18_Rb_tree_node_baseSQ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef %i.bl, ptr noundef nonnull %i.bk, ptr noundef nonnull align 8 dereferenceable(104) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEESt4lessIS5_ESaISt4pairIKS5_S9_EEE6insertERKSE_.exit.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEESt4lessIS5_ESaISt4pairIKS5_S9_EEE6insertERKSE_.exit.i: ; preds = %bb.n, %.lr.ph.i
  %i.bn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.09.i) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.bn, %i.bh
  br i1 %.not.i, label %_ZN12_GLOBAL__N_110InheritMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEEEEvRSt3mapIT_T0_St4lessISC_ESaISt4pairIKSC_SD_EEERKSK_.exit, label %.lr.ph.i
end_hunk_0
