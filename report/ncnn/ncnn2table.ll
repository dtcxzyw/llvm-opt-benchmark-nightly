Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN3npy8read_npyIfEENS_8npy_dataIT_EERSi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.v

bb.l:                                             ; preds = %_ZStneIJKcS0_KjEJS0_S0_S1_EEbRKSt5tupleIJDpT_EERKS2_IJDpT0_EE.exit.thread
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ab) #20
  br label %bb.v

bb.m:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %_ZStneIJKcS0_KjEJS0_S0_S1_EEbRKSt5tupleIJDpT_EERKS2_IJDpT0_EE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !170 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !170 ; 2 uses
  %.not8.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not8.i, label %_ZN3npy9comp_sizeERKSt6vectorImSaImEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.010.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 1, %bb.n ]
  %.sroa.05.09.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.ak, %bb.n ] ; 2 uses
  %i.an = load i64, ptr %.sroa.05.09.i, align 8, !tbaa !217
  %i.ao = mul i64 %i.an, %.010.i                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %i.am
  br i1 %.not.i, label %_ZN3npy9comp_sizeERKSt6vectorImSaImEE.exit, label %.lr.ph.i

_ZN3npy9comp_sizeERKSt6vectorImSaImEE.exit:       ; preds = %.lr.ph.i, %bb.n
  %.0.lcssa.i = phi i64 [ 1, %bb.n ], [ %i.ao, %.lr.ph.i ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %0, i8 0, i64 49, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.o:                                             ; preds = %_ZN3npy9comp_sizeERKSt6vectorImSaImEE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !233, !range !183, !noundef !151
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.at, ptr %i.au, align 8, !tbaa !215
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !162 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !119   ; 5 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 3 uses
  %i.bc = icmp ugt i64 %.0.lcssa.i, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = sub nuw i64 %.0.lcssa.i, %i.bb
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bd)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge unwind label %bb.s

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge:    ; preds = %bb.p
  %.pre = load ptr, ptr %0, align 8, !tbaa !119
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.q:                                             ; preds = %bb.o
  %i.be = icmp ult i64 %.0.lcssa.i, %i.bb
  br i1 %i.be, label %bb.r, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.0.lcssa.i ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.aw, %i.bf
  br i1 %.not.i.i15, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.r
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !162
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.r, %bb.q
  %i.bg = phi ptr [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.ax, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ax, %bb.r ], [ %i.ax, %bb.q ]
  %i.bh = shl i64 %.0.lcssa.i, 2
  %i.bi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %_ZN3npy9comp_sizeERKSt6vectorImSaImEE.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3npy8npy_dataIfED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) #20
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bk = load ptr, ptr %i.aj, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN3npy8header_tD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdlPv(ptr noundef nonnull %i.bk) #37
  br label %_ZN3npy8header_tD2Ev.exit

_ZN3npy8header_tD2Ev.exit:                        ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bl = load ptr, ptr %2, align 8, !tbaa !149   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN3npy8header_tD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN3npy8header_tD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.v:                                             ; preds = %bb.s, %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ah, %bb.l ], [ %i.bj, %bb.s ], [ %i.ag, %bb.k ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.j, %bb.w, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.ac, %bb.i ], [ %.pn, %bb.w ], [ %.pn, %bb.v ], [ %i.ad, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bq = load ptr, ptr %2, align 8, !tbaa !149   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @_ZdlPv(ptr noundef %i.bq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn

bb.x:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #12 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #12 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3npy11read_headerB5cxx11ERSi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"struct.std::array", align 2       ; 5 uses
  %3 = alloca %"struct.std::array.88", align 4    ; 5 uses
  %i.b = tail call i16 @_ZN3npy10read_magicERSi(ptr noundef nonnull align 8 dereferenceable(16) %1)
  switch i16 %i.b, label %bb.d [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i16 0, ptr %2, align 2
  %i.c = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef 2) ; 0 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = zext i16 %i.d to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 0, ptr %3, align 4
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i64 noundef 4) ; 0 uses
  %i.g = load i32, ptr %3, align 4
  %i.h = zext i32 %i.g to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.36)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #20
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit21

bb.g:                                             ; preds = %bb.c, %bb.b
  %.014 = phi i64 [ %i.e, %bb.b ], [ %i.h, %bb.c ] ; 10 uses
  %.not.i.i.i.i = icmp eq i64 %.014, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.g
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.014) #39 ; 4 uses
  store i8 0, ptr %i.k, align 1, !tbaa !58
  %i.l = add nsw i64 %.014, -1                    ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.h, %.noexc, %bb.g
  %.sroa.023.0 = phi ptr [ %i.k, %bb.h ], [ %i.k, %.noexc ], [ null, %bb.g ] ; 7 uses
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.sroa.023.0, i64 noundef %.014)
          to label %bb.i unwind label %bb.o       ; 0 uses

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !230
  %i.q = icmp eq ptr %.sroa.023.0, null           ; 2 uses
  %4 = icmp ne i64 %.014, 0
  %or.cond.i = and i1 %4, %i.q
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.39) #38
          to label %.noexc18 unwind label %bb.p

.noexc18:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %.014, ptr %i.a, align 8, !tbaa !217
  %i.r = icmp samesign ugt i64 %.014, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.p   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i
  store ptr %i.s, ptr %0, align 8, !tbaa !149
  %i.t = load i64, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  store i64 %i.t, ptr %i.p, align 8, !tbaa !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc19, %bb.k
  %i.u = phi i64 [ %i.t, %.noexc19 ], [ %.014, %bb.k ]
  %i.v = phi ptr [ %i.s, %.noexc19 ], [ %i.p, %bb.k ] ; 3 uses
  %trunc = trunc nuw i64 %.014 to i32
  switch i32 %trunc, label %bb.l [
    i32 1, label %.thread
    i32 0, label %bb.m
  ]

.thread:                                          ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %.sroa.023.0, align 1, !tbaa !58
  store i8 %i.w, ptr %i.v, align 1, !tbaa !58
  %i.x = load i64, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !158
  %i.z = load ptr, ptr %0, align 8, !tbaa !149
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %.sroa.023.0, i64 %.014, i1 false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !217
  %.pre36 = load ptr, ptr %0, align 8, !tbaa !149
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %i.ab = phi ptr [ %.pre36, %bb.l ], [ %i.v, %._crit_edge.i.i ]
  %i.ac = phi i64 [ %.pre, %bb.l ], [ %i.u, %._crit_edge.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !158
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %i.q, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  call void @_ZdlPv(ptr noundef nonnull %.sroa.023.0) #37
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %.noexc.i, %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.af, %bb.o ] ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %.sroa.023.0, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIcSaIcEED2Ev.exit21, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %.sroa.023.0) #37
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit21

_ZNSt6vectorIcSaIcEED2Ev.exit21:                  ; preds = %bb.q, %bb.r, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn, %bb.r ], [ %.pn, %bb.q ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3npy12parse_headerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.npy::header_t") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.66", align 8    ; 12 uses
  %3 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 29 uses
  %4 = alloca %"class.std::unordered_map.94", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::vector.66", align 8   ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !158  ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !149
  %i.l = getelementptr i8, ptr %i.k, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !58
  %.not32 = icmp eq i8 %i.n, 10
  br i1 %.not32, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.40)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #20
  br label %bb.cb

bb.e:                                             ; preds = %bb.a
  %i.q = add i64 %i.j, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.q, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #40
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.t, ptr noundef nonnull align 1 dereferenceable(5) @.str.41, i64 5, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.u, align 8, !tbaa !158
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.v, align 1, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.x, ptr noundef nonnull align 1 dereferenceable(13) @.str.42, i64 13, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 13, ptr %i.y, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 61
  store i8 0, ptr %i.z, align 1, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ab, ptr noundef nonnull align 1 dereferenceable(5) @.str.43, i64 5, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 5, ptr %i.ac, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 85
  store i8 0, ptr %i.ad, align 1, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ae = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.g ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %i.ae, ptr %2, align 8, !tbaa !145
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !234
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %3, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ae)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %2, align 8, !tbaa !145   ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i5.i, label %.body, label %bb.h
end_hunk_0
