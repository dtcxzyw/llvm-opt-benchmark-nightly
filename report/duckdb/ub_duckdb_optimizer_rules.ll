inline.NumInlined: 5380
inline.NumDeleted: 2265
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6duckdb21RegexOptimizationRule5ApplyERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS6_EEERbb:bb.a
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !1488
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.s = load i8, ptr %i.r, align 8, !tbaa !151, !range !167, !noundef !168
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %12)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.v = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc unwind label %bb.k     ; 3 uses

.noexc:                                           ; preds = %bb.f
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %11) #25, !noalias !1491
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.v, ptr noundef nonnull %7)
          to label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g, !noalias !1491

bb.g:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25, !noalias !1491
  call void @_ZdlPv(ptr noundef nonnull %i.v) #28, !noalias !1491
  br label %.body

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25, !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.v, ptr %0, align 8, !tbaa !172
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cm

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.i:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.w, %bb.g ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.j
  %.pn56 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.z, %bb.j ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.l ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cn

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11StringValue3GetB5cxx11ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.o unwind label %bb.u       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.ac, ptr %13, align 8, !tbaa !94
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !126 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !98 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.af, ptr %i.e, align 8, !tbaa !118
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc61 unwind label %bb.u   ; 2 uses

.noexc61:                                         ; preds = %.noexc.i
  store ptr %i.ah, ptr %13, align 8, !tbaa !126
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !118
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !97
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc61, %bb.o
  %i.aj = phi ptr [ %i.ah, %.noexc61 ], [ %i.ac, %bb.o ] ; 2 uses
  switch i64 %i.af, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !97
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !97
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.al = load i64, ptr %i.e, align 8, !tbaa !118 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !98
  %i.an = load ptr, ptr %13, align 8, !tbaa !126
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(88) %i.m)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %i.as, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %0, align 8, !tbaa !172
  br label %bb.ck

bb.u:                                             ; preds = %.noexc.i, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.v:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.av = load ptr, ptr %13, align 8, !tbaa !126
  store ptr %i.av, ptr %15, align 8, !tbaa !1494
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !98
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !1496
  invoke void @_ZN10duckdb_re23RE2C1ERKNS_11StringPieceERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(23) %10)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 68
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 536870911
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %0, align 8, !tbaa !172
  br label %bb.ci

bb.z:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.cj

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store i8 1, ptr %16, align 8, !tbaa !1497
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 1
  store i8 0, ptr %i.bd, align 1, !tbaa !1499
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 9 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !94
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !98
  store i8 0, ptr %i.bf, align 8, !tbaa !97
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1500 ; 5 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !1510 ; 2 uses
  switch i8 %i.bj, label %.thread [
    i8 4, label %bb.ab
    i8 3, label %bb.ab
    i8 5, label %bb.bm
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  store i8 1, ptr %17, align 8, !tbaa !1497, !alias.scope !1513
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 1
  store i8 0, ptr %i.bk, align 1, !tbaa !1499, !alias.scope !1513
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 14 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 14 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !94, !alias.scope !1513
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !98, !alias.scope !1513
  store i8 0, ptr %i.bm, align 8, !tbaa !97, !alias.scope !1513
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !1516, !noalias !1513
  %i.bq = and i16 %i.bp, 17
  %or.cond.not.i = icmp eq i16 %i.bq, 16
  br i1 %or.cond.not.i, label %bb.ac, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread218

_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread218: ; preds = %bb.ab
  store i8 0, ptr %17, align 8, !tbaa !1497, !alias.scope !1513
  br label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  %i.br = icmp eq i8 %i.bj, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !97, !noalias !1513 ; 3 uses
  br i1 %i.br, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !97, !noalias !1513
  %.not.i62 = icmp eq i32 %i.bt, 0
  br i1 %.not.i62, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.loopexit175
  %.01925.i = phi i64 [ %i.cy, %.loopexit175 ], [ 0, %bb.ad ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.01925.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bz = invoke noundef zeroext i1 @_ZN6duckdb8Utf8Proc15CodepointToUtf8EiRiPc(i32 noundef %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.b)
          to label %.noexc157 unwind label %.loopexit.split-lp

.noexc157:                                        ; preds = %.lr.ph.i
  br i1 %i.bz, label %.preheader.i144, label %bb.ah

.preheader.i144:                                  ; preds = %.noexc157
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i145 = icmp eq i32 %i.ca, 0
  br i1 %.not.i145, label %.loopexit175, label %.lr.ph.split.us.i147

.lr.ph.split.us.i147:                             ; preds = %.preheader.i144, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150
  %i.cb = phi i32 [ %i.cs, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150 ], [ %i.ca, %.preheader.i144 ]
  %.06.us.i148 = phi i64 [ %i.ct, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150 ], [ 0, %.preheader.i144 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %.06.us.i148
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !97  ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = call i32 @iscntrl(i32 noundef %i.ce) #30
  %.not.i.us.i149 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.us.i149, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.us.i147
  %i.cg = load i64, ptr %i.bn, align 8, !tbaa !98 ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %i.bl, align 8, !tbaa !126 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bm
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i151

bb.af:                                            ; preds = %.lr.ph.split.us.i147
  store i8 0, ptr %17, align 8, !tbaa !1497
  br label %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i151: ; preds = %bb.ae
  %i.ck = load i64, ptr %i.bm, align 8, !tbaa !97
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i156: ; preds = %bb.ae
  %i.cl = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.cl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i151
  %i.cm = phi i64 [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i151 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i156 ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc158 unwind label %.loopexit

.noexc158:                                        ; preds = %bb.ag
  %.pre.i.i.i.us.i155 = load ptr, ptr %i.bl, align 8, !tbaa !126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153: ; preds = %.noexc158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152
  %i.co = phi ptr [ %.pre.i.i.i.us.i155, %.noexc158 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i8 %i.cd, ptr %i.cp, align 1, !tbaa !97
  store i64 %i.ch, ptr %i.bn, align 8, !tbaa !98
  %i.cq = load ptr, ptr %i.bl, align 8, !tbaa !126
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch
  store i8 0, ptr %i.cr, align 1, !tbaa !97
  %.pre8.i154 = load i32, ptr %i.a, align 4, !tbaa !3
  br label %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150

_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153, %bb.af
  %i.cs = phi i32 [ %.pre8.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153 ], [ %i.cb, %bb.af ] ; 2 uses
  %i.ct = add nuw i64 %.06.us.i148, 1             ; 2 uses
  %i.cu = sext i32 %i.cs to i64
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.split.us.i147, label %.loopexit175, !llvm.loop !1517

bb.ah:                                            ; preds = %.noexc157
  store i8 0, ptr %17, align 8, !tbaa !1497
  br label %.loopexit175

.loopexit175:                                     ; preds = %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150, %bb.ah, %.preheader.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cw = load i8, ptr %17, align 8, !tbaa !1497, !range !167, !alias.scope !1513, !noundef !168 ; 2 uses
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = add nuw i64 %.01925.i, 1                ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.cy, %i.bu
  %or.cond.not29.i = select i1 %i.cx, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not29.i, label %.lr.ph.i, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit, !llvm.loop !1518

.loopexit:                                        ; preds = %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ai:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.cz = invoke noundef zeroext i1 @_ZN6duckdb8Utf8Proc15CodepointToUtf8EiRiPc(i32 noundef %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull %i.d)
          to label %.noexc142 unwind label %.loopexit.split-lp177

.noexc142:                                        ; preds = %bb.ai
  br i1 %i.cz, label %.preheader.i, label %bb.am

.preheader.i:                                     ; preds = %.noexc142
  %i.da = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %.not.i140 = icmp eq i32 %i.da, 0
  br i1 %.not.i140, label %_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i
  %i.db = phi i32 [ %i.ds, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i ], [ %i.da, %.preheader.i ]
  %.06.us.i = phi i64 [ %i.dt, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 %.06.us.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !97  ; 2 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = call i32 @iscntrl(i32 noundef %i.de) #30
  %.not.i.us.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.us.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.us.i
  %i.dg = load i64, ptr %i.bn, align 8, !tbaa !98 ; 4 uses
  %i.dh = add i64 %i.dg, 1                        ; 3 uses
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !126 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bm
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i

bb.ak:                                            ; preds = %.lr.ph.split.us.i
  store i8 0, ptr %17, align 8, !tbaa !1497
  br label %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i: ; preds = %bb.aj
  %i.dk = load i64, ptr %i.bm, align 8, !tbaa !97
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i: ; preds = %bb.aj
  %i.dl = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i
  %i.dm = phi i64 [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i ]
  %i.dn = icmp ugt i64 %i.dh, %i.dm
  br i1 %i.dn, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.dg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc143 unwind label %.loopexit176

.noexc143:                                        ; preds = %bb.al
  %.pre.i.i.i.us.i = load ptr, ptr %i.bl, align 8, !tbaa !126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i: ; preds = %.noexc143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i
  %i.do = phi ptr [ %.pre.i.i.i.us.i, %.noexc143 ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  store i8 %i.dd, ptr %i.dp, align 1, !tbaa !97
  store i64 %i.dh, ptr %i.bn, align 8, !tbaa !98
  %i.dq = load ptr, ptr %i.bl, align 8, !tbaa !126
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dh
  store i8 0, ptr %i.dr, align 1, !tbaa !97
  %.pre8.i = load i32, ptr %i.c, align 4, !tbaa !3
  br label %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i

_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i, %bb.ak
  %i.ds = phi i32 [ %.pre8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i ], [ %i.db, %bb.ak ] ; 2 uses
  %i.dt = add nuw i64 %.06.us.i, 1                ; 2 uses
  %i.du = sext i32 %i.ds to i64
  %i.dv = icmp ult i64 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph.split.us.i, label %_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit, !llvm.loop !1517

bb.am:                                            ; preds = %.noexc142
  store i8 0, ptr %17, align 8, !tbaa !1497
  br label %_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit

_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit: ; preds = %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i, %.preheader.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %.pre = load i8, ptr %17, align 8, !tbaa !1497, !range !167
  br label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit

end_hunk_0
