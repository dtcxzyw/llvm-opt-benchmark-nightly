inline.NumInlined: 5612
inline.NumDeleted: 2717
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6duckdb6Parser18StripUnicodeSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
          to label %.noexc172 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc172:                                        ; preds = %bb.bn
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ke = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.74, i64 noundef 1)
          to label %.noexc173 unwind label %.loopexit ; 0 uses

.noexc173:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.kf = load i64, ptr %.sroa.01.017.i, align 8, !tbaa !336
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.01.017.i, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !338
  %i.ki = add i64 %i.kh, %i.kf                    ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.01.017.i, i64 16 ; 2 uses
  %.not.i167 = icmp eq ptr %i.kj, %.sroa.21.4
  br i1 %.not.i167, label %bb.bf, label %bb.bj

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp.i:                             ; preds = %bb.bm
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.kk = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.if
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i: ; preds = %bb.bo
  call void @_ZdlPv(ptr noundef %i.kk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.km = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.il
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  call void @_ZdlPv(ptr noundef %i.km) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN6duckdbL20ReplaceUnicodeSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_RNS_6vectorINS_12UnicodeSpaceELb1ESaISA_EEE.exit

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.bi
  %i.ko = landingpad { ptr, i32 }
          cleanup
  %i.kp = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.il
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %bb.bp
  call void @_ZdlPv(ptr noundef %i.kp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

_ZN6duckdbL20ReplaceUnicodeSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_RNS_6vectorINS_12UnicodeSpaceELb1ESaISA_EEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, %.thread
  %.not.i.i.i174 = icmp eq ptr %.sroa.0177.5, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorIN6duckdb12UnicodeSpaceESaIS1_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN6duckdbL20ReplaceUnicodeSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_RNS_6vectorINS_12UnicodeSpaceELb1ESaISA_EEE.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0177.5) #28
  br label %_ZNSt6vectorIN6duckdb12UnicodeSpaceESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12UnicodeSpaceESaIS1_EED2Ev.exit: ; preds = %bb.a, %_ZN6duckdbL20ReplaceUnicodeSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_RNS_6vectorINS_12UnicodeSpaceELb1ESaISA_EEE.exit, %bb.bq
  %i.kr = phi i1 [ %.not634, %bb.bq ], [ %.not634, %_ZN6duckdbL20ReplaceUnicodeSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_RNS_6vectorINS_12UnicodeSpaceELb1ESaISA_EEE.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i1 %i.kr

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, %bb.au
  %.sroa.0177.6 = phi ptr [ %.sroa.0177.3, %bb.au ], [ %.sroa.0177.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i ], [ %.sroa.0177.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i ], [ %.sroa.0177.5, %.loopexit ], [ %.sroa.0177.2.ph.ph, %.loopexit.split-lp.loopexit ], [ %.sroa.0177.2.ph.ph255, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.ge, %bb.au ], [ %lpad.phi.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i ], [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit256, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp257, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i175 = icmp eq ptr %.sroa.0177.6, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorIN6duckdb12UnicodeSpaceESaIS1_EED2Ev.exit176, label %bb.br

bb.br:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0177.6) #28
  br label %_ZNSt6vectorIN6duckdb12UnicodeSpaceESaIS1_EED2Ev.exit176

_ZNSt6vectorIN6duckdb12UnicodeSpaceESaIS1_EED2Ev.exit176: ; preds = %.body, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12SplitQueriesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.duckdb::vector.270", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZN6duckdb6Parser8TokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.270") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !381    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !381  ; 2 uses
  %.not72 = icmp eq ptr %i.c, %i.e
  br i1 %.not72, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15, !noalias !383
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

._crit_edge:                                      ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15, !noalias !386 ; 3 uses
  %i.o = icmp ugt i64 %.116, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.c:                                             ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.93, i64 noundef %.116, i64 noundef %i.n) #29
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %._crit_edge.thread, %._crit_edge
  %i.p = phi i64 [ %i.g, %._crit_edge.thread ], [ %i.n, %._crit_edge ]
  %.015.lcssa104 = phi i64 [ 0, %._crit_edge.thread ], [ %.116, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !16, !alias.scope !386
  %i.r = load ptr, ptr %1, align 8, !tbaa !9, !noalias !386
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.015.lcssa104 ; 2 uses
  %i.t = sub nuw i64 %i.p, %.015.lcssa104         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !386
  store i64 %i.t, ptr %i.b, align 8, !tbaa !17, !noalias !386
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc26 unwind label %bb.aa  ; 2 uses

.noexc26:                                         ; preds = %.noexc10.i.i
  store ptr %i.v, ptr %4, align 8, !tbaa !9, !alias.scope !386
  %i.w = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !386
  store i64 %i.w, ptr %i.q, align 8, !tbaa !18, !alias.scope !386
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.x = phi ptr [ %i.v, %.noexc26 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.u
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.s, align 1, !tbaa !18
  store i8 %i.y, ptr %i.x, align 1, !tbaa !18
  br label %bb.u

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EED2Ev.exit51

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %.01574 = phi i64 [ 0, %.lr.ph ], [ %.116, %bb.t ] ; 7 uses
  %.sroa.052.073 = phi ptr [ %i.c, %.lr.ph ], [ %i.bq, %bb.t ] ; 3 uses
  %i.aa = load i8, ptr %.sroa.052.073, align 8, !tbaa !388
  %i.ab = icmp eq i8 %i.aa, 3
  br i1 %i.ab, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.052.073, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !391 ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ah = icmp eq i8 %i.ag, 59
  br i1 %i.ah, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !15, !noalias !392 ; 3 uses
  %i.aj = icmp ugt i64 %.01574, %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i27

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.93, i64 noundef %.01574, i64 noundef %i.ai) #29
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i27: ; preds = %bb.i
  %i.ak = sub i64 %i.ad, %.01574
  store ptr %i.i, ptr %3, align 8, !tbaa !16, !alias.scope !392
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.01574 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %.01574
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.am) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !392
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !17, !noalias !392
  %i.an = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.an, label %.noexc10.i.i29, label %._crit_edge.i.i.i28

.noexc10.i.i29:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i27
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %.loopexit ; 2 uses

.noexc31:                                         ; preds = %.noexc10.i.i29
  store ptr %i.ao, ptr %3, align 8, !tbaa !9, !alias.scope !392
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !392
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !18, !alias.scope !392
  br label %._crit_edge.i.i.i28

._crit_edge.i.i.i28:                              ; preds = %.noexc31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i27
  %i.aq = phi ptr [ %i.ao, %.noexc31 ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i27 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i28
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !18
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !18
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.al, i64 %spec.select.i.i.i, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i28
  %i.as = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !392 ; 2 uses
  store i64 %i.as, ptr %i.j, align 8, !tbaa !15, !alias.scope !392
  %i.at = load ptr, ptr %3, align 8, !tbaa !9, !alias.scope !392
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !392
  invoke void @_ZN6duckdb10StringUtil4TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.n unwind label %.loopexit55

bb.n:                                             ; preds = %bb.m
  %i.av = load i64, ptr %i.j, align 8, !tbaa !15
  switch i64 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i [
    i64 0, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
    i64 4611686018427387903, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
          to label %.noexc33 unwind label %.loopexit.split-lp56

.noexc33:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.n
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %.loopexit55 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !82  ; 6 uses
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !85
  %.not.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !16
  %i.ba = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.i
  br i1 %i.bb, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !15  ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !9
  %i.bf = load i64, ptr %i.i, align 8, !tbaa !18
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !18
  %.pre = load i64, ptr %i.j, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.q
  %i.bg = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bc, %bb.q ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !15
  store ptr %i.i, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %i.j, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !18
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bj, ptr %i.k, align 8, !tbaa !82
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %.loopexit55

.loopexit:                                        ; preds = %.noexc10.i.i29
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit55:                                      ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.r
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp56:                             ; preds = %bb.o
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp56, %.loopexit55
  %lpad.phi59 = phi { ptr, i32 } [ %lpad.loopexit57, %.loopexit55 ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp56 ] ; 2 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.i
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.r
  %i.bm = load i64, ptr %i.ac, align 8, !tbaa !391
  %i.bn = add i64 %i.bm, 1
  %i.bo = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.i
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn22 = phi { ptr, i32 } [ %lpad.phi59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi59, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.ad

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.h, %bb.g
  %.116 = phi i64 [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.01574, %bb.h ], [ %.01574, %bb.g ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.052.073, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.e
  br i1 %.not, label %._crit_edge, label %bb.g

bb.u:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.br = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !386 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !15, !alias.scope !386
  %i.bt = load ptr, ptr %4, align 8, !tbaa !9, !alias.scope !386
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !386
  invoke void @_ZN6duckdb10StringUtil4TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !15 ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit43, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !82 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !85
  %.not.i.i39 = icmp eq ptr %i.by, %i.ca
  br i1 %.not.i.i39, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !16
  %i.cc = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.q
  br i1 %i.cd, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

bb.y:                                             ; preds = %bb.x
  %i.ce = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.cf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i41
end_hunk_0
begin_hunk_1_@_ZN6duckdb23NotImplementedExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_:bb.a
  call void @_ZdlPv(ptr noundef %i.e) #28
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !112

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !108, !noalias !481
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #28
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !481
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !481
  invoke void @_ZN6duckdb23NotImplementedExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Parser10ParseQueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.duckdb::Transformer", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.duckdb::ExtensionCallbackIteratorHelper", align 8 ; 9 uses
  %6 = alloca %"struct.duckdb::ParserOverrideResult", align 8 ; 13 uses
  %7 = alloca %"class.duckdb::unique_ptr.277", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::PostgresParser", align 8 ; 15 uses
  %9 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %10 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %11 = alloca %"class.duckdb::ErrorData", align 8 ; 15 uses
  %12 = alloca %"class.duckdb::PostgresParser", align 8 ; 13 uses
  %13 = alloca %"class.duckdb::ErrorData", align 8 ; 13 uses
  %14 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %15 = alloca %"class.duckdb::ExtensionCallbackIteratorHelper", align 8 ; 9 uses
  %16 = alloca %"struct.duckdb::ParserExtensionParseResult", align 8 ; 9 uses
  %17 = alloca %"class.duckdb::unique_ptr.332", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @_ZN6duckdb11TransformerC1ERNS_13ParserOptionsE(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(25) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !15
  store i8 0, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15
  store i8 0, ptr %i.e, align 8, !tbaa !18
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb6Parser18StripUnicodeSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Parser10ParseQueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.ag
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.eq

bb.f:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.critedge161

.critedge:                                        ; preds = %bb.b
  %i.n = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.e
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.n) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i166: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !484
  %.not285 = icmp eq ptr %i.q, null
  br i1 %.not285, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i166
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNK6duckdb12optional_ptrIKNS_24ExtensionCallbackManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !484
  invoke void @_ZNK6duckdb24ExtensionCallbackManager16ParserExtensionsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ExtensionCallbackIteratorHelper") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %5, align 8, !tbaa !486, !nonnull !149, !align !493 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !494  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !494  ; 2 uses
  %.not286319 = icmp eq ptr %i.t, %i.v
  br i1 %.not286319, label %.thread259, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.k

.thread259:                                       ; preds = %.thread, %bb.i
  call void @_ZN6duckdb31ExtensionCallbackIteratorHelperINS_15ParserExtensionEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ag

bb.j:                                             ; preds = %bb.g, %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.k:                                             ; preds = %.lr.ph, %.thread
  %.sroa.0245.0320 = phi ptr [ %i.t, %.lr.ph ], [ %i.bk, %.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0245.0320, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !496  ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i8, ptr %i.w, align 8, !tbaa !502
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0245.0320, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !505
  invoke void %i.z(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ParserOverrideResult") align 8 %6, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(25) %i.b)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ae = load i8, ptr %6, align 8, !tbaa !468
  %.not288 = icmp eq i8 %i.ae, 0                  ; 2 uses
  br i1 %.not288, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !414   ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !417 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load <2 x ptr>, ptr %i.af, align 8, !tbaa !506
  store <2 x ptr> %i.ak, ptr %0, align 8, !tbaa !506
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !452
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !452
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ag, %bb.o ] ; 2 uses
  %i.an = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !412 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.an) #27, !inline_history !507
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !419

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %bb.o
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i.i.i, label %bb.af, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #28
  br label %bb.af

bb.q:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %bb.n
  %i.at = load i8, ptr %i.w, align 8, !tbaa !502  ; 2 uses
  %i.au = icmp eq i8 %i.at, 2
  br i1 %i.au, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb6Parser24ThrowParserOverrideErrorERNS_20ParserOverrideResultE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %6)
          to label %thread-pre-split unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

thread-pre-split:                                 ; preds = %bb.s
  %.pr = load i8, ptr %i.w, align 8, !tbaa !502
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %bb.r
  %i.aw = phi i8 [ %.pr, %thread-pre-split ], [ %i.at, %bb.r ]
  %cond284 = icmp eq i8 %i.aw, 3
  br i1 %cond284, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN6duckdb6Parser12GetStatementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.277") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ax = load ptr, ptr %7, align 8, !tbaa !412
  %.not287 = icmp eq ptr %i.ax, null
  br i1 %.not287, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit170, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !508
  switch i8 %i.bb, label %.critedge159 [
    i8 11, label %bb.ab
    i8 18, label %bb.ab
    i8 19, label %bb.ab
    i8 30, label %bb.ab
    i8 9, label %bb.ab
    i8 12, label %bb.ab
    i8 21, label %bb.ab
    i8 14, label %bb.ab
    i8 6, label %bb.ab
    i8 25, label %bb.ab
    i8 1, label %bb.ab
    i8 26, label %bb.ab
    i8 5, label %bb.ab
    i8 15, label %bb.ab
    i8 8, label %bb.ab
    i8 17, label %bb.ab
    i8 2, label %bb.ab
    i8 3, label %bb.ab
    i8 28, label %bb.ab
    i8 4, label %bb.ab
    i8 10, label %bb.ab
    i8 20, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %7, align 8, !tbaa !412   ; 3 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i: ; preds = %bb.aa
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.bd) #27, !inline_history !451
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

bb.ab:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  invoke void @_ZN6duckdb6Parser24ThrowParserOverrideErrorERNS_20ParserOverrideResultE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %6)
          to label %.critedge159 unwind label %bb.aa

.critedge159:                                     ; preds = %bb.z, %bb.ab
  %.pr250 = load ptr, ptr %7, align 8, !tbaa !412 ; 3 uses
  %.not.i168 = icmp eq ptr %.pr250, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit170.thread, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i169

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i169: ; preds = %.critedge159
  %i.bh = load ptr, ptr %.pr250, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr250) #27, !inline_history !451
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit170.thread

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit170.thread: ; preds = %.critedge159, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ac

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit170: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.af

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i, %bb.aa, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.x ], [ %i.bc, %bb.aa ], [ %i.bc, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.u, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit170.thread
  call void @_ZN6duckdb20ParserOverrideResultD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0245.0320, i64 40 ; 2 uses
  %.not286 = icmp eq ptr %i.bk, %i.v
  br i1 %.not286, label %.thread259, label %bb.k

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit ], [ %i.av, %bb.t ]
  call void @_ZN6duckdb20ParserOverrideResultD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ad ], [ %i.as, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN6duckdb31ExtensionCallbackIteratorHelperINS_15ParserExtensionEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.eq

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit170, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.p
  call void @_ZN6duckdb20ParserOverrideResultD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN6duckdb31ExtensionCallbackIteratorHelperINS_15ParserExtensionEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.not288, label %.critedge161, label %bb.ag

bb.ag:                                            ; preds = %.thread259, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i166
  %i.bl = load i8, ptr %i.b, align 8, !tbaa !511, !range !148, !noundef !149
  %i.bm = trunc nuw i8 %i.bl to i1
  invoke void @_ZN6duckdb14PostgresParser25SetPreserveIdentifierCaseEb(i1 noundef zeroext %i.bm)
          to label %bb.ah unwind label %bb.d
end_hunk_1
begin_hunk_2_@_ZN6duckdb6Parser10ParseQueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %.not135, label %.thread276, label %bb.bq

bb.bn:                                            ; preds = %bb.bi
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bo:                                            ; preds = %bb.bj
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bp:                                            ; preds = %bb.bz, %bb.ca, %_ZN6duckdb11NumericCastImivEET_T0_.exit172, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bk
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bq:                                            ; preds = %bb.bm
  %i.dv = invoke noundef zeroext i1 @_ZN6duckdb11Transformer18TransformParseTreeEPN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.br unwind label %bb.bp     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0241.0331, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !15
  %i.dy = add i64 %i.dx, -1
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.bs unwind label %bb.bp

bb.bs:                                            ; preds = %bb.br
  %i.ea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %bb.bt unwind label %bb.bp

bb.bt:                                            ; preds = %bb.bs
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i64 %i.dy, ptr %i.eb, align 8, !tbaa !514
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.bu unwind label %bb.bp

bb.bu:                                            ; preds = %bb.bt
  %i.ed = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec)
          to label %bb.bv unwind label %bb.bp

bb.bv:                                            ; preds = %bb.bu
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %.0111332, ptr %i.ee, align 8, !tbaa !515
  %i.ef = load i64, ptr %i.dw, align 8, !tbaa !15
  %i.eg = add i64 %i.ef, %.0111332
  br label %.thread276

bb.bw:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZN6duckdb9ErrorDataC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.eh = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ErrorDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(128) %13) #27 ; 0 uses
  %i.ei = load ptr, ptr %i.cn, align 8, !tbaa !63 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ej, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ei, %bb.bx ] ; 6 uses
  %i.ej = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !9  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.em) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !9  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ep) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #28
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !65

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %bb.bx
  %i.es = load ptr, ptr %i.cm, align 8, !tbaa !56
  %i.et = load i64, ptr %i.co, align 8, !tbaa !57
  %i.eu = shl i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.es, i8 0, i64 %i.eu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.ev = load ptr, ptr %i.cm, align 8, !tbaa !56 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.cp
  br i1 %i.ew, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.ev) #28
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.by, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.ex = load ptr, ptr %i.cq, align 8, !tbaa !9  ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.cr
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ex) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ez = load ptr, ptr %i.cs, align 8, !tbaa !9  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ct
  br i1 %i.fa, label %_ZN6duckdb9ErrorDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ez) #28
  br label %_ZN6duckdb9ErrorDataD2Ev.exit

_ZN6duckdb9ErrorDataD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.fb = load i32, ptr %i.cu, align 8, !tbaa !512 ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %_ZN6duckdb9ErrorDataD2Ev.exit
  %i.fd = add nsw i32 %i.fb, -1
  %i.fe = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.fd)
          to label %_ZN6duckdb11NumericCastImivEET_T0_.exit172 unwind label %bb.bp

_ZN6duckdb11NumericCastImivEET_T0_.exit172:       ; preds = %bb.bz
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %i.fe)
          to label %bb.ca unwind label %bb.bp

bb.ca:                                            ; preds = %_ZN6duckdb11NumericCastImivEET_T0_.exit172
  %i.ff = load i64, ptr %14, align 8
  invoke void @_ZN6duckdb9ErrorData16AddQueryLocationENS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(128) %11, i64 %i.ff)
          to label %bb.cc unwind label %bb.bp

bb.cb:                                            ; preds = %bb.bw
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cf

.thread276:                                       ; preds = %bb.bm, %bb.bv
  %.1112.ph = phi i64 [ %.0111332, %bb.bm ], [ %i.eg, %bb.bv ]
  call void @_ZN6duckdb14PostgresParserD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.df

bb.cc:                                            ; preds = %bb.ca, %_ZN6duckdb9ErrorDataD2Ev.exit
  call void @_ZN6duckdb14PostgresParserD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  invoke void @_ZNK6duckdb12optional_ptrIKNS_24ExtensionCallbackManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  %i.fh = load ptr, ptr %i.p, align 8, !tbaa !484
  invoke void @_ZNK6duckdb24ExtensionCallbackManager16ParserExtensionsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ExtensionCallbackIteratorHelper") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %i.fh)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.fi = load ptr, ptr %15, align 8, !tbaa !486, !nonnull !149, !align !493 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !494 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !494 ; 2 uses
  %.not291321 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not291321, label %._crit_edge.thread, label %.lr.ph325

._crit_edge.thread:                               ; preds = %bb.ce
  call void @_ZN6duckdb31ExtensionCallbackIteratorHelperINS_15ParserExtensionEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %.loopexit444

.lr.ph325:                                        ; preds = %bb.ce
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0241.0331, i64 8 ; 2 uses
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cb, %bb.bp
  %.pn136 = phi { ptr, i32 } [ %i.du, %bb.bp ], [ %i.fg, %bb.cb ]
  call void @_ZN6duckdb14PostgresParserD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %12) #27
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bo
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %bb.cf ], [ %i.dt, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.dh

bb.ch:                                            ; preds = %bb.cc, %bb.cd
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.ci:                                            ; preds = %.lr.ph325, %.thread278
  %.2113324 = phi i64 [ %.0111332, %.lr.ph325 ], [ %.4115283, %.thread278 ] ; 4 uses
  %.0118323 = phi i1 [ false, %.lr.ph325 ], [ %.2120282, %.thread278 ] ; 2 uses
  %.sroa.0237.0322 = phi ptr [ %i.fj, %.lr.ph325 ], [ %i.il, %.thread278 ] ; 4 uses
  %i.fo = load ptr, ptr %.sroa.0237.0322, align 8, !tbaa !516 ; 2 uses
  %.not139 = icmp eq ptr %i.fo, null
  br i1 %.not139, label %.thread278, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0237.0322, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !505
  invoke void %i.fo(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ParserExtensionParseResult") align 8 %16, ptr noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0241.0331)
          to label %bb.ck unwind label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  %i.fr = load i8, ptr %16, align 8, !tbaa !517
  switch i8 %i.fr, label %bb.cz [
    i8 0, label %bb.cl
    i8 2, label %bb.cv
  ]

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  invoke void @_ZN6duckdb9make_uniqINS_18ExtensionStatementEJRKNS_15ParserExtensionENS_10unique_ptrINS_24ParserExtensionParseDataESt14default_deleteIS6_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.332") align 8 %17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0237.0322, ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %i.fs = load i64, ptr %i.fm, align 8, !tbaa !15
  %i.ft = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ExtensionStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cn unwind label %bb.ct

bb.cn:                                            ; preds = %bb.cm
  %i.fu = add i64 %i.fs, -1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !514
  %i.fw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ExtensionStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %.2113324, ptr %i.fx, align 8, !tbaa !515
  %i.fy = load i64, ptr %i.fm, align 8, !tbaa !15
  %i.fz = load ptr, ptr %17, align 8, !tbaa !527  ; 5 uses
  store ptr null, ptr %17, align 8, !tbaa !527
  %i.ga = load ptr, ptr %i.cw, align 8, !tbaa !417 ; 6 uses
  %i.gb = load ptr, ptr %i.cx, align 8, !tbaa !452
  %.not.i.i = icmp eq ptr %i.ga, %i.gb
  br i1 %.not.i.i, label %bb.cp, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177.thread

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177.thread: ; preds = %bb.co
  %i.gc = ptrtoint ptr %i.fz to i64
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !412
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.gd, ptr %i.cw, align 8, !tbaa !417
  br label %_ZNSt10unique_ptrIN6duckdb18ExtensionStatementESt14default_deleteIS1_EED2Ev.exit

bb.cp:                                            ; preds = %bb.co
  %i.ge = load ptr, ptr %0, align 8, !tbaa !414   ; 10 uses
  %i.gf = ptrtoint ptr %i.ga to i64               ; 3 uses
  %i.gg = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.cq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
          to label %.noexc unwind label %.loopexit.split-lp294

.noexc:                                           ; preds = %bb.cq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cp
  %i.gj = ashr exact i64 %i.gh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 1152921504606846975)
  %i.gn = select i1 %i.gl, i64 1152921504606846975, i64 %i.gm ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #31
          to label %.noexc174 unwind label %.loopexit293 ; 12 uses

.noexc174:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  %i.gr = ptrtoint ptr %i.fz to i64
  store i64 %i.gr, ptr %i.gq, align 8, !tbaa !412
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.ga
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc174
  %i.gs = sub i64 %i.gf, %i.gg
  %i.gt = add i64 %i.gs, -8                       ; 2 uses
  %i.gu = lshr i64 %i.gt, 3
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gt, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader494, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.gp, i64 8
  %i.gw = add i64 %i.gf, -8
  %i.gx = sub i64 %i.gw, %i.gg
  %i.gy = and i64 %i.gx, -8                       ; 2 uses
  %scevgep479.a = getelementptr i8, ptr %scevgep, i64 %i.gy
  %scevgep480 = getelementptr i8, ptr %i.ge, i64 8
  %scevgep481 = getelementptr i8, ptr %scevgep480, i64 %i.gy
  %bound0 = icmp ult ptr %i.gp, %scevgep481
  %bound1 = icmp ult ptr %i.ge, %scevgep479.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader494, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gv, 4611686018427387900     ; 3 uses
  %i.gz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gp, i64 %i.gz  ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ge, i64 %i.gz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gp, i64 %i.hc ; 2 uses
  %next.gep482 = getelementptr i8, ptr %i.ge, i64 %i.hc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.hd = getelementptr i8, ptr %next.gep482, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep482, align 8, !tbaa !412, !alias.scope !534, !noalias !529
  %wide.load483 = load <2 x i64>, ptr %i.hd, align 8, !tbaa !412, !alias.scope !534, !noalias !529
  %i.he = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !412, !alias.scope !537, !noalias !534
  store <2 x i64> %wide.load483, ptr %i.he, align 8, !tbaa !412, !alias.scope !537, !noalias !534
  %i.hf = getelementptr i8, ptr %next.gep482, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep482, align 8, !tbaa !412, !alias.scope !534, !noalias !529
  store <2 x ptr> splat (ptr null), ptr %i.hf, align 8, !tbaa !412, !alias.scope !534, !noalias !529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader494

.lr.ph.i.i.i.i.i.i.i.preheader494:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.gp, %vector.memcheck ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ha, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ge, %vector.memcheck ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader494, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader494 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader494 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.hh = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !412, !alias.scope !532, !noalias !529
  store i64 %i.hh, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !412, !alias.scope !529, !noalias !532
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !412, !alias.scope !532, !noalias !529
  %i.hi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hi, %i.ga
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !540

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc174
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gp, %.noexc174 ], [ %i.ha, %middle.block ], [ %i.hj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177.thread439, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177.thread439: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.gp, ptr %0, align 8, !tbaa !414
  store ptr %i.hk, ptr %i.cw, align 8, !tbaa !417
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.hl, ptr %i.cx, align 8, !tbaa !452
  br label %_ZNSt10unique_ptrIN6duckdb18ExtensionStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ge) #28
  %.pre.pre = load ptr, ptr %17, align 8, !tbaa !527 ; 3 uses
  store ptr %i.gp, ptr %0, align 8, !tbaa !414
  store ptr %i.hk, ptr %i.cw, align 8, !tbaa !417
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.hm, ptr %i.cx, align 8, !tbaa !452
  %.not.i178 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i178, label %_ZNSt10unique_ptrIN6duckdb18ExtensionStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ExtensionStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ExtensionStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177
  %i.hn = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(168) %.pre.pre) #27, !inline_history !541
  br label %_ZNSt10unique_ptrIN6duckdb18ExtensionStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ExtensionStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177.thread439, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177.thread, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit177, %_ZNKSt14default_deleteIN6duckdb18ExtensionStatementEEclEPS1_.exit.i
  %i.hq = add i64 %i.fy, %.2113324
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.cz

bb.cr:                                            ; preds = %bb.cj
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb26ParserExtensionParseResultD2Ev.exit194

bb.cs:                                            ; preds = %bb.cl
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ExtensionStatementESt14default_deleteIS1_EED2Ev.exit184

bb.ct:                                            ; preds = %bb.cn, %bb.cm
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit181

.loopexit293:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_2
