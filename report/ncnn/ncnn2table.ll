Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN3npy7pyparse10parse_dictENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.lf = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.dg
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  call void @_ZdlPv(ptr noundef %i.lf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.lh = load ptr, ptr %i.dd, align 8, !tbaa !245 ; 2 uses
  %i.li = load ptr, ptr %5, align 8, !tbaa !246   ; 3 uses
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = sdiv exact i64 %i.ll, 40
  %i.ln = icmp ult i64 %i.hr, %i.lm
  br i1 %i.ln, label %bb.ba, label %._crit_edge271, !llvm.loop !485

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.ch:                                            ; preds = %bb.bz
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lq = load ptr, ptr %15, align 8, !tbaa !149  ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.do
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.ch
  call void @_ZdlPv(ptr noundef %i.lq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.cg
  %.pn = phi { ptr, i32 } [ %i.lo, %bb.cg ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.lp, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.by, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %i.kf, %bb.by ], [ %lpad.loopexit.split-lp454, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ls = load ptr, ptr %12, align 8, !tbaa !149  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.di
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef %i.ls) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.bf
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.bf ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn.pn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.lu = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.dg
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  call void @_ZdlPv(ptr noundef %i.lu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %.loopexit.split-lp172

.loopexit.split-lp172:                            ; preds = %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %.pn44.pn159, %bb.ao ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.pn42, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93 ], [ %.pn40, %.body ], [ %lpad.loopexit.split-lp473, %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ck

bb.cj:                                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, %bb.a
  ret void

bb.ck:                                            ; preds = %.loopexit.split-lp172, %bb.aa, %bb.z, %bb.w, %bb.v
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %.loopexit.split-lp172 ], [ %i.co, %bb.w ], [ %i.cr, %bb.aa ], [ %i.cq, %bb.z ], [ %i.cn, %bb.v ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #20
  resume { ptr, i32 } %.pn44.pn.pn.pn.pn

bb.cl:                                            ; preds = %bb.am, %bb.y
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3npy7pyparse9parse_strERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !149    ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !58
  %i.d = icmp eq i8 %i.c, 39
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !158  ; 4 uses
  %i.g = getelementptr i8, ptr %i.b, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58
  %i.j = icmp eq i8 %i.i, 39
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i64 noundef 1, i64 noundef 0) #38, !noalias !494
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = add i64 %i.f, -2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !230, !alias.scope !494
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add i64 %i.f, -1
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %i.o) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !494
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !217, !noalias !494
  %i.p = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !149, !alias.scope !494
  %i.r = load i64, ptr %i.a, align 8, !tbaa !217, !noalias !494
  store i64 %i.r, ptr %i.m, align 8, !tbaa !58, !alias.scope !494
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = phi ptr [ %i.q, %.noexc10.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !58
  store i8 %i.t, ptr %i.s, align 1, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.n, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.u = load i64, ptr %i.a, align 8, !tbaa !217, !noalias !494 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !158, !alias.scope !494
  %i.w = load ptr, ptr %0, align 8, !tbaa !149, !alias.scope !494
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !494
  ret void

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.56)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.y) #20
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3npy11parse_descrENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef align 8 %0) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.e = icmp ult i64 %i.d, 3
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.57)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #20
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !149    ; 2 uses
  %2 = load i16, ptr %i.h, align 1                ; 3 uses
  %3 = trunc i16 %2 to i8
  %4 = lshr i16 %2, 8
  %5 = trunc nuw i16 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !230, !alias.scope !498
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  %i.k = add i64 %i.d, -2                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !498
  store i64 %i.k, ptr %i.b, align 8, !tbaa !217, !noalias !498
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !149, !alias.scope !498
  %i.n = load i64, ptr %i.b, align 8, !tbaa !217, !noalias !498
  store i64 %i.n, ptr %i.i, align 8, !tbaa !58, !alias.scope !498
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %cond = icmp eq i64 %i.k, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.j, align 1, !tbaa !58
  store i8 %i.o, ptr %i.i, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.p = phi ptr [ %i.m, %._crit_edge.i.i.i.thread ], [ %i.i, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %bb.e, %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !217, !noalias !498 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !158, !alias.scope !498
  %i.s = load ptr, ptr %1, align 8, !tbaa !149, !alias.scope !498
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !498
  switch i8 %3, label %bb.g [
    i8 124, label %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 62, label %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 60, label %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  ]

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.58)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %bb.t, %bb.i, %bb.g
  %i.v = phi ptr [ %i.x, %bb.i ], [ %i.u, %bb.g ], [ %i.bo, %bb.t ]
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #20
  br label %.body

_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  switch i8 %5, label %bb.i [
    i8 117, label %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 105, label %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 102, label %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 99, label %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  ]

bb.i:                                             ; preds = %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  %i.x = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.59)
          to label %.invoke unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.x) #20
  br label %.body

_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread: ; preds = %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread, %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread, %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread, %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  %i.z = load ptr, ptr %1, align 8, !tbaa !149    ; 6 uses
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !158 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ashr i64 %i.aa, 2                       ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  %i.af = and i64 %i.aa, -4
  %scevgep.i = getelementptr i8, ptr %i.z, i64 %i.af
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %.lr.ph.i.i.i.i.preheader.i
  %.058.i.i.i.i.i = phi i64 [ %i.aw, %bb.n ], [ %i.ad, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.038.057.i.i.i.i.i = phi ptr [ %i.av, %bb.n ], [ %i.z, %.lr.ph.i.i.i.i.preheader.i ] ; 9 uses
  %i.ag = load i8, ptr %.sroa.038.057.i.i.i.i.i, align 1, !tbaa !58
  %i.ah = sext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -58
  %isdigit.i = icmp ult i32 %i.ai, -10
  br i1 %isdigit.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !58
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -58
  %isdigit3.i = icmp ult i32 %i.am, -10
  br i1 %isdigit3.i, label %.loopexit.loopexit.split.loop.exit41, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !58
  %i.ap = sext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -58
  %isdigit4.i = icmp ult i32 %i.aq, -10
  br i1 %isdigit4.i, label %.loopexit.loopexit.split.loop.exit39, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !58
  %i.at = sext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -58
  %isdigit5.i = icmp ult i32 %i.au, -10
  br i1 %isdigit5.i, label %.loopexit.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 4
  %i.aw = add nsw i64 %.058.i.i.i.i.i, -1
  %i.ax = icmp sgt i64 %.058.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !497

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n, %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  %.sroa.038.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread ], [ %scevgep.i, %bb.n ] ; 6 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.038.0.lcssa.i.i.i.i.i to i64
  %i.ay = sub i64 %i.ac, %.pre-phi.i.i.i.i.i
  switch i64 %i.ay, label %.thread [
    i64 3, label %bb.o
    i64 2, label %bb.q
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.az = load i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, align 1, !tbaa !58
  %i.ba = sext i8 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -58
  %isdigit6.i = icmp ult i32 %i.bb, -10
  br i1 %isdigit6.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i
  %.sroa.038.1.i.i.i.i.i = phi ptr [ %i.bc, %bb.p ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.bd = load i8, ptr %.sroa.038.1.i.i.i.i.i, align 1, !tbaa !58
  %i.be = sext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -58
  %isdigit7.i = icmp ult i32 %i.bf, -10
  br i1 %isdigit7.i, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i
  %.sroa.038.2.i.i.i.i.i = phi ptr [ %i.bg, %bb.r ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bh = load i8, ptr %.sroa.038.2.i.i.i.i.i, align 1, !tbaa !58
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -58
  %isdigit8.i = icmp ult i32 %i.bj, -10
  %spec.select.i.i.i.i.i = select i1 %isdigit8.i, ptr %.sroa.038.2.i.i.i.i.i, ptr %i.ab
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 3
  br label %.loopexit

.loopexit.loopexit.split.loop.exit39:             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit41:             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit39, %.loopexit.loopexit.split.loop.exit41, %bb.s, %bb.q, %bb.o
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i, %bb.q ], [ %spec.select.i.i.i.i.i, %bb.s ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %bb.o ], [ %i.bm, %.loopexit.loopexit.split.loop.exit41 ], [ %i.bl, %.loopexit.loopexit.split.loop.exit39 ], [ %i.bk, %.loopexit.loopexit.split.loop.exit ], [ %.sroa.038.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bn = icmp eq ptr %i.ab, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br i1 %i.bn, label %.thread, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.bo = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull @.str.60)
          to label %.invoke unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bo) #20
  br label %.body

.thread:                                          ; preds = %._crit_edge.i.i.i.i.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bq = tail call ptr @__errno_location() #44   ; 6 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !161 ; 2 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !161
  %i.bs = call noundef i64 @__isoc23_strtoul(ptr noundef %i.z, ptr noundef nonnull %i.a, i32 noundef 10)
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.bu = icmp eq ptr %i.bt, %i.z
  br i1 %i.bu, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.thread
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.66) #38
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %.critedge.i.i, %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load i32, ptr %i.bq, align 4, !tbaa !161
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.y, label %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.y:                                             ; preds = %bb.x
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !161
  br label %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.body

bb.z:                                             ; preds = %.thread
  %i.by = load i32, ptr %i.bq, align 4, !tbaa !161
  switch i32 %i.by, label %bb.ac [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.ab
  ]

.critedge.i.i:                                    ; preds = %bb.z
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.66) #38
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %.critedge.i.i
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !161
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bz = load ptr, ptr %1, align 8, !tbaa !149   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.i
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.bz) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sroa.2.0.insert.ext = zext i16 %2 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.sroa.36.0.insert.ext = shl i64 %i.bs, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.36.0.insert.ext, %.sroa.2.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

bb.ad:                                            ; preds = %.invoke
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ad, %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %bb.u, %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.w, %bb.h ], [ %i.bp, %bb.u ], [ %i.cb, %bb.ad ], [ %i.bv, %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  %i.cc = load ptr, ptr %1, align 8, !tbaa !149   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.i
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.cc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.d
  %.pn10 = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3npy7pyparse11parse_tupleENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.66") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN3npy7pyparse4trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %2, align 8, !tbaa !149    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !158  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  switch i64 %i.j, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.f, align 1, !tbaa !58
  store i8 %i.l, ptr %i.c, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.m = load i64, ptr %i.i, align 8, !tbaa !158  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !158
  %i.o = load ptr, ptr %1, align 8, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !58
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !149
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !58
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !58
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !58
  store ptr %i.f, ptr %1, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !58
  store <2 x i64> %i.w, ptr %i.v, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %2, align 8, !tbaa !149
  store i64 %i.t, ptr %i.g, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %2, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.x = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.c, %bb.g ], [ %i.g, %bb.h ], [ %i.f, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !158
  store i8 0, ptr %i.x, align 1, !tbaa !58
  %i.z = load ptr, ptr %2, align 8, !tbaa !149    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.z) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ac = load ptr, ptr %1, align 8, !tbaa !149   ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !58
  %i.ae = icmp eq i8 %i.ad, 40
  br i1 %i.ae, label %bb.i, label %bb.w

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !158 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !58
  %i.ak = icmp eq i8 %i.aj, 41
  br i1 %i.ak, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.al = icmp eq i64 %i.ag, 0
  br i1 %i.al, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i64 noundef 1, i64 noundef 0) #38
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.j
  %i.am = add i64 %i.ag, -2
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !230, !alias.scope !501
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ap = add i64 %i.ag, -1
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.am, i64 %i.ap) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !501
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !217, !noalias !501
  %i.aq = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.aq, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc6 unwind label %bb.v    ; 2 uses

.noexc6:                                          ; preds = %.noexc10.i.i
  store ptr %i.ar, ptr %3, align 8, !tbaa !149, !alias.scope !501
  %i.as = load i64, ptr %i.b, align 8, !tbaa !217, !noalias !501
  store i64 %i.as, ptr %i.an, align 8, !tbaa !58, !alias.scope !501
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.at = phi ptr [ %i.ar, %.noexc6 ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !58
  store i8 %i.au, ptr %i.at, align 1, !tbaa !58
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.ao, i64 %spec.select.i.i.i, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.av = load i64, ptr %i.b, align 8, !tbaa !217, !noalias !501 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !158, !alias.scope !501
end_hunk_0
