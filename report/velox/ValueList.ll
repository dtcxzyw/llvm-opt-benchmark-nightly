Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ValueList?download=true
inline.NumInlined: 171
inline.NumDeleted: 99
begin_hunk_0_@_ZN8facebook5velox19HashStringAllocator11InputStream9readBytesEPhi:bb.a

._crit_edge.loopexit:                             ; preds = %bb.e, %bb.d
  %i.bp = phi ptr [ %i.ao, %bb.d ], [ %i.bi, %bb.e ]
  %.lcssa34 = phi ptr [ %i.ai, %bb.d ], [ %i.bc, %bb.e ]
  %.lcssa33.in = phi i32 [ %i.ah, %bb.d ], [ %i.bb, %bb.e ]
  %.lcssa33 = sext i32 %.lcssa33.in to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit
  %i.bq = phi ptr [ %.pre, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ %i.bp, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %1, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ %.lcssa34, %._crit_edge.loopexit ]
  %.lcssa22 = phi i64 [ %i.w, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ 0, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ %i.aa, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ %.lcssa33, %._crit_edge.loopexit ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %.lcssa22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.lcssa, ptr align 1 %i.br, i64 %.lcssa, i1 false)
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !62
  %i.bt = add nsw i64 %i.bs, %.lcssa
  store i64 %i.bt, ptr %i.a, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN8facebook5velox19HashStringAllocator11InputStream8nextViewEl(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %_ZNK8facebook5velox19HashStringAllocator11InputStream5atEndEv.exit, label %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit

_ZNK8facebook5velox19HashStringAllocator11InputStream5atEndEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !60   ; 2 uses
  %i.i = and i32 %i.h, 1073741824
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK8facebook5velox19HashStringAllocator11InputStream5atEndEv.exit
  %i.j = and i32 %i.h, 536870911
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !58
  %i.q = load i32, ptr %i.n, align 4, !tbaa !60   ; 2 uses
  %i.r = and i32 %i.q, 1073741824
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %i.s = and i32 %i.q, 536870911                  ; 2 uses
  %i.t = add nsw i32 %i.s, -8
  %i.u = select i1 %.not.i.i.i, i32 %i.s, i32 %i.t
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  store i64 %i.v, ptr %i.c, align 8, !tbaa !61
  br label %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit

_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit: ; preds = %bb.a, %bb.b
  %i.w = phi i64 [ 0, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.x = phi i64 [ %i.v, %bb.b ], [ %i.d, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = sub nsw i64 %i.x, %i.w
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %1) ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.w
  %i.ac = add nsw i64 %.sroa.speculated, %i.w
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox19HashStringAllocator11InputStream5atEndEv.exit, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit
  %.sroa.3.0 = phi ptr [ %i.ab, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ null, %_ZNK8facebook5velox19HashStringAllocator11InputStream5atEndEv.exit ]
  %.sroa.0.0 = phi i64 [ %.sroa.speculated, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ 0, %_ZNK8facebook5velox19HashStringAllocator11InputStream5atEndEv.exit ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox19HashStringAllocator11InputStream4skipEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !60   ; 2 uses
  %i.i = and i32 %i.h, 1073741824
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 536870911
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !58
  %i.q = load i32, ptr %i.n, align 4, !tbaa !60   ; 2 uses
  %i.r = and i32 %i.q, 1073741824
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %i.s = and i32 %i.q, 536870911                  ; 2 uses
  %i.t = add nsw i32 %i.s, -8
  %i.u = select i1 %.not.i.i.i, i32 %i.s, i32 %i.t
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  store i64 %i.v, ptr %i.c, align 8, !tbaa !61
  store i64 0, ptr %i.a, align 8, !tbaa !62
  br label %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit

_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.promoted14.i = phi i64 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %.promoted.i = phi i64 [ %i.d, %bb.a ], [ %i.b, %bb.b ], [ %i.v, %bb.c ]
  %i.w = sext i32 %1 to i64                       ; 3 uses
  %i.x = sub nsw i64 %.promoted.i, %.promoted14.i ; 2 uses
  %.not.not15.i = icmp slt i64 %i.x, %i.w
  br i1 %.not.not15.i, label %.lr.ph.i, label %_ZN8facebook5velox19HashStringAllocator11InputStream8skipImplEl.exit

.lr.ph.i:                                         ; preds = %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.promoted19.i = load ptr, ptr %i.y, align 8, !tbaa !57 ; 2 uses
  %.pre.i = load i32, ptr %.promoted19.i, align 4, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.aa = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.al, %bb.f ] ; 2 uses
  %i.ab = phi ptr [ %.promoted19.i, %.lr.ph.i ], [ %i.aj, %bb.f ]
  %i.ac = phi i64 [ %i.x, %.lr.ph.i ], [ %i.aq, %bb.f ]
  %.016.i = phi i64 [ %i.w, %.lr.ph.i ], [ %i.ae, %bb.f ]
  %i.ad = and i32 %i.aa, 1073741824
  %.not.i1 = icmp eq i32 %i.ad, 0
  br i1 %.not.i1, label %bb.e, label %bb.f, !prof !65

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox19HashStringAllocator11InputStream8skipImplElE18veloxCheckFailArgs, ptr noundef nonnull @.str.12) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ae = sub nsw i64 %.016.i, %i.ac              ; 3 uses
  %i.af = and i32 %i.aa, 536870911
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 4 uses
  store ptr %i.aj, ptr %i.y, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.z, align 8, !tbaa !58
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !60 ; 3 uses
  %i.am = and i32 %i.al, 1073741824
  %.not.i.i.i2 = icmp eq i32 %i.am, 0
  %i.an = and i32 %i.al, 536870911                ; 2 uses
  %i.ao = add nsw i32 %i.an, -8
  %i.ap = select i1 %.not.i.i.i2, i32 %i.an, i32 %i.ao
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !61
  store i64 0, ptr %i.a, align 8, !tbaa !62
  %.not.not.i = icmp sgt i64 %i.ae, %i.aq
  br i1 %.not.not.i, label %bb.d, label %_ZN8facebook5velox19HashStringAllocator11InputStream8skipImplEl.exit

_ZN8facebook5velox19HashStringAllocator11InputStream8skipImplEl.exit: ; preds = %bb.f, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit
  %.0.lcssa.i = phi i64 [ %i.w, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ %i.ae, %bb.f ]
  %.lcssa.i = phi i64 [ %.promoted14.i, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ 0, %bb.f ]
  %i.ar = add nsw i64 %.lcssa.i, %.0.lcssa.i
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox19HashStringAllocator11InputStream8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  call void @_ZN8facebook5velox19HashStringAllocator6Header8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  invoke void @_ZN8facebook5velox19HashStringAllocator6Header8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNK8facebook5velox9ByteRange8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc7 unwind label %bb.e

.noexc7:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !125
  %i.f = load ptr, ptr %3, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  store ptr %i.f, ptr %2, align 16, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %4, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  store ptr %i.k, ptr %i.j, align 16, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %5, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  store ptr %i.p, ptr %i.o, align 16, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !16
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.15, i64 64, i64 3549, ptr nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !125
  %i.t = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.y = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ad = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.e:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.f:                                             ; preds = %.noexc7
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.f
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ak, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.aq = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.av = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @_ZN8facebook5velox19HashStringAllocator6Header8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZNK8facebook5velox9ByteRange8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #5

declare void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !49}
!1 = distinct !{!1, !49}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !6, i64 16}
!15 = !{!14, !11, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!14, !13, i64 8}
!18 = !{!"p1 _ZTSN8facebook5velox19HashStringAllocator6HeaderE", !10, i64 0}
!19 = !{!"_ZTSN8facebook5velox19HashStringAllocator8PositionE", !18, i64 0, !11, i64 8}
!20 = !{!"_ZTSN8facebook5velox9aggregate9ValueListE", !18, i64 0, !19, i64 8, !18, i64 24, !19, i64 32, !7, i64 48, !7, i64 52, !13, i64 56}
!21 = !{!20, !18, i64 0}
!22 = !{!"bool", !6, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!18, !18, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!20, !18, i64 24}
!28 = !{!20, !7, i64 48}
!29 = !{!20, !13, i64 56}
!30 = !{!"p1 _ZTSN8facebook5velox11StreamArenaE", !10, i64 0}
!31 = !{!"p1 _ZTSN8facebook5velox9ByteRangeE", !10, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIN8facebook5velox9ByteRangeESaIS2_EE", !34, i64 0}
!36 = !{!"_ZTSN8facebook5velox16ByteOutputStreamE", !30, i64 0, !22, i64 8, !22, i64 9, !22, i64 10, !22, i64 11, !22, i64 12, !35, i64 16, !13, i64 40, !31, i64 48, !13, i64 56}
!37 = !{!36, !30, i64 0}
!38 = !{!"_ZTSN8facebook5velox9ByteRangeE", !11, i64 0, !13, i64 8, !13, i64 16}
!39 = !{!38, !13, i64 16}
!40 = !{!38, !13, i64 8}
!41 = !{!38, !11, i64 0}
!42 = !{i64 0, i64 8, !25, i64 8, i64 8, !26}
!43 = !{!32, !31, i64 0}
!44 = !{!32, !31, i64 16}
!45 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !10, i64 0}
!46 = !{!13, !13, i64 0}
!47 = !{!"vtable pointer", !5, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"_ZTSN8facebook5velox15ByteInputStreamE", !31, i64 8}
!51 = !{!"_ZTSN8facebook5velox19HashStringAllocator11InputStreamE", !50, i64 0, !18, i64 16, !18, i64 24, !38, i64 32}
!52 = !{!"_ZTSN8facebook5velox9aggregate15ValueListReaderE", !7, i64 0, !7, i64 4, !13, i64 8, !51, i64 16, !51, i64 72, !13, i64 128, !7, i64 136}
!53 = !{!52, !7, i64 0}
!54 = !{!52, !7, i64 4}
!55 = !{!52, !13, i64 8}
!56 = !{!51, !18, i64 16}
!57 = !{!51, !18, i64 24}
!58 = !{!51, !11, i64 32}
!59 = !{!"_ZTSN8facebook5velox19HashStringAllocator6HeaderE", !7, i64 0}
!60 = !{!59, !7, i64 0}
!61 = !{!51, !13, i64 40}
!62 = !{!51, !13, i64 48}
!63 = !{!50, !31, i64 8}
!64 = !{!52, !7, i64 136}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = !{!12, !11, i64 0}
!67 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!68 = !{!"p1 _ZTSN8facebook5velox6memory10AllocationE", !10, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE", !71, i64 0}
!73 = !{!"p1 _ZTSN8facebook5velox6memory20ContiguousAllocationE", !10, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !76, i64 0}
!78 = !{!"_ZTSN8facebook5velox6memory14AllocationPoolE", !67, i64 0, !72, i64 8, !77, i64 32, !11, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88}
!79 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkISt4pairIKPvmEEE", !10, i64 0}
!80 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !13, i64 0}
!81 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPSt4pairIKPvmEEE", !13, i64 0}
!82 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKPvmEEEEELb1EEE", !80, i64 0, !81, i64 8}
!83 = !{!"_ZTSN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPvmvvvEEEE", !79, i64 0, !82, i64 8}
!84 = !{!"_ZTSN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPvmvvvEEEE", !83, i64 0}
!85 = !{!"_ZTSN5folly11F14ValueMapIPvmNS_23HeterogeneousAccessHashIS1_vEENS_26HeterogeneousAccessEqualToIS1_vEESaISt4pairIKS1_mEEEE", !84, i64 0}
!86 = !{!"_ZTSN5folly10F14FastMapIPvmNS_23HeterogeneousAccessHashIS1_vEENS_26HeterogeneousAccessEqualToIS1_vEESaISt4pairIKS1_mEEEE", !85, i64 0}
!87 = !{!"_ZTSN8facebook5velox19HashStringAllocator5StateE", !6, i64 0, !6, i64 36696, !13, i64 37080, !13, i64 37088, !13, i64 37096, !19, i64 37104, !18, i64 37120, !78, i64 37128, !86, i64 37224, !13, i64 37248, !22, i64 37256}
!88 = !{!87, !22, i64 37256}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!36, !31, i64 48}
!91 = !{!20, !7, i64 52}
!92 = !{!"p1 int", !10, i64 0}
!93 = !{!"p1 long", !10, i64 0}
!94 = !{!"_ZTSSt22_Optional_payload_baseIPKmE", !6, i64 0, !22, i64 8}
!95 = !{!"_ZTSSt17_Optional_payloadIPKmLb1ELb1ELb1EE", !94, i64 0}
!96 = !{!"_ZTSSt14_Optional_baseIPKmLb1ELb1EE", !95, i64 0}
!97 = !{!"_ZTSSt8optionalIPKmE", !96, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!99 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !98, i64 0}
!100 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !99, i64 0}
!101 = !{!"_ZTSSt6vectorIiSaIiEE", !100, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!103 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !102, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseImSaImEE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorImSaImEE", !104, i64 0}
!106 = !{!"_ZTSN8facebook5velox13DecodedVectorE", !7, i64 0, !92, i64 8, !10, i64 16, !93, i64 24, !97, i64 32, !45, i64 48, !22, i64 56, !22, i64 57, !22, i64 58, !22, i64 59, !22, i64 60, !22, i64 61, !7, i64 64, !101, i64 72, !105, i64 96}
!107 = !{!106, !45, i64 48}
!108 = !{!106, !93, i64 24}
!109 = !{!106, !22, i64 58}
!110 = !{!106, !22, i64 59}
!111 = !{!106, !92, i64 8}
!112 = !{!7, !7, i64 0}
!113 = !{!106, !7, i64 64}
!114 = distinct !{!114, !49}
!115 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!116 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !115, i64 0}
!117 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0, !116, i64 8}
!118 = !{!117, !45, i64 0}
!119 = distinct !{null, null}
!120 = !{!52, !13, i64 128}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.peeled.count", i32 1}
!123 = distinct !{!123, i1 false, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!124 = distinct !{!124, !123, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!125 = !{!124}
end_hunk_0
