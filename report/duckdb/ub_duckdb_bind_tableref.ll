inline.NumInlined: 9358
inline.NumDeleted: 4125
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6duckdb6Binder23BindWithReplacementScanERNS_13ClientContextERNS_12BaseTableRefE:bb.a
bb.g:                                             ; preds = %.invoke, %bb.az, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit91, %bb.av, %bb.au, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.j, %bb.h, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit94

bb.h:                                             ; preds = %bb.e
  %i.x = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !117
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.j, %bb.f
  %.sink = phi ptr [ %i.v, %bb.f ], [ %i.ab, %bb.j ]
  %i.ac = phi ptr [ %i.u, %bb.f ], [ %i.j, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %.invoke, %bb.i
  %i.ae = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !118
  %i.ah = icmp eq i8 %i.ag, 5
  br i1 %i.ah, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef nonnull align 8 dereferenceable(121) ptr @_ZN6duckdb8TableRef4CastINS_16TableFunctionRefEEERT_v(ptr noundef nonnull align 8 dereferenceable(104) %i.ai)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.am = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit94

bb.p:                                             ; preds = %bb.k
  %i.ao = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.q unwind label %bb.g

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !118
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.as = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.at = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb8TableRef4CastINS_11SubqueryRefEEERT_v(ptr noundef nonnull align 8 dereferenceable(104) %i.as)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.aw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit94

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.ay = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #25
          to label %.noexc unwind label %bb.am    ; 3 uses

.noexc:                                           ; preds = %bb.v
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ay)
          to label %bb.x unwind label %bb.w, !noalias !139

bb.w:                                             ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #26, !noalias !139
  br label %.body

bb.x:                                             ; preds = %.noexc
  store ptr %i.ay, ptr %9, align 8, !tbaa !142, !alias.scope !139
  %i.ba = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.y unwind label %bb.an      ; 3 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bb = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25
          to label %.noexc47 unwind label %bb.ao  ; 6 uses

.noexc47:                                         ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !144, !noalias !145
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !117, !noalias !145
  store i8 0, ptr %i.bc, align 8, !tbaa !148, !noalias !145
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.bb, ptr noundef nonnull %6)
          to label %bb.z unwind label %bb.aa, !noalias !145

bb.z:                                             ; preds = %.noexc47
  %i.be = load ptr, ptr %6, align 8, !tbaa !149, !noalias !145 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bc
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.be) #26, !noalias !145
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.aa:                                            ; preds = %.noexc47
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %6, align 8, !tbaa !149, !noalias !145 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.bc
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.bh) #26, !noalias !145
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #26, !noalias !145
  br label %.body48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 128 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !150 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !153
  %.not.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bo = ptrtoint ptr %i.bb to i64
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !154
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !150
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !156 ; 10 uses
  %i.br = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.ad, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc50 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit76

.noexc50:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #25
          to label %.noexc51 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit76 ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %i.cd = ptrtoint ptr %i.bb to i64
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !154
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc51
  %i.ce = sub i64 %i.br, %i.bs
  %i.cf = add i64 %i.ce, -8                       ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader152, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ci = add i64 %i.br, -8
  %i.cj = sub i64 %i.ci, %i.bs
  %i.ck = and i64 %i.cj, -8
  %i.cl = add i64 %i.ck, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cb, i64 %i.cl
  %scevgep148 = getelementptr i8, ptr %i.bq, i64 %i.cl
  %bound0 = icmp ult ptr %i.cb, %scevgep148
  %bound1 = icmp ult ptr %i.bq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.cm = shl i64 %n.vec, 3                       ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cb, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.bq, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.cp ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.bq, i64 %i.cp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.cq = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep149, align 8, !tbaa !154, !alias.scope !162, !noalias !157
  %wide.load150 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !154, !alias.scope !162, !noalias !157
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !154, !alias.scope !165, !noalias !162
  store <2 x i64> %wide.load150, ptr %i.cr, align 8, !tbaa !154, !alias.scope !165, !noalias !162
  %i.cs = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep149, align 8, !tbaa !154, !alias.scope !162, !noalias !157
  store <2 x ptr> splat (ptr null), ptr %i.cs, align 8, !tbaa !154, !alias.scope !162, !noalias !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader152

.lr.ph.i.i.i.i.i.i.i.preheader152:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %vector.memcheck ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader152, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader152 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader152 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.cu = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !154, !alias.scope !160, !noalias !157
  store i64 %i.cu, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !154, !alias.scope !157, !noalias !160
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !154, !alias.scope !160, !noalias !157
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !171

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.noexc51 ], [ %i.cn, %middle.block ], [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !156
  store ptr %i.cx, ptr %i.bk, align 8, !tbaa !150
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cy, ptr %i.bm, align 8, !tbaa !153
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ab
  %i.cz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 144 ; 2 uses
  %i.db = load ptr, ptr %8, align 8, !tbaa !115
  store ptr null, ptr %8, align 8, !tbaa !115
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !115 ; 3 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !115
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.af
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !172
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.dc) #24, !inline_history !174
  br label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.af, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.dg = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
          to label %bb.ag unwind label %bb.ap     ; 14 uses

bb.ag:                                            ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i8 1, ptr %i.dh, align 8, !tbaa !178, !noalias !175
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false), !noalias !175
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !183, !noalias !175
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i64 1, ptr %i.dl, align 8, !tbaa !184, !noalias !175
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false), !noalias !175
  store float 1.000000e+00, ptr %i.dn, align 8, !tbaa !185, !noalias !175
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false), !noalias !175
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 104 ; 2 uses
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !144, !noalias !175
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store i64 0, ptr %i.dr, align 8, !tbaa !117, !noalias !175
  store i8 0, ptr %i.dq, align 8, !tbaa !148, !noalias !175
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %i.dg, align 8, !tbaa !172, !noalias !175
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  store ptr null, ptr %i.ds, align 8, !tbaa !186, !noalias !175
  store ptr %i.dg, ptr %10, align 8, !tbaa !189, !alias.scope !175
  %i.dt = load ptr, ptr %9, align 8, !tbaa !142   ; 4 uses
  store ptr null, ptr %9, align 8, !tbaa !142
  %i.du = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 120 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !191 ; 3 uses
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !191
  %.not.i.i.i.i.i54 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i54, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !172
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.dw) #24, !inline_history !192
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ea = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25
          to label %.noexc59 unwind label %bb.ar  ; 3 uses

.noexc59:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.eb = load i64, ptr %10, align 8, !tbaa !189, !noalias !193
  store i64 %i.eb, ptr %4, align 8, !tbaa !189, !noalias !193
  store ptr null, ptr %10, align 8, !tbaa !189, !noalias !193
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ec, ptr %5, align 8, !tbaa !144, !noalias !193
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ed, align 8, !tbaa !117, !noalias !193
  store i8 0, ptr %i.ec, align 8, !tbaa !148, !noalias !193
  invoke void @_ZN6duckdb11SubqueryRefC1ENS_10unique_ptrINS_15SelectStatementESt14default_deleteIS2_ELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ea, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.ai unwind label %bb.aj, !noalias !193

bb.ai:                                            ; preds = %.noexc59
  store ptr %i.ea, ptr %11, align 8, !tbaa !196, !alias.scope !193
  %i.ee = load ptr, ptr %5, align 8, !tbaa !149, !noalias !193 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ec
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.ee) #26, !noalias !193
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  %i.eg = load ptr, ptr %4, align 8, !tbaa !189, !noalias !193 ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i57, label %bb.ak, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !172, !noalias !193
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !193
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.eg) #24, !noalias !193, !inline_history !198
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc59
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load ptr, ptr %5, align 8, !tbaa !149, !noalias !193 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ec
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb6Binder9BindPivotERNS_8PivotRefENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE:bb.a
  %.not.i283.i = icmp eq ptr %i.bzr, null
  br i1 %.not.i283.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit197.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit197.sink.split.i

bb.sa:                                            ; preds = %bb.ru, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i274.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24, !noalias !1203
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit288.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit288.i: ; preds = %bb.sa, %.thread.i519
  %.sroa.0375.4406.i = phi ptr [ %i.bvw, %.thread.i519 ], [ %i.bzc, %bb.sa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24, !noalias !1203
  %i.bzs = getelementptr inbounds nuw i8, ptr %.sroa.0368.0485.i, i64 8 ; 2 uses
  %.not418.i = icmp eq ptr %i.bzs, %i.bvp
  br i1 %.not418.i, label %._crit_edge488.i, label %.lr.ph487.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit197.sink.split.i: ; preds = %bb.rz, %bb.ri
  %.sink678.i = phi ptr [ %i.bvy, %bb.ri ], [ %i.bzr, %bb.rz ] ; 2 uses
  %.sroa.0375.5.ph.i = phi ptr [ %.sroa.0375.1484.i, %bb.ri ], [ %.sroa.0375.3.i, %bb.rz ]
  %.pn53.pn.ph.i = phi { ptr, i32 } [ %i.bvx, %bb.ri ], [ %.pn53.i, %bb.rz ]
  %i.bzt = load ptr, ptr %.sink678.i, align 8, !tbaa !172
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 8
  %i.bzv = load ptr, ptr %i.bzu, align 8
  call void %i.bzv(ptr noundef nonnull align 8 dereferenceable(56) %.sink678.i) #24, !inline_history !1293
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit197.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit197.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit197.sink.split.i, %bb.rz, %bb.ri
  %.sroa.0375.5.i = phi ptr [ %.sroa.0375.3.i, %bb.rz ], [ %.sroa.0375.1484.i, %bb.ri ], [ %.sroa.0375.5.ph.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit197.sink.split.i ]
  %.pn53.pn.i = phi { ptr, i32 } [ %.pn53.i, %bb.rz ], [ %i.bvx, %bb.ri ], [ %.pn53.pn.ph.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit197.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24, !noalias !1203
  br label %bb.sv

bb.sb:                                            ; preds = %.noexc188.i
  %i.bzw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18FunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %.noexc.i.i507 unwind label %bb.sr ; 5 uses

.noexc.i.i507:                                    ; preds = %bb.sb
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24, !noalias !1203
  %i.bzx = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 7 uses
  store ptr %i.bzx, ptr %40, align 8, !tbaa !144, !noalias !1203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24, !noalias !1203
  store i64 21, ptr %i.n, align 8, !tbaa !272, !noalias !1203
  %i.bzy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc289.i unwind label %bb.ss ; 2 uses

.noexc289.i:                                      ; preds = %.noexc.i.i507
  store ptr %i.bzy, ptr %40, align 8, !tbaa !149, !noalias !1203
  %i.bzz = load i64, ptr %i.n, align 8, !tbaa !272, !noalias !1203 ; 3 uses
  store i64 %i.bzz, ptr %i.bzx, align 8, !tbaa !148, !noalias !1203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bzy, ptr noundef nonnull align 1 dereferenceable(21) @.str.123, i64 21, i1 false)
  %i.caa = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 6 uses
  store i64 %i.bzz, ptr %i.caa, align 8, !tbaa !117, !noalias !1203
  %i.cab = load ptr, ptr %40, align 8, !tbaa !149, !noalias !1203
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 %i.bzz
  store i8 0, ptr %i.cac, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24, !noalias !1203
  %i.cad = getelementptr inbounds nuw i8, ptr %i.bzw, i64 16 ; 5 uses
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !149 ; 6 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.bzw, i64 32 ; 2 uses
  %i.cag = icmp eq ptr %i.cae, %i.caf
  %i.cah = load ptr, ptr %40, align 8, !tbaa !149, !noalias !1203 ; 6 uses
  %i.cai = icmp eq ptr %i.cah, %i.bzx             ; 2 uses
  br i1 %i.cag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i515, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i515: ; preds = %.noexc289.i
  br i1 %i.cai, label %bb.sc, label %.thread.i.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i508: ; preds = %.noexc289.i
  br i1 %i.cai, label %bb.sc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i509

bb.sc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i508, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i515
  %i.caj = load i64, ptr %i.caa, align 8, !tbaa !117, !noalias !1203 ; 3 uses
  %i.cak = icmp ult i64 %i.caj, 16
  call void @llvm.assume(i1 %i.cak)
  %.not21.i.i.i512 = icmp eq ptr %40, %i.cad
  br i1 %.not21.i.i.i512, label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i510, label %bb.sd, !prof !205

bb.sd:                                            ; preds = %bb.sc
  switch i64 %i.caj, label %bb.sf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i513
    i64 1, label %bb.se
  ]

bb.se:                                            ; preds = %bb.sd
  %i.cal = load i8, ptr %i.cah, align 1, !tbaa !148
  store i8 %i.cal, ptr %i.cae, align 1, !tbaa !148
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i513

bb.sf:                                            ; preds = %bb.sd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cae, ptr align 1 %i.cah, i64 %i.caj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i513: ; preds = %bb.sf, %bb.se, %bb.sd
  %i.cam = load i64, ptr %i.caa, align 8, !tbaa !117, !noalias !1203 ; 2 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.bzw, i64 24
  store i64 %i.cam, ptr %i.can, align 8, !tbaa !117
  %i.cao = load ptr, ptr %i.cad, align 8, !tbaa !149
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cao, i64 %i.cam
  store i8 0, ptr %i.cap, align 1, !tbaa !148
  %.pre.i.i.i514 = load ptr, ptr %40, align 8, !tbaa !149, !noalias !1203
  br label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i510

.thread.i.i.i516:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i515
  %i.caq = getelementptr inbounds nuw i8, ptr %i.bzw, i64 24
  store ptr %i.cah, ptr %i.cad, align 8, !tbaa !149
  %i.car = load <2 x i64>, ptr %i.caa, align 8, !tbaa !148, !noalias !1203
  store <2 x i64> %i.car, ptr %i.caq, align 8, !tbaa !148
  br label %bb.sh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i509: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i508
  %i.cas = load i64, ptr %i.caf, align 8, !tbaa !148
  store ptr %i.cah, ptr %i.cad, align 8, !tbaa !149
  %i.cat = getelementptr inbounds nuw i8, ptr %i.bzw, i64 24
  %i.cau = load <2 x i64>, ptr %i.caa, align 8, !tbaa !148, !noalias !1203
  store <2 x i64> %i.cau, ptr %i.cat, align 8, !tbaa !148
  %.not.i.i290.i = icmp eq ptr %i.cae, null
  br i1 %.not.i.i290.i, label %bb.sh, label %bb.sg

bb.sg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i509
  store ptr %i.cae, ptr %40, align 8, !tbaa !149, !noalias !1203
  store i64 %i.cas, ptr %i.bzx, align 8, !tbaa !148, !noalias !1203
  br label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i510

bb.sh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i509, %.thread.i.i.i516
  store ptr %i.bzx, ptr %40, align 8, !tbaa !149, !noalias !1203
  br label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i510

_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i510: ; preds = %bb.sh, %bb.sg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i513, %bb.sc
  %i.cav = phi ptr [ %.pre.i.i.i514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i513 ], [ %i.cae, %bb.sg ], [ %i.bzx, %bb.sh ], [ %i.cah, %bb.sc ]
  store i64 0, ptr %i.caa, align 8, !tbaa !117, !noalias !1203
  store i8 0, ptr %i.cav, align 1, !tbaa !148
  %i.caw = load ptr, ptr %40, align 8, !tbaa !149, !noalias !1203 ; 2 uses
  %i.cax = icmp eq ptr %i.caw, %i.bzx
  br i1 %i.cax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i: ; preds = %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i510
  call void @_ZdlPv(ptr noundef %i.caw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511: ; preds = %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i510, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24, !noalias !1203
  %i.cay = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %142)
          to label %bb.si unwind label %bb.sr     ; 3 uses

bb.si:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cay, i64 120 ; 2 uses
  %i.cba = load ptr, ptr %39, align 8, !tbaa !1250, !noalias !1203 ; 5 uses
  store ptr null, ptr %39, align 8, !tbaa !1250, !noalias !1203
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cay, i64 128 ; 3 uses
  %i.cbc = load ptr, ptr %i.cbb, align 8, !tbaa !150 ; 6 uses
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cay, i64 136 ; 2 uses
  %i.cbe = load ptr, ptr %i.cbd, align 8, !tbaa !153
  %.not.i.i293.i = icmp eq ptr %i.cbc, %i.cbe
  br i1 %.not.i.i293.i, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.cbf = ptrtoint ptr %i.cba to i64
  store i64 %i.cbf, ptr %i.cbc, align 8, !tbaa !154
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbc, i64 8
  store ptr %i.cbg, ptr %i.cbb, align 8, !tbaa !150
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit311.i

bb.sk:                                            ; preds = %bb.si
  %i.cbh = load ptr, ptr %i.caz, align 8, !tbaa !156 ; 10 uses
  %i.cbi = ptrtoint ptr %i.cbc to i64             ; 3 uses
  %i.cbj = ptrtoint ptr %i.cbh to i64             ; 3 uses
  %i.cbk = sub i64 %i.cbi, %i.cbj                 ; 3 uses
  %i.cbl = icmp eq i64 %i.cbk, 9223372036854775800
  br i1 %i.cbl, label %bb.sl, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i294.i

bb.sl:                                            ; preds = %bb.sk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc306.i unwind label %bb.st

.noexc306.i:                                      ; preds = %bb.sl
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i294.i: ; preds = %bb.sk
  %i.cbm = ashr exact i64 %i.cbk, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i295.i = call i64 @llvm.umax.i64(i64 %i.cbm, i64 1)
  %i.cbn = add nsw i64 %.sroa.speculated.i.i.i.i295.i, %i.cbm ; 2 uses
  %i.cbo = icmp ult i64 %i.cbn, %i.cbm
  %i.cbp = call i64 @llvm.umin.i64(i64 %i.cbn, i64 1152921504606846975)
  %i.cbq = select i1 %i.cbo, i64 1152921504606846975, i64 %i.cbp ; 3 uses
  %.not.i.i.i.i296.i = icmp ne i64 %i.cbq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i296.i)
  %i.cbr = shl nuw nsw i64 %i.cbq, 3
  %i.cbs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cbr) #25
          to label %.noexc307.i unwind label %bb.st ; 10 uses

.noexc307.i:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i294.i
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 %i.cbk
  %i.cbu = ptrtoint ptr %i.cba to i64
  store i64 %i.cbu, ptr %i.cbt, align 8, !tbaa !154
  %.not10.i.i.i.i.i.i.i297.i = icmp eq ptr %i.cbh, %i.cbc
  br i1 %.not10.i.i.i.i.i.i.i297.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i302.i, label %.lr.ph.i.i.i.i.i.i.i298.i.preheader

.lr.ph.i.i.i.i.i.i.i298.i.preheader:              ; preds = %.noexc307.i
  %i.cbv = sub i64 %i.cbi, %i.cbj
  %i.cbw = add i64 %i.cbv, -8                     ; 2 uses
  %i.cbx = lshr i64 %i.cbw, 3
  %i.cby = add nuw nsw i64 %i.cbx, 1              ; 2 uses
  %min.iters.check3087 = icmp ult i64 %i.cbw, 136
  br i1 %min.iters.check3087, label %.lr.ph.i.i.i.i.i.i.i298.i.preheader3170, label %vector.memcheck3080

vector.memcheck3080:                              ; preds = %.lr.ph.i.i.i.i.i.i.i298.i.preheader
  %i.cbz = add i64 %i.cbi, -8
  %i.cca = sub i64 %i.cbz, %i.cbj
  %i.ccb = and i64 %i.cca, -8
  %i.ccc = add i64 %i.ccb, 8                      ; 2 uses
  %scevgep3081 = getelementptr i8, ptr %i.cbs, i64 %i.ccc
  %scevgep3082 = getelementptr i8, ptr %i.cbh, i64 %i.ccc
  %bound03083 = icmp ult ptr %i.cbs, %scevgep3082
  %bound13084 = icmp ult ptr %i.cbh, %scevgep3081
  %found.conflict3085 = and i1 %bound03083, %bound13084
  br i1 %found.conflict3085, label %.lr.ph.i.i.i.i.i.i.i298.i.preheader3170, label %vector.ph3088

vector.ph3088:                                    ; preds = %vector.memcheck3080
  %n.vec3090 = and i64 %i.cby, 4611686018427387900 ; 3 uses
  %i.ccd = shl i64 %n.vec3090, 3                  ; 2 uses
  %i.cce = getelementptr i8, ptr %i.cbs, i64 %i.ccd ; 2 uses
  %i.ccf = getelementptr i8, ptr %i.cbh, i64 %i.ccd
  br label %vector.body3091

vector.body3091:                                  ; preds = %vector.body3091, %vector.ph3088
  %index3092 = phi i64 [ 0, %vector.ph3088 ], [ %index.next3097, %vector.body3091 ] ; 2 uses
  %i.ccg = shl i64 %index3092, 3                  ; 2 uses
  %next.gep3093 = getelementptr i8, ptr %i.cbs, i64 %i.ccg ; 2 uses
  %next.gep3094 = getelementptr i8, ptr %i.cbh, i64 %i.ccg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.cch = getelementptr i8, ptr %next.gep3094, i64 16
  %wide.load3095 = load <2 x i64>, ptr %next.gep3094, align 8, !tbaa !154, !alias.scope !1299, !noalias !1294
  %wide.load3096 = load <2 x i64>, ptr %i.cch, align 8, !tbaa !154, !alias.scope !1299, !noalias !1294
  %i.cci = getelementptr i8, ptr %next.gep3093, i64 16
  store <2 x i64> %wide.load3095, ptr %next.gep3093, align 8, !tbaa !154, !alias.scope !1302, !noalias !1299
  store <2 x i64> %wide.load3096, ptr %i.cci, align 8, !tbaa !154, !alias.scope !1302, !noalias !1299
  %i.ccj = getelementptr i8, ptr %next.gep3094, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep3094, align 8, !tbaa !154, !alias.scope !1299, !noalias !1294
  store <2 x ptr> splat (ptr null), ptr %i.ccj, align 8, !tbaa !154, !alias.scope !1299, !noalias !1294
  %index.next3097 = add nuw i64 %index3092, 4     ; 2 uses
  %i.cck = icmp eq i64 %index.next3097, %n.vec3090
  br i1 %i.cck, label %middle.block3098, label %vector.body3091, !llvm.loop !1304

middle.block3098:                                 ; preds = %vector.body3091
  %cmp.n3099 = icmp eq i64 %i.cby, %n.vec3090
  br i1 %cmp.n3099, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i302.i, label %.lr.ph.i.i.i.i.i.i.i298.i.preheader3170

.lr.ph.i.i.i.i.i.i.i298.i.preheader3170:          ; preds = %vector.memcheck3080, %.lr.ph.i.i.i.i.i.i.i298.i.preheader, %middle.block3098
  %.012.i.i.i.i.i.i.i299.i.ph = phi ptr [ %i.cbs, %vector.memcheck3080 ], [ %i.cbs, %.lr.ph.i.i.i.i.i.i.i298.i.preheader ], [ %i.cce, %middle.block3098 ]
  %.0911.i.i.i.i.i.i.i300.i.ph = phi ptr [ %i.cbh, %vector.memcheck3080 ], [ %i.cbh, %.lr.ph.i.i.i.i.i.i.i298.i.preheader ], [ %i.ccf, %middle.block3098 ]
  br label %.lr.ph.i.i.i.i.i.i.i298.i

.lr.ph.i.i.i.i.i.i.i298.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i298.i.preheader3170, %.lr.ph.i.i.i.i.i.i.i298.i
  %.012.i.i.i.i.i.i.i299.i = phi ptr [ %i.ccn, %.lr.ph.i.i.i.i.i.i.i298.i ], [ %.012.i.i.i.i.i.i.i299.i.ph, %.lr.ph.i.i.i.i.i.i.i298.i.preheader3170 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i300.i = phi ptr [ %i.ccm, %.lr.ph.i.i.i.i.i.i.i298.i ], [ %.0911.i.i.i.i.i.i.i300.i.ph, %.lr.ph.i.i.i.i.i.i.i298.i.preheader3170 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.ccl = load i64, ptr %.0911.i.i.i.i.i.i.i300.i, align 8, !tbaa !154, !alias.scope !1297, !noalias !1294
  store i64 %i.ccl, ptr %.012.i.i.i.i.i.i.i299.i, align 8, !tbaa !154, !alias.scope !1294, !noalias !1297
  store ptr null, ptr %.0911.i.i.i.i.i.i.i300.i, align 8, !tbaa !154, !alias.scope !1297, !noalias !1294
  %i.ccm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i300.i, i64 8 ; 2 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i299.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i301.i = icmp eq ptr %i.ccm, %i.cbc
  br i1 %.not.i.i.i.i.i.i.i301.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i302.i, label %.lr.ph.i.i.i.i.i.i.i298.i, !llvm.loop !1305

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i302.i: ; preds = %.lr.ph.i.i.i.i.i.i.i298.i, %middle.block3098, %.noexc307.i
  %.0.lcssa.i.i.i.i.i.i.i303.i = phi ptr [ %i.cbs, %.noexc307.i ], [ %i.cce, %middle.block3098 ], [ %i.ccn, %.lr.ph.i.i.i.i.i.i.i298.i ]
  %i.cco = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i303.i, i64 8
  %.not.i23.i.i.i304.i = icmp eq ptr %i.cbh, null
  br i1 %.not.i23.i.i.i304.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i305.i, label %bb.sm

bb.sm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i302.i
  call void @_ZdlPv(ptr noundef nonnull %i.cbh) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i305.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i305.i: ; preds = %bb.sm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i302.i
  store ptr %i.cbs, ptr %i.caz, align 8, !tbaa !156
  store ptr %i.cco, ptr %i.cbb, align 8, !tbaa !150
  %i.ccp = getelementptr inbounds nuw [8 x i8], ptr %i.cbs, i64 %i.cbq
  store ptr %i.ccp, ptr %i.cbd, align 8, !tbaa !153
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit311.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit311.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i305.i, %bb.sj
  %i.ccq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %142)
          to label %bb.sn unwind label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit339.i

bb.sn:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit311.i
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccq, i64 144 ; 2 uses
  %i.ccs = load ptr, ptr %i.ccr, align 8, !tbaa !115 ; 3 uses
  store ptr %i.blk, ptr %i.ccr, align 8, !tbaa !115
  %.not.i.i.i.i.i312.i = icmp eq ptr %i.ccs, null
  br i1 %.not.i.i.i.i.i312.i, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.sn
  %i.cct = load ptr, ptr %i.ccs, align 8, !tbaa !172
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 8
  %i.ccv = load ptr, ptr %i.ccu, align 8
  call void %i.ccv(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ccs) #24, !inline_history !1306
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i.i, %bb.sn
  %i.ccw = load ptr, ptr %39, align 8, !tbaa !1250, !noalias !1203 ; 3 uses
  %.not.i314.i = icmp eq ptr %i.ccw, null
  br i1 %.not.i314.i, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit316.i, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i315.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i315.i: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit.i
  %i.ccx = load ptr, ptr %i.ccw, align 8, !tbaa !172
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 8
  %i.ccz = load ptr, ptr %i.ccy, align 8
  call void %i.ccz(ptr noundef nonnull align 8 dereferenceable(209) %i.ccw) #24, !inline_history !1263
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit316.i

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit316.i: ; preds = %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i315.i, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24, !noalias !1203
  %i.cda = load ptr, ptr %38, align 8, !tbaa !156, !noalias !1203 ; 3 uses
  %i.cdb = load ptr, ptr %i.bvi, align 8, !tbaa !150, !noalias !1203 ; 2 uses
  %.not4.i.i.i317.i = icmp eq ptr %i.cda, %i.cdb
  br i1 %.not4.i.i.i317.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i326.i, label %.lr.ph.i.i.i318.i

.lr.ph.i.i.i318.i:                                ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit316.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i322.i
  %.05.i.i.i319.i = phi ptr [ %i.cdg, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i322.i ], [ %i.cda, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit316.i ] ; 2 uses
  %i.cdc = load ptr, ptr %.05.i.i.i319.i, align 8, !tbaa !154 ; 3 uses
  %.not.i.i.i.i.i320.i = icmp eq ptr %i.cdc, null
  br i1 %.not.i.i.i.i.i320.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i322.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i321.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i321.i: ; preds = %.lr.ph.i.i.i318.i
  %i.cdd = load ptr, ptr %i.cdc, align 8, !tbaa !172
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 8
  %i.cdf = load ptr, ptr %i.cde, align 8
  call void %i.cdf(ptr noundef nonnull align 8 dereferenceable(56) %i.cdc) #24, !inline_history !1264
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i322.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i322.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i321.i, %.lr.ph.i.i.i318.i
  %i.cdg = getelementptr inbounds nuw i8, ptr %.05.i.i.i319.i, i64 8 ; 2 uses
  %.not.i.i.i323.i = icmp eq ptr %i.cdg, %i.cdb
  br i1 %.not.i.i.i323.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i324.i, label %.lr.ph.i.i.i318.i, !llvm.loop !430

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i324.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i322.i
  %.pr.i325.i = load ptr, ptr %38, align 8, !tbaa !156, !noalias !1203
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i326.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i326.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i324.i, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit316.i
  %i.cdh = phi ptr [ %.pr.i325.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i324.i ], [ %i.cda, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit316.i ] ; 2 uses
  %.not.i.i1.i327.i = icmp eq ptr %i.cdh, null
  br i1 %.not.i.i1.i327.i, label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit.i, label %bb.so

bb.so:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i326.i
  call void @_ZdlPv(ptr noundef nonnull %i.cdh) #26
  br label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.so, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i326.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24, !noalias !1203
  %i.cdi = load ptr, ptr %27, align 8, !tbaa !189, !noalias !1203 ; 3 uses
  %.not.i333.i = icmp eq ptr %i.cdi, null
  br i1 %.not.i333.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit539, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit.i
  %i.cdj = load ptr, ptr %i.cdi, align 8, !tbaa !172
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 8
  %i.cdl = load ptr, ptr %i.cdk, align 8
  call void %i.cdl(ptr noundef nonnull align 8 dereferenceable(128) %i.cdi) #24, !inline_history !1307
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit539

bb.sp:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i175.i
  %i.cdm = landingpad { ptr, i32 }
          cleanup
  br label %bb.su

bb.sq:                                            ; preds = %.noexc188.i
  %i.cdn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit342.i

bb.sr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511, %bb.sb
  %i.cdo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit336.i

bb.ss:                                            ; preds = %.noexc.i.i507
  %i.cdp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24, !noalias !1203
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit336.i

bb.st:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i294.i, %bb.sl
  %i.cdq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i334.i = icmp eq ptr %i.cba, null
  br i1 %.not.i334.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit336.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i335.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i335.i: ; preds = %bb.st
  %i.cdr = load ptr, ptr %i.cba, align 8, !tbaa !172
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 8
  %i.cdt = load ptr, ptr %i.cds, align 8
  call void %i.cdt(ptr noundef nonnull align 8 dereferenceable(56) %i.cba) #24, !inline_history !1249
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit336.i

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit339.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit311.i
  %i.cdu = landingpad { ptr, i32 }
          cleanup
  %i.cdv = load ptr, ptr %i.blk, align 8, !tbaa !172
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 8
end_hunk_1
begin_hunk_2_@_ZN6duckdb6Binder11BindUnpivotERS0_RNS_8PivotRefENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEERS9_:bb.a
  %i.acf = load i64, ptr %i.yz, align 8, !tbaa !148
  store i64 %i.acf, ptr %i.acc, align 8, !tbaa !148
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit460.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit460.thread: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i457
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store i64 12, ptr %i.acg, align 8, !tbaa !117
  store ptr %i.yz, ptr %54, align 8, !tbaa !149
  store i64 0, ptr %i.za, align 8, !tbaa !117
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aca, i64 32
  store ptr %i.ach, ptr %i.uj, align 8, !tbaa !288
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463

bb.gg:                                            ; preds = %._crit_edge.i.i452
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr %i.aca, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit460 unwind label %bb.gh

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit460: ; preds = %bb.gg
  %.pre1442 = load ptr, ptr %54, align 8, !tbaa !149 ; 2 uses
  %i.aci = icmp eq ptr %.pre1442, %i.yz
  br i1 %i.aci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit460
  call void @_ZdlPv(ptr noundef %.pre1442) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit460, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit460.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.acj = landingpad { ptr, i32 }
          cleanup
  %i.ack = load ptr, ptr %54, align 8, !tbaa !149 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.yz
  br i1 %i.acl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464: ; preds = %bb.gh
  call void @_ZdlPv(ptr noundef %i.ack) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %bb.la

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463
  %.pre-phi = phi i64 [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463 ] ; 2 uses
  %i.acm = load ptr, ptr %i.rw, align 8, !tbaa !549
  %i.acn = load ptr, ptr %47, align 8, !tbaa !552
  %i.aco = ptrtoint ptr %i.acm to i64
  %i.acp = ptrtoint ptr %i.acn to i64
  %i.acq = sub i64 %i.aco, %i.acp
  %i.acr = sdiv exact i64 %i.acq, 24
  %i.acs = icmp ult i64 %.pre-phi, %i.acr
  br i1 %i.acs, label %bb.fl, label %._crit_edge1344, !llvm.loop !1507

bb.gj:                                            ; preds = %._crit_edge1344
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 noundef zeroext 25)
          to label %bb.gk unwind label %bb.ha

bb.gk:                                            ; preds = %bb.gj
  %i.act = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.acu = load <2 x ptr>, ptr %43, align 16, !tbaa !988
  store <2 x ptr> %i.acu, ptr %57, align 16, !tbaa !988
  %i.acv = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.acw = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.acx = load ptr, ptr %i.acw, align 16, !tbaa !1036
  store ptr %i.acx, ptr %i.acv, align 16, !tbaa !1036
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb5Value4LISTERKNS_11LogicalTypeENS_6vectorIS0_Lb1ESaIS0_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull %57)
          to label %bb.gl unwind label %bb.hb

bb.gl:                                            ; preds = %bb.gk
  %i.acy = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.acz = load ptr, ptr %57, align 16, !tbaa !1028 ; 3 uses
  %i.ada = load ptr, ptr %i.acy, align 8, !tbaa !1026 ; 2 uses
  %.not4.i.i.i467 = icmp eq ptr %i.acz, %i.ada
  br i1 %.not4.i.i.i467, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i468

.lr.ph.i.i.i468:                                  ; preds = %bb.gl, %.lr.ph.i.i.i468
  %.05.i.i.i469 = phi ptr [ %i.adb, %.lr.ph.i.i.i468 ], [ %i.acz, %bb.gl ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i469) #24
  %i.adb = getelementptr inbounds nuw i8, ptr %.05.i.i.i469, i64 64 ; 2 uses
  %.not.i.i.i470 = icmp eq ptr %i.adb, %i.ada
  br i1 %.not.i.i.i470, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i468, !llvm.loop !1046

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i468
  %.pr.i471 = load ptr, ptr %57, align 16, !tbaa !1028
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.gl
  %i.adc = phi ptr [ %.pr.i471, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.acz, %bb.gl ] ; 2 uses
  %.not.i.i1.i472 = icmp eq ptr %i.adc, null
  br i1 %.not.i.i1.i472, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.gm

bb.gm:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.adc) #26
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.gm
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %56) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.add = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc473 unwind label %bb.hd ; 3 uses

.noexc473:                                        ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %55) #24, !noalias !1508
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.add, ptr noundef nonnull %16)
          to label %bb.go unwind label %bb.gn, !noalias !1508

bb.gn:                                            ; preds = %.noexc473
  %i.ade = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #24, !noalias !1508
  call void @_ZdlPv(ptr noundef nonnull %i.add) #26, !noalias !1508
  br label %.body474

bb.go:                                            ; preds = %.noexc473
  store ptr %i.add, ptr %58, align 8, !tbaa !1511, !alias.scope !1508
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #24, !noalias !1508
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.adf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 noundef %i.up)
          to label %bb.gp unwind label %bb.he

bb.gp:                                            ; preds = %bb.go
  %i.adg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ConstantExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.gq unwind label %bb.he

bb.gq:                                            ; preds = %bb.gp
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.adh, ptr noundef nonnull align 8 dereferenceable(32) %i.adf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit477 unwind label %bb.he

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit477: ; preds = %bb.gq
  %i.adi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.gr unwind label %bb.he     ; 3 uses

bb.gr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit477
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 120 ; 2 uses
  %i.adk = load ptr, ptr %58, align 8, !tbaa !1511 ; 5 uses
  store ptr null, ptr %58, align 8, !tbaa !1511
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 128 ; 3 uses
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !150 ; 6 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adi, i64 136 ; 2 uses
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !153
  %.not.i.i478 = icmp eq ptr %i.adm, %i.ado
  br i1 %.not.i.i478, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.adp = ptrtoint ptr %i.adk to i64
  store i64 %i.adp, ptr %i.adm, align 8, !tbaa !154
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  store ptr %i.adq, ptr %i.adl, align 8, !tbaa !150
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.gt:                                            ; preds = %bb.gr
  %i.adr = load ptr, ptr %i.adj, align 8, !tbaa !156 ; 10 uses
  %i.ads = ptrtoint ptr %i.adm to i64             ; 3 uses
  %i.adt = ptrtoint ptr %i.adr to i64             ; 3 uses
  %i.adu = sub i64 %i.ads, %i.adt                 ; 3 uses
  %i.adv = icmp eq i64 %i.adu, 9223372036854775800
  br i1 %i.adv, label %bb.gu, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i479

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc491 unwind label %bb.hf

.noexc491:                                        ; preds = %bb.gu
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i479: ; preds = %bb.gt
  %i.adw = ashr exact i64 %i.adu, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i480 = call i64 @llvm.umax.i64(i64 %i.adw, i64 1)
  %i.adx = add nsw i64 %.sroa.speculated.i.i.i.i480, %i.adw ; 2 uses
  %i.ady = icmp ult i64 %i.adx, %i.adw
  %i.adz = call i64 @llvm.umin.i64(i64 %i.adx, i64 1152921504606846975)
  %i.aea = select i1 %i.ady, i64 1152921504606846975, i64 %i.adz ; 3 uses
  %.not.i.i.i.i481 = icmp ne i64 %i.aea, 0
  call void @llvm.assume(i1 %.not.i.i.i.i481)
  %i.aeb = shl nuw nsw i64 %i.aea, 3
  %i.aec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aeb) #25
          to label %.noexc492 unwind label %bb.hf ; 10 uses

.noexc492:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i479
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.adu
  %i.aee = ptrtoint ptr %i.adk to i64
  store i64 %i.aee, ptr %i.aed, align 8, !tbaa !154
  %.not10.i.i.i.i.i.i.i482 = icmp eq ptr %i.adr, %i.adm
  br i1 %.not10.i.i.i.i.i.i.i482, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i487, label %.lr.ph.i.i.i.i.i.i.i483.preheader

.lr.ph.i.i.i.i.i.i.i483.preheader:                ; preds = %.noexc492
  %i.aef = sub i64 %i.ads, %i.adt
  %i.aeg = add i64 %i.aef, -8                     ; 2 uses
  %i.aeh = lshr i64 %i.aeg, 3
  %i.aei = add nuw nsw i64 %i.aeh, 1              ; 2 uses
  %min.iters.check1912 = icmp ult i64 %i.aeg, 136
  br i1 %min.iters.check1912, label %.lr.ph.i.i.i.i.i.i.i483.preheader2061, label %vector.memcheck1905

vector.memcheck1905:                              ; preds = %.lr.ph.i.i.i.i.i.i.i483.preheader
  %i.aej = add i64 %i.ads, -8
  %i.aek = sub i64 %i.aej, %i.adt
  %i.ael = and i64 %i.aek, -8
  %i.aem = add i64 %i.ael, 8                      ; 2 uses
  %scevgep1906 = getelementptr i8, ptr %i.aec, i64 %i.aem
  %scevgep1907 = getelementptr i8, ptr %i.adr, i64 %i.aem
  %bound01908 = icmp ult ptr %i.aec, %scevgep1907
  %bound11909 = icmp ult ptr %i.adr, %scevgep1906
  %found.conflict1910 = and i1 %bound01908, %bound11909
  br i1 %found.conflict1910, label %.lr.ph.i.i.i.i.i.i.i483.preheader2061, label %vector.ph1913

vector.ph1913:                                    ; preds = %vector.memcheck1905
  %n.vec1915 = and i64 %i.aei, 4611686018427387900 ; 3 uses
  %i.aen = shl i64 %n.vec1915, 3                  ; 2 uses
  %i.aeo = getelementptr i8, ptr %i.aec, i64 %i.aen ; 2 uses
  %i.aep = getelementptr i8, ptr %i.adr, i64 %i.aen
  br label %vector.body1916

vector.body1916:                                  ; preds = %vector.body1916, %vector.ph1913
  %index1917 = phi i64 [ 0, %vector.ph1913 ], [ %index.next1922, %vector.body1916 ] ; 2 uses
  %i.aeq = shl i64 %index1917, 3                  ; 2 uses
  %next.gep1918 = getelementptr i8, ptr %i.aec, i64 %i.aeq ; 2 uses
  %next.gep1919 = getelementptr i8, ptr %i.adr, i64 %i.aeq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.aer = getelementptr i8, ptr %next.gep1919, i64 16
  %wide.load1920 = load <2 x i64>, ptr %next.gep1919, align 8, !tbaa !154, !alias.scope !1518, !noalias !1513
  %wide.load1921 = load <2 x i64>, ptr %i.aer, align 8, !tbaa !154, !alias.scope !1518, !noalias !1513
  %i.aes = getelementptr i8, ptr %next.gep1918, i64 16
  store <2 x i64> %wide.load1920, ptr %next.gep1918, align 8, !tbaa !154, !alias.scope !1521, !noalias !1518
  store <2 x i64> %wide.load1921, ptr %i.aes, align 8, !tbaa !154, !alias.scope !1521, !noalias !1518
  %i.aet = getelementptr i8, ptr %next.gep1919, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1919, align 8, !tbaa !154, !alias.scope !1518, !noalias !1513
  store <2 x ptr> splat (ptr null), ptr %i.aet, align 8, !tbaa !154, !alias.scope !1518, !noalias !1513
  %index.next1922 = add nuw i64 %index1917, 4     ; 2 uses
  %i.aeu = icmp eq i64 %index.next1922, %n.vec1915
  br i1 %i.aeu, label %middle.block1923, label %vector.body1916, !llvm.loop !1523

middle.block1923:                                 ; preds = %vector.body1916
  %cmp.n1924 = icmp eq i64 %i.aei, %n.vec1915
  br i1 %cmp.n1924, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i487, label %.lr.ph.i.i.i.i.i.i.i483.preheader2061

.lr.ph.i.i.i.i.i.i.i483.preheader2061:            ; preds = %vector.memcheck1905, %.lr.ph.i.i.i.i.i.i.i483.preheader, %middle.block1923
  %.012.i.i.i.i.i.i.i484.ph = phi ptr [ %i.aec, %vector.memcheck1905 ], [ %i.aec, %.lr.ph.i.i.i.i.i.i.i483.preheader ], [ %i.aeo, %middle.block1923 ]
  %.0911.i.i.i.i.i.i.i485.ph = phi ptr [ %i.adr, %vector.memcheck1905 ], [ %i.adr, %.lr.ph.i.i.i.i.i.i.i483.preheader ], [ %i.aep, %middle.block1923 ]
  br label %.lr.ph.i.i.i.i.i.i.i483

.lr.ph.i.i.i.i.i.i.i483:                          ; preds = %.lr.ph.i.i.i.i.i.i.i483.preheader2061, %.lr.ph.i.i.i.i.i.i.i483
  %.012.i.i.i.i.i.i.i484 = phi ptr [ %i.aex, %.lr.ph.i.i.i.i.i.i.i483 ], [ %.012.i.i.i.i.i.i.i484.ph, %.lr.ph.i.i.i.i.i.i.i483.preheader2061 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i485 = phi ptr [ %i.aew, %.lr.ph.i.i.i.i.i.i.i483 ], [ %.0911.i.i.i.i.i.i.i485.ph, %.lr.ph.i.i.i.i.i.i.i483.preheader2061 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.aev = load i64, ptr %.0911.i.i.i.i.i.i.i485, align 8, !tbaa !154, !alias.scope !1516, !noalias !1513
  store i64 %i.aev, ptr %.012.i.i.i.i.i.i.i484, align 8, !tbaa !154, !alias.scope !1513, !noalias !1516
  store ptr null, ptr %.0911.i.i.i.i.i.i.i485, align 8, !tbaa !154, !alias.scope !1516, !noalias !1513
  %i.aew = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i485, i64 8 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i484, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i486 = icmp eq ptr %i.aew, %i.adm
  br i1 %.not.i.i.i.i.i.i.i486, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i487, label %.lr.ph.i.i.i.i.i.i.i483, !llvm.loop !1524

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i487: ; preds = %.lr.ph.i.i.i.i.i.i.i483, %middle.block1923, %.noexc492
  %.0.lcssa.i.i.i.i.i.i.i488 = phi ptr [ %i.aec, %.noexc492 ], [ %i.aeo, %middle.block1923 ], [ %i.aex, %.lr.ph.i.i.i.i.i.i.i483 ]
  %i.aey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i488, i64 8
  %.not.i23.i.i.i489 = icmp eq ptr %i.adr, null
  br i1 %.not.i23.i.i.i489, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i490, label %bb.gv

bb.gv:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i487
  call void @_ZdlPv(ptr noundef nonnull %i.adr) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i490

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i490: ; preds = %bb.gv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i487
  store ptr %i.aec, ptr %i.adj, align 8, !tbaa !156
  store ptr %i.aey, ptr %i.adl, align 8, !tbaa !150
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aec, i64 %i.aea
  store ptr %i.aez, ptr %i.adn, align 8, !tbaa !153
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.gs, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i490
  %i.afa = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !288
  %i.afd = load ptr, ptr %i.afa, align 8, !tbaa !287
  %i.afe = ptrtoint ptr %i.afc to i64
  %i.aff = ptrtoint ptr %i.afd to i64
  %i.afg = sub i64 %i.afe, %i.aff
  %i.afh = ashr exact i64 %i.afg, 5
  %i.afi = load ptr, ptr %i.rw, align 8, !tbaa !549 ; 2 uses
  %i.afj = load ptr, ptr %47, align 8, !tbaa !552 ; 2 uses
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = sub i64 %i.afk, %i.afl
  %i.afn = sdiv exact i64 %i.afm, 24
  %.not = icmp eq i64 %i.afh, %i.afn
  br i1 %.not, label %.preheader, label %bb.gw

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.not1356 = icmp eq ptr %i.afi, %i.afj
  br i1 %.not1356, label %._crit_edge1347, label %.lr.ph1346

.lr.ph1346:                                       ; preds = %.preheader
  %i.afo = add nsw i64 %i.up, 1
  br label %bb.hj

bb.gw:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.afp = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %60)
          to label %bb.gx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500.thread

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  %i.afq = load ptr, ptr %i.afb, align 8, !tbaa !288
  %i.afr = load ptr, ptr %i.afa, align 8, !tbaa !287
  %i.afs = ptrtoint ptr %i.afq to i64
  %i.aft = ptrtoint ptr %i.afr to i64
  %i.afu = sub i64 %i.afs, %i.aft
  %i.afv = ashr exact i64 %i.afu, 5
  store i64 %i.afv, ptr %i.o, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  %i.afw = load ptr, ptr %i.rw, align 8, !tbaa !549
  %i.afx = load ptr, ptr %47, align 8, !tbaa !552
  %i.afy = ptrtoint ptr %i.afw to i64
  %i.afz = ptrtoint ptr %i.afx to i64
  %i.aga = sub i64 %i.afy, %i.afz
  %i.agb = sdiv exact i64 %i.aga, 24
  store i64 %i.agb, ptr %i.p, align 8, !tbaa !272
  invoke void @_ZN6duckdb15BinderExceptionC2IJmmEEERKNS_8TableRefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.afp, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.gy unwind label %bb.hg

bb.gy:                                            ; preds = %bb.gx
  invoke void @__cxa_throw(ptr nonnull %i.afp, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.lf unwind label %bb.hg

bb.gz:                                            ; preds = %._crit_edge1344
  %i.agc = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.ha:                                            ; preds = %bb.gj
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gk
  %i.age = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %57) #24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %56) #24
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.pn198 = phi { ptr, i32 } [ %i.age, %bb.hb ], [ %i.agd, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  br label %bb.kz

bb.hd:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %.body474

bb.he:                                            ; preds = %._crit_edge1347, %bb.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit477, %bb.gp, %bb.go
  %i.agg = landingpad { ptr, i32 }
          cleanup
  br label %.body502

bb.hf:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i479, %bb.gu
  %i.agh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i495 = icmp eq ptr %i.adk, null
  br i1 %.not.i495, label %.body502, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i496

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i496: ; preds = %bb.hf
  %i.agi = load ptr, ptr %i.adk, align 8, !tbaa !172
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  %i.agk = load ptr, ptr %i.agj, align 8
  call void %i.agk(ptr noundef nonnull align 8 dereferenceable(56) %i.adk) #24, !inline_history !202
  br label %.body502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500.thread: ; preds = %bb.gw
  %i.agl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %bb.hh

bb.hg:                                            ; preds = %bb.gy, %bb.gx
  %.0103 = phi i1 [ false, %bb.gy ], [ true, %bb.gx ] ; 2 uses
  %i.agm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  %i.agn = load ptr, ptr %59, align 8, !tbaa !149 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.agp = icmp eq ptr %i.agn, %i.ago
  br i1 %i.agp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498

end_hunk_2
begin_hunk_3_@_ZN6duckdb6Binder11BindUnpivotERS0_RNS_8PivotRefENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEERS9_:bb.a
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i576, %bb.im
  %i.aob = add nuw i64 %.01011348, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aob, %i.up
  br i1 %exitcond.not, label %._crit_edge1350, label %bb.ig, !llvm.loop !1563

bb.iq:                                            ; preds = %bb.ih, %bb.ig
  %i.aoc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit551

.thread1061.loopexit:                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i565
  %lpad.loopexit1088 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1061

.thread1061.loopexit.split-lp:                    ; preds = %bb.io
  %lpad.loopexit.split-lp1089 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1061

.thread1061:                                      ; preds = %.thread1061.loopexit.split-lp, %.thread1061.loopexit
  %lpad.phi1090 = phi { ptr, i32 } [ %lpad.loopexit1088, %.thread1061.loopexit ], [ %lpad.loopexit.split-lp1089, %.thread1061.loopexit.split-lp ]
  %i.aod = load ptr, ptr %i.alv, align 8, !tbaa !172
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aof = load ptr, ptr %i.aoe, align 8
  call void %i.aof(ptr noundef nonnull align 8 dereferenceable(56) %i.alv) #24, !inline_history !202
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit551

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i588: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i560
  %i.aog = landingpad { ptr, i32 }
          cleanup
  %i.aoh = load ptr, ptr %i.alv, align 8, !tbaa !172
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 8
  %i.aoj = load ptr, ptr %i.aoi, align 8
  call void %i.aoj(ptr noundef nonnull align 8 dereferenceable(80) %i.alv) #24, !inline_history !1439
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit551

bb.ir:                                            ; preds = %._crit_edge1350
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.aok = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25
          to label %.noexc600 unwind label %bb.jm ; 5 uses

.noexc600:                                        ; preds = %bb.ir
  %i.aol = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.aol, ptr %12, align 8, !tbaa !144, !noalias !1564
  %i.aom = load ptr, ptr %i.ali, align 8, !tbaa !149, !noalias !1564 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ali, i64 16 ; 5 uses
  %i.aoo = icmp eq ptr %i.aom, %i.aon
  br i1 %i.aoo, label %bb.is, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590

bb.is:                                            ; preds = %.noexc600
  %i.aop = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !117, !noalias !1564 ; 3 uses
  %i.aor = icmp ult i64 %i.aoq, 16
  call void @llvm.assume(i1 %i.aor)
  %i.aos = add nuw nsw i64 %i.aoq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aol, ptr noundef nonnull align 8 dereferenceable(1) %i.aon, i64 %i.aos, i1 false), !noalias !1564
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590: ; preds = %.noexc600
  store ptr %i.aom, ptr %12, align 8, !tbaa !149, !noalias !1564
  %i.aot = load i64, ptr %i.aon, align 8, !tbaa !148, !noalias !1564
  store i64 %i.aot, ptr %i.aol, align 8, !tbaa !148, !noalias !1564
  %.phi.trans.insert.i591 = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %.pre.i592 = load i64, ptr %.phi.trans.insert.i591, align 8, !tbaa !117, !noalias !1564
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i593: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590, %bb.is
  %i.aou = phi i64 [ %i.aoq, %bb.is ], [ %.pre.i592, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590 ]
  %i.aov = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.aow = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.aou, ptr %i.aow, align 8, !tbaa !117, !noalias !1564
  store ptr %i.aon, ptr %i.ali, align 8, !tbaa !149, !noalias !1564
  store i64 0, ptr %i.aov, align 8, !tbaa !117, !noalias !1564
  store i8 0, ptr %i.aon, align 8, !tbaa !148, !noalias !1564
  invoke void @_ZN6duckdb19ColumnRefExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.aok, ptr noundef nonnull %12)
          to label %bb.it unwind label %bb.iu, !noalias !1564

bb.it:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i593
  %i.aox = load ptr, ptr %12, align 8, !tbaa !149, !noalias !1564 ; 2 uses
  %i.aoy = icmp eq ptr %i.aox, %i.aol
  br i1 %i.aoy, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i605, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i597

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i597: ; preds = %bb.it
  call void @_ZdlPv(ptr noundef %i.aox) #26, !noalias !1564
  br label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i605

bb.iu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i593
  %i.aoz = landingpad { ptr, i32 }
          cleanup
  %i.apa = load ptr, ptr %12, align 8, !tbaa !149, !noalias !1564 ; 2 uses
  %i.apb = icmp eq ptr %i.apa, %i.aol
  br i1 %i.apb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i595, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i594

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i594: ; preds = %bb.iu
  call void @_ZdlPv(ptr noundef %i.apa) #26, !noalias !1564
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i595

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i595: ; preds = %bb.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i594
  call void @_ZdlPv(ptr noundef nonnull %i.aok) #26, !noalias !1564
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit551

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i605: ; preds = %bb.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i597
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  %i.apc = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.apd = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %.noexc618 unwind label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit704 ; 3 uses

.noexc618:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i605
  %i.ape = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.apf = ptrtoint ptr %i.aok to i64
  store i64 %i.apf, ptr %i.apd, align 8, !tbaa !154
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apd, i64 8 ; 2 uses
  store ptr %i.apd, ptr %64, align 8, !tbaa !156
  store ptr %i.apg, ptr %i.apc, align 8, !tbaa !150
  store ptr %i.apg, ptr %i.ape, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #24
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA7_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1110") align 8 %65, ptr noundef nonnull align 1 dereferenceable(7) @.str.59, ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %bb.iv unwind label %bb.jn

bb.iv:                                            ; preds = %.noexc618
  %i.aph = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18FunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.iw unwind label %bb.jo

bb.iw:                                            ; preds = %bb.iv
  %i.api = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.apj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.api, i64 noundef 0)
          to label %bb.ix unwind label %bb.jo

bb.ix:                                            ; preds = %bb.iw
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.apk, ptr noundef nonnull align 8 dereferenceable(32) %i.apj)
          to label %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.jo

_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ix
  %i.apl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.iy unwind label %bb.jo     ; 3 uses

bb.iy:                                            ; preds = %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 120 ; 2 uses
  %i.apn = load ptr, ptr %65, align 8, !tbaa !1250 ; 5 uses
  store ptr null, ptr %65, align 8, !tbaa !1250
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apl, i64 128 ; 3 uses
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !150 ; 6 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apl, i64 136 ; 2 uses
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !153
  %.not.i.i624 = icmp eq ptr %i.app, %i.apr
  br i1 %.not.i.i624, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aps = ptrtoint ptr %i.apn to i64
  store i64 %i.aps, ptr %i.app, align 8, !tbaa !154
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  store ptr %i.apt, ptr %i.apo, align 8, !tbaa !150
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit642

bb.ja:                                            ; preds = %bb.iy
  %i.apu = load ptr, ptr %i.apm, align 8, !tbaa !156 ; 10 uses
  %i.apv = ptrtoint ptr %i.app to i64             ; 3 uses
  %i.apw = ptrtoint ptr %i.apu to i64             ; 3 uses
  %i.apx = sub i64 %i.apv, %i.apw                 ; 3 uses
  %i.apy = icmp eq i64 %i.apx, 9223372036854775800
  br i1 %i.apy, label %bb.jb, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i625

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc637 unwind label %bb.jp

.noexc637:                                        ; preds = %bb.jb
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i625: ; preds = %bb.ja
  %i.apz = ashr exact i64 %i.apx, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i626 = call i64 @llvm.umax.i64(i64 %i.apz, i64 1)
  %i.aqa = add nsw i64 %.sroa.speculated.i.i.i.i626, %i.apz ; 2 uses
  %i.aqb = icmp ult i64 %i.aqa, %i.apz
  %i.aqc = call i64 @llvm.umin.i64(i64 %i.aqa, i64 1152921504606846975)
  %i.aqd = select i1 %i.aqb, i64 1152921504606846975, i64 %i.aqc ; 3 uses
  %.not.i.i.i.i627 = icmp ne i64 %i.aqd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i627)
  %i.aqe = shl nuw nsw i64 %i.aqd, 3
  %i.aqf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqe) #25
          to label %.noexc638 unwind label %bb.jp ; 10 uses

.noexc638:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i625
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.apx
  %i.aqh = ptrtoint ptr %i.apn to i64
  store i64 %i.aqh, ptr %i.aqg, align 8, !tbaa !154
  %.not10.i.i.i.i.i.i.i628 = icmp eq ptr %i.apu, %i.app
  br i1 %.not10.i.i.i.i.i.i.i628, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633, label %.lr.ph.i.i.i.i.i.i.i629.preheader

.lr.ph.i.i.i.i.i.i.i629.preheader:                ; preds = %.noexc638
  %i.aqi = sub i64 %i.apv, %i.apw
  %i.aqj = add i64 %i.aqi, -8                     ; 2 uses
  %i.aqk = lshr i64 %i.aqj, 3
  %i.aql = add nuw nsw i64 %i.aqk, 1              ; 2 uses
  %min.iters.check1982 = icmp ult i64 %i.aqj, 136
  br i1 %min.iters.check1982, label %.lr.ph.i.i.i.i.i.i.i629.preheader2047, label %vector.memcheck1975

vector.memcheck1975:                              ; preds = %.lr.ph.i.i.i.i.i.i.i629.preheader
  %i.aqm = add i64 %i.apv, -8
  %i.aqn = sub i64 %i.aqm, %i.apw
  %i.aqo = and i64 %i.aqn, -8
  %i.aqp = add i64 %i.aqo, 8                      ; 2 uses
  %scevgep1976 = getelementptr i8, ptr %i.aqf, i64 %i.aqp
  %scevgep1977 = getelementptr i8, ptr %i.apu, i64 %i.aqp
  %bound01978 = icmp ult ptr %i.aqf, %scevgep1977
  %bound11979 = icmp ult ptr %i.apu, %scevgep1976
  %found.conflict1980 = and i1 %bound01978, %bound11979
  br i1 %found.conflict1980, label %.lr.ph.i.i.i.i.i.i.i629.preheader2047, label %vector.ph1983

vector.ph1983:                                    ; preds = %vector.memcheck1975
  %n.vec1985 = and i64 %i.aql, 4611686018427387900 ; 3 uses
  %i.aqq = shl i64 %n.vec1985, 3                  ; 2 uses
  %i.aqr = getelementptr i8, ptr %i.aqf, i64 %i.aqq ; 2 uses
  %i.aqs = getelementptr i8, ptr %i.apu, i64 %i.aqq
  br label %vector.body1986

vector.body1986:                                  ; preds = %vector.body1986, %vector.ph1983
  %index1987 = phi i64 [ 0, %vector.ph1983 ], [ %index.next1992, %vector.body1986 ] ; 2 uses
  %i.aqt = shl i64 %index1987, 3                  ; 2 uses
  %next.gep1988 = getelementptr i8, ptr %i.aqf, i64 %i.aqt ; 2 uses
  %next.gep1989 = getelementptr i8, ptr %i.apu, i64 %i.aqt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.aqu = getelementptr i8, ptr %next.gep1989, i64 16
  %wide.load1990 = load <2 x i64>, ptr %next.gep1989, align 8, !tbaa !154, !alias.scope !1572, !noalias !1567
  %wide.load1991 = load <2 x i64>, ptr %i.aqu, align 8, !tbaa !154, !alias.scope !1572, !noalias !1567
  %i.aqv = getelementptr i8, ptr %next.gep1988, i64 16
  store <2 x i64> %wide.load1990, ptr %next.gep1988, align 8, !tbaa !154, !alias.scope !1575, !noalias !1572
  store <2 x i64> %wide.load1991, ptr %i.aqv, align 8, !tbaa !154, !alias.scope !1575, !noalias !1572
  %i.aqw = getelementptr i8, ptr %next.gep1989, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1989, align 8, !tbaa !154, !alias.scope !1572, !noalias !1567
  store <2 x ptr> splat (ptr null), ptr %i.aqw, align 8, !tbaa !154, !alias.scope !1572, !noalias !1567
  %index.next1992 = add nuw i64 %index1987, 4     ; 2 uses
  %i.aqx = icmp eq i64 %index.next1992, %n.vec1985
  br i1 %i.aqx, label %middle.block1993, label %vector.body1986, !llvm.loop !1577

middle.block1993:                                 ; preds = %vector.body1986
  %cmp.n1994 = icmp eq i64 %i.aql, %n.vec1985
  br i1 %cmp.n1994, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633, label %.lr.ph.i.i.i.i.i.i.i629.preheader2047

.lr.ph.i.i.i.i.i.i.i629.preheader2047:            ; preds = %vector.memcheck1975, %.lr.ph.i.i.i.i.i.i.i629.preheader, %middle.block1993
  %.012.i.i.i.i.i.i.i630.ph = phi ptr [ %i.aqf, %vector.memcheck1975 ], [ %i.aqf, %.lr.ph.i.i.i.i.i.i.i629.preheader ], [ %i.aqr, %middle.block1993 ]
  %.0911.i.i.i.i.i.i.i631.ph = phi ptr [ %i.apu, %vector.memcheck1975 ], [ %i.apu, %.lr.ph.i.i.i.i.i.i.i629.preheader ], [ %i.aqs, %middle.block1993 ]
  br label %.lr.ph.i.i.i.i.i.i.i629

.lr.ph.i.i.i.i.i.i.i629:                          ; preds = %.lr.ph.i.i.i.i.i.i.i629.preheader2047, %.lr.ph.i.i.i.i.i.i.i629
  %.012.i.i.i.i.i.i.i630 = phi ptr [ %i.ara, %.lr.ph.i.i.i.i.i.i.i629 ], [ %.012.i.i.i.i.i.i.i630.ph, %.lr.ph.i.i.i.i.i.i.i629.preheader2047 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i631 = phi ptr [ %i.aqz, %.lr.ph.i.i.i.i.i.i.i629 ], [ %.0911.i.i.i.i.i.i.i631.ph, %.lr.ph.i.i.i.i.i.i.i629.preheader2047 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.aqy = load i64, ptr %.0911.i.i.i.i.i.i.i631, align 8, !tbaa !154, !alias.scope !1570, !noalias !1567
  store i64 %i.aqy, ptr %.012.i.i.i.i.i.i.i630, align 8, !tbaa !154, !alias.scope !1567, !noalias !1570
  store ptr null, ptr %.0911.i.i.i.i.i.i.i631, align 8, !tbaa !154, !alias.scope !1570, !noalias !1567
  %i.aqz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i631, i64 8 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i630, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i632 = icmp eq ptr %i.aqz, %i.app
  br i1 %.not.i.i.i.i.i.i.i632, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633, label %.lr.ph.i.i.i.i.i.i.i629, !llvm.loop !1578

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633: ; preds = %.lr.ph.i.i.i.i.i.i.i629, %middle.block1993, %.noexc638
  %.0.lcssa.i.i.i.i.i.i.i634 = phi ptr [ %i.aqf, %.noexc638 ], [ %i.aqr, %middle.block1993 ], [ %i.ara, %.lr.ph.i.i.i.i.i.i.i629 ]
  %i.arb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i634, i64 8
  %.not.i23.i.i.i635 = icmp eq ptr %i.apu, null
  br i1 %.not.i23.i.i.i635, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i636, label %bb.jc

bb.jc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633
  call void @_ZdlPv(ptr noundef nonnull %i.apu) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i636

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i636: ; preds = %bb.jc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633
  store ptr %i.aqf, ptr %i.apm, align 8, !tbaa !156
  store ptr %i.arb, ptr %i.apo, align 8, !tbaa !150
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.aqf, i64 %i.aqd
  store ptr %i.arc, ptr %i.apq, align 8, !tbaa !153
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit642

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit642: ; preds = %bb.iz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i636
  %.not1358 = icmp eq ptr %i.uq, %i.ur
  br i1 %.not1358, label %._crit_edge1353, label %.lr.ph1352

.lr.ph1352:                                       ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit642
  %i.ard = add nsw i64 %i.up, 1
  %i.are = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 10 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 4 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ari = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.ark = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.arm = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 5 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.aro = getelementptr inbounds nuw i8, ptr %3, i64 208
  br label %bb.jq

._crit_edge1353:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit642
  %i.arp = load ptr, ptr %65, align 8, !tbaa !1250 ; 3 uses
  %.not.i643 = icmp eq ptr %i.arp, null
  br i1 %.not.i643, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit645, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i644

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i644: ; preds = %._crit_edge1353
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !172
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.ars = load ptr, ptr %i.arr, align 8
  call void %i.ars(ptr noundef nonnull align 8 dereferenceable(209) %i.arp) #24, !inline_history !1540
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit645

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit645: ; preds = %._crit_edge1353, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i644
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #24
  %i.art = load ptr, ptr %64, align 8, !tbaa !156 ; 3 uses
  %i.aru = load ptr, ptr %i.apc, align 8, !tbaa !150 ; 2 uses
  %.not4.i.i.i646 = icmp eq ptr %i.art, %i.aru
  br i1 %.not4.i.i.i646, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i655, label %.lr.ph.i.i.i647

.lr.ph.i.i.i647:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit645, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i651
  %.05.i.i.i648 = phi ptr [ %i.arz, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i651 ], [ %i.art, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit645 ] ; 2 uses
  %i.arv = load ptr, ptr %.05.i.i.i648, align 8, !tbaa !154 ; 3 uses
  %.not.i.i.i.i.i649 = icmp eq ptr %i.arv, null
  br i1 %.not.i.i.i.i.i649, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i651, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i650

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i650: ; preds = %.lr.ph.i.i.i647
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !172
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 8
  %i.ary = load ptr, ptr %i.arx, align 8
  call void %i.ary(ptr noundef nonnull align 8 dereferenceable(56) %i.arv) #24, !inline_history !810
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i651

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i651: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i650, %.lr.ph.i.i.i647
  %i.arz = getelementptr inbounds nuw i8, ptr %.05.i.i.i648, i64 8 ; 2 uses
  %.not.i.i.i652 = icmp eq ptr %i.arz, %i.aru
  br i1 %.not.i.i.i652, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i653, label %.lr.ph.i.i.i647, !llvm.loop !430

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i653: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i651
  %.pr.i654 = load ptr, ptr %64, align 8, !tbaa !156
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i655

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i655: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i653, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit645
  %i.asa = phi ptr [ %.pr.i654, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i653 ], [ %i.art, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit645 ] ; 2 uses
  %.not.i.i1.i656 = icmp eq ptr %i.asa, null
  br i1 %.not.i.i1.i656, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit660, label %bb.jd

bb.jd:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i655
  call void @_ZdlPv(ptr noundef nonnull %i.asa) #26
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit660

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit660: ; preds = %bb.jd, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i655
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24
  %i.asb = load ptr, ptr %63, align 8, !tbaa !196 ; 3 uses
  %.not.i661 = icmp eq ptr %i.asb, null
  br i1 %.not.i661, label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11SubqueryRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11SubqueryRefEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit660
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !172
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 8
  %i.ase = load ptr, ptr %i.asd, align 8
  call void %i.ase(ptr noundef nonnull align 8 dereferenceable(112) %i.asb) #24, !inline_history !199
  br label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit660, %_ZNKSt14default_deleteIN6duckdb11SubqueryRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  %i.asf = load ptr, ptr %62, align 8, !tbaa !189 ; 3 uses
  %.not.i662 = icmp eq ptr %i.asf, null
  br i1 %.not.i662, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !172
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.asi = load ptr, ptr %i.ash, align 8
  call void %i.asi(ptr noundef nonnull align 8 dereferenceable(128) %i.asf) #24, !inline_history !200
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  %i.asj = load ptr, ptr %58, align 8, !tbaa !1511 ; 3 uses
  %.not.i663 = icmp eq ptr %i.asj, null
  br i1 %.not.i663, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !172
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 8
  %i.asm = load ptr, ptr %i.asl, align 8
  call void %i.asm(ptr noundef nonnull align 8 dereferenceable(120) %i.asj) #24, !inline_history !1579
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  %i.asn = load ptr, ptr %47, align 8, !tbaa !552 ; 3 uses
  %i.aso = load ptr, ptr %i.rw, align 8, !tbaa !549 ; 2 uses
  %.not4.i.i.i664 = icmp eq ptr %i.asn, %i.aso
  br i1 %.not4.i.i.i664, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i665

.lr.ph.i.i.i665:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i
  %.05.i.i.i666 = phi ptr [ %i.asy, %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i ], [ %i.asn, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.asp = load ptr, ptr %.05.i.i.i666, align 8, !tbaa !156 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb6Binder4BindERNS_8PivotRefE:bb.a

bb.ca:                                            ; preds = %bb.by
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !148
  %.not.i.i.i.i.i138 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i.i.i138, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jm = add nsw i32 %i.jd, -1
  store i32 %i.jm, ptr %i.ja, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.jn = atomicrmw volatile add ptr %i.ja, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i = phi i32 [ %i.jd, %bb.cb ], [ %i.jn, %bb.cc ]
  %i.jo = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jo, label %bb.cd, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit, !prof !205

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #24
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit: ; preds = %bb.bx, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cd
  %i.jp = load ptr, ptr %i.iw, align 8, !tbaa !411 ; 8 uses
  %.not.i.i.i139 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i139, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.jq, align 8, !tbaa !412
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !414
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !172
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #24, !inline_history !428
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !172
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #24, !inline_history !428
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

bb.cg:                                            ; preds = %bb.ce
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !148
  %.not.i.i.i.i140 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i140, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i.i = phi i32 [ %i.jt, %bb.ch ], [ %i.kd, %bb.ci ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ke, label %bb.cj, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, !prof !205

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #24
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.kf = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.ck unwind label %bb.di

bb.ck:                                            ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kh = getelementptr inbounds nuw i8, ptr %22, i64 16
  invoke void @_ZN6duckdb11BindContext11AddSubqueryEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11SubqueryRefERNS_14BoundStatementE(ptr noundef nonnull align 8 dereferenceable(112) %i.kg, i64 noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %i.kh, ptr noundef nonnull align 8 dereferenceable(112) %22, ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.cl unwind label %bb.di

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.ki = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #25
          to label %.noexc141 unwind label %bb.dj ; 3 uses

.noexc141:                                        ; preds = %bb.cl
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ki)
          to label %bb.cn unwind label %bb.cm, !noalias !1644

bb.cm:                                            ; preds = %.noexc141
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ki) #26, !noalias !1644
  br label %.body142

bb.cn:                                            ; preds = %.noexc141
  store ptr %i.ki, ptr %26, align 8, !tbaa !142, !alias.scope !1644
  %i.kk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.co unwind label %bb.dk     ; 3 uses

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.kl = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25
          to label %.noexc149 unwind label %bb.dl ; 6 uses

.noexc149:                                        ; preds = %bb.co
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.km, ptr %3, align 8, !tbaa !144, !noalias !1647
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.kn, align 8, !tbaa !117, !noalias !1647
  store i8 0, ptr %i.km, align 8, !tbaa !148, !noalias !1647
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.kl, ptr noundef nonnull %3)
          to label %bb.cp unwind label %bb.cq, !noalias !1647

bb.cp:                                            ; preds = %.noexc149
  %i.ko = load ptr, ptr %3, align 8, !tbaa !149, !noalias !1647 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.km
  br i1 %i.kp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147: ; preds = %bb.cp
  call void @_ZdlPv(ptr noundef %i.ko) #26, !noalias !1647
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i148

bb.cq:                                            ; preds = %.noexc149
  %i.kq = landingpad { ptr, i32 }
          cleanup
  %i.kr = load ptr, ptr %3, align 8, !tbaa !149, !noalias !1647 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.km
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i144: ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef %i.kr) #26, !noalias !1647
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i145: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i144
  call void @_ZdlPv(ptr noundef nonnull %i.kl) #26, !noalias !1647
  br label %.body150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i148: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kk, i64 120 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kk, i64 128 ; 3 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !150 ; 6 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kk, i64 136 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !153
  %.not.i.i = icmp eq ptr %i.kv, %i.kx
  br i1 %.not.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i148
  %i.ky = ptrtoint ptr %i.kl to i64
  store i64 %i.ky, ptr %i.kv, align 8, !tbaa !154
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store ptr %i.kz, ptr %i.ku, align 8, !tbaa !150
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit161

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i148
  %i.la = load ptr, ptr %i.kt, align 8, !tbaa !156 ; 10 uses
  %i.lb = ptrtoint ptr %i.kv to i64               ; 3 uses
  %i.lc = ptrtoint ptr %i.la to i64               ; 3 uses
  %i.ld = sub i64 %i.lb, %i.lc                    ; 3 uses
  %i.le = icmp eq i64 %i.ld, 9223372036854775800
  br i1 %i.le, label %bb.ct, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc154 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit178

.noexc154:                                        ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cs
  %i.lf = ashr exact i64 %i.ld, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lf, i64 1)
  %i.lg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lf ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.lf
  %i.li = call i64 @llvm.umin.i64(i64 %i.lg, i64 1152921504606846975)
  %i.lj = select i1 %i.lh, i64 1152921504606846975, i64 %i.li ; 3 uses
  %.not.i.i.i.i153 = icmp ne i64 %i.lj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i153)
  %i.lk = shl nuw nsw i64 %i.lj, 3
  %i.ll = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #25
          to label %.noexc155 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit178 ; 10 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ld
  %i.ln = ptrtoint ptr %i.kl to i64
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !154
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.la, %i.kv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc155
  %i.lo = sub i64 %i.lb, %i.lc
  %i.lp = add i64 %i.lo, -8                       ; 2 uses
  %i.lq = lshr i64 %i.lp, 3
  %i.lr = add nuw nsw i64 %i.lq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lp, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader349, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ls = add i64 %i.lb, -8
  %i.lt = sub i64 %i.ls, %i.lc
  %i.lu = and i64 %i.lt, -8
  %i.lv = add i64 %i.lu, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ll, i64 %i.lv
  %scevgep345 = getelementptr i8, ptr %i.la, i64 %i.lv
  %bound0 = icmp ult ptr %i.ll, %scevgep345
  %bound1 = icmp ult ptr %i.la, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader349, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lr, 4611686018427387900     ; 3 uses
  %i.lw = shl i64 %n.vec, 3                       ; 2 uses
  %i.lx = getelementptr i8, ptr %i.ll, i64 %i.lw  ; 2 uses
  %i.ly = getelementptr i8, ptr %i.la, i64 %i.lw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ll, i64 %i.lz ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.la, i64 %i.lz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %i.ma = getelementptr i8, ptr %next.gep346, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep346, align 8, !tbaa !154, !alias.scope !1655, !noalias !1650
  %wide.load347 = load <2 x i64>, ptr %i.ma, align 8, !tbaa !154, !alias.scope !1655, !noalias !1650
  %i.mb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !154, !alias.scope !1658, !noalias !1655
  store <2 x i64> %wide.load347, ptr %i.mb, align 8, !tbaa !154, !alias.scope !1658, !noalias !1655
  %i.mc = getelementptr i8, ptr %next.gep346, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep346, align 8, !tbaa !154, !alias.scope !1655, !noalias !1650
  store <2 x ptr> splat (ptr null), ptr %i.mc, align 8, !tbaa !154, !alias.scope !1655, !noalias !1650
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !1660

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader349

.lr.ph.i.i.i.i.i.i.i.preheader349:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ll, %vector.memcheck ], [ %i.ll, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.lx, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.la, %vector.memcheck ], [ %i.la, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ly, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader349, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader349 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader349 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %i.me = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !154, !alias.scope !1653, !noalias !1650
  store i64 %i.me, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !154, !alias.scope !1650, !noalias !1653
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !154, !alias.scope !1653, !noalias !1650
  %i.mf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mf, %i.kv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1661

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc155
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ll, %.noexc155 ], [ %i.lx, %middle.block ], [ %i.mg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.la) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.cu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ll, ptr %i.kt, align 8, !tbaa !156
  store ptr %i.mh, ptr %i.ku, align 8, !tbaa !150
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lj
  store ptr %i.mi, ptr %i.kw, align 8, !tbaa !153
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit161

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit161: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.cr
  %i.mj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cv unwind label %bb.dk

bb.cv:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit161
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 152 ; 2 uses
  %i.ml = load ptr, ptr %15, align 8, !tbaa !154
  store ptr null, ptr %15, align 8, !tbaa !154
  %i.mm = load ptr, ptr %i.mk, align 8, !tbaa !154 ; 3 uses
  store ptr %i.ml, ptr %i.mk, align 8, !tbaa !154
  %.not.i.i.i.i.i162 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i162, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i163

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i163: ; preds = %bb.cv
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !172
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(56) %i.mm) #24, !inline_history !1029
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.cv, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i163
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.mq = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.cw unwind label %bb.dm

bb.cw:                                            ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.mr = invoke noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cx unwind label %bb.dm

bb.cx:                                            ; preds = %bb.cw
  %i.ms = load i64, ptr %0, align 8, !tbaa !316
  store i64 %i.ms, ptr %28, align 8, !tbaa !316
  store ptr null, ptr %0, align 8, !tbaa !316
  %i.mt = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mv = load <2 x ptr>, ptr %i.mu, align 8, !tbaa !314
  store <2 x ptr> %i.mv, ptr %i.mt, align 8, !tbaa !314
  %i.mw = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !315
  store ptr %i.my, ptr %i.mw, align 8, !tbaa !315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i8 0, i64 24, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.nb = load <2 x ptr>, ptr %i.na, align 8, !tbaa !102
  store <2 x ptr> %i.nb, ptr %i.mz, align 8, !tbaa !102
  %i.nc = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !289
  store ptr %i.ne, ptr %i.nc, align 8, !tbaa !289
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.na, i8 0, i64 24, i1 false)
  %i.nf = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nh = load i8, ptr %i.ng, align 8, !tbaa !511
  store i8 %i.nh, ptr %i.nf, align 8, !tbaa !511
  %i.ni = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.nk = load <2 x ptr>, ptr %i.nj, align 8, !tbaa !526
  store <2 x ptr> %i.nk, ptr %i.ni, align 8, !tbaa !526
  %i.nl = getelementptr inbounds nuw i8, ptr %28, i64 80
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !527
  store ptr %i.nn, ptr %i.nl, align 8, !tbaa !527
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nj, i8 0, i64 24, i1 false)
  %i.no = getelementptr inbounds nuw i8, ptr %28, i64 88
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.nq = load <2 x ptr>, ptr %i.np, align 8, !tbaa !528
  store <2 x ptr> %i.nq, ptr %i.no, align 8, !tbaa !528
  %i.nr = getelementptr inbounds nuw i8, ptr %28, i64 104
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !529
  store ptr %i.nt, ptr %i.nr, align 8, !tbaa !529
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.np, i8 0, i64 24, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %28, i64 112
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.nw = load <2 x ptr>, ptr %i.nv, align 8, !tbaa !530
  store <2 x ptr> %i.nw, ptr %i.nu, align 8, !tbaa !530
  %i.nx = getelementptr inbounds nuw i8, ptr %28, i64 128
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !153
  store ptr %i.nz, ptr %i.nx, align 8, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nv, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb6Binder14BindSelectNodeERNS_10SelectNodeENS_14BoundStatementE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::BoundStatement") align 8 %27, ptr noundef nonnull align 8 dereferenceable(472) %i.mq, ptr noundef nonnull align 8 dereferenceable(240) %i.mr, ptr noundef nonnull %28)
          to label %bb.cy unwind label %bb.dn

bb.cy:                                            ; preds = %bb.cx
  %i.oa = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb14BoundStatementaSEOS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %27) #24 ; 0 uses
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %27) #24
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.ob = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.cz unwind label %bb.dk     ; 2 uses

bb.cz:                                            ; preds = %bb.cy
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !172
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = invoke noundef i64 %i.oe(ptr noundef nonnull align 8 dereferenceable(97) %i.ob)
          to label %bb.da unwind label %bb.dk

bb.da:                                            ; preds = %bb.cz
  %i.og = load ptr, ptr %26, align 8, !tbaa !142  ; 3 uses
  %.not.i164 = icmp eq ptr %i.og, null
  br i1 %.not.i164, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit166, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i165

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i165: ; preds = %bb.da
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !172
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(240) %i.og) #24, !inline_history !201
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit166

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit166: ; preds = %bb.da, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.dp

bb.db:                                            ; preds = %bb.bf
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh
end_hunk_4
begin_hunk_5_@_ZN6duckdb6Binder25BindTableFunctionInternalERNS_13TableFunctionERKNS_16TableFunctionRefENS_6vectorINS_5ValueELb1ESaIS7_EEESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSG_S7_EEENS6_INS_11LogicalTypeELb1ESaISO_EEENS6_ISG_Lb1ESaISG_EEE:bb.a
bb.gz:                                            ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %41) #24
  br label %bb.ju

bb.ha:                                            ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit335
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.hb:                                            ; preds = %bb.gm
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hc:                                            ; preds = %bb.go
  %i.za = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %_ZNSt10unique_ptrIN6duckdb21BoundWindowExpressionESt14default_deleteIS1_EED2Ev.exit428

bb.hd:                                            ; preds = %bb.gq, %bb.gp
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.he:                                            ; preds = %.noexc.i338
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425

bb.hf:                                            ; preds = %.invoke, %bb.hl, %.noexc.i.i349, %bb.gx, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit361, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit, %bb.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit341, %bb.gw, %bb.gv
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit416

bb.hg:                                            ; preds = %bb.gu
  %i.ze = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BoundWindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.hh unwind label %bb.hf

bb.hh:                                            ; preds = %bb.hg
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  br label %.invoke

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit341, %bb.hh
  %i.zg = phi ptr [ %i.zf, %bb.hh ], [ %44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit341 ]
  %i.zh = phi ptr [ %14, %bb.hh ], [ %i.yv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit341 ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.zg, ptr noundef nonnull align 8 dereferenceable(32) %i.zh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit343 unwind label %bb.hf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit343: ; preds = %.invoke
  %i.zi = load ptr, ptr %i.np, align 8, !tbaa !288 ; 8 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.zk = load ptr, ptr %i.zj, align 16, !tbaa !289
  %.not.i346 = icmp eq ptr %i.zi, %i.zk
  br i1 %.not.i346, label %bb.hl, label %bb.hi

bb.hi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit343
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 16 ; 3 uses
  store ptr %i.zl, ptr %i.zi, align 8, !tbaa !144
  %i.zm = load ptr, ptr %44, align 8, !tbaa !149  ; 2 uses
  %i.zn = load i64, ptr %i.xx, align 8, !tbaa !117 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.zn, ptr %i.b, align 8, !tbaa !272
  %i.zo = icmp ugt i64 %i.zn, 15
  br i1 %i.zo, label %.noexc.i.i349, label %._crit_edge.i.i.i347

.noexc.i.i349:                                    ; preds = %bb.hi
  %i.zp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.zi, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc350 unwind label %bb.hf ; 2 uses

.noexc350:                                        ; preds = %.noexc.i.i349
  store ptr %i.zp, ptr %i.zi, align 8, !tbaa !149
  %i.zq = load i64, ptr %i.b, align 8, !tbaa !272
  store i64 %i.zq, ptr %i.zl, align 8, !tbaa !148
  br label %._crit_edge.i.i.i347

._crit_edge.i.i.i347:                             ; preds = %.noexc350, %bb.hi
  %i.zr = phi ptr [ %i.zp, %.noexc350 ], [ %i.zl, %bb.hi ] ; 2 uses
  switch i64 %i.zn, label %bb.hk [
    i64 1, label %bb.hj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i348
  ]

bb.hj:                                            ; preds = %._crit_edge.i.i.i347
  %i.zs = load i8, ptr %i.zm, align 1, !tbaa !148
  store i8 %i.zs, ptr %i.zr, align 1, !tbaa !148
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i348

bb.hk:                                            ; preds = %._crit_edge.i.i.i347
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zr, ptr align 1 %i.zm, i64 %i.zn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i348: ; preds = %bb.hk, %bb.hj, %._crit_edge.i.i.i347
  %i.zt = load i64, ptr %i.b, align 8, !tbaa !272 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  store i64 %i.zt, ptr %i.zu, align 8, !tbaa !117
  %i.zv = load ptr, ptr %i.zi, align 8, !tbaa !149
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.zt
  store i8 0, ptr %i.zw, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.zx = load ptr, ptr %i.np, align 8, !tbaa !288
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 32
  store ptr %i.zy, ptr %i.np, align 8, !tbaa !288
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.hl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit343
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.zi, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.hf

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i348, %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 noundef zeroext 14)
          to label %bb.hm unwind label %bb.ir

bb.hm:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.zz = load ptr, ptr %i.ni, align 8, !tbaa !355 ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 16, !tbaa !315
  %.not.i.i352 = icmp eq ptr %i.zz, %i.aab
  br i1 %.not.i.i352, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.zz, ptr noundef nonnull align 8 dereferenceable(24) %45) #24
  %i.aac = load ptr, ptr %i.ni, align 8, !tbaa !355
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  store ptr %i.aad, ptr %i.ni, align 8, !tbaa !355
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit

bb.ho:                                            ; preds = %bb.hm
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.zz, ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit unwind label %bb.is

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.hn, %bb.ho
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  %i.aae = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalWindowESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.hp unwind label %bb.hf     ; 3 uses

bb.hp:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 40 ; 2 uses
  %i.aag = load ptr, ptr %43, align 8, !tbaa !1882 ; 5 uses
  store ptr null, ptr %43, align 8, !tbaa !1882
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 48 ; 3 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !574 ; 6 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 56 ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !572
  %.not.i.i354 = icmp eq ptr %i.aai, %i.aak
  br i1 %.not.i.i354, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aal = ptrtoint ptr %i.aag to i64
  store i64 %i.aal, ptr %i.aai, align 8, !tbaa !269
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  store ptr %i.aam, ptr %i.aah, align 8, !tbaa !574
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.hr:                                            ; preds = %bb.hp
  %i.aan = load ptr, ptr %i.aaf, align 8, !tbaa !575 ; 10 uses
  %i.aao = ptrtoint ptr %i.aai to i64             ; 3 uses
  %i.aap = ptrtoint ptr %i.aan to i64             ; 3 uses
  %i.aaq = sub i64 %i.aao, %i.aap                 ; 3 uses
  %i.aar = icmp eq i64 %i.aaq, 9223372036854775800
  br i1 %i.aar, label %bb.hs, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc356 unwind label %bb.iu

.noexc356:                                        ; preds = %bb.hs
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.hr
  %i.aas = ashr exact i64 %i.aaq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aas, i64 1)
  %i.aat = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aas ; 2 uses
  %i.aau = icmp ult i64 %i.aat, %i.aas
  %i.aav = call i64 @llvm.umin.i64(i64 %i.aat, i64 1152921504606846975)
  %i.aaw = select i1 %i.aau, i64 1152921504606846975, i64 %i.aav ; 3 uses
  %.not.i.i.i.i355 = icmp ne i64 %i.aaw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i355)
  %i.aax = shl nuw nsw i64 %i.aaw, 3
  %i.aay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aax) #25
          to label %.noexc357 unwind label %bb.iu ; 10 uses

.noexc357:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.aaq
  %i.aba = ptrtoint ptr %i.aag to i64
  store i64 %i.aba, ptr %i.aaz, align 8, !tbaa !269
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aan, %i.aai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc357
  %i.abb = sub i64 %i.aao, %i.aap
  %i.abc = add i64 %i.abb, -8                     ; 2 uses
  %i.abd = lshr i64 %i.abc, 3
  %i.abe = add nuw nsw i64 %i.abd, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.abc, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader906, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.abf = add i64 %i.aao, -8
  %i.abg = sub i64 %i.abf, %i.aap
  %i.abh = and i64 %i.abg, -8
  %i.abi = add i64 %i.abh, 8                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aay, i64 %i.abi
  %scevgep879 = getelementptr i8, ptr %i.aan, i64 %i.abi
  %bound0 = icmp ult ptr %i.aay, %scevgep879
  %bound1 = icmp ult ptr %i.aan, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader906, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abe, 4611686018427387900    ; 3 uses
  %i.abj = shl i64 %n.vec, 3                      ; 2 uses
  %i.abk = getelementptr i8, ptr %i.aay, i64 %i.abj ; 2 uses
  %i.abl = getelementptr i8, ptr %i.aan, i64 %i.abj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abm = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aay, i64 %i.abm ; 2 uses
  %next.gep880 = getelementptr i8, ptr %i.aan, i64 %i.abm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %i.abn = getelementptr i8, ptr %next.gep880, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep880, align 8, !tbaa !269, !alias.scope !1889, !noalias !1884
  %wide.load881 = load <2 x i64>, ptr %i.abn, align 8, !tbaa !269, !alias.scope !1889, !noalias !1884
  %i.abo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !269, !alias.scope !1892, !noalias !1889
  store <2 x i64> %wide.load881, ptr %i.abo, align 8, !tbaa !269, !alias.scope !1892, !noalias !1889
  %i.abp = getelementptr i8, ptr %next.gep880, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep880, align 8, !tbaa !269, !alias.scope !1889, !noalias !1884
  store <2 x ptr> splat (ptr null), ptr %i.abp, align 8, !tbaa !269, !alias.scope !1889, !noalias !1884
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abq = icmp eq i64 %index.next, %n.vec
  br i1 %i.abq, label %middle.block, label %vector.body, !llvm.loop !1894

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abe, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader906

.lr.ph.i.i.i.i.i.i.i.preheader906:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aay, %vector.memcheck ], [ %i.aay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.abk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aan, %vector.memcheck ], [ %i.aan, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.abl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader906, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.abt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader906 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.abs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader906 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %i.abr = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !269, !alias.scope !1887, !noalias !1884
  store i64 %i.abr, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !269, !alias.scope !1884, !noalias !1887
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !269, !alias.scope !1887, !noalias !1884
  %i.abs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.abs, %i.aai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1895

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc357
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aay, %.noexc357 ], [ %i.abk, %middle.block ], [ %i.abt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.abu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aan, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aan) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ht, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aay, ptr %i.aaf, align 8, !tbaa !575
  store ptr %i.abu, ptr %i.aah, align 8, !tbaa !574
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.aaw
  store ptr %i.abv, ptr %i.aaj, align 8, !tbaa !572
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.hq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.abw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalWindowESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.hu unwind label %bb.hf     ; 3 uses

bb.hu:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 noundef zeroext 14)
          to label %bb.hv unwind label %bb.iv

bb.hv:                                            ; preds = %bb.hu
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 72 ; 3 uses
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !355 ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 80
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !315
  %.not.i.i359 = icmp eq ptr %i.aby, %i.aca
  br i1 %.not.i.i359, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aby, ptr noundef nonnull align 8 dereferenceable(24) %46) #24
  %i.acb = load ptr, ptr %i.abx, align 8, !tbaa !355
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 24
  store ptr %i.acc, ptr %i.abx, align 8, !tbaa !355
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit361

bb.hx:                                            ; preds = %bb.hv
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 64
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.acd, ptr %i.aby, ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit361 unwind label %bb.iw

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit361: ; preds = %bb.hw, %bb.hx
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %46) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  %i.ace = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalWindowESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.hy unwind label %bb.hf     ; 3 uses

bb.hy:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit361
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 16 ; 2 uses
  %i.acg = load ptr, ptr %40, align 8, !tbaa !408 ; 5 uses
  store ptr null, ptr %40, align 8, !tbaa !408
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ace, i64 24 ; 3 uses
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !856 ; 6 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ace, i64 32 ; 2 uses
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !1896
  %.not.i.i362 = icmp eq ptr %i.aci, %i.ack
  br i1 %.not.i.i362, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.acl = ptrtoint ptr %i.acg to i64
  store i64 %i.acl, ptr %i.aci, align 8, !tbaa !316
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store ptr %i.acm, ptr %i.ach, align 8, !tbaa !856
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376

bb.ia:                                            ; preds = %bb.hy
  %i.acn = load ptr, ptr %i.acf, align 8, !tbaa !857 ; 10 uses
  %i.aco = ptrtoint ptr %i.aci to i64             ; 3 uses
  %i.acp = ptrtoint ptr %i.acn to i64             ; 3 uses
  %i.acq = sub i64 %i.aco, %i.acp                 ; 3 uses
  %i.acr = icmp eq i64 %i.acq, 9223372036854775800
  br i1 %i.acr, label %bb.ib, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ib:                                            ; preds = %bb.ia
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc372 unwind label %bb.iy

.noexc372:                                        ; preds = %bb.ib
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ia
  %i.acs = ashr exact i64 %i.acq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i363 = call i64 @llvm.umax.i64(i64 %i.acs, i64 1)
  %i.act = add nsw i64 %.sroa.speculated.i.i.i.i363, %i.acs ; 2 uses
  %i.acu = icmp ult i64 %i.act, %i.acs
  %i.acv = call i64 @llvm.umin.i64(i64 %i.act, i64 1152921504606846975)
  %i.acw = select i1 %i.acu, i64 1152921504606846975, i64 %i.acv ; 3 uses
  %.not.i.i.i.i364 = icmp ne i64 %i.acw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i364)
  %i.acx = shl nuw nsw i64 %i.acw, 3
  %i.acy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acx) #25
          to label %.noexc373 unwind label %bb.iy ; 10 uses

.noexc373:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.acq
  %i.ada = ptrtoint ptr %i.acg to i64
  store i64 %i.ada, ptr %i.acz, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i365 = icmp eq ptr %i.acn, %i.aci
  br i1 %.not10.i.i.i.i.i.i.i365, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i366.preheader

.lr.ph.i.i.i.i.i.i.i366.preheader:                ; preds = %.noexc373
  %i.adb = sub i64 %i.aco, %i.acp
  %i.adc = add i64 %i.adb, -8                     ; 2 uses
  %i.add = lshr i64 %i.adc, 3
  %i.ade = add nuw nsw i64 %i.add, 1              ; 2 uses
  %min.iters.check890 = icmp ult i64 %i.adc, 136
  br i1 %min.iters.check890, label %.lr.ph.i.i.i.i.i.i.i366.preheader905, label %vector.memcheck883

vector.memcheck883:                               ; preds = %.lr.ph.i.i.i.i.i.i.i366.preheader
  %i.adf = add i64 %i.aco, -8
  %i.adg = sub i64 %i.adf, %i.acp
  %i.adh = and i64 %i.adg, -8
  %i.adi = add i64 %i.adh, 8                      ; 2 uses
  %scevgep884 = getelementptr i8, ptr %i.acy, i64 %i.adi
  %scevgep885 = getelementptr i8, ptr %i.acn, i64 %i.adi
  %bound0886 = icmp ult ptr %i.acy, %scevgep885
  %bound1887 = icmp ult ptr %i.acn, %scevgep884
  %found.conflict888 = and i1 %bound0886, %bound1887
  br i1 %found.conflict888, label %.lr.ph.i.i.i.i.i.i.i366.preheader905, label %vector.ph891

vector.ph891:                                     ; preds = %vector.memcheck883
  %n.vec893 = and i64 %i.ade, 4611686018427387900 ; 3 uses
  %i.adj = shl i64 %n.vec893, 3                   ; 2 uses
  %i.adk = getelementptr i8, ptr %i.acy, i64 %i.adj ; 2 uses
  %i.adl = getelementptr i8, ptr %i.acn, i64 %i.adj
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %vector.ph891
  %index895 = phi i64 [ 0, %vector.ph891 ], [ %index.next900, %vector.body894 ] ; 2 uses
  %i.adm = shl i64 %index895, 3                   ; 2 uses
  %next.gep896 = getelementptr i8, ptr %i.acy, i64 %i.adm ; 2 uses
  %next.gep897 = getelementptr i8, ptr %i.acn, i64 %i.adm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  %i.adn = getelementptr i8, ptr %next.gep897, i64 16
  %wide.load898 = load <2 x i64>, ptr %next.gep897, align 8, !tbaa !316, !alias.scope !1902, !noalias !1897
  %wide.load899 = load <2 x i64>, ptr %i.adn, align 8, !tbaa !316, !alias.scope !1902, !noalias !1897
  %i.ado = getelementptr i8, ptr %next.gep896, i64 16
  store <2 x i64> %wide.load898, ptr %next.gep896, align 8, !tbaa !316, !alias.scope !1905, !noalias !1902
  store <2 x i64> %wide.load899, ptr %i.ado, align 8, !tbaa !316, !alias.scope !1905, !noalias !1902
  %i.adp = getelementptr i8, ptr %next.gep897, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep897, align 8, !tbaa !316, !alias.scope !1902, !noalias !1897
  store <2 x ptr> splat (ptr null), ptr %i.adp, align 8, !tbaa !316, !alias.scope !1902, !noalias !1897
  %index.next900 = add nuw i64 %index895, 4       ; 2 uses
  %i.adq = icmp eq i64 %index.next900, %n.vec893
  br i1 %i.adq, label %middle.block901, label %vector.body894, !llvm.loop !1907

middle.block901:                                  ; preds = %vector.body894
  %cmp.n902 = icmp eq i64 %i.ade, %n.vec893
  br i1 %cmp.n902, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i366.preheader905

.lr.ph.i.i.i.i.i.i.i366.preheader905:             ; preds = %vector.memcheck883, %.lr.ph.i.i.i.i.i.i.i366.preheader, %middle.block901
  %.012.i.i.i.i.i.i.i367.ph = phi ptr [ %i.acy, %vector.memcheck883 ], [ %i.acy, %.lr.ph.i.i.i.i.i.i.i366.preheader ], [ %i.adk, %middle.block901 ]
  %.0911.i.i.i.i.i.i.i368.ph = phi ptr [ %i.acn, %vector.memcheck883 ], [ %i.acn, %.lr.ph.i.i.i.i.i.i.i366.preheader ], [ %i.adl, %middle.block901 ]
  br label %.lr.ph.i.i.i.i.i.i.i366

.lr.ph.i.i.i.i.i.i.i366:                          ; preds = %.lr.ph.i.i.i.i.i.i.i366.preheader905, %.lr.ph.i.i.i.i.i.i.i366
  %.012.i.i.i.i.i.i.i367 = phi ptr [ %i.adt, %.lr.ph.i.i.i.i.i.i.i366 ], [ %.012.i.i.i.i.i.i.i367.ph, %.lr.ph.i.i.i.i.i.i.i366.preheader905 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i368 = phi ptr [ %i.ads, %.lr.ph.i.i.i.i.i.i.i366 ], [ %.0911.i.i.i.i.i.i.i368.ph, %.lr.ph.i.i.i.i.i.i.i366.preheader905 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  %i.adr = load i64, ptr %.0911.i.i.i.i.i.i.i368, align 8, !tbaa !316, !alias.scope !1900, !noalias !1897
  store i64 %i.adr, ptr %.012.i.i.i.i.i.i.i367, align 8, !tbaa !316, !alias.scope !1897, !noalias !1900
  store ptr null, ptr %.0911.i.i.i.i.i.i.i368, align 8, !tbaa !316, !alias.scope !1900, !noalias !1897
  %i.ads = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i368, i64 8 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i367, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i369 = icmp eq ptr %i.ads, %i.aci
  br i1 %.not.i.i.i.i.i.i.i369, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i366, !llvm.loop !1908

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i366, %middle.block901, %.noexc373
  %.0.lcssa.i.i.i.i.i.i.i370 = phi ptr [ %i.acy, %.noexc373 ], [ %i.adk, %middle.block901 ], [ %i.adt, %.lr.ph.i.i.i.i.i.i.i366 ]
  %i.adu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i370, i64 8
  %.not.i23.i.i.i371 = icmp eq ptr %i.acn, null
  br i1 %.not.i23.i.i.i371, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.acn) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ic, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.acy, ptr %i.acf, align 8, !tbaa !857
  store ptr %i.adu, ptr %i.ach, align 8, !tbaa !856
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.acy, i64 %i.acw
  store ptr %i.adv, ptr %i.acj, align 8, !tbaa !1896
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376: ; preds = %bb.hz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  %i.adw = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 3 uses
  store ptr %i.adw, ptr %48, align 8, !tbaa !144
  %i.adx = load ptr, ptr %44, align 8, !tbaa !149 ; 2 uses
  %i.ady = load i64, ptr %i.xx, align 8, !tbaa !117 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ady, ptr %i.a, align 8, !tbaa !272
  %i.adz = icmp ugt i64 %i.ady, 15
  br i1 %i.adz, label %.noexc.i378, label %._crit_edge.i.i377

.noexc.i378:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376
  %i.aea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc379 unwind label %bb.iz ; 2 uses

.noexc379:                                        ; preds = %.noexc.i378
  store ptr %i.aea, ptr %48, align 8, !tbaa !149
  %i.aeb = load i64, ptr %i.a, align 8, !tbaa !272
  store i64 %i.aeb, ptr %i.adw, align 8, !tbaa !148
  br label %._crit_edge.i.i377

._crit_edge.i.i377:                               ; preds = %.noexc379, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376
  %i.aec = phi ptr [ %i.aea, %.noexc379 ], [ %i.adw, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376 ] ; 2 uses
  switch i64 %i.ady, label %bb.ie [
    i64 1, label %bb.id
    i64 0, label %bb.if
  ]

bb.id:                                            ; preds = %._crit_edge.i.i377
  %i.aed = load i8, ptr %i.adx, align 1, !tbaa !148
  store i8 %i.aed, ptr %i.aec, align 1, !tbaa !148
  br label %bb.if

bb.ie:                                            ; preds = %._crit_edge.i.i377
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aec, ptr align 1 %i.adx, i64 %i.ady, i1 false)
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id, %._crit_edge.i.i377
  %i.aee = load i64, ptr %i.a, align 8, !tbaa !272 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %i.aee, ptr %i.aef, align 8, !tbaa !117
  %i.aeg = load ptr, ptr %48, align 8, !tbaa !149
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %i.aee
  store i8 0, ptr %i.aeh, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.aei = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %bb.ig ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.if
  %i.aej = getelementptr inbounds nuw i8, ptr %48, i64 32
  store ptr %i.aei, ptr %47, align 8, !tbaa !287
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 32
  %i.ael = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %i.aek, ptr %i.ael, align 8, !tbaa !289
  %i.aem = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %48, ptr noundef nonnull %i.aej, ptr noundef nonnull %i.aei)
          to label %bb.ii unwind label %bb.ig

bb.ig:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i, %bb.if
  %i.aen = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeo = load ptr, ptr %47, align 8, !tbaa !287 ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i5.i.i, label %.body381, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @_ZdlPv(ptr noundef nonnull %i.aeo) #26
  br label %.body381

bb.ii:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  store ptr %i.aem, ptr %i.aep, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 noundef zeroext 14)
          to label %bb.ij unwind label %bb.ja

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %i.aeq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %.noexc522 unwind label %.body523.thread ; 3 uses

.noexc522:                                        ; preds = %bb.ij
  store ptr %i.aeq, ptr %49, align 8, !tbaa !354
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 24 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %i.aer, ptr %i.aes, align 8, !tbaa !315
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aeq, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc522
  %i.aet = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  store ptr %i.aer, ptr %i.aet, align 8, !tbaa !355
  invoke void @_ZN6duckdb11BindContext17AddGenericBindingEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.vw, i64 noundef %i.xg, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %49)
          to label %bb.io unwind label %bb.jb

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc522
  %i.aeu = landingpad { ptr, i32 }
          catch ptr null
  %i.aev = extractvalue { ptr, i32 } %i.aeu, 0
  %i.aew = call ptr @__cxa_begin_catch(ptr %i.aev) #24 ; 0 uses
  invoke void @__cxa_rethrow() #27
          to label %bb.im unwind label %bb.ik

bb.ik:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.aex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body523 unwind label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aey = landingpad { ptr, i32 }
          catch ptr null
  %i.aez = extractvalue { ptr, i32 } %i.aey, 0
  call void @__clang_call_terminate(ptr %i.aez) #28
  unreachable

bb.im:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable
end_hunk_5
begin_hunk_6_@_ZN6duckdb21LogicalComparisonJoin21ExtractJoinConditionsERNS_13ClientContextENS_8JoinTypeENS_11JoinRefTypeERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS6_ELb1EEESA_RKSt13unordered_setImSt4hashImESt8equal_toImESaImEESJ_RNS_6vectorINS5_INS_10ExpressionES7_ISL_ELb1EEELb1ESaISN_EEERNSK_INS_13JoinConditionELb1ESaISR_EEESQ_:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.bv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1977

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ck, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cv, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ck, ptr %9, align 8, !tbaa !575
  store ptr %i.df, ptr %i.g, align 8, !tbaa !574
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !572
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ac, %_ZN6duckdbL19CreateJoinConditionERNS_10ExpressionERKSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RNS_6vectorINS_13JoinConditionELb1ESaISC_EEE.exit.thread, %_ZN6duckdbL12CanEliminateERNS_13ClientContextENS_8JoinTypeERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE.exit, %bb.t, %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.038.058, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dh, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare i8 @_ZN6duckdb8JoinSide11GetJoinSideERNS_10ExpressionERKSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL17PushFilterToChildERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEERNS0_INS_10ExpressionES2_IS6_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.1386", align 8 ; 9 uses
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !842
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  %i.d = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25, !noalias !1978 ; 3 uses
  invoke void @_ZN6duckdb13LogicalFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !1978

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit18, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit18 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !1978
  br label %common.resume

_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.d, ptr %2, align 8, !tbaa !836, !alias.scope !1978
  %i.f = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.g = load i64, ptr %0, align 8, !tbaa !316
  store i64 %i.g, ptr %3, align 8, !tbaa !316
  store ptr null, ptr %0, align 8, !tbaa !316
  invoke void @_ZN6duckdb15LogicalOperator8AddChildENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(97) %i.f, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %3, align 8, !tbaa !316    ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.h) #24, !inline_history !444
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !836
  store ptr null, ptr %2, align 8, !tbaa !836
  %i.m = load ptr, ptr %0, align 8, !tbaa !316    ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !316
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit11

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit11: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.m) #24, !inline_history !318
  %.pr = load ptr, ptr %2, align 8, !tbaa !836    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit11
  %i.q = load ptr, ptr %.pr, align 8, !tbaa !172
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(128) %.pr) #24, !inline_history !839
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit11, %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.h

bb.f:                                             ; preds = %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !316    ; 3 uses
  %.not.i13 = icmp eq ptr %i.v, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i14

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i14: ; preds = %bb.g
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.v) #24, !inline_history !444
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i14, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.u, %bb.g ], [ %i.u, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i14 ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !836    ; 3 uses
  %.not.i16 = icmp eq ptr %i.z, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit18, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i17

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i17: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !172
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #24, !inline_history !839
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15, %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.ad = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ae = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalFilterEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.ad) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !574 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !572
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %1, align 8, !tbaa !269
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !269
  store ptr null, ptr %1, align 8, !tbaa !269
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !574
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !575 ; 10 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #25 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %1, align 8, !tbaa !269
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !269
  store ptr null, ptr %1, align 8, !tbaa !269
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = sub i64 %i.an, %i.ao
  %i.bb = add i64 %i.ba, -8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.be = add i64 %i.an, -8
  %i.bf = sub i64 %i.be, %i.ao
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep27 = getelementptr i8, ptr %i.am, i64 %i.bh
  %bound0 = icmp ult ptr %i.ax, %scevgep27
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.am, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.am, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.bm = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !269, !alias.scope !1986, !noalias !1981
  %wide.load29 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !269, !alias.scope !1986, !noalias !1981
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !269, !alias.scope !1989, !noalias !1986
  store <2 x i64> %wide.load29, ptr %i.bn, align 8, !tbaa !269, !alias.scope !1989, !noalias !1986
  %i.bo = getelementptr i8, ptr %next.gep28, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep28, align 8, !tbaa !269, !alias.scope !1986, !noalias !1981
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !269, !alias.scope !1986, !noalias !1981
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1991

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.i.i.preheader31:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader31 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !269, !alias.scope !1984, !noalias !1981
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !269, !alias.scope !1981, !noalias !1984
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !269, !alias.scope !1984, !noalias !1981
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1992

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !575
  store ptr %i.bt, ptr %i.ag, align 8, !tbaa !574
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !572
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21LogicalComparisonJoin21ExtractJoinConditionsERNS_13ClientContextENS_8JoinTypeENS_11JoinRefTypeERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS6_ELb1EEESA_RNS_6vectorINS5_INS_10ExpressionES7_ISC_ELb1EEELb1ESaISE_EEERNSB_INS_13JoinConditionELb1ESaISI_EEESH_(ptr noundef nonnull align 8 dereferenceable(512) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::unordered_set.1321", align 8 ; 14 uses
  %9 = alloca %"class.std::unordered_set.1321", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !1993
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !1995
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.f, ptr %9, align 8, !tbaa !1993
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 1, ptr %i.g, align 8, !tbaa !1995
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb11LogicalJoin18GetTableReferencesERNS_15LogicalOperatorERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(97) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb11LogicalJoin18GetTableReferencesERNS_15LogicalOperatorERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(97) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb21LogicalComparisonJoin21ExtractJoinConditionsERNS_13ClientContextENS_8JoinTypeENS_11JoinRefTypeERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS6_ELb1EEESA_RKSt13unordered_setImSt4hashImESt8equal_toImESaImEESJ_RNS_6vectorINS5_INS_10ExpressionES7_ISL_ELb1EEELb1ESaISN_EEERNSK_INS_13JoinConditionELb1ESaISR_EEESQ_(ptr noundef nonnull align 8 dereferenceable(512) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1996 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.n = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !403 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #26
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1997

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %i.o = load ptr, ptr %9, align 8, !tbaa !1993
  %i.p = load i64, ptr %i.g, align 8, !tbaa !1995
  %i.q = shl i64 %i.p, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.q, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %9, align 8, !tbaa !1993   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.r) #26
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !1996 ; 2 uses
  %.not5.i.i.i.i11 = icmp eq ptr %i.t, null
  br i1 %.not5.i.i.i.i11, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i15, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.u, %.lr.ph.i.i.i.i12 ], [ %i.t, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.06.i.i.i.i13, align 8, !tbaa !403 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i13) #26
  %.not.i.i.i.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i14, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i15, label %.lr.ph.i.i.i.i12, !llvm.loop !1997

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i15: ; preds = %.lr.ph.i.i.i.i12, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.v = load ptr, ptr %8, align 8, !tbaa !1993
  %i.w = load i64, ptr %i.b, align 8, !tbaa !1995
  %i.x = shl i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.x, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %8, align 8, !tbaa !1993   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i15
  call void @_ZdlPv(ptr noundef %i.y) #26
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit16

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit16: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i15, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret void

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %i.aa
}

declare void @_ZN6duckdb11LogicalJoin18GetTableReferencesERNS_15LogicalOperatorERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_6
begin_hunk_7_@_ZN6duckdb21LogicalComparisonJoin10CreateJoinENS_8JoinTypeENS_11JoinRefTypeENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEES7_NS_6vectorINS_13JoinConditionELb1ESaIS9_EEENS8_INS3_INS_10ExpressionES5_ISC_ELb1EEELb1ESaISE_EEE:bb.a
  br i1 %.060, label %bb.v, label %common.resume

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn97581 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ]
  call void @__cxa_free_exception(ptr %i.al) #24
  br label %common.resume

bb.w:                                             ; preds = %bb.l, %.lr.ph, %.lr.ph
  %.168 = phi i64 [ %.067618, %.lr.ph ], [ %.067618, %.lr.ph ], [ %.066619, %bb.l ] ; 2 uses
  %i.ar = add nuw i64 %.066619, 1                 ; 2 uses
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !858 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !861   ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = icmp ult i64 %i.ar, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !2000

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge
  %i.az = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.102, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread

bb.x:                                             ; preds = %._crit_edge.thread
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.fd unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread: ; preds = %._crit_edge.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %.058 = phi i1 [ false, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bc = load ptr, ptr %22, align 8, !tbaa !149  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.bc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br i1 %.058, label %bb.aa, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br i1 %.058, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn93584 = phi { ptr, i32 } [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  call void @__cxa_free_exception(ptr %i.az) #24
  br label %common.resume

bb.ab:                                            ; preds = %._crit_edge
  br i1 %.0, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  %i.bf = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #25, !noalias !2001 ; 3 uses
  invoke void @_ZN6duckdb21LogicalComparisonJoinC1ENS_8JoinTypeENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.bf, i8 noundef zeroext %1, i8 noundef zeroext 56)
          to label %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.ad, !noalias !2001

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit143, %.body145, %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit237, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit332, %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit467, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit519, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.eq, %bb.dh, %bb.cf, %bb.bj, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.ad ], [ %i.ka, %bb.bj ], [ %i.pv, %bb.cf ], [ %i.yf, %bb.dh ], [ %i.ahz, %bb.eq ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn90.pn, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit143 ], [ %.pn87.pn, %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit237 ], [ %.pn85, %.body145 ], [ %i.amc, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit519 ], [ %.pn81.pn.pn, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit332 ], [ %.pn75.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit467 ], [ %.pn575, %bb.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn93584, %bb.aa ], [ %.pn97581, %bb.v ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn95578, %bb.q ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  resume { ptr, i32 } %common.resume.op

bb.ad:                                            ; preds = %bb.ac
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bf) #26, !noalias !2001
  br label %common.resume

_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.ac
  store ptr %i.bf, ptr %24, align 8, !tbaa !2004, !alias.scope !2001
  %i.bh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ae unwind label %bb.ar     ; 3 uses

bb.ae:                                            ; preds = %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 184 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !861 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !858 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bn = load <2 x ptr>, ptr %5, align 8, !tbaa !1998
  store <2 x ptr> %i.bn, ptr %i.bi, align 8, !tbaa !1998
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1965
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !1965
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ae, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i ], [ %i.bj, %bb.ae ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !172
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(88) %i.br) #24, !inline_history !2006
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bv = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !269 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !172
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(88) %i.bv) #24, !inline_history !2006
  br label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.bl
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2007

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i, %bb.ae
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #26
  br label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.af
  %i.ca = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ag unwind label %bb.ar     ; 3 uses

bb.ag:                                            ; preds = %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !856 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1896
  %.not.i.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !857 ; 10 uses
  %i.cj = ptrtoint ptr %i.cd to i64               ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #25
          to label %.noexc111 unwind label %bb.ar ; 10 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  %i.cv = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.cd
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc111
  %i.cw = sub i64 %i.cj, %i.ck
  %i.cx = add i64 %i.cw, -8                       ; 2 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check1103 = icmp ult i64 %i.cx, 136
  br i1 %min.iters.check1103, label %.lr.ph.i.i.i.i.i.i.i.preheader1144, label %vector.memcheck1096

vector.memcheck1096:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.da = add i64 %i.cj, -8
  %i.db = sub i64 %i.da, %i.ck
  %i.dc = and i64 %i.db, -8
  %i.dd = add i64 %i.dc, 8                        ; 2 uses
  %scevgep1097 = getelementptr i8, ptr %i.ct, i64 %i.dd
  %scevgep1098 = getelementptr i8, ptr %i.ci, i64 %i.dd
  %bound01099 = icmp ult ptr %i.ct, %scevgep1098
  %bound11100 = icmp ult ptr %i.ci, %scevgep1097
  %found.conflict1101 = and i1 %bound01099, %bound11100
  br i1 %found.conflict1101, label %.lr.ph.i.i.i.i.i.i.i.preheader1144, label %vector.ph1104

vector.ph1104:                                    ; preds = %vector.memcheck1096
  %n.vec1106 = and i64 %i.cz, 4611686018427387900 ; 3 uses
  %i.de = shl i64 %n.vec1106, 3                   ; 2 uses
  %i.df = getelementptr i8, ptr %i.ct, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.ci, i64 %i.de
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1104
  %index1108 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1113, %vector.body1107 ] ; 2 uses
  %i.dh = shl i64 %index1108, 3                   ; 2 uses
  %next.gep1109 = getelementptr i8, ptr %i.ct, i64 %i.dh ; 2 uses
  %next.gep1110 = getelementptr i8, ptr %i.ci, i64 %i.dh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %i.di = getelementptr i8, ptr %next.gep1110, i64 16
  %wide.load1111 = load <2 x i64>, ptr %next.gep1110, align 8, !tbaa !316, !alias.scope !2013, !noalias !2008
  %wide.load1112 = load <2 x i64>, ptr %i.di, align 8, !tbaa !316, !alias.scope !2013, !noalias !2008
  %i.dj = getelementptr i8, ptr %next.gep1109, i64 16
  store <2 x i64> %wide.load1111, ptr %next.gep1109, align 8, !tbaa !316, !alias.scope !2016, !noalias !2013
  store <2 x i64> %wide.load1112, ptr %i.dj, align 8, !tbaa !316, !alias.scope !2016, !noalias !2013
  %i.dk = getelementptr i8, ptr %next.gep1110, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1110, align 8, !tbaa !316, !alias.scope !2013, !noalias !2008
  store <2 x ptr> splat (ptr null), ptr %i.dk, align 8, !tbaa !316, !alias.scope !2013, !noalias !2008
  %index.next1113 = add nuw i64 %index1108, 4     ; 2 uses
  %i.dl = icmp eq i64 %index.next1113, %n.vec1106
  br i1 %i.dl, label %middle.block1114, label %vector.body1107, !llvm.loop !2018

middle.block1114:                                 ; preds = %vector.body1107
  %cmp.n1115 = icmp eq i64 %i.cz, %n.vec1106
  br i1 %cmp.n1115, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1144

.lr.ph.i.i.i.i.i.i.i.preheader1144:               ; preds = %vector.memcheck1096, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1114
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ct, %vector.memcheck1096 ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.df, %middle.block1114 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %vector.memcheck1096 ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dg, %middle.block1114 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1144, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1144 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1144 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %i.dm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !316, !alias.scope !2011, !noalias !2008
  store i64 %i.dm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !316, !alias.scope !2008, !noalias !2011
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !316, !alias.scope !2011, !noalias !2008
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dn, %i.cd
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2019

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block1114, %.noexc111
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.noexc111 ], [ %i.df, %middle.block1114 ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ct, ptr %i.cb, align 8, !tbaa !857
  store ptr %i.dp, ptr %i.cc, align 8, !tbaa !856
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.dq, ptr %i.ce, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ah
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ak unwind label %bb.ar     ; 3 uses

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !856 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1896
  %.not.i.i112 = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i.i112, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dx = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dy, ptr %i.dt, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit127

bb.am:                                            ; preds = %bb.ak
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !857 ; 10 uses
  %i.ea = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i113

.invoke:                                          ; preds = %bb.am, %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.cont unwind label %bb.ar

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i113: ; preds = %bb.am
  %i.ee = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i114 = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i.i114, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 1152921504606846975)
  %i.ei = select i1 %i.eg, i64 1152921504606846975, i64 %i.eh ; 3 uses
  %.not.i.i.i.i115 = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i.i115)
  %i.ej = shl nuw nsw i64 %i.ei, 3
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #25
          to label %.noexc126 unwind label %bb.ar ; 10 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i113
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  %i.em = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.em, ptr %i.el, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i116 = icmp eq ptr %i.dz, %i.du
  br i1 %.not10.i.i.i.i.i.i.i116, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i121, label %.lr.ph.i.i.i.i.i.i.i117.preheader

.lr.ph.i.i.i.i.i.i.i117.preheader:                ; preds = %.noexc126
  %i.en = sub i64 %i.ea, %i.eb
  %i.eo = add i64 %i.en, -8                       ; 2 uses
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check1125 = icmp ult i64 %i.eo, 136
  br i1 %min.iters.check1125, label %.lr.ph.i.i.i.i.i.i.i117.preheader1142, label %vector.memcheck1118

vector.memcheck1118:                              ; preds = %.lr.ph.i.i.i.i.i.i.i117.preheader
  %i.er = add i64 %i.ea, -8
  %i.es = sub i64 %i.er, %i.eb
  %i.et = and i64 %i.es, -8
  %i.eu = add i64 %i.et, 8                        ; 2 uses
  %scevgep1119 = getelementptr i8, ptr %i.ek, i64 %i.eu
  %scevgep1120 = getelementptr i8, ptr %i.dz, i64 %i.eu
  %bound01121 = icmp ult ptr %i.ek, %scevgep1120
  %bound11122 = icmp ult ptr %i.dz, %scevgep1119
  %found.conflict1123 = and i1 %bound01121, %bound11122
  br i1 %found.conflict1123, label %.lr.ph.i.i.i.i.i.i.i117.preheader1142, label %vector.ph1126

vector.ph1126:                                    ; preds = %vector.memcheck1118
  %n.vec1128 = and i64 %i.eq, 4611686018427387900 ; 3 uses
  %i.ev = shl i64 %n.vec1128, 3                   ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ek, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %i.dz, i64 %i.ev
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %vector.ph1126
  %index1130 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1135, %vector.body1129 ] ; 2 uses
  %i.ey = shl i64 %index1130, 3                   ; 2 uses
  %next.gep1131 = getelementptr i8, ptr %i.ek, i64 %i.ey ; 2 uses
  %next.gep1132 = getelementptr i8, ptr %i.dz, i64 %i.ey ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  %i.ez = getelementptr i8, ptr %next.gep1132, i64 16
  %wide.load1133 = load <2 x i64>, ptr %next.gep1132, align 8, !tbaa !316, !alias.scope !2025, !noalias !2020
  %wide.load1134 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !316, !alias.scope !2025, !noalias !2020
  %i.fa = getelementptr i8, ptr %next.gep1131, i64 16
  store <2 x i64> %wide.load1133, ptr %next.gep1131, align 8, !tbaa !316, !alias.scope !2028, !noalias !2025
  store <2 x i64> %wide.load1134, ptr %i.fa, align 8, !tbaa !316, !alias.scope !2028, !noalias !2025
  %i.fb = getelementptr i8, ptr %next.gep1132, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1132, align 8, !tbaa !316, !alias.scope !2025, !noalias !2020
  store <2 x ptr> splat (ptr null), ptr %i.fb, align 8, !tbaa !316, !alias.scope !2025, !noalias !2020
  %index.next1135 = add nuw i64 %index1130, 4     ; 2 uses
  %i.fc = icmp eq i64 %index.next1135, %n.vec1128
  br i1 %i.fc, label %middle.block1136, label %vector.body1129, !llvm.loop !2030

middle.block1136:                                 ; preds = %vector.body1129
  %cmp.n1137 = icmp eq i64 %i.eq, %n.vec1128
  br i1 %cmp.n1137, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i121, label %.lr.ph.i.i.i.i.i.i.i117.preheader1142

.lr.ph.i.i.i.i.i.i.i117.preheader1142:            ; preds = %vector.memcheck1118, %.lr.ph.i.i.i.i.i.i.i117.preheader, %middle.block1136
  %.012.i.i.i.i.i.i.i118.ph = phi ptr [ %i.ek, %vector.memcheck1118 ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i117.preheader ], [ %i.ew, %middle.block1136 ]
  %.0911.i.i.i.i.i.i.i119.ph = phi ptr [ %i.dz, %vector.memcheck1118 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i117.preheader ], [ %i.ex, %middle.block1136 ]
  br label %.lr.ph.i.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i.i117:                          ; preds = %.lr.ph.i.i.i.i.i.i.i117.preheader1142, %.lr.ph.i.i.i.i.i.i.i117
  %.012.i.i.i.i.i.i.i118 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.i117 ], [ %.012.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i117.preheader1142 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i119 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i117 ], [ %.0911.i.i.i.i.i.i.i119.ph, %.lr.ph.i.i.i.i.i.i.i117.preheader1142 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  %i.fd = load i64, ptr %.0911.i.i.i.i.i.i.i119, align 8, !tbaa !316, !alias.scope !2023, !noalias !2020
  store i64 %i.fd, ptr %.012.i.i.i.i.i.i.i118, align 8, !tbaa !316, !alias.scope !2020, !noalias !2023
  store ptr null, ptr %.0911.i.i.i.i.i.i.i119, align 8, !tbaa !316, !alias.scope !2023, !noalias !2020
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i119, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i118, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i120 = icmp eq ptr %i.fe, %i.du
  br i1 %.not.i.i.i.i.i.i.i120, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i121, label %.lr.ph.i.i.i.i.i.i.i117, !llvm.loop !2031

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i121: ; preds = %.lr.ph.i.i.i.i.i.i.i117, %middle.block1136, %.noexc126
  %.0.lcssa.i.i.i.i.i.i.i122 = phi ptr [ %i.ek, %.noexc126 ], [ %i.ew, %middle.block1136 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i117 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i122, i64 8
  %.not.i23.i.i.i123 = icmp eq ptr %i.dz, null
  br i1 %.not.i23.i.i.i123, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i124, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i121
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i124

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i124: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i121
  store ptr %i.ek, ptr %i.ds, align 8, !tbaa !857
  store ptr %i.fg, ptr %i.dt, align 8, !tbaa !856
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.fh, ptr %i.dv, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit127

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit127: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i124, %bb.al
  %i.fi = load ptr, ptr %6, align 8, !tbaa !571
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !571
  %i.fl = icmp eq ptr %i.fi, %i.fk
  br i1 %i.fl, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit127
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 0)
          to label %bb.ap unwind label %bb.ar     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 272 ; 2 uses
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !269
  store ptr null, ptr %i.fm, align 8, !tbaa !269
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !269 ; 3 uses
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !269
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !172
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(88) %i.fq) #24, !inline_history !597
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.aq, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.fu = load ptr, ptr %i.fj, align 8, !tbaa !574
  %i.fv = load ptr, ptr %6, align 8, !tbaa !575
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = icmp ugt i64 %i.fy, 8
  br i1 %i.fz, label %.lr.ph636, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit

bb.ar:                                            ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i113, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ap, %bb.ao, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit, %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph636:                                        ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %.057635 = phi i64 [ %i.he, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit ], [ 1, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit ] ; 2 uses
  %i.gb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %.lr.ph636
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.057635)
          to label %bb.at unwind label %bb.ay     ; 2 uses

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.gd = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25
          to label %.noexc129 unwind label %bb.ay ; 5 uses

.noexc129:                                        ; preds = %bb.at
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 272 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !269, !noalias !2032
  store i64 %i.gf, ptr %14, align 8, !tbaa !269, !noalias !2032
  store ptr null, ptr %i.ge, align 8, !tbaa !269, !noalias !2032
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !269, !noalias !2032
  store i64 %i.gg, ptr %15, align 8, !tbaa !269, !noalias !2032
  store ptr null, ptr %i.gc, align 8, !tbaa !269, !noalias !2032
  invoke void @_ZN6duckdb26BoundConjunctionExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(112) %i.gd, i8 noundef zeroext 50, ptr noundef nonnull %14, ptr noundef nonnull %15)
          to label %bb.au unwind label %bb.av, !noalias !2032

bb.au:                                            ; preds = %.noexc129
  %i.gh = load ptr, ptr %15, align 8, !tbaa !269, !noalias !2032 ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i128, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %bb.au
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !172, !noalias !2032
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !2032
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(88) %i.gh) #24, !noalias !2032, !inline_history !2035
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i, %bb.au
  %i.gl = load ptr, ptr %14, align 8, !tbaa !269, !noalias !2032 ; 3 uses
  %.not.i5.i = icmp eq ptr %i.gl, null
  br i1 %.not.i5.i, label %bb.aw, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !172, !noalias !2032
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !2032
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(88) %i.gl) #24, !noalias !2032, !inline_history !2035
  br label %bb.aw

bb.av:                                            ; preds = %.noexc129
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %i.gq = load ptr, ptr %15, align 8, !tbaa !269, !noalias !2032 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.gq, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i: ; preds = %bb.av
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !172, !noalias !2032
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !2032
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(88) %i.gq) #24, !noalias !2032, !inline_history !2035
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i, %bb.av
  %i.gu = load ptr, ptr %14, align 8, !tbaa !269, !noalias !2032 ; 3 uses
  %.not.i11.i = icmp eq ptr %i.gu, null
  br i1 %.not.i11.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !172, !noalias !2032
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !2032
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(88) %i.gu) #24, !noalias !2032, !inline_history !2035
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  call void @_ZdlPv(ptr noundef nonnull %i.gd) #26, !noalias !2032
  br label %.body

bb.aw:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.gy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ax unwind label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit139

bb.ax:                                            ; preds = %bb.aw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 272 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !269 ; 3 uses
  store ptr %i.gd, ptr %i.gz, align 8, !tbaa !269
  %.not.i.i.i.i.i130 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i130, label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i131

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i131: ; preds = %bb.ax
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !172
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(88) %i.ha) #24, !inline_history !597
  br label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ax, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i131
  %i.he = add nuw i64 %.057635, 1                 ; 2 uses
  %i.hf = load ptr, ptr %i.fj, align 8, !tbaa !574
  %i.hg = load ptr, ptr %6, align 8, !tbaa !575
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = ashr exact i64 %i.hj, 3
  %i.hl = icmp ult i64 %i.he, %i.hk
  br i1 %i.hl, label %.lr.ph636, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit, !llvm.loop !2036

bb.ay:                                            ; preds = %bb.at, %bb.as, %.lr.ph636
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit139: ; preds = %bb.aw
  %i.hn = landingpad { ptr, i32 }
          cleanup
  %i.ho = load ptr, ptr %i.gd, align 8, !tbaa !172
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(88) %i.gd) #24, !inline_history !271
  br label %.body

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit127
  %i.hr = load ptr, ptr %24, align 8, !tbaa !2004
  store ptr %i.hr, ptr %0, align 8, !tbaa !820
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.fc

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit139, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i, %bb.ay, %bb.ar
  %.pn90.pn = phi { ptr, i32 } [ %i.ga, %bb.ar ], [ %i.hn, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit139 ], [ %i.hm, %bb.ay ], [ %i.gp, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i ]
  %i.hs = load ptr, ptr %24, align 8, !tbaa !2004 ; 3 uses
  %.not.i141 = icmp eq ptr %i.hs, null
  br i1 %.not.i141, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit143, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i142

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i142: ; preds = %.body
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !172
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(280) %i.hs) #24, !inline_history !2037
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit143

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit143: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %common.resume

.thread:                                          ; preds = %..thread_crit_edge, %bb.ab
  %i.hw = phi ptr [ %.pre663, %..thread_crit_edge ], [ %i.as, %bb.ab ]
  %i.hx = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.at, %bb.ab ]
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hw
  %i.ia = load ptr, ptr %6, align 8, !tbaa !571
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !571
  %i.id = icmp eq ptr %i.ia, %i.ic                ; 2 uses
  br i1 %i.hz, label %bb.az, label %bb.cc

bb.az:                                            ; preds = %.thread
  br i1 %i.id, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN6duckdb5Value7BOOLEANEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %25, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.ie = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25
          to label %.noexc144 unwind label %bb.bh ; 6 uses

.noexc144:                                        ; preds = %bb.ba
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %25) #24, !noalias !2038
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.ie, ptr noundef nonnull %13)
          to label %bb.bc unwind label %bb.bb, !noalias !2038

bb.bb:                                            ; preds = %.noexc144
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #24, !noalias !2038
  call void @_ZdlPv(ptr noundef nonnull %i.ie) #26, !noalias !2038
  br label %.body145

bb.bc:                                            ; preds = %.noexc144
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #24, !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.ig = load ptr, ptr %i.ib, align 8, !tbaa !574 ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !572
  %.not.i.i147 = icmp eq ptr %i.ig, %i.ii
  br i1 %.not.i.i147, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ij = ptrtoint ptr %i.ie to i64
  store i64 %i.ij, ptr %i.ig, align 8, !tbaa !269
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %i.ik, ptr %i.ib, align 8, !tbaa !574
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.be:                                            ; preds = %bb.bc
  %i.il = load ptr, ptr %6, align 8, !tbaa !575   ; 10 uses
  %i.im = ptrtoint ptr %i.ig to i64               ; 3 uses
  %i.in = ptrtoint ptr %i.il to i64               ; 3 uses
  %i.io = sub i64 %i.im, %i.in                    ; 3 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775800
  br i1 %i.ip, label %bb.bf, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc157 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit168

.noexc157:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.be
  %i.iq = ashr exact i64 %i.io, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i148 = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i.i148, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 1152921504606846975)
  %i.iu = select i1 %i.is, i64 1152921504606846975, i64 %i.it ; 3 uses
  %.not.i.i.i.i149 = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i149)
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #25
          to label %.noexc158 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit168 ; 10 uses

.noexc158:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.io
  %i.iy = ptrtoint ptr %i.ie to i64
  store i64 %i.iy, ptr %i.ix, align 8, !tbaa !269
  %.not10.i.i.i.i.i.i.i150 = icmp eq ptr %i.il, %i.ig
  br i1 %.not10.i.i.i.i.i.i.i150, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i151.preheader

.lr.ph.i.i.i.i.i.i.i151.preheader:                ; preds = %.noexc158
  %i.iz = sub i64 %i.im, %i.in
  %i.ja = add i64 %i.iz, -8                       ; 2 uses
  %i.jb = lshr i64 %i.ja, 3
  %i.jc = add nuw nsw i64 %i.jb, 1                ; 2 uses
  %min.iters.check1037 = icmp ult i64 %i.ja, 136
  br i1 %min.iters.check1037, label %.lr.ph.i.i.i.i.i.i.i151.preheader1153, label %vector.memcheck1030

vector.memcheck1030:                              ; preds = %.lr.ph.i.i.i.i.i.i.i151.preheader
  %i.jd = add i64 %i.im, -8
  %i.je = sub i64 %i.jd, %i.in
  %i.jf = and i64 %i.je, -8
  %i.jg = add i64 %i.jf, 8                        ; 2 uses
  %scevgep1031 = getelementptr i8, ptr %i.iw, i64 %i.jg
  %scevgep1032 = getelementptr i8, ptr %i.il, i64 %i.jg
  %bound01033 = icmp ult ptr %i.iw, %scevgep1032
  %bound11034 = icmp ult ptr %i.il, %scevgep1031
  %found.conflict1035 = and i1 %bound01033, %bound11034
  br i1 %found.conflict1035, label %.lr.ph.i.i.i.i.i.i.i151.preheader1153, label %vector.ph1038

vector.ph1038:                                    ; preds = %vector.memcheck1030
  %n.vec1040 = and i64 %i.jc, 4611686018427387900 ; 3 uses
  %i.jh = shl i64 %n.vec1040, 3                   ; 2 uses
  %i.ji = getelementptr i8, ptr %i.iw, i64 %i.jh  ; 2 uses
  %i.jj = getelementptr i8, ptr %i.il, i64 %i.jh
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %vector.ph1038
  %index1042 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1047, %vector.body1041 ] ; 2 uses
  %i.jk = shl i64 %index1042, 3                   ; 2 uses
  %next.gep1043 = getelementptr i8, ptr %i.iw, i64 %i.jk ; 2 uses
  %next.gep1044 = getelementptr i8, ptr %i.il, i64 %i.jk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  %i.jl = getelementptr i8, ptr %next.gep1044, i64 16
  %wide.load1045 = load <2 x i64>, ptr %next.gep1044, align 8, !tbaa !269, !alias.scope !2046, !noalias !2041
  %wide.load1046 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !269, !alias.scope !2046, !noalias !2041
  %i.jm = getelementptr i8, ptr %next.gep1043, i64 16
  store <2 x i64> %wide.load1045, ptr %next.gep1043, align 8, !tbaa !269, !alias.scope !2049, !noalias !2046
  store <2 x i64> %wide.load1046, ptr %i.jm, align 8, !tbaa !269, !alias.scope !2049, !noalias !2046
  %i.jn = getelementptr i8, ptr %next.gep1044, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1044, align 8, !tbaa !269, !alias.scope !2046, !noalias !2041
  store <2 x ptr> splat (ptr null), ptr %i.jn, align 8, !tbaa !269, !alias.scope !2046, !noalias !2041
  %index.next1047 = add nuw i64 %index1042, 4     ; 2 uses
  %i.jo = icmp eq i64 %index.next1047, %n.vec1040
  br i1 %i.jo, label %middle.block1048, label %vector.body1041, !llvm.loop !2051

middle.block1048:                                 ; preds = %vector.body1041
  %cmp.n1049 = icmp eq i64 %i.jc, %n.vec1040
  br i1 %cmp.n1049, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i151.preheader1153

.lr.ph.i.i.i.i.i.i.i151.preheader1153:            ; preds = %vector.memcheck1030, %.lr.ph.i.i.i.i.i.i.i151.preheader, %middle.block1048
  %.012.i.i.i.i.i.i.i152.ph = phi ptr [ %i.iw, %vector.memcheck1030 ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i151.preheader ], [ %i.ji, %middle.block1048 ]
  %.0911.i.i.i.i.i.i.i153.ph = phi ptr [ %i.il, %vector.memcheck1030 ], [ %i.il, %.lr.ph.i.i.i.i.i.i.i151.preheader ], [ %i.jj, %middle.block1048 ]
  br label %.lr.ph.i.i.i.i.i.i.i151

.lr.ph.i.i.i.i.i.i.i151:                          ; preds = %.lr.ph.i.i.i.i.i.i.i151.preheader1153, %.lr.ph.i.i.i.i.i.i.i151
  %.012.i.i.i.i.i.i.i152 = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i151 ], [ %.012.i.i.i.i.i.i.i152.ph, %.lr.ph.i.i.i.i.i.i.i151.preheader1153 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i153 = phi ptr [ %i.jq, %.lr.ph.i.i.i.i.i.i.i151 ], [ %.0911.i.i.i.i.i.i.i153.ph, %.lr.ph.i.i.i.i.i.i.i151.preheader1153 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  %i.jp = load i64, ptr %.0911.i.i.i.i.i.i.i153, align 8, !tbaa !269, !alias.scope !2044, !noalias !2041
  store i64 %i.jp, ptr %.012.i.i.i.i.i.i.i152, align 8, !tbaa !269, !alias.scope !2041, !noalias !2044
  store ptr null, ptr %.0911.i.i.i.i.i.i.i153, align 8, !tbaa !269, !alias.scope !2044, !noalias !2041
  %i.jq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i153, i64 8 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i152, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i154 = icmp eq ptr %i.jq, %i.ig
  br i1 %.not.i.i.i.i.i.i.i154, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i151, !llvm.loop !2052

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i151, %middle.block1048, %.noexc158
  %.0.lcssa.i.i.i.i.i.i.i155 = phi ptr [ %i.iw, %.noexc158 ], [ %i.ji, %middle.block1048 ], [ %i.jr, %.lr.ph.i.i.i.i.i.i.i151 ]
  %i.js = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i155, i64 8
  %.not.i23.i.i.i156 = icmp eq ptr %i.il, null
  br i1 %.not.i23.i.i.i156, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.il) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.iw, ptr %6, align 8, !tbaa !575
  store ptr %i.js, ptr %i.ib, align 8, !tbaa !574
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iu
  store ptr %i.jt, ptr %i.ih, align 8, !tbaa !572
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bd
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.bi

bb.bh:                                            ; preds = %bb.ba
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body145

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit168: ; preds = %bb.bf, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  %i.jw = load ptr, ptr %i.ie, align 8, !tbaa !172
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(88) %i.ie) #24, !inline_history !271
  br label %.body145

.body145:                                         ; preds = %bb.bh, %bb.bb, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit168
  %.pn85 = phi { ptr, i32 } [ %i.jv, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit168 ], [ %i.ju, %bb.bh ], [ %i.if, %bb.bb ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %common.resume

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %i.jz = call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #25, !noalias !2053 ; 3 uses
  invoke void @_ZN6duckdb14LogicalAnyJoinC1ENS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(192) %i.jz, i8 noundef zeroext %1)
          to label %_ZN6duckdb9make_uniqINS_14LogicalAnyJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.bj, !noalias !2053

bb.bj:                                            ; preds = %bb.bi
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.jz) #26, !noalias !2053
  br label %common.resume

_ZN6duckdb9make_uniqINS_14LogicalAnyJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.bi
  store ptr %i.jz, ptr %26, align 8, !tbaa !2056, !alias.scope !2053
  %i.kb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bk unwind label %bb.bu     ; 3 uses

bb.bk:                                            ; preds = %_ZN6duckdb9make_uniqINS_14LogicalAnyJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24 ; 3 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !856 ; 6 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 32 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !1896
  %.not.i.i169 = icmp eq ptr %i.ke, %i.kg
  br i1 %.not.i.i169, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kh = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.kh, ptr %i.ke, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store ptr %i.ki, ptr %i.kd, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit184

bb.bm:                                            ; preds = %bb.bk
  %i.kj = load ptr, ptr %i.kc, align 8, !tbaa !857 ; 10 uses
  %i.kk = ptrtoint ptr %i.ke to i64               ; 3 uses
  %i.kl = ptrtoint ptr %i.kj to i64               ; 3 uses
  %i.km = sub i64 %i.kk, %i.kl                    ; 3 uses
  %i.kn = icmp eq i64 %i.km, 9223372036854775800
  br i1 %i.kn, label %.invoke835, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i170

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i170: ; preds = %bb.bm
  %i.ko = ashr exact i64 %i.km, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i171 = call i64 @llvm.umax.i64(i64 %i.ko, i64 1)
  %i.kp = add nsw i64 %.sroa.speculated.i.i.i.i171, %i.ko ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %i.ko
  %i.kr = call i64 @llvm.umin.i64(i64 %i.kp, i64 1152921504606846975)
  %i.ks = select i1 %i.kq, i64 1152921504606846975, i64 %i.kr ; 3 uses
  %.not.i.i.i.i172 = icmp ne i64 %i.ks, 0
  call void @llvm.assume(i1 %.not.i.i.i.i172)
  %i.kt = shl nuw nsw i64 %i.ks, 3
  %i.ku = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kt) #25
          to label %.noexc183 unwind label %bb.bu ; 10 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i170
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.km
  %i.kw = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i173 = icmp eq ptr %i.kj, %i.ke
  br i1 %.not10.i.i.i.i.i.i.i173, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178, label %.lr.ph.i.i.i.i.i.i.i174.preheader

.lr.ph.i.i.i.i.i.i.i174.preheader:                ; preds = %.noexc183
  %i.kx = sub i64 %i.kk, %i.kl
  %i.ky = add i64 %i.kx, -8                       ; 2 uses
  %i.kz = lshr i64 %i.ky, 3
  %i.la = add nuw nsw i64 %i.kz, 1                ; 2 uses
  %min.iters.check1059 = icmp ult i64 %i.ky, 136
  br i1 %min.iters.check1059, label %.lr.ph.i.i.i.i.i.i.i174.preheader1151, label %vector.memcheck1052

vector.memcheck1052:                              ; preds = %.lr.ph.i.i.i.i.i.i.i174.preheader
  %i.lb = add i64 %i.kk, -8
  %i.lc = sub i64 %i.lb, %i.kl
  %i.ld = and i64 %i.lc, -8
  %i.le = add i64 %i.ld, 8                        ; 2 uses
  %scevgep1053 = getelementptr i8, ptr %i.ku, i64 %i.le
  %scevgep1054 = getelementptr i8, ptr %i.kj, i64 %i.le
  %bound01055 = icmp ult ptr %i.ku, %scevgep1054
  %bound11056 = icmp ult ptr %i.kj, %scevgep1053
  %found.conflict1057 = and i1 %bound01055, %bound11056
  br i1 %found.conflict1057, label %.lr.ph.i.i.i.i.i.i.i174.preheader1151, label %vector.ph1060

vector.ph1060:                                    ; preds = %vector.memcheck1052
  %n.vec1062 = and i64 %i.la, 4611686018427387900 ; 3 uses
  %i.lf = shl i64 %n.vec1062, 3                   ; 2 uses
  %i.lg = getelementptr i8, ptr %i.ku, i64 %i.lf  ; 2 uses
  %i.lh = getelementptr i8, ptr %i.kj, i64 %i.lf
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %vector.ph1060
  %index1064 = phi i64 [ 0, %vector.ph1060 ], [ %index.next1069, %vector.body1063 ] ; 2 uses
  %i.li = shl i64 %index1064, 3                   ; 2 uses
  %next.gep1065 = getelementptr i8, ptr %i.ku, i64 %i.li ; 2 uses
  %next.gep1066 = getelementptr i8, ptr %i.kj, i64 %i.li ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.lj = getelementptr i8, ptr %next.gep1066, i64 16
  %wide.load1067 = load <2 x i64>, ptr %next.gep1066, align 8, !tbaa !316, !alias.scope !2063, !noalias !2058
  %wide.load1068 = load <2 x i64>, ptr %i.lj, align 8, !tbaa !316, !alias.scope !2063, !noalias !2058
  %i.lk = getelementptr i8, ptr %next.gep1065, i64 16
  store <2 x i64> %wide.load1067, ptr %next.gep1065, align 8, !tbaa !316, !alias.scope !2066, !noalias !2063
  store <2 x i64> %wide.load1068, ptr %i.lk, align 8, !tbaa !316, !alias.scope !2066, !noalias !2063
  %i.ll = getelementptr i8, ptr %next.gep1066, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1066, align 8, !tbaa !316, !alias.scope !2063, !noalias !2058
  store <2 x ptr> splat (ptr null), ptr %i.ll, align 8, !tbaa !316, !alias.scope !2063, !noalias !2058
  %index.next1069 = add nuw i64 %index1064, 4     ; 2 uses
  %i.lm = icmp eq i64 %index.next1069, %n.vec1062
  br i1 %i.lm, label %middle.block1070, label %vector.body1063, !llvm.loop !2068

middle.block1070:                                 ; preds = %vector.body1063
  %cmp.n1071 = icmp eq i64 %i.la, %n.vec1062
  br i1 %cmp.n1071, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178, label %.lr.ph.i.i.i.i.i.i.i174.preheader1151

.lr.ph.i.i.i.i.i.i.i174.preheader1151:            ; preds = %vector.memcheck1052, %.lr.ph.i.i.i.i.i.i.i174.preheader, %middle.block1070
  %.012.i.i.i.i.i.i.i175.ph = phi ptr [ %i.ku, %vector.memcheck1052 ], [ %i.ku, %.lr.ph.i.i.i.i.i.i.i174.preheader ], [ %i.lg, %middle.block1070 ]
  %.0911.i.i.i.i.i.i.i176.ph = phi ptr [ %i.kj, %vector.memcheck1052 ], [ %i.kj, %.lr.ph.i.i.i.i.i.i.i174.preheader ], [ %i.lh, %middle.block1070 ]
  br label %.lr.ph.i.i.i.i.i.i.i174

.lr.ph.i.i.i.i.i.i.i174:                          ; preds = %.lr.ph.i.i.i.i.i.i.i174.preheader1151, %.lr.ph.i.i.i.i.i.i.i174
  %.012.i.i.i.i.i.i.i175 = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i.i174 ], [ %.012.i.i.i.i.i.i.i175.ph, %.lr.ph.i.i.i.i.i.i.i174.preheader1151 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i176 = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i.i.i174 ], [ %.0911.i.i.i.i.i.i.i176.ph, %.lr.ph.i.i.i.i.i.i.i174.preheader1151 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.ln = load i64, ptr %.0911.i.i.i.i.i.i.i176, align 8, !tbaa !316, !alias.scope !2061, !noalias !2058
  store i64 %i.ln, ptr %.012.i.i.i.i.i.i.i175, align 8, !tbaa !316, !alias.scope !2058, !noalias !2061
  store ptr null, ptr %.0911.i.i.i.i.i.i.i176, align 8, !tbaa !316, !alias.scope !2061, !noalias !2058
  %i.lo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i176, i64 8 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i175, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i177 = icmp eq ptr %i.lo, %i.ke
  br i1 %.not.i.i.i.i.i.i.i177, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178, label %.lr.ph.i.i.i.i.i.i.i174, !llvm.loop !2069

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178: ; preds = %.lr.ph.i.i.i.i.i.i.i174, %middle.block1070, %.noexc183
  %.0.lcssa.i.i.i.i.i.i.i179 = phi ptr [ %i.ku, %.noexc183 ], [ %i.lg, %middle.block1070 ], [ %i.lp, %.lr.ph.i.i.i.i.i.i.i174 ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i179, i64 8
  %.not.i23.i.i.i180 = icmp eq ptr %i.kj, null
  br i1 %.not.i23.i.i.i180, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i181, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178
  call void @_ZdlPv(ptr noundef nonnull %i.kj) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i181

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i181: ; preds = %bb.bn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178
  store ptr %i.ku, ptr %i.kc, align 8, !tbaa !857
  store ptr %i.lq, ptr %i.kd, align 8, !tbaa !856
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.ks
  store ptr %i.lr, ptr %i.kf, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit184

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit184: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i181, %bb.bl
  %i.ls = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bo unwind label %bb.bu     ; 3 uses

bb.bo:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit184
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 24 ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !856 ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 32 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !1896
  %.not.i.i185 = icmp eq ptr %i.lv, %i.lx
  br i1 %.not.i.i185, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ly = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.ly, ptr %i.lv, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store ptr %i.lz, ptr %i.lu, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit200

bb.bq:                                            ; preds = %bb.bo
  %i.ma = load ptr, ptr %i.lt, align 8, !tbaa !857 ; 10 uses
  %i.mb = ptrtoint ptr %i.lv to i64               ; 3 uses
  %i.mc = ptrtoint ptr %i.ma to i64               ; 3 uses
  %i.md = sub i64 %i.mb, %i.mc                    ; 3 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775800
  br i1 %i.me, label %.invoke835, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186

.invoke835:                                       ; preds = %bb.bq, %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.cont836 unwind label %bb.bu

.cont836:                                         ; preds = %.invoke835
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186: ; preds = %bb.bq
  %i.mf = ashr exact i64 %i.md, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i187 = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i.i187, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = call i64 @llvm.umin.i64(i64 %i.mg, i64 1152921504606846975)
  %i.mj = select i1 %i.mh, i64 1152921504606846975, i64 %i.mi ; 3 uses
  %.not.i.i.i.i188 = icmp ne i64 %i.mj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i188)
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #25
          to label %.noexc199 unwind label %bb.bu ; 10 uses

.noexc199:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.md
  %i.mn = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.mn, ptr %i.mm, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i189 = icmp eq ptr %i.ma, %i.lv
  br i1 %.not10.i.i.i.i.i.i.i189, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i194, label %.lr.ph.i.i.i.i.i.i.i190.preheader

.lr.ph.i.i.i.i.i.i.i190.preheader:                ; preds = %.noexc199
  %i.mo = sub i64 %i.mb, %i.mc
  %i.mp = add i64 %i.mo, -8                       ; 2 uses
  %i.mq = lshr i64 %i.mp, 3
  %i.mr = add nuw nsw i64 %i.mq, 1                ; 2 uses
  %min.iters.check1081 = icmp ult i64 %i.mp, 136
  br i1 %min.iters.check1081, label %.lr.ph.i.i.i.i.i.i.i190.preheader1149, label %vector.memcheck1074

vector.memcheck1074:                              ; preds = %.lr.ph.i.i.i.i.i.i.i190.preheader
  %i.ms = add i64 %i.mb, -8
  %i.mt = sub i64 %i.ms, %i.mc
  %i.mu = and i64 %i.mt, -8
  %i.mv = add i64 %i.mu, 8                        ; 2 uses
  %scevgep1075 = getelementptr i8, ptr %i.ml, i64 %i.mv
  %scevgep1076 = getelementptr i8, ptr %i.ma, i64 %i.mv
  %bound01077 = icmp ult ptr %i.ml, %scevgep1076
  %bound11078 = icmp ult ptr %i.ma, %scevgep1075
  %found.conflict1079 = and i1 %bound01077, %bound11078
  br i1 %found.conflict1079, label %.lr.ph.i.i.i.i.i.i.i190.preheader1149, label %vector.ph1082

vector.ph1082:                                    ; preds = %vector.memcheck1074
  %n.vec1084 = and i64 %i.mr, 4611686018427387900 ; 3 uses
  %i.mw = shl i64 %n.vec1084, 3                   ; 2 uses
  %i.mx = getelementptr i8, ptr %i.ml, i64 %i.mw  ; 2 uses
  %i.my = getelementptr i8, ptr %i.ma, i64 %i.mw
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %vector.ph1082
  %index1086 = phi i64 [ 0, %vector.ph1082 ], [ %index.next1091, %vector.body1085 ] ; 2 uses
  %i.mz = shl i64 %index1086, 3                   ; 2 uses
  %next.gep1087 = getelementptr i8, ptr %i.ml, i64 %i.mz ; 2 uses
  %next.gep1088 = getelementptr i8, ptr %i.ma, i64 %i.mz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  %i.na = getelementptr i8, ptr %next.gep1088, i64 16
  %wide.load1089 = load <2 x i64>, ptr %next.gep1088, align 8, !tbaa !316, !alias.scope !2075, !noalias !2070
  %wide.load1090 = load <2 x i64>, ptr %i.na, align 8, !tbaa !316, !alias.scope !2075, !noalias !2070
  %i.nb = getelementptr i8, ptr %next.gep1087, i64 16
  store <2 x i64> %wide.load1089, ptr %next.gep1087, align 8, !tbaa !316, !alias.scope !2078, !noalias !2075
  store <2 x i64> %wide.load1090, ptr %i.nb, align 8, !tbaa !316, !alias.scope !2078, !noalias !2075
  %i.nc = getelementptr i8, ptr %next.gep1088, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1088, align 8, !tbaa !316, !alias.scope !2075, !noalias !2070
  store <2 x ptr> splat (ptr null), ptr %i.nc, align 8, !tbaa !316, !alias.scope !2075, !noalias !2070
  %index.next1091 = add nuw i64 %index1086, 4     ; 2 uses
  %i.nd = icmp eq i64 %index.next1091, %n.vec1084
  br i1 %i.nd, label %middle.block1092, label %vector.body1085, !llvm.loop !2080

middle.block1092:                                 ; preds = %vector.body1085
  %cmp.n1093 = icmp eq i64 %i.mr, %n.vec1084
  br i1 %cmp.n1093, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i194, label %.lr.ph.i.i.i.i.i.i.i190.preheader1149

.lr.ph.i.i.i.i.i.i.i190.preheader1149:            ; preds = %vector.memcheck1074, %.lr.ph.i.i.i.i.i.i.i190.preheader, %middle.block1092
  %.012.i.i.i.i.i.i.i191.ph = phi ptr [ %i.ml, %vector.memcheck1074 ], [ %i.ml, %.lr.ph.i.i.i.i.i.i.i190.preheader ], [ %i.mx, %middle.block1092 ]
  %.0911.i.i.i.i.i.i.i192.ph = phi ptr [ %i.ma, %vector.memcheck1074 ], [ %i.ma, %.lr.ph.i.i.i.i.i.i.i190.preheader ], [ %i.my, %middle.block1092 ]
  br label %.lr.ph.i.i.i.i.i.i.i190

.lr.ph.i.i.i.i.i.i.i190:                          ; preds = %.lr.ph.i.i.i.i.i.i.i190.preheader1149, %.lr.ph.i.i.i.i.i.i.i190
  %.012.i.i.i.i.i.i.i191 = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i.i.i190 ], [ %.012.i.i.i.i.i.i.i191.ph, %.lr.ph.i.i.i.i.i.i.i190.preheader1149 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i192 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i190 ], [ %.0911.i.i.i.i.i.i.i192.ph, %.lr.ph.i.i.i.i.i.i.i190.preheader1149 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  %i.ne = load i64, ptr %.0911.i.i.i.i.i.i.i192, align 8, !tbaa !316, !alias.scope !2073, !noalias !2070
  store i64 %i.ne, ptr %.012.i.i.i.i.i.i.i191, align 8, !tbaa !316, !alias.scope !2070, !noalias !2073
  store ptr null, ptr %.0911.i.i.i.i.i.i.i192, align 8, !tbaa !316, !alias.scope !2073, !noalias !2070
  %i.nf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i192, i64 8 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i191, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i193 = icmp eq ptr %i.nf, %i.lv
  br i1 %.not.i.i.i.i.i.i.i193, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i194, label %.lr.ph.i.i.i.i.i.i.i190, !llvm.loop !2081

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i194: ; preds = %.lr.ph.i.i.i.i.i.i.i190, %middle.block1092, %.noexc199
  %.0.lcssa.i.i.i.i.i.i.i195 = phi ptr [ %i.ml, %.noexc199 ], [ %i.mx, %middle.block1092 ], [ %i.ng, %.lr.ph.i.i.i.i.i.i.i190 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i195, i64 8
  %.not.i23.i.i.i196 = icmp eq ptr %i.ma, null
  br i1 %.not.i23.i.i.i196, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i197, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i194
  call void @_ZdlPv(ptr noundef nonnull %i.ma) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i197

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i197: ; preds = %bb.br, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i194
  store ptr %i.ml, ptr %i.lt, align 8, !tbaa !857
  store ptr %i.nh, ptr %i.lu, align 8, !tbaa !856
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mj
  store ptr %i.ni, ptr %i.lw, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit200

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit200: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i197, %bb.bp
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 0)
          to label %bb.bs unwind label %bb.bu     ; 2 uses

bb.bs:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit200
  %i.nk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 184 ; 2 uses
  %i.nm = load ptr, ptr %i.nj, align 8, !tbaa !269
  store ptr null, ptr %i.nj, align 8, !tbaa !269
  %i.nn = load ptr, ptr %i.nl, align 8, !tbaa !269 ; 3 uses
  store ptr %i.nm, ptr %i.nl, align 8, !tbaa !269
  %.not.i.i.i.i.i201 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i.i.i201, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit203, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i202

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i202: ; preds = %bb.bt
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !172
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(88) %i.nn) #24, !inline_history !597
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit203

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit203: ; preds = %bb.bt, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i202
  %i.nr = load ptr, ptr %i.ib, align 8, !tbaa !574
  %i.ns = load ptr, ptr %6, align 8, !tbaa !575
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = icmp ugt i64 %i.nv, 8
  br i1 %i.nw, label %.lr.ph634, label %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit228, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit203
  %i.nx = load ptr, ptr %26, align 8, !tbaa !2056
  store ptr %i.nx, ptr %0, align 8, !tbaa !820
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.fc

bb.bu:                                            ; preds = %.invoke835, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i170, %bb.bs, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit200, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit184, %_ZN6duckdb9make_uniqINS_14LogicalAnyJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.lr.ph634:                                        ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit203, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit228
  %.056633 = phi i64 [ %i.pc, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit228 ], [ 1, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit203 ] ; 2 uses
  %i.nz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bv unwind label %bb.cb

bb.bv:                                            ; preds = %.lr.ph634
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.056633)
          to label %bb.bw unwind label %bb.cb     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ob = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25
          to label %.noexc216 unwind label %bb.cb ; 5 uses

.noexc216:                                        ; preds = %bb.bw
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 184 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !269, !noalias !2082
  store i64 %i.od, ptr %11, align 8, !tbaa !269, !noalias !2082
  store ptr null, ptr %i.oc, align 8, !tbaa !269, !noalias !2082
  %i.oe = load i64, ptr %i.oa, align 8, !tbaa !269, !noalias !2082
  store i64 %i.oe, ptr %12, align 8, !tbaa !269, !noalias !2082
  store ptr null, ptr %i.oa, align 8, !tbaa !269, !noalias !2082
  invoke void @_ZN6duckdb26BoundConjunctionExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(112) %i.ob, i8 noundef zeroext 50, ptr noundef nonnull %11, ptr noundef nonnull %12)
          to label %bb.bx unwind label %bb.by, !noalias !2082

bb.bx:                                            ; preds = %.noexc216
  %i.of = load ptr, ptr %12, align 8, !tbaa !269, !noalias !2082 ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.of, null
  br i1 %.not.i.i211, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i213, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i212

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i212: ; preds = %bb.bx
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !172, !noalias !2082
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !noalias !2082
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(88) %i.of) #24, !noalias !2082, !inline_history !2035
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i213

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i213: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i212, %bb.bx
  %i.oj = load ptr, ptr %11, align 8, !tbaa !269, !noalias !2082 ; 3 uses
  %.not.i5.i214 = icmp eq ptr %i.oj, null
  br i1 %.not.i5.i214, label %bb.bz, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i215

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i215: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i213
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !172, !noalias !2082
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !2082
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(88) %i.oj) #24, !noalias !2082, !inline_history !2035
  br label %bb.bz

bb.by:                                            ; preds = %.noexc216
  %i.on = landingpad { ptr, i32 }
          cleanup
  %i.oo = load ptr, ptr %12, align 8, !tbaa !269, !noalias !2082 ; 3 uses
  %.not.i8.i205 = icmp eq ptr %i.oo, null
  br i1 %.not.i8.i205, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i207, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i206

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i206: ; preds = %bb.by
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !172, !noalias !2082
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !2082
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(88) %i.oo) #24, !noalias !2082, !inline_history !2035
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i207

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i207: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i206, %bb.by
  %i.os = load ptr, ptr %11, align 8, !tbaa !269, !noalias !2082 ; 3 uses
  %.not.i11.i208 = icmp eq ptr %i.os, null
  br i1 %.not.i11.i208, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i210, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i209

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i209: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i207
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !172, !noalias !2082
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !2082
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(88) %i.os) #24, !noalias !2082, !inline_history !2035
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i210

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i210: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i209, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i207
  call void @_ZdlPv(ptr noundef nonnull %i.ob) #26, !noalias !2082
  br label %.body217

bb.bz:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i215, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ow = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ca unwind label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit234

bb.ca:                                            ; preds = %bb.bz
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 184 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !269 ; 3 uses
  store ptr %i.ob, ptr %i.ox, align 8, !tbaa !269
  %.not.i.i.i.i.i220 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i.i220, label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit228, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i221

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i221: ; preds = %bb.ca
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !172
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(88) %i.oy) #24, !inline_history !597
  br label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit228

_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit228: ; preds = %bb.ca, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i221
  %i.pc = add nuw i64 %.056633, 1                 ; 2 uses
  %i.pd = load ptr, ptr %i.ib, align 8, !tbaa !574
  %i.pe = load ptr, ptr %6, align 8, !tbaa !575
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = ashr exact i64 %i.ph, 3
  %i.pj = icmp ult i64 %i.pc, %i.pi
  br i1 %i.pj, label %.lr.ph634, label %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit, !llvm.loop !2085

bb.cb:                                            ; preds = %bb.bw, %bb.bv, %.lr.ph634
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %.body217

_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit234: ; preds = %bb.bz
  %i.pl = landingpad { ptr, i32 }
          cleanup
  %i.pm = load ptr, ptr %i.ob, align 8, !tbaa !172
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(88) %i.ob) #24, !inline_history !271
  br label %.body217

.body217:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit234, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i210, %bb.cb, %bb.bu
  %.pn87.pn = phi { ptr, i32 } [ %i.ny, %bb.bu ], [ %i.pl, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit234 ], [ %i.pk, %bb.cb ], [ %i.on, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i210 ]
  %i.pp = load ptr, ptr %26, align 8, !tbaa !2056 ; 3 uses
  %.not.i235 = icmp eq ptr %i.pp, null
  br i1 %.not.i235, label %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit237, label %_ZNKSt14default_deleteIN6duckdb14LogicalAnyJoinEEclEPS1_.exit.i236

_ZNKSt14default_deleteIN6duckdb14LogicalAnyJoinEEclEPS1_.exit.i236: ; preds = %.body217
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !172
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(192) %i.pp) #24, !inline_history !2086
  br label %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit237

_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit237: ; preds = %.body217, %_ZNKSt14default_deleteIN6duckdb14LogicalAnyJoinEEclEPS1_.exit.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %common.resume

bb.cc:                                            ; preds = %.thread
  br i1 %i.id, label %bb.ep, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pt = icmp eq i8 %1, 3
  br i1 %i.pt, label %bb.ce, label %bb.dg

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.pu = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #25, !noalias !2087 ; 3 uses
  invoke void @_ZN6duckdb21LogicalComparisonJoinC1ENS_8JoinTypeENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.pu, i8 noundef zeroext 3, i8 noundef zeroext 52)
          to label %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit238 unwind label %bb.cf, !noalias !2087

bb.cf:                                            ; preds = %bb.ce
  %i.pv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.pu) #26, !noalias !2087
  br label %common.resume

_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit238: ; preds = %bb.ce
  store ptr %i.pu, ptr %27, align 8, !tbaa !2004, !alias.scope !2087
  %i.pw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.cg unwind label %bb.cs     ; 3 uses

bb.cg:                                            ; preds = %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit238
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 184 ; 2 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !861 ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 192
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !858 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 200
  %i.qc = load <2 x ptr>, ptr %5, align 8, !tbaa !1998
  store <2 x ptr> %i.qc, ptr %i.px, align 8, !tbaa !1998
  %i.qd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !1965
  store ptr %i.qe, ptr %i.qb, align 8, !tbaa !1965
  %.not4.i.i.i.i.i.i239 = icmp eq ptr %i.py, %i.qa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i239, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i249, label %.lr.ph.i.i.i.i.i.i240

.lr.ph.i.i.i.i.i.i240:                            ; preds = %bb.cg, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i247
  %.05.i.i.i.i.i.i241 = phi ptr [ %i.qo, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i247 ], [ %i.py, %bb.cg ] ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i241, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i242 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i242, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i244, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i243

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i243: ; preds = %.lr.ph.i.i.i.i.i.i240
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !172
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(88) %i.qg) #24, !inline_history !2006
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i244

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i244: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i243, %.lr.ph.i.i.i.i.i.i240
  %i.qk = load ptr, ptr %.05.i.i.i.i.i.i241, align 8, !tbaa !269 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i.i245 = icmp eq ptr %i.qk, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i245, label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i247, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i246

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i246: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i244
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !172
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(88) %i.qk) #24, !inline_history !2006
  br label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i247

_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i247: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i246, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i244
  %i.qo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i241, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i248 = icmp eq ptr %i.qo, %i.qa
  br i1 %.not.i.i.i.i.i.i248, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i249, label %.lr.ph.i.i.i.i.i.i240, !llvm.loop !2007

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i249: ; preds = %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i247, %bb.cg
  %.not.i.i1.i.i.i.i250 = icmp eq ptr %i.py, null
  br i1 %.not.i.i1.i.i.i.i250, label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit251, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i249
  call void @_ZdlPv(ptr noundef nonnull %i.py) #26
  br label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit251

_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit251: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i249, %bb.ch
  %i.qp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.ci unwind label %bb.cs     ; 3 uses

bb.ci:                                            ; preds = %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit251
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 24 ; 3 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !856 ; 6 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 32 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !1896
  %.not.i.i252 = icmp eq ptr %i.qs, %i.qu
  br i1 %.not.i.i252, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qv = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.qv, ptr %i.qs, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store ptr %i.qw, ptr %i.qr, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit267

bb.ck:                                            ; preds = %bb.ci
  %i.qx = load ptr, ptr %i.qq, align 8, !tbaa !857 ; 10 uses
  %i.qy = ptrtoint ptr %i.qs to i64               ; 3 uses
  %i.qz = ptrtoint ptr %i.qx to i64               ; 3 uses
  %i.ra = sub i64 %i.qy, %i.qz                    ; 3 uses
  %i.rb = icmp eq i64 %i.ra, 9223372036854775800
  br i1 %i.rb, label %.invoke837, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i253

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i253: ; preds = %bb.ck
  %i.rc = ashr exact i64 %i.ra, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i254 = call i64 @llvm.umax.i64(i64 %i.rc, i64 1)
  %i.rd = add nsw i64 %.sroa.speculated.i.i.i.i254, %i.rc ; 2 uses
  %i.re = icmp ult i64 %i.rd, %i.rc
  %i.rf = call i64 @llvm.umin.i64(i64 %i.rd, i64 1152921504606846975)
  %i.rg = select i1 %i.re, i64 1152921504606846975, i64 %i.rf ; 3 uses
  %.not.i.i.i.i255 = icmp ne i64 %i.rg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i255)
  %i.rh = shl nuw nsw i64 %i.rg, 3
  %i.ri = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rh) #25
          to label %.noexc266 unwind label %bb.cs ; 10 uses

.noexc266:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i253
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.ra
  %i.rk = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.rk, ptr %i.rj, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i256 = icmp eq ptr %i.qx, %i.qs
  br i1 %.not10.i.i.i.i.i.i.i256, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261, label %.lr.ph.i.i.i.i.i.i.i257.preheader

.lr.ph.i.i.i.i.i.i.i257.preheader:                ; preds = %.noexc266
  %i.rl = sub i64 %i.qy, %i.qz
  %i.rm = add i64 %i.rl, -8                       ; 2 uses
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = add nuw nsw i64 %i.rn, 1                ; 2 uses
  %min.iters.check903 = icmp ult i64 %i.rm, 136
  br i1 %min.iters.check903, label %.lr.ph.i.i.i.i.i.i.i257.preheader1165, label %vector.memcheck896

vector.memcheck896:                               ; preds = %.lr.ph.i.i.i.i.i.i.i257.preheader
  %i.rp = add i64 %i.qy, -8
  %i.rq = sub i64 %i.rp, %i.qz
  %i.rr = and i64 %i.rq, -8
  %i.rs = add i64 %i.rr, 8                        ; 2 uses
  %scevgep897 = getelementptr i8, ptr %i.ri, i64 %i.rs
  %scevgep898 = getelementptr i8, ptr %i.qx, i64 %i.rs
  %bound0899 = icmp ult ptr %i.ri, %scevgep898
  %bound1900 = icmp ult ptr %i.qx, %scevgep897
  %found.conflict901 = and i1 %bound0899, %bound1900
  br i1 %found.conflict901, label %.lr.ph.i.i.i.i.i.i.i257.preheader1165, label %vector.ph904

vector.ph904:                                     ; preds = %vector.memcheck896
  %n.vec906 = and i64 %i.ro, 4611686018427387900  ; 3 uses
  %i.rt = shl i64 %n.vec906, 3                    ; 2 uses
  %i.ru = getelementptr i8, ptr %i.ri, i64 %i.rt  ; 2 uses
  %i.rv = getelementptr i8, ptr %i.qx, i64 %i.rt
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph904
  %index908 = phi i64 [ 0, %vector.ph904 ], [ %index.next913, %vector.body907 ] ; 2 uses
  %i.rw = shl i64 %index908, 3                    ; 2 uses
  %next.gep909 = getelementptr i8, ptr %i.ri, i64 %i.rw ; 2 uses
  %next.gep910 = getelementptr i8, ptr %i.qx, i64 %i.rw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.rx = getelementptr i8, ptr %next.gep910, i64 16
  %wide.load911 = load <2 x i64>, ptr %next.gep910, align 8, !tbaa !316, !alias.scope !2095, !noalias !2090
  %wide.load912 = load <2 x i64>, ptr %i.rx, align 8, !tbaa !316, !alias.scope !2095, !noalias !2090
  %i.ry = getelementptr i8, ptr %next.gep909, i64 16
  store <2 x i64> %wide.load911, ptr %next.gep909, align 8, !tbaa !316, !alias.scope !2098, !noalias !2095
  store <2 x i64> %wide.load912, ptr %i.ry, align 8, !tbaa !316, !alias.scope !2098, !noalias !2095
  %i.rz = getelementptr i8, ptr %next.gep910, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep910, align 8, !tbaa !316, !alias.scope !2095, !noalias !2090
  store <2 x ptr> splat (ptr null), ptr %i.rz, align 8, !tbaa !316, !alias.scope !2095, !noalias !2090
  %index.next913 = add nuw i64 %index908, 4       ; 2 uses
  %i.sa = icmp eq i64 %index.next913, %n.vec906
  br i1 %i.sa, label %middle.block914, label %vector.body907, !llvm.loop !2100

middle.block914:                                  ; preds = %vector.body907
  %cmp.n915 = icmp eq i64 %i.ro, %n.vec906
  br i1 %cmp.n915, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261, label %.lr.ph.i.i.i.i.i.i.i257.preheader1165

.lr.ph.i.i.i.i.i.i.i257.preheader1165:            ; preds = %vector.memcheck896, %.lr.ph.i.i.i.i.i.i.i257.preheader, %middle.block914
  %.012.i.i.i.i.i.i.i258.ph = phi ptr [ %i.ri, %vector.memcheck896 ], [ %i.ri, %.lr.ph.i.i.i.i.i.i.i257.preheader ], [ %i.ru, %middle.block914 ]
  %.0911.i.i.i.i.i.i.i259.ph = phi ptr [ %i.qx, %vector.memcheck896 ], [ %i.qx, %.lr.ph.i.i.i.i.i.i.i257.preheader ], [ %i.rv, %middle.block914 ]
  br label %.lr.ph.i.i.i.i.i.i.i257

.lr.ph.i.i.i.i.i.i.i257:                          ; preds = %.lr.ph.i.i.i.i.i.i.i257.preheader1165, %.lr.ph.i.i.i.i.i.i.i257
  %.012.i.i.i.i.i.i.i258 = phi ptr [ %i.sd, %.lr.ph.i.i.i.i.i.i.i257 ], [ %.012.i.i.i.i.i.i.i258.ph, %.lr.ph.i.i.i.i.i.i.i257.preheader1165 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i259 = phi ptr [ %i.sc, %.lr.ph.i.i.i.i.i.i.i257 ], [ %.0911.i.i.i.i.i.i.i259.ph, %.lr.ph.i.i.i.i.i.i.i257.preheader1165 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.sb = load i64, ptr %.0911.i.i.i.i.i.i.i259, align 8, !tbaa !316, !alias.scope !2093, !noalias !2090
  store i64 %i.sb, ptr %.012.i.i.i.i.i.i.i258, align 8, !tbaa !316, !alias.scope !2090, !noalias !2093
  store ptr null, ptr %.0911.i.i.i.i.i.i.i259, align 8, !tbaa !316, !alias.scope !2093, !noalias !2090
  %i.sc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i259, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i258, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i260 = icmp eq ptr %i.sc, %i.qs
  br i1 %.not.i.i.i.i.i.i.i260, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261, label %.lr.ph.i.i.i.i.i.i.i257, !llvm.loop !2101

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261: ; preds = %.lr.ph.i.i.i.i.i.i.i257, %middle.block914, %.noexc266
  %.0.lcssa.i.i.i.i.i.i.i262 = phi ptr [ %i.ri, %.noexc266 ], [ %i.ru, %middle.block914 ], [ %i.sd, %.lr.ph.i.i.i.i.i.i.i257 ]
  %i.se = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i262, i64 8
  %.not.i23.i.i.i263 = icmp eq ptr %i.qx, null
  br i1 %.not.i23.i.i.i263, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i264, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261
  call void @_ZdlPv(ptr noundef nonnull %i.qx) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i264

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i264: ; preds = %bb.cl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261
  store ptr %i.ri, ptr %i.qq, align 8, !tbaa !857
  store ptr %i.se, ptr %i.qr, align 8, !tbaa !856
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rg
  store ptr %i.sf, ptr %i.qt, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit267

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit267: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i264, %bb.cj
  %i.sg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.cm unwind label %bb.cs     ; 3 uses

bb.cm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit267
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 24 ; 3 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !856 ; 6 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 32 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !1896
  %.not.i.i268 = icmp eq ptr %i.sj, %i.sl
  br i1 %.not.i.i268, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sm = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.sm, ptr %i.sj, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store ptr %i.sn, ptr %i.si, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit283

bb.co:                                            ; preds = %bb.cm
  %i.so = load ptr, ptr %i.sh, align 8, !tbaa !857 ; 10 uses
  %i.sp = ptrtoint ptr %i.sj to i64               ; 3 uses
  %i.sq = ptrtoint ptr %i.so to i64               ; 3 uses
  %i.sr = sub i64 %i.sp, %i.sq                    ; 3 uses
  %i.ss = icmp eq i64 %i.sr, 9223372036854775800
  br i1 %i.ss, label %.invoke837, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i269

.invoke837:                                       ; preds = %bb.co, %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.cont838 unwind label %bb.cs

.cont838:                                         ; preds = %.invoke837
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i269: ; preds = %bb.co
  %i.st = ashr exact i64 %i.sr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i270 = call i64 @llvm.umax.i64(i64 %i.st, i64 1)
  %i.su = add nsw i64 %.sroa.speculated.i.i.i.i270, %i.st ; 2 uses
  %i.sv = icmp ult i64 %i.su, %i.st
  %i.sw = call i64 @llvm.umin.i64(i64 %i.su, i64 1152921504606846975)
  %i.sx = select i1 %i.sv, i64 1152921504606846975, i64 %i.sw ; 3 uses
  %.not.i.i.i.i271 = icmp ne i64 %i.sx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i271)
  %i.sy = shl nuw nsw i64 %i.sx, 3
  %i.sz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sy) #25
          to label %.noexc282 unwind label %bb.cs ; 10 uses

.noexc282:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i269
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.sr
  %i.tb = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.tb, ptr %i.ta, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i272 = icmp eq ptr %i.so, %i.sj
  br i1 %.not10.i.i.i.i.i.i.i272, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i277, label %.lr.ph.i.i.i.i.i.i.i273.preheader

.lr.ph.i.i.i.i.i.i.i273.preheader:                ; preds = %.noexc282
  %i.tc = sub i64 %i.sp, %i.sq
  %i.td = add i64 %i.tc, -8                       ; 2 uses
  %i.te = lshr i64 %i.td, 3
  %i.tf = add nuw nsw i64 %i.te, 1                ; 2 uses
  %min.iters.check925 = icmp ult i64 %i.td, 136
  br i1 %min.iters.check925, label %.lr.ph.i.i.i.i.i.i.i273.preheader1163, label %vector.memcheck918

vector.memcheck918:                               ; preds = %.lr.ph.i.i.i.i.i.i.i273.preheader
  %i.tg = add i64 %i.sp, -8
  %i.th = sub i64 %i.tg, %i.sq
  %i.ti = and i64 %i.th, -8
  %i.tj = add i64 %i.ti, 8                        ; 2 uses
  %scevgep919 = getelementptr i8, ptr %i.sz, i64 %i.tj
  %scevgep920 = getelementptr i8, ptr %i.so, i64 %i.tj
  %bound0921 = icmp ult ptr %i.sz, %scevgep920
  %bound1922 = icmp ult ptr %i.so, %scevgep919
  %found.conflict923 = and i1 %bound0921, %bound1922
  br i1 %found.conflict923, label %.lr.ph.i.i.i.i.i.i.i273.preheader1163, label %vector.ph926

vector.ph926:                                     ; preds = %vector.memcheck918
  %n.vec928 = and i64 %i.tf, 4611686018427387900  ; 3 uses
  %i.tk = shl i64 %n.vec928, 3                    ; 2 uses
  %i.tl = getelementptr i8, ptr %i.sz, i64 %i.tk  ; 2 uses
  %i.tm = getelementptr i8, ptr %i.so, i64 %i.tk
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %vector.ph926
  %index930 = phi i64 [ 0, %vector.ph926 ], [ %index.next935, %vector.body929 ] ; 2 uses
  %i.tn = shl i64 %index930, 3                    ; 2 uses
  %next.gep931 = getelementptr i8, ptr %i.sz, i64 %i.tn ; 2 uses
  %next.gep932 = getelementptr i8, ptr %i.so, i64 %i.tn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  %i.to = getelementptr i8, ptr %next.gep932, i64 16
  %wide.load933 = load <2 x i64>, ptr %next.gep932, align 8, !tbaa !316, !alias.scope !2107, !noalias !2102
  %wide.load934 = load <2 x i64>, ptr %i.to, align 8, !tbaa !316, !alias.scope !2107, !noalias !2102
  %i.tp = getelementptr i8, ptr %next.gep931, i64 16
  store <2 x i64> %wide.load933, ptr %next.gep931, align 8, !tbaa !316, !alias.scope !2110, !noalias !2107
  store <2 x i64> %wide.load934, ptr %i.tp, align 8, !tbaa !316, !alias.scope !2110, !noalias !2107
  %i.tq = getelementptr i8, ptr %next.gep932, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep932, align 8, !tbaa !316, !alias.scope !2107, !noalias !2102
  store <2 x ptr> splat (ptr null), ptr %i.tq, align 8, !tbaa !316, !alias.scope !2107, !noalias !2102
  %index.next935 = add nuw i64 %index930, 4       ; 2 uses
  %i.tr = icmp eq i64 %index.next935, %n.vec928
  br i1 %i.tr, label %middle.block936, label %vector.body929, !llvm.loop !2112

middle.block936:                                  ; preds = %vector.body929
  %cmp.n937 = icmp eq i64 %i.tf, %n.vec928
  br i1 %cmp.n937, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i277, label %.lr.ph.i.i.i.i.i.i.i273.preheader1163

.lr.ph.i.i.i.i.i.i.i273.preheader1163:            ; preds = %vector.memcheck918, %.lr.ph.i.i.i.i.i.i.i273.preheader, %middle.block936
  %.012.i.i.i.i.i.i.i274.ph = phi ptr [ %i.sz, %vector.memcheck918 ], [ %i.sz, %.lr.ph.i.i.i.i.i.i.i273.preheader ], [ %i.tl, %middle.block936 ]
  %.0911.i.i.i.i.i.i.i275.ph = phi ptr [ %i.so, %vector.memcheck918 ], [ %i.so, %.lr.ph.i.i.i.i.i.i.i273.preheader ], [ %i.tm, %middle.block936 ]
  br label %.lr.ph.i.i.i.i.i.i.i273

.lr.ph.i.i.i.i.i.i.i273:                          ; preds = %.lr.ph.i.i.i.i.i.i.i273.preheader1163, %.lr.ph.i.i.i.i.i.i.i273
  %.012.i.i.i.i.i.i.i274 = phi ptr [ %i.tu, %.lr.ph.i.i.i.i.i.i.i273 ], [ %.012.i.i.i.i.i.i.i274.ph, %.lr.ph.i.i.i.i.i.i.i273.preheader1163 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i275 = phi ptr [ %i.tt, %.lr.ph.i.i.i.i.i.i.i273 ], [ %.0911.i.i.i.i.i.i.i275.ph, %.lr.ph.i.i.i.i.i.i.i273.preheader1163 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  %i.ts = load i64, ptr %.0911.i.i.i.i.i.i.i275, align 8, !tbaa !316, !alias.scope !2105, !noalias !2102
  store i64 %i.ts, ptr %.012.i.i.i.i.i.i.i274, align 8, !tbaa !316, !alias.scope !2102, !noalias !2105
  store ptr null, ptr %.0911.i.i.i.i.i.i.i275, align 8, !tbaa !316, !alias.scope !2105, !noalias !2102
  %i.tt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i275, i64 8 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i274, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i276 = icmp eq ptr %i.tt, %i.sj
  br i1 %.not.i.i.i.i.i.i.i276, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i277, label %.lr.ph.i.i.i.i.i.i.i273, !llvm.loop !2113

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i277: ; preds = %.lr.ph.i.i.i.i.i.i.i273, %middle.block936, %.noexc282
  %.0.lcssa.i.i.i.i.i.i.i278 = phi ptr [ %i.sz, %.noexc282 ], [ %i.tl, %middle.block936 ], [ %i.tu, %.lr.ph.i.i.i.i.i.i.i273 ]
  %i.tv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i278, i64 8
  %.not.i23.i.i.i279 = icmp eq ptr %i.so, null
  br i1 %.not.i23.i.i.i279, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i280, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i277
  call void @_ZdlPv(ptr noundef nonnull %i.so) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i280

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i280: ; preds = %bb.cp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i277
  store ptr %i.sz, ptr %i.sh, align 8, !tbaa !857
  store ptr %i.tv, ptr %i.si, align 8, !tbaa !856
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %i.sx
  store ptr %i.tw, ptr %i.sk, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit283

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit283: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i280, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  %i.tx = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
          to label %.noexc284 unwind label %bb.ct ; 3 uses

.noexc284:                                        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit283
  invoke void @_ZN6duckdb13LogicalFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.tx)
          to label %bb.cr unwind label %bb.cq, !noalias !2114

bb.cq:                                            ; preds = %.noexc284
  %i.ty = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.tx) #26, !noalias !2114
  br label %.body285

bb.cr:                                            ; preds = %.noexc284
  store ptr %i.tx, ptr %28, align 8, !tbaa !836, !alias.scope !2114
  %i.tz = load ptr, ptr %6, align 8, !tbaa !571   ; 2 uses
  %i.ua = load ptr, ptr %i.ib, align 8, !tbaa !571 ; 2 uses
  %.not588628 = icmp eq ptr %i.tz, %i.ua
  br i1 %.not588628, label %._crit_edge632, label %.lr.ph631

._crit_edge632:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit302, %bb.cr
  %i.ub = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.cz unwind label %bb.dd     ; 3 uses

bb.cs:                                            ; preds = %.invoke837, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i269, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i253, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit267, %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit251, %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit238
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.ct:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit283
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %.body285

.lr.ph631:                                        ; preds = %bb.cr, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit302
  %.sroa.0541.0629 = phi ptr [ %i.vu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit302 ], [ %i.tz, %bb.cr ] ; 5 uses
  %i.ue = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.cu unwind label %.loopexit ; 3 uses

bb.cu:                                            ; preds = %.lr.ph631
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 40 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 48 ; 3 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !574 ; 6 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 56 ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !572
  %.not.i.i287 = icmp eq ptr %i.uh, %i.uj
  br i1 %.not.i.i287, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.uk = load i64, ptr %.sroa.0541.0629, align 8, !tbaa !269
  store i64 %i.uk, ptr %i.uh, align 8, !tbaa !269
  store ptr null, ptr %.sroa.0541.0629, align 8, !tbaa !269
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  store ptr %i.ul, ptr %i.ug, align 8, !tbaa !574
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit302

bb.cw:                                            ; preds = %bb.cu
  %i.um = load ptr, ptr %i.uf, align 8, !tbaa !575 ; 10 uses
  %i.un = ptrtoint ptr %i.uh to i64               ; 3 uses
  %i.uo = ptrtoint ptr %i.um to i64               ; 3 uses
  %i.up = sub i64 %i.un, %i.uo                    ; 3 uses
  %i.uq = icmp eq i64 %i.up, 9223372036854775800
  br i1 %i.uq, label %bb.cx, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i288

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc300 unwind label %.loopexit.split-lp

.noexc300:                                        ; preds = %bb.cx
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i288: ; preds = %bb.cw
  %i.ur = ashr exact i64 %i.up, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i289 = call i64 @llvm.umax.i64(i64 %i.ur, i64 1)
  %i.us = add nsw i64 %.sroa.speculated.i.i.i.i289, %i.ur ; 2 uses
  %i.ut = icmp ult i64 %i.us, %i.ur
  %i.uu = call i64 @llvm.umin.i64(i64 %i.us, i64 1152921504606846975)
  %i.uv = select i1 %i.ut, i64 1152921504606846975, i64 %i.uu ; 3 uses
  %.not.i.i.i.i290 = icmp ne i64 %i.uv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i290)
  %i.uw = shl nuw nsw i64 %i.uv, 3
  %i.ux = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uw) #25
          to label %.noexc301 unwind label %.loopexit ; 10 uses

.noexc301:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i288
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.up
  %i.uz = load i64, ptr %.sroa.0541.0629, align 8, !tbaa !269
  store i64 %i.uz, ptr %i.uy, align 8, !tbaa !269
  store ptr null, ptr %.sroa.0541.0629, align 8, !tbaa !269
  %.not10.i.i.i.i.i.i.i291 = icmp eq ptr %i.um, %i.uh
  br i1 %.not10.i.i.i.i.i.i.i291, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i296, label %.lr.ph.i.i.i.i.i.i.i292.preheader

.lr.ph.i.i.i.i.i.i.i292.preheader:                ; preds = %.noexc301
  %i.va = sub i64 %i.un, %i.uo
  %i.vb = add i64 %i.va, -8                       ; 2 uses
  %i.vc = lshr i64 %i.vb, 3
  %i.vd = add nuw nsw i64 %i.vc, 1                ; 2 uses
  %min.iters.check949 = icmp ult i64 %i.vb, 56
  br i1 %min.iters.check949, label %.lr.ph.i.i.i.i.i.i.i292.preheader1161, label %vector.memcheck940

vector.memcheck940:                               ; preds = %.lr.ph.i.i.i.i.i.i.i292.preheader
  %scevgep941 = getelementptr i8, ptr %i.ux, i64 8
  %i.ve = add i64 %i.un, -8
  %i.vf = sub i64 %i.ve, %i.uo
  %i.vg = and i64 %i.vf, -8                       ; 2 uses
  %scevgep942 = getelementptr i8, ptr %scevgep941, i64 %i.vg
  %scevgep943 = getelementptr i8, ptr %i.um, i64 8
  %scevgep944 = getelementptr i8, ptr %scevgep943, i64 %i.vg
  %bound0945 = icmp ult ptr %i.ux, %scevgep944
  %bound1946 = icmp ult ptr %i.um, %scevgep942
  %found.conflict947 = and i1 %bound0945, %bound1946
  br i1 %found.conflict947, label %.lr.ph.i.i.i.i.i.i.i292.preheader1161, label %vector.ph950

vector.ph950:                                     ; preds = %vector.memcheck940
  %n.vec952 = and i64 %i.vd, 4611686018427387900  ; 3 uses
  %i.vh = shl i64 %n.vec952, 3                    ; 2 uses
  %i.vi = getelementptr i8, ptr %i.ux, i64 %i.vh  ; 2 uses
  %i.vj = getelementptr i8, ptr %i.um, i64 %i.vh
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %vector.ph950
  %index954 = phi i64 [ 0, %vector.ph950 ], [ %index.next959, %vector.body953 ] ; 2 uses
  %i.vk = shl i64 %index954, 3                    ; 2 uses
  %next.gep955 = getelementptr i8, ptr %i.ux, i64 %i.vk ; 2 uses
  %next.gep956 = getelementptr i8, ptr %i.um, i64 %i.vk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  %i.vl = getelementptr i8, ptr %next.gep956, i64 16
  %wide.load957 = load <2 x i64>, ptr %next.gep956, align 8, !tbaa !269, !alias.scope !2122, !noalias !2117
  %wide.load958 = load <2 x i64>, ptr %i.vl, align 8, !tbaa !269, !alias.scope !2122, !noalias !2117
  %i.vm = getelementptr i8, ptr %next.gep955, i64 16
  store <2 x i64> %wide.load957, ptr %next.gep955, align 8, !tbaa !269, !alias.scope !2125, !noalias !2122
  store <2 x i64> %wide.load958, ptr %i.vm, align 8, !tbaa !269, !alias.scope !2125, !noalias !2122
  %i.vn = getelementptr i8, ptr %next.gep956, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep956, align 8, !tbaa !269, !alias.scope !2122, !noalias !2117
  store <2 x ptr> splat (ptr null), ptr %i.vn, align 8, !tbaa !269, !alias.scope !2122, !noalias !2117
  %index.next959 = add nuw i64 %index954, 4       ; 2 uses
  %i.vo = icmp eq i64 %index.next959, %n.vec952
  br i1 %i.vo, label %middle.block960, label %vector.body953, !llvm.loop !2127

middle.block960:                                  ; preds = %vector.body953
  %cmp.n961 = icmp eq i64 %i.vd, %n.vec952
  br i1 %cmp.n961, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i296, label %.lr.ph.i.i.i.i.i.i.i292.preheader1161

.lr.ph.i.i.i.i.i.i.i292.preheader1161:            ; preds = %vector.memcheck940, %.lr.ph.i.i.i.i.i.i.i292.preheader, %middle.block960
  %.012.i.i.i.i.i.i.i293.ph = phi ptr [ %i.ux, %vector.memcheck940 ], [ %i.ux, %.lr.ph.i.i.i.i.i.i.i292.preheader ], [ %i.vi, %middle.block960 ]
  %.0911.i.i.i.i.i.i.i294.ph = phi ptr [ %i.um, %vector.memcheck940 ], [ %i.um, %.lr.ph.i.i.i.i.i.i.i292.preheader ], [ %i.vj, %middle.block960 ]
  br label %.lr.ph.i.i.i.i.i.i.i292

.lr.ph.i.i.i.i.i.i.i292:                          ; preds = %.lr.ph.i.i.i.i.i.i.i292.preheader1161, %.lr.ph.i.i.i.i.i.i.i292
  %.012.i.i.i.i.i.i.i293 = phi ptr [ %i.vr, %.lr.ph.i.i.i.i.i.i.i292 ], [ %.012.i.i.i.i.i.i.i293.ph, %.lr.ph.i.i.i.i.i.i.i292.preheader1161 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i294 = phi ptr [ %i.vq, %.lr.ph.i.i.i.i.i.i.i292 ], [ %.0911.i.i.i.i.i.i.i294.ph, %.lr.ph.i.i.i.i.i.i.i292.preheader1161 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  %i.vp = load i64, ptr %.0911.i.i.i.i.i.i.i294, align 8, !tbaa !269, !alias.scope !2120, !noalias !2117
  store i64 %i.vp, ptr %.012.i.i.i.i.i.i.i293, align 8, !tbaa !269, !alias.scope !2117, !noalias !2120
  store ptr null, ptr %.0911.i.i.i.i.i.i.i294, align 8, !tbaa !269, !alias.scope !2120, !noalias !2117
  %i.vq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i294, i64 8 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i293, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i295 = icmp eq ptr %i.vq, %i.uh
  br i1 %.not.i.i.i.i.i.i.i295, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i296, label %.lr.ph.i.i.i.i.i.i.i292, !llvm.loop !2128

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i296: ; preds = %.lr.ph.i.i.i.i.i.i.i292, %middle.block960, %.noexc301
  %.0.lcssa.i.i.i.i.i.i.i297 = phi ptr [ %i.ux, %.noexc301 ], [ %i.vi, %middle.block960 ], [ %i.vr, %.lr.ph.i.i.i.i.i.i.i292 ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i297, i64 8
  %.not.i23.i.i.i298 = icmp eq ptr %i.um, null
  br i1 %.not.i23.i.i.i298, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i299, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i296
  call void @_ZdlPv(ptr noundef nonnull %i.um) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i299

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i299: ; preds = %bb.cy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i296
  store ptr %i.ux, ptr %i.uf, align 8, !tbaa !575
  store ptr %i.vs, ptr %i.ug, align 8, !tbaa !574
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uv
  store ptr %i.vt, ptr %i.ui, align 8, !tbaa !572
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit302

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit302: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i299, %bb.cv
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0541.0629, i64 8 ; 2 uses
  %.not588 = icmp eq ptr %i.vu, %i.ua
  br i1 %.not588, label %._crit_edge632, label %.lr.ph631

.loopexit:                                        ; preds = %.lr.ph631, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i288
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326

.loopexit.split-lp:                               ; preds = %bb.cx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326

bb.cz:                                            ; preds = %._crit_edge632
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 2 uses
  %i.vw = load ptr, ptr %27, align 8, !tbaa !2004 ; 5 uses
  store ptr null, ptr %27, align 8, !tbaa !2004
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ub, i64 24 ; 3 uses
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !856 ; 6 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ub, i64 32 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !1896
  %.not.i.i303 = icmp eq ptr %i.vy, %i.wa
  br i1 %.not.i.i303, label %bb.da, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.cz
  %i.wb = ptrtoint ptr %i.vw to i64
  store i64 %i.wb, ptr %i.vy, align 8, !tbaa !316
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  store ptr %i.wc, ptr %i.vx, align 8, !tbaa !856
  %i.wd = load ptr, ptr %28, align 8, !tbaa !836
  store ptr %i.wd, ptr %0, align 8, !tbaa !820
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit323

bb.da:                                            ; preds = %bb.cz
  %i.we = load ptr, ptr %i.vv, align 8, !tbaa !857 ; 10 uses
  %i.wf = ptrtoint ptr %i.vy to i64               ; 3 uses
  %i.wg = ptrtoint ptr %i.we to i64               ; 3 uses
  %i.wh = sub i64 %i.wf, %i.wg                    ; 3 uses
  %i.wi = icmp eq i64 %i.wh, 9223372036854775800
  br i1 %i.wi, label %bb.db, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i304

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.noexc316 unwind label %bb.de

.noexc316:                                        ; preds = %bb.db
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i304: ; preds = %bb.da
  %i.wj = ashr exact i64 %i.wh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i305 = call i64 @llvm.umax.i64(i64 %i.wj, i64 1)
  %i.wk = add nsw i64 %.sroa.speculated.i.i.i.i305, %i.wj ; 2 uses
  %i.wl = icmp ult i64 %i.wk, %i.wj
  %i.wm = call i64 @llvm.umin.i64(i64 %i.wk, i64 1152921504606846975)
  %i.wn = select i1 %i.wl, i64 1152921504606846975, i64 %i.wm ; 3 uses
  %.not.i.i.i.i306 = icmp ne i64 %i.wn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i306)
  %i.wo = shl nuw nsw i64 %i.wn, 3
  %i.wp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wo) #25
          to label %.noexc317 unwind label %bb.de ; 10 uses

.noexc317:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i304
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.wh
  %i.wr = ptrtoint ptr %i.vw to i64
  store i64 %i.wr, ptr %i.wq, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i307 = icmp eq ptr %i.we, %i.vy
  br i1 %.not10.i.i.i.i.i.i.i307, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i312, label %.lr.ph.i.i.i.i.i.i.i308.preheader

.lr.ph.i.i.i.i.i.i.i308.preheader:                ; preds = %.noexc317
  %i.ws = sub i64 %i.wf, %i.wg
  %i.wt = add i64 %i.ws, -8                       ; 2 uses
  %i.wu = lshr i64 %i.wt, 3
  %i.wv = add nuw nsw i64 %i.wu, 1                ; 2 uses
  %min.iters.check971 = icmp ult i64 %i.wt, 136
  br i1 %min.iters.check971, label %.lr.ph.i.i.i.i.i.i.i308.preheader1159, label %vector.memcheck964

vector.memcheck964:                               ; preds = %.lr.ph.i.i.i.i.i.i.i308.preheader
  %i.ww = add i64 %i.wf, -8
  %i.wx = sub i64 %i.ww, %i.wg
  %i.wy = and i64 %i.wx, -8
  %i.wz = add i64 %i.wy, 8                        ; 2 uses
  %scevgep965 = getelementptr i8, ptr %i.wp, i64 %i.wz
  %scevgep966 = getelementptr i8, ptr %i.we, i64 %i.wz
  %bound0967 = icmp ult ptr %i.wp, %scevgep966
  %bound1968 = icmp ult ptr %i.we, %scevgep965
  %found.conflict969 = and i1 %bound0967, %bound1968
  br i1 %found.conflict969, label %.lr.ph.i.i.i.i.i.i.i308.preheader1159, label %vector.ph972

vector.ph972:                                     ; preds = %vector.memcheck964
  %n.vec974 = and i64 %i.wv, 4611686018427387900  ; 3 uses
  %i.xa = shl i64 %n.vec974, 3                    ; 2 uses
  %i.xb = getelementptr i8, ptr %i.wp, i64 %i.xa  ; 2 uses
  %i.xc = getelementptr i8, ptr %i.we, i64 %i.xa
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph972
  %index976 = phi i64 [ 0, %vector.ph972 ], [ %index.next981, %vector.body975 ] ; 2 uses
  %i.xd = shl i64 %index976, 3                    ; 2 uses
  %next.gep977 = getelementptr i8, ptr %i.wp, i64 %i.xd ; 2 uses
  %next.gep978 = getelementptr i8, ptr %i.we, i64 %i.xd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %i.xe = getelementptr i8, ptr %next.gep978, i64 16
  %wide.load979 = load <2 x i64>, ptr %next.gep978, align 8, !tbaa !316, !alias.scope !2134, !noalias !2129
  %wide.load980 = load <2 x i64>, ptr %i.xe, align 8, !tbaa !316, !alias.scope !2134, !noalias !2129
  %i.xf = getelementptr i8, ptr %next.gep977, i64 16
  store <2 x i64> %wide.load979, ptr %next.gep977, align 8, !tbaa !316, !alias.scope !2137, !noalias !2134
  store <2 x i64> %wide.load980, ptr %i.xf, align 8, !tbaa !316, !alias.scope !2137, !noalias !2134
  %i.xg = getelementptr i8, ptr %next.gep978, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep978, align 8, !tbaa !316, !alias.scope !2134, !noalias !2129
  store <2 x ptr> splat (ptr null), ptr %i.xg, align 8, !tbaa !316, !alias.scope !2134, !noalias !2129
  %index.next981 = add nuw i64 %index976, 4       ; 2 uses
  %i.xh = icmp eq i64 %index.next981, %n.vec974
  br i1 %i.xh, label %middle.block982, label %vector.body975, !llvm.loop !2139

middle.block982:                                  ; preds = %vector.body975
  %cmp.n983 = icmp eq i64 %i.wv, %n.vec974
  br i1 %cmp.n983, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i312, label %.lr.ph.i.i.i.i.i.i.i308.preheader1159

.lr.ph.i.i.i.i.i.i.i308.preheader1159:            ; preds = %vector.memcheck964, %.lr.ph.i.i.i.i.i.i.i308.preheader, %middle.block982
  %.012.i.i.i.i.i.i.i309.ph = phi ptr [ %i.wp, %vector.memcheck964 ], [ %i.wp, %.lr.ph.i.i.i.i.i.i.i308.preheader ], [ %i.xb, %middle.block982 ]
  %.0911.i.i.i.i.i.i.i310.ph = phi ptr [ %i.we, %vector.memcheck964 ], [ %i.we, %.lr.ph.i.i.i.i.i.i.i308.preheader ], [ %i.xc, %middle.block982 ]
  br label %.lr.ph.i.i.i.i.i.i.i308

.lr.ph.i.i.i.i.i.i.i308:                          ; preds = %.lr.ph.i.i.i.i.i.i.i308.preheader1159, %.lr.ph.i.i.i.i.i.i.i308
  %.012.i.i.i.i.i.i.i309 = phi ptr [ %i.xk, %.lr.ph.i.i.i.i.i.i.i308 ], [ %.012.i.i.i.i.i.i.i309.ph, %.lr.ph.i.i.i.i.i.i.i308.preheader1159 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i310 = phi ptr [ %i.xj, %.lr.ph.i.i.i.i.i.i.i308 ], [ %.0911.i.i.i.i.i.i.i310.ph, %.lr.ph.i.i.i.i.i.i.i308.preheader1159 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %i.xi = load i64, ptr %.0911.i.i.i.i.i.i.i310, align 8, !tbaa !316, !alias.scope !2132, !noalias !2129
  store i64 %i.xi, ptr %.012.i.i.i.i.i.i.i309, align 8, !tbaa !316, !alias.scope !2129, !noalias !2132
  store ptr null, ptr %.0911.i.i.i.i.i.i.i310, align 8, !tbaa !316, !alias.scope !2132, !noalias !2129
  %i.xj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i310, i64 8 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i309, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i311 = icmp eq ptr %i.xj, %i.vy
  br i1 %.not.i.i.i.i.i.i.i311, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i312, label %.lr.ph.i.i.i.i.i.i.i308, !llvm.loop !2140

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i312: ; preds = %.lr.ph.i.i.i.i.i.i.i308, %middle.block982, %.noexc317
  %.0.lcssa.i.i.i.i.i.i.i313 = phi ptr [ %i.wp, %.noexc317 ], [ %i.xb, %middle.block982 ], [ %i.xk, %.lr.ph.i.i.i.i.i.i.i308 ]
  %i.xl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i313, i64 8
  %.not.i23.i.i.i314 = icmp eq ptr %i.we, null
  br i1 %.not.i23.i.i.i314, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i312
  call void @_ZdlPv(ptr noundef nonnull %i.we) #26
  %.pre664.pre = load ptr, ptr %27, align 8, !tbaa !2004
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i312, %bb.dc
  %.pre664 = phi ptr [ %.pre664.pre, %bb.dc ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i312 ] ; 3 uses
  store ptr %i.wp, ptr %i.vv, align 8, !tbaa !857
  store ptr %i.xl, ptr %i.vx, align 8, !tbaa !856
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wn
  store ptr %i.xm, ptr %i.vz, align 8, !tbaa !1896
  %i.xn = load ptr, ptr %28, align 8, !tbaa !836
  store ptr %i.xn, ptr %0, align 8, !tbaa !820
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %.not.i321 = icmp eq ptr %.pre664, null
  br i1 %.not.i321, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit323, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i322

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i322: ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit
  %i.xo = load ptr, ptr %.pre664, align 8, !tbaa !172
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8
  call void %i.xq(ptr noundef nonnull align 8 dereferenceable(280) %.pre664) #24, !inline_history !2037
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit323

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit323: ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.fc

bb.dd:                                            ; preds = %._crit_edge632
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326

bb.de:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i304, %bb.db
  %i.xs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i324 = icmp eq ptr %i.vw, null
  br i1 %.not.i324, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i325

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i325: ; preds = %bb.de
  %i.xt = load ptr, ptr %i.vw, align 8, !tbaa !172
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8
  call void %i.xv(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.vw) #24, !inline_history !444
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326: ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i325, %bb.de, %bb.dd
  %.pn81 = phi { ptr, i32 } [ %i.xs, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i325 ], [ %i.xr, %bb.dd ], [ %i.xs, %bb.de ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.xw = load ptr, ptr %28, align 8, !tbaa !836  ; 3 uses
  %.not.i327 = icmp eq ptr %i.xw, null
  br i1 %.not.i327, label %.body285, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i328

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i328: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !172
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8
  call void %i.xz(ptr noundef nonnull align 8 dereferenceable(128) %i.xw) #24, !inline_history !839
  br label %.body285

.body285:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i328, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326, %bb.ct, %bb.cq
  %.pn81.pn = phi { ptr, i32 } [ %i.ty, %bb.cq ], [ %i.ud, %bb.ct ], [ %.pn81, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit326 ], [ %.pn81, %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i328 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.df

bb.df:                                            ; preds = %.body285, %bb.cs
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn, %.body285 ], [ %i.uc, %bb.cs ]
  %i.ya = load ptr, ptr %27, align 8, !tbaa !2004 ; 3 uses
  %.not.i330 = icmp eq ptr %i.ya, null
  br i1 %.not.i330, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit332, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i331

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i331: ; preds = %bb.df
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !172
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8
  call void %i.yd(ptr noundef nonnull align 8 dereferenceable(280) %i.ya) #24, !inline_history !2037
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit332

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit332: ; preds = %bb.df, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %common.resume

bb.dg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  %i.ye = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #25, !noalias !2141 ; 3 uses
  invoke void @_ZN6duckdb14LogicalAnyJoinC1ENS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(192) %i.ye, i8 noundef zeroext %1)
          to label %_ZN6duckdb9make_uniqINS_14LogicalAnyJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit333 unwind label %bb.dh, !noalias !2141

bb.dh:                                            ; preds = %bb.dg
  %i.yf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ye) #26, !noalias !2141
  br label %common.resume

_ZN6duckdb9make_uniqINS_14LogicalAnyJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit333: ; preds = %bb.dg
  store ptr %i.ye, ptr %29, align 8, !tbaa !2056, !alias.scope !2141
  %i.yg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.di unwind label %bb.dt     ; 3 uses

bb.di:                                            ; preds = %_ZN6duckdb9make_uniqINS_14LogicalAnyJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit333
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 24 ; 3 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !856 ; 6 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yg, i64 32 ; 2 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !1896
  %.not.i.i334 = icmp eq ptr %i.yj, %i.yl
  br i1 %.not.i.i334, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ym = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.ym, ptr %i.yj, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store ptr %i.yn, ptr %i.yi, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit349

bb.dk:                                            ; preds = %bb.di
  %i.yo = load ptr, ptr %i.yh, align 8, !tbaa !857 ; 10 uses
  %i.yp = ptrtoint ptr %i.yj to i64               ; 3 uses
  %i.yq = ptrtoint ptr %i.yo to i64               ; 3 uses
  %i.yr = sub i64 %i.yp, %i.yq                    ; 3 uses
  %i.ys = icmp eq i64 %i.yr, 9223372036854775800
  br i1 %i.ys, label %.invoke839, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i335

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i335: ; preds = %bb.dk
  %i.yt = ashr exact i64 %i.yr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i336 = call i64 @llvm.umax.i64(i64 %i.yt, i64 1)
  %i.yu = add nsw i64 %.sroa.speculated.i.i.i.i336, %i.yt ; 2 uses
  %i.yv = icmp ult i64 %i.yu, %i.yt
  %i.yw = call i64 @llvm.umin.i64(i64 %i.yu, i64 1152921504606846975)
  %i.yx = select i1 %i.yv, i64 1152921504606846975, i64 %i.yw ; 3 uses
  %.not.i.i.i.i337 = icmp ne i64 %i.yx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i337)
  %i.yy = shl nuw nsw i64 %i.yx, 3
  %i.yz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yy) #25
          to label %.noexc348 unwind label %bb.dt ; 10 uses

.noexc348:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i335
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yr
  %i.zb = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.zb, ptr %i.za, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i338 = icmp eq ptr %i.yo, %i.yj
  br i1 %.not10.i.i.i.i.i.i.i338, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i.i339.preheader

.lr.ph.i.i.i.i.i.i.i339.preheader:                ; preds = %.noexc348
  %i.zc = sub i64 %i.yp, %i.yq
  %i.zd = add i64 %i.zc, -8                       ; 2 uses
  %i.ze = lshr i64 %i.zd, 3
  %i.zf = add nuw nsw i64 %i.ze, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.zd, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i339.preheader1175, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i339.preheader
  %i.zg = add i64 %i.yp, -8
  %i.zh = sub i64 %i.zg, %i.yq
  %i.zi = and i64 %i.zh, -8
  %i.zj = add i64 %i.zi, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.yz, i64 %i.zj
  %scevgep870 = getelementptr i8, ptr %i.yo, i64 %i.zj
  %bound0 = icmp ult ptr %i.yz, %scevgep870
  %bound1 = icmp ult ptr %i.yo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i339.preheader1175, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zf, 4611686018427387900     ; 3 uses
  %i.zk = shl i64 %n.vec, 3                       ; 2 uses
  %i.zl = getelementptr i8, ptr %i.yz, i64 %i.zk  ; 2 uses
  %i.zm = getelementptr i8, ptr %i.yo, i64 %i.zk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.yz, i64 %i.zn ; 2 uses
  %next.gep871 = getelementptr i8, ptr %i.yo, i64 %i.zn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %i.zo = getelementptr i8, ptr %next.gep871, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep871, align 8, !tbaa !316, !alias.scope !2149, !noalias !2144
  %wide.load872 = load <2 x i64>, ptr %i.zo, align 8, !tbaa !316, !alias.scope !2149, !noalias !2144
  %i.zp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !316, !alias.scope !2152, !noalias !2149
  store <2 x i64> %wide.load872, ptr %i.zp, align 8, !tbaa !316, !alias.scope !2152, !noalias !2149
  %i.zq = getelementptr i8, ptr %next.gep871, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep871, align 8, !tbaa !316, !alias.scope !2149, !noalias !2144
  store <2 x ptr> splat (ptr null), ptr %i.zq, align 8, !tbaa !316, !alias.scope !2149, !noalias !2144
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.zr = icmp eq i64 %index.next, %n.vec
  br i1 %i.zr, label %middle.block, label %vector.body, !llvm.loop !2154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i.i339.preheader1175

.lr.ph.i.i.i.i.i.i.i339.preheader1175:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i339.preheader, %middle.block
  %.012.i.i.i.i.i.i.i340.ph = phi ptr [ %i.yz, %vector.memcheck ], [ %i.yz, %.lr.ph.i.i.i.i.i.i.i339.preheader ], [ %i.zl, %middle.block ]
  %.0911.i.i.i.i.i.i.i341.ph = phi ptr [ %i.yo, %vector.memcheck ], [ %i.yo, %.lr.ph.i.i.i.i.i.i.i339.preheader ], [ %i.zm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i339

.lr.ph.i.i.i.i.i.i.i339:                          ; preds = %.lr.ph.i.i.i.i.i.i.i339.preheader1175, %.lr.ph.i.i.i.i.i.i.i339
  %.012.i.i.i.i.i.i.i340 = phi ptr [ %i.zu, %.lr.ph.i.i.i.i.i.i.i339 ], [ %.012.i.i.i.i.i.i.i340.ph, %.lr.ph.i.i.i.i.i.i.i339.preheader1175 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i341 = phi ptr [ %i.zt, %.lr.ph.i.i.i.i.i.i.i339 ], [ %.0911.i.i.i.i.i.i.i341.ph, %.lr.ph.i.i.i.i.i.i.i339.preheader1175 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %i.zs = load i64, ptr %.0911.i.i.i.i.i.i.i341, align 8, !tbaa !316, !alias.scope !2147, !noalias !2144
  store i64 %i.zs, ptr %.012.i.i.i.i.i.i.i340, align 8, !tbaa !316, !alias.scope !2144, !noalias !2147
  store ptr null, ptr %.0911.i.i.i.i.i.i.i341, align 8, !tbaa !316, !alias.scope !2147, !noalias !2144
  %i.zt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 8 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i342 = icmp eq ptr %i.zt, %i.yj
  br i1 %.not.i.i.i.i.i.i.i342, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i.i339, !llvm.loop !2155

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i343: ; preds = %.lr.ph.i.i.i.i.i.i.i339, %middle.block, %.noexc348
  %.0.lcssa.i.i.i.i.i.i.i344 = phi ptr [ %i.yz, %.noexc348 ], [ %i.zl, %middle.block ], [ %i.zu, %.lr.ph.i.i.i.i.i.i.i339 ]
  %i.zv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i344, i64 8
  %.not.i23.i.i.i345 = icmp eq ptr %i.yo, null
  br i1 %.not.i23.i.i.i345, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i346, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i343
  call void @_ZdlPv(ptr noundef nonnull %i.yo) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i346

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i346: ; preds = %bb.dl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i343
  store ptr %i.yz, ptr %i.yh, align 8, !tbaa !857
  store ptr %i.zv, ptr %i.yi, align 8, !tbaa !856
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %i.yx
  store ptr %i.zw, ptr %i.yk, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit349

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit349: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i346, %bb.dj
  %i.zx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dm unwind label %bb.dt     ; 3 uses

bb.dm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit349
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 24 ; 3 uses
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !856 ; 6 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 32 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !1896
  %.not.i.i350 = icmp eq ptr %i.aaa, %i.aac
  br i1 %.not.i.i350, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aad = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.aad, ptr %i.aaa, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  store ptr %i.aae, ptr %i.zz, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit365

bb.do:                                            ; preds = %bb.dm
  %i.aaf = load ptr, ptr %i.zy, align 8, !tbaa !857 ; 10 uses
  %i.aag = ptrtoint ptr %i.aaa to i64             ; 3 uses
  %i.aah = ptrtoint ptr %i.aaf to i64             ; 3 uses
  %i.aai = sub i64 %i.aag, %i.aah                 ; 3 uses
  %i.aaj = icmp eq i64 %i.aai, 9223372036854775800
  br i1 %i.aaj, label %.invoke839, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i351

.invoke839:                                       ; preds = %bb.do, %bb.dk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.cont840 unwind label %bb.dt

.cont840:                                         ; preds = %.invoke839
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i351: ; preds = %bb.do
  %i.aak = ashr exact i64 %i.aai, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i352 = call i64 @llvm.umax.i64(i64 %i.aak, i64 1)
  %i.aal = add nsw i64 %.sroa.speculated.i.i.i.i352, %i.aak ; 2 uses
  %i.aam = icmp ult i64 %i.aal, %i.aak
  %i.aan = call i64 @llvm.umin.i64(i64 %i.aal, i64 1152921504606846975)
  %i.aao = select i1 %i.aam, i64 1152921504606846975, i64 %i.aan ; 3 uses
  %.not.i.i.i.i353 = icmp ne i64 %i.aao, 0
  call void @llvm.assume(i1 %.not.i.i.i.i353)
  %i.aap = shl nuw nsw i64 %i.aao, 3
  %i.aaq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aap) #25
          to label %.noexc364 unwind label %bb.dt ; 10 uses

.noexc364:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i351
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aai
  %i.aas = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.aas, ptr %i.aar, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i354 = icmp eq ptr %i.aaf, %i.aaa
  br i1 %.not10.i.i.i.i.i.i.i354, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i359, label %.lr.ph.i.i.i.i.i.i.i355.preheader

.lr.ph.i.i.i.i.i.i.i355.preheader:                ; preds = %.noexc364
  %i.aat = sub i64 %i.aag, %i.aah
  %i.aau = add i64 %i.aat, -8                     ; 2 uses
  %i.aav = lshr i64 %i.aau, 3
  %i.aaw = add nuw nsw i64 %i.aav, 1              ; 2 uses
  %min.iters.check881 = icmp ult i64 %i.aau, 136
  br i1 %min.iters.check881, label %.lr.ph.i.i.i.i.i.i.i355.preheader1173, label %vector.memcheck874

vector.memcheck874:                               ; preds = %.lr.ph.i.i.i.i.i.i.i355.preheader
  %i.aax = add i64 %i.aag, -8
  %i.aay = sub i64 %i.aax, %i.aah
  %i.aaz = and i64 %i.aay, -8
  %i.aba = add i64 %i.aaz, 8                      ; 2 uses
  %scevgep875 = getelementptr i8, ptr %i.aaq, i64 %i.aba
  %scevgep876 = getelementptr i8, ptr %i.aaf, i64 %i.aba
  %bound0877 = icmp ult ptr %i.aaq, %scevgep876
  %bound1878 = icmp ult ptr %i.aaf, %scevgep875
  %found.conflict879 = and i1 %bound0877, %bound1878
  br i1 %found.conflict879, label %.lr.ph.i.i.i.i.i.i.i355.preheader1173, label %vector.ph882

vector.ph882:                                     ; preds = %vector.memcheck874
  %n.vec884 = and i64 %i.aaw, 4611686018427387900 ; 3 uses
  %i.abb = shl i64 %n.vec884, 3                   ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aaq, i64 %i.abb ; 2 uses
  %i.abd = getelementptr i8, ptr %i.aaf, i64 %i.abb
  br label %vector.body885

vector.body885:                                   ; preds = %vector.body885, %vector.ph882
  %index886 = phi i64 [ 0, %vector.ph882 ], [ %index.next891, %vector.body885 ] ; 2 uses
  %i.abe = shl i64 %index886, 3                   ; 2 uses
  %next.gep887 = getelementptr i8, ptr %i.aaq, i64 %i.abe ; 2 uses
  %next.gep888 = getelementptr i8, ptr %i.aaf, i64 %i.abe ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  %i.abf = getelementptr i8, ptr %next.gep888, i64 16
  %wide.load889 = load <2 x i64>, ptr %next.gep888, align 8, !tbaa !316, !alias.scope !2161, !noalias !2156
  %wide.load890 = load <2 x i64>, ptr %i.abf, align 8, !tbaa !316, !alias.scope !2161, !noalias !2156
  %i.abg = getelementptr i8, ptr %next.gep887, i64 16
  store <2 x i64> %wide.load889, ptr %next.gep887, align 8, !tbaa !316, !alias.scope !2164, !noalias !2161
  store <2 x i64> %wide.load890, ptr %i.abg, align 8, !tbaa !316, !alias.scope !2164, !noalias !2161
  %i.abh = getelementptr i8, ptr %next.gep888, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep888, align 8, !tbaa !316, !alias.scope !2161, !noalias !2156
  store <2 x ptr> splat (ptr null), ptr %i.abh, align 8, !tbaa !316, !alias.scope !2161, !noalias !2156
  %index.next891 = add nuw i64 %index886, 4       ; 2 uses
  %i.abi = icmp eq i64 %index.next891, %n.vec884
  br i1 %i.abi, label %middle.block892, label %vector.body885, !llvm.loop !2166

middle.block892:                                  ; preds = %vector.body885
  %cmp.n893 = icmp eq i64 %i.aaw, %n.vec884
  br i1 %cmp.n893, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i359, label %.lr.ph.i.i.i.i.i.i.i355.preheader1173

.lr.ph.i.i.i.i.i.i.i355.preheader1173:            ; preds = %vector.memcheck874, %.lr.ph.i.i.i.i.i.i.i355.preheader, %middle.block892
  %.012.i.i.i.i.i.i.i356.ph = phi ptr [ %i.aaq, %vector.memcheck874 ], [ %i.aaq, %.lr.ph.i.i.i.i.i.i.i355.preheader ], [ %i.abc, %middle.block892 ]
  %.0911.i.i.i.i.i.i.i357.ph = phi ptr [ %i.aaf, %vector.memcheck874 ], [ %i.aaf, %.lr.ph.i.i.i.i.i.i.i355.preheader ], [ %i.abd, %middle.block892 ]
  br label %.lr.ph.i.i.i.i.i.i.i355

.lr.ph.i.i.i.i.i.i.i355:                          ; preds = %.lr.ph.i.i.i.i.i.i.i355.preheader1173, %.lr.ph.i.i.i.i.i.i.i355
  %.012.i.i.i.i.i.i.i356 = phi ptr [ %i.abl, %.lr.ph.i.i.i.i.i.i.i355 ], [ %.012.i.i.i.i.i.i.i356.ph, %.lr.ph.i.i.i.i.i.i.i355.preheader1173 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i357 = phi ptr [ %i.abk, %.lr.ph.i.i.i.i.i.i.i355 ], [ %.0911.i.i.i.i.i.i.i357.ph, %.lr.ph.i.i.i.i.i.i.i355.preheader1173 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  %i.abj = load i64, ptr %.0911.i.i.i.i.i.i.i357, align 8, !tbaa !316, !alias.scope !2159, !noalias !2156
  store i64 %i.abj, ptr %.012.i.i.i.i.i.i.i356, align 8, !tbaa !316, !alias.scope !2156, !noalias !2159
  store ptr null, ptr %.0911.i.i.i.i.i.i.i357, align 8, !tbaa !316, !alias.scope !2159, !noalias !2156
  %i.abk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i357, i64 8 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i356, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i358 = icmp eq ptr %i.abk, %i.aaa
  br i1 %.not.i.i.i.i.i.i.i358, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i359, label %.lr.ph.i.i.i.i.i.i.i355, !llvm.loop !2167

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i359: ; preds = %.lr.ph.i.i.i.i.i.i.i355, %middle.block892, %.noexc364
  %.0.lcssa.i.i.i.i.i.i.i360 = phi ptr [ %i.aaq, %.noexc364 ], [ %i.abc, %middle.block892 ], [ %i.abl, %.lr.ph.i.i.i.i.i.i.i355 ]
  %i.abm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i360, i64 8
  %.not.i23.i.i.i361 = icmp eq ptr %i.aaf, null
  br i1 %.not.i23.i.i.i361, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i362, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i359
  call void @_ZdlPv(ptr noundef nonnull %i.aaf) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i362

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i362: ; preds = %bb.dp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i359
  store ptr %i.aaq, ptr %i.zy, align 8, !tbaa !857
  store ptr %i.abm, ptr %i.zz, align 8, !tbaa !856
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %i.aao
  store ptr %i.abn, ptr %i.aab, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit365

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit365: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i362, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  %i.abo = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 0)
          to label %bb.dq unwind label %bb.du     ; 4 uses

bb.dq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit365
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !269
  store i64 %i.abp, ptr %31, align 8, !tbaa !269
  store ptr null, ptr %i.abo, align 8, !tbaa !269
  %i.abq = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !269
  store i64 %i.abs, ptr %i.abq, align 8, !tbaa !269
  store ptr null, ptr %i.abr, align 8, !tbaa !269
  %i.abt = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.abv = load i8, ptr %i.abu, align 8, !tbaa !1961
  store i8 %i.abv, ptr %i.abt, align 8, !tbaa !1961
  invoke void @_ZN6duckdb13JoinCondition16CreateExpressionES0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.539") align 8 %30, ptr noundef nonnull %31)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.abw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 184 ; 2 uses
  %i.aby = load ptr, ptr %30, align 8, !tbaa !269
  store ptr null, ptr %30, align 8, !tbaa !269
  %i.abz = load ptr, ptr %i.abx, align 8, !tbaa !269 ; 3 uses
  store ptr %i.aby, ptr %i.abx, align 8, !tbaa !269
  %.not.i.i.i.i.i366 = icmp eq ptr %i.abz, null
  br i1 %.not.i.i.i.i.i366, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit371, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit368

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit368: ; preds = %bb.ds
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !172
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  %i.acc = load ptr, ptr %i.acb, align 8
  call void %i.acc(ptr noundef nonnull align 8 dereferenceable(88) %i.abz) #24, !inline_history !597
  %.pr = load ptr, ptr %30, align 8, !tbaa !269   ; 3 uses
  %.not.i369 = icmp eq ptr %.pr, null
  br i1 %.not.i369, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit371, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i370

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i370: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit368
  %i.acd = load ptr, ptr %.pr, align 8, !tbaa !172
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8
  call void %i.acf(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #24, !inline_history !271
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit371

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit371: ; preds = %bb.ds, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit368, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i370
  %i.acg = load ptr, ptr %i.abq, align 8, !tbaa !269 ; 3 uses
  %.not.i.i372 = icmp eq ptr %i.acg, null
  br i1 %.not.i.i372, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i374, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i373

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i373: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit371
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !172
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acj = load ptr, ptr %i.aci, align 8
  call void %i.acj(ptr noundef nonnull align 8 dereferenceable(88) %i.acg) #24, !inline_history !2168
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i374

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i374: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i373, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit371
  %i.ack = load ptr, ptr %31, align 8, !tbaa !269 ; 3 uses
  %.not.i1.i = icmp eq ptr %i.ack, null
  br i1 %.not.i1.i, label %_ZN6duckdb13JoinConditionD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i374
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !172
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8
  call void %i.acn(ptr noundef nonnull align 8 dereferenceable(88) %i.ack) #24, !inline_history !2168
  br label %_ZN6duckdb13JoinConditionD2Ev.exit

_ZN6duckdb13JoinConditionD2Ev.exit:               ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i374, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.aco = load ptr, ptr %i.hy, align 8, !tbaa !858
  %i.acp = load ptr, ptr %5, align 8, !tbaa !861
  %i.acq = ptrtoint ptr %i.aco to i64
  %i.acr = ptrtoint ptr %i.acp to i64
  %i.acs = sub i64 %i.acq, %i.acr
  %i.act = sdiv exact i64 %i.acs, 24
  %i.acu = icmp ugt i64 %i.act, 1
  br i1 %i.acu, label %.lr.ph622, label %._crit_edge623

.lr.ph622:                                        ; preds = %_ZN6duckdb13JoinConditionD2Ev.exit
  %i.acv = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %33, i64 16
  br label %bb.dx

._crit_edge623:                                   ; preds = %_ZN6duckdb13JoinConditionD2Ev.exit416, %_ZN6duckdb13JoinConditionD2Ev.exit
  %i.acx = load ptr, ptr %6, align 8, !tbaa !571  ; 2 uses
  %i.acy = load ptr, ptr %i.ib, align 8, !tbaa !571 ; 2 uses
  %.not587624 = icmp eq ptr %i.acx, %i.acy
  br i1 %.not587624, label %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit434, label %.lr.ph627

bb.dt:                                            ; preds = %.invoke839, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i351, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i335, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit349, %_ZN6duckdb9make_uniqINS_14LogicalAnyJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit333
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %.body447

bb.du:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit365
  %i.ada = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb13JoinConditionD2Ev.exit383

bb.dv:                                            ; preds = %bb.dq
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit377

bb.dw:                                            ; preds = %bb.dr
  %i.adc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.add = load ptr, ptr %30, align 8, !tbaa !269 ; 3 uses
  %.not.i375 = icmp eq ptr %i.add, null
  br i1 %.not.i375, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit377, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i376

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i376: ; preds = %bb.dw
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !172
end_hunk_7
begin_hunk_8_@_ZN6duckdb21LogicalComparisonJoin10CreateJoinENS_8JoinTypeENS_11JoinRefTypeENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEES7_NS_6vectorINS_13JoinConditionELb1ESaIS9_EEENS8_INS3_INS_10ExpressionES5_ISC_ELb1EEELb1ESaISE_EEE:bb.a

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i437: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i436, %bb.el
  %i.ahe = load ptr, ptr %7, align 8, !tbaa !269, !noalias !2173 ; 3 uses
  %.not.i11.i438 = icmp eq ptr %i.ahe, null
  br i1 %.not.i11.i438, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i440, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i439

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i439: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i437
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !172, !noalias !2173
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load ptr, ptr %i.ahg, align 8, !noalias !2173
  call void %i.ahh(ptr noundef nonnull align 8 dereferenceable(88) %i.ahe) #24, !noalias !2173, !inline_history !2035
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i440

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i440: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i439, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i437
  call void @_ZdlPv(ptr noundef nonnull %i.agn) #26, !noalias !2173
  br label %.body447

bb.em:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i445, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ahi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalAnyJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.en unwind label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit464

bb.en:                                            ; preds = %bb.em
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 184 ; 2 uses
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !269 ; 3 uses
  store ptr %i.agn, ptr %i.ahj, align 8, !tbaa !269
  %.not.i.i.i.i.i450 = icmp eq ptr %i.ahk, null
  br i1 %.not.i.i.i.i.i450, label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit458, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i451

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i451: ; preds = %bb.en
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !172
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8
  call void %i.ahn(ptr noundef nonnull align 8 dereferenceable(88) %i.ahk) #24, !inline_history !597
  br label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit458

_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit458: ; preds = %bb.en, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i451
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.0527.0625, i64 8 ; 2 uses
  %.not587 = icmp eq ptr %i.aho, %i.acy
  br i1 %.not587, label %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit434, label %.lr.ph627

bb.eo:                                            ; preds = %bb.ej, %.lr.ph627
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  br label %.body447

_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit464: ; preds = %bb.em
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  %i.ahr = load ptr, ptr %i.agn, align 8, !tbaa !172
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = load ptr, ptr %i.ahs, align 8
  call void %i.aht(ptr noundef nonnull align 8 dereferenceable(88) %i.agn) #24, !inline_history !271
  br label %.body447

.body447:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit464, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i440, %bb.eo, %bb.ef, %_ZN6duckdb13JoinConditionD2Ev.exit431, %_ZN6duckdb13JoinConditionD2Ev.exit383, %bb.dt
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %i.acz, %bb.dt ], [ %i.afr, %bb.ef ], [ %.pn70.pn, %_ZN6duckdb13JoinConditionD2Ev.exit383 ], [ %.pn75.pn.pn, %_ZN6duckdb13JoinConditionD2Ev.exit431 ], [ %i.ahq, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit464 ], [ %i.ahp, %bb.eo ], [ %i.agz, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i440 ]
  %i.ahu = load ptr, ptr %29, align 8, !tbaa !2056 ; 3 uses
  %.not.i465 = icmp eq ptr %i.ahu, null
  br i1 %.not.i465, label %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit467, label %_ZNKSt14default_deleteIN6duckdb14LogicalAnyJoinEEclEPS1_.exit.i466

_ZNKSt14default_deleteIN6duckdb14LogicalAnyJoinEEclEPS1_.exit.i466: ; preds = %.body447
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !172
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8
  call void %i.ahx(ptr noundef nonnull align 8 dereferenceable(192) %i.ahu) #24, !inline_history !2086
  br label %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit467

_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit467: ; preds = %.body447, %_ZNKSt14default_deleteIN6duckdb14LogicalAnyJoinEEclEPS1_.exit.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %common.resume

bb.ep:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.ahy = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #25, !noalias !2176 ; 3 uses
  invoke void @_ZN6duckdb21LogicalComparisonJoinC1ENS_8JoinTypeENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.ahy, i8 noundef zeroext %1, i8 noundef zeroext 52)
          to label %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit468 unwind label %bb.eq, !noalias !2176

bb.eq:                                            ; preds = %bb.ep
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ahy) #26, !noalias !2176
  br label %common.resume

_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit468: ; preds = %bb.ep
  store ptr %i.ahy, ptr %34, align 8, !tbaa !2004, !alias.scope !2176
  %i.aia = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.er unwind label %bb.fb     ; 3 uses

bb.er:                                            ; preds = %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit468
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 184 ; 2 uses
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !861 ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aia, i64 192
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !858 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aia, i64 200
  %i.aig = load <2 x ptr>, ptr %5, align 8, !tbaa !1998
  store <2 x ptr> %i.aig, ptr %i.aib, align 8, !tbaa !1998
  %i.aih = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !1965
  store ptr %i.aii, ptr %i.aif, align 8, !tbaa !1965
  %.not4.i.i.i.i.i.i469 = icmp eq ptr %i.aic, %i.aie
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i469, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i.i470

.lr.ph.i.i.i.i.i.i470:                            ; preds = %bb.er, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i477
  %.05.i.i.i.i.i.i471 = phi ptr [ %i.ais, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i477 ], [ %i.aic, %bb.er ] ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i471, i64 8
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i472 = icmp eq ptr %i.aik, null
  br i1 %.not.i.i.i.i.i.i.i.i.i472, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i474, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i473

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i473: ; preds = %.lr.ph.i.i.i.i.i.i470
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !172
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  %i.ain = load ptr, ptr %i.aim, align 8
  call void %i.ain(ptr noundef nonnull align 8 dereferenceable(88) %i.aik) #24, !inline_history !2006
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i474

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i474: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i473, %.lr.ph.i.i.i.i.i.i470
  %i.aio = load ptr, ptr %.05.i.i.i.i.i.i471, align 8, !tbaa !269 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i.i475 = icmp eq ptr %i.aio, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i475, label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i477, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i476

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i476: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i474
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !172
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.air = load ptr, ptr %i.aiq, align 8
  call void %i.air(ptr noundef nonnull align 8 dereferenceable(88) %i.aio) #24, !inline_history !2006
  br label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i477

_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i477: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i476, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i474
  %i.ais = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i471, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i478 = icmp eq ptr %i.ais, %i.aie
  br i1 %.not.i.i.i.i.i.i478, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i.i470, !llvm.loop !2007

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i479: ; preds = %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i477, %bb.er
  %.not.i.i1.i.i.i.i480 = icmp eq ptr %i.aic, null
  br i1 %.not.i.i1.i.i.i.i480, label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit481, label %bb.es

bb.es:                                            ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i479
  call void @_ZdlPv(ptr noundef nonnull %i.aic) #26
  br label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit481

_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit481: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i479, %bb.es
  %i.ait = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.et unwind label %bb.fb     ; 3 uses

bb.et:                                            ; preds = %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit481
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 16 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 24 ; 3 uses
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !856 ; 6 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ait, i64 32 ; 2 uses
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !1896
  %.not.i.i482 = icmp eq ptr %i.aiw, %i.aiy
  br i1 %.not.i.i482, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aiz = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.aiz, ptr %i.aiw, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  store ptr %i.aja, ptr %i.aiv, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit497

bb.ev:                                            ; preds = %bb.et
  %i.ajb = load ptr, ptr %i.aiu, align 8, !tbaa !857 ; 10 uses
  %i.ajc = ptrtoint ptr %i.aiw to i64             ; 3 uses
  %i.ajd = ptrtoint ptr %i.ajb to i64             ; 3 uses
  %i.aje = sub i64 %i.ajc, %i.ajd                 ; 3 uses
  %i.ajf = icmp eq i64 %i.aje, 9223372036854775800
  br i1 %i.ajf, label %.invoke841, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i483

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i483: ; preds = %bb.ev
  %i.ajg = ashr exact i64 %i.aje, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i484 = call i64 @llvm.umax.i64(i64 %i.ajg, i64 1)
  %i.ajh = add nsw i64 %.sroa.speculated.i.i.i.i484, %i.ajg ; 2 uses
  %i.aji = icmp ult i64 %i.ajh, %i.ajg
  %i.ajj = call i64 @llvm.umin.i64(i64 %i.ajh, i64 1152921504606846975)
  %i.ajk = select i1 %i.aji, i64 1152921504606846975, i64 %i.ajj ; 3 uses
  %.not.i.i.i.i485 = icmp ne i64 %i.ajk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i485)
  %i.ajl = shl nuw nsw i64 %i.ajk, 3
  %i.ajm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajl) #25
          to label %.noexc496 unwind label %bb.fb ; 10 uses

.noexc496:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i483
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.aje
  %i.ajo = load i64, ptr %3, align 8, !tbaa !316
  store i64 %i.ajo, ptr %i.ajn, align 8, !tbaa !316
  store ptr null, ptr %3, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i486 = icmp eq ptr %i.ajb, %i.aiw
  br i1 %.not10.i.i.i.i.i.i.i486, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i491, label %.lr.ph.i.i.i.i.i.i.i487.preheader

.lr.ph.i.i.i.i.i.i.i487.preheader:                ; preds = %.noexc496
  %i.ajp = sub i64 %i.ajc, %i.ajd
  %i.ajq = add i64 %i.ajp, -8                     ; 2 uses
  %i.ajr = lshr i64 %i.ajq, 3
  %i.ajs = add nuw nsw i64 %i.ajr, 1              ; 2 uses
  %min.iters.check993 = icmp ult i64 %i.ajq, 136
  br i1 %min.iters.check993, label %.lr.ph.i.i.i.i.i.i.i487.preheader1157, label %vector.memcheck986

vector.memcheck986:                               ; preds = %.lr.ph.i.i.i.i.i.i.i487.preheader
  %i.ajt = add i64 %i.ajc, -8
  %i.aju = sub i64 %i.ajt, %i.ajd
  %i.ajv = and i64 %i.aju, -8
  %i.ajw = add i64 %i.ajv, 8                      ; 2 uses
  %scevgep987 = getelementptr i8, ptr %i.ajm, i64 %i.ajw
  %scevgep988 = getelementptr i8, ptr %i.ajb, i64 %i.ajw
  %bound0989 = icmp ult ptr %i.ajm, %scevgep988
  %bound1990 = icmp ult ptr %i.ajb, %scevgep987
  %found.conflict991 = and i1 %bound0989, %bound1990
  br i1 %found.conflict991, label %.lr.ph.i.i.i.i.i.i.i487.preheader1157, label %vector.ph994

vector.ph994:                                     ; preds = %vector.memcheck986
  %n.vec996 = and i64 %i.ajs, 4611686018427387900 ; 3 uses
  %i.ajx = shl i64 %n.vec996, 3                   ; 2 uses
  %i.ajy = getelementptr i8, ptr %i.ajm, i64 %i.ajx ; 2 uses
  %i.ajz = getelementptr i8, ptr %i.ajb, i64 %i.ajx
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph994
  %index998 = phi i64 [ 0, %vector.ph994 ], [ %index.next1003, %vector.body997 ] ; 2 uses
  %i.aka = shl i64 %index998, 3                   ; 2 uses
  %next.gep999 = getelementptr i8, ptr %i.ajm, i64 %i.aka ; 2 uses
  %next.gep1000 = getelementptr i8, ptr %i.ajb, i64 %i.aka ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  %i.akb = getelementptr i8, ptr %next.gep1000, i64 16
  %wide.load1001 = load <2 x i64>, ptr %next.gep1000, align 8, !tbaa !316, !alias.scope !2184, !noalias !2179
  %wide.load1002 = load <2 x i64>, ptr %i.akb, align 8, !tbaa !316, !alias.scope !2184, !noalias !2179
  %i.akc = getelementptr i8, ptr %next.gep999, i64 16
  store <2 x i64> %wide.load1001, ptr %next.gep999, align 8, !tbaa !316, !alias.scope !2187, !noalias !2184
  store <2 x i64> %wide.load1002, ptr %i.akc, align 8, !tbaa !316, !alias.scope !2187, !noalias !2184
  %i.akd = getelementptr i8, ptr %next.gep1000, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1000, align 8, !tbaa !316, !alias.scope !2184, !noalias !2179
  store <2 x ptr> splat (ptr null), ptr %i.akd, align 8, !tbaa !316, !alias.scope !2184, !noalias !2179
  %index.next1003 = add nuw i64 %index998, 4      ; 2 uses
  %i.ake = icmp eq i64 %index.next1003, %n.vec996
  br i1 %i.ake, label %middle.block1004, label %vector.body997, !llvm.loop !2189

middle.block1004:                                 ; preds = %vector.body997
  %cmp.n1005 = icmp eq i64 %i.ajs, %n.vec996
  br i1 %cmp.n1005, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i491, label %.lr.ph.i.i.i.i.i.i.i487.preheader1157

.lr.ph.i.i.i.i.i.i.i487.preheader1157:            ; preds = %vector.memcheck986, %.lr.ph.i.i.i.i.i.i.i487.preheader, %middle.block1004
  %.012.i.i.i.i.i.i.i488.ph = phi ptr [ %i.ajm, %vector.memcheck986 ], [ %i.ajm, %.lr.ph.i.i.i.i.i.i.i487.preheader ], [ %i.ajy, %middle.block1004 ]
  %.0911.i.i.i.i.i.i.i489.ph = phi ptr [ %i.ajb, %vector.memcheck986 ], [ %i.ajb, %.lr.ph.i.i.i.i.i.i.i487.preheader ], [ %i.ajz, %middle.block1004 ]
  br label %.lr.ph.i.i.i.i.i.i.i487

.lr.ph.i.i.i.i.i.i.i487:                          ; preds = %.lr.ph.i.i.i.i.i.i.i487.preheader1157, %.lr.ph.i.i.i.i.i.i.i487
  %.012.i.i.i.i.i.i.i488 = phi ptr [ %i.akh, %.lr.ph.i.i.i.i.i.i.i487 ], [ %.012.i.i.i.i.i.i.i488.ph, %.lr.ph.i.i.i.i.i.i.i487.preheader1157 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i489 = phi ptr [ %i.akg, %.lr.ph.i.i.i.i.i.i.i487 ], [ %.0911.i.i.i.i.i.i.i489.ph, %.lr.ph.i.i.i.i.i.i.i487.preheader1157 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  %i.akf = load i64, ptr %.0911.i.i.i.i.i.i.i489, align 8, !tbaa !316, !alias.scope !2182, !noalias !2179
  store i64 %i.akf, ptr %.012.i.i.i.i.i.i.i488, align 8, !tbaa !316, !alias.scope !2179, !noalias !2182
  store ptr null, ptr %.0911.i.i.i.i.i.i.i489, align 8, !tbaa !316, !alias.scope !2182, !noalias !2179
  %i.akg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i489, i64 8 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i488, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i490 = icmp eq ptr %i.akg, %i.aiw
  br i1 %.not.i.i.i.i.i.i.i490, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i491, label %.lr.ph.i.i.i.i.i.i.i487, !llvm.loop !2190

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i491: ; preds = %.lr.ph.i.i.i.i.i.i.i487, %middle.block1004, %.noexc496
  %.0.lcssa.i.i.i.i.i.i.i492 = phi ptr [ %i.ajm, %.noexc496 ], [ %i.ajy, %middle.block1004 ], [ %i.akh, %.lr.ph.i.i.i.i.i.i.i487 ]
  %i.aki = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i492, i64 8
  %.not.i23.i.i.i493 = icmp eq ptr %i.ajb, null
  br i1 %.not.i23.i.i.i493, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i494, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i491
  call void @_ZdlPv(ptr noundef nonnull %i.ajb) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i494

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i494: ; preds = %bb.ew, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i491
  store ptr %i.ajm, ptr %i.aiu, align 8, !tbaa !857
  store ptr %i.aki, ptr %i.aiv, align 8, !tbaa !856
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.ajk
  store ptr %i.akj, ptr %i.aix, align 8, !tbaa !1896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit497

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit497: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i494, %bb.eu
  %i.akk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.ex unwind label %bb.fb     ; 3 uses

bb.ex:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit497
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 16 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akk, i64 24 ; 3 uses
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !856 ; 6 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akk, i64 32 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !1896
  %.not.i.i498 = icmp eq ptr %i.akn, %i.akp
  br i1 %.not.i.i498, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.akq = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.akq, ptr %i.akn, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  store ptr %i.akr, ptr %i.akm, align 8, !tbaa !856
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit516

bb.ez:                                            ; preds = %bb.ex
  %i.aks = load ptr, ptr %i.akl, align 8, !tbaa !857 ; 10 uses
  %i.akt = ptrtoint ptr %i.akn to i64             ; 3 uses
  %i.aku = ptrtoint ptr %i.aks to i64             ; 3 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 3 uses
  %i.akw = icmp eq i64 %i.akv, 9223372036854775800
  br i1 %i.akw, label %.invoke841, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i499

.invoke841:                                       ; preds = %bb.ez, %bb.ev
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.cont842 unwind label %bb.fb

.cont842:                                         ; preds = %.invoke841
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i499: ; preds = %bb.ez
  %i.akx = ashr exact i64 %i.akv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i500 = call i64 @llvm.umax.i64(i64 %i.akx, i64 1)
  %i.aky = add nsw i64 %.sroa.speculated.i.i.i.i500, %i.akx ; 2 uses
  %i.akz = icmp ult i64 %i.aky, %i.akx
  %i.ala = call i64 @llvm.umin.i64(i64 %i.aky, i64 1152921504606846975)
  %i.alb = select i1 %i.akz, i64 1152921504606846975, i64 %i.ala ; 3 uses
  %.not.i.i.i.i501 = icmp ne i64 %i.alb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i501)
  %i.alc = shl nuw nsw i64 %i.alb, 3
  %i.ald = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alc) #25
          to label %.noexc512 unwind label %bb.fb ; 10 uses

.noexc512:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i499
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.akv
  %i.alf = load i64, ptr %4, align 8, !tbaa !316
  store i64 %i.alf, ptr %i.ale, align 8, !tbaa !316
  store ptr null, ptr %4, align 8, !tbaa !316
  %.not10.i.i.i.i.i.i.i502 = icmp eq ptr %i.aks, %i.akn
  br i1 %.not10.i.i.i.i.i.i.i502, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i507, label %.lr.ph.i.i.i.i.i.i.i503.preheader

.lr.ph.i.i.i.i.i.i.i503.preheader:                ; preds = %.noexc512
  %i.alg = sub i64 %i.akt, %i.aku
  %i.alh = add i64 %i.alg, -8                     ; 2 uses
  %i.ali = lshr i64 %i.alh, 3
  %i.alj = add nuw nsw i64 %i.ali, 1              ; 2 uses
  %min.iters.check1015 = icmp ult i64 %i.alh, 136
  br i1 %min.iters.check1015, label %.lr.ph.i.i.i.i.i.i.i503.preheader1155, label %vector.memcheck1008

vector.memcheck1008:                              ; preds = %.lr.ph.i.i.i.i.i.i.i503.preheader
  %i.alk = add i64 %i.akt, -8
  %i.all = sub i64 %i.alk, %i.aku
  %i.alm = and i64 %i.all, -8
  %i.aln = add i64 %i.alm, 8                      ; 2 uses
  %scevgep1009 = getelementptr i8, ptr %i.ald, i64 %i.aln
  %scevgep1010 = getelementptr i8, ptr %i.aks, i64 %i.aln
  %bound01011 = icmp ult ptr %i.ald, %scevgep1010
  %bound11012 = icmp ult ptr %i.aks, %scevgep1009
  %found.conflict1013 = and i1 %bound01011, %bound11012
  br i1 %found.conflict1013, label %.lr.ph.i.i.i.i.i.i.i503.preheader1155, label %vector.ph1016

vector.ph1016:                                    ; preds = %vector.memcheck1008
  %n.vec1018 = and i64 %i.alj, 4611686018427387900 ; 3 uses
  %i.alo = shl i64 %n.vec1018, 3                  ; 2 uses
  %i.alp = getelementptr i8, ptr %i.ald, i64 %i.alo ; 2 uses
  %i.alq = getelementptr i8, ptr %i.aks, i64 %i.alo
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1016
  %index1020 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1025, %vector.body1019 ] ; 2 uses
  %i.alr = shl i64 %index1020, 3                  ; 2 uses
  %next.gep1021 = getelementptr i8, ptr %i.ald, i64 %i.alr ; 2 uses
  %next.gep1022 = getelementptr i8, ptr %i.aks, i64 %i.alr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %i.als = getelementptr i8, ptr %next.gep1022, i64 16
  %wide.load1023 = load <2 x i64>, ptr %next.gep1022, align 8, !tbaa !316, !alias.scope !2196, !noalias !2191
  %wide.load1024 = load <2 x i64>, ptr %i.als, align 8, !tbaa !316, !alias.scope !2196, !noalias !2191
  %i.alt = getelementptr i8, ptr %next.gep1021, i64 16
  store <2 x i64> %wide.load1023, ptr %next.gep1021, align 8, !tbaa !316, !alias.scope !2199, !noalias !2196
  store <2 x i64> %wide.load1024, ptr %i.alt, align 8, !tbaa !316, !alias.scope !2199, !noalias !2196
  %i.alu = getelementptr i8, ptr %next.gep1022, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1022, align 8, !tbaa !316, !alias.scope !2196, !noalias !2191
  store <2 x ptr> splat (ptr null), ptr %i.alu, align 8, !tbaa !316, !alias.scope !2196, !noalias !2191
  %index.next1025 = add nuw i64 %index1020, 4     ; 2 uses
  %i.alv = icmp eq i64 %index.next1025, %n.vec1018
  br i1 %i.alv, label %middle.block1026, label %vector.body1019, !llvm.loop !2201

middle.block1026:                                 ; preds = %vector.body1019
  %cmp.n1027 = icmp eq i64 %i.alj, %n.vec1018
  br i1 %cmp.n1027, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i507, label %.lr.ph.i.i.i.i.i.i.i503.preheader1155

.lr.ph.i.i.i.i.i.i.i503.preheader1155:            ; preds = %vector.memcheck1008, %.lr.ph.i.i.i.i.i.i.i503.preheader, %middle.block1026
  %.012.i.i.i.i.i.i.i504.ph = phi ptr [ %i.ald, %vector.memcheck1008 ], [ %i.ald, %.lr.ph.i.i.i.i.i.i.i503.preheader ], [ %i.alp, %middle.block1026 ]
  %.0911.i.i.i.i.i.i.i505.ph = phi ptr [ %i.aks, %vector.memcheck1008 ], [ %i.aks, %.lr.ph.i.i.i.i.i.i.i503.preheader ], [ %i.alq, %middle.block1026 ]
  br label %.lr.ph.i.i.i.i.i.i.i503

.lr.ph.i.i.i.i.i.i.i503:                          ; preds = %.lr.ph.i.i.i.i.i.i.i503.preheader1155, %.lr.ph.i.i.i.i.i.i.i503
  %.012.i.i.i.i.i.i.i504 = phi ptr [ %i.aly, %.lr.ph.i.i.i.i.i.i.i503 ], [ %.012.i.i.i.i.i.i.i504.ph, %.lr.ph.i.i.i.i.i.i.i503.preheader1155 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i505 = phi ptr [ %i.alx, %.lr.ph.i.i.i.i.i.i.i503 ], [ %.0911.i.i.i.i.i.i.i505.ph, %.lr.ph.i.i.i.i.i.i.i503.preheader1155 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %i.alw = load i64, ptr %.0911.i.i.i.i.i.i.i505, align 8, !tbaa !316, !alias.scope !2194, !noalias !2191
  store i64 %i.alw, ptr %.012.i.i.i.i.i.i.i504, align 8, !tbaa !316, !alias.scope !2191, !noalias !2194
  store ptr null, ptr %.0911.i.i.i.i.i.i.i505, align 8, !tbaa !316, !alias.scope !2194, !noalias !2191
  %i.alx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i505, i64 8 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i504, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i506 = icmp eq ptr %i.alx, %i.akn
  br i1 %.not.i.i.i.i.i.i.i506, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i507, label %.lr.ph.i.i.i.i.i.i.i503, !llvm.loop !2202

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i507: ; preds = %.lr.ph.i.i.i.i.i.i.i503, %middle.block1026, %.noexc512
  %.0.lcssa.i.i.i.i.i.i.i508 = phi ptr [ %i.ald, %.noexc512 ], [ %i.alp, %middle.block1026 ], [ %i.aly, %.lr.ph.i.i.i.i.i.i.i503 ]
  %i.alz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i508, i64 8
  %.not.i23.i.i.i509 = icmp eq ptr %i.aks, null
  br i1 %.not.i23.i.i.i509, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i510, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i507
  call void @_ZdlPv(ptr noundef nonnull %i.aks) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i510

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i510: ; preds = %bb.fa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i507
  store ptr %i.ald, ptr %i.akl, align 8, !tbaa !857
  store ptr %i.alz, ptr %i.akm, align 8, !tbaa !856
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.ald, i64 %i.alb
  store ptr %i.ama, ptr %i.ako, align 8, !tbaa !1896
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit516

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit516: ; preds = %bb.ey, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i510
  %i.amb = load ptr, ptr %34, align 8, !tbaa !2004
  store ptr %i.amb, ptr %0, align 8, !tbaa !820
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %bb.fc

bb.fb:                                            ; preds = %.invoke841, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i499, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i483, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit497, %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit481, %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJRNS_8JoinTypeENS_19LogicalOperatorTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit468
  %i.amc = landingpad { ptr, i32 }
          cleanup
  %i.amd = load ptr, ptr %34, align 8, !tbaa !2004 ; 3 uses
  %.not.i517 = icmp eq ptr %i.amd, null
  br i1 %.not.i517, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit519, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i518

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i518: ; preds = %bb.fb
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !172
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amg = load ptr, ptr %i.amf, align 8
  call void %i.amg(ptr noundef nonnull align 8 dereferenceable(280) %i.amd) #24, !inline_history !2037
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit519

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit519: ; preds = %bb.fb, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i518
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %common.resume

bb.fc:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit516, %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit434, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit323, %_ZNSt10unique_ptrIN6duckdb14LogicalAnyJoinESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.fd:                                            ; preds = %bb.y, %bb.t, %bb.o, %bb.g
  unreachable
}

declare noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_8JoinTypeEEEPKcT_(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb23NotImplementedExceptionC2IJPKcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1594", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !2203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !2203
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !460, !noalias !2203 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !463, !noalias !2203 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #26
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !464

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !460, !noalias !2203
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #26
  br label %_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2203
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2203
  invoke void @_ZN6duckdb23NotImplementedExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !149    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !149    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
end_hunk_8
