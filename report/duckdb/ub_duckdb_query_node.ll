Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_query_node?download=true
inline.NumInlined: 1548
inline.NumDeleted: 830
begin_hunk_0_@_ZNK6duckdb7CTENode4CopyEv:.noexc.i
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10SelectNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(240) initializes((0, 9), (16, 40)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !305 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb9QueryNodeE, i64 16), ptr %0, align 8, !tbaa !99
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6duckdb24CommonTableExpressionMapC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20
  resume { ptr, i32 } %i.d

_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb10SelectNodeE, i64 16), ptr %0, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.f, align 8, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.e, i8 0, i64 105, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb10SelectNode8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !335 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::vector.234", align 8   ; 9 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 42 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.duckdb::SQLIdentifier", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !168
  %.not435 = icmp eq ptr %i.l, null
  br i1 %.not435, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !344
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %i.q)
  br label %bb.fl

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 36 uses
  store i64 0, ptr %i.v, align 8, !tbaa !94
  store i8 0, ptr %i.u, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZNK6duckdb24CommonTableExpressionMap8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.w)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %7, align 8, !tbaa !96     ; 6 uses
  %i.y = icmp eq ptr %i.x, %i.u
  %i.z = load ptr, ptr %8, align 8, !tbaa !96     ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.ab, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !94 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.z, align 1, !tbaa !95
  store i8 %i.af, ptr %i.x, align 1, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.z, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8, !tbaa !94
  %i.ah = load ptr, ptr %7, align 8, !tbaa !96
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !95
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.z, ptr %7, align 8, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !95
  store <2 x i64> %i.ak, ptr %i.v, align 8, !tbaa !95
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.al = load i64, ptr %i.u, align 8, !tbaa !95
  store ptr %i.z, ptr %7, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !95
  store <2 x i64> %i.an, ptr %i.v, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %8, align 8, !tbaa !96
  store i64 %i.al, ptr %i.aa, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aa, ptr %8, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ao = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.x, %bb.i ], [ %i.aa, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !94
  store i8 0, ptr %i.ao, align 1, !tbaa !95
  %i.aq = load ptr, ptr %8, align 8, !tbaa !96    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.at = load i64, ptr %i.v, align 8, !tbaa !94
  %i.au = add i64 %i.at, -4611686018427387897
  %i.av = icmp ult i64 %i.au, 7
  br i1 %i.av, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !176
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !177
  %.not516 = icmp eq ptr %i.az, %i.ba
  br i1 %.not516, label %.preheader, label %.lr.ph505

.lr.ph505:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  br label %bb.l

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !154
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !158
  %.not518 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not518, label %._crit_edge, label %.lr.ph507

.lr.ph507:                                        ; preds = %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 22
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.ah

bb.k:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit123
  %.036504 = phi i64 [ 0, %.lr.ph505 ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit123 ] ; 3 uses
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_14ResultModifierESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %.036504)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !180
  %i.bw = icmp eq i8 %i.bv, 3
  br i1 %i.bw, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit123

bb.o:                                             ; preds = %bb.n
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_14ResultModifierESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %.036504)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.by = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bz = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb14ResultModifier4CastINS_16DistinctModifierEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.by)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ca = load i64, ptr %i.v, align 8, !tbaa !94
  %i.cb = add i64 %i.ca, -4611686018427387895
  %i.cc = icmp ult i64 %i.cb, 9
  br i1 %i.cc, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i112: ; preds = %bb.r
  %i.cd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 5 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !153
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 5 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !153
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit123, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit115
  %i.cj = load i64, ptr %i.v, align 8, !tbaa !94
  %i.ck = and i64 %i.cj, -4
  %i.cl = icmp eq i64 %i.ck, 4611686018427387900
  br i1 %i.cl, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i116: ; preds = %bb.s
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i116
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !154
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !158 ; 2 uses
  %.not517 = icmp eq ptr %i.cn, %i.co
  br i1 %.not517, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119._crit_edge, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !157 ; 3 uses
  %.not.i128.peel = icmp eq ptr %i.cp, null
  br i1 %.not.i128.peel, label %.noexc.i416, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel, !prof !97

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel: ; preds = %bb.t
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !99
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.cp)
          to label %bb.u unwind label %.loopexit.split-lp542.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel
  %i.ct = load i64, ptr %i.bb, align 8, !tbaa !94 ; 2 uses
  %i.cu = load i64, ptr %i.v, align 8, !tbaa !94
  %i.cv = sub i64 4611686018427387903, %i.cu
  %i.cw = icmp ult i64 %i.cv, %i.ct
  br i1 %i.cw, label %.loopexit546, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.u
  %i.cx = load ptr, ptr %9, align 8, !tbaa !96
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cx, i64 noundef %i.ct)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.cz = load ptr, ptr %9, align 8, !tbaa !96    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bc
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  call void @_ZdlPv(ptr noundef %i.cz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !154
  %i.dc = load ptr, ptr %i.ce, align 8, !tbaa !158
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = icmp ugt i64 %i.df, 8
  br i1 %i.dg, label %.lr.ph.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119.preheader
  %i.dh = load i64, ptr %i.v, align 8, !tbaa !94
  %i.di = and i64 %i.dh, -2
  %i.dj = icmp eq i64 %i.di, 4611686018427387902
  br i1 %i.dj, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119._crit_edge
  %i.dk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.peel.next:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.035503 = phi i64 [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel ] ; 4 uses
  %i.dl = load i64, ptr %i.v, align 8, !tbaa !94
  %i.dm = and i64 %i.dl, -2
  %i.dn = icmp eq i64 %i.dm, 4611686018427387902
  br i1 %i.dn, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i124: ; preds = %.lr.ph.peel.next
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i124
  %.pre571 = load ptr, ptr %i.ce, align 8, !tbaa !158 ; 2 uses
  %.pre = load ptr, ptr %i.cg, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dp = ptrtoint ptr %.pre to i64
  %i.dq = ptrtoint ptr %.pre571 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.035503, ptr %i.i, align 8, !tbaa !163
  store i64 %i.ds, ptr %i.j, align 8, !tbaa !163
  %.not.i.i.i = icmp ult i64 %.035503, %i.ds
  br i1 %.not.i.i.i, label %bb.aa, label %.noexc.i412, !prof !181

.noexc.i412:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit127
  %i.dt = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.du, ptr %6, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 55, ptr %i.d, align 8, !tbaa !163
  %i.dv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

bb.v:                                             ; preds = %.noexc.i412
  store ptr %i.dv, ptr %6, align 8, !tbaa !96
  %i.dw = load i64, ptr %i.d, align 8, !tbaa !163 ; 3 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dv, ptr noundef nonnull align 1 dereferenceable(55) @.str.45, i64 55, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !94
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  store i8 0, ptr %i.dy, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.z unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i412
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i.i.i = phi i1 [ false, %bb.w ], [ true, %bb.v ] ; 2 uses
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eb = load ptr, ptr %6, align 8, !tbaa !96    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.du
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.eb) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.0.i.i.i, label %bb.y, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.0.i.i.i, label %bb.y, label %.body

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dt) #20
  br label %.body

bb.z:                                             ; preds = %bb.w
  unreachable

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.pre571, i64 %.035503
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !157 ; 3 uses
  %.not.i128 = icmp eq ptr %i.ee, null
  br i1 %.not.i128, label %.noexc.i416, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !97

.noexc.i416:                                      ; preds = %bb.t, %bb.aa
  %i.ef = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.eg, ptr %5, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 49, ptr %i.c, align 8, !tbaa !163
  %i.eh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

bb.ab:                                            ; preds = %.noexc.i416
  store ptr %i.eh, ptr %5, align 8, !tbaa !96
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !163 ; 3 uses
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.eh, ptr noundef nonnull align 1 dereferenceable(49) @.str.42, i64 49, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !94
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  store i8 0, ptr %i.ek, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.af unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i416
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.i.i = phi i1 [ false, %bb.ac ], [ true, %bb.ab ] ; 2 uses
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.en = load ptr, ptr %5, align 8, !tbaa !96    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.eg
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.en) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0.i.i, label %bb.ae, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0.i.i, label %bb.ae, label %.body

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ef) #20
  br label %.body

bb.af:                                            ; preds = %bb.ac
  unreachable

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.aa
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !99
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.er = load ptr, ptr %i.eq, align 8
  invoke void %i.er(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %bb.ag unwind label %.loopexit.split-lp542.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.es = load i64, ptr %i.bb, align 8, !tbaa !94 ; 2 uses
  %i.et = load i64, ptr %i.v, align 8, !tbaa !94
  %i.eu = sub i64 4611686018427387903, %i.et
  %i.ev = icmp ult i64 %i.eu, %i.es
  br i1 %i.ev, label %.loopexit546, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit546:                                     ; preds = %bb.u, %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #22
          to label %.noexc131 unwind label %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc131:                                        ; preds = %.loopexit546
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ag
  %i.ew = load ptr, ptr %9, align 8, !tbaa !96
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ew, i64 noundef %i.es)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ey = load ptr, ptr %9, align 8, !tbaa !96    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.bc
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

end_hunk_0
begin_hunk_1_@_ZNK6duckdb10SelectNode8ToStringB5cxx11Ev:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  call void @_ZdlPv(ptr noundef %i.ka) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.bl
  %.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.bl ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.loopexit.split-lp

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %bb.be, %._crit_edge
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !157
  %.not437 = icmp eq ptr %i.ke, null
  br i1 %.not437, label %bb.by, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.kf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %bb.bq unwind label %bb.bv     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !99
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  %i.ki = load ptr, ptr %i.kh, align 8
  invoke void %i.ki(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %i.kf)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.kj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 7)
          to label %.noexc198 unwind label %bb.bw, !noalias !348 ; 6 uses

.noexc198:                                        ; preds = %bb.br
  %i.kk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.kk, ptr %16, align 8, !tbaa !91, !alias.scope !348
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !96 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 5 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %bb.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

bb.bs:                                            ; preds = %.noexc198
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !94 ; 3 uses
  %i.kq = icmp ult i64 %i.kp, 16
  call void @llvm.assume(i1 %i.kq)
  %i.kr = add nuw nsw i64 %i.kp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kk, ptr noundef nonnull align 8 dereferenceable(1) %i.km, i64 %i.kr, i1 false)
  br label %bb.bt

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %.noexc198
  store ptr %i.kl, ptr %16, align 8, !tbaa !96, !alias.scope !348
  %i.ks = load i64, ptr %i.km, align 8, !tbaa !95
  store i64 %i.ks, ptr %i.kk, align 8, !tbaa !95, !alias.scope !348
  %.phi.trans.insert.i196 = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %.pre.i197 = load i64, ptr %.phi.trans.insert.i196, align 8, !tbaa !94
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %bb.bs
  %i.kt = phi i64 [ %i.kp, %bb.bs ], [ %.pre.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.kt, ptr %i.kv, align 8, !tbaa !94, !alias.scope !348
  store ptr %i.km, ptr %i.kj, align 8, !tbaa !96
  store i64 0, ptr %i.ku, align 8, !tbaa !94
  store i8 0, ptr %i.km, align 8, !tbaa !95
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !94 ; 2 uses
  %i.kx = load i64, ptr %i.v, align 8, !tbaa !94
  %i.ky = sub i64 4611686018427387903, %i.kx
  %i.kz = icmp ult i64 %i.ky, %i.kw
  br i1 %i.kz, label %bb.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i200

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #22
          to label %.noexc201 unwind label %bb.bx

.noexc201:                                        ; preds = %bb.bu
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i200: ; preds = %bb.bt
  %i.la = load ptr, ptr %16, align 8, !tbaa !96
  %i.lb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.la, i64 noundef %i.kw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit203 unwind label %bb.bx ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i200
  %i.lc = load ptr, ptr %16, align 8, !tbaa !96   ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.kk
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit203
  call void @_ZdlPv(ptr noundef %i.lc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  %i.le = load ptr, ptr %17, align 8, !tbaa !96   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  call void @_ZdlPv(ptr noundef %i.le) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.by

bb.bv:                                            ; preds = %bb.bq, %bb.bp
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

bb.bw:                                            ; preds = %bb.br
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i200, %bb.bu
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lk = load ptr, ptr %16, align 8, !tbaa !96   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.kk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.bx
  call void @_ZdlPv(ptr noundef %i.lk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.bw
  %.pn69 = phi { ptr, i32 } [ %i.li, %bb.bw ], [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %i.lj, %bb.bx ] ; 2 uses
  %i.lm = load ptr, ptr %17, align 8, !tbaa !96   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  call void @_ZdlPv(ptr noundef %i.lm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %bb.bv
  %.pn69.pn = phi { ptr, i32 } [ %i.lh, %bb.bv ], [ %.pn69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.loopexit.split-lp

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.bo
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 5 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !187
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !187
  %i.lu = icmp eq ptr %i.lr, %i.lt
  br i1 %i.lu, label %bb.cx, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lv = load i64, ptr %i.v, align 8, !tbaa !94
  %i.lw = add i64 %i.lv, -4611686018427387894
  %i.lx = icmp ult i64 %i.lw, 10
  br i1 %i.lx, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i216: ; preds = %bb.bz
  %i.ly = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i216
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !189 ; 2 uses
  %i.ma = load ptr, ptr %i.lq, align 8, !tbaa !190 ; 2 uses
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = sdiv exact i64 %i.md, 48
  %i.mf = icmp ugt i64 %i.me, 1                   ; 4 uses
  br i1 %i.mf, label %bb.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit219
  %i.mg = load i64, ptr %i.v, align 8, !tbaa !94
  %i.mh = add i64 %i.mg, -4611686018427387889
  %i.mi = icmp ult i64 %i.mh, 15
  br i1 %i.mi, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i220: ; preds = %bb.ca
  %i.mj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i220._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i220._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i220
  %.pre572 = load ptr, ptr %i.ls, align 8, !tbaa !189
  %.pre573 = load ptr, ptr %i.lq, align 8, !tbaa !190
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i220._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit219
  %i.mk = phi ptr [ %.pre573, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i220._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223_crit_edge ], [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit219 ]
  %i.ml = phi ptr [ %.pre572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i220._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223_crit_edge ], [ %i.lz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit219 ]
  %.not519 = icmp eq ptr %i.ml, %i.mk
  br i1 %.not519, label %._crit_edge515, label %.lr.ph514

.lr.ph514:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  br label %bb.cb

._crit_edge515:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit223
  br i1 %i.mf, label %bb.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit276

bb.cb:                                            ; preds = %.lr.ph514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit231
  %.033513 = phi i64 [ 0, %.lr.ph514 ], [ %i.qa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit231 ] ; 3 uses
  %i.mp = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, i64 noundef %.033513)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cc:                                            ; preds = %bb.cb
  %.not72 = icmp eq i64 %.033513, 0
  br i1 %.not72, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit227, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mq = load i64, ptr %i.v, align 8, !tbaa !94
  %i.mr = icmp eq i64 %i.mq, 4611686018427387903
  br i1 %i.mr, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i224: ; preds = %bb.cd
  %i.ms = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit227 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i224, %bb.cc
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !195
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit227
  %i.mw = load i64, ptr %i.v, align 8, !tbaa !94
  %i.mx = and i64 %i.mw, -2
  %i.my = icmp eq i64 %i.mx, 4611686018427387902
  br i1 %i.my, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i269.invoke

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit227
  br i1 %i.mf, label %bb.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit235

bb.cg:                                            ; preds = %bb.cf
  %i.mz = load i64, ptr %i.v, align 8, !tbaa !94
  %i.na = icmp eq i64 %i.mz, 4611686018427387903
  br i1 %i.na, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i232: ; preds = %bb.cg
  %i.nb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit235 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i232, %bb.cf
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !196 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 3 uses
  %.not438508 = icmp eq ptr %i.nd, %i.ne
  br i1 %.not438508, label %._crit_edge512, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit239.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit239.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit235
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %.pre575 = load ptr, ptr %i.lp, align 8, !tbaa !158 ; 2 uses
  %.pre574 = load ptr, ptr %i.mm, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !163 ; 3 uses
  %i.nh = ptrtoint ptr %.pre574 to i64
  %i.ni = ptrtoint ptr %.pre575 to i64
  %i.nj = sub i64 %i.nh, %i.ni
  %i.nk = ashr exact i64 %i.nj, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.ng, ptr %i.f, align 8, !tbaa !163
  store i64 %i.nk, ptr %i.g, align 8, !tbaa !163
  %.not.i.i.i240.peel = icmp ult i64 %i.ng, %i.nk
  br i1 %.not.i.i.i240.peel, label %bb.ch, label %.noexc.i420, !prof !181

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit239.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.pre575, i64 %i.ng
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !157 ; 3 uses
  %.not.i249.peel = icmp eq ptr %i.nm, null
  br i1 %.not.i249.peel, label %.noexc.i424, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit258.peel, !prof !97

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit258.peel: ; preds = %bb.ch
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !99
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.np = load ptr, ptr %i.no, align 8
  invoke void %i.np(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(56) %i.nm)
          to label %bb.ci unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit258.peel
  %i.nq = load i64, ptr %i.mn, align 8, !tbaa !94 ; 2 uses
  %i.nr = load i64, ptr %i.v, align 8, !tbaa !94
  %i.ns = sub i64 4611686018427387903, %i.nr
  %i.nt = icmp ult i64 %i.ns, %i.nq
  br i1 %i.nt, label %.loopexit563, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i259.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i259.peel: ; preds = %bb.ci
  %i.nu = load ptr, ptr %18, align 8, !tbaa !96
  %i.nv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.nu, i64 noundef %i.nq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit262.peel unwind label %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit262.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i259.peel
  %i.nw = load ptr, ptr %18, align 8, !tbaa !96   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.mo
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i264.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i264.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit262.peel
  call void @_ZdlPv(ptr noundef %i.nw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit262.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i264.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.ny = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.nd) #24 ; 2 uses
  %.not438.peel = icmp eq ptr %i.ny, %i.ne
  br i1 %.not438.peel, label %._crit_edge512, label %.lr.ph511.peel.next

._crit_edge512:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit235
  br i1 %i.mf, label %bb.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit231

.lr.ph511.peel.next:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  %.sroa.0427.0509 = phi ptr [ %i.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0427.0509, i64 32
  %i.oa = load i64, ptr %i.v, align 8, !tbaa !94
  %i.ob = and i64 %i.oa, -2
  %i.oc = icmp eq i64 %i.ob, 4611686018427387902
  br i1 %i.oc, label %.loopexit555.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i236

.loopexit555.invoke:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit119._crit_edge, %bb.s, %bb.r, %.lr.ph.peel.next, %bb.ai, %bb.cv, %bb.cg, %bb.ce, %bb.cd, %.lr.ph511.peel.next, %bb.ca, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ff, %bb.dy, %bb.dt, %bb.cy, %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #22
          to label %.loopexit555.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit555.cont:                                ; preds = %.loopexit555.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i236: ; preds = %.lr.ph511.peel.next
  %i.od = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i236
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.oe = load i64, ptr %i.nz, align 8, !tbaa !163 ; 3 uses
  %i.of = load ptr, ptr %i.mm, align 8, !tbaa !154
  %i.og = load ptr, ptr %i.lp, align 8, !tbaa !158 ; 2 uses
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = ashr exact i64 %i.oj, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.oe, ptr %i.f, align 8, !tbaa !163
  store i64 %i.ok, ptr %i.g, align 8, !tbaa !163
  %.not.i.i.i240 = icmp ult i64 %i.oe, %i.ok
  br i1 %.not.i.i.i240, label %bb.co, label %.noexc.i420, !prof !181

.noexc.i420:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit239.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit239
  %i.ol = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.om, ptr %3, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 55, ptr %i.b, align 8, !tbaa !163
  %i.on = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.cj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i241 ; 3 uses

bb.cj:                                            ; preds = %.noexc.i420
  store ptr %i.on, ptr %3, align 8, !tbaa !96
  %i.oo = load i64, ptr %i.b, align 8, !tbaa !163 ; 3 uses
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.on, ptr noundef nonnull align 1 dereferenceable(55) @.str.45, i64 55, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !94
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oo
  store i8 0, ptr %i.oq, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void @__cxa_throw(ptr nonnull %i.ol, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.cn unwind label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i241: ; preds = %.noexc.i420
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0.i.i.i244 = phi i1 [ false, %bb.ck ], [ true, %bb.cj ] ; 2 uses
  %i.os = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ot = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.om
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245: ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef %i.ot) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.0.i.i.i244, label %bb.cm, label %.body247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.0.i.i.i244, label %bb.cm, label %.body247

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i241
  %.pn8.i.i.i242 = phi { ptr, i32 } [ %i.or, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i241 ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246 ], [ %i.os, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245 ]
  call void @__cxa_free_exception(ptr %i.ol) #20
  br label %.body247

bb.cn:                                            ; preds = %bb.ck
  unreachable

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.oe
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !157 ; 3 uses
  %.not.i249 = icmp eq ptr %i.ow, null
  br i1 %.not.i249, label %.noexc.i424, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit258, !prof !97

.noexc.i424:                                      ; preds = %bb.ch, %bb.co
  %i.ox = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.oy, ptr %2, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 49, ptr %i.a, align 8, !tbaa !163
  %i.oz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.cp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i250 ; 3 uses

bb.cp:                                            ; preds = %.noexc.i424
  store ptr %i.oz, ptr %2, align 8, !tbaa !96
  %i.pa = load i64, ptr %i.a, align 8, !tbaa !163 ; 3 uses
  store i64 %i.pa, ptr %i.oy, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.oz, ptr noundef nonnull align 1 dereferenceable(49) @.str.42, i64 49, i1 false)
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.pa, ptr %i.pb, align 8, !tbaa !94
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pa
  store i8 0, ptr %i.pc, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  invoke void @__cxa_throw(ptr nonnull %i.ox, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ct unwind label %bb.cr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i250: ; preds = %.noexc.i424
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.0.i.i253 = phi i1 [ false, %bb.cq ], [ true, %bb.cp ] ; 2 uses
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pf = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.oy
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.pf) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i.i253, label %bb.cs, label %.body247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255: ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i.i253, label %bb.cs, label %.body247

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i250
  %.pn9.i.i251 = phi { ptr, i32 } [ %i.pd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i250 ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255 ], [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254 ]
  call void @__cxa_free_exception(ptr %i.ox) #20
  br label %.body247

bb.ct:                                            ; preds = %bb.cq
  unreachable

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit258: ; preds = %bb.co
  %i.ph = load ptr, ptr %i.ow, align 8, !tbaa !99
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 64
  %i.pj = load ptr, ptr %i.pi, align 8
  invoke void %i.pj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(56) %i.ow)
          to label %bb.cu unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit258
  %i.pk = load i64, ptr %i.mn, align 8, !tbaa !94 ; 2 uses
  %i.pl = load i64, ptr %i.v, align 8, !tbaa !94
  %i.pm = sub i64 4611686018427387903, %i.pl
  %i.pn = icmp ult i64 %i.pm, %i.pk
  br i1 %i.pn, label %.loopexit563, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i259

.loopexit563:                                     ; preds = %bb.ci, %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #22
          to label %.noexc260 unwind label %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc260:                                        ; preds = %.loopexit563
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i259: ; preds = %bb.cu
  %i.po = load ptr, ptr %18, align 8, !tbaa !96
  %i.pp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.po, i64 noundef %i.pk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit262 unwind label %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i259
  %i.pq = load ptr, ptr %18, align 8, !tbaa !96   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.mo
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit262
  call void @_ZdlPv(ptr noundef %i.pq) #21
end_hunk_1
